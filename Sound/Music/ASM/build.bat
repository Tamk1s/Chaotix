REM Rebuilds the soundriver
REM Input: %1 = Build mode. See HELP label for usage
CLS
ECHO OFF
SET BUILD_MODE=%1

REM Bank ROM offset constants (decimal)
REM SET BANK0=0x40000
REM SET BANK1=0x48000
REM SET BANK2=0x50000
REM SET BANK2S=0x56000
SET BANK0=262144
SET BANK1=294912
SET BANK2=327680
SET BANK2S=352256

REM Vanilla bank listing of songs per bank. Used for BUILD_MODE=0 FOR file loops
SET LEN=0x6E
SET LEN_B=0x03
SET BANKI0=0x18
SET BANKI1=0x19
SET BANKI2=0x1A
SET BANKI2S=0x1B
SET BANK[0x01].file="01 Door Into Summer"
SET BANK[0x02].file="02 Electoria"
SET BANK[0x03].file="03 Speed Of Sound"
SET BANK[0x04].file="04 Seascape"
SET BANK[0x05].file="05 Midnight Greenhouse"
SET BANK[0x06].file="06 New Moon"
SET BANK[0x07].file="07 Labyrinth"
SET BANK[0x08].file="08 Trial And Error"
SET BANK[0x09].file="09 Walkin"
SET BANK[0x0A].file="0A Hyper-Hyper"
SET BANK[0x0B].file="0B Evening Star"
SET BANK[0x0C].file="0C Moonrise"
SET BANK[0x0D].file="0D Overture"
SET BANK[0x0E].file="0E This Horizon"
SET BANK[0x0F].file="0F Take Off"
SET BANK[0x10].file="10 Combination"
SET BANK[0x11].file="11 Take A Nap"
SET BANK[0x12].file="12 Surging Power"
SET BANK[0x13].file="13 Mechanical Dance"
SET BANK[0x14].file="14 Tube Panic"
SET BANK[0x15].file="15 Crystal Nightmare"
SET BANK[0x16].file="16 Childs Song"
SET BANK[0x17].file="17 Soda Pop"
SET BANK[0x18].file="18 Pendulum"
SET BANK[0x19].file="19 Silver Screen"
SET BANK[0x1A].file="1A Tachy Touch"
SET BANK[0x1B].file="1B Chaotic World"
SET BANK[0x1C].file="1C Surprise"
SET BANK[0x1D].file="1D Nice Meeting You"
SET BANK[0x1E].file="1E Have A Happy Day"
SET BANK[0x1F].file="1F Reach The Goal"
SET BANK[0x20].file="20 High Five"
SET BANK[0x21].file="21 Decision"
SET BANK[0x22].file="22 From Party To Party"
SET BANK[0x23].file="23 Have Some Fun"
SET BANK[0x24].file="24 Oriental Legend"
SET BANK[0x25].file="25 Steel Heart"
SET BANK[0x26].file="26 Tribute"
SET BANK[0x27].file="27 Destructive Power"
SET BANK[0x28].file="28 Just Another Day"
SET BANK[0x29].file="29 Decision 2nd"
SET BANK[0x2A].file="2A"
SET BANK[0x2B].file="2B"
SET BANK[0x2C].file="2C"
SET BANK[0x2D].file="2D"
SET BANK[0x2E].file="2E"
SET BANK[0x2F].file="2F"
SET BANK[0x30].file="30"
SET BANK[0x31].file="31"
SET BANK[0x32].file="32"
SET BANK[0x33].file="33"
SET BANK[0x34].file="34"
SET BANK[0x35].file="35"
SET BANK[0x36].file="36"
SET BANK[0x37].file="37"
SET BANK[0x38].file="38"
SET BANK[0x39].file="39"
SET BANK[0x3A].file="3A"
SET BANK[0x3B].file="3B"
SET BANK[0x3C].file="3C"
SET BANK[0x3D].file="3D"
SET BANK[0x3E].file="3E"
SET BANK[0x3F].file="3F"
SET BANK[0x40].file="40"
SET BANK[0x41].file="41"
SET BANK[0x42].file="42"
SET BANK[0x43].file="43"
SET BANK[0x44].file="44"
SET BANK[0x45].file="45"
SET BANK[0x46].file="46"
SET BANK[0x47].file="47"
SET BANK[0x48].file="48"
SET BANK[0x49].file="49"
SET BANK[0x4A].file="4A"
SET BANK[0x4B].file="4B"
SET BANK[0x4C].file="4C"
SET BANK[0x4D].file="4D"
SET BANK[0x4E].file="4E"
SET BANK[0x4F].file="4F"
SET BANK[0x50].file="50"
SET BANK[0x51].file="51"
SET BANK[0x52].file="52"
SET BANK[0x53].file="53"
SET BANK[0x54].file="54"
SET BANK[0x55].file="55"
SET BANK[0x56].file="56"
SET BANK[0x57].file="57"
SET BANK[0x58].file="58"
SET BANK[0x59].file="59"
SET BANK[0x5A].file="5A"
SET BANK[0x5B].file="5B"
SET BANK[0x5C].file="5C"
SET BANK[0x5D].file="5D"
SET BANK[0x5E].file="5E"
SET BANK[0x5F].file="5F"
SET BANK[0x60].file="60"
SET BANK[0x61].file="61"
SET BANK[0x62].file="62"
SET BANK[0x63].file="63"
SET BANK[0x64].file="64"
SET BANK[0x65].file="65"
SET BANK[0x66].file="66"
SET BANK[0x67].file="67"
SET BANK[0x68].file="68"
SET BANK[0x69].file="69"
SET BANK[0x6A].file="6A"
SET BANK[0x6B].file="6B"
SET BANK[0x6C].file="6C"
SET BANK[0x6D].file="6D"
SET BANK[0x6E].file="6E"

