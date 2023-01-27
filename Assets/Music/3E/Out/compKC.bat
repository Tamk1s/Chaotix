cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\3E\Out\"
copy /y "KC.lst" "..\Assets\Music\3E\Out\"
copy /y /b "KC.bin" "..\Assets\Music\3E\Out\3E_Base.bin"

cd "..\Assets\Music\3E\Out\"
copy /y /b 3E_Base.bin + pad.bin 3E.bin
Pause