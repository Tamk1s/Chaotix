REM Compiles hex data to PWMTable blob: https://stackoverflow.com/a/47826309
@ECHO OFF
ECHO PWM Table created! Compile temp file of data to binary hex file...
certutil -f -decodehex "PWMTable.txt" "PWMTable.bin " >>nul
del /Q "PWMTable.txt"
ECHO PWM Table finished!