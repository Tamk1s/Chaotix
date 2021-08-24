SB_City_Header:
	sHeaderInit
	sHeaderPatch	SB_City_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $08
	sHeaderDAC	SB_City_DAC
	sHeaderFM	SB_City_FM1, $00, $10
	sHeaderFM	SB_City_FM2, $00, $10
	sHeaderFM	SB_City_FM3, $00, $1D
	sHeaderFM	SB_City_FM4, $00, $10
	sHeaderFM	SB_City_FM5, $00, $10
	sHeaderFM	SB_City_FM6, $00, $0F
	sHeaderPSG	SB_City_PSG1, $00, $05, $00, v04
	sHeaderPSG	SB_City_PSG2, $00, $05, $00, v04
	sHeaderPSG	SB_City_PSG3, $00, $05, $00, v06

SB_City_FM1:
	sPatFM		$00

SB_City_Jump1:
	sPan		spRight

SB_City_Loop1:
	dc.b nC2, $06, nBb1, $09, nRst, $03, nC2, nRst
	dc.b nG1, $06, nEb1, $09, nRst, $03, nEb1, nRst
	dc.b nF1, $06, nFs1, $09, nRst, $03, nF1, nRst
	dc.b nEb1, $06, nC1, $09, $03, $03, nRst
	sLoop		$00, $14, SB_City_Loop1
	sJump		SB_City_Jump1

SB_City_FM2:
	sPatFM		$01
	sPan		spCenter
	dc.b nRst, $0C, nC4, $03, nRst, nC4, $06, nEb4
	dc.b nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst
	dc.b nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst
	dc.b $0C, nC4, $03, nRst, nC4, $06, nEb4, nF4
	dc.b nRst, nF4, $03, nFs4, nF4, $09, nRst, nEb4
	dc.b nRst, $03, nG4, $09, nRst, $15, nC4, $03
	dc.b nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03
	dc.b nFs4, nF4, $09, nRst, nEb4, $0C, nRst, $12
	dc.b nEb4, $03, nF4, $02, nEb4, $03, nRst, $04
	dc.b nBb3, $06, nC4, nRst, nEb4, $09, nRst, $03
	dc.b nF4, $06, nRst, $1E, nG4, $06, nRst, $7F
	dc.b $7F, $7F, $1B

SB_City_Loop2:
	dc.b nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst
	dc.b nF4, $03, nFs4, nF4, $09, nRst, nEb4, nRst
	dc.b $03, nF4, $06, nRst, nBb3, nRst, $0C, nC4
	dc.b $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4
	dc.b $03, nFs4, nF4, $09, nRst, nEb4, nRst, $03
	dc.b nG4, $09, nRst, $15, nC4, $03, nRst, nC4
	dc.b $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4
	dc.b $09, nRst, nEb4, $0C, nRst, $12, nEb4, $03
	dc.b nF4, $02, nEb4, $03, nRst, $04, nBb3, $06
	dc.b nC4, nRst, nEb4, $09, nRst, $03, nF4, $06
	dc.b nRst, $1E, nG4, $06, nRst, $18
	sLoop		$00, $02, SB_City_Loop2
	dc.b nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4
	dc.b nRst, nF4, $03, nFs4, nF4, $0C, nRst, $06
	dc.b nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b $09, nBb4, $03, nRst, $06, nF4, $03, nFs4
	dc.b nF4, $0C, nRst, $30, nAb3, $03, nBb3, nB3
	dc.b nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21
	dc.b nEb4, $03, nF4, nG4, $09, nBb4, $03, nRst
	dc.b $06, nF4, $03, nFs4, nF4, $0C, nRst, $24
	sJump		SB_City_FM2

SB_City_FM3:
	sPan		spLeft
	sPatFM		$01
	dc.b nRst, $12, nC4, $03, nRst, nC4, $06, nEb4
	dc.b nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst
	dc.b nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst
	dc.b $0C, nC4, $03, nRst, nC4, $06, nEb4, nF4
	dc.b nRst, nF4, $03, nFs4, nF4, $09, nRst, nEb4
	dc.b nRst, $03, nG4, $09, nRst, $15, nC4, $03
	dc.b nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03
	dc.b nFs4, nF4, $09, nRst, nEb4, $0C, nRst, $12
	dc.b nEb4, $03, nF4, $02, nEb4, $03, nRst, $04
	dc.b nBb3, $06, nC4, nRst, nEb4, $09, nRst, $03
	dc.b nF4, $06, nRst, $1E, nG4, $06, nRst, $7F
	dc.b $7F, $7F, $1B

