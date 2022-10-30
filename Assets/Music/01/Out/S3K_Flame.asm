SOVA_SA_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	SOVA_SA_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$03, $11
	sHeaderDAC	SOVA_SA_DAC
	sHeaderFM	SOVA_SA_FM1, $00, $10
	sHeaderFM	SOVA_SA_FM2, $00, $20
	sHeaderFM	SOVA_SA_FM3, $00, $0F
	sHeaderFM	SOVA_SA_FM4, $00, $1D
	sHeaderFM	SOVA_SA_FM5, $00, $0E
	sHeaderFM	SOVA_SA_FM6, $00, $1B
	sHeaderPSG	SOVA_SA_PSG1, $0C, $05, $00, $2F
	sHeaderPSG	SOVA_SA_PSG2, $0C, $05, $00, v00
	sHeaderPSG	SOVA_SA_PSG3, $0C, $05, $00, v00

SOVA_SA_FM1:
	sPan		spLeft
	sPatFM		$00
	dc.b nRst, $10

SOVA_SA_Loop1:
	dc.b nE4, $02

SOVA_SA_Loop2:
	dc.b nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b $30
	sLoop		$00, $04, SOVA_SA_Loop1

SOVA_SA_Jump1:
	dc.b nE4, $02
	sLoop		$01, $03, SOVA_SA_Loop2

SOVA_SA_Loop3:
	dc.b nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b nA4, nRst, nE4, nG4, nRst, nA4, nRst, nE4
	sLoop		$00, $02, SOVA_SA_Loop3
	dc.b nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b nG4, nRst, nE4, nD5, nRst, nB4, nRst, nA4
	dc.b nRst, nG4, nA4, nRst, nG4, nRst, nFs4, nG4
	dc.b nFs4, nE4, nFs4, nE4, nRst, nD4, nRst, nE4
	sLoop		$01, $03, SOVA_SA_Loop3

SOVA_SA_Loop4:
	dc.b nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b nA4, nRst, nE4, nG4, nRst, nA4, nRst, nE4
	sLoop		$00, $02, SOVA_SA_Loop4
	dc.b nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b nG4, nRst, nE4, nD5, nRst, nB4, nRst, nA4
	dc.b nRst, nG4, nA4, nRst, nG4, nRst, nFs4, nG4
	dc.b nFs4, nE4, nFs4, nE4, nRst, nD4
	ssDetune	$00
	dc.b nRst
	sJump		SOVA_SA_Jump1

SOVA_SA_FM2:
	sPan		spRight
	sPatFM		$00
	dc.b nRst, $13

SOVA_SA_Loop5:
	dc.b nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b nA4, nRst, $30
	sLoop		$00, $03, SOVA_SA_Loop5
	dc.b nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b nA4, nRst, $2D

SOVA_SA_Jump2:
	dc.b nRst, $03

SOVA_SA_Loop6:
	dc.b nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b nA4, nRst, $30
	sLoop		$00, $08, SOVA_SA_Loop6

SOVA_SA_Loop7:
	dc.b nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b nA4, nRst, nA4, nRst, nE4, nG4, nRst, nA4
	dc.b nRst
	sLoop		$00, $02, SOVA_SA_Loop7
	dc.b nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4
	dc.b nRst, nG4, nRst, nE4, nD5, nRst, nB4, nRst
	dc.b nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4
	dc.b nG4, nFs4, nE4, nFs4, nE4, nRst, nD4, nRst
	sLoop		$01, $03, SOVA_SA_Loop7

SOVA_SA_Loop8:
	dc.b nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4
	dc.b nRst, nA4, nRst, nE4, nG4, nRst, nA4, nRst
	sLoop		$00, $02, SOVA_SA_Loop8
	dc.b nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4
	dc.b nRst, nG4, nRst, nE4, nD5, nRst, nB4, nRst
	dc.b nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4
	dc.b nG4, nFs4, nE4, nFs4, nE4, nRst
	ssDetune	$00
	dc.b $01
	sJump		SOVA_SA_Jump2

SOVA_SA_FM3:
	sPan		spLeft
	sPatFM		$01
	ssModZ80	$01, $01, $04, $05
	sModOn
	sModOn
	dc.b nC5, $10, nRst, $55, nRst, $55, nRst, $26

SOVA_SA_Loop9:
	dc.b nC5, $10, nRst, nC5

SOVA_SA_Jump3:
	sPatFM		$02
	dc.b nE5, $34, nA4, $08, nG4, $04, nB4, $20
	dc.b nE4, $14, nG4, $04, nA4, nB4, nE5, $34
	dc.b nA5, $08, nE5, $04, nB5, $20, nE5, $14
	dc.b nG4, $04, nA4, nB4, nE5, $34, nA4, $08
	dc.b nG4, $04, nB4, $20, nE4, $14, nG4, $04
	dc.b nA4, nB4, nE5, $34, nA5, $08, nE5, $04
	dc.b nB5, $0C, nRst, $04
	sPatFM		$01
	sLoop		$00, $02, SOVA_SA_Loop9
	dc.b nC5, $10
	ssDetune	$00
	dc.b nRst, nC5
	sJump		SOVA_SA_Jump3

