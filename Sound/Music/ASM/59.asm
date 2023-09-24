Target	EQU	$56B45
Play	EQU	$80
FM_Pitch1	EQU	$13
FM_Pitch2	EQU	$00
FM_Vol		EQU	$0F

SonicCD_BC_Header:
	;sHeaderInit						; Z80 offset is $DF82
	smpsHeaderVoice	SonicCD_BC_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	Play, cFM5, SonicCD_BC_FM5, FM_Pitch1, FM_Vol, Target
	smpsHeaderSFX	Play, cFM4, SonicCD_BC_FM5, FM_Pitch2, FM_Vol, Target

SonicCD_BC_FM5:
	smpsFMVoice		$00
	smpsModSet	$02, $01, $2A, $00
	dc.b nEb2, $18, nFs2, $18, nD3, $18
	smpsStop

SonicCD_BC_Patches:
	; Patch $00
	; $16
	; $53, $54, $30, $31,	$1F, $1F, $1F, $1F
	; $05, $08, $06, $08,	$05, $05, $07, $05
	; $2F, $FF, $5F, $2F,	$1E, $80, $80, $80
	dc.b	$16
	dc.b	$53, $54, $30, $31
	dc.b	$1F, $1F, $1F, $1F
	dc.b	$05, $08, $06, $08
	dc.b	$05, $05, $07, $05
	dc.b	$2F, $FF, $5F, $2F
	dc.b	$1E, $80, $80, $80
	;spAlgorithm	$06
	;spFeedback	$02
	;spDetune	$05, $03, $05, $03
	;spMultiple	$03, $00, $04, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$05, $06, $08, $08
	;spSustainLv	$02, $05, $0F, $02
	;spDecayRt	$05, $07, $05, $05
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$1E, $00, $00, $00
