cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\5F\Out\"
copy /y "KC.lst" "..\Assets\Music\5F\Out\"
copy /y /b "KC.bin" "..\Assets\Music\5F\Out\5F_Base.bin"

cd "..\Assets\Music\5F\Out\"
copy /y /b 5F_Base.bin + pad.bin 5F.bin
Pause