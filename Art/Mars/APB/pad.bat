SetLocal EnableDelayedExpansion	
	ECHO OFF
	REM Iterate through all, get its filesize, increment SUM accumulator variable by filesize
	SET SUM=0
	FOR %%G IN (*.bin) DO (
		SET FILENAME=%%G
		SET FILESIZE=0
		Call filesize.bat !FILENAME! FILESIZE
		SET /a SUM=!SUM!+!FILESIZE!
	)
	
	REM If the total filsize (!SUM!) in that bank is not divisible by 4
	SET /a Remainder=!SUM!%%4
	ECHO ON	
	ECHO APB Size: !SUM!
	ECHO OFF
	IF !Remainder! NEQ 0 (
		SET /a Remainder=4-!Remainder!
		ECHO ON	
		ECHO Pad APB by !Remainder! bytes
		zerofill.exe -f -q !Remainder! PADDING.pad
		REM Pause
		ECHO OFF
		Exit 1		
	)
EndLocal
REM pause
ECHO OFF
Exit /b