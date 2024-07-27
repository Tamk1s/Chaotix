SetLocal EnableDelayedExpansion	
	ECHO OFF
	SET SUM=0
	SET FILENAME=SS_Level.bin
	SET FILESIZE=0
	Call filesize.bat !FILENAME! FILESIZE
	SET /a SUM=!SUM!+!FILESIZE!
	
	REM If the total filsize (!SUM!) in that bank is not divisible by 4
	SET /a Remainder=!SUM!%%4
	ECHO ON	
	ECHO APB Size: !SUM!
	ECHO OFF
	IF !Remainder! NEQ 0 (
		SET /a Remainder=4-!Remainder!
		ECHO ON	
		ECHO Pad APB by !Remainder! bytes
		zerofill.exe -f -q !Remainder! SS_LevelPad.pad
		REM Pause
		ECHO OFF
	)
	
	ECHO OFF
	SET SUM=0
	SET FILENAME=SS_Results.bin
	SET FILESIZE=0
	Call filesize.bat !FILENAME! FILESIZE
	SET /a SUM=!SUM!+!FILESIZE!
	
	REM If the total filsize (!SUM!) in that bank is not divisible by 4
	SET /a Remainder=!SUM!%%4
	ECHO ON	
	ECHO APB Size: !SUM!
	ECHO OFF
	IF !Remainder! NEQ 0 (
		SET /a Remainder=4-!Remainder!
		ECHO ON	
		ECHO Pad APB by !Remainder! bytes
		zerofill.exe -f -q !Remainder! SS_ResultsPad.pad
		REM Pause
		ECHO OFF
	)
EndLocal
ECHO OFF
Exit /b