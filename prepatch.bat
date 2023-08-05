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

REM Patch Combi Ring monitor to play new sfx
bytepatch.exe -a 0x14B8C kc.bin 003E

REM Patch Growth sfx in lvlsel roulette
bytepatch.exe -a 0x2833c kc.bin 005D

REM BGScroll deformation byte patch to force AAZ parallax for TTZ Classic!
bytepatch.exe -a 0x8082 kc.bin 0706 0704 0702 0700 06FE 06F6 06FA

REM Patches to remove vflip from Space BG (Right side)
REM SegaScreen
bytepatch.exe -a 0x0350A kc.bin 2D3C 0151 0001
REM Gameover/neg rings 1
REM Gameover/neg rings 2
REM GotThrough 1
REM GotThrough 2


REM MegaSD MSU support!
REM bytepatch.exe -a 0x000B0C kc.bin 4EB9 009E 9500 4E71
REM bytepatch.exe -a 0x000B0C kc.bin 4EB9 009E 9534 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x004DEA kc.bin 4EB9 009E 95FA 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x004E8A kc.bin 4EB9 009E 9610 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x076E96 kc.bin 4EB9 009E 9626 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x2E9500 kc.bin -f "Assets\Code\msu.bin"


REM EndPadding area! (New code)
REM bytepatch.exe -a 0x008F7C kc.bin 4E71 4E71
REM bytepatch.exe -a 0x004C1E kc.bin 4E71 4E71 4E71
REM bytepatch.exe -a 0x004C1A kc.bin 0006
REM bytepatch.exe -a 0x3EFA8 kc.bin 0010

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


REM New BigRing artwork (32x beta from unused Eggman Intro cutscene from 1207 proto)
REM bytepatch.exe -a 0x0127F0 kc.bin 0080
REM bytepatch.exe -a 0x012852 kc.bin 0080
REM bytepatch.exe -a 0x012902 kc.bin -f "Assets\Code\BigRing_Frames.bin"


REM Patches for enhanced Intro

REM Slower Intro zoom in (Overture song sync)
bytepatch.exe -a 0x004BA2 kc.bin 0002

REM Mosqui sfx (flight loop)
bytepatch.exe -a 0x004560 kc.bin 4EF9 008F 769A
bytepatch.exe -a 0x07769A kc.bin -f "Assets\Code\Intro_Mosqui.bin"
bytepatch.exe -a 0x004A1C kc.bin 4EF9 008F 76A6 4E71 4E71
bytepatch.exe -a 0x004ACA kc.bin 4EF9 008F 76BA
bytepatch.exe -a 0x0045EC kc.bin 4EF9 008F 76C6 4E71 4E71
REM bytepatch.exe -a 0x0045D8 kc.bin 4EF9 008F 76D6 4E71 4E71

REM Patch TrainingMenu for new Boss Mode
REM JsrTo new zone LUT
bytepatch.exe -a 0x03E7E4 kc.bin 4EB9 008F 76D8
bytepatch.exe -a 0x03F476 kc.bin 4EB9 008F 7662
bytepatch.exe -a 0x03F490 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x077662 kc.bin -f "Assets\Code\BossMode2.bin"
bytepatch.exe -a 0x03F5C2 kc.bin 0C41 0006
bytepatch.exe -a 0x03E7D0 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x03F7DC kc.bin 4EB9 008F 76B4


REM New AAZ Miniboss artwork
REM Disable AAZ Miniboss handler?
REM bytepatch.exe -a 0x025BBA kc.bin 4E75

REM Replace AAZ Mini boss body with ending
bytepatch.exe -a 0x025C28 kc.bin 0024
bytepatch.exe -a 0x2BE8A6 kc.bin 0000 0000 0000 0081
REM Replace AAZ Mini boss head with ending
bytepatch.exe -a 0x025D5C kc.bin 0024
bytepatch.exe -a 0x2BE8B6 kc.bin 0000 0300 0000 0381 0000 0400 0000 0481 0000 0500 0000 0581

REM SFX patches
bytepatch.exe -a 0x02614E kc.bin 703A
bytepatch.exe -a 0x026362 kc.bin 005B
bytepatch.exe -a 0x026300 kc.bin 0067

REM Head ycoord fixes
REM bytepatch.exe -a 0x025D84 kc.bin 0030
bytepatch.exe -a 0x025D90 kc.bin 003C
bytepatch.exe -a 0x025DF4 kc.bin 4E71 4E71
bytepatch.exe -a 0x025E12 kc.bin 4E71 4E71
bytepatch.exe -a 0x025DC4 kc.bin 0300



REM Pal32x_Debug (LUA)
REM bytepatch.exe -a 0x003158 kc.bin 7000 4E75
REM bytepatch.exe -a 0x013388 kc.bin 4E71 4E71
REM bytepatch.exe -a 0x0136AC kc.bin 4E71 4E71 4E71
REM bytepatch.exe -a 0x0136BA kc.bin 4E71 4E71 4E71
REM bytepatch.exe -a 0x0136C4 kc.bin 4E71 4E71 4E71
REM bytepatch.exe -a 0x01FA8C kc.bin 4E71 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x02AE78 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02CEF4 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02CF38 kc.bin 4E71 4E71
REM bytepatch.exe -a 0x02D61A kc.bin 43F8 D460
REM bytepatch.exe -a 0x02D6F6 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02DC76 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02E0C6 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02E1B0 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02E4B4 kc.bin 43F8 D460
REM bytepatch.exe -a 0x02F850 kc.bin 41F8 D460
REM bytepatch.exe -a 0x031492 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x0314A4 kc.bin 43F8 D460
REM bytepatch.exe -a 0x0320C2 kc.bin 45F8 D460
REM bytepatch.exe -a 0x0320F4 kc.bin 4E71 4E71
REM !@
REM bytepatch.exe -a 0x03E228 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x074370 kc.bin 43F8 D460

REM bytepatch.exe -a 0x00314E kc.bin 4EB9 008F 7680 4E71
REM bytepatch.exe -a 0x0031E6 kc.bin 4EB9 008F 7650 4E71
REM bytepatch.exe -a 0x077650 kc.bin -f "Assets\Code\Pal32x_Debug.bin"


REM Bugfixes for Ring Cap, Bonus Stages
REM Bugfix to hide Bonus Stage ring if <10 seconds left
bytepatch.exe -a 0x0127D2 kc.bin 4EF9 008F 7720 4E71 4E71 4E71 4E71
REM Ring Cap patch (levels)
bytepatch.exe -a 0x02AFDC kc.bin 3038 E008 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 31C0 E008
REM Spikes ring loss timing(BS)
bytepatch.exe -a 0x03DA68 kc.bin 4EB9 008F 76F4 4E71 4E71
REM Ring box ring cap/timing (BS)
bytepatch.exe -a 0x03DAB8 kc.bin 4EB9 008F 76E6 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM Single ring ring cap/timing (BS)
bytepatch.exe -a 0x03DD0A kc.bin 4EB9 008F 76E0 4E71 4E71 4E71 4E71 4E71 4E71								 								 								 
REM Bugfix to kick player out of BS if around 10 seconds of game timer left (prevent 9'59"99 overflow bug)
bytepatch.exe -a 0x03DDF4 kc.bin 4EB9 008F 7708 4E71
bytepatch.exe -a 0x0776E0 kc.bin -f "Assets\Code\BSRing_Fix.bin"