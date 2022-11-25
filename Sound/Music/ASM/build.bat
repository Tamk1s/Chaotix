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
SET LEN=110
SET LEN_B=3
SET BANKI0=24
SET BANKI1=25
SET BANKI2=26
SET BANKI2S=27
SET BANK[1].file=01 Door Into Summer
SET BANK[2].file=02 Electoria
SET BANK[3].file=03 Speed Of Sound
SET BANK[4].file=04 Seascape
SET BANK[5].file=05 Midnight Greenhouse
SET BANK[6].file=06 New Moon
SET BANK[7].file=07 Labyrinth
SET BANK[8].file=08 Trial And Error
SET BANK[9].file=09 Walkin
SET BANK[10].file=0A Hyper-Hyper
SET BANK[11].file=0B Evening Star
SET BANK[12].file=0C Moonrise
SET BANK[13].file=0D Overture
SET BANK[14].file=0E This Horizon
SET BANK[15].file=0F Take Off
SET BANK[16].file=10 Combination
SET BANK[17].file=11 Take A Nap
SET BANK[18].file=12 Surging Power
SET BANK[19].file=13 Mechanical Dance
SET BANK[20].file=14 Tube Panic
SET BANK[21].file=15 Crystal Nightmare
SET BANK[22].file=16 Childs Song
SET BANK[23].file=17 Soda Pop
SET BANK[24].file=18 Pendulum
SET BANK[25].file=19 Silver Screen
SET BANK[26].file=1A Tachy Touch
SET BANK[27].file=1B Chaotic World
SET BANK[28].file=1C Surprise
SET BANK[29].file=1D Nice Meeting You
SET BANK[30].file=1E Have A Happy Day
SET BANK[31].file=1F Reach The Goal
SET BANK[32].file=20 High Five
SET BANK[33].file=21 Decision
SET BANK[34].file=22 From Party To Party
SET BANK[35].file=23 Have Some Fun
SET BANK[36].file=24 Oriental Legend
SET BANK[37].file=25 Steel Heart
SET BANK[38].file=26 Tribute
SET BANK[39].file=27 Destructive Power
SET BANK[40].file=28 Just Another Day
SET BANK[41].file=29 Decision 2nd
SET BANK[42].file=2A
SET BANK[43].file=2B
SET BANK[44].file=2C
SET BANK[45].file=2D
SET BANK[46].file=2E
SET BANK[47].file=2F
SET BANK[48].file=30
SET BANK[49].file=31
SET BANK[50].file=32
SET BANK[51].file=33
SET BANK[52].file=34
SET BANK[53].file=35
SET BANK[54].file=36
SET BANK[55].file=37
SET BANK[56].file=38
SET BANK[57].file=39
SET BANK[58].file=3A
SET BANK[59].file=3B
SET BANK[60].file=3C
SET BANK[61].file=3D
SET BANK[62].file=3E
SET BANK[63].file=3F
SET BANK[64].file=40
SET BANK[65].file=41
SET BANK[66].file=42
SET BANK[67].file=43
SET BANK[68].file=44
SET BANK[69].file=45
SET BANK[70].file=46
SET BANK[71].file=47
SET BANK[72].file=48
SET BANK[73].file=49
SET BANK[74].file=4A
SET BANK[75].file=4B
SET BANK[76].file=4C
SET BANK[77].file=4D
SET BANK[78].file=4E
SET BANK[79].file=4F
SET BANK[80].file=50
SET BANK[81].file=51
SET BANK[82].file=52
SET BANK[83].file=53
SET BANK[84].file=54
SET BANK[85].file=55
SET BANK[86].file=56
SET BANK[87].file=57
SET BANK[88].file=58
SET BANK[89].file=59
SET BANK[90].file=5A
SET BANK[91].file=5B
SET BANK[92].file=5C
SET BANK[93].file=5D
SET BANK[94].file=5E
SET BANK[95].file=5F
SET BANK[96].file=60
SET BANK[97].file=61
SET BANK[98].file=62
SET BANK[99].file=63
SET BANK[100].file=64
SET BANK[101].file=65
SET BANK[102].file=66
SET BANK[103].file=67
SET BANK[104].file=68
SET BANK[105].file=69
SET BANK[106].file=6A
SET BANK[107].file=6B
SET BANK[108].file=6C
SET BANK[109].file=6D
SET BANK[110].file=6E

