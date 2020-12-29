REM  "EvalBat" is a helper that lets you evaluate (vbscript) expressions in a batch file
REM  "EvalBat" can be used to add floating point support and complex math support to batch files
REM  Copyright (c) 2020 Adisak Pochanayon
REM  Contact: adisak@gmail.com
REM  See EvalBat_License.txt for details

Set objArgs = WScript.Arguments
If objArgs.Count > 1 Then
	allArgs = objArgs(0)
	For i = 1 to (objArgs.Count-1)
		allArgs = allArgs + " " + objArgs(i)
	Next
	wscript.echo eval(allArgs)
ElseIf 1 = objArgs.Count Then
	wscript.echo eval(objArgs(0))
Else
	wscript.echo "0"
End If

