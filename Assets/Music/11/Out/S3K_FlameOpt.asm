KSSU_HelperReset_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	KSSU_HelperReset_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$04, $20
	sHeaderDAC	KSSU_HelperReset_DAC
	sHeaderFM	KSSU_HelperReset_FM1, $00, $0F
	sHeaderFM	KSSU_HelperReset_FM2, $00, $1F
	sHeaderFM	KSSU_HelperReset_FM3, $00, $0F
	sHeaderFM	KSSU_HelperReset_FM4, $00, $1F
	sHeaderFM	KSSU_HelperReset_FM5, $00, $0F
	sHeaderFM	KSSU_HelperReset_FM6, $00, $1F
	sHeaderPSG	KSSU_HelperReset_PSG1, $0C, $07, $00, v00
	sHeaderPSG	KSSU_HelperReset_PSG2, $0C, $07, $00, v00
	sHeaderPSG	KSSU_HelperReset_PSG3, $0C, $07, $00, v00

KSSU_HelperReset_FM1:
	sPatFM		$00

KSSU_HelperReset_Jump1:
	sPan		spRight
	dc.b nF4, $04, nA4, nC5, nE5, nF5, nE5, nC5
	dc.b nA4, nE4, nG4, nB4, nD5, nE5, nD5, nB4
	dc.b nG4, nD4, nF4, nA4, nC5, nD5, nC5, nA4
	dc.b nF4, nE4, nFs4, nA4, nCs5, nE5, nCs5, nA4
	dc.b nFs4, nF4, nA4, nC5, nE5, nF5, nE5, nC5
	dc.b nA4, nE4, nG4, nB4, nD5, nE5, nD5, nB4
	dc.b nG4, nF4, nA4, nC5, nD5, nD4, nF4, nA4
	dc.b nC5, nA3, nC4, nE4, nG4, nG3, nC4, nE4
	dc.b nG4, nRst
	sJump		KSSU_HelperReset_Jump1

KSSU_HelperReset_FM2:
	sPatFM		$00

KSSU_HelperReset_Jump2:
	sPan		spLeft
	dc.b nRst, $04, nF4, nA4, nC5, nE5, nF5, nE5
	dc.b nC5, nA4, nE4, nG4, nB4, nD5, nE5, nD5
	dc.b nB4, nG4, nD4, nF4, nA4, nC5, nD5, nC5
	dc.b nA4, nF4, nE4, nFs4, nA4, nCs5, nE5, nCs5
	dc.b nA4, nFs4, nF4, nA4, nC5, nE5, nF5, nE5
	dc.b nC5, nA4, nE4, nG4, nB4, nD5, nE5, nD5
	dc.b nB4, nG4, nF4, nA4, nC5, nD5, nD4, nF4
	dc.b nA4, nC5, nA3, nC4, nE4, nG4, nG3, nC4
	dc.b nE4, nG4
	sJump		KSSU_HelperReset_Jump2

KSSU_HelperReset_FM3:
	sPatFM		$01

KSSU_HelperReset_Jump3:
	sPan		spRight
	dc.b nA4, $0C, nB4, $04, nC5, $08, nA5, nG5
	dc.b nE5, $04, nD5, nE5, $08, nA4, nD5, nF5
	dc.b nG5, nF5, nE5, nA5, nAb5, nE5, nC5, $04
	dc.b nB4, nA4, nB4, nC5, $08, nA5, nG5, nE5
	dc.b $04, nD5, nE5, $08, nA4, nD5, nF5, nG5
	dc.b nF5, nE5, nC5, $04, nB4, nC5, $08, nB4
	dc.b nRst, $04
	sJump		KSSU_HelperReset_Jump3

KSSU_HelperReset_FM4:
	sPatFM		$01

KSSU_HelperReset_Jump4:
	sPan		spLeft
	dc.b nRst, $04, nA4, $0C, nB4, $04, nC5, $08
	dc.b nA5, nG5, nE5, $04, nD5, nE5, $08, nA4
	dc.b nD5, nF5, nG5, nF5, nE5, nA5, nAb5, nE5
	dc.b nC5, $04, nB4, nA4, nB4, nC5, $08, nA5
	dc.b nG5, nE5, $04, nD5, nE5, $08, nA4, nD5
	dc.b nF5, nG5, nF5, nE5, nC5, $04, nB4, nC5
	dc.b $08, nB4
	sJump		KSSU_HelperReset_Jump4

