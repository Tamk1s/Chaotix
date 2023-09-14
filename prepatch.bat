cls
copy /Y orig.bin kc.bin

REM Compile all ASM code files
cd Assets/Code
call cleanup.bat
call cmp.bat
cd ../../
copy /b "kc.bin"+"Assets\Code\PAD.bin" "kc.bin"


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

REM Disable chksum
bytepatch.exe -a 0x0007BE kc.bin 6000

REM Enable official 6-button joypad support in ROM Header periph support
bytepatch.exe -a 0x000191 kc.bin 3620

REM Patch Shield monitor to play sphere get sfx
bytepatch.exe -a 0x101D0 kc.bin 705E

REM Patch Combi Ring monitor to play new sfx
bytepatch.exe -a 0x14B8C kc.bin 003E

REM Patch Growth sfx in lvlsel roulette
bytepatch.exe -a 0x2833c kc.bin 005D

REM Patch out same-char check in CharSel_2P submenu
bytepatch.exe -a 0x032440 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x032462 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x03259A kc.bin 4E71 4E71
REM Patch out same-char check for claw game
REM bytepatch.exe -a 0x0294AA kc.bin 4E71 6008 ; This enables WE Clawgame 32x palette for P1 character


REM Patches to remove vflip from Space BG (Right side)
REM SegaScreen
bytepatch.exe -a 0x0350A kc.bin 2D3C 0151 0001
REM Gameover/neg rings 1
REM Gameover/neg rings 2
REM GotThrough 1
REM GotThrough 2


REM MegaSD MSU support!
REM bytepatch.exe -a 0x0007B0 kc.bin 4EB9 008F 773C 4E71 4E71 4E71
REM bytepatch.exe -a 0x040000 kc.bin -f "Assets\Code\msu-drv.bin"
REM bytepatch.exe -a 0x048000 kc.bin -f "Assets\Code\msuLockout.bin"
REM bytepatch.exe -a 0x076E96 kc.bin 4EB9 008F 7778 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x076EFA kc.bin 4E75 4E71
REM bytepatch.exe -a 0x07773C kc.bin -f "Assets\Code\MSU.bin"

REM EndPadding area! (New code)
REM bytepatch.exe -a 0x008F7C kc.bin 4E71 4E71
REM bytepatch.exe -a 0x004C1E kc.bin 4E71 4E71 4E71
REM bytepatch.exe -a 0x004C1A kc.bin 0006
REM bytepatch.exe -a 0x3EFA8 kc.bin 0010

REM Sega Chant subroutines (at EndPadding of Bank1)
REM Patch Tribute at good ending to play Have a Nice Day instead
REM Jsr to sfx_Jingle_SegaBeta instead of LoadLevelStuff in SegaScreen init
REM New code for LoadLevelStuff/jingle playback
REM Play Claw game for tribute (partial/good endings)
bytepatch.exe -a 0x005DA8 kc.bin 701D
bytepatch.exe -a 0x003446 kc.bin 4EB9 008F 7574
bytepatch.exe -a 0x077574 kc.bin -f "Assets\Code\Sega_Jingle1.bin"

REM Patch jsr ReadControllers in SegaScreen_Vint with jsr to new routine at $077594/$8F7594:
REM New code for PWMIssueRequest for Sega Screen
bytepatch.exe -a 0x0036EC kc.bin 4EB9 008F 7594
bytepatch.exe -a 0x077594 kc.bin -f "Assets\Code\Sega_Jingle2.bin"

REM Custom Loop Chunk object ($00BC/SonED2 $2F)
REM Pointer to new code, new code itself
bytepatch.exe -a 0x011E2E kc.bin 008F 75A6
bytepatch.exe -a 0x0775A6 kc.bin -f "Assets\Code\LoopChunk.bin"

REM Patch Small Hourglass monitor to goto new Combi Breaker code (at $8F75DE)
bytepatch.exe -a 0x14C48 kc.bin 4E71 4E71 4EB9 008F 75DE
bytepatch.exe -a 0x0775DE kc.bin -f "Assets\Code\Monitor_CombiBreaker.bin"




REM Release demo stuff
REM BGScroll deformation byte patch to force AAZ parallax for TTZ Classic!
bytepatch.exe -a 0x8082 kc.bin 0706 0704 0702 0700 06FE 06F6 06FA
REM BGScroll deformation byte patch to force AAZ-like parallax for MMZ!
bytepatch.exe -a 0x8B24 kc.bin 6614
bytepatch.exe -a 0x8B26 kc.bin 4E71 4E71
bytepatch.exe -a 0x8B2A kc.bin 4EF9 0088 87B8 4E71 4E71 4E71 4E71 4E71