SB_City_Loop3:
	dc.b nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst
	dc.b nF4, $03, nFs4, nF4, $09, nRst, nEb4, nRst
	dc.b $03, nF4, $06, nRst, nBb3, nRst, $0C, nC4
	dc.b $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4
	dc.b $03, nFs4, nF4, $09, nRst, nEb4, nRst, $03
	dc.b nG4, $09, nRst, $15, nC4, $03, nRst, nC4
	dc.b $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4
	dc.b $09, nRst, nEb4, $0C, nRst, $12, nEb4, $03
	dc.b nF4, $02, nEb4, $03, nRst, $04, nBb3, $06
	dc.b nC4, nRst, nEb4, $09, nRst, $03, nF4, $06
	dc.b nRst, $1E, nG4, $06, nRst, $18
	sLoop		$00, $02, SB_City_Loop3
	dc.b nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4
	dc.b nRst, nF4, $03, nFs4, nF4, $0C, nRst, $06
	dc.b nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b $09, nBb4, $03, nRst, $06, nF4, $03, nFs4
	dc.b nF4, $0C, nRst, $30, nAb3, $03, nBb3, nB3
	dc.b nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21
	dc.b nEb4, $03, nF4, nG4, $09, nBb4, $03, nRst
	dc.b $06, nF4, $03, nFs4, nF4, $0C, nRst, $1E
	sJump		SB_City_FM3

SB_City_FM4:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $7F, $7F, $7F, $03, nC3, $06, nRst
	dc.b nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nRst
	dc.b nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3, nRst
	dc.b nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nBb2
	dc.b nRst, nFs2, nRst, nFs2, nRst, nFs2, nC3, nRst
	dc.b nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nRst
	dc.b nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3, nRst
	dc.b nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nBb2
	dc.b nRst, nF3, nRst, nEb3, nRst, $0C, nC3, $06
	dc.b nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3
	dc.b nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3
	dc.b nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3
	dc.b nBb2, nRst, nFs2, nRst, nFs2, nRst, nFs2, nC3
	dc.b nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3
	dc.b nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3
	dc.b nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3
	dc.b nBb2, nRst, nFs2, nRst, nEb2, nRst, $0C, nC3
	dc.b $06, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2
	dc.b nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2
	dc.b nC3, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2
	dc.b nC3, nBb2, nRst, nFs2, nRst, nFs2, nRst, nFs2
	dc.b nC3, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2
	dc.b nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2
	dc.b nC3, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2
	dc.b nC3, nBb2, nRst, nF3, nRst, nEb3, nRst, $7F
	dc.b $7F, $7F, $0F
	sJump		SB_City_FM4

SB_City_FM5:
	sPan		spLeft
	sPatFM		$03
	dc.b nRst, $7F, $7F, $7F, $03

SB_City_Loop4:
	dc.b nC2, $06, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b nBb1, nC2, nRst, nBb1, nEb2, nRst, nEb2, nRst
	dc.b nBb1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b nBb1, nC2, nBb1, nRst, nFs1, nRst, nFs1, nRst
	dc.b nFs1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b nBb1, nC2, nRst, nBb1, nEb2, nRst, nEb2, nRst
	dc.b nBb1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b nBb1, nC2, nBb1, nRst, nF2, nRst, nEb2, nRst
	dc.b $7F, $7F, $7F, $0F
	sLoop		$00, $02, SB_City_Loop4
	sJump		SB_City_FM5

SB_City_FM6:
	sPatFM		$04

SB_City_Jump2:
	sPan		spCenter
	dc.b nG4, $21, nRst, $0F, nF4, $21, nRst, $0F
	dc.b nBb4, $15, nRst, $03, nG4, $15, nRst, $03
	dc.b nEb4, $27, nRst, $09, nG4, $21, nRst, $0F
	dc.b nF4, $21, nRst, $0F, nBb4, $15, nRst, $03
	dc.b nG4, $15, nRst, $03, nEb4, $27, nRst, $57
	dc.b nF3, $03, nG3, nBb3, nC4, nEb4, nRst, nEb4
	dc.b $06, nF4, $2A, nRst, $1E, nF4, $03, nFs4
	dc.b nF4, nEb4, nBb3, nRst, nBb3, $2A, nF4, $03
	dc.b nE4, nEb4, $1E, nD4, $03, nEb4, nD4, nCs4
	dc.b nG3, nRst, nC4, $27, nRst, $03, nG3, nFs3
	dc.b nF3, $06, nG3, nBb3, nC4, nEb4, nF4, nRst
	dc.b $0C

