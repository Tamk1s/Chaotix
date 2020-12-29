@echo off
REM  "EvalBat" is a helper that lets you evaluate (vbscript) expressions in a batch file
REM  "EvalBat" can be used to add floating point support and complex math support to batch files
REM  Copyright (c) 2020 Adisak Pochanayon
REM  Contact: adisak@gmail.com
REM  See EvalBat_License.txt for details

REM :EvalBat
REM Parameters: (VBS) Expression to evaluate
REM Returns: EVALBAT_RESULT - result of evaluating input expression

REM cscript.exe /nologo "%~p0\EvalBat_vbs.vbs" "%*"
for /f "usebackq" %%t in (`cscript.exe /nologo "%~p0\EvalBat_vbs.vbs" "%*"`) do (
	SET EVALBAT_RESULT=%%t
)
REM echo Result: %EVALBAT_RESULT%
