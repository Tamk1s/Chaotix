SetLocal EnableDelayedExpansion
SET FILE=%1

REM Batch file patches the last 4 bytes of a PWM sample with silence (2 $8080 words)

REM Get filesize, subtract 8 bytes
SET FZ=0
call filesize.bat !FILE! FZ
SET /a FZ=!FZ!-4

REM Convert FZ ptr to a hexadecimal ptr value (no padding) in FZTwo
SET FZTwo=0
Call tohex.bat !FZ! FZTwo
REM ECHO ON
REM ECHO tohex !FZ! 0x!FZTwo!

REM Pad FZTwo to 4 digits
SET "FZTwo=000!FZTwo!"
SET "FZTwo=!FZTwo:~-4!"
REM ECHO FZTwo !FZTwo!

bytepatch.exe -a 0x!FZTwo! !FILE! 8080 8080