SB_City_Loop5:
	dc.b nG4, $21, nRst, $0F, nF4, $21, nRst, $0F
	dc.b nBb4, $15, nRst, $03, nG4, $15, nRst, $03
	dc.b nEb4, $27, nRst, $09
	sLoop		$00, $04, SB_City_Loop5

SB_City_Loop6:
	dc.b nG4, $03, nRst, $06, nG4, $03, nRst, $06
	saVolFM		$04
	dc.b nG4, $03, nRst
	saVolFM		$05
	dc.b nG4, nRst, $06, nG4, $03, nRst, $06
	saVolFM		$04
	dc.b nG4, $03, nRst, nG4, nRst, $06
	saVolFM		$0A
	dc.b nG4, $03, nRst, $06, nG4, $03, nRst
	saVolFM		$14
	dc.b nG4, nRst, $06, nG4, $03, nRst, $06
	saVolFM		$15
	dc.b nG4, $03, nRst
	saVolFM		$C0
	dc.b nG4, nRst, nG4, nRst, $06, nG4, $03, nRst
	dc.b $06
	saVolFM		$09
	dc.b nG4, $03, nRst, $06
	saVolFM		$0B
	dc.b nG4, $03, nRst, $06
	saVolFM		$06
	dc.b nG4, $03, nRst, nG4, nRst
	saVolFM		$0C
	dc.b nG4, nRst, nG4, nRst, $06
	saVolFM		$0B
	dc.b nG4, $03, nRst, $06, nG4, $03, nRst, nG4
	dc.b nRst, nG4, nRst
	saVolFM		$CF
	sLoop		$00, $02, SB_City_Loop6
	sJump		SB_City_Jump2

SB_City_PSG1:
	dc.b nEb1, $27, nRst, $09, nEb1, $24, nRst, $0C
	dc.b nG1, $12, nRst, $06, nD1, $15, nRst, $03
	dc.b nCs1, $24, nRst, $0C, nEb1, $27, nRst, $09
	dc.b nEb1, $24, nRst, $0C, nG1, $12, nRst, $06
	dc.b nD1, $15, nRst, $03, nCs1, $24, nRst, $6C
	dc.b nBb0, $06, nC1, $33, nRst, $27, nG0, $2D
	dc.b nRst, $03, nC1, $21, nRst, $0F, nBb0, $2A
	dc.b nRst, $24, nEb1, $06

SB_City_Loop7:
	dc.b nRst, $0C, nEb1, $27, nRst, $09, nEb1, $24
	dc.b nRst, $0C, nG1, $12, nRst, $06, nD1, $15
	dc.b nRst, $03, nCs1, $24
	sLoop		$00, $04, SB_City_Loop7
	dc.b nRst, $0C

SB_City_Loop8:
	dc.b nEb1, $03, nRst, $06, nEb1, $03, nRst, $06
	dc.b nEb1, $03, nRst
	saVolPSG	$03
	dc.b nEb1, nRst, $06, nEb1, $03, nRst, $06
	saVolPSG	$02
	dc.b nEb1, $03, nRst, nEb1, nRst, $06
	saVolPSG	$04
	dc.b nEb1, $03, nRst, $06, nEb1, $03, nRst
	saVolPSG	$01
	dc.b nEb1, nRst, $06, nEb1, $03, nRst, $0C
	saVolPSG	$F6
	dc.b nCs1, $03, nRst, nCs1, nRst, $06, nCs1, $03
	dc.b nRst, $06
	saVolPSG	$03
	dc.b nCs1, $03, nRst, $06
	saVolPSG	$05
	dc.b nCs1, $03, nRst, $06
	saVolPSG	$01
	dc.b nCs1, $03, nRst, nCs1, nRst
	saVolPSG	$01
	dc.b nCs1, nRst, nRst, nRst, $15, $03, $03, $03
	dc.b $03
	saVolPSG	$F6
	sLoop		$00, $02, SB_City_Loop8
	sJump		SB_City_PSG1

