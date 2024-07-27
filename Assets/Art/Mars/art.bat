cls
xcopy /E /Y /EXCLUDE:exclude.txt %cd% ..\..\..\Art\Mars\
cd ..\..\..\Art\Mars\APB\
call pad.bat
cd Special
call pad.bat