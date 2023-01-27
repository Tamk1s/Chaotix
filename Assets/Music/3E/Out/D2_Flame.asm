SonicCD_D2_Header:
	sHeaderInit						; Z80 offset is $DF82
	sHeaderPatch	SonicCD_D2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, SonicCD_D2_FM4, $00, $05

SonicCD_D2_FM4:
	sPatFM		$00
	ssModZ80	$21, $01, $05, $06
	dc.b nA5, $45
	sStop

SonicCD_D2_Patches:

	; Patch $00
	; $04
	; $27, $02, $07, $47,	$1F, $1F, $1F, $1F
	; $07, $0A, $07, $0D,	$00, $0B, $00, $0B
	; $1F, $0F, $1F, $0F,	$1F, $80, $23, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$02, $00, $00, $04
	spMultiple	$07, $07, $02, $07
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $07, $0A, $0D
	spSustainLv	$01, $01, $00, $00
	spDecayRt	$00, $00, $0B, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $23, $00, $00
