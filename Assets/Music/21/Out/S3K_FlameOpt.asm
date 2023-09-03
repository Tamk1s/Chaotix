Segapede_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	Segapede_Patches
	sHeaderCh	$07, $01
	sHeaderTempo	$02, $11
	sHeaderDAC	Segapede_DAC
	sHeaderFM	Segapede_FM1, $00, $1F
	sHeaderFM	Segapede_FM2, $00, $15
	sHeaderFM	Segapede_FM3, $00, $1F
	sHeaderFM	Segapede_FM4, $00, $1D
	sHeaderFM	Segapede_FM5, $00, $27
	sHeaderFM	Segapede_FM6, $00, $1F
	sHeaderPSG	Segapede_PSG1, $0C, $00, $00, v00

Segapede_FM1:
	sPatFM		$00
	dc.b nRst, $04

Segapede_Jump1:
	dc.b nB2, $04, $04, nRst, nB2, nRst, $1C, nB2
	dc.b $04, nB3, $08, nB2, $04, nB3, nBb2, nBb2
	dc.b nRst, nBb2, nRst, $30, nA2, $04, $04, nRst
	dc.b nA2, nRst, $18, nA2, $04, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $04, nA3
	dc.b nG2, $03, nRst, $01, nG2, $03, nRst, $05
	dc.b nG2, $03, nRst, $15, nE2, $04, nE3, nE2
	dc.b nRst, $10, nCs3, $04, $04, nRst, nCs3, nRst
	dc.b $1C, nCs3, $04, nCs4, $08, nCs3, $04, nCs4
	dc.b nC3, nC3, nRst, nC3, nRst, $30, nB2, $04
	dc.b $04, nRst, nB2, nRst, $18, nB2, $04, nB3
	dc.b $03, nRst, $05, nB3, $03, nRst, $01, nB2
	dc.b $04, nB3, nA2, $03, nRst, $01, nA2, $03
	dc.b nRst, $05, nA2, $03, nRst, $15, nA2, $04
	dc.b nA3, nA2, nRst, $10, nB2, $04, $04, nRst
	dc.b nB2, nRst, $1C, nB2, $04, nB3, $08, nB2
	dc.b $04, nB3, nBb2, nBb2, nRst, nBb2, nRst, $30
	dc.b nA2, $04, $04, nRst, nA2, nRst, $18, nA2
	dc.b $04, nA3, $03, nRst, $05, nA3, $03, nRst
	dc.b $01, nA2, $04, nA3, nG2, $03, nRst, $01
	dc.b nG2, $03, nRst, $05, nG2, $03, nRst, $15
	dc.b nE2, $04, nE3, nE2, nRst, $08, nE2, $04
	dc.b nFs2, nG2, $03, nRst, $01, nG2, $03, nRst
	dc.b $05, nG2, $03, nRst, $1D, nG2, $04, nG3
	dc.b $08, nG2, $04, nG3, nD3, $03, nRst, $01
	dc.b nD3, $03, nRst, $05, nD3, $03, nRst, $31
	dc.b nA2, $03, nRst, $01, nA2, $03, nRst, $05
	dc.b nA2, $03, nRst, $19, nA2, $03, nRst, $01
	dc.b nA3, $03, nRst, $05, nA3, $03, nRst, $01
	dc.b nA2, $03, nRst, $01, nA3, $03, nRst, $01
	dc.b nB2, $0C, nCs3, nD3, nCs3, nB2, $08, nA2
	dc.b nG3, $04, nG2, $03, nRst, $05, nG2, $04
	dc.b nRst, $14, nG2, $04, nG3, nG2, nG3
	ssDetune	$F1
	dc.b sHold, nAb3, $01
	ssDetune	$FD
	dc.b sHold, nA3, $02
	ssDetune	$00
	dc.b sHold, nG3, $05, nG2, $04, nD3, $03, nRst
	dc.b $01, nD2, $03, nRst, $05, nD2, $03, nRst
	dc.b $1D, nD2, $03, nRst, $11, nA2, $03, nRst
	dc.b $01, nA2, $03, nRst, $05, nA2, $03, nRst
	dc.b $19, nA2, $03, nRst, $01, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $03, nRst
	dc.b $01, nA3, $03, nRst, $01, nFs2, $03, nRst
	dc.b $01, nFs2, $03, nRst, $05, nFs2, $08, nRst
	dc.b nFs2, $04, nBb2, $03, nRst, $01, nBb2, $03
	dc.b nRst, $05, nBb2, $07, nRst, $0D
	sJump		Segapede_Jump1