SET BANK[1].size=0
SET BANK[2].size=0
SET BANK[3].size=0
SET BANK[4].size=0
SET BANK[5].size=0
SET BANK[6].size=0
SET BANK[7].size=0
SET BANK[8].size=0
SET BANK[9].size=0
SET BANK[10].size=0
SET BANK[11].size=0
SET BANK[12].size=0
SET BANK[13].size=0
SET BANK[14].size=0
SET BANK[15].size=0
SET BANK[16].size=0
SET BANK[17].size=0
SET BANK[18].size=0
SET BANK[19].size=0
SET BANK[20].size=0
SET BANK[21].size=0
SET BANK[22].size=0
SET BANK[23].size=0
SET BANK[24].size=0
SET BANK[25].size=0
SET BANK[26].size=0
SET BANK[27].size=0
SET BANK[28].size=0
SET BANK[29].size=0
SET BANK[30].size=0
SET BANK[31].size=0
SET BANK[32].size=0
SET BANK[33].size=0
SET BANK[34].size=0
SET BANK[35].size=0
SET BANK[36].size=0
SET BANK[37].size=0
SET BANK[38].size=0
SET BANK[39].size=0
SET BANK[40].size=0
SET BANK[41].size=0
SET BANK[42].size=0
SET BANK[43].size=0
SET BANK[44].size=0
SET BANK[45].size=0
SET BANK[46].size=0
SET BANK[47].size=0
SET BANK[48].size=0
SET BANK[49].size=0
SET BANK[50].size=0
SET BANK[51].size=0
SET BANK[52].size=0
SET BANK[53].size=0
SET BANK[54].size=0
SET BANK[55].size=0
SET BANK[56].size=0
SET BANK[57].size=0
SET BANK[58].size=0
SET BANK[59].size=0
SET BANK[60].size=0
SET BANK[61].size=0
SET BANK[62].size=0
SET BANK[63].size=0
SET BANK[64].size=0
SET BANK[65].size=0
SET BANK[66].size=0
SET BANK[67].size=0
SET BANK[68].size=0
SET BANK[69].size=0
SET BANK[70].size=0
SET BANK[71].size=0
SET BANK[72].size=0
SET BANK[73].size=0
SET BANK[74].size=0
SET BANK[75].size=0
SET BANK[76].size=0
SET BANK[77].size=0
SET BANK[78].size=0
SET BANK[79].size=0
SET BANK[80].size=0
SET BANK[81].size=0
SET BANK[82].size=0
SET BANK[83].size=0
SET BANK[84].size=0
SET BANK[85].size=0
SET BANK[86].size=0
SET BANK[87].size=0
SET BANK[88].size=0
SET BANK[89].size=0
SET BANK[90].size=0
SET BANK[91].size=0
SET BANK[92].size=0
SET BANK[93].size=0
SET BANK[94].size=0
SET BANK[95].size=0
SET BANK[96].size=0
SET BANK[97].size=0
SET BANK[98].size=0
SET BANK[99].size=0
SET BANK[100].size=0
SET BANK[101].size=0
SET BANK[102].size=0
SET BANK[103].size=0
SET BANK[104].size=0
SET BANK[105].size=0
SET BANK[106].size=0
SET BANK[107].size=0
SET BANK[108].size=0
SET BANK[109].size=0
SET BANK[110].size=0

