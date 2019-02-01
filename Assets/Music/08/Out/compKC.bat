cls
copy /y /b "KC.asm" "..\..\..\Tools\Audio\XM4SMPS\"
cd "..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\..\..\Music\08\Out\08 Trial And Error.bin"
Pause