Segapede_FM2:
	sPatFM		$01
	dc.b nRst, $04

Segapede_Jump2:
	dc.b nRst, $04, nB3, nD4, nFs4, nB4, nFs4, nB4
	dc.b nD5, nFs5, nD5, nFs5, nB5, nD6, nB5, nD6
	dc.b nFs6, nRst, nBb3, nCs4, nFs4, nBb4, nFs4, nBb4
	dc.b nCs5, nFs5, nCs5, nFs5, nBb5, nCs6, nBb5, nCs6
	dc.b nFs6, nRst, nA3, nEb4, nFs4, nB4, nFs4, nB4
	dc.b nEb5, nFs5, nEb5, nFs5, nB5, nEb6, nB5, nEb6
	dc.b nFs6, nRst, nG3, nE4, nG4, nB4, nE5, nB5
	dc.b nE6, nRst, nE3, nBb3, nE4, nBb4, nCs5, nE5
	dc.b nG5
	sPatFM		$06

Segapede_Loop1:
	dc.b nCs6, nAb6, nE6
	sLoop		$00, $05, Segapede_Loop1
	dc.b nCs6

Segapede_Loop2:
	dc.b nC6, nAb6, nEb6
	sLoop		$00, $05, Segapede_Loop2
	dc.b nC6

Segapede_Loop3:
	dc.b nCs6, nAb6, nF6
	sLoop		$00, $05, Segapede_Loop3

Segapede_Loop4:
	dc.b nCs6, nA5, nFs6
	sLoop		$00, $03, Segapede_Loop4
	dc.b nA5, nFs6, nEb6, nC6, nA5, nFs5, nEb5, nC5
	sPatFM		$01
	dc.b nRst, nB2, nD3, nFs3, nB3, nFs3, nB3, nD4
	dc.b nFs4, nD4, nFs4, nB4, nD5, nB4, nD5, nFs5
	dc.b nRst, nBb2, nCs3, nFs3, nBb3, nFs3, nBb3, nCs4
	dc.b nFs4, nCs4, nFs4, nBb4, nCs5, nBb4, nCs5, nFs5
	dc.b nRst, nA2, nEb3, nFs3, nB3, nFs3, nB3, nEb4
	dc.b nFs4, nEb4, nFs4, nB4, nEb5, nB4, nEb5, nFs5
	dc.b nRst, nG2, nE3, nG3, nB3, nE4, nB4, nE5
	dc.b nRst, nE2, nBb2, nE3, nBb3, nCs4, nE4, nG4
	dc.b nRst
	sPatFM		$07
	dc.b nG3, nD4, nB3, nG4, nD4, nB4, nG4, nD5
	dc.b nB4, nG5, nD5, nB5, nG5, nD6, nB5, nRst
	dc.b nD3, nD4, nA3, nFs4, nD4, nA4, nFs4, nD5
	dc.b nA4, nFs5, nD5, nA5, nFs5, nD6, nA5, nRst
	dc.b nA3, nE4, nCs4, nA4, nE4, nCs5, nA4, nE5
	dc.b nCs5, nA5, nE5, nCs6, nA5, nE6, nCs6

Segapede_Loop5:
	dc.b nD5, $01, nRst, $03, nD5, $02, nRst, $06
	sLoop		$00, $03, Segapede_Loop5
	dc.b nD5, $01, nRst, $03, nD5, $01, nRst, $07
	dc.b nD5, $03, nRst, $05, nCs5, $02, nRst, $0A
	dc.b nG3, $04, nD4, nB3, nG4, nD4, nB4, nG4
	dc.b nD5, nB4, nG5, nD5, nB5, nG5, nD6, nB5
	dc.b nRst, nD3, nD4, nA3, nFs4, nD4, nA4, nFs4
	dc.b nD5, nA4, nFs5, nD5, nA5, nFs5, nD6, nA5
	dc.b nRst, nA3, nE4, nCs4, nA4, nE4, nCs5, nA4
	dc.b nE5, nCs5, nA5, nE5, nCs6, nA5, nE6, nCs6

