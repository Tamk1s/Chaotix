MCMD_Play2		EQU		(MCMD_Play<<$08)
MCMD_PlayLoop2	EQU		(MCMD_PlayLoop<<$08)
MCMD_Pause2		EQU 	(MCMD_Pause<<$08)
MCMD_Resume2	EQU		(MCMD_Resume<<$08)
MCMD_Vol2		EQU		(MCMD_Vol<<$08)

MSUINIT:
	jsr		($880D2C).l
	move    #msr_supervisor,sr
	
	btst	#$6,(z80_version_lo).l		; Check for PAL or NTSC, 0=60Hz, 1=50Hz
	bne.s	jmpLockout		            ; if !=0, branch to lockout

    jsr     MSUMD_DRV
    tst.b 	d0							; if 0: no CD Hardware found
	bne.s	jmpLockout				    ; if no, branch to lockout
	;beq.s	jmpLockout				    ; if no, branch to lockout <- Fix for being able to play on GENS
	move.w 	#(MCMD_Vol2|$FF),MCD_CMD	; Set CD Volume to MAX
	addq.b 	#1,MCD_CMD_CK 				; Increment command clock
	rts									; !@ Good to go!

jmpLockout:
	jmp     msuLockout
	
	
loc_8F6EA6_x:
	cmpi.b	#$00, d0
	beq.s	msuStop
	jsr		msuPlay

	move.b	#$00, d0
	tst.b   (a0)+
	beq.s   loc_8F6EB2_x
	tst.b   (a0)+
	beq.s   loc_8F6EB2_x
	tst.b   (a0)+
	bne.s   jmpto_loc_8F6EB4
loc_8F6EB2_x:
	move.b  d0,-(a0)	
jmpto_loc_8F6EB4:
	jmp		$8F6EB4
	rts
	
	
msuStop:
    tst.b   MCD_STAT
    bne.s   msuStop
    move.w  #(MCMD_Pause2|40),MCD_CMD         ; send cmd: pause track
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts

msuResume:
    tst.b   MCD_STAT
    bne.s   msuResume 
    move.w  #MCMD_Resume2,MCD_CMD            ; send cmd: resume track
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
	
msuPlay:
	move.w	d0, d1
	add.w   d1,d1
	move.w  playbackTbl(pc,d1.w),d1
	
msuPlay_Wait:
	tst.b   MCD_STAT
    bne.s   msuPlay_Wait
    or.w	d0, d1
	move.w  d1,MCD_CMD          		; send cmd
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
	
playbackTbl:	
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_Play2
	dc.w	MCMD_Play2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_Play2
	dc.w	MCMD_Play2
	;!@ dc.w	MCMD_PlayLoop
	dc.w	MCMD_Play2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_Play2
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	;!@ dc.w	MCMD_Play
	dc.w	MCMD_PlayLoop2
	dc.w	MCMD_PlayLoop2
	;!@ dc.w	MCMD_Play
	dc.w	MCMD_PlayLoop2		
	
	
loc_884DE2_x:
	move.b  #1,($A01C10).l
	move.w  #RQ_End,(z80_bus_request).l
	bsr.w	msuStop
	rts
	
loc_884E8A_x:
	move.b  #$80,($A01C10).l
	move.w  #RQ_End,(z80_bus_request).l
	bsr.w	msuResume
	rts


loc_8F6E96_x:
	cmp.b	#$F0, d0
	blt.s	cont
	bsr.w	msuStop
cont:
	move.b  #$80,($A0003F).l
	move.b  d0,(a0)+
	move.b  d0,(a0)+
	move.b  d0,(a0)
	bra.w	jmpto_loc_8F6EB4


	; Addr $9E95FA or so
msuLockout:
	incbin		"msuLockout.bin"
	
	; Addr $9F15FA
MSUMD_DRV:
	incbin		"msu-drv.bin"