SET BANK[1].bank=BANKI0
SET BANK[2].bank=BANKI0
SET BANK[3].bank=BANKI0
SET BANK[4].bank=BANKI0
SET BANK[5].bank=BANKI0
SET BANK[6].bank=BANKI0
SET BANK[7].bank=BANKI0
SET BANK[8].bank=BANKI0
SET BANK[9].bank=BANKI0
SET BANK[10].bank=BANKI0
SET BANK[11].bank=BANKI0
SET BANK[12].bank=BANKI0
SET BANK[13].bank=BANKI0
SET BANK[14].bank=BANKI0
SET BANK[15].bank=BANKI1
SET BANK[16].bank=BANKI1
SET BANK[17].bank=BANKI1
SET BANK[18].bank=BANKI1
SET BANK[19].bank=BANKI1
SET BANK[20].bank=BANKI1
SET BANK[21].bank=BANKI1
SET BANK[22].bank=BANKI1
SET BANK[23].bank=BANKI1
SET BANK[24].bank=BANKI1
SET BANK[25].bank=BANKI1
SET BANK[26].bank=BANKI1
SET BANK[27].bank=BANKI1
SET BANK[28].bank=BANKI1
SET BANK[29].bank=BANKI1
SET BANK[30].bank=BANKI1
SET BANK[31].bank=BANKI1
SET BANK[32].bank=BANKI1
SET BANK[33].bank=BANKI1
SET BANK[34].bank=BANKI1
SET BANK[35].bank=BANKI1
SET BANK[36].bank=BANKI1
SET BANK[37].bank=BANKI1
SET BANK[38].bank=BANKI2
SET BANK[39].bank=BANKI2
SET BANK[40].bank=BANKI2
SET BANK[41].bank=BANKI2
SET BANK[42].bank=BANKI2S
SET BANK[43].bank=BANKI2S
SET BANK[44].bank=BANKI2S
SET BANK[45].bank=BANKI2S
SET BANK[46].bank=BANKI2S
SET BANK[47].bank=BANKI2S
SET BANK[48].bank=BANKI2S
SET BANK[49].bank=BANKI2S
SET BANK[50].bank=BANKI2S
SET BANK[51].bank=BANKI2S
SET BANK[52].bank=BANKI2S
SET BANK[53].bank=BANKI2S
SET BANK[54].bank=BANKI2S
SET BANK[55].bank=BANKI2S
SET BANK[56].bank=BANKI2S
SET BANK[57].bank=BANKI2S
SET BANK[58].bank=BANKI2S
SET BANK[59].bank=BANKI2S
SET BANK[60].bank=BANKI2S
SET BANK[61].bank=BANKI2S
SET BANK[62].bank=BANKI2S
SET BANK[63].bank=BANKI2S
SET BANK[64].bank=BANKI2S
SET BANK[65].bank=BANKI2S
SET BANK[66].bank=BANKI2S
SET BANK[67].bank=BANKI2S
SET BANK[68].bank=BANKI2S
SET BANK[69].bank=BANKI2S
SET BANK[70].bank=BANKI2S
SET BANK[71].bank=BANKI2S
SET BANK[72].bank=BANKI2S
SET BANK[73].bank=BANKI2S
SET BANK[74].bank=BANKI2S
SET BANK[75].bank=BANKI2S
SET BANK[76].bank=BANKI2S
SET BANK[77].bank=BANKI2S
SET BANK[78].bank=BANKI2S
SET BANK[79].bank=BANKI2S
SET BANK[80].bank=BANKI2S
SET BANK[81].bank=BANKI2S
SET BANK[82].bank=BANKI2S
SET BANK[83].bank=BANKI2S
SET BANK[84].bank=BANKI2S
SET BANK[85].bank=BANKI2S
SET BANK[86].bank=BANKI2S
SET BANK[87].bank=BANKI2S
SET BANK[88].bank=BANKI2S
SET BANK[89].bank=BANKI2S
SET BANK[90].bank=BANKI2S
SET BANK[91].bank=BANKI2S
SET BANK[92].bank=BANKI2S
SET BANK[93].bank=BANKI2S
SET BANK[94].bank=BANKI2S
SET BANK[95].bank=BANKI2S
SET BANK[96].bank=BANKI2S
SET BANK[97].bank=BANKI2S
SET BANK[98].bank=BANKI2S
SET BANK[99].bank=BANKI2S
SET BANK[100].bank=BANKI2S
SET BANK[101].bank=BANKI2S
SET BANK[102].bank=BANKI2S
SET BANK[103].bank=BANKI2S
SET BANK[104].bank=BANKI2S
SET BANK[105].bank=BANKI2S
SET BANK[106].bank=BANKI2S
SET BANK[107].bank=BANKI2S
SET BANK[108].bank=BANKI2S
SET BANK[109].bank=BANKI2S
SET BANK[110].bank=BANKI2S

