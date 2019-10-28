cls
copy /y /b "PWM.asm" "..\..\..\Tools\Audio\XM4SMPS\KC.asm"
cd "..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\..\..\Music\0E\Out\PWM.bin"
Pause