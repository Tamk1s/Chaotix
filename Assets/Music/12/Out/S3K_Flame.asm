SRB2_INV_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	SRB2_INV_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$03, $33
	sHeaderDAC	SRB2_INV_DAC
	sHeaderFM	SRB2_INV_FM1, $00, $10
	sHeaderFM	SRB2_INV_FM2, $00, $0F
	sHeaderFM	SRB2_INV_FM3, $00, $0B
	sHeaderFM	SRB2_INV_FM4, $00, $0B
	sHeaderFM	SRB2_INV_FM5, $00, $0B
	sHeaderFM	SRB2_INV_FM6, $00, $0B
	sHeaderPSG	SRB2_INV_PSG1, $0C, $05, $00, v00
	sHeaderPSG	SRB2_INV_PSG2, $0C, $03, $00, $2B
	sHeaderPSG	SRB2_INV_PSG3, $0C, $03, $00, $2D

SRB2_INV_FM1:
	sPatFM		$00

SRB2_INV_Loop1:
	sPan		spRight
	dc.b nCs5, $01, nRst
	sPan		spLeft
	dc.b nCs6, nAb5, nRst
	sPan		spRight
	dc.b nE5
	sPan		spLeft
	dc.b nCs5, nRst
	sPan		spRight
	dc.b nFs5, nE5, nRst
	sPan		spLeft
	dc.b nAb5
	sPan		spRight
	dc.b nB5, nRst
	sPan		spLeft
	dc.b nCs6, nAb5, nRst
	sPan		spRight
	dc.b nCs5
	sPan		spLeft
	dc.b nAb4, nRst
	sPan		spRight
	dc.b nFs5, nE5, nRst
	sPan		spLeft
	dc.b nB4
	sLoop		$00, $0D, SRB2_INV_Loop1
	sPan		spCenter
	saVolFM		$04
	dc.b nCs5, $03
	sStop

SRB2_INV_FM2:
	sPatFM		$01
	sPan		spCenter
	dc.b nRst, $18

SRB2_INV_Loop3:
	dc.b nCs3, $01, nRst, $02

SRB2_INV_Loop2:
	dc.b nCs3, $05, nRst, $01
	sLoop		$00, $03, SRB2_INV_Loop2
	dc.b nFs3, $06, $05, nRst, $01, nE3, $05, nRst
	dc.b $01, nE3, $05, nRst, $01, nE3, $03
	sLoop		$01, $05, SRB2_INV_Loop3
	dc.b nCs3, $01, nRst, $02, nCs3, $05, nRst, $01
	dc.b nCs3, $05, nRst, $01, nCs3, $03, nE3, nFs3
	dc.b $06, $03, nAb3, nA3, $05, nRst, $01, nAb3
	dc.b $08, nRst, $01, nCs3, $05
	sStop

SRB2_INV_FM3:
	sPan		spLeft
	sPatFM		$00
	dc.b nB5, $17, nRst, $01, nCs5, $55, sHold, $0A
	dc.b nRst, $01, nAb5, $55, sHold, $0A, nRst, $01
	dc.b nB5, $45, nFs5, $0B, nRst, $01, nE5, $0E
	dc.b nRst, $01, nCs5, $05
	sStop

SRB2_INV_FM4:
	sPan		spRight
	sPatFM		$00
	dc.b nE5, $17, nRst, $55, nRst, $0C, nCs5, $55
	dc.b sHold, $0A, nRst, $01, nAb5, $45, nCs5, $0B
	dc.b nRst, $01, nB4, $0E
	sStop

SRB2_INV_FM5:
	sPan		spLeft
	sPatFM		$02
	dc.b nRst, $18

SRB2_INV_Loop5:
	dc.b nCs3, $01, nRst, $02

SRB2_INV_Loop4:
	dc.b nCs3, $05, nRst, $01
	sLoop		$00, $03, SRB2_INV_Loop4
	dc.b nCs3, $06, $05, nRst, $01, nB2, $05, nRst
	dc.b $01, nB2, $05, nRst, $01, nB2, $03
	sLoop		$01, $06, SRB2_INV_Loop5
	dc.b nCs3, $05
	sStop

SRB2_INV_FM6:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $18

SRB2_INV_Loop7:
	dc.b nAb2, $01, nRst, $02

SRB2_INV_Loop6:
	dc.b nAb2, $05, nRst, $01
	sLoop		$00, $03, SRB2_INV_Loop6
	dc.b nAb2, $06, $05, nRst, $01, nFs2, $05, nRst
	dc.b $01, nFs2, $05, nRst, $01, nFs2, $03
	sLoop		$01, $05, SRB2_INV_Loop7
	dc.b nAb2, $01, nRst, $02

SRB2_INV_Loop8:
	dc.b nAb2, $05, nRst, $01
	sLoop		$00, $03, SRB2_INV_Loop8
	dc.b nFs2, $06, $05, nRst, $01, nE2, $05, nRst
	dc.b $01, nE2, $05, nRst, $01, nE2, $03, nAb2
	dc.b $05
	sStop

SRB2_INV_PSG1:
	dc.b nCs2, $01, nRst, nCs3, nAb2, nRst, nE2, nCs2
	dc.b nRst, nFs2, nE2, nRst, nAb2, nB2, nRst, nCs3
	dc.b nAb2, nRst, nCs2, nAb1, nRst, nFs2, nE2, nRst
	dc.b nB1
	sLoop		$00, $0D, SRB2_INV_PSG1
	dc.b nCs2, $03
	sStop

SRB2_INV_PSG2:
	dc.b nB2, $17, nRst, $01, nCs2, $55, sHold, $0A
	dc.b nRst, $01, nAb2, $55, sHold, $0A, nRst, $01
	dc.b nB2, $45, nFs2, $0B, nRst, $01, nE2, $0E
	sStop

SRB2_INV_PSG3:
	dc.b nRst, $18

SRB2_INV_Loop10:
	dc.b nCs0, $01, nRst, $02

SRB2_INV_Loop9:
	dc.b nCs0, $05, nRst, $01
	sLoop		$00, $03, SRB2_INV_Loop9
	dc.b nCs0, $06, $05, nRst, $01, nC0, $05, nRst
	dc.b $01, nC0, $05, nRst, $01, nC0, $03
	sLoop		$01, $06, SRB2_INV_Loop10
	dc.b nCs0, $05
	sStop

SRB2_INV_DAC:
	sStop

SRB2_INV_Patches:

	; Patch $00
	; $2E
	; $02, $01, $71, $31,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $00, $0A, $0A, $0A,	$1C, $84, $84, $84
	spAlgorithm	$06
	spFeedback	$05
	spDetune	$00, $07, $00, $03
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $0A, $0A, $0A
	spTotalLv	$1C, $04, $04, $04

	; Patch $01
	; $3D
	; $00, $30, $70, $00,	$1F, $1F, $1F, $11
	; $0B, $09, $00, $1F,	$00, $00, $00, $00
	; $FF, $F9, $0F, $07,	$1A, $80, $90, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $07, $03, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0B, $00, $09, $1F
	spSustainLv	$0F, $00, $0F, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $09, $07
	spTotalLv	$1A, $10, $00, $00

	; Patch $02
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1E, $12, $1D, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $06, $02, $02
	spMultiple	$03, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $0B
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $08, $08
	spTotalLv	$1E, $1D, $12, $00