REM Code patch to disable AutoDemos
bytepatch.exe -a 0x003DBE kc.bin 6012
bytepatch.exe -a 0x0044F4 kc.bin 6012
REM Attempt to fix Tutorial Zone 8x8 text
bytepatch.exe -a 0x02F62A kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 49F8 E600
REM Patch Special Stage to use Bonus Stage music
bytepatch.exe -a 0x005A30 kc.bin 701A
REM Patch boss songs to use 21 (new TTZ Boss)
bytepatch.exe -a 0x02D66C kc.bin 103C 0029
bytepatch.exe -a 0x02D6E0 kc.bin 103C 0029
bytepatch.exe -a 0x02DC06 kc.bin 103C 0029
bytepatch.exe -a 0x02E0B0 kc.bin 103C 0029
bytepatch.exe -a 0x02E45C kc.bin 103C 0029
REM Patch Decision 2nd with 1st
bytepatch.exe -a 0x027BB8 kc.bin 7021
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
bytepatch.exe -a 0x07769A kc.bin -f "Assets\Code\Intro.bin"
bytepatch.exe -a 0x004A1C kc.bin 4EF9 008F 76A6 4E71 4E71
bytepatch.exe -a 0x004ACA kc.bin 4EF9 008F 76BA
bytepatch.exe -a 0x0045EC kc.bin 4EF9 008F 76C6 4E71 4E71
REM bytepatch.exe -a 0x0045D8 kc.bin 4EF9 008F 76D6 4E71 4E71

REM Patch TrainingMenu for new Boss Mode
REM JsrTo new zone LUT
REM bytepatch.exe -a 0x03E7E4 kc.bin 4EB9 008F 76D8
REM bytepatch.exe -a 0x03F476 kc.bin 4EB9 008F 7662
REM bytepatch.exe -a 0x03F490 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x077662 kc.bin -f "Assets\Code\BossMode2.bin"
REM bytepatch.exe -a 0x03F5C2 kc.bin 0C41 0006
REM bytepatch.exe -a 0x03E7D0 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM bytepatch.exe -a 0x03F7DC kc.bin 4EB9 008F 76B4


REM New AAZ Miniboss artwork
REM Disable AAZ Miniboss handler?
REM bytepatch.exe -a 0x025BBA kc.bin 4E75

REM Replace AAZ Mini boss body with ending
REM bytepatch.exe -a 0x025C28 kc.bin 0024
REM bytepatch.exe -a 0x2BE8A6 kc.bin 0000 0000 0000 0081
REM Replace AAZ Mini boss head with ending
REM bytepatch.exe -a 0x025D5C kc.bin 0024
REM bytepatch.exe -a 0x2BE8B6 kc.bin 0000 0300 0000 0381 0000 0400 0000 0481 0000 0500 0000 0581

REM SFX patches
REM bytepatch.exe -a 0x02614E kc.bin 703A
REM bytepatch.exe -a 0x026362 kc.bin 005B
REM bytepatch.exe -a 0x026300 kc.bin 0067

