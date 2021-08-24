cls
copy /Y orig.bin kc.bin

REM Change Sega GM to Title
REM bytepatch.exe -a 0x003270 kc.bin 31FC 0008 DFDE 4E71


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


REM pause
REM Old Patch for CharSel menu to re-enable beta Heavy/Bomb support. Now integrated into InOpts
REM More Menu GFX
REM bytepatch.exe -a 0x0322B8 kc.bin 7E06
REM bytepatch.exe -a 0x03258A kc.bin 7E06
REM bytepatch.exe -a 0x032596 kc.bin 7006
REM MenuNav extension
REM bytepatch.exe -a 0x03245A kc.bin 0C41 0006
REM bytepatch.exe -a 0x032472 kc.bin 0C41 0006
REM bytepatch.exe -a 0x032478 kc.bin 7205






REM HACK PATCHES

REM Enable official 6-button joypad support in ROM Header periph support
bytepatch.exe -a 0x000191 kc.bin 3620

REM Code Patch to change small hourglass monitor to detach combi ring,
REM Point Large hourglass to same code.
REM Overwrites both large and small hourglass code
REM ROM addr = $814C48 = $14C48

REM Old Code
REM ROM:00894C48 loc_894C48:
REM ROM:00894C48                 move.b  #$2E,d0 ; '.'
REM ROM:00894C4C                 jsr     PlaySound
REM ROM:00894C52                 rts
REM ROM:00894C54
REM ROM:00894C54 loc_894C54:
REM ROM:00894C54                 move.b  #$2E,d0 ; '.'
REM ROM:00894C58                 jsr     PlaySound
REM ROM:00894C5E                 rts

REM Old Code bytecode
REM 103C 002E 4EB9 008F 6E76 4E75 103C 002E
REM 4EB9 008F 6E76 4E75

REM New Code
REM move.b  #0,$28(a6)			;Reset routine counter (respawns monitor)
REM move.b  ($FFFFFCEA).w,d0	;Move combi ring state into d0
REM bclr	#0, d0				;Clear bits for $05 (0th bit)
REM bclr	#2, d0				;Clear bits for $05 (2nd bit)
REM move.b	d0,($FFFFFCEA).w	;Restore d0 back into combi ring state
REM rts

REM Patch Shield monitor to play sphere get sfx
bytepatch.exe -a 0x101D0 kc.bin 705E

REM Patch Large Hourglass monitor to goto new 0x14C48 code (its code got overwritten)
bytepatch.exe -a 0x14B60 kc.bin 6000 00E8
REM New Code bytepatch
bytepatch.exe -a 0x14C48 kc.bin 1D7C 0000 0028 1038 FCEA 0880 0000 0880 0002 11C0 FCEA 4E75

REM BGScroll deformation byte patch to force AAZ parallax for TTZ Classic!
bytepatch.exe -a 0x8082 kc.bin 0706 0704 0702 0700 06FE 06F6 06FA



REM EndPadding area! (New code)

REM Sega Chant subroutine (at EndPadding of Bank1)

REM Patch Tribute at good ending to play Decision instead
REM Jsr to sfx_Jingle_SegaBeta instead of LoadLevelStuff in SegaScreen init
REM Opcodes for sfx_Jingle_SegaBeta playback

REM sfx_Jingle_SegaBeta: equ $26            ; !@ Unused Beta Sega Jingle. Converted to BGM in slot $26, slot $6B is now free/unused
REM		dc.w	$4EB9						;jsr	LoadLevelStuff
REM		dc.w	$008F
REM		dc.w	$7574
REM		moveq   #sfx_Jingle_SegaBeta,d0
REM		dc.w	$4EB9						;jsr	PlaySound
REM		dc.w	$008F
REM		dc.w	$6E76
REM		rts	

bytepatch.exe -a 0x005DA8 kc.bin 7021
bytepatch.exe -a 0x003446 kc.bin 4EB9 008F 7574	
bytepatch.exe -a 0x077574 kc.bin 4EB9 0088 1948 7026 4EB9 008F 6E76 4E75

REM Patch jsr ReadControllers in SegaScreen_Vint with jsr to new routine at $077584/$8F7584:
REM This routine reads joypads, also issues PWM requests (to trigger Sega chant appropriately)
REM SegaPWM:
REM	dc.w	$4EB9		;jsr ReadController
REM	dc.w	$008F
REM	dc.w	$454A
REM addq.w  #1,($FFFFE004).w	;This enables PWM access
REM dc.w	$4EB9		;jsr IssuePwmRequests
REM dc.w	$008F
REM dc.w	$6EFA
REM	rts
bytepatch.exe -a 0x0036EC kc.bin 4EB9 008F 7584
bytepatch.exe -a 0x077584 kc.bin 4EB9 008F 454A 5278 E004 4EB9 008F 6EFA 4E75



REM Patches to remove vflip from Space BG (Right side)

REM SegaScreen
bytepatch.exe -a 0x0350A kc.bin 2D3C 0151 0001
REM Gameover/neg rings 1
REM Gameover/neg rings 2
REM GotThrough 1
REM GotThrough 2


REM Loop Chunk experiemnt (spike modification)


REM Change SST $22
REM bytepatch.exe -a 0x023BC0 kc.bin 1D7C 6010 0022

REM Change art bank to $00
REM bytepatch.exe -a 0x023BCA kc.bin 0011
REM Change art frames to $11 (Red ball, overriden to loop chunk art)
REM bytepatch.exe -a 0x023C82 kc.bin 1100 1100 1100 1100
REM Enable high 32x sprite prio
REM bytepatch.exe -a 0x023BD0 kc.bin 1080
REM Enable spritemasking ability
REM bytepatch.exe -a 0x023BD4 kc.bin 1D7C 0003 0012 1D7C 005F 0013
REM Disable physical collision
REM bytepatch.exe -a 0x023C0E kc.bin 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 4E71 
REM Disable pain response
REM bytepatch.exe -a 0x023C9B kc.bin 7000					


REM Change Artbank to $11 (Global)
REM bytepatch.exe -a 0x01D2D2 kc.bin 3D7C 0011 0010
REM bytepatch.exe -a 0x01D2D8 kc.bin 1D7C 0011 0012 1D7C 0011 0013
REM bytepatch.exe -a 0x01D2E4 kc.bin 3D7C 0011 0020

REM Disable weird object
REM bytepatch.exe -a 0x11E82 kc.bin  0089 4786 