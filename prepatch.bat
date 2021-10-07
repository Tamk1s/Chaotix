cls
copy /Y orig.bin kc.bin

REM Compile all ASM code files
cd Assets/Code
call cleanup.bat
call cmp.bat
cd ../../


REM EXPERIMENTS

REM Patch out jumps to various routines, to remove DLE for SSZ Pal cycles
REM !@ Too many patches, remove ones to re-enable BBZ pal cycle
REM bytepatch.exe -a 0x0091DC kc.bin 4E75
REM bytepatch.exe -a 0x02A458 kc.bin 4E75
REM bytepatch.exe -a 0x02D6D4 kc.bin 4E75
REM bytepatch.exe -a 0x02E0A0 kc.bin 4E75
REM bytepatch.exe -a 0x031078 kc.bin 4E75
REM bytepatch.exe -a 0x03109A kc.bin 4E75
REM bytepatch.exe -a 0x0310A4 kc.bin 4E75
REM bytepatch.exe -a 0x03112C kc.bin 4E75
REM bytepatch.exe -a 0x031146 kc.bin 4E75
REM bytepatch.exe -a 0x0311DC kc.bin 4E75
REM bytepatch.exe -a 0x0312AC kc.bin 4E75
REM bytepatch.exe -a 0x031346 kc.bin 4E75
REM bytepatch.exe -a 0x03136C kc.bin 4E75
REM bytepatch.exe -a 0x03138C kc.bin 4E75
REM bytepatch.exe -a 0x0313C8 kc.bin 4E75

REM bytepatch.exe -a 0x03141A kc.bin 4E75
REM bytepatch.exe -a 0x03143E kc.bin 4E75
REM bytepatch.exe -a 0x0314EE kc.bin 4E75
REM bytepatch.exe -a 0x0341CC kc.bin 4E75
REM bytepatch.exe -a 0x07565E kc.bin 4E75

REM bytepatch.exe -a 0x0091C6 kc.bin 4E75

REM NOP out SSZ BG DLEs
REM bytepatch.exe -a 0x0083E2 kc.bin 4E75 4E75 4E75

REM bytepatch.exe -a 0x0322B8 kc.bin 7E08
REM bytepatch.exe -a 0x03245D kc.bin 0C41 0008
REM bytepatch.exe -a 0x032472 kc.bin 0C41 0008
REM bytepatch.exe -a 0x03258A kc.bin 7E08
REM bytepatch.exe -a 0x032596 kc.bin 7008

REM bytepatch.exe -a 0x0323F2 kc.bin 0014 0018 0014 0018 0014 0018 0014

REM bytepatch.exe -a 0x013010 kc.bin 4E75
REM bytepatch.exe -a 0x0134CA kc.bin 4E75
REM bytepatch.exe -a 0x002EF8 kc.bin 4E75 4E75
REM bytepatch.exe -a 0x02AE5E kc.bin 4E75
REM bytepatch.exe -a 0x02B7B0 kc.bin 4E75
REM bytepatch.exe -a 0x02CD44 kc.bin 4E75
REM bytepatch.exe -a 0x02CEEE kc.bin 4E75
REM bytepatch.exe -a 0x02FAE2 kc.bin 4E75
REM bytepatch.exe -a 0x02AB9C kc.bin 4E75
REM bytepatch.exe -a 0x031026 kc.bin 4E75
REM bytepatch.exe -a 0x074334 kc.bin 4E75
REM bytepatch.exe -a 0x076F80 kc.bin 4E75
REM bytepatch.exe -a 0x031D0A kc.bin 4E75


REM Spawned Object killer
REM Palette Cycler
REM bytepatch.exe -a 0x02ABA0 kc.bin 4E75 4E75

REM NOP out LUT for other level-specific stuff, such as AAZ clock radar etc.
REM bytepatch.exe -a 0x007FB2 kc.bin 4E75

REM NOP Out lighting for AAZ on button press
REM bytepatch.exe -a 0x03147C kc.bin 4E75


REM HACK PATCHES

REM Enable official 6-button joypad support in ROM Header periph support
bytepatch.exe -a 0x000191 kc.bin 3620

REM Patch Shield monitor to play sphere get sfx
bytepatch.exe -a 0x101D0 kc.bin 705E

REM BGScroll deformation byte patch to force AAZ parallax for TTZ Classic!
bytepatch.exe -a 0x8082 kc.bin 0706 0704 0702 0700 06FE 06F6 06FA

REM Patches to remove vflip from Space BG (Right side)
REM SegaScreen
bytepatch.exe -a 0x0350A kc.bin 2D3C 0151 0001
REM Gameover/neg rings 1
REM Gameover/neg rings 2
REM GotThrough 1
REM GotThrough 2


REM EndPadding area! (New code)

REM Sega Chant subroutines (at EndPadding of Bank1)
REM Patch Tribute at good ending to play Decision instead
REM Jsr to sfx_Jingle_SegaBeta instead of LoadLevelStuff in SegaScreen init
REM New code for LoadLevelStuff/jingle playback
bytepatch.exe -a 0x005DA8 kc.bin 7021
bytepatch.exe -a 0x003446 kc.bin 4EB9 008F 7574
bytepatch.exe -a 0x077574 kc.bin -f "Assets\Code\Sega_Jingle1.bin"

REM Patch jsr ReadControllers in SegaScreen_Vint with jsr to new routine at $077594/$8F7594:
REM New code for PWM issues request for Sega Screen
bytepatch.exe -a 0x0036EC kc.bin 4EB9 008F 7594
bytepatch.exe -a 0x077594 kc.bin -f "Assets\Code\Sega_Jingle2.bin"

REM Custom Loop Chunk object ($00BC/SonED2 $2F)
REM Pointer to new code, new code itself
bytepatch.exe -a 0x011E2E kc.bin 008F 75A6
bytepatch.exe -a 0x0775A6 kc.bin -f "Assets\Code\LoopChunk.bin"

REM Patch Small Hourglass monitor to goto new Combi Breaker code (at $8F75DE)
bytepatch.exe -a 0x14C48 kc.bin 4E71 4E71 4EB9 008F 75DE
bytepatch.exe -a 0x0775DE kc.bin -f "Assets\Code\Monitor_CombiBreaker.bin"

REM Code patches to undo normal game progress for Demo
bytepatch.exe -a 0x010F28 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x03E510 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x03EEC6 kc.bin 4E71 4E71
bytepatch.exe -a 0x03EF6C kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x076FB8 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM Patch v_gameProg increment code to new code from RAW $10F86 (ROM $890F86) to RAW $77600 (ROM $8F7600)
REM 4EB9 008F 7600
REM 5241 41F8 DFFE 1181 0000 3238 E010 3001 0280 0000 0FFF E959 0241 000F C2FC 0F00 D081 D1B8 E016
bytepatch.exe -a 0x010F86 kc.bin 4EB9 008F 7600 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x077600 kc.bin -f "Assets\Code\DemoPatch2.bin"