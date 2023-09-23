cls
copy /y /b "KC.asm" "..\..\..\..\XM4SMPS\"
cd "..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\69\Out\"
copy /y "KC.lst" "..\Assets\Music\69\Out\"
REM copy /y /b "KC.bin" "..\Assets\Music\69\Out\69_Base.bin"
copy /y /b "KC.bin" "..\Assets\Music\69\Out\69.bin"

REM cd "..\Assets\Music\69\Out\"
REM copy /y /b 69_Base.bin + pad.bin 69.bin
Pause