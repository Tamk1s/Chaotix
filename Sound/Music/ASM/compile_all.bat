Set Dummy=%1
IF [%Dummy%] == [] GOTO Help

REM Compiles all ASM songs, via comp.bat
REM See HELP label for usage

call comp.bat "01 Door Into Summer" %dummy%
call comp.bat "02 Electoria" %dummy%
call comp.bat "03 Speed Of Sound" %dummy%
call comp.bat "04 Seascape" %dummy%
call comp.bat "05 Midnight Greenhouse" %dummy%
call comp.bat "06 New Moon" %dummy%
call comp.bat "07 Labyrinth" %dummy%
call comp.bat "08 Trial And Error" %dummy%
call comp.bat "09 Walkin" %dummy%
call comp.bat "0A Hyper-Hyper" %dummy%
call comp.bat "0B Evening Star" %dummy%
call comp.bat "0C Moonrise" %dummy%
call comp.bat "0D Overture" %dummy%
call comp.bat "0E This Horizon" %dummy%
call comp.bat "0F Take Off" %dummy%
call comp.bat "10 Combination" %dummy%
call comp.bat "11 Take A Nap" %dummy%
call comp.bat "12 Surging Power" %dummy%
call comp.bat "13 Mechanical Dance" %dummy%
call comp.bat "14 Tube Panic" %dummy%
call comp.bat "15 Crystal Nightmare" %dummy%
call comp.bat "16 Childs Song" %dummy%
call comp.bat "17 Soda Pop" %dummy%
call comp.bat "18 Pendulum" %dummy%
call comp.bat "19 Silver Screen" %dummy%
call comp.bat "1A Tachy Touch" %dummy%
call comp.bat "1B Chaotic World" %dummy%
call comp.bat "1C Surprise" %dummy%
call comp.bat "1D Nice Meeting You" %dummy%
call comp.bat "1E Have A Happy Day" %dummy%
call comp.bat "1F Reach The Goal" %dummy%
call comp.bat "20 High Five" %dummy%
call comp.bat "21 Decision" %dummy%
call comp.bat "22 From Party To Party" %dummy%
call comp.bat "23 Have Some Fun" %dummy%
call comp.bat "24 Oriental Legend" %dummy%
call comp.bat "25 Steel Heart" %dummy%
call comp.bat "26 Tribute" %dummy%
call comp.bat "27 Destructive Power" %dummy%
call comp.bat "28 Just Another Day" %dummy%
call comp.bat "29 Decision 2nd" %dummy%

call comp.bat "2A" %dummy%
call comp.bat "2B" %dummy%
call comp.bat "2C" %dummy%
call comp.bat "2D" %dummy%
call comp.bat "2E" %dummy%
call comp.bat "2F" %dummy%
call comp.bat "30" %dummy%
call comp.bat "31" %dummy%
call comp.bat "32" %dummy%
call comp.bat "33" %dummy%
call comp.bat "34" %dummy%
call comp.bat "35" %dummy%
call comp.bat "36" %dummy%
call comp.bat "37" %dummy%
call comp.bat "38" %dummy%
call comp.bat "39" %dummy%
call comp.bat "3A" %dummy%
call comp.bat "3B" %dummy%
call comp.bat "3C" %dummy%
call comp.bat "3D" %dummy%
call comp.bat "3E" %dummy%
call comp.bat "3F" %dummy%
call comp.bat "40" %dummy%
call comp.bat "41" %dummy%
call comp.bat "42" %dummy%
call comp.bat "43" %dummy%
call comp.bat "44" %dummy%
call comp.bat "45" %dummy%
call comp.bat "46" %dummy%
call comp.bat "47" %dummy%
call comp.bat "48" %dummy%
call comp.bat "49" %dummy%
call comp.bat "4A" %dummy%
call comp.bat "4B" %dummy%
call comp.bat "4C" %dummy%
call comp.bat "4D" %dummy%
call comp.bat "4E" %dummy%
call comp.bat "4F" %dummy%
call comp.bat "50" %dummy%
call comp.bat "51" %dummy%
call comp.bat "52" %dummy%
call comp.bat "53" %dummy%
call comp.bat "54" %dummy%
call comp.bat "55" %dummy%
call comp.bat "56" %dummy%
call comp.bat "57" %dummy%
call comp.bat "58" %dummy%
call comp.bat "59" %dummy%
call comp.bat "5A" %dummy%
call comp.bat "5B" %dummy%
call comp.bat "5C" %dummy%
call comp.bat "5D" %dummy%
call comp.bat "5E" %dummy%
call comp.bat "5F" %dummy%
call comp.bat "60" %dummy%
call comp.bat "61" %dummy%
call comp.bat "62" %dummy%
call comp.bat "63" %dummy%
call comp.bat "64" %dummy%
call comp.bat "65" %dummy%
call comp.bat "66" %dummy%
call comp.bat "67" %dummy%
call comp.bat "68" %dummy%
call comp.bat "69" %dummy%
call comp.bat "6A" %dummy%
call comp.bat "6B" %dummy%
call comp.bat "6C" %dummy%
call comp.bat "6D" %dummy%
call comp.bat "6E" %dummy%
GOTO EOF

HELP:
ECHO ON
ECHO compile_all.bat Dummy
ECHO .
ECHO Dummy = Dummy compile song?
REM Throw error at EOF2
GOTO EOF2

EOF:
	Exit /b
	
EOF2:
	Exit /b 1