REM Rebuilds the soundriver
REM Input: %1 = Build mode. See HELP label for usage
CLS
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
SET BANK0L="01 Door Into Summer" "02 Electoria" "03 Speed Of Sound" "04 Seascape" "05 Midnight Greenhouse" "06 New Moon" "07 Labyrinth" "08 Trial And Error" "09 Walkin" "0A Hyper-Hyper" "0B Evening Star" "0C Moonrise" "0D Overture" "0E This Horizon"
SET BANK1L="0F Take Off" "10 Combination" "11 Take A Nap" "12 Surging Power" "13 Mechanical Dance" "14 Tube Panic" "15 Crystal Nightmare" "16 Childs Song" "17 Soda Pop" "18 Pendulum" "19 Silver Screen" "1A Tachy Touch" "1B Chaotic World" "1C Surprise" "1D Nice Meeting You" "1E Have A Happy Day" "1F Reach The Goal" "20 High Five" "21 Decision" "22 From Party To Party" "23 Have Some Fun" "24 Oriental Legend" "25 Steel Heart"
SET BANK2L="26 Tribute" "27 Destructive Power" "28 Just Another Day" "29 Decision 2nd"
SET BANK2SL="2A" "2B" "2C" "2D" "2E" "2F" "30" "31" "32" "33" "34" "35" "36" "37" "38" "39" "3A" "3B" "3C" "3D" "3E" "3F" "40" "41" "42" "43" "44" "45" "46" "47" "48" "49" "4A" "4B" "4C" "4D" "4E" "4F" "50" "51" "52" "53" "54" "55" "56" "57" "58" "59" "5A" "5B" "5C" "5D" "5E" "5F" "60" "61" "62" "63" "64" "65" "66" "67" "68" "69" "6A" "6B" "6C" "6D" "6E"

REM Bank ID constants (hexadecimal without 0x/$ prefix)
SEt BANK0I=18
SEt BANK1I=19
SEt BANK2I=1A

REM Bank sizes for BUILD_MODE=0
SET BANK01_LIM=0x8000
SET /a BANK2_LIM=0x6000-0x01
SET /a BANK2S_LIM=0x8000-0x6000

REM IF [%BUILD_MODE%] EQU [] GOTO HELP

ECHO ON
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
	ECHO OFF
	
	REM Dummy-compile all songs to bin (regardless of target location)
	REM ECHO ON
	ECHO Dummy-compiling all banks...
	ECHO OFF
	del /Q "dum\*.bin"
	del /Q "dum\*.lst"
	del /Q "dum\*.log"	
	Call compile_all.bat 1	
	ECHO ON
	ECHO Dummy-banks compiled!
	
	REM Check for overflows in banks	
	ECHO Checking for overflows in banks...
	ECHO OFF
	call :BANKING_SEQ 0
	call :BANKING_SEQ 1
	call :BANKING_SEQ 2
	call :BANKING_SEQ 3
	ECHO ON
	ECHO All banks good!
	ECHO OFF
	
	REM Remove all bin, lst, log, and txt file assets in BIN for clean-slate sound-driver rebuilding
	del /Q "..\BIN\*.bin"	
	del /Q "..\BIN\*.lst"
	del /Q "..\BIN\*.log"
	del /Q "..\BIN\*.txt"
	ECHO ON
	ECHO Recompiling Banks...
	ECHO OFF
	
	REM Rebuild each bank in sequential mode
	call :BUILD_BANK_SEQ 0
	call :BUILD_BANK_SEQ 1
	call :BUILD_BANK_SEQ 2
	call :BUILD_BANK_SEQ 3
	ECHO ON
	ECHO Banks recompiled!
	ECHO.
	ECHO Writing Music Pointer table and Music Bank ID blobs...
	ECHO OFF
	
	REM Write hex data to both Bank ID List and Music Ptr Table file blobs: https://stackoverflow.com/a/47826309
	certutil -f -decodehex "..\BIN\temp.txt" "..\BIN\PtrList.bin" >>nul
	del /Q "..\BIN\temp.txt"
		
	certutil -f -decodehex "..\BIN\temp2.txt" "..\BIN\BankList.bin" >>nul
	del /Q "..\BIN\temp2.txt"
	ECHO ON
	ECHO Blobs written!
	ECHO Awaiting injection of modified sound data/pointer tables into ROM!
	ECHO OFF
	REM Cleanup ASM\dum folder
	del /Q "dum\*.bin"
	del /Q "dum\*.lst"
	del /Q "dum\*.log"
	REM Pause
	Exit /b
	