SB_City_PSG2:
	dc.b nAb0, $2A, nRst, $06, nBb0, $27, nRst, $09
	dc.b nC1, $15, nRst, $03, nBb0, $12, nRst, $06
	dc.b nBb0, $27, nRst, $09, nAb0, $2A, nRst, $06
	dc.b nBb0, $27, nRst, $09, nC1, $15, nRst, $03
	dc.b nBb0, $12, nRst, $06, nBb0, $27, nRst, $69
	dc.b nG0, $24, nRst, $3C, nC1, $30, nG0, $24
	dc.b nRst, $0C, nG0, $2A, nRst, $24, nC1, $06
	dc.b nRst, $0C, nAb0, $2A, nRst, $06, nBb0, $27
	dc.b nRst, $09, nC1, $15, nRst, $03, nBb0, $12
	dc.b nRst, $06, nBb0, $27, nRst, $09, nAb0, $2A
	dc.b nRst, $06, nBb0, $27, nRst, $09, nC1, $15
	dc.b nRst, $03, nBb0, $12, nRst, $06, nBb0, $27
	dc.b nRst, $7F, $1A, nBb0, $27, nRst, $7F, $1A
	dc.b nBb0, $27, nRst, $09

SB_City_Loop9:
	dc.b nAb0, $03, nRst, $06, nAb0, $03, nRst, $06
	dc.b nAb0, $03, nRst
	saVolPSG	$03
	dc.b nAb0, nRst, $06, nAb0, $03, nRst, $06
	saVolPSG	$02
	dc.b nAb0, $03, nRst, nAb0, nRst, $06
	saVolPSG	$04
	dc.b nAb0, $03, nRst, $06, nAb0, $03, nRst
	saVolPSG	$01
	dc.b nAb0, nRst, $06, nAb0, $03, nRst, $0C
	saVolPSG	$F6
	dc.b nAb0, $03, nRst, nAb0, nRst, $06, nAb0, $03
	dc.b nRst, $06
	saVolPSG	$03
	dc.b nAb0, $03, nRst, $06
	saVolPSG	$05
	dc.b nAb0, $03, nRst, $06
	saVolPSG	$01
	dc.b nAb0, $03, nRst, nAb0, nRst
	saVolPSG	$01
	dc.b nAb0, nRst, nRst, nRst, $15, $03, $03, $03
	dc.b $03
	saVolPSG	$F6
	sLoop		$00, $02, SB_City_Loop9
	sJump		SB_City_PSG2

SB_City_PSG3:
	dc.b nC0, $06, $09, nRst

SB_City_Loop10:
	dc.b $03, nC0, nRst
	sLoop		$00, $03, SB_City_PSG3

SB_City_Loop11:
	dc.b nC0, $06, $09
	sLoop		$01, $02, SB_City_Loop10
	dc.b nRst, $03, nC0, nRst
	sLoop		$02, $13, SB_City_Loop11
	dc.b nC0, $06, $09, $03, $03, nRst
	sJump		SB_City_PSG3

SB_City_DAC:
	sStop

SB_City_Patches:

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

	; Patch $01
	; $2A
	; $01, $08, $06, $04,	$53, $1F, $1F, $50
	; $12, $14, $11, $1F,	$00, $00, $00, $00
	; $29, $15, $36, $0B,	$17, $33, $1C, $00
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

	; Patch $02
	; $3B
	; $3E, $42, $41, $33,	$DE, $14, $1E, $14
	; $14, $0F, $0F, $00,	$01, $00, $00, $00
	; $36, $25, $26, $29,	$14, $13, $0A, $00
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $04, $04, $03
	spMultiple	$0E, $01, $02, $03
	spRateScale	$03, $00, $00, $00
	spAttackRt	$1E, $1E, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$14, $0F, $0F, $00
	spSustainLv	$03, $02, $02, $02
	spDecayRt	$01, $00, $00, $00
	spReleaseRt	$06, $06, $05, $09
	spTotalLv	$14, $0A, $13, $00

	; Patch $03
	; $3A
	; $01, $07, $31, $71,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $06,	$00, $00, $00, $00
	; $1F, $FF, $1F, $2F,	$18, $28, $27, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $03, $00, $07
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $06
	spSustainLv	$01, $01, $0F, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $04
	; $3A
	; $71, $0C, $33, $01,	$1C, $16, $1D, $1F
	; $04, $06, $04, $08,	$00, $01, $03, $00
	; $16, $17, $16, $A6,	$25, $2F, $25, $00
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
