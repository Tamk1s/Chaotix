cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\14\Out\"
copy /y "KC.lst" "..\Assets\Music\14\Out\"
copy /y /b "KC.bin" "..\Assets\Music\14\Out\14 Tube Panic.bin"
copy /y /b "KC.bin" "..\Assets\Music\14\Out\14 Tube Panic [extra drums].bin"
Pause