SET BANK[0x01].size=0
SET BANK[0x02].size=0
SET BANK[0x03].size=0
SET BANK[0x04].size=0
SET BANK[0x05].size=0
SET BANK[0x06].size=0
SET BANK[0x07].size=0
SET BANK[0x08].size=0
SET BANK[0x09].size=0
SET BANK[0x0A].size=0
SET BANK[0x0B].size=0
SET BANK[0x0C].size=0
SET BANK[0x0D].size=0
SET BANK[0x0E].size=0
SET BANK[0x0F].size=0
SET BANK[0x10].size=0
SET BANK[0x11].size=0
SET BANK[0x12].size=0
SET BANK[0x13].size=0
SET BANK[0x14].size=0
SET BANK[0x15].size=0
SET BANK[0x16].size=0
SET BANK[0x17].size=0
SET BANK[0x18].size=0
SET BANK[0x19].size=0
SET BANK[0x1A].size=0
SET BANK[0x1B].size=0
SET BANK[0x1C].size=0
SET BANK[0x1D].size=0
SET BANK[0x1E].size=0
SET BANK[0x1F].size=0
SET BANK[0x20].size=0
SET BANK[0x21].size=0
SET BANK[0x22].size=0
SET BANK[0x23].size=0
SET BANK[0x24].size=0
SET BANK[0x25].size=0
SET BANK[0x26].size=0
SET BANK[0x27].size=0
SET BANK[0x28].size=0
SET BANK[0x29].size=0
SET BANK[0x2A].size=0
SET BANK[0x2B].size=0
SET BANK[0x2C].size=0
SET BANK[0x2D].size=0
SET BANK[0x2E].size=0
SET BANK[0x2F].size=0
SET BANK[0x30].size=0
SET BANK[0x31].size=0
SET BANK[0x32].size=0
SET BANK[0x33].size=0
SET BANK[0x34].size=0
SET BANK[0x35].size=0
SET BANK[0x36].size=0
SET BANK[0x37].size=0
SET BANK[0x38].size=0
SET BANK[0x39].size=0
SET BANK[0x3A].size=0
SET BANK[0x3B].size=0
SET BANK[0x3C].size=0
SET BANK[0x3D].size=0
SET BANK[0x3E].size=0
SET BANK[0x3F].size=0
SET BANK[0x40].size=0
SET BANK[0x41].size=0
SET BANK[0x42].size=0
SET BANK[0x43].size=0
SET BANK[0x44].size=0
SET BANK[0x45].size=0
SET BANK[0x46].size=0
SET BANK[0x47].size=0
SET BANK[0x48].size=0
SET BANK[0x49].size=0
SET BANK[0x4A].size=0
SET BANK[0x4B].size=0
SET BANK[0x4C].size=0
SET BANK[0x4D].size=0
SET BANK[0x4E].size=0
SET BANK[0x4F].size=0
SET BANK[0x50].size=0
SET BANK[0x51].size=0
SET BANK[0x52].size=0
SET BANK[0x53].size=0
SET BANK[0x54].size=0
SET BANK[0x55].size=0
SET BANK[0x56].size=0
SET BANK[0x57].size=0
SET BANK[0x58].size=0
SET BANK[0x59].size=0
SET BANK[0x5A].size=0
SET BANK[0x5B].size=0
SET BANK[0x5C].size=0
SET BANK[0x5D].size=0
SET BANK[0x5E].size=0
SET BANK[0x5F].size=0
SET BANK[0x60].size=0
SET BANK[0x61].size=0
SET BANK[0x62].size=0
SET BANK[0x63].size=0
SET BANK[0x64].size=0
SET BANK[0x65].size=0
SET BANK[0x66].size=0
SET BANK[0x67].size=0
SET BANK[0x68].size=0
SET BANK[0x69].size=0
SET BANK[0x6A].size=0
SET BANK[0x6B].size=0
SET BANK[0x6C].size=0
SET BANK[0x6D].size=0
SET BANK[0x6E].size=0

