MDNV2_BlueMoon_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	MDNV2_BlueMoon_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$03, $1A
	sHeaderDAC	MDNV2_BlueMoon_DAC
	sHeaderFM	MDNV2_BlueMoon_FM1, $00, $14
	sHeaderFM	MDNV2_BlueMoon_FM2, $00, $0F
	sHeaderFM	MDNV2_BlueMoon_FM3, $00, $18
	sHeaderFM	MDNV2_BlueMoon_FM4, $00, $18
	sHeaderFM	MDNV2_BlueMoon_FM5, $00, $14
	sHeaderFM	MDNV2_BlueMoon_FM6, $00, $14
	sHeaderPSG	MDNV2_BlueMoon_PSG1, $0C, $07, $00, v00
	sHeaderPSG	MDNV2_BlueMoon_PSG2, $0C, $07, $00, v00
	sHeaderPSG	MDNV2_BlueMoon_PSG3, $0C, $07, $00, v00

MDNV2_BlueMoon_FM1:
	sPan		spLeft
	sPatFM		$00
	dc.b nC4, $17, nRst, $01, nB3, $12, nRst, $06
	dc.b nD4, $17, nRst, $19, nC4, $17, nRst, $01
	dc.b nC4, $0B, nRst, $01, nB3, $06, nRst, nB3
	dc.b $0B, nRst, $01, nA3, $06, nE3, nRst, $0C
	dc.b nB3, $06, nC4, nF4, $17, nRst, $01, nE4
	dc.b $17, nRst, $01, nF4, $12, nRst, $18, nF4
	dc.b $03, nAb4

MDNV2_BlueMoon_Loop1:
	dc.b nA4, $0B, nRst, $01, nE4, $06, nRst
	sLoop		$00, $02, MDNV2_BlueMoon_Loop1
	dc.b nAb4, $17, nRst, $0D, nAb3, $03, nB3, nC4
	dc.b nD4, nE4, $0B, nRst, $01, nA3, $06, nRst
	dc.b nB3, $12, nRst, $06, nD4, $17, nRst, $0D
	dc.b nB3, $03, nD4, nF4, nAb4, nA4, $0B, nRst
	dc.b $01, nB4, $0B, nRst, $01, nC5, $17, nRst
	dc.b $01, nD5, $17, nRst, $0D, nD4, $06, nE4
	dc.b nF4, $0B, nRst, $01, nB4, $06, nA4, nE4
	dc.b $11, nRst, $01, nE4, $06, nA4, $0B, nRst
	dc.b $01, nD5, $0B, nRst, $13, nF4, $03, nAb4
	dc.b nA4, $06, nB4, nA4, nB4, nA4, nE4, nD5
	dc.b $0B, nRst, $01, nE5, $17, nRst
	sJump		MDNV2_BlueMoon_FM1

MDNV2_BlueMoon_FM2:
	sPan		spRight
	sPatFM		$00
	dc.b nRst, $06, nA2, nE3, nA3, nRst, nA2, nE3
	dc.b nB3, nRst, nAb2, nF3, nB3, nRst, $1E, nF2
	dc.b $06, nC3, nA3, nRst, nF2, nC3, nA3, nRst
	dc.b nE2, nE3, nA3, nRst, $1E, nD3, $06, nA3
	dc.b nC4, nRst, nE3, nG3, nC4, nRst, nF3, nB3
	dc.b nF4, nRst, $1E, nE3, $06, nB3, nE4, nRst
	dc.b nE3, nB3, nE4, nRst, nE3, nB3, nE4, nRst
	dc.b $1E, nA2, $06, nE3, nA3, nRst, nA2, nE3
	dc.b nB3, nRst, nA2, nE3, nB3, nRst, $1E, nF3
	dc.b $06, nC4, nA4, nRst, nF3, nC4, nA4, nRst
	dc.b nE3, nE4, nA4, nRst, $1E, nD3, $06, nA3
	dc.b nC4, nRst, nE3, nG3, nC4, nRst, nF3, nB3
	dc.b nF4, nRst, $1E, nE3, $06, nB3, nE4, nRst
	dc.b nE3, nB3, nE4, nRst, nE3, nB3, nE4, nRst
	dc.b $16
	sJump		MDNV2_BlueMoon_FM2

