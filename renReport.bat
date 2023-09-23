SET INFILE=%1
del /q %INFILE%
ren Report.txt %INFILE%
del /q Report.txt