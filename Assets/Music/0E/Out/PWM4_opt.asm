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
	dc.b nRst, $7F, $41, $7F, $17, dKick, $06, $0C
	dc.b $06, $0C

Title_Loop1:
	dc.b $54, nRst
	sLoop		$00, $05, Title_Loop1
	dc.b nRst, dKick, $06, $12, $77, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, $01, dSnare, $0C, dKick
	dc.b dKick, dSnare, $6C, nRst, nRst, nRst, nRst, nRst
	dc.b dMidTimpani, $24, nRst, $7F, $41, $7F, $17, dKick
	dc.b $06, $0C, $06, $0C

Title_Loop2:
	dc.b $59, nRst
	sLoop		$00, $06, Title_Loop2
	dc.b nRst, nRst, $01, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, $4F

Title_Loop3:
	dc.b nRst
	sLoop		$00, $07, Title_Loop3
	dc.b nRst, $01, $33, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, $4F

Title_Loop4:
	dc.b nRst
	sLoop		$00, $07, Title_Loop4
	dc.b nRst, $01, $7F, $7F, $25
	sJump		Title_DAC

Title_FM1:
	sPatFM		$00
	dc.b nE3, $0C
	sStop

Title_FM2:
	sPatFM		$00
	dc.b nE3, $0C
	sStop

Title_FM3:
	sPatFM		$00
	dc.b nE3, $0C
	sStop

Title_FM4:
	sPatFM		$00
	dc.b nE3, $0C
	sStop

Title_FM5:
	sPatFM		$00
	dc.b nE3, $0C
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
