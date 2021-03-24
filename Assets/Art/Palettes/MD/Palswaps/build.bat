Cls
REM del *.bin
REM del *.txt
REM del *.lst

REM Compile all files
asm68k /k /p /o ae- Tutorial_FG.asm, Tutorial_FG.bin >Tutorial_FG.txt, , Tutorial_FG.lst
asm68k /k /p /o ae- Tutorial_BG.asm, Tutorial_BG.bin >Tutorial_BG.txt, , Tutorial_BG.lst
copy /Y *.bin "..\..\..\..\..\Art\Palettes\MD\Palswaps"
REM Pause 
REM del *.bin
REM del *.txt
REM del *.lst