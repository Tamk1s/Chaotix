cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\08\Out\"
copy /y "KC.lst" "..\Assets\Music\08\Out\"
copy /y /b "KC.bin" "..\Assets\Music\08\Out\08 Trial And Error.bin"
Pause