SET BANK[0x01].bank=BANKI0
SET BANK[0x02].bank=BANKI0
SET BANK[0x03].bank=BANKI0
SET BANK[0x04].bank=BANKI0
SET BANK[0x05].bank=BANKI0
SET BANK[0x06].bank=BANKI0
SET BANK[0x07].bank=BANKI0
SET BANK[0x08].bank=BANKI0
SET BANK[0x09].bank=BANKI0
SET BANK[0x0A].bank=BANKI0
SET BANK[0x0B].bank=BANKI0
SET BANK[0x0C].bank=BANKI0
SET BANK[0x0D].bank=BANKI0
SET BANK[0x0E].bank=BANKI0
SET BANK[0x0F].bank=BANKI1
SET BANK[0x10].bank=BANKI1
SET BANK[0x11].bank=BANKI1
SET BANK[0x12].bank=BANKI1
SET BANK[0x13].bank=BANKI1
SET BANK[0x14].bank=BANKI1
SET BANK[0x15].bank=BANKI1
SET BANK[0x16].bank=BANKI1
SET BANK[0x17].bank=BANKI1
SET BANK[0x18].bank=BANKI1
SET BANK[0x19].bank=BANKI1
SET BANK[0x1A].bank=BANKI1
SET BANK[0x1B].bank=BANKI1
SET BANK[0x1C].bank=BANKI1
SET BANK[0x1D].bank=BANKI1
SET BANK[0x1E].bank=BANKI1
SET BANK[0x1F].bank=BANKI1
SET BANK[0x20].bank=BANKI1
SET BANK[0x21].bank=BANKI1
SET BANK[0x22].bank=BANKI1
SET BANK[0x23].bank=BANKI1
SET BANK[0x24].bank=BANKI1
SET BANK[0x25].bank=BANKI1
SET BANK[0x26].bank=BANKI2
SET BANK[0x27].bank=BANKI2
SET BANK[0x28].bank=BANKI2
SET BANK[0x29].bank=BANKI2
SET BANK[0x2A].bank=BANKI2S
SET BANK[0x2B].bank=BANKI2S
SET BANK[0x2C].bank=BANKI2S
SET BANK[0x2D].bank=BANKI2S
SET BANK[0x2E].bank=BANKI2S
SET BANK[0x2F].bank=BANKI2S
SET BANK[0x30].bank=BANKI2S
SET BANK[0x31].bank=BANKI2S
SET BANK[0x32].bank=BANKI2S
SET BANK[0x33].bank=BANKI2S
SET BANK[0x34].bank=BANKI2S
SET BANK[0x35].bank=BANKI2S
SET BANK[0x36].bank=BANKI2S
SET BANK[0x37].bank=BANKI2S
SET BANK[0x38].bank=BANKI2S
SET BANK[0x39].bank=BANKI2S
SET BANK[0x3A].bank=BANKI2S
SET BANK[0x3B].bank=BANKI2S
SET BANK[0x3C].bank=BANKI2S
SET BANK[0x3D].bank=BANKI2S
SET BANK[0x3E].bank=BANKI2S
SET BANK[0x3F].bank=BANKI2S
SET BANK[0x40].bank=BANKI2S
SET BANK[0x41].bank=BANKI2S
SET BANK[0x42].bank=BANKI2S
SET BANK[0x43].bank=BANKI2S
SET BANK[0x44].bank=BANKI2S
SET BANK[0x45].bank=BANKI2S
SET BANK[0x46].bank=BANKI2S
SET BANK[0x47].bank=BANKI2S
SET BANK[0x48].bank=BANKI2S
SET BANK[0x49].bank=BANKI2S
SET BANK[0x4A].bank=BANKI2S
SET BANK[0x4B].bank=BANKI2S
SET BANK[0x4C].bank=BANKI2S
SET BANK[0x4D].bank=BANKI2S
SET BANK[0x4E].bank=BANKI2S
SET BANK[0x4F].bank=BANKI2S
SET BANK[0x50].bank=BANKI2S
SET BANK[0x51].bank=BANKI2S
SET BANK[0x52].bank=BANKI2S
SET BANK[0x53].bank=BANKI2S
SET BANK[0x54].bank=BANKI2S
SET BANK[0x55].bank=BANKI2S
SET BANK[0x56].bank=BANKI2S
SET BANK[0x57].bank=BANKI2S
SET BANK[0x58].bank=BANKI2S
SET BANK[0x59].bank=BANKI2S
SET BANK[0x5A].bank=BANKI2S
SET BANK[0x5B].bank=BANKI2S
SET BANK[0x5C].bank=BANKI2S
SET BANK[0x5D].bank=BANKI2S
SET BANK[0x5E].bank=BANKI2S
SET BANK[0x5F].bank=BANKI2S
SET BANK[0x60].bank=BANKI2S
SET BANK[0x61].bank=BANKI2S
SET BANK[0x62].bank=BANKI2S
SET BANK[0x63].bank=BANKI2S
SET BANK[0x64].bank=BANKI2S
SET BANK[0x65].bank=BANKI2S
SET BANK[0x66].bank=BANKI2S
SET BANK[0x67].bank=BANKI2S
SET BANK[0x68].bank=BANKI2S
SET BANK[0x69].bank=BANKI2S
SET BANK[0x6A].bank=BANKI2S
SET BANK[0x6B].bank=BANKI2S
SET BANK[0x6C].bank=BANKI2S
SET BANK[0x6D].bank=BANKI2S
SET BANK[0x6E].bank=BANKI2S

