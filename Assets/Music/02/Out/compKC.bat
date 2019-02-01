cls
copy /y /b "KC.asm" "..\..\..\Tools\Audio\XM4SMPS\"
cd "..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\..\..\Music\02\Out\02 Electoria.bin"
Pause