cls
copy /Y orig.bin kc.bin
REM Patch BG Deform layer

REM Remove call to func $8B1D0A (AnimArtV)
REM ($884CBA)
REM bytepatch.exe -a 0x4CBA kc.bin 4E71 4E71 4E71

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

REM Patch Large Hourglass monitor to goto new 0x14C48 code (its code got overwritten)
bytepatch.exe -a 0x14B60 kc.bin 6000 00E8
REM New Code bytepatch
bytepatch.exe -a 0x14C48 kc.bin 1D7C 0000 0028 1038 FCEA 0880 0000 0880 0002 11C0 FCEA 4E75


REM Code Patch to change large hourglass monitor to attach combi ring

REM BGScroll deformation byte patch to force AAZ parallax for TTZ Classic!
bytepatch.exe -a 0x8082 kc.bin 0706 0704 0702 0700 06FE 06F6 06FA
REM pause