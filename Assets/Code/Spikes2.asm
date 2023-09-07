Resume	EQU	$008A3BE0
loc_8A3C0E	EQU	$008A3C0E

	btst	#7,obSubtype_Hi(a6)
	bne.s   @skip
	bset   	#7,obSubtype_Hi(a6)
	
	move.w	obSubtype_Hi(a6),d0
	andi.w	#$7FFF,d0
	beq.s	@normal
	;!@ move.l  #AP3_AAZ_Ens2,obArt_BankHiA(a6)	
	move.l  #AP3_TTZ_Objs,obArt_BankHiA(a6)		
	bra.s	@prio

@normal:	
	move.l  #AP3_LvlGlbl,obArt_BankHiA(a6)	
	move.w  #$1010,d0
	
@prio:
	move.w  d0,obWidth(a6)
	move.w  #$1080,obPriority_hi(a6)
	jmp		(Resume).l
	
@skip:
	jmp		(loc_8A3C0E).l