cls
copy /y /b "KC.asm" "..\..\..\..\..\XM4SMPS\"
cd "..\..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\Assets\Music\Test\PWM_PSG_Test\Out\Soundtest.bin"

cd "..\Assets\Music\Test\PWM_PSG_Test\Out\"
copy Soundtest.bin "..\..\..\Preview\Data\Knuckles Maniax\Soundtest.skc"
Pause