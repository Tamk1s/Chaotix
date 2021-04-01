cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\1C\Out\"
copy /y "KC.lst" "..\Assets\Music\12\Out\"
copy /y /b "KC.bin" "..\Assets\Music\12\Out\12 Surging Power.bin"
Pause