Segapede_Loop6:
	dc.b nFs5, $01, nRst, $03, nFs5, $02, nRst, $06
	sLoop		$00, $03, Segapede_Loop6
	dc.b nE5, $01, nRst, $03, nE5, $01, nRst, $07
	dc.b nD5, $03, nRst, $05, nCs5, $02, nRst
	sPatFM		$01
	dc.b $04
	sJump		Segapede_Jump2

Segapede_FM3:
	sPatFM		$02
	dc.b nRst, $04

Segapede_Jump3:
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $10
	dc.b nRst, $70, nC4, $10, nRst, $70, nA3, $10
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $08
	dc.b nRst, $78, nD4, $10, nRst, $7F, nRst, $71
	dc.b nD3, $10, nRst, $7F, nRst, $01
	sJump		Segapede_Jump3

Segapede_FM4:
	sPatFM		$03
	dc.b nRst, $04

Segapede_Jump4:
	dc.b nB2, $04, $04, nRst, nB2, nRst, $1C, nB2
	dc.b $04, nB3, $08, nB2, $04, nB3, nBb2, nBb2
	dc.b nRst, nBb2, nRst, $30, nA2, $04, $04, nRst
	dc.b nA2, nRst, $18, nA2, $04, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $04, nA3
	dc.b nG2, $03, nRst, $01, nG2, $03, nRst, $05
	dc.b nG2, $03, nRst, $15, nE2, $04, nE3, nE2
	dc.b nRst, $10, nCs3, $04, $04, nRst, nCs3, nRst
	dc.b $1C, nCs3, $04, nCs4, $08, nCs3, $04, nCs4
	dc.b nC3, nC3, nRst, nC3, nRst, $30, nB2, $04
	dc.b $04, nRst, nB2, nRst, $18, nB2, $04, nB3
	dc.b $03, nRst, $05, nB3, $03, nRst, $01, nB2
	dc.b $04, nB3, nA2, $03, nRst, $01, nA2, $03
	dc.b nRst, $05, nA2, $03, nRst, $15, nA2, $04
	dc.b nA3, nA2, nRst, $10, nB2, $04, $04, nRst
	dc.b nB2, nRst, $1C, nB2, $04, nB3, $08, nB2
	dc.b $04, nB3, nBb2, nBb2, nRst, nBb2, nRst, $30
	dc.b nA2, $04, $04, nRst, nA2, nRst, $18, nA2
	dc.b $04, nA3, $03, nRst, $05, nA3, $03, nRst
	dc.b $01, nA2, $04, nA3, nG2, $03, nRst, $01
	dc.b nG2, $03, nRst, $05, nG2, $03, nRst, $15
	dc.b nE2, $04, nE3, nE2, nRst, $08, nE2, $04
	dc.b nFs2, nG2, $03, nRst, $01, nG2, $03, nRst
	dc.b $05, nG2, $03, nRst, $1D, nG2, $04, nG3
	dc.b $08, nG2, $04, nG3, nD3, $03, nRst, $01
	dc.b nD3, $03, nRst, $05, nD3, $03, nRst, $31
	dc.b nA2, $03, nRst, $01, nA2, $03, nRst, $05
	dc.b nA2, $03, nRst, $19, nA2, $03, nRst, $01
	dc.b nA3, $03, nRst, $05, nA3, $03, nRst, $01
	dc.b nA2, $03, nRst, $01, nA3, $03, nRst, $01
	dc.b nB2, $0C, nCs3, nD3, nCs3, nB2, $08, nA2
	dc.b nG3, $04, nG2, $03, nRst, $05, nG2, $04
	dc.b nRst, $14, nG2, $04, nG3, nG2, nG3
	ssDetune	$F1
	dc.b sHold, nAb3, $01
	ssDetune	$FD
	dc.b sHold, nA3, $02
	ssDetune	$00
	dc.b sHold, nG3, $05, nG2, $04, nD3, $03, nRst
	dc.b $01, nD2, $03, nRst, $05, nD2, $03, nRst
	dc.b $1D, nD2, $03, nRst, $11, nA2, $03, nRst
	dc.b $01, nA2, $03, nRst, $05, nA2, $03, nRst
	dc.b $19, nA2, $03, nRst, $01, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $03, nRst
	dc.b $01, nA3, $03, nRst, $01, nFs2, $03, nRst
	dc.b $01, nFs2, $03, nRst, $05, nFs2, $08, nRst
	dc.b nFs2, $04, nBb2, $03, nRst, $01, nBb2, $03
	dc.b nRst, $05, nBb2, $07, nRst, $0D
	sJump		Segapede_Jump4

