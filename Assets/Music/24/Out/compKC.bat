cls
copy /y /b "KC.asm" "..\..\..\Tools\Audio\XM4SMPS\"
cd "..\..\..\Tools\Audio\XM4SMPS\"
call Comp2KC.bat
copy /y /b "KC.bin" "..\..\..\Music\24\Out\24 Oriental Legend.bin"
Pause