SET BANK[0x01].locn=0
SET BANK[0x02].locn=0
SET BANK[0x03].locn=0
SET BANK[0x04].locn=0
SET BANK[0x05].locn=0
SET BANK[0x06].locn=0
SET BANK[0x07].locn=0
SET BANK[0x08].locn=0
SET BANK[0x09].locn=0
SET BANK[0x0A].locn=0
SET BANK[0x0B].locn=0
SET BANK[0x0C].locn=0
SET BANK[0x0D].locn=0
SET BANK[0x0E].locn=0
SET BANK[0x0F].locn=0
SET BANK[0x10].locn=0
SET BANK[0x11].locn=0
SET BANK[0x12].locn=0
SET BANK[0x13].locn=0
SET BANK[0x14].locn=0
SET BANK[0x15].locn=0
SET BANK[0x16].locn=0
SET BANK[0x17].locn=0
SET BANK[0x18].locn=0
SET BANK[0x19].locn=0
SET BANK[0x1A].locn=0
SET BANK[0x1B].locn=0
SET BANK[0x1C].locn=0
SET BANK[0x1D].locn=0
SET BANK[0x1E].locn=0
SET BANK[0x1F].locn=0
SET BANK[0x20].locn=0
SET BANK[0x21].locn=0
SET BANK[0x22].locn=0
SET BANK[0x23].locn=0
SET BANK[0x24].locn=0
SET BANK[0x25].locn=0
SET BANK[0x26].locn=0
SET BANK[0x27].locn=0
SET BANK[0x28].locn=0
SET BANK[0x29].locn=0
SET BANK[0x2A].locn=0
SET BANK[0x2B].locn=0
SET BANK[0x2C].locn=0
SET BANK[0x2D].locn=0
SET BANK[0x2E].locn=0
SET BANK[0x2F].locn=0
SET BANK[0x30].locn=0
SET BANK[0x31].locn=0
SET BANK[0x32].locn=0
SET BANK[0x33].locn=0
SET BANK[0x34].locn=0
SET BANK[0x35].locn=0
SET BANK[0x36].locn=0
SET BANK[0x37].locn=0
SET BANK[0x38].locn=0
SET BANK[0x39].locn=0
SET BANK[0x3A].locn=0
SET BANK[0x3B].locn=0
SET BANK[0x3C].locn=0
SET BANK[0x3D].locn=0
SET BANK[0x3E].locn=0
SET BANK[0x3F].locn=0
SET BANK[0x40].locn=0
SET BANK[0x41].locn=0
SET BANK[0x42].locn=0
SET BANK[0x43].locn=0
SET BANK[0x44].locn=0
SET BANK[0x45].locn=0
SET BANK[0x46].locn=0
SET BANK[0x47].locn=0
SET BANK[0x48].locn=0
SET BANK[0x49].locn=0
SET BANK[0x4A].locn=0
SET BANK[0x4B].locn=0
SET BANK[0x4C].locn=0
SET BANK[0x4D].locn=0
SET BANK[0x4E].locn=0
SET BANK[0x4F].locn=0
SET BANK[0x50].locn=0
SET BANK[0x51].locn=0
SET BANK[0x52].locn=0
SET BANK[0x53].locn=0
SET BANK[0x54].locn=0
SET BANK[0x55].locn=0
SET BANK[0x56].locn=0
SET BANK[0x57].locn=0
SET BANK[0x58].locn=0
SET BANK[0x59].locn=0
SET BANK[0x5A].locn=0
SET BANK[0x5B].locn=0
SET BANK[0x5C].locn=0
SET BANK[0x5D].locn=0
SET BANK[0x5E].locn=0
SET BANK[0x5F].locn=0
SET BANK[0x60].locn=0
SET BANK[0x61].locn=0
SET BANK[0x62].locn=0
SET BANK[0x63].locn=0
SET BANK[0x64].locn=0
SET BANK[0x65].locn=0
SET BANK[0x66].locn=0
SET BANK[0x67].locn=0
SET BANK[0x68].locn=0
SET BANK[0x69].locn=0
SET BANK[0x6A].locn=0
SET BANK[0x6B].locn=0
SET BANK[0x6C].locn=0
SET BANK[0x6D].locn=0
SET BANK[0x6E].locn=0

