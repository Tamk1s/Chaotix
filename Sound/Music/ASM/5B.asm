Target	EQU	$56BAF
Play	EQU	$80
FM_Pitch	EQU	$00
FM_Vol	EQU	FM_Pitch

SonicCD_CE_Header:
	;sHeaderInit						; Z80 offset is $DFE6
	smpsHeaderVoice	SonicCD_CE_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	Play, cFM4, SonicCD_CE_FM4, FM_Pitch, FM_Vol, Target
	smpsHeaderSFX	Play, cFM5, SonicCD_CE_FM5, FM_Pitch, FM_Vol, Target

SonicCD_CE_FM4:
	smpsFMVoice		$00
	smpsModSet	$02, $01, $01, $02
	dc.b nF2, $1C
	smpsStop

SonicCD_CE_FM5:
	smpsFMVoice		$01
	smpsModSet	$02, $01, $A4, $57
	dc.b nE5, $1D
	smpsStop

SonicCD_CE_Patches:
	; Patch $00
	; $3C
	; $02, $00, $01, $01,	$1F, $1F, $1F, $1F
	; $00, $0E, $19, $10,	$00, $0C, $00, $0F
	; $0F, $EF, $FF, $FF,	$05, $80, $00, $80
	dc.b	$3C
	dc.b	$02, $00, $01, $01
	dc.b	$1F, $1F, $1F, $1F
	dc.b	$00, $0E, $19, $10
	dc.b	$00, $0C, $00, $0F
	dc.b	$0F, $EF, $FF, $FF
	dc.b	$05, $80, $00, $80
	;spAlgorithm	$04
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$02, $01, $00, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $19, $0E, $10
	;spSustainLv	$00, $0F, $0E, $0F
	;spDecayRt	$00, $00, $0C, $0F
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$05, $00, $00, $00

	; Patch $01
	; $03
	; $02, $37, $33, $31,	$1F, $1F, $1F, $54
	; $03, $05, $04, $0A,	$02, $02, $02, $03
	; $2F, $2F, $2F, $5F,	$03, $15, $22, $80
	dc.b	$03
	dc.b	$02, $37, $33, $31
	dc.b	$1F, $1F, $1F, $54
	dc.b	$03, $05, $04, $0A
	dc.b	$02, $02, $02, $03
	dc.b	$2F, $2F, $2F, $5F
	dc.b	$03, $15, $22, $80
	;spAlgorithm	$03
	;spFeedback	$00
	;spDetune	$00, $03, $03, $03
	;spMultiple	$02, $03, $07, $01
	;spRateScale	$00, $00, $00, $01
	;spAttackRt	$1F, $1F, $1F, $14
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$03, $04, $05, $0A
	;spSustainLv	$02, $02, $02, $05
	;spDecayRt	$02, $02, $02, $03
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$03, $22, $15, $00
