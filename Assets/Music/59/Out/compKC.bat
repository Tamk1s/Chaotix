cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\59\Out\"
copy /y "KC.lst" "..\Assets\Music\59\Out\"
copy /y /b "KC.bin" "..\Assets\Music\59\Out\59_Base.bin"

cd "..\Assets\Music\59\Out\"
copy /y /b 59_Base.bin + pad.bin 59.bin
Pause