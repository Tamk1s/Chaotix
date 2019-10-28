Title_Header:
	sHeaderInit
	sHeaderPatch	Title_Patches
	sHeaderCh	$06, $00
	sHeaderTempo	$02, $15
	sHeaderDAC	Title_DAC
	sHeaderFM	Title_FM1, $00, $18
	sHeaderFM	Title_FM2, $00, $18
	sHeaderFM	Title_FM3, $00, $18
	sHeaderFM	Title_FM4, $00, $18
	sHeaderFM	Title_FM5, $00, $18

Title_DAC:
	dc.b dKick

Title_Loop1:
	dc.b $0C
	sLoop		$00, $0F, Title_Loop1
	dc.b dSnare, $03, $03, $06, dKick

Title_Loop2:
	dc.b $0C
	sLoop		$00, $0C, Title_Loop2
	dc.b $86, $06, dSnare, $87, $86, dSnare, $87, $86
	dc.b dSnare, $12, $06

Title_Loop3:
	dc.b dKick, $0C, $06, dSnare, $0C, dKick, dSnare, $06
	sLoop		$00, $12, Title_Loop3
	dc.b dKick, $0C, $06, dSnare, $0C, $86, $06, dSnare
	dc.b $87, $86, dSnare, $87, $86, dSnare, dMidTimpani, $0C

Title_Loop4:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	sLoop		$00, $0B, Title_Loop4
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dMidTimpani

Title_Loop5:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	sLoop		$00, $04, Title_Loop5
	dc.b dKick, dKick, dKick, $86, $06, $06, $87, $85
	dc.b $86, $87, $85, $86

Title_Loop6:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $03, dSnare, dKick, $06
	dc.b dSnare, $0C
	sLoop		$00, $05, Title_Loop6
	dc.b dKick, dSnare, $06, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $03, dSnare, dKick, $06, dSnare
	dc.b dSnare, $12, $06, $12, $06, $12, $85, $03
	dc.b $86, $94, $06, $85, $03, $86, $94, $94
	dc.b $85, $06, $94, dKick

Title_Loop7:
	dc.b $0C
	sLoop		$00, $0F, Title_Loop7
	dc.b dSnare, $03, $03, $03, $03, dKick

Title_Loop8:
	dc.b $0C
	sLoop		$00, $0C, Title_Loop8
	dc.b $86, $06, dSnare, $87, $86, dSnare, $87, $86
	dc.b dSnare

Title_Loop9:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C
	sLoop		$00, $08, Title_Loop9
	dc.b dMidTimpani

Title_Loop10:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	sLoop		$00, $0B, Title_Loop10
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dMidTimpani

Title_Loop11:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	sLoop		$00, $03, Title_Loop11
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, $85
	dc.b $06, $86, $87, $85, $86, $87, $85, $86
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $06, $06

Title_Loop12:
	dc.b dSnare, $0C, dKick, dSnare, $06, dKick, $0C, $06
	dc.b dSnare, $0C, dKick, dSnare, dKick, $03, dSnare, dKick
	dc.b $06
	sLoop		$00, $05, Title_Loop12
	dc.b dSnare, dSnare, $12, $06, $12, $06, $03, nRst
	dc.b dKick, $0C, $0C, $0C, $0C, $85, $06, $86
	dc.b $87, $85, $86, $87, $85, $86

Title_Loop13:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $03, dSnare, dKick, $06
	dc.b dSnare, $0C
	sLoop		$00, $05, Title_Loop13
	dc.b dKick, dSnare, $06, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $03, dSnare, dKick, $06, dSnare
	dc.b dSnare, $12, $06, $12, $06, $03, nRst, $7F
	dc.b $7F, $25
	sJump		Title_DAC

Title_FM1:
	sPatFM		$00
	dc.b nA1, $0C
	sStop

Title_FM2:
	sPatFM		$00
	dc.b nA1, $0C
	sStop

Title_FM3:
	sPatFM		$00
	dc.b nA1, $0C
	sStop

Title_FM4:
	sPatFM		$00
	dc.b nA1, $0C
	sStop

Title_FM5:
	sPatFM		$00
	dc.b nA1, $0C
	sStop

Title_Patches:

	; Patch $00
	; $38
	; $72, $13, $71, $11,	$D1, $52, $14, $14
	; $01, $07, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$1E, $1E, $1E, $00
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$02, $01, $03, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$11, $14, $12, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $01, $07, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $1E, $1E, $00
