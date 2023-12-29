REM Generates a release (Demo binary, patch)

cls
REM Setup some folder/filename vars
SET FOLDERNAME="Demo"
SET ROMNAME="Knuckles_Clackers_v02d"
SET ARCHNAME="KCl_02d_Demo"
REM Delete archive files, folders, create new dirs
del /q releases\%ARCHNAME%.7z
del /q releases\%ARCHNAME%Patch.7z
rmdir /q /s releases\%FOLDERNAME%\
rmdir /q /s releases\%FOLDERNAME%Patch\
mkdir releases\%FOLDERNAME%\
mkdir releases\%FOLDERNAME%Patch\

REM Copies over Readme into both release folders
copy /y releases\Readme.txt releases\%FOLDERNAME%\
copy /y releases\Readme.txt releases\%FOLDERNAME%Patch\

REM Copies over hack binary into folder
copy /y inject.bin releases\%FOLDERNAME%\%ROMNAME%.bin

REM Generates patch between final Chaotix ROM and hack
call releases\floating\flips.exe --create --ips orig.bin inject.bin %ROMNAME%.ips
copy /y %ROMNAME%.ips releases\%FOLDERNAME%Patch\
del /q %ROMNAME%.ips

REM 7zip compresses both folders, ultra comp, delete folders
cd releases\
7z a -mx9 -sdel %ARCHNAME%.7z %FOLDERNAME%\*.*
7z a -mx9 -sdel %ARCHNAME%Patch.7z %FOLDERNAME%Patch\*.*
rmdir /q /s %FOLDERNAME%\
rmdir /q /s %FOLDERNAME%Patch\
cd ..\..\