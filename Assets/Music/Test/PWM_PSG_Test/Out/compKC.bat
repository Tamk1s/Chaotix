cls
copy /y /b "KC.asm" "..\..\..\..\..\XM4SMPS\"
cd "..\..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\Test\PWM_PSG_Test\Out\"
copy /y "KC.lst" "..\Assets\Music\Test\PWM_PSG_Test\Out\"
copy /y /b "KC.bin" "..\Assets\Music\Test\PWM_PSG_Test\Out\Soundtest.bin"
Pause