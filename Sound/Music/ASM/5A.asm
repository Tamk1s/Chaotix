Target	EQU	$56B6B
Play	EQU	$80
FM_Pitch	EQU	$00
FM_Vol	EQU	$05

SonicCD_C5_Header:
	;sHeaderInit						; Z80 offset is $DFB9
	smpsHeaderVoice	SonicCD_C5_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	Play, cFM5, SonicCD_C5_FM5, FM_Pitch, FM_Vol, Target

SonicCD_C5_FM5:
	smpsFMVoice		$00
	smpsModSet	$02, $01, $02, $03
	dc.b nEb5, $33
	smpsStop

SonicCD_C5_Patches:
	; Patch $00
	; $38
	; $0F, $0F, $0F, $0F,	$1F, $1F, $1F, $0E
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $1F,	$2E, $10, $00, $80
	dc.b	$38
	dc.b	$0F, $0F, $0F, $0F
	dc.b	$1F, $1F, $1F, $0E
	dc.b	$00, $00, $00, $00
	dc.b	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $1F
	dc.b	$2E, $10, $00, $80
	;spAlgorithm	$00
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$0F, $0F, $0F, $0F
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $1F, $0E
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $00, $00, $00
	;spSustainLv	$00, $00, $00, $01
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$2E, $00, $10, $00
