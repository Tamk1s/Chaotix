ObjSE_BossSpawner1_ActJumper		EQU	$008A6C6A
ObjSE_BossSpawner2					EQU	$008A6CCA
Level_SpawnGoal_Resume	EQU	$0089105E
LoadLevelStuff			EQU	$00881948
SetupCamera				EQU	$00889358
LoadLevelPalette		EQU	$008B20B6


;!@ Subtypes:
;$00=AAZ
;$01=BBZ
;$02=MMZ
;$03=AAZ_Mini
BossSpawner:
	tst.b   obSubtype_Hi(a6)
	bne.w   locret

	move.w  obSubtype_Hi(a6),d0
	;andi.w	#$00FF,d0
	;cmp.w	(v_actConc_hi).w,d0
	;bne.w	locret
	
	;addq.w	#$01,(v_actConc_hi).w
	move.w	#0,(v_actConc_hi).w
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
	jmp		(ObjSE_BossSpawner1_ActJumper).l
@special:
	;move.b	#sfx_PixelPlatCollapse,d0
	;jsr		(PlaySound).l
	jmp		(ObjSE_BossSpawner1_ActJumper).l
locret:
	rts
	
zoneTable_TTZ4:
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	
zoneTable_TTZ5:
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	dc.b	$00,id_MMZ
	

Level_SpawnGoal_x:
	cmpi.w	#0,(v_actConc_hi).w
	beq.s	@spawnIt
	
	move.l	#$3EC00000,(v_limitright1).l
	move.l	#$F2000000,(v_limitbtm1).l
	clr.w   $3E(a1)	
	move.b  #bgm_TTZ,d0 ; Current level Song ID (byte).
	jsr     PlaySound
	;move.w	#id_TTZ,(v_zone_hi).w	
	;jsr		(LoadLevelStuff).l
	;jsr     (LoadLevelPalette).l
	
	;jsr		(SetupCamera).l		
	rts
	
@spawnIt:
	bset    #0,($FFFFC21D).w ; !@ Possibly spawns end-of-level results
	jmp		(Level_SpawnGoal_Resume).l
	rts
	
	