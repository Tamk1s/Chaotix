Cls
REM del *.bin
REM del *.txt
REM del *.lst

REM Compile all files
asm68k /k /p /o ae- TTZ01_Data.asm, TTZ01_Data.bin >TTZ01_Data.txt, , TTZ01_Data.lst
copy /Y *.bin "..\..\..\..\..\Art\Palettes\MD\Palcycles"
REM Pause 
REM del *.bin
REM del *.txt
REM del *.lst