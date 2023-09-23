cls
copy /y /b "KC.asm" "..\..\..\..\..\XM4SMPS\"
cd "..\..\..\..\..\XM4SMPS\"
call Comp2KC.bat
copy /y "xm4smps_asm.log" "..\Assets\Music\21\Out\Segapede\"
copy /y "KC.lst" "..\Assets\Music\21\Out\Segapede\"
copy /y /b "KC.bin" "..\Assets\Music\21\Out\Segapede\21 Decision.bin"
Pause