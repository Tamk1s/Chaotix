Intro_Mosqui_FlySFX:
	move.w  #$1E0,$26(a6)
	moveq   #sfx_AAZ_Suction,d0
	bsr.s	PlaySFX
	rts

Intro_Mosqui_StopSFX:
	move.w  #$2080,obPriority_hi(a6)
	addq.w  #4,$24(a6)
	moveq   #sfx_cmd_LoopStop,d0
	bsr.s	PlaySFX
	moveq   #sfx_MetalSonic_Dash,d0	
	bsr.s	PlaySFX
	rts
	
Intro_MetalSonic_Dive:
	move.w  #3,$24(a0)
	moveq   #sfx_Spindash,d0	
	bsr.s	PlaySFX
	rts
	
Intro_MetalSonic_Zoom:
	;!@
	;move.w  #$80,$26(a6)
	move.w  #$0680,$26(a6)
	addq.w  #4,$24(a6)
	moveq   #sfx_SSCourseOut,d0
	bsr.s	PlaySFX
	rts
	
;Intro_MetalSonic_ZoomStop:	
	;subq.w  #1,$26(a6)
	;bne.s   locret
	;addq.w  #4,$24(a6)
	;moveq   #sfx_cmd_LoopStop,d0
	nop
	
PlaySFX:
	jsr     (PlaySound).l
locret:	
	rts