REM Subroutine dummy-builds a particular bank in sequential mode and checks if all of the data can fit within its bank
REM Inputs: %1
REM %1 = BankID (0-3). 0-2 = Bank0-Bank2, 3=Bank2 Sound
:BANKING_SEQ
	SetLocal EnableDelayedExpansion	
	REM Set the music fileset to use in next for loop based on current bank (%%F)
	If %1 EQU 0 SET FSET=!BANK0L!
	If %1 EQU 1 SET FSET=!BANK1L!
	If %1 EQU 2 SET FSET=!BANK2L!
	If %1 EQU 3 SET FSET=!BANK2SL!
	
	REM Get the size limit for bank. All banks are $8000 bytes;
	REM however, Chaotix has Bank2 split into 2 pieces:
	REM Bank2 BGM = 0x50000- 0x55FFF
	REM Bank2 SFX = 0x56000- 0x58000
	If %1 LSS 2 SET LIMIT=!BANK01_LIM!
	If %1 EQU 2 SET LIMIT=!BANK2_LIM!
	If %1 EQU 3 SET LIMIT=!BANK2S_LIM!
	
	REM Iterate through all files in set, get its filesize, increment SUM accumulator variable by filesize
	SET SUM=0
	FOR %%G IN (!FSET!) DO (
		SET FILENAME=%%~G
		SET FILEDUMBIN="Dum\!FILENAME!.bin"
		SET FILESIZE=0
		Call filesize.bat !FILEDUMBIN! FILESIZE
		SET /a SUM=!SUM!+!FILESIZE!
	)
	
	REM If the total filsize (%SUM%) in that bank is > %LIMIT%, then throw error
	IF %SUM% GTR %LIMIT% (
		ECHO ON
		SET /a OVERFLOW=LIMIT-SUM
		ECHO Error, Bank%1 too large!
		ECHO Overflow by %OVERFLOW% bytes
		Pause
		ECHO OFF
		Exit 1		
	)
	EndLocal
	Exit /b
	
REM Subroutine builds a particular bank in sequential mode
REM Inputs: %1
REM %1 = BankID (0-3). 0-2 = Bank0-Bank2, 3=Bank2 Sound
:BUILD_BANK_SEQ
	SetLocal EnableDelayedExpansion
	Echo off
	
	REM Iterator counter for FOR loop
	SET G_CTR=0
	
	REM Set the music fileset to use in next for loop based on current bank (%1)
	If %1 EQU 0 SET FSET=!BANK0L!
	If %1 EQU 1 SET FSET=!BANK1L!
	If %1 EQU 2 SET FSET=!BANK2L!
	If %1 EQU 3 SET FSET=!BANK2SL!
	
	REM Set the Bank ID for all songs in this bank
	REM Bank2S is hardcoded to BANK2I elsewhere in ROM; do not overwrite
	If %1 EQU 0 SET BANKI=!BANK0I!
	If %1 EQU 1 SET BANKI=!BANK1I!
	If %1 EQU 2 SET BANKI=!BANK2I!
	
	REM Iterate through all files in bank
	FOR %%G IN (!FSET!) DO (
		REM Get the current iterated filename, get the dum\filename.bin version, and filename.asm version
		SET FILENAME=%%~G
		SET FILEDUMBIN="Dum\!FILENAME!.bin"
		SET ASMFILE="!FILENAME!.asm"
		ECHO ON
		ECHO ASMFILE !ASMFILE!
		ECHO OFF
		
		REM If song isn't first index, then increment sum by this song's filesze (SUM=get proper ROM offset to place song)
		REM IF song is first index, then set SUM at beginning of current BANK
		IF !G_CTR! EQU 0 (
			If %1 EQU 0 SET SUM=!BANK0!
			If %1 EQU 1 SET SUM=!BANK1!
			If %1 EQU 2 SET SUM=!BANK2!
			If %1 EQU 3 SET SUM=!BANK2S!
			ECHO SUM !SUM!
		)
		
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
		if %1 NEQ 3 echo %BANKI%>>"..\BIN\temp2.txt"
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
		Call Comp.bat %%G 0
		
		REM Increment G%% counter, increment SUM by this song's filesize
		SET /a G_CTR=!G_CTR!+1
		SET FILESIZE=0
		Call filesize.bat !FILEDUMBIN! FILESIZE
		ECHO ON
		SET /a SUM=!SUM!+!FILESIZE!
		ECHO filesize !FILEDUMBIN! !FILESIZE! !SUM!
		ECHO OFF
	)
	EndLocal
	Exit /b

:BUILD_OPT
	ECHO ON
	ECHO BUILD_OPT MODE NOT YET IMPLEMENTED!
	Exit /b 1