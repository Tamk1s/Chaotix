cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\05\Out\"
copy /y "KC.lst" "..\Assets\Music\05\Out\"
copy /y /b "KC.bin" "..\Assets\Music\05\Out\05 Midnight Greenhouse.bin"
Pause