SET BANK[1].locn=0
SET BANK[2].locn=0
SET BANK[3].locn=0
SET BANK[4].locn=0
SET BANK[5].locn=0
SET BANK[6].locn=0
SET BANK[7].locn=0
SET BANK[8].locn=0
SET BANK[9].locn=0
SET BANK[10].locn=0
SET BANK[11].locn=0
SET BANK[12].locn=0
SET BANK[13].locn=0
SET BANK[14].locn=0
SET BANK[15].locn=0
SET BANK[16].locn=0
SET BANK[17].locn=0
SET BANK[18].locn=0
SET BANK[19].locn=0
SET BANK[20].locn=0
SET BANK[21].locn=0
SET BANK[22].locn=0
SET BANK[23].locn=0
SET BANK[24].locn=0
SET BANK[25].locn=0
SET BANK[26].locn=0
SET BANK[27].locn=0
SET BANK[28].locn=0
SET BANK[29].locn=0
SET BANK[30].locn=0
SET BANK[31].locn=0
SET BANK[32].locn=0
SET BANK[33].locn=0
SET BANK[34].locn=0
SET BANK[35].locn=0
SET BANK[36].locn=0
SET BANK[37].locn=0
SET BANK[38].locn=0
SET BANK[39].locn=0
SET BANK[40].locn=0
SET BANK[41].locn=0
SET BANK[42].locn=0
SET BANK[43].locn=0
SET BANK[44].locn=0
SET BANK[45].locn=0
SET BANK[46].locn=0
SET BANK[47].locn=0
SET BANK[48].locn=0
SET BANK[49].locn=0
SET BANK[50].locn=0
SET BANK[51].locn=0
SET BANK[52].locn=0
SET BANK[53].locn=0
SET BANK[54].locn=0
SET BANK[55].locn=0
SET BANK[56].locn=0
SET BANK[57].locn=0
SET BANK[58].locn=0
SET BANK[59].locn=0
SET BANK[60].locn=0
SET BANK[61].locn=0
SET BANK[62].locn=0
SET BANK[63].locn=0
SET BANK[64].locn=0
SET BANK[65].locn=0
SET BANK[66].locn=0
SET BANK[67].locn=0
SET BANK[68].locn=0
SET BANK[69].locn=0
SET BANK[70].locn=0
SET BANK[71].locn=0
SET BANK[72].locn=0
SET BANK[73].locn=0
SET BANK[74].locn=0
SET BANK[75].locn=0
SET BANK[76].locn=0
SET BANK[77].locn=0
SET BANK[78].locn=0
SET BANK[79].locn=0
SET BANK[80].locn=0
SET BANK[81].locn=0
SET BANK[82].locn=0
SET BANK[83].locn=0
SET BANK[84].locn=0
SET BANK[85].locn=0
SET BANK[86].locn=0
SET BANK[87].locn=0
SET BANK[88].locn=0
SET BANK[89].locn=0
SET BANK[90].locn=0
SET BANK[91].locn=0
SET BANK[92].locn=0
SET BANK[93].locn=0
SET BANK[94].locn=0
SET BANK[95].locn=0
SET BANK[96].locn=0
SET BANK[97].locn=0
SET BANK[98].locn=0
SET BANK[99].locn=0
SET BANK[100].locn=0
SET BANK[101].locn=0
SET BANK[102].locn=0
SET BANK[103].locn=0
SET BANK[104].locn=0
SET BANK[105].locn=0
SET BANK[106].locn=0
SET BANK[107].locn=0
SET BANK[108].locn=0
SET BANK[109].locn=0
SET BANK[110].locn=0

SET BANKD[0].file=Bank0_dum
SET BANKD[1].file=Bank1_dum
SET BANKD[2].file=Bank2_dum
SET BANKD[3].file=Bank3_dum
SET BANKD[0].size=0
SET BANKD[1].size=0
SET BANKD[2].size=0
SET BANKD[3].size=0
SET BANKD[0].bank=BANKI0
SET BANKD[1].bank=BANKI1
SET BANKD[2].bank=BANKI2
SET BANKD[3].bank=BANKI2S
SET BANKD[0].locn=0
SET BANKD[1].locn=0
SET BANKD[2].locn=0
SET BANKD[3].locn=0


REM Bank ID constants (hexadecimal without 0x/$ prefix)
REM Bank sizes for BUILD_MODE=0
SET BANK01_LIM=0x8000
SET /a "BANK2_LIM=0x6000-0x01"
SET /a "BANK2S_LIM=0x8000-0x6000"

REM IF [%BUILD_MODE%] EQU [] GOTO HELP
IF %BUILD_MODE% EQU 0 (
	ECHO Rebuilding sound-driver sequentially...
	GOTO BUILD_SEQUENTIAL
)

IF %BUILD_MODE% EQU 1 (
	ECHO Rebuilding sound-driver optimally...
	GOTO BUILD_OPT
)

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
	ECHO ON
	ECHO Recompiling Banks...
	ECHO OFF
	REM call :BANKING_CLN
	REM call :BANKING_DUMMYCLN

	REM call :BANKING_DUMMYCMP
	call :BANKING_FILESIZES
	call :BANKING_CHECK
	call :BANKING_LOCN

	REM call :BUILD_BANKS
	REM call :BUILD_BANK_TBLS
	REM call :BUILD_BLOB
	
