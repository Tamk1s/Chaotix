cls
copy /y /b "KC.asm" "..\..\..\Tools\Audio\XM4SMPS\"
cd "..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\..\..\Music\01\Out\"
copy /y "KC.lst" "..\..\..\Music\01\Out\"
copy /y /b "KC.bin" "..\..\..\Music\01\Out\01 Door Into Summer.bin"
Pause