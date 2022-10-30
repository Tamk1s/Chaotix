id_Act0	EQU	$0000					;Act0 id
id_Act2	EQU	$0002					;Act2 id
id_Act5	EQU	$0005					;Act5 id
id_SpcSlot	EQU	$0005				;Special save slot ID (for World Entrance/NHZ stuff)
	
	move.w  (v_SaveFile_ID).w,d0	;Move saveFileID into d0
	add.w   d0,d0					;Double it
	add.w   d0,d0					;Again
	move.l  dword_data(pc,d0.w),d0	;Get Zone data from offset	
	move.l  d0,(v_zone_hi).w 		;move d0 into zone data	(random TOD)
	
	cmpi.w	#id_SpcSlot, (v_SaveFile_ID).w	;Is save slot special?
	blt.s	locSkip							;Less than, skip
	
	;Special save slots (5/6 for Metal Sonic (KAI) bosses)
	move.l  #$06060606,d0					;Save game progress to complete
	move.w	#id_tod_m, (v_tod_hi).w			;Set morning TOD
	bra.s	locSkip2						;Jump
	
;Normal slots
locSkip:
	move.l  #$05050505,d0					;Set game progress to last act of all zones
locSkip2:	
	move.l  d0,(v_gameProg1).w				;Update game progress
	move.w  d0,(v_gameProg3).w
	rts

;Zone LUT
dword_data:
	dc.w id_bbz, id_Act5					;Slot 0 = BBZ5
	dc.w id_ssz, id_Act5					;Slot 1 = SSZ5
	dc.w id_aaz, id_Act5					;Slot 2 = AAZ5
	dc.w id_ttz, id_Act5					;Slot 3 = TTZ5
	dc.w id_mmz, id_Act5					;Slot 4 = MMZ5
	;Special slots
	dc.w id_we, id_Act0						;Slot 5 = WE0 (Metal Sonic boss, all zones complete)
	dc.w id_we, id_Act2						;Slot 6 = WE2 (Metal Sonic Kai)
	

;Additional code jump block
MapFix:
	add.w   d0,d0							;Attempt fixing tilemappings
	move.l  dword_8BF7A0_fixed(pc,d0.w),d0	;Fixed version of dword_8BF7A0; extended to 7 save slots
	rts

dword_8BF7A0_fixed:
	dc.l $41800003
	dc.l $48800003
	dc.l $4F800003
	dc.l $56800003
	dc.l $56F00003
	dc.l $57600003
	dc.l $57D00003

	
;Additional code jump block
InitSlotsEx:
	;Initialize new save slots 3-6
	moveq   #3,d1
	jsr   	(TrainingMenu_InitSlot).l

	moveq   #4,d1
	jsr   	(TrainingMenu_InitSlot).l
	
	moveq   #5,d1
	jsr   	(TrainingMenu_InitSlot).l
	
	moveq   #6,d1
	jsr   	(TrainingMenu_InitSlot).l
	rts