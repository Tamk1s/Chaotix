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
	dc.b dHiTimpani, $03, $03, $84, $06
	sLoop		$00, $1C, Title_DAC

Title_Loop1:
	dc.b $85, $03, dSnare, $86, dSnare, dSnare, dSnare
	sLoop		$00, $02, Title_Loop1
	dc.b $85, dSnare, $86, dSnare, dHiTimpani

Title_Loop2:
	dc.b $06
	sLoop		$00, $0B, Title_Loop2

Title_Loop4:
	dc.b $84

Title_Loop3:
	dc.b dHiTimpani
	sLoop		$00, $0F, Title_Loop3
	sLoop		$01, $08, Title_Loop4
	dc.b $84

Title_Loop5:
	dc.b dHiTimpani
	sLoop		$00, $0C, Title_Loop5

Title_Loop6:
	dc.b $85, $03, dSnare, $86, dSnare, dSnare, dSnare
	sLoop		$00, $02, Title_Loop6
	dc.b $85, dSnare, $86, dSnare, dHiTimpani

Title_Loop7:
	dc.b $06
	sLoop		$00, $0B, Title_Loop7

Title_Loop9:
	dc.b $84

Title_Loop8:
	dc.b dHiTimpani
	sLoop		$00, $0F, Title_Loop8
	sLoop		$01, $07, Title_Loop9
	dc.b $84, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, $36

Title_Loop10:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	sLoop		$00, $04, Title_Loop10

Title_Loop11:
	dc.b $84, dHiTimpani
	sLoop		$00, $2F, Title_Loop11
	dc.b $84, dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84
	dc.b $06, dHiTimpani, $36, $03

Title_Loop12:
	dc.b $03, $84, $06, dHiTimpani, $03
	sLoop		$00, $1B, Title_Loop12
	dc.b $03, $84, $06, $85, $03, dSnare, $86, $06
	dc.b dSnare, $85, $86, $03, dSnare, dSnare, dSnare, $85
	dc.b dSnare, $86, dSnare, dHiTimpani

Title_Loop13:
	dc.b $06
	sLoop		$00, $0B, Title_Loop13

Title_Loop15:
	dc.b $84

Title_Loop14:
	dc.b dHiTimpani
	sLoop		$00, $0F, Title_Loop14
	sLoop		$01, $0B, Title_Loop15
	dc.b $84, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani

Title_Loop16:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	sLoop		$00, $04, Title_Loop16

Title_Loop17:
	dc.b $84, dHiTimpani
	sLoop		$00, $06, Title_Loop17
	dc.b $84, $03, dSnare

Title_Loop18:
	dc.b dHiTimpani, $06, $84
	sLoop		$00, $29, Title_Loop18
	dc.b dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84, $06
	dc.b dHiTimpani, $03, nRst, $33

Title_Loop19:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	sLoop		$00, $04, Title_Loop19

Title_Loop20:
	dc.b $84, dHiTimpani
	sLoop		$00, $2F, Title_Loop20
	dc.b $84, dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84
	dc.b $06, dHiTimpani, $03, nRst, dTimpani, $7F, nRst, nRst
	dc.b $22
	sJump		Title_DAC

Title_FM1:
	sPatFM		$00
	dc.b nB2, $0C
	sStop

Title_FM2:
	sPatFM		$00
	dc.b nB2, $0C
	sStop

Title_FM3:
	sPatFM		$00
	dc.b nB2, $0C
	sStop

Title_FM4:
	sPatFM		$00
	dc.b nB2, $0C
	sStop

Title_FM5:
	sPatFM		$00
	dc.b nB2, $0C
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
