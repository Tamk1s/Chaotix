cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\03\Out\"
copy /y "KC.lst" "..\Assets\Music\03\Out\"
copy /y /b "KC.bin" "..\Assets\Music\03\Out\03 Speed of Sound.bin"
Pause