:Fail
	REM call :BANKING_CLN
	REM call :BANKING_DUMMYCLN
	Pause
	Goto:eof
	
:BANKING_CLN
	REM Remove all bin, lst, log, and txt file assets in BIN for clean-slate sound-driver rebuilding
	ECHO OFF
	del /Q "..\BIN\*.bin"	
	del /Q "..\BIN\*.lst"
	del /Q "..\BIN\*.log"
	del /Q "..\BIN\*.txt"	
	EXIT /B
	
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
	ECHO .
	ECHO OFF
	REM Pause
	EXIT /B
	
:BANKING_FILESIZES
	REM Setup all filesizes in array	
	ECHO ON
	ECHO Fetching filesizes...
	ECHO OFF
	SetLocal EnableDelayedExpansion	
	FOR /L %%G IN (1,1,!LEN!) DO (	
		SET FILENAME=!BANK[%%G].file!
		SET FILEDUMBIN="Dum\!FILENAME!.bin"
		SET FILESIZE=0
		Call filesize.bat !FILEDUMBIN! FILESIZE
		SET BANK[%%G].size=!FILESIZE!
		Echo Filesize: !FILEDUMBIN! !FILESIZE!
	)	
	EndLocal
	ECHO .
	EXIT /B
	
:BANKING_CHECK
	REM Check for overflows in banks		
	ECHO ON
	ECHO Checking for overflows in banks...
	pause
	ECHO OFF
	call :BANKING_SEQ 0
	call :BANKING_SEQ 1
	call :BANKING_SEQ 2
	call :BANKING_SEQ 3
	ECHO ON
	ECHO All banks good!
	ECHO .
	ECHO OFF
	Pause
	EXIT /B
	
	
:BANKING_LOCN
	SetLocal EnableDelayedExpansion
	SET prevBank=!BANK[1].bank!
	SET SUM=!BANK0!
	FOR /L %%G IN (1,1,!LEN!) DO (
		SET _BANK=!BANK[%%G].bank!
			
		SET S=0
		IF !prevBank! NEQ !_BANK! (
			SET /a "ID=!prevBank!-!BANKI0!"
			SET S=!BANKD[%ID%].size!
			SET BANKD[!ID!].locn=!SUM!
			ECHO "padding(!ID!) locn: !SUM!"
		) ELSE (
			SET S=!BANK[%%G].size!
			SET BANK[%%G].locn=!SUM!
			ECHO "File(%%G) locn: !SUM!"
		)

		SET SIZE=!S!
		SET /a "SUM=!SUM!+!SIZE!"
		SET prevBank=!_BANK!
	)
	EndLocal
	EXIT /B
	
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
	EXIT /B
	
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
	EXIT /B

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
	EXIT /B
	
REM Subroutine dummy-builds a particular bank in sequential mode and checks if all of the data can fit within its bank
REM Inputs: %1
REM %1 = BankID (0-3). 0-2 = Bank0-Bank2, 3=Bank2 Sound

REM Outputs: %2
REM %2 = Amount of space leftover (bytes)
:BANKING_SEQ
	REM Set the music fileset to use in next for loop based on current bank (%%F)
	SetLocal EnableDelayedExpansion	
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
		IF !FBANK! EQU !FSET! (
			SET FILESIZE=!BANK[%%G].size!
			SET /a SUM=!SUM!+!FILESIZE!
		)
	)

	REM If the total filsize freespace is negative, then overflow
	SET ERR=0
	SET /a ERR=!LIMIT!-!SUM!
	IF !ERR! LSS 0 (
		ECHO ON
		ECHO Error, Bank%1 too large!
		ECHO Overflow by !ERR! bytes		
		Pause
		ECHO OFF		
	) ELSE ( 
		ECHO ON
		ECHO Bank%1 freespace = !ERR! bytes
		SET ID=0
		SET /a ID=!FSET!-!BANKI0!
		SET FILE=!BANKD[%ID%].file!
		SET FNAME="..\BIN\!FILE!.bin"
		SET BANKD[!ID!].size=!ERR!
		call zerofill.exe -f -q !ERR! !FNAME!
		pause
		ECHO OFF
	)
	EndLocal
	EXIT /B
	
REM Subroutine builds all music in array order
:BUILD_BANKS
	SetLocal EnableDelayedExpansion
	REM Rebuild each bank in sequential mode
		
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
	
	ECHO ON
	ECHO Banks recompiled!	
	ECHO OFF
	EndLocal
	EXIT /B