KSSU_HelperReset_FM5:
	sPatFM		$02
	sPan		spRight
	dc.b nF3, $20, nE3, nD3, nFs3, nF3, nE3, nD3
	dc.b nA2, $10, nG2, nRst, $04
	sJump		KSSU_HelperReset_FM5

KSSU_HelperReset_FM6:
	sPatFM		$02
	sPan		spLeft
	dc.b nRst, $04, nF3, $20, nE3, nD3, nFs3, nF3
	dc.b nE3, nD3, nA2, $10, nG2
	sJump		KSSU_HelperReset_FM6

KSSU_HelperReset_PSG1:
	dc.b nF1, $04, nA1, nC2, nE2, nF2, nE2, nC2
	dc.b nA1, nE1, nG1, nB1, nD2, nE2, nD2, nB1
	dc.b nG1, nD1, nF1, nA1, nC2, nD2, nC2, nA1
	dc.b nF1, nE1, nFs1, nA1, nCs2, nE2, nCs2, nA1
	dc.b nFs1, nF1, nA1, nC2, nE2, nF2, nE2, nC2
	dc.b nA1, nE1, nG1, nB1, nD2, nE2, nD2, nB1
	dc.b nG1, nF1, nA1, nC2, nD2, nD1, nF1, nA1
	dc.b nC2, nA0, nC1, nE1, nG1, nG0, nC1, nE1
	dc.b nG1, nRst
	sStop

KSSU_HelperReset_PSG2:
	sVolEnvPSG	v00
	dc.b nA1, $0C, nB1, $04, nC2, $08, nA2, nG2
	dc.b nE2, $04, nD2, nE2, $08, nA1, nD2, nF2
	dc.b nG2, nF2, nE2, nA2, nAb2, nE2, nC2, $04
	dc.b nB1, nA1, nB1, nC2, $08, nA2, nG2, nE2
	dc.b $04, nD2, nE2, $08, nA1, nD2, nF2, nG2
	dc.b nF2, nE2, nC2, $04, nB1, nC2, $08, nB1
	dc.b nRst, $04
	sJump		KSSU_HelperReset_PSG2

KSSU_HelperReset_PSG3:
	sVolEnvPSG	$28
	dc.b nF0, $20, nE0, nD0, nFs0, nF0, nE0, nD0
	dc.b nC0, $10, $10, nRst, $04
	sJump		KSSU_HelperReset_PSG3

KSSU_HelperReset_DAC:
	sStop

KSSU_HelperReset_Patches:

	; Patch $00
	; $3A
	; $71, $0C, $33, $01,	$1C, $16, $1D, $1F
	; $04, $06, $04, $08,	$00, $01, $03, $00
	; $16, $17, $16, $A6,	$25, $2F, $25, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $03, $0C, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $1D, $16, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $06, $08
	spSustainLv	$01, $01, $01, $0A
	spDecayRt	$00, $03, $01, $00
	spReleaseRt	$06, $06, $07, $06
	spTotalLv	$25, $25, $2F, $00

	; Patch $01
	; $3A
	; $01, $05, $31, $01,	$59, $59, $5C, $4E
	; $0A, $0B, $0D, $04,	$03, $02, $03, $06
	; $15, $58, $27, $06,	$1D, $0F, $30, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $03, $00, $00
	spMultiple	$01, $01, $05, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$19, $1C, $19, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0D, $0B, $04
	spSustainLv	$01, $02, $05, $00
	spDecayRt	$03, $03, $02, $06
	spReleaseRt	$05, $07, $08, $06
	spTotalLv	$1D, $30, $0F, $00

	; Patch $02
	; $34
	; $73, $02, $01, $31,	$52, $5F, $5F, $1F
	; $05, $05, $05, $0A,	$03, $04, $04, $04
	; $21, $11, $23, $45,	$1E, $90, $23, $86
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$07, $00, $00, $03
	spMultiple	$03, $01, $02, $01
	spRateScale	$01, $01, $01, $00
	spAttackRt	$12, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $0A
	spSustainLv	$02, $02, $01, $04
	spDecayRt	$03, $04, $04, $04
	spReleaseRt	$01, $03, $01, $05
	spTotalLv	$1E, $23, $10, $06
