cls
copy /y /b "KC.asm" "..\..\..\..\Tools\Audio\XM4SMPS\"
cd "..\..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\..\..\Music\Test\PWM_PSG_Test\Out\Soundtest.bin"

cd "..\..\..\Music\Test\PWM_PSG_Test\Out\"
copy Soundtest.bin "..\..\..\Preview\Data\Knuckles Maniax\Soundtest.skc"
Pause