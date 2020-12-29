@ECHO OFF
SET FILE=%1
SET DFILE=%2
SET RATE=%3
SET CREATE=%4
SET ADDR=%5
SET ID=%6

REM Generates an entry in the INI file foreach PWM sample
REM
REM Params:
REM %1-%5 = struct array element (file, dfile, rate, create, addr)
REM %6 = PWM ID for this entry

SetLocal EnableDelayedExpansion	
	REM Convert ID to hex
 	SET HX=0
 	Call tohex.bat !ID! HX
 
 	REM Pad ID to 2 digits	
 	SET "HX=0!HX!"
 	SET "HX=!HX:~-2!"	
	
	REM Write PWM ID, compression to PCM, and File to whatever
 	ECHO [!HX!]>> PWM.ini
 	ECHO Compr = PCM>> PWM.ini
 	ECHO File = PWM\!DFILE!>> PWM.ini
 
 	REM Calculate rate and write
	Set Result=0
 	call calcrate.bat !FILE! !RATE! Result
 	ECHO Rate = 0x!Result!>> PWM.ini
 	ECHO: >> PWM.ini
 	ECHO:
EndLocal