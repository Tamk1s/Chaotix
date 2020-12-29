@echo off
REM Given an input filename param of %1, returns its filesize in varaible %2 ByRef
REM See:
REM https://stackoverflow.com/a/483923
REM https://superuser.com/questions/1359772/return-result-to-caller-batch-file
set size=%~z1
set %2=%size%