SET BANKD[0x00].file="Bank0_dum"
SET BANKD[0x01].file="Bank1_dum"
SET BANKD[0x02].file="Bank2_dum"
SET BANKD[0x03].file="Bank3_dum"
SET BANKD[0x00].size=0
SET BANKD[0x01].size=0
SET BANKD[0x02].size=0
SET BANKD[0x03].size=0
SET BANKD[0x00].bank=BANKI0
SET BANKD[0x01].bank=BANKI1
SET BANKD[0x02].bank=BANKI2
SET BANKD[0x03].bank=BANKI2S
SET BANKD[0x00].locn=0
SET BANKD[0x01].locn=0
SET BANKD[0x02].locn=0
SET BANKD[0x03].locn=0


REM Bank ID constants (hexadecimal without 0x/$ prefix)
REM Bank sizes for BUILD_MODE=0
SET BANK01_LIM=0x8000
SET /a BANK2_LIM=0x6000-0x01
SET /a BANK2S_LIM=0x8000-0x6000

REM IF [%BUILD_MODE%] EQU [] GOTO HELP
IF %BUILD_MODE% EQU 0 ECHO Rebuilding sound-driver sequentially...
IF %BUILD_MODE% EQU 0 GOTO BUILD_SEQUENTIAL

IF %BUILD_MODE% EQU 1 ECHO Rebuilding sound-driver optimally...
IF %BUILD_MODE% EQU 1 GOTO BUILD_OPT

