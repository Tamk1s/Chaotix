loc_89AC40	EQU	$0089AC40
	
	;!@ move.b  obSubtype_Hi(a6),d0
	; bne.s   loc_89AC40
	btst	#7,obSubtype_Hi(a6)	;Check if MSB of subtype set (runonce flag set)
	beq.s	@runonce			;If not set, do runonce
	jmp		(loc_89AC40).l		;If set, skip setup
	
	;Runonce setup
@runonce:
	;!@ move.b  #1,obSubtype_Hi(a6)
	bset	#7,obSubtype_Hi(a6)	;Set runonce flag (subtype MSB)
	
	;Check if IIZ zones; if so, hardcode art properties and size to $1010
	cmpi.w  #id_iiz_tut,(v_zone_hi).w
	beq.s	@iiz
	cmpi.w  #id_iiz_intro,(v_zone_hi).w
	beq.s	@iiz
	
	;If NOT IIZ, setup to dummy AAZ Ens2 bank (obliterated transparent art), and set size to subtype
	move.l  #AP3_AAZ_Ens2,obArt_BankHiA(a6)
	move.w	obSubtype_Hi(a6),d0
	andi.w	#$7FFF,d0
	bra.s	@common_config

	;Setup IIZ object (art, $1010 size)
@iiz:
	move.l  #AP3_IIZ_Objs1,obArt_BankHiA(a6)
	move.w	#$1010, d0	;!@
	;Do common config
@common_config:
	move.w  #$900,obArt_Frame_hi(a6)
	move.w  #$8080,obPriority_hi(a6)
	;!@ move.w  #$1010,obWidth(a6)
	move.w  d0,obWidth(a6)
	clr.w   $26(a6)
	clr.l   $2A(a6)
	jmp		(loc_89AC40).l