MDNV2_BlueMoon_FM3:
	sPatFM		$01
	sPan		spCenter
	dc.b nA2, $03, nE3, nA3, nC4, nE3, nA3, nC4
	dc.b nE4, nB4, nA4, nE4, nB3, nA4, nE4, nB3
	dc.b nA3, nF3, nA3, nB3, nD4, nA3, nB3, nD4
	dc.b nF4, nRst, $18, nA2, $03, nF3, nA3, nC4
	dc.b nF3, nA3, nC4, nF4, nB4, nA4, nE4, nC4
	dc.b nA4, nE4, nC4, nA3, nB2, nE3, nA3, nB3
	dc.b nE3, nA3, nB3, nD4, nRst, $18, nA2, $03
	dc.b nD3, nA3, nC4, nD3, nA3, nC4, nD4, nC5
	dc.b nG4, nE4, nC4, nG4, nE4, nC4, nG3, nA2
	dc.b nF3, nA3, nB3, nF3, nA3, nB3, nD4, nRst
	dc.b $18, nB2, $03, nE3, nA3, nB3, nE3, nA3
	dc.b nB3, nE4, nA4, nE4, nB3, nA3, nE4, nB3
	dc.b nA3, nE3, nB2, nE3, nAb3, nB3, nE3, nAb3
	dc.b nB3, nE4, nRst, $18
	sPatFM		$00
	dc.b nC4, $0B, nRst, $55, nRst, $30, nB4, $17
	dc.b nRst, $49, nD4, $0B, nRst, $55, nAb4, $17
	dc.b nRst
	sJump		MDNV2_BlueMoon_FM3

MDNV2_BlueMoon_FM4:
	sPan		spCenter
	sPatFM		$02
	dc.b nRst, $55, nRst, $55, nRst, $16
	sPatFM		$00
	dc.b nD4, $17, nRst, $19, nD4, $17, nRst, $49
	dc.b nD4, $17, nRst, $19
	sPatFM		$02
	dc.b nA3, $17, nRst, $01, nB3, $17, nRst, $01
	dc.b nB3, $22, nRst, $0E, nC4, $17, nRst, $01
	dc.b nA3, $17, nRst, $01, nB3, $22, nRst, $0E
	dc.b nA3, $17, nRst, $01, nG3, $17, nRst, $01
	dc.b nB3, $22, nRst, $0E, nA3, $2E, nRst, $02
	dc.b nAb3, $2E
	sJump		MDNV2_BlueMoon_FM4

MDNV2_BlueMoon_FM5:
	sPan		spLeft
	sPatFM		$02
	dc.b nRst

MDNV2_BlueMoon_Loop2:
	dc.b $33
	sLoop		$00, $07, MDNV2_BlueMoon_Loop2
	dc.b nRst, $01
	sPatFM		$00
	dc.b nRst, $1A
	sPatFM		$02
	dc.b nE3, $17, nRst, $01, nA3, $17, nRst, $01
	dc.b nAb3, $22, nRst, $0E, nA3, $17, nRst, $01
	dc.b nF3, $17, nRst, $01, nE3, $22, nRst, $0E
	dc.b nF3, $17, nRst, $01, nE3, $17, nRst, $01
	dc.b nF3, $22, nRst, $0E, nE3, $2E, nRst, $02
	dc.b nE3, $2E
	sJump		MDNV2_BlueMoon_FM5

MDNV2_BlueMoon_FM6:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $45, nRst, $45, nRst, $45, nRst, $45
	dc.b nRst, $45, nRst, $02
	sPatFM		$00
	dc.b nRst, $25
	sPatFM		$02
	dc.b nC3, $17, nRst, $01, nE3, $17, nRst, $01
	dc.b nD3, $22, nRst, $0E, nF3, $17, nRst, $01
	dc.b nC3, $17, nRst, $01, nD3, $22, nRst, $0E
	dc.b nD3, $17, nRst, $01, nC3, $17, nRst, $01
	dc.b nD3, $22, nRst, $0E, nB2, $2E, nRst, $02
	dc.b nB2, $2E
	sJump		MDNV2_BlueMoon_FM6

MDNV2_BlueMoon_PSG1:
	sVolEnvPSG	$31
	dc.b nC1, $17, nRst, $01, nB0, $12, nRst, $06
	dc.b nD1, $17, nRst, $19, nC1, $17, nRst, $01
	dc.b nC1, $0B, nRst, $01, nB0, $06, nA0, nB0
	dc.b $0B, nRst, $01, nA0, $06, nE0, nRst, $0C
	dc.b nB0, $06, nC1, nF1, $17, nRst, $01, nE1
	dc.b $17, nRst, $01, nF1, $12, nRst, $18, nF1
	dc.b $03, nAb1

