cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
copy /y /b "voice.bin" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\0C\Out\"
copy /y "KC.lst" "..\Assets\Music\0C\Out\"
copy /y /b "KC.bin" "..\Assets\Music\0C\Out\0C Moonrise.bin"
Pause