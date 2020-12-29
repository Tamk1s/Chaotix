@ECHO OFF
REM Calculates the frequency bitrate
REM Inputs:
REM %1 = "Freq Rate override" OR "s". "s" means to get bitrate from file
REM %2 = Wave filename for %1="s".
REM %3 = Variable to store result in
SET F=%1
SET _R=%2
Set _RE=%3

REM Check if rate is "s" constant; if so, fetch sample rate from File param with sox
REM https://stackoverflow.com/a/4497436
IF %_R% EQU "s" (
	FOR /F "tokens=* USEBACKQ" %%A IN (`sox --i -r %F%`) DO (
		SET _R=%%A
	)
)

REM Do some FP math Int((rate/11025 Hz)*2048) to calculate linear sample rate long
Set /a _R=%_R%
call EvalBat.bat Int((%_R%/11025)*2048)
Set Calc=%EVALBAT_RESULT%

REM Calculate decimal result to hexadecimal
SET R=0
Call tohex.bat %Calc% R

REM Pad Result to 8 digits (long)
SET "R=0000000%R%"
SET "R=%R:~-8%"

REM Pop out result
Set "%~3=%R%"
Exit /b 0