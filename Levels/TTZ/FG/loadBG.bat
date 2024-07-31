@echo off
cls
REM Delete temp files
del /q tempFG.bin
del /q tempFG.unc
del /q Size06MN.txt
del /q Size06MN.unc
del /q read.vbs
cls

REM Load file, decompress from engima
set /p act=Load FG Level? 
call KensSharp.exe -de %act% tempFG.unc

REM Read the bytes from size file, convert from hex to dec, subtract $0101 (257), convert back to 4-digit word
FOR /F "tokens=* USEBACKQ" %%F IN (`call ..\..\readBytes.bat Size06MN.bin`) DO (
SET cSize=%%F
)
SetLocal EnableDelayedExpansion
set /a cSize2=0x%cSize%
set /a cSize2=!cSize2!-257
call ..\..\..\Assets\Music\PWM\tohex.bat !cSize2! cSize3
SET "cSize3=0000!cSize3!"
SET "cSize3=!cSize3:~-4!"

REM Dump word to file, convert ASCII to binary file
ECHO !cSize3! >> Size06MN.txt
certutil -f -decodehex "Size06MN.txt" "Size06MN.unc" >>nul
EndLocal

REM Concatenate 0-based size + uncompressed FG layout into tempFG.bin
REM Compress tempFG.bin to engima
copy /b /y Size06MN.unc+tempFG.unc tempFG.bin
call KensSharp.exe -ce tempFG.bin tempFG.bin
REM Cleanup
cls
del /q tempFG.unc
del /q Size06MN.txt
del /q Size06MN.unc
del /q read.vbs
cls