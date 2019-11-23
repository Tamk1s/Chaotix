cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\29\Out\"
copy /y "KC.lst" "..\Assets\Music\29\Out\"
copy /y /b "KC.bin" "..\Assets\Music\29\Out\29 Decision 2nd.bin"
Pause