Segapede_FM5:
	sPatFM		$04
	dc.b nRst, $04

Segapede_Jump5:
	dc.b nRst, $7F, nRst, $7F, nRst, $02, nAb4, $38
	dc.b nFs4, $04, nE4, nEb4, $38, nE4, $04, nFs4
	dc.b nAb4, $38, nA4, $04, nAb4, nAb4, $18, nFs4
	dc.b $20, nE4, $08, nD4, $2C, nFs3, $04, nD4
	dc.b nFs3, nCs4, $05
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$EB
	dc.b sHold, nD4
	ssDetune	$F4
	dc.b sHold, $01
	ssDetune	$F5
	dc.b sHold, $01
	ssDetune	$04
	dc.b sHold, nCs4
	ssDetune	$00
	dc.b sHold, $3E, nFs4, $38, nG4, $04, nFs4, nFs4
	dc.b $18, nE4, $24, nRst, $04, nG4, $33, nRst
	dc.b $01, nB4, $04, nA4, nG4, nFs4, $0C, nD4
	dc.b nA3, $1C, nA4, $04, nG4, nFs4, nE4, $0C
	dc.b nCs4, nA3, $1C, nG4, $04, nFs4, nE4, nD4
	dc.b $0C, nE4, nFs4, nE4, nD4, $08, nCs4, nB3
	dc.b $0C, nD4, nG4, $1B, nRst, $01, nB4, $04
	dc.b nA4, nG4, nFs4, $0C, nD4, nA3, $1C, nA4
	dc.b $04, nG4, nFs4, nE4, $0C, nCs4, nA3, $18
	dc.b nE4, $04, nFs4, nG4, $08, nFs4, $40
	sJump		Segapede_Jump5

Segapede_FM6:
	sPatFM		$05
	dc.b nRst, $04

Segapede_Jump6:
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $10
	dc.b nRst, $70, nC4, $10, nRst, $70, nA3, $10
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $08
	dc.b nRst, $78, nD4, $10, nRst, $7F, nRst, $71
	dc.b nD3, $10, nRst, $7F, nRst, $01
	sJump		Segapede_Jump6

Segapede_PSG1:
	dc.b nRst

Segapede_Loop7:
	dc.b $6B
	sLoop		$00, $09, Segapede_Loop7
	dc.b nRst, $01

Segapede_Loop8:
	dc.b nB1, $01, nRst, $03, nB1, $02, nRst, $06
	sLoop		$00, $03, Segapede_Loop8
	dc.b nB1, $01, nRst, $03, nB1, $01, nRst, $07
	dc.b nB1, $03, nRst, $05, nBb1, $02, nRst, $7F
	dc.b nRst, $47

Segapede_Loop9:
	dc.b nEb2, $01, nRst, $03, nEb2, $02, nRst, $06
	sLoop		$00, $03, Segapede_Loop9
	dc.b nCs2, $01, nRst, $03, nCs2, $01, nRst, $07
	dc.b nB1, $03, nRst, $05, nBb1, $02, nRst

Segapede_Loop10:
	dc.b $45
	sLoop		$00, $0E, Segapede_Loop10
	sJump		Segapede_Loop8

Segapede_DAC:
	sStop