:HELP 
ECHO ON
ECHO build.bat: Rebuilds Knuckles' Chaotix sound-driver with modified music/sfx
ECHO .
ECHO Usage:
ECHO build.bat BUILD_MODE
ECHO .
ECHO .
ECHO if BUILD_MODE == 0 then rebuild stock sound driver (song IDs kept in their respective, vanilla sound bank IDs)
ECHO .
ECHO if BUILD_MODE == 1 then rebuild sound driver with optimization (stuff as much data as possible into each sound bank)
ECHO Size of each compiled, binary Music file is sorted ascending, and then as much music data is stuffed into bank 0, with Bank IDs adjusted
ECHO Rest of data is stuffed into banks 1 and 2 similarly. Sound is relocated to end of bank 2, to minimize dummy padding and allow for max usage of the banks
Pause
ECHO OFF
REM Throw error of bad param
Exit /b 1

REM Rebuilds the vanilla sound driver (standard banking)
:BUILD_SEQUENTIAL
	REM call :BANKING_CLN
	REM call :BANKING_DUMMYCLN

	REM call :BANKING_DUMMYCMP
	call :BANKING_FILESIZES
	call :BANKING_CHECK
	call :BANKING_LOCN

	call :BUILD_BANKS
	call :BUILD_BANK_TBLS
	call :BUILD_BLOB
	
:Fail
	REM call :BANKING_CLN
	REM call :BANKING_DUMMYCLN
	Pause
	Exit /b
	
:BANKING_CLN
	REM Remove all bin, lst, log, and txt file assets in BIN for clean-slate sound-driver rebuilding
	ECHO OFF
	del /Q "..\BIN\*.bin"	
	del /Q "..\BIN\*.lst"
	del /Q "..\BIN\*.log"
	del /Q "..\BIN\*.txt"
	ECHO ON
	ECHO Recompiling Banks...
	ECHO OFF
	Exit /b
	
:BANKING_DUMMYCMP
	REM Dummy-compile all songs to bin (regardless of target location)
	ECHO ON
	ECHO Dummy-compiling all banks...
	ECHO OFF
	del /Q "dum\*.bin"
	del /Q "dum\*.lst"
	del /Q "dum\*.log"	
	Call compile_all.bat 1		
	ECHO ON
	ECHO Dummy-banks compiled!
	ECHO OFF
	Pause
	Exit /b
	
:BANKING_FILESIZES
	REM Setup all filesizes in array	
	FOR /L %%G IN (1,1,!LEN!) DO (	
		SET FBANK=!BANK[%%G].bank!
		SET FILENAME=!BANK[%%G].file!
		SET FILEDUMBIN="Dum\!FILENAME!.bin"
		SET FILESIZE=0
		Call filesize.bat !FILEDUMBIN! FILESIZE
		SET BANK[%%G].size=!FILESIZE!
	)
	Pause
	Exit /b
	
:BANKING_CHECK
	REM Check for overflows in banks		
	SetLocal EnableDelayedExpansion	
	ECHO ON
	ECHO Checking for overflows in banks...
	ECHO OFF
	SET ERR=0
	SET FREE=0
	call :BANKING_SEQ 0 FREE
	IF !FREE! LSS 0 SET ERR=1
	call :BANKING_SEQ 1 FREE
	IF !FREE! LSS 0 SET ERR=1
	call :BANKING_SEQ 2 FREE
	IF !FREE! LSS 0 SET ERR=1
	call :BANKING_SEQ 3 FREE
	IF !FREE! LSS 0 SET ERR=1
	
	IF !ERR! EQU 1 DO (
		ECHO ON
		ECHO Some banks were overflowed; cannot build sound driver!
		ECHO OFF
		PAUSE
		call :Fail		
	)
	
	IF !ERR! EQU 0 DO (
		ECHO ON
		ECHO All banks good!
		ECHO OFF
		PAUSE
	)
	EndLocal
	Exit /b
	
