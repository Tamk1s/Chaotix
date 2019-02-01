cls
copy /y /b "KC.asm" "..\..\..\Tools\Audio\XM4SMPS\"
cd "..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\..\..\Music\14\Out\14 Tube Panic.bin"
copy /y /b "KC.bin" "..\..\..\Music\14\Out\14 Tube Panic [extra drums].bin"
Pause