Segapede_Patches:

	; Patch $00
	; $35
	; $21, $31, $20, $14,	$8F, $9B, $95, $94
	; $07, $05, $00, $00,	$0A, $02, $02, $02
	; $45, $36, $17, $08,	$10, $80, $88, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$02, $02, $03, $01
	spMultiple	$01, $00, $01, $04
	spRateScale	$02, $02, $02, $02
	spAttackRt	$0F, $15, $1B, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $00, $05, $00
	spSustainLv	$04, $01, $03, $00
	spDecayRt	$0A, $02, $02, $02
	spReleaseRt	$05, $07, $06, $08
	spTotalLv	$10, $08, $00, $00

	; Patch $01
	; $37
	; $53, $04, $31, $01,	$54, $58, $5B, $14
	; $17, $17, $1B, $12,	$08, $05, $06, $16
	; $8A, $BB, $AB, $6C,	$9C, $85, $80, $86
	spAlgorithm	$07
	spFeedback	$06
	spDetune	$05, $03, $00, $00
	spMultiple	$03, $01, $04, $01
	spRateScale	$01, $01, $01, $00
	spAttackRt	$14, $1B, $18, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $1B, $17, $12
	spSustainLv	$08, $0A, $0B, $06
	spDecayRt	$08, $06, $05, $16
	spReleaseRt	$0A, $0B, $0B, $0C
	spTotalLv	$1C, $00, $05, $06

	; Patch $02
	; $35
	; $21, $31, $20, $14,	$8F, $9B, $95, $94
	; $07, $05, $00, $00,	$0A, $02, $02, $02
	; $45, $36, $17, $08,	$10, $80, $88, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$02, $02, $03, $01
	spMultiple	$01, $00, $01, $04
	spRateScale	$02, $02, $02, $02
	spAttackRt	$0F, $15, $1B, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $00, $05, $00
	spSustainLv	$04, $01, $03, $00
	spDecayRt	$0A, $02, $02, $02
	spReleaseRt	$05, $07, $06, $08
	spTotalLv	$10, $08, $00, $00

	; Patch $03
	; $02
	; $00, $05, $02, $00,	$D3, $DF, $DF, $9F
	; $05, $0A, $06, $07,	$00, $00, $12, $00
	; $2A, $8F, $5A, $0A,	$1D, $14, $27, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $05, $00
	spRateScale	$03, $03, $03, $02
	spAttackRt	$13, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $06, $0A, $07
	spSustainLv	$02, $05, $08, $00
	spDecayRt	$00, $12, $00, $00
	spReleaseRt	$0A, $0A, $0F, $0A
	spTotalLv	$1D, $27, $14, $00

	; Patch $04
	; $05
	; $00, $0F, $04, $00,	$1F, $1D, $14, $1B
	; $08, $07, $04, $04,	$07, $08, $06, $1F
	; $04, $58, $05, $77,	$00, $85, $85, $85
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $04, $0F, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $14, $1D, $1B
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $04, $07, $04
	spSustainLv	$00, $00, $05, $07
	spDecayRt	$07, $06, $08, $1F
	spReleaseRt	$04, $05, $08, $07
	spTotalLv	$00, $05, $05, $05

	; Patch $05
	; $02
	; $00, $05, $02, $00,	$D3, $DF, $DF, $9F
	; $05, $0A, $06, $07,	$00, $00, $12, $00
	; $2A, $8F, $5A, $0A,	$1D, $14, $27, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $05, $00
	spRateScale	$03, $03, $03, $02
	spAttackRt	$13, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $06, $0A, $07
	spSustainLv	$02, $05, $08, $00
	spDecayRt	$00, $12, $00, $00
	spReleaseRt	$0A, $0A, $0F, $0A
	spTotalLv	$1D, $27, $14, $00

	; Patch $06
	; $00
	; $13, $71, $3B, $71,	$53, $5B, $1D, $1F
	; $01, $03, $0F, $00,	$1B, $1D, $1F, $0D
	; $30, $03, $E3, $0F,	$06, $0C, $1F, $8F
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$01, $03, $07, $07
	spMultiple	$03, $0B, $01, $01
	spRateScale	$01, $00, $01, $00
	spAttackRt	$13, $1D, $1B, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $0F, $03, $00
	spSustainLv	$03, $0E, $00, $00
	spDecayRt	$1B, $1F, $1D, $0D
	spReleaseRt	$00, $03, $03, $0F
	spTotalLv	$06, $1F, $0C, $0F

	; Patch $07
	; $3D
	; $3B, $72, $66, $21,	$DC, $9F, $5E, $9D
	; $12, $0B, $18, $08,	$0D, $0C, $17, $11
	; $4F, $1B, $1B, $1B,	$11, $90, $8C, $8F
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$03, $06, $07, $02
	spMultiple	$0B, $06, $02, $01
	spRateScale	$03, $01, $02, $02
	spAttackRt	$1C, $1E, $1F, $1D
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $18, $0B, $08
	spSustainLv	$04, $01, $01, $01
	spDecayRt	$0D, $17, $0C, $11
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$11, $0C, $10, $0F
