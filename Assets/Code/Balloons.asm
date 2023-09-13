dword_9D984A	EQU	$009D984A
Randomizer		EQU	$008905FA

Obj_SSZ_Balloons2:
	move.b  obSubtype_Lo(a6),d0
	bne.s	@ttz_variant1
	
@norm_variant:
	move.l  #dword_9D984A,obArt_BankHiA(a6)
	move.b  #1,obArt_BankHiA(a6)
	move.w  #$6000,obArt_Frame_hi(a6)
	move.w  #$8080,obPriority_hi(a6)
	move.w  #$180C,obWidth(a6)
	bra.s	@end
	
@ttz_variant1:
	cmpi.b	#$01,d0
	bne.s	@ttz_variant2
	move.l  #AP3_TTZ_Ens,obArt_BankHiA(a6)	
	move.w  #$1700,obArt_Frame_hi(a6)
	move.w  #$8080,obPriority_hi(a6)
	move.w  #$1010,obWidth(a6)	
	bra.s	@end
	
@ttz_variant2:
	move.l  #AP3_TTZ_Ens,obArt_BankHiA(a6)	
	move.w  #$1800,obArt_Frame_hi(a6)
	move.w  #$8080,obPriority_hi(a6)
	move.w  #$1810,obWidth(a6)	
	
@end:
	rts
	
BalloonSFX:
	move.b  obSubtype_Lo(a6),d0
	bne.s	@ttz_variants_sfx
	move.b  #sfx_Balloon,d0 ; SSZ Balloon noise, various other uses
	jsr     PlaySound
	
@ttz_variants_sfx:
	move.b  #sfx_Bumper,d0 ; SSZ Balloon noise, various other uses
	jsr     PlaySound
	addi.l  #pts_10,(v_score_tatime).w ; 10 Pts
	rts
	
BalloonVelocity:
	move.b  obSubtype_Lo(a6),d0
	bne.s	@ttz_velo
@ssz_velo
	;!@ addq.b  #1,obSubtype_Lo(a6) ; object subtype (lower byte of word, S1)
	;cmpi.b  #$3C,obSubtype_Lo(a6) ; '<' ; object subtype (lower byte of word, S1)
	addq.b  #1,obAngle_hi(a6) ; object subtype (lower byte of word, S1)
	cmpi.b  #$3C,obAngle_hi(a6) ; '<' ; object subtype (lower byte of word, S1)
	;!@ bne.s   loc_8A3DB6
	bne.s   @ttz_velo
	;clr.b   obSubtype_Lo(a6) ; object subtype (lower byte of word, S1)
	jsr     Randomizer
	ext.l   d0
	move.l  d0,obVelX_hi(a6) ; x-axis velocity (long/upper word, hi byte)
	jsr     Randomizer
	ext.l   d0
	move.l  d0,obVelY_hi(a6) ; y-axis velocity (long/upper word, hi byte)

@ttz_velo:
	rts