SOVA_SA_FM4:
	sPan		spRight
	sPatFM		$02
	ssModZ80	$01, $01, $04, $05
	sModOn
	sModOn
	dc.b nRst, $55, nRst, $55, nRst, $55, nRst, $11

SOVA_SA_Jump4:
	dc.b nRst, $03, nE5, $34, nA4, $08, nG4, $04
	dc.b nB4, $20, nE4, $14, nG4, $04, nA4, nB4
	dc.b nE5, $34, nA5, $08, nE5, $04, nB5, $20
	dc.b nE5, $14, nG4, $04, nA4, nB4, nE5, $34
	dc.b nA4, $08, nG4, $04, nB4, $20, nE4, $14
	dc.b nG4, $04, nA4, nB4, nE5, $34, nA5, $08
	dc.b nE5, $04, nB5, $20, nRst, nE5, $34, nA4
	dc.b $08, nG4, $04, nB4, $20, nE4, $14, nG4
	dc.b $04, nA4, nB4, nE5, $34, nA5, $08, nE5
	dc.b $04, nB5, $20, nE5, $14, nG4, $04, nA4
	dc.b nB4, nE5, $34, nA4, $08, nG4, $04, nB4
	dc.b $20, nE4, $14, nG4, $04, nA4, nB4, nE5
	dc.b $34, nA5, $08, nE5, $04, nB5, $20
	ssDetune	$00
	dc.b nRst, $1D
	sJump		SOVA_SA_Jump4

SOVA_SA_FM5:
	sPan		spLeft
	sPatFM		$03
	dc.b nRst, $10, nE3, $20

SOVA_SA_Loop10:
	dc.b $06, nD4, nA3, $14, nB3, $20, nE3, nE3
	dc.b nE3, $06, nD4, nA3, $14, nB3, $20, nE3
	dc.b $14, $04, nG3, nA3

SOVA_SA_Jump5:
	dc.b nE3, $20
	sLoop		$00, $04, SOVA_SA_Loop10
	dc.b $06, nD4, nA3, $14, nB3, $20, nE3, nE3
	dc.b nE3, $06, nD4, nA3, $14, nB3, $20, nE3
	dc.b $14, $04, nG3, nA3
	sJump		SOVA_SA_Jump5

SOVA_SA_FM6:
	sPan		spRight
	sPatFM		$03
	dc.b nRst, $14

SOVA_SA_Loop11:
	dc.b nE3, $20, $06, nD4, nA3, $14, nB3, $20
	dc.b nE3, nE3, nE3, $06, nD4, nA3, $14, nB3
	dc.b $20, nE3, $14, $04, nG3

SOVA_SA_Jump6:
	dc.b nA3, $04
	sLoop		$00, $04, SOVA_SA_Loop11
	dc.b nE3, $20, $06, nD4, nA3, $14, nB3, $20
	dc.b nE3, nE3, nE3, $06, nD4, nA3, $14, nB3
	dc.b $20, nE3, $14, $04, nG3
	sJump		SOVA_SA_Jump6

SOVA_SA_PSG1:
	dc.b nRst, $10, nC1, $20, nD1, nG0, nE0, nC1
	dc.b nD1, nG0, nE0

SOVA_SA_Loop12:
	dc.b nC1, $04, nC2
	sLoop		$00, $04, SOVA_SA_Loop12

SOVA_SA_Loop13:
	dc.b nD1, nD2
	sLoop		$00, $04, SOVA_SA_Loop13

SOVA_SA_Loop14:
	dc.b nG0, nG1
	sLoop		$00, $04, SOVA_SA_Loop14

SOVA_SA_Loop15:
	dc.b nE0, nE1
	sLoop		$00, $04, SOVA_SA_Loop15
	sLoop		$01, $03, SOVA_SA_Loop12

SOVA_SA_Loop16:
	dc.b nC1, nC2
	sLoop		$00, $04, SOVA_SA_Loop16

SOVA_SA_Loop17:
	dc.b nD1, nD2
	sLoop		$00, $04, SOVA_SA_Loop17

SOVA_SA_Loop18:
	dc.b nG0, nG1
	sLoop		$00, $04, SOVA_SA_Loop18
	dc.b nE0, $20
	sLoop		$02, $02, SOVA_SA_Loop12
	sJump		SOVA_SA_Loop12

SOVA_SA_PSG2:
	dc.b nRst, $10