:BANKING_LOCN
	SetLocal EnableDelayedExpansion		
	SET prevBank=!BANK[1].bank!
	SET SUM=!BANK0!
	FOR /L %%G IN (1,1,!LEN!) DO (
		SET _BANK=!BANK[%%G].bank!
		
		IF !prevBank! NEQ !_BANK! DO (
			SET ID=!prevBank!-!BANKI0!
			SET SIZE=!BANKD[%ID%].size!
			SET BANKD[!ID!].locn=!SUM!
		)
		
		IF !prevBank! EQU !_BANK! DO (		
			SET SIZE=!BANK[%%G].size!
			SET BANK[%%G].locn=!SUM!
		)	
		
		SET SUM /a=!SUM!+!SIZE!
		SET prevBank=!_BANK!		
	)
	EndLocal
	Exit /b
	
:BUILD_BANKS
	REM Rebuild each bank in sequential mode
	call :BUILD_BANK_SEQ
	ECHO ON
	ECHO Banks recompiled!	
	ECHO OFF
	PAUSE
	Exit /b
	
:BUILD_BANK_TBLS
	REM Write hex data to both Bank ID List and Music Ptr Table file blobs: https://stackoverflow.com/a/47826309
	ECHO ON
	ECHO.
	ECHO Writing Music Pointer table and Music Bank ID blobs...
	ECHO OFF
	certutil -f -decodehex "..\BIN\temp.txt" "..\BIN\PtrList.bin" >>nul
	del /Q "..\BIN\temp.txt"
		
	certutil -f -decodehex "..\BIN\temp2.txt" "..\BIN\BankList.bin" >>nul
	del /Q "..\BIN\temp2.txt"
	ECHO ON
	ECHO Blobs written!
	ECHO Awaiting injection of modified sound data/pointer tables into ROM!
	ECHO OFF
	PAUSE
	exit /b
	
:BUILD_BLOB
	REM Generate BGM/SFX blob
	SetLocal EnableDelayedExpansion
	ECHO ON
	ECHO.
	ECHO Writing Audio data blob (BGM+SFX)...
	ECHO OFF
	
	SET prevBank=!BANK[1].bank!
	call zerofill.exe -f -q 0 "..\BIN\Audio.bin"
	FOR /L %%G IN (1,1,!LEN!) DO (
		SET _BANK=!BANK[%%G].bank!
		
		IF !prevBank! NEQ !_BANK! DO (
			SET ID=!prevBank!-!BANKI0!
			SET FILENAME=!BANKD[%ID%].file!
		)
		
		IF !prevBank! EQU !_BANK! DO (		
			SET FILENAME=!BANK[%%G].file!
		)
		SET FILEIN="..\BIN\!FILENAME!.bin"
		copy /b "..\BIN\Audio.bin"+!FILEIN! "..\BIN\Audio.bin"
		SET prevBank=!_BANK!
	)
	
	ECHO ON
	ECHO.
	ECHO Blob written!
	ECHO OFF
	PAUSE
	EndLocal
	exit /b

:BANKING_DUMMYCLN
	REM Cleanup ASM\dum folder
	ECHO OFF
	SetLocal EnableDelayedExpansion
	del /Q "dum\*.bin"
	del /Q "dum\*.lst"
	del /Q "dum\*.log"
	FOR /L %%G IN (0,1,!LEN_B!) DO (
		SET FILE=!BANKD[%%G].file!
		SET FILE="..\BIN\!FILE!.bin"
		del /Q !FILE!
	)
	EndLocal
	Pause
	Exit /b
	
REM Subroutine dummy-builds a particular bank in sequential mode and checks if all of the data can fit within its bank
REM Inputs: %1
REM %1 = BankID (0-3). 0-2 = Bank0-Bank2, 3=Bank2 Sound

