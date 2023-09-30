Level_SpawnGoal_Resume	EQU	$0089105E
Level_SpawnGoal_x2		EQU	$009F845E
PossiblyInitiateCall	EQU	$0088FF5A
DeleteObject2			EQU	$008B188A

loc_8F6EA6				EQU	$008F6EA6
loc_8F6E96				EQU	$008F6E96
sfx_First				EQU	$3B
bgm_EGZ1				EQU	bgm_TTZ_Boss
bgm_EGZ2				EQU	bgm_TTZ_Boss
bgm_TTZB				EQU	bgm_WE_Roulette_Decision2nd

loc_89A5A4				EQU	$0089A5A4
loc_89A568				EQU	$0089A568

	move.b	obSubType_lo(a6),d0
	bne.s	@end
@reset:	
	clr.w	($FFFFC21C).w			;!@ NEW
	move.w	#0,(v_actConc_hi).w
	move.w	#id_TTZ,(v_zone_hi).w	;!@ NEW
	jsr		(Level_SpawnGoal_x2).l
	bra.s	@locret
@end:
	clr.w	($FFFFC21C).w
	move.w	#id_TTZ,(v_zone_hi).w
	;bset    #0,($FFFFC21D).w
	;jsr	(Level_SpawnGoal_Resume).l
@locret:
	jmp     (DeleteObject2).l
	rts	

CallPartner:	
	;!@
	;movea.w (v_player1_T2Ptr).w,a0
	;movea.w (v_player2_T2Ptr).w,a1
	;jsr     PossiblyInitiateCall
	nop
	nop	
	nop
	nop	
	nop
	nop
	nop
	rts
	
PlaySound_SFX:
	sub.b	#sfx_Bomb,d0
	add.b	#sfx_First,d0
	jmp		(PlaySound).l	
	
PlayLevelSong_X:
	moveq   #0,d0
	move.w  (v_zone_hi).w,d0
	muls.w	#$1C,d0
	moveq   #0,d1
	move.w  (v_act_hi).w,d1
	muls.w	#$04,d1
	add.w	d1,d0
	moveq   #id_tod_n,d1
	and.w   (v_tod_hi).w,d1
	lsr.w	#1,d1
	add.w	d1,d0
	move.b  LevelPlaylist_X(pc,d0.w),d0
	jmp		(PlaySound_Save).l

LevelPlaylist_X:
	;BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	dc.b	bgm_BBZ, bgm_BBZ, bgm_BBZ, bgm_BBZ
	
	;SSZ
	dc.b	bgm_SSZ, bgm_SSZ, bgm_SSZ, bgm_SSZ
	dc.b	bgm_SSZ, bgm_SSZ, bgm_SSZ, bgm_SSZ
	dc.b	bgm_SSZ, bgm_SSZ, bgm_SSZ, bgm_SSZ
	dc.b	bgm_SSZ, bgm_SSZ, bgm_SSZ, bgm_SSZ
	dc.b	bgm_SSZ, bgm_SSZ, bgm_SSZ, bgm_SSZ
	dc.b	bgm_SSZ, bgm_SSZ, bgm_SSZ, bgm_SSZ
	dc.b	bgm_SSZ_Boss, bgm_SSZ_Boss, bgm_SSZ_Boss, bgm_SSZ_Boss	;!@
	
	;AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	dc.b	bgm_AAZ, bgm_AAZ, bgm_AAZ, bgm_AAZ
	
	;TTZ
	dc.b	bgm_TTZ, bgm_TTZ, bgm_TTZ, bgm_TTZ
	dc.b	bgm_TTZ, bgm_TTZ, bgm_TTZ, bgm_TTZ
	dc.b	bgm_TTZ, bgm_TTZ, bgm_TTZ, bgm_TTZ
	dc.b	bgm_TTZ, bgm_TTZ, bgm_TTZ, bgm_TTZ
	dc.b	bgm_EGZ1, bgm_EGZ1, bgm_EGZ1, bgm_EGZ1	;!@
	dc.b	bgm_EGZ2, bgm_EGZ2, bgm_EGZ2, bgm_EGZ2	;!@
	dc.b	bgm_TTZB, bgm_TTZB, bgm_TTZB, bgm_TTZB	;!@
	
	;MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	dc.b	bgm_MMZ, bgm_MMZ, bgm_MMZ, bgm_MMZ
	
	;IIZ Tut
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	
	;IIZ Intro
	dc.b	bgm_IIZ_Intro, bgm_IIZ_Intro, bgm_IIZ_Intro, bgm_IIZ_Intro	;!@
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_IIZ, bgm_IIZ, bgm_IIZ, bgm_IIZ
	dc.b	bgm_Practice, bgm_Practice, bgm_Practice, bgm_Practice	;!@
	dc.b	bgm_Practice, bgm_Practice, bgm_Practice, bgm_Practice	;!@
	
	;WE
	dc.b	bgm_WE_M, bgm_WE_D, bgm_WE_S, bgm_WE_N	;!@
	dc.b	bgm_WE_Roulette, bgm_WE_Roulette, bgm_WE_Roulette, bgm_WE_Roulette		;!@
	dc.b	bgm_WE_BossFinal, bgm_WE_BossFinal, bgm_WE_BossFinal, bgm_WE_BossFinal	;!@
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus								;!@
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special						;!@
	dc.b	sfx_cmd_Stop, sfx_cmd_Stop, sfx_cmd_Stop, sfx_cmd_Stop					;!@
	dc.b	sfx_cmd_Stop, sfx_cmd_Stop, sfx_cmd_Stop, sfx_cmd_Stop					;!@
	
	;Not used
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	dc.b	bgm_Null, bgm_Null, bgm_Null, bgm_Null
	
	;BS
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	dc.b	bgm_Bonus, bgm_Bonus, bgm_Bonus, bgm_Bonus
	
	;SS
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	dc.b	bgm_Special, bgm_Special, bgm_Special, bgm_Special
	
Obj_IIZ_PlatGuy_MoveColsn:
	add.w   d4,d4
	move.b	obSubType_lo(a6),d0
	bne.s	PlatB
	jmp     loc_PlatA(pc,d4.w)
PlatB:
	jmp     loc_PlatB(pc,d4.w)
	
loc_PlatA:
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   onHit
	bra.w   onHit
	bra.w   Display
	bra.w   Display
	
loc_PlatB:
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   Display
	bra.w   Display
	
Display:
	jmp		(loc_89A5A4).l
onHit:
	jmp		(loc_89A568).l