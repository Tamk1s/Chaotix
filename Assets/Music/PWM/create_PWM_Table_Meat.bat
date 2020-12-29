@Echo Off
Set	FILE=%1
Set	DFILE=%2
Set	RATE=%3
Set	CREATE=%4
Set ADDR=%5
Set NewAddr=%6

REM Generates an entry in the Table foreach PWM sample
REM
REM Params:
REM %1-%5 = struct array element (file, dfile, rate, create, addr)
REM %6 = PC of current SH-2 virtual ROM addr (raw 68k addr). If %5!=0, then this value is overriden with it

REM If addr override is 0, then convert SH-2 virtual PC addr to hex; else use overide addr
Set AddrTwo=0
IF %ADDR% NEQ 0 Set AddrTwo=%ADDR%
IF %ADDR% EQU 0 call tohex.bat %NewAddr% AddrTwo

REM Pad NewAddr to 8 digs (long)
SET "AddrTwo=0000000%AddrTwo%"
SET "AddrTwo=%AddrTwo:~-8%"
ECHO %AddrTwo% >> PWMTable.txt


REM Get filesize of file (dec)
SET FSize=0
call filesize.bat %DFILE% FSize

REM Get filesize as hex (long)
SET FSizeTwo=0
call tohex.bat %FSize% FSizeTwo

REM Pad filesize to 8-digs (long)
SET "FSizeTwo=0000000%FSizeTwo%"
SET "FSizeTwo=%FSizeTwo:~-8%"
ECHO %FSizeTwo% >> PWMTable.txt


REM Write null long (unknown)
ECHO 00000000 >> PWMTable.txt


REM Calculate rate
Set Result=0
call calcrate.bat %FILE% %RATE% Result
ECHO %Result%>> PWMTable.txt