SOVA_SA_Loop19:
	dc.b nE1, $02

SOVA_SA_Loop20:
	dc.b nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b $30
	sLoop		$00, $04, SOVA_SA_Loop19

SOVA_SA_Jump7:
	dc.b nE1, $02
	sLoop		$01, $03, SOVA_SA_Loop20

SOVA_SA_Loop21:
	dc.b nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b nA1, nRst, nE1, nG1, nRst, nA1, nRst, nE1
	sLoop		$00, $02, SOVA_SA_Loop21
	dc.b nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b nG1, nRst, nE1, nD2, nRst, nB1, nRst, nA1
	dc.b nRst, nG1, nA1, nRst, nG1, nRst, nFs1, nG1
	dc.b nFs1, nE1, nFs1, nE1, nRst, nD1, nRst, nE1
	sLoop		$01, $03, SOVA_SA_Loop21

SOVA_SA_Loop22:
	dc.b nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b nA1, nRst, nE1, nG1, nRst, nA1, nRst, nE1
	sLoop		$00, $02, SOVA_SA_Loop22
	dc.b nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b nG1, nRst, nE1, nD2, nRst, nB1, nRst, nA1
	dc.b nRst, nG1, nA1, nRst, nG1, nRst, nFs1, nG1
	dc.b nFs1, nE1, nFs1, nE1, nRst, nD1
	ssDetune	$00
	dc.b nRst
	sJump		SOVA_SA_Jump7

SOVA_SA_PSG3:
	ssModZ80	$01, $02, $02, $06
	sModOn
	sModOn
	dc.b nRst, $55, nRst, $55, nRst, $55, nRst, $11

SOVA_SA_Jump8:
	dc.b nE2, $34, nA1, $08, nG1, $04, nB1, $20
	dc.b nE1, $14, nG1, $04, nA1, nB1, nE2, $34
	dc.b nA2, $08, nE2, $04, nB2, $20, nE2, $14
	dc.b nG1, $04, nA1, nB1, nE2, $34, nA1, $08
	dc.b nG1, $04, nB1, $20, nE1, $14, nG1, $04
	dc.b nA1, nB1, nE2, $34, nA2, $08, nE2, $04
	dc.b nB2, $0C, nRst, $34, nE2, nA1, $08, nG1
	dc.b $04, nB1, $20, nE1, $14, nG1, $04, nA1
	dc.b nB1, nE2, $34, nA2, $08, nE2, $04, nB2
	dc.b $20, nE2, $14, nG1, $04, nA1, nB1, nE2
	dc.b $34, nA1, $08, nG1, $04, nB1, $20, nE1
	dc.b $14, nG1, $04, nA1, nB1, nE2, $34, nA2
	dc.b $08, nE2, $04, nB2, $0C, nRst, $14
	ssDetune	$00
	dc.b nRst, $20
	sJump		SOVA_SA_Jump8

SOVA_SA_DAC:
	sStop

SOVA_SA_Patches:

	; Patch $00
	; $2A
	; $01, $08, $06, $04,	$53, $1F, $1F, $50
	; $12, $14, $11, $1F,	$00, $00, $00, $00
	; $29, $15, $36, $0B,	$17, $33, $1C, $80
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $06, $08, $04
	spRateScale	$01, $00, $00, $01
	spAttackRt	$13, $1F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $11, $14, $1F
	spSustainLv	$02, $03, $01, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$09, $06, $05, $0B
	spTotalLv	$17, $1C, $33, $00

	; Patch $01
	; $3D
	; $0F, $04, $00, $00,	$08, $07, $46, $07
	; $00, $00, $12, $05,	$00, $0F, $0F, $0F
	; $00, $0D, $47, $07,	$00, $83, $83, $83
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $00, $04, $00
	spRateScale	$00, $01, $00, $00
	spAttackRt	$08, $06, $07, $07
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $12, $00, $05
	spSustainLv	$00, $04, $00, $00
	spDecayRt	$00, $0F, $0F, $0F
	spReleaseRt	$00, $07, $0D, $07
	spTotalLv	$00, $03, $03, $03

	; Patch $02
	; $38
	; $75, $13, $71, $11,	$D1, $52, $14, $14
	; $0A, $07, $01, $01,	$00, $00, $00, $00
	; $F0, $F0, $F0, $FC,	$1E, $1E, $1E, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$05, $01, $03, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$11, $14, $12, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $01, $07, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0C
	spTotalLv	$1E, $1E, $1E, $00

	; Patch $03
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $08
	; $10, $18, $10, $18,	$1E, $15, $1D, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $06, $02, $02
	spMultiple	$03, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $0B
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $08
	spReleaseRt	$00, $00, $08, $08
	spTotalLv	$1E, $1D, $15, $00
