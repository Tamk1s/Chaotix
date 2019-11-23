REM Batch file updates the "Target	EQU	$12345" Header for the location to place specified song in banks
REM This was split off into a separate batch co-utility from build.bat, due to a spooky memory leak
REM from JREPL that would corrupt either the %SUM%/%FILENAME% variables when incrementing SUM% by %FILENAME%
REM after the 1st iteration in build.bat:BUILD_BANK_SEQ subroutine

REM Inputs: %1 %2
REM %1 = ASMFILE to edit with fixed target
REM %2 = New target location as hex string without $sign (e.g. 40000 for start of bank0)
SET _AFILE=%1
SET _RHOFF=%2
SET JREPL_R="Target\tEQU\t\x24%_RHOFF%"
JREPL.bat "Target\tEQU\t\x24....." %JREPL_R% /XSEQ /f %_AFILE% /o -