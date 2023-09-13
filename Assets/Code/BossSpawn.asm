ObjSE_BossSpawner1_ActJumper		EQU	$008A6C6A
ObjSE_BossSpawner2					EQU	$008A6CCA
Level_SpawnGoal_Resume	EQU	$0089105E
;LoadLevelStuff			EQU	$00881948
;SetupCamera				EQU	$00889358
LoadLevelPalette_Resume	EQU	$008B20CE
Pointa6ToLevel2			EQU	$008B207E
LoadGlobalPalettes32X	EQU	$008818AE
LoadLevelPalette32X_Primary_2	EQU	$00882122
LoadLevelPalette32X_Secondary_2	EQU	$00882162                 

Pal32xP_Levels			EQU	$008821F0
Pal32xS_Levels			EQU	$00882750 
PalPtr_Level			EQU	$002B32B0

;!@ Subtypes:
;$00=AAZ
;$01=BBZ
;$02=MMZ
;$03=AAZ_Mini
BossSpawner:
	tst.b   obSubtype_Hi(a6)
	bne.s   locret

	move.w	#1,(v_actConc_hi).w
	;andi.w	#$00FF,d0
	;cmp.w	(v_actConc_hi).w,d0
	;bne.w	locret
	
	;addq.w	#$01,(v_actConc_hi).w
	move.w  obSubtype_Hi(a6),d0
	add.w	d0,d0
	
	cmpi.w  #5,(v_act_hi).w
	bge.s	@act5
	lea     (zoneTable_TTZ4).l,a0
	bra.s	@exec
@act5:
	lea     (zoneTable_TTZ5).l,a0

@exec:
	lea     (v_screenposx_fg).w,a1
	move.w  (a0,d0.w),d1
	andi.w	#$00FF,d1
	move.w	d1,(v_zone_hi).w
	cmpi.w	#id_AAZ,d1
	bne.s	@skip

	
	bset    #5,$3F(a1)		
@skip:
	;bset    #2,$3E(a1)
	;bset    #1,$3E(a1)
	clr.w  	obSubtype_Hi(a6)	
	move.w  (a0,d0.w),d1
	andi.w	#$FF00,d1
	ror.w	#$08,d1	
	
	cmpi.w	#$01,d1
	beq.s	@special
	;move.b	#sfx_Error,d0
	;jsr		(PlaySound).l
	jsr		(ObjSE_BossSpawner1_ActJumper).l
	bra.s	locret
@special:
	;move.b	#sfx_PixelPlatCollapse,d0
	;jsr		(PlaySound).l
	jsr		(ObjSE_BossSpawner2).l
locret:
	jsr     (DeleteObject).l
	rts
	
zoneTable_TTZ4:
	dc.b	$00,id_AAZ
	dc.b	$00,id_MMZ
	dc.b	$01,id_BBZ
	dc.b	$01,id_AAZ
	
zoneTable_TTZ5:
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	

Level_SpawnGoal_x:
	cmpi.w	#0,(v_actConc_hi).w
	beq.s	@spawnIt	
	
	cmpi.w  #4,(v_act_hi).w ; Current Act (0-6, word)
	bne.s	@b_act5
		
@b_act4:
	move.l	#$3EC00000,(v_limitright1).l
	move.l	#$0F200000,(v_limitbtm1).l
	bra.s	@colors
@b_act5:
	move.l	#$3EC00000,(v_limitright1).l
	move.l	#$0F200000,(v_limitbtm1).l
	
@colors:
	clr.w   ($FFFFC21C).w
	move.w	#id_TTZ,d1
	;jsr     (LoadLevelPalette2).l
	jsr		(LoadGlobalPalettes32X).l
	move.w	#id_TTZ,d0
	lea     (Pal32xP_Levels).l,a0
	jsr		(LoadLevelPalette32X_Primary_2).l
	move.w	#id_TTZ,d0
	lea     (Pal32xS_Levels).l,a0
	jsr		(LoadLevelPalette32X_Secondary_2).l
	
	move.b  #bgm_TTZ,d0 ; Current level Song ID (byte).
	jsr     PlaySound
	move.w	#0,(v_actConc_hi).w
	rts
	
@spawnIt:
	bset    #0,($FFFFC21D).w ; !@ Possibly spawns end-of-level results
	jmp		(Level_SpawnGoal_Resume).l
	rts
	
	
; LoadLevelPalette2:
	; lea     ($FFFFDC60).w,a0
	; moveq   #4,d0

; loc_8B20BC:
	; clr.l   (a0)+
	; dbf     d0,loc_8B20BC
	; lea     (v_pal_buffer2).w,a2

	; lea     (PalPtr_Level).l,a6
	; move.w	d1,d0
	; jsr		(Pointa6ToLevel2).l
	; jmp		(LoadLevelPalette_Resume).l
	; rts