MDNV2_BlueMoon_Loop3:
	dc.b nA1, $0B, nRst, $01, nE1, $06, nRst
	sLoop		$00, $02, MDNV2_BlueMoon_Loop3
	dc.b nAb1, $17, nRst, $0D, nAb0, $03, nB0, nC1
	dc.b nD1, nE1, $0B, nRst, $01, nA0, $06, nRst
	dc.b nB0, $12, nRst, $06, nD1, $17, nRst, $0D
	dc.b nB0, $03, nD1, nF1, nAb1, nA1, $0B, nRst
	dc.b $01, nB1, $0B, nRst, $01, nC2, $17, nRst
	dc.b $01, nD2, $17, nRst, $0D, nD1, $06, nE1
	dc.b nF1, $0B, nRst, $01, nB1, $06, nA1, nE1
	dc.b $11, nRst, $01, nE1, $06, nA1, $0B, nRst
	dc.b $01, nD2, $0B, nRst, $13, nF1, $03, nAb1
	dc.b nA1, $06, nB1, nA1, nB1, nA1, nE1, nD2
	dc.b $0B, nRst, $01, nE2, $17, nRst
	sJump		MDNV2_BlueMoon_PSG1

MDNV2_BlueMoon_PSG2:
	sVolEnvPSG	$31
	dc.b nRst, $06, nC0, nE0, nA0, nRst, nC0, nE0
	dc.b nB0, nRst, nC0, nF0, nB0, nRst, $1E, nC0
	dc.b $06, $06, nA0, nRst, nC0, nC0, nA0, nRst
	dc.b nC0, nE0, nA0, nRst, $1E, nD0, $06, nA0
	dc.b nC1, nRst, nE0, nG0, nC1, nRst, nF0, nB0
	dc.b nF1, nRst, $1E, nE0, $06, nB0, nE1, nRst
	dc.b nE0, nB0, nE1, nRst, nE0, nB0, nE1, nRst
	dc.b $1E, nC0, $06, nE0, nA0, nRst, nC0, nE0
	dc.b nB0, nRst, nC0, nE0, nB0, nRst, $1E, nF0
	dc.b $06, nC1, nA1, nRst, nF0, nC1, nA1, nRst
	dc.b nE0, nE1, nA1, nRst, $1E, nD0, $06, nA0
	dc.b nC1, nRst, nE0, nG0, nC1, nRst, nF0, nB0
	dc.b nF1, nRst, $1E, nE0, $06, nB0, nE1, nRst
	dc.b nE0, nB0, nE1, nRst, nE0, nB0, nE1, nRst
	dc.b $16
	sJump		MDNV2_BlueMoon_PSG2

MDNV2_BlueMoon_PSG3:
	sVolEnvPSG	$31
	dc.b nRst, $55, nRst, $55, nRst, $16, nD1, $17
	dc.b nRst, $19, nD1, $17, nRst, $49, nD1, $17
	dc.b nRst, $19, nC1, $0B, nRst, $55, nRst, $30
	dc.b nB1, $17, nRst, $49, nD1, $0B, nRst, $55
	dc.b nAb1, $17, nRst
	sJump		MDNV2_BlueMoon_PSG3

MDNV2_BlueMoon_DAC:
	sStop

MDNV2_BlueMoon_Patches:

	; Patch $00
	; $36
	; $73, $72, $35, $30,	$17, $16, $16, $0E
	; $08, $08, $09, $08,	$00, $08, $08, $05
	; $D5, $35, $07, $55,	$1C, $86, $90, $86
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$07, $03, $07, $03
	spMultiple	$03, $05, $02, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $16, $16, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $09, $08, $08
	spSustainLv	$0D, $00, $03, $05
	spDecayRt	$00, $08, $08, $05
	spReleaseRt	$05, $07, $05, $05
	spTotalLv	$1C, $10, $06, $06

	; Patch $01
	; $3B
	; $00, $71, $71, $01,	$1F, $16, $0F, $12
	; $10, $10, $10, $10,	$06, $06, $06, $06
	; $00, $01, $01, $16,	$19, $19, $19, $84
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $07, $07, $00
	spMultiple	$00, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0F, $16, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $10, $10, $10
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$06, $06, $06, $06
	spReleaseRt	$00, $01, $01, $06
	spTotalLv	$19, $19, $19, $04

	; Patch $02
	; $3B
	; $51, $71, $61, $41,	$51, $16, $18, $1A
	; $05, $01, $01, $00,	$09, $01, $01, $01
	; $17, $97, $27, $47,	$1C, $22, $15, $88
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$05, $06, $07, $04
	spMultiple	$01, $01, $01, $01
	spRateScale	$01, $00, $00, $00
	spAttackRt	$11, $18, $16, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $01, $01, $00
	spSustainLv	$01, $02, $09, $04
	spDecayRt	$09, $01, $01, $01
	spReleaseRt	$07, $07, $07, $07
	spTotalLv	$1C, $15, $22, $08