REM Head ycoord fixes
REM bytepatch.exe -a 0x025D84 kc.bin 0030
REM bytepatch.exe -a 0x025D90 kc.bin 003C
REM bytepatch.exe -a 0x025DF4 kc.bin 4E71 4E71
REM bytepatch.exe -a 0x025E12 kc.bin 4E71 4E71
REM bytepatch.exe -a 0x025DC4 kc.bin 0300



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
REM bytepatch.exe -a 0x0127D2 kc.bin 4EF9 008F 7720 4E71 4E71 4E71 4E71
REM Ring Cap patch (levels)
bytepatch.exe -a 0x02AFDC kc.bin 3038 E008 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 31C0 E008
REM Spikes ring loss timing(BS)
bytepatch.exe -a 0x03DA68 kc.bin 4EF9 008F 76F4 4E71 4E71
REM Ring box ring cap/timing (BS)
bytepatch.exe -a 0x03DAB8 kc.bin 4EB9 008F 76E6 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
REM Single ring ring cap/timing (BS)
bytepatch.exe -a 0x03DD0A kc.bin 4EB9 008F 76E0 4E71 4E71 4E71 4E71 4E71 4E71								 								 								 
REM Bugfix to kick player out of BS if around 10 seconds of game timer left (prevent 9'59"99 overflow bug)
REM bytepatch.exe -a 0x03DDF4 kc.bin 4EB9 008F 7708 4E71
REM Patch Bonus Stage start code to cache level time
bytepatch.exe -a 0x03CCC8 kc.bin 4EB9 008F 7708 4E71 4E71 4E71
REM Patch Bonus Stage Exit code to restore level time
bytepatch.exe -a 0x03E0F2 kc.bin 4EB9 008F 7724 4E71									  
bytepatch.exe -a 0x0776E0 kc.bin -f "Assets\Code\BSRing_Fix.bin"

REM Modify IIZ Grabber for zone-indep/size param
bytepatch.exe -a 0x01AC12 kc.bin 4EF9 008F 773C 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x07773C kc.bin -f "Assets\Code\IIZ_Grabber.bin"


REM Patch Boss cutscene music to use PlaySound instead of _save
REM bytepatch.exe -a 0x02E674 kc.bin 008F 6E76
REM Boss spawn object
REM AAZ Miniboss
bytepatch.exe -a 0x025D04 kc.bin 103C 0002
bytepatch.exe -a 0x02CD86 kc.bin 323C B652
REM BBZ
bytepatch.exe -a 0x02D646 kc.bin 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x00829C kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 0829 0003 003E 6632 0829 0001 003E 672A
REM													 6100 003E
REM															   0829 0003 003E 6632
REM																				   0829 0001 003E 672A
REM SSZ
bytepatch.exe -a 0x0086BE kc.bin 4E71 4E71 4E71 4E71 0829 0003 003E 6632 0829 0001 003E 672A
REM													 0829 0003 003E 6632
REM 																	 0829 0001 003E 672A
REM NOP out AAZ BossSpawn check
REM bytepatch.exe -a 0x008794 kc.bin 4E71 4E71
REM AAZ Boss
bytepatch.exe -a 0x0087EC kc.bin 4E71 4E71 4E71 4E71 0829 0003 003E 6642 0829 0002 003E 673A 0829 0001 003E 6732 08E9 0003 003E 0829 0005 003F 6726
bytepatch.exe -a 0x034CD4 kc.bin 3D7C 1040 0008 3D7C 02A0 000C
bytepatch.exe -a 0x034F40 kc.bin 3D7C 10C0 0008 3D7C 0250 000C
bytepatch.exe -a 0x0350BC kc.bin 0C6E 0250 000C
bytepatch.exe -a 0x03511E kc.bin 0C6E 1130 0008
bytepatch.exe -a 0x035154 kc.bin 0C6E 0228 000C
bytepatch.exe -a 0x035240 kc.bin 0C6E 0208 000C
bytepatch.exe -a 0x035240 kc.bin 0C6E 0208 000C
bytepatch.exe -a 0x0352C2 kc.bin 0C6E 1050 0008
REM TTZ
bytepatch.exe -a 0x00896A kc.bin 4E71 4E71 4E71 4E71 0829 0003 003E 663A 0829 0002 003E 6732 0829 0001 003E 672A
REM MMZ
bytepatch.exe -a 0x008AC8 kc.bin 4E75 4E71
bytepatch.exe -a 0x008C58 kc.bin 4E71 4E71 4E71 4E71 0829 0003 003E 6632 0829 0001 003E 672A
bytepatch.exe -a 0x011058 kc.bin 4EF9 009F 8458
bytepatch.exe -a 0x011E32 kc.bin 009F 83DA
bytepatch.exe -a 0x2F83DA kc.bin -f "Assets\Code\BossSpawn.bin"

REM Spikes extension (invis hurt)
bytepatch.exe -a 0x023BBA kc.bin 4EF9 009F 84E0 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x2F84E0 kc.bin -f "Assets\Code\Spikes2.bin"


REM Balloons extension (new art for TTZ)
bytepatch.exe -a 0x023D32 kc.bin 4EB9 009F 8524 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x023D5C kc.bin 4E71 4E71 4E71
bytepatch.exe -a 0x023E2C kc.bin 4EB9 009F 858A 4E71 4E71
bytepatch.exe -a 0x023E48 kc.bin 4EB9 009F 858A 4E71 4E71
bytepatch.exe -a 0x023D8E kc.bin 4EB9 009F 85AE 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71
bytepatch.exe -a 0x2F8524 kc.bin -f "Assets\Code\Balloons.bin"


REM Custom spritemasker object
bytepatch.exe -a 0x011E36 kc.bin 009F 85DA
bytepatch.exe -a 0x2F85DA kc.bin -f "Assets\Code\BossSpawnEnd.bin" 


REM Survival mode
REM NOP IIZ Zone force
REM SNEEP bytepatch.exe -a 0x004C18 kc.bin 4E71 4E71 4E71
REM NOP Act 0/4 checks
REM SNEEP bytepatch.exe -a 0x008EE8 kc.bin 0C78 0005 6C00 00A8
REM Patch out IIZ checks from act jumper object
REM bytepatch.exe -a 0x026C98 kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 6006

REM Proper concurrent act setup, Force Practice mode from NHZ eject, 
REM bytepatch.exe -a 0x02901C kc.bin 31D8 FDE2
REM bytepatch.exe -a 0x029026 kc.bin 31FC 0058 DFDE

REM Modify Act jumper object to set Practice mode, goto next act
REM SNEEP bytepatch.exe -a 0x026C94 kc.bin 3038 DFF4 31C0 FDE2 4EB9 0088 8F78


