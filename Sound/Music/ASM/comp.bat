REM cls
REM Compiles a particular ASM song, see usage at :USAGE label
REM Inputs: %1 %2
REM %1=Input ASM file (without path/extension)
REM %2=Dummy compile? If 1, compile song to dum folder; else compile to Sound\Music\BIN\
SET INFILE=%~n1
SET DUMMY=%2
REM IF [%INFILE%] EQU [] GOTO HELP
REM IF [%DUMMY%] EQU [] GOTO HELP
REM Copy input asm file to XM4SMPS folder, cd to there, and then compile song
copy /y /b "%INFILE%.asm" "..\..\..\XM4SMPS\KC.asm"
cd "..\..\..\XM4SMPS\"
call Comp2KC.bat

REM handle moving compiled song assets to correct location, based if dummy or not
IF %DUMMY% EQU 1 GOTO _DUMMY
IF %DUMMY% EQU 0 GOTO _NORMAL

:USAGE
ECHO ON
cls
ECHO "comp.bat INFILE DUMMY "
ECHO .
ECHO INFILE = Input filename of ASM file to compile (no .asm extension, no path; filename only)
ECHO DUMMY = Dummy compile songs? (Move songs into Sound\Music\ASM\dum\ folder?)
Pause
Exit /b 1

:_DUMMY
REM Dummy Compile song (copy INFILE.log, INFILE.lst, and INFILE.bin to Sound\Music\ASM\dum). Then cd back to Sound\Music\ASM
copy /y "xm4smps_asm.log" "..\Sound\Music\ASM\dum\%INFILE%.log"
copy /y "KC.lst" "..\Sound\Music\ASM\dum\%INFILE%.lst"
copy /y /b "KC.bin" "..\Sound\Music\ASM\dum\%INFILE%.bin"
cd "..\Sound\Music\ASM\"
Exit /b

:_NORMAL
REM Normal compile song (copy INFILE.log, INFILE.lst, and INFILE.bin to Sound\Music\BIN\). Then cd back to Sound\Music\ASM
copy /y "xm4smps_asm.log" "..\Sound\Music\BIN\%INFILE%.log"
copy /y "KC.lst" "..\Sound\Music\BIN\%INFILE%.lst"
copy /y /b "KC.bin" "..\Sound\Music\BIN\%INFILE%.bin"
cd "..\Sound\Music\ASM\"
Exit /b