REM Outputs: %2
REM %2 = Amount of space leftover (bytes)
:BANKING_SEQ
	REM Set the music fileset to use in next for loop based on current bank (%%F)
	if %1 EQU 0 SET FSET=!BANKI0!
	if %1 EQU 1 SET FSET=!BANKI1!
	if %1 EQU 2 SET FSET=!BANKI2!
	if %1 EQU 3 SET FSET=!BANKI2S!
	
	REM Get the size limit for bank. All banks are $8000 bytes;
	REM however, Chaotix has Bank2 split into 2 pieces:
	REM Bank2 BGM = 0x50000- 0x55FFF
	REM Bank2 SFX = 0x56000- 0x58000
	If %1 LSS 2 SET LIMIT=!BANK01_LIM!
	If %1 EQU 2 SET LIMIT=!BANK2_LIM!
	If %1 EQU 3 SET LIMIT=!BANK2S_LIM!
	
	SET SUM=0
	FOR /L %%G IN (1,1,!LEN!) DO (			
		SET FBANK=!BANK[%%G].bank!
		IF %FBANK% EQU %FSET% (
			SET FILESIZE=!BANK[%%G].size!
			SET /a SUM=!SUM!+!FILESIZE!
		)
	)

	REM If the total filsize freespace is negative, then overflow
	SET /a %2=!LIMIT!-!SUM!
	IF %2 LSS 0
		ECHO ON
		ECHO Error, Bank%1 too large!
		ECHO Overflow by %2 bytes
		Pause
		ECHO OFF
	)
	
	IF %2 GEQ 0
		ECHO ON
		ECHO Bank%1 freespace = %2 bytes
		SET ID=!FSET!-!BANKI0!
		SET FNAME=!BANKD[%ID%].file!
		SET FNAME="!FNAME!.bin"
		SET BANKD[!ID!].size=%2
		call zerofill.exe -f -q %2 !FNAME!
		ECHO OFF
	)
	Exit /b
	
REM Subroutine builds all music in array order
:BUILD_BANK_SEQ
	SetLocal EnableDelayedExpansion
	Echo off
		
	REM Iterate through all files
	FOR /L %%G IN (1,1,!LEN!) DO (
		REM Get the current iterated filename, get the dum\filename.bin version, and filename.asm version				
		SET FILENAME=!BANK[%%G].file!
		SET ASMFILE="!FILENAME!.asm"
		ECHO ON
		ECHO ASMFILE !ASMFILE!
		ECHO OFF		
		SET _BANK=!BANK[%%G].bank!
		SET SUM=!BANK[%%G].locn!
		
		REM Convert our decimal SUM to a decimal LE-Z80 ptr in HX variable		
		SET HX=0
		Call ToLE_Z80.bat !SUM! HX
		ECHO ON
		ECHO TOLE_Z80 !SUM! !HX!
		ECHO OFF
		
		REM Convert HX ptr to a hexadecimal ptr value (no padding) in HXTwo
		SET HXTwo=0
		Call tohex.bat !HX! HXTwo
		ECHO ON
		ECHO tohex !HX! 0x!HXTwo!
		
		REM Pad HXTwo to 4 digits (each ptr in the music bank is one word = 2 bytes = 4 hex chars)
		SET "HXTwo=000!HXTwo!"
		SET "HXTwo=!HXTwo:~-4!"
		ECHO HXTwo !HXTwo!
		
		REM Split the word ptr in HXTwo with " Space " delimiter between each byte
		REM https://stackoverflow.com/a/5274061
		REM https://www.dostips.com/DtTipsStringManipulation.php#Snippets.LeftString
		SET HEXSTR=!HXTwo:~0,2! !HXTwo:~2,2! 
		ECHO PtrStr=!HEXSTR!
		
		REM Append Hex string to temp file
		echo !HEXSTR!>>"..\BIN\temp.txt"
		REM Append BankID to temp2 file for this song if not Bank2S
		if !_BANK! NEQ !BANKI2S! echo !_BANK!>>"..\BIN\temp2.txt"
		ECHO OFF
		
		REM Convert sum to $hex string in ROMHEXOFF
		SET ROMHEXOFF=0
		Call tohex.bat !SUM! ROMHEXOFF
		ECHO ON
		ECHO tohex !SUM! 0x!ROMHEXOFF!
		ECHO OFF
		
		REM Replace (Target	EQU	$xxxxx) bank location in this current ASM file with newly calculated ROMHEXOFF
		REM DO NOT place JREPL inline here; use this batch file call to avoid		
		REM spooky memory leak error when incrementing SUM variable at final code block below
		call fixtarg.bat !ASMFILE! !ROMHEXOFF!
		
		REM Recompile the new ASMFILE at new location!
		Call Comp.bat !FILENAME! 0
	)
	EndLocal
	Exit /b