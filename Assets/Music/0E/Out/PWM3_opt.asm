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
	dc.b dMidTimpani, $7F, nRst, $41, $7F, $11, dSnare, $06
	dc.b $87, $94, dSnare, $87, $94, dSnare, $87, $7F
	dc.b nRst, nRst, nRst, $09, dMidTimpani, $7F, nRst, nRst
	dc.b nRst, $03, dMidTimpani, $7F, nRst, $11, dSnare, $06
	dc.b $87, $94, dSnare, $87, $94, dSnare, $87, dKick
	dc.b $7F, nRst, nRst, nRst, $03, dMidTimpani, $7F, nRst
	dc.b $41, dKick, $7F, nRst, $71, $86, $06, $87
	dc.b $94, $86, $87, $94, $86, $87, dMidTimpani, $7F
	dc.b nRst, $41, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F
	dc.b nRst, nRst, $22, $7F, $35, dKick, $0C, dMidTimpani
	dc.b $7F, nRst, $11, dSnare, $06, $87, $94, dSnare
	dc.b $87, $94, dSnare, $87, dMidTimpani, $7F, nRst, nRst
	dc.b nRst, $03, dKick, $7F, nRst, nRst, nRst, $03
	dc.b dMidTimpani, $7F, nRst, $41, dKick, $7F, nRst, $41
	dc.b $86, $06, $87, $94, $86, $87, $94, $86
	dc.b $87, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F, nRst
	dc.b $41, dMidTimpani, $7F, nRst, $6E, $33, $86, $06
	dc.b $87, $94, $86, $87, $94, $86, $87, dMidTimpani
	dc.b $7F, nRst, $41, dMidTimpani, $7F, nRst, $41, dMidTimpani
	dc.b $7F, nRst, $6E, $7F, $7F, $25
	sJump		Title_DAC

Title_FM1:
	sPatFM		$00
	dc.b nB1, $0C
	sStop

Title_FM2:
	sPatFM		$00
	dc.b nB1, $0C
	sStop

Title_FM3:
	sPatFM		$00
	dc.b nB1, $0C
	sStop

Title_FM4:
	sPatFM		$00
	dc.b nB1, $0C
	sStop

Title_FM5:
	sPatFM		$00
	dc.b nB1, $0C
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
