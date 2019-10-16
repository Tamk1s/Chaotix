REM @ECHO OFF

pushd %~dp0\..

REM // make sure we can write to the file KC.bin
REM // also make a backup to KC.prev.bin
IF NOT EXIST KC.bin goto LABLNOCOPY
IF EXIST KC.prev.bin del KC.prev.bin
IF EXIST KC.prev.bin goto LABLNOCOPY
move /Y KC.bin KC.prev.bin
IF EXIST KC.bin goto LABLERROR2

:LABLNOCOPY
REM // delete some intermediate assembler output just in case
IF EXIST S1.p del S1.p
IF EXIST S1.p goto LABLERROR1

REM // clear the output window
REM cls

REM // run the assembler
REM // -xx shows the most detailed error output
REM // -q makes AS shut up
REM // -A gives us a small speedup
set AS_MSGPATH=AS\Win32
set USEANSI=n

REM // allow the user to choose to output error messages to file by supplying the -logerrors parameter
IF "%1"=="-logerrors" ( "AS\Win32\asw.exe" -xx -q -c -D Sonic3_Complete=0 -E -A -L S1.asm ) ELSE "AS\Win32\asw.exe" -xx -q -c -D Sonic3_Complete=0 -A -L S1.asm

REM // if there were errors, a log file is produced
IF "%1"=="-logerrors" ( IF EXIST S1.log goto LABLERROR3 )

REM // combine the assembler output into a rom
IF EXIST S1.p "AS\Win32\s3p2bin" S1.p S1.bin S1.h

REM // done -- pause if we seem to have failed, then exit
IF NOT EXIST S1.p goto LABLPAUSE
IF EXIST S1.bin goto GOOD

:LABLPAUSE
pause
goto LABLEXIT

:LABLERROR1
echo Failed to build because write access to S1.p was denied.
pause
goto LABLEXIT

:LABLERROR2
echo Failed to build because write access to S1.bin was denied.
pause
goto LABLEXIT

:LABLERROR3
REM // display a noticeable message
echo.
echo ***************************************************************************
echo *                                                                         *
echo *   There were build errors/warnings. See S1.log for more details.   *
echo *                                                                         *
echo ***************************************************************************
echo.
pause

:GOOD
Ren S1.lst KC.lst
Ren S1.bin KC.bin
Ren S1.log KC.log
goto LABLEXIT

:LABLEXIT
popd
exit /b
