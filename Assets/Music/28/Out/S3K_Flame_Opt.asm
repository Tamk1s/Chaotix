
Target	EQU	$40000
	smpsHeaderVoice	Nepu_DimTrip_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$02, $2B
	sHeaderDAC	Nepu_DimTrip_DAC
	smpsHeaderFM	Nepu_DimTrip_FM1, Target, $00, $1E
	smpsHeaderFM	Nepu_DimTrip_FM2, Target, $00, $1E
	smpsHeaderFM	Nepu_DimTrip_FM3, Target, $00, $1E
	smpsHeaderFM	Nepu_DimTrip_FM4, Target, $00, $1E
	smpsHeaderFM	Nepu_DimTrip_FM5, Target, $00, $1E
	smpsHeaderFM	Nepu_DimTrip_FM6, Target, $00, $1E
	smpsHeaderPSG	Nepu_DimTrip_PSG1, Target, $0C, $08, $00, $00
	smpsHeaderPSG	Nepu_DimTrip_PSG2, Target, $0C, $08, $00, $00
	smpsHeaderPSG	Nepu_DimTrip_PSG3, Target, $0C, $08, $00, $00

Nepu_DimTrip_FM1:
	smpsFMvoice		$00
	dc.b nRst, $10, nB4, $08, nB3, $04, nB4, nB3
	dc.b nBb4, nB4, nB3, nB3, nCs5, nB4, nB3, nBb4
	dc.b nB3, nB4, nB3, nB4, $08, nB3, $04, nB4
	dc.b nB3, nBb4, nB4, nB3, nB3, nCs5, nB4, nB3
	dc.b nCs5, nB3, nEb5, nB3, nB4, $08, $04, nBb4
	dc.b nB3, nAb4, nFs4, nB3, nE4, $08, nB3, $04
	dc.b nEb4, nB3, nCs4, nEb4, nB3, nB4, $08, nB3
	dc.b $04, nA4, nB3, nG4, nFs4, nB3, nA4, $08
	dc.b nB3, $04, nB4, nB3, nCs5, nB3, nRst, nB4
	dc.b $08, nB3, $04, nB4, nB3, nBb4, nB3, nB4
	dc.b nB3, nCs5, nB4, nB3, nBb4, nB3, nB4, nB3
	dc.b nB4, $08, nB3, $04, nB4, nB3, nBb4, nB3
	dc.b nB4, nB3, nCs5, nB4, nB3, nCs5, nB3, nEb5
	dc.b nB3, nB4, $08, $04, nBb4, nB3, nAb4, nFs4
	dc.b nB3, nE4, $08, nB3, $04, nEb4, nB3, nCs4
	dc.b nEb4, nB3, nB4, $08, nB3, $04, nA4, nB3
	dc.b nG4, nFs4, nB3, nA4, $08, nB3, $04, nRst

Nepu_DimTrip_Jump1:
	dc.b nB3, $04, nCs5, nE5, nRst, nEb5, $08, nRst
	dc.b $04, nE5, nRst, nFs5, nE5, nEb5, nB4, $10
	dc.b nRst, $7F, nRst, $79
	smpsFMvoice		$04
	dc.b nRst, $04, nG5, $02, nRst, $0E, nA5, $02
	dc.b nRst, $7F, nRst, $67, nFs5, $02, nRst, nFs5
	dc.b nRst, $06, $02, nRst, $06, nE5, $02, nRst
	dc.b $7F, nRst, $6B, nFs5, $02, nRst, nFs5, nRst
	dc.b nFs5, nRst, $7F, nRst, $5B
	smpsFMvoice		$00
	dc.b nRst, $04, nFs4, nB4, nEb5, nE5, nFs5, nAb5
	dc.b $08, nFs5, $04, nE5, nEb5, nCs5, nE5, nCs5
	dc.b nEb5, $10, nRst, $70, nE4, $14, nB4, $0C
	dc.b nFs4, $14, nCs5, $0C, nB4, $10, nRst, nEb5
	dc.b $06, nRst, $02, $04, nCs5, nCs5, nB4, nCs5
	dc.b nRst, nEb5, $08, nB3, $04, nRst, nB3, nBb4
	dc.b nB4, nB3, nB3, nCs5, nB4, nB3, nBb4, nB3
	dc.b nB4, nB3, nB4, $08, nB3, $04, nB4, nB3
	dc.b nBb4, nB4, nB3, nB3, nCs5, nB4, nB3, nCs5
	dc.b nB3, nEb5, nB3, nB4, $08, $04, nBb4, nB3
	dc.b nAb4, nFs4, nB3, nE4, $08, nB3, $04, nEb4
	dc.b nB3, nCs4, nEb4, nB3, nB4, $08, nB3, $04
	dc.b nA4, nB3, nG4, nFs4, nB3, nA4, $08, nB3
	dc.b $04, nB4, nB3, nCs5, nB3, nRst, nB4, $08
	dc.b nB3, $04, nB4, nB3, nBb4, nB3, nB4, nB3
	dc.b nCs5, nB4, nB3, nBb4, nB3, nB4, nB3, nB4
	dc.b $08, nB3, $04, nB4, nB3, nBb4, nB3, nB4
	dc.b nB3, nCs5, nB4, nB3, nCs5, nB3, nEb5, nB3
	dc.b nB4, $08, $04, nBb4, nB3, nAb4, nFs4, nB3
	dc.b nE4, $08, nB3, $04, nEb4, nB3, nCs4, nEb4
	dc.b nB3, nB4, $08, nB3, $04, nA4, nB3, nG4
	dc.b nFs4, nB3, nA4, $08, nB3, $04, nB4
	smpsJump		Nepu_DimTrip_Jump1, Target

Nepu_DimTrip_FM2:
	smpsFMvoice		$00

Nepu_DimTrip_Loop1:
	dc.b nRst, $40
	smpsLoop		$00, $08, Nepu_DimTrip_Loop1, Target

Nepu_DimTrip_Jump2:
	dc.b nRst, $7F, nRst, nRst, $3A
	smpsFMvoice		$05
	dc.b nRst, $04, nG5, $02, nRst, $0E, nA5, $02
	dc.b nRst, $7F, nRst, $67, nFs5, $02, nRst, nFs5
	dc.b nRst, $06, $02, nRst, $06, nE5, $02, nRst
	dc.b $7F, nRst, $6B, nFs5, $02, nRst, nFs5, nRst
	dc.b nFs5, nRst, $7F, nRst, $43
	smpsFMvoice		$08
	dc.b nRst, $18
	smpsFMvoice		$00
	dc.b nRst, $04, nEb4, nFs4, nB4, nCs5, nEb5, nE5
	dc.b $08, nEb5, $04, nCs5, nB4, nBb4, nCs5, nBb4
	dc.b nB4, $10, nRst, $7F, nRst, $51, $06, nRst
	dc.b $02, $04, nBb4, nBb4, nAb4, nBb4, nRst, nB4
	dc.b $08, nB3, $04, nB4, nRst, $7F, nRst, nRst
	dc.b nRst, $63
	smpsJump		Nepu_DimTrip_Jump2, Target

Nepu_DimTrip_FM3:
	smpsFMvoice		$01
	dc.b nRst, $10, nB2, $08

Nepu_DimTrip_Loop2:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop2, Target
	dc.b nF2, $08

Nepu_DimTrip_Loop3:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop3, Target
	dc.b nE2, $08, $04, nRst, $14, $08, $04, nRst
	dc.b $14, nD2, $08, $04, nRst, $14, nA2, $08
	dc.b $04, nRst, $14, nB2, $08

Nepu_DimTrip_Loop4:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop4, Target
	dc.b nF2, $08

Nepu_DimTrip_Loop5:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop5, Target
	dc.b nE2, $08, $04, nRst, $14, $08, $04, nRst
	dc.b $14, nD2, $08, $04, nRst, $14, nA2, $08
	dc.b $04, nRst

Nepu_DimTrip_Jump3:
	dc.b nRst, $10, nB2, nRst, $08, $04, nRst, nB2
	dc.b nRst, $14, nFs2, $0C, nRst, $7F, nRst, $49
	dc.b nE2, $04, nRst, $1C, nG2, $02, nRst, $0E
	dc.b nA2, $02, nRst, $0E, nB1, $02, nRst, $06
	dc.b $02, nRst, $0A, $02, nRst, $06, $02, nRst
	dc.b $2A, $02, nRst, $0A, $02, nRst, $06, $02
	dc.b nRst, $0A, nE2, $04, nFs2, $02, nRst, $06
	dc.b nAb2, $02, nRst, $1E, nFs2, $02, nRst, $1E
	dc.b nE2, $02, nRst, $16, $02, nRst, $0A, nFs2
	dc.b $02, nRst, nE2, nRst, nF2, nRst, nFs2, nRst
	dc.b $06, nE2, $02, nRst, $0A, nEb3, $02, nRst
	dc.b $06, $02, nRst, $12, $02, nRst, $06, nE3
	dc.b $02, nRst, nE3, nRst, $12, nFs2, $02, nRst
	dc.b $1E, nAb2, $02, nRst, $22, nEb2, $02, nRst
	dc.b $0E, $02, nRst, $0A, $02, nRst, $06, nE2
	dc.b $02, nRst, $0A, $02, nRst, $0A, nFs2, $02
	dc.b nRst, $06

Nepu_DimTrip_Loop6:
	dc.b nE2, $02, nRst, nF2, nRst, nFs2, nRst
	smpsLoop		$00, $02, Nepu_DimTrip_Loop6, Target
	dc.b nE2, nRst, nFs2, nRst, nFs2, nRst, nFs2, $08
	dc.b nRst, $0C, nB2, $04, nRst, nB2, nB2, nB2
	dc.b nB2, nB2, nB2, nE2, nRst, nE2, nE2, nE2
	dc.b nE2, nE2, nE2, nEb2, nRst, nEb2, nEb2, nEb2
	dc.b nEb2, nEb2, nEb2, nAb2, nRst, nAb2, nAb2, nAb2
	dc.b nAb2, nAb2, nAb2, nCs3, nRst, nCs3, nCs3, nCs3
	dc.b nCs3, nCs3, nCs3, nFs2, nRst, nFs2, nFs2, nFs2
	dc.b nFs2, nFs2, nFs2, nB2, nRst, nB2, nB2, nB2
	dc.b nB2, nB2, nB2, nBb2, nRst, nBb2, nBb2, nBb2
	dc.b nEb3, nEb3, nEb3, nAb2, nRst, nAb2, nAb2, nAb2
	dc.b nAb2, nAb2, nAb2, nG2, nRst, nG2, nG2, nG2
	dc.b nG2, nG2, nG2, nFs2, nRst, nFs2, nFs2, nFs2
	dc.b nFs2, nFs2, nFs2, nF2, nRst, nF2, nF2, nF2
	dc.b nF2, nF2, nF2, nCs3, nRst, nCs3, nCs3, nCs3
	dc.b nCs3, nCs3, nCs3, nEb3, nRst, nEb3, nEb3, nEb3
	dc.b nEb3, nEb3, nEb3, nE3, nRst, nE3, nE3, nE3
	dc.b nE3, nE3, nE3, nFs2, $02, nRst, $1E, nB2
	dc.b $08

Nepu_DimTrip_Loop7:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop7, Target
	dc.b nF2, $08

Nepu_DimTrip_Loo$8:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loo$8, Target
	dc.b nE2, $08, $04, nRst, $14, $08, $04, nRst
	dc.b $14, nD2, $08, $04, nRst, $14, nA2, $08
	dc.b $04, nRst, $14, nB2, $08

Nepu_DimTrip_Loo$9:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loo$9, Target
	dc.b nF2, $08

Nepu_DimTrip_Loop10:
	dc.b $04, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop10, Target
	dc.b nE2, $08, $04, nRst, $14, $08, $04, nRst
	dc.b $14, nD2, $08, $04, nRst, $14, nA2, $08
	dc.b $04, nRst
	smpsJump		Nepu_DimTrip_Jump3, Target

Nepu_DimTrip_FM4:
	smpsFMvoice		$02
	dc.b nRst, $04, nA2, nA2, nA2, nRst, $08

Nepu_DimTrip_Loop11:
	dc.b nB3, $04, nB2
	smpsLoop		$00, $06, Nepu_DimTrip_Loop11, Target
	dc.b nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop12:
	dc.b nF3, $04, nF2
	smpsLoop		$00, $07, Nepu_DimTrip_Loop12, Target

Nepu_DimTrip_Loop13:
	dc.b nRst, $08, nE3, $04, nE2, nE2, nE2, nE3
	dc.b nE2
	smpsLoop		$00, $02, Nepu_DimTrip_Loop13, Target
	dc.b nRst, $08, nD3, $04, nD2, nD2, nD2, nD3
	dc.b nD2, nRst, $08, nA3, $04, nA2, nA2, nA2
	dc.b nA3, nA2, nRst, $08

Nepu_DimTrip_Loop14:
	dc.b nB3, $04, nB2
	smpsLoop		$00, $06, Nepu_DimTrip_Loop14, Target
	dc.b nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop15:
	dc.b nF3, $04, nF2
	smpsLoop		$00, $07, Nepu_DimTrip_Loop15, Target
	dc.b nRst, $08, nE3, $04, nE2, nE2, nE2, nE3
	dc.b nE2, nRst, $08, nE3, $04, nD2, nD2, nD2
	dc.b nE3, nD2, nRst, $08, nD3, $04, nF2, nF2
	dc.b nF2, nD3, nF2, nRst, $08, nA3, $04, nA2

Nepu_DimTrip_Jump4:
	dc.b nA2, $04, $04, nA3, nA2, nRst, $38, nFs3
	dc.b $0C, nB2

Nepu_DimTrip_Loop16:
	dc.b $02, nRst
	smpsLoop		$00, $10, Nepu_DimTrip_Loop16, Target

Nepu_DimTrip_Loop17:
	dc.b nE3, nRst
	smpsLoop		$00, $10, Nepu_DimTrip_Loop17, Target

Nepu_DimTrip_Loop18:
	dc.b nB2, nRst
	smpsLoop		$00, $0F, Nepu_DimTrip_Loop18, Target
	dc.b nB2, nRst, $0A, nE3, $02, nRst, nE3, nRst
	dc.b $12, nG2, $02, nRst, nG2, nRst, $0A, nA2
	dc.b $02, nRst, nA2, nRst, $0A, nB2

Nepu_DimTrip_Loop19:
	dc.b $02, nRst
	smpsLoop		$00, $10, Nepu_DimTrip_Loop19, Target

Nepu_DimTrip_Loop20:
	dc.b nE2, nRst
	smpsLoop		$00, $0B, Nepu_DimTrip_Loop20, Target
	dc.b nE2, nRst, $16, nAb2, $02, nRst, nAb2, nRst
	dc.b nAb2, nRst, nB2, nRst, nBb2, nRst, nAb2, nRst
	dc.b $0A, nFs2, $02, nRst, nFs2, nRst, nFs2, nRst
	dc.b nBb2, nRst, nAb2, nRst, nFs2, nRst, $0A, nE2

Nepu_DimTrip_Loop21:
	dc.b $02, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop21, Target
	dc.b nFs3, nRst, nE3, nRst, nF3, nRst, nFs3, nRst
	dc.b $06, nE3, $02, nRst, $3A, nE2, $02, nRst
	dc.b nE2, nRst, nE2, nRst, $0A, nFs2

Nepu_DimTrip_Loop22:
	dc.b $02, nRst
	smpsLoop		$00, $05, Nepu_DimTrip_Loop22, Target
	dc.b nFs2, nRst, $0A, nAb2

Nepu_DimTrip_Loop23:
	dc.b $02, nRst
	smpsLoop		$00, $07, Nepu_DimTrip_Loop23, Target
	dc.b nEb2, nRst, $06, $02, nRst, nEb2, nRst, nEb2
	dc.b nRst, $0A, $02, nRst, $06, nE2, $02, nRst
	dc.b nE2, nRst, nE2, nRst, nE2, nRst, $2A
	smpsFMvoice		$05
	dc.b nRst, $04, nCs5, $02, nRst, nCs5, nRst, nCs5
	dc.b nRst
	smpsFMvoice		$02
	dc.b nRst, $04, nFs2, $02, nRst, nFs2, nRst, $0E
	dc.b nB3, $04, nB2, nB2, nB2, nB2, nB2, nRst
	dc.b $08, nE2, $04, $04, $04, $04, $04, $04
	dc.b nRst, $08, nEb2, $04, $04, $04, $04, $04
	dc.b $04, nRst, $08, nAb2, $04, $04, $04, $04
	dc.b nBb2, nC3, nRst, $08, nCs3, $04, $04, $04
	dc.b $04, $04, $04, nRst, $08, nFs2, $04, $04
	dc.b $04, $04, $04, $04, nRst, $08, nB2, $04
	dc.b $04, $04, $04, $04, $04, nRst, $08, nBb2
	dc.b $04, $04, $04, $04, $04, $04, nRst, $08
	dc.b nAb2, $04, $04, $04, $04, nAb3, nAb2, nRst
	dc.b $08, nG2, $04, $04, $04, $04, nB3, nD4
	dc.b nRst, $08, nFs2, $04, $04, $04, $04, $04
	dc.b $04, nRst, $08, nF2, $04, $04, $04, $04
	dc.b $04, $04, nRst, $08, nCs3, $04, $04, $04
	dc.b $04, $04, $04, nRst, $08, nEb3, $04, $04
	dc.b $04, $04, $04, $04, nRst, $08, nE3, $04
	dc.b $04, $04, $04, $04, $04, nFs3, $02, nRst
	dc.b $26

Nepu_DimTrip_Loop24:
	dc.b nB3, $04, nB2
	smpsLoop		$00, $06, Nepu_DimTrip_Loop24, Target
	dc.b nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop25:
	dc.b nF3, $04, nF2
	smpsLoop		$00, $07, Nepu_DimTrip_Loop25, Target

Nepu_DimTrip_Loop26:
	dc.b nRst, $08, nE3, $04, nE2, nE2, nE2, nE3
	dc.b nE2
	smpsLoop		$00, $02, Nepu_DimTrip_Loop26, Target
	dc.b nRst, $08, nD3, $04, nD2, nD2, nD2, nD3
	dc.b nD2, nRst, $08, nA3, $04, nA2, nA2, nA2
	dc.b nA3, nA2, nRst, $08

Nepu_DimTrip_Loop27:
	dc.b nB3, $04, nB2
	smpsLoop		$00, $06, Nepu_DimTrip_Loop27, Target
	dc.b nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop28:
	dc.b nF3, $04, nF2
	smpsLoop		$00, $07, Nepu_DimTrip_Loop28, Target
	dc.b nRst, $08, nE3, $04, nE2, nE2, nE2, nE3
	dc.b nE2, nRst, $08, nE3, $04, nD2, nD2, nD2
	dc.b nE3, nD2, nRst, $08, nD3, $04, nF2, nF2
	dc.b nF2, nD3, nF2, nRst, $08, nA3, $04, nA2
	smpsJump		Nepu_DimTrip_Jump4, Target

Nepu_DimTrip_FM5:
	smpsFMvoice		$03
	dc.b nRst, $7F, nRst, $25, nE3, $04, $04, $04
	dc.b nRst, $14, $04, $04, $04, nRst, $14, nD3
	dc.b $04, $04, $04, nRst, $14, nA3, $04, $04
	dc.b $04, nRst, $7F, nRst, $15, nE3, $04, $04
	dc.b $04, nRst, $14, $04, $04, $04, nRst, $14
	dc.b nD3, $04, $04, $04, nRst, $10

Nepu_DimTrip_Jump5:
	dc.b nRst, $04, nA3, nA3, nA3, nRst, $28, nE3
	dc.b $04, nEb3, nE3, nE3, nRst, $0C, nB3

Nepu_DimTrip_Loop29:
	dc.b $02, nRst
	smpsLoop		$00, $10, Nepu_DimTrip_Loop29, Target

Nepu_DimTrip_Loop30:
	dc.b nE4, nRst
	smpsLoop		$00, $10, Nepu_DimTrip_Loop30, Target

Nepu_DimTrip_Loop31:
	dc.b nB3, nRst
	smpsLoop		$00, $10, Nepu_DimTrip_Loop31, Target
	dc.b nE3, nRst, nE3, nE3, nRst, $08

Nepu_DimTrip_Loop32:
	dc.b $02, nRst
	smpsLoop		$00, $04, Nepu_DimTrip_Loop32, Target
	dc.b nG3, nRst, nG3
	smpsFMvoice		$06
	dc.b nRst, nG6, nRst
	smpsFMvoice		$03
	dc.b nRst, $04, nA3, $02, nRst, nA3
	smpsFMvoice		$06
	dc.b nRst, nA6, nRst
	smpsFMvoice		$03
	dc.b nRst, $04, nB3

Nepu_DimTrip_Loop33:
	dc.b $02, nRst, nB3, nRst, $06, $02, nRst, $06
	smpsLoop		$00, $02, Nepu_DimTrip_Loop33, Target

Nepu_DimTrip_Loop34:
	dc.b $02, nRst
	smpsLoop		$00, $06, Nepu_DimTrip_Loop34, Target
	dc.b nE3, nRst, nE3, nRst, nE3, nRst, nE3, nRst
	dc.b $06, $02, nRst, nE3, nRst, $06, $02, nRst
	dc.b $06, $02, nRst, nE3, nRst, $16, nAb3, $02
	dc.b nRst, nAb3, nRst, nAb3, nRst, nE4, nRst, nB3
	dc.b nRst, nAb3, nRst, $0A, nFs3, $02, nRst, nFs3
	dc.b nRst, nFs3, nRst, nBb3, nRst, nAb3, nRst, nFs3
	dc.b nRst, $0A, nE3, $02, nRst, nE3, nRst, nE3
	dc.b nRst, nE3, nRst, $06, $02, nRst, nE3
	smpsFMvoice		$07
	dc.b nRst, nFs5, nRst, nFs5, nRst, $06, $02, nRst
	dc.b $06, nE5, $02, nRst, $36
	smpsFMvoice		$03
	dc.b nRst, $04, nE3, $02, nRst, nE3, nRst, nE3
	dc.b nRst, $0A, nFs3

Nepu_DimTrip_Loop35:
	dc.b $02, nRst
	smpsLoop		$00, $05, Nepu_DimTrip_Loop35, Target
	dc.b nFs3, nRst, $0A, nAb3, $02, nRst, nFs3, nRst
	dc.b nAb3, nRst, nB3, nRst, nBb3, nRst, nAb3, nRst
	dc.b nFs3, nRst, $0A, nEb3, $02, nRst, nEb3, nRst
	dc.b $0A, $02, nRst, $06, $02, nRst, $06, nE3
	dc.b $02, nRst, nE3, nRst, $0A, $02, nRst, $22
	smpsFMvoice		$07
	dc.b nRst, $04, nFs5, $02, nRst, nFs5, nRst, nFs5
	dc.b nRst, $70, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b $02
	smpsFMvoice		$03
	dc.b nRst, $04, nE3, nE3, nE3, nRst, $14, $04
	dc.b $04, $04, nRst, $14, nD3, $04, $04, $04
	dc.b nRst, $14, nA3, $04, $04, $04, nRst, $7F
	dc.b nRst, $15, nE3, $04, $04, $04, nRst, $14
	dc.b $04, $04, $04, nRst, $14, nD3, $04, $04
	dc.b $04, nRst, $10
	smpsJump		Nepu_DimTrip_Jump5, Target

Nepu_DimTrip_FM6:
	smpsFMvoice		$04

Nepu_DimTrip_Loop36:
	dc.b nRst, $40
	smpsLoop		$00, $08, Nepu_DimTrip_Loop36, Target

Nepu_DimTrip_Loop37:
	dc.b nRst, $52
	smpsLoop		$00, $0A, Nepu_DimTrip_Loop37, Target
	dc.b nCs5, $02, nRst, nCs5, nRst, nCs5

Nepu_DimTrip_Loop38:
	dc.b nRst, $72
	smpsLoop		$00, $09, Nepu_DimTrip_Loop38, Target
	smpsJump		Nepu_DimTrip_Loop37, Target

Nepu_DimTrip_PSG1:
	dc.b nRst, $40
	smpsLoop		$00, $08, Nepu_DimTrip_PSG1, Target

Nepu_DimTrip_Jump6:
	dc.b nRst, $5C, nFs1, $02, nRst, nFs1, nRst, nFs1
	dc.b nRst, nAb1, $06, nRst, $02, nFs1, $08, nRst
	dc.b $10

Nepu_DimTrip_Loop39:
	dc.b $02, nRst
	smpsLoop		$00, $04, Nepu_DimTrip_Loop39, Target
	dc.b nE1, $06, nRst, $02, nB0, $08, nRst, $34
	dc.b nFs1, $06, nRst, $02, nB1, nRst, nBb1, $06
	dc.b nRst, $02, nFs1, $06, nRst, $12, $06, nRst
	dc.b $02, $02, nRst, nFs1, nRst, nE1, $06, nRst
	dc.b $02, nB1, $10, nRst, $2C, nFs1, $02, nRst
	dc.b nFs1, nRst, nFs1, nRst, nAb1, $06, nRst, $02
	dc.b nFs1, $08, nRst, $10, $06, nRst, $02, $02
	dc.b nRst, nFs1, nRst, nE1, $06, nRst, $02, $06
	dc.b nRst, $02, nEb1, $06, nRst, $02, nE1, $06
	dc.b nRst, $02, nEb1, nRst, nB0, $06, nRst, $02
	dc.b $02, nRst, nCs1, $06, nRst, $02, nEb1, $06
	dc.b nRst, $02, $02, nRst, nEb1, nRst, nEb1, nRst
	dc.b nE1, nRst, nEb1, $06, nRst, $02, nCs1, $06
	dc.b nRst, $02, $02, nRst, nCs1, nRst, nCs1, nRst
	dc.b nEb1, nRst, nCs1, $06, nRst, $02, $06, nRst
	dc.b $02, nB0, nRst, nB0, $14, nRst, $2C, nCs1
	dc.b $06, nRst, $02, nFs1, $06, nRst, $02, nBb0
	dc.b nRst, nBb0, $06, nRst, $02, nB0, nRst, nB0
	dc.b $08, nRst, $04, nBb0, $02, nRst, nB0, nRst
	dc.b nCs1, $06, nRst, $02, $02, nRst, nCs1, nRst
	dc.b nCs1, nRst, nB0, nRst, nCs1, $06, nRst, $02
	dc.b nEb1, $0E, nRst, $1E, nCs1, $06, nRst, $02
	dc.b nFs1, $06, nRst, $02, nBb0, nRst, nBb0, $06
	dc.b nRst, $02, nB0, nRst, nB0, $06, nRst, $02
	dc.b nBb0, nRst, nB0, $06, nRst, $02, nFs1, $20
	smpsPSGvoice	$34
	dc.b nRst, $04, nCs2, $02, nRst, nCs2, nRst, nCs2
	dc.b nRst
	smpsPSGvoice	$00
	dc.b nRst, $04, nBb0, $02, nRst, nCs1, $06

Nepu_DimTrip_Loop40:
	dc.b nRst, $02, nB1, $18, nRst, $04, nCs2, $02
	smpsLoop		$00, $02, Nepu_DimTrip_Loop40, Target
	dc.b nRst, nB1, $0A, nRst, $02, nBb1, $06, nRst
	dc.b $02, nB1, nRst, nCs2, nRst, $06, $06, nRst
	dc.b $02, nEb2, nRst, nEb2, $08, nRst, $04, $02
	dc.b nRst, nCs2, nRst, nB1, $08, nBb1, $02, nRst
	dc.b nB1, nRst, nBb1, nRst, nB1, nRst, nCs2, $06
	dc.b nRst, $02, nB1, $06, nRst, $02, $02, nRst
	dc.b nBb1, nRst, nBb1, nRst, nAb1, nRst, nBb1, $06
	dc.b nRst, $02, nFs1, $0E, nRst, $26, nEb1, $04
	dc.b nFs1, $06, nRst, $02, nB1, $1A, nRst, $02
	dc.b nCs2, nRst, nB1, $18, nRst, $04, nCs2, $02
	dc.b nRst, nB1, $0A, nRst, $02, nBb1, $06, nRst
	dc.b $02, nB1, nRst, nCs2, nRst, $06, $06, nRst
	dc.b $02, nEb2, nRst, nEb2, $08, nRst, $04, nAb1
	dc.b $02, nRst, nB1, nRst, nE2, $06, nRst, $02
	dc.b $02, nRst, nEb2, $04, nRst, nCs2, nB1, $06
	dc.b nRst, $02, $10, nRst, $08, nAb1, $02, nRst
	dc.b nB1, nRst, nE2, $0A, nRst, $02, nEb2, $06
	dc.b nRst, $02, nB1, $0A, nRst, $02, $06, nRst
	dc.b $02, $04, nBb1, nBb1, nAb1, nBb1, nRst, nB1
	dc.b $10, nRst, $7F, nRst, nRst, nRst, $63
	smpsJump		Nepu_DimTrip_Jump6, Target

Nepu_DimTrip_PSG2:
	dc.b nRst, $10, nB1, $08, nB0, $04, nB1, nB0
	dc.b nBb1, nB1, nB0, nB0, nCs2, nB1, nB0, nBb1
	dc.b nB0, nB1, nB0, nB1, $08, nB0, $04, nB1
	dc.b nB0, nBb1, nB1, nB0, nB0, nCs2, nB1, nB0
	dc.b nCs2, nB0, nEb2, nB0, nB1, $08, $04, nBb1
	dc.b nB0, nAb1, nFs1, nB0, nE1, $08, nB0, $04
	dc.b nEb1, nB0, nCs1, nEb1, nB0, nB1, $08, nB0
	dc.b $04, nA1, nB0, nG1, nFs1, nB0, nA1, $08
	dc.b nB0, $04, nB1, nB0, nCs2, nB0, nRst, nB1
	dc.b $08, nB0, $04, nB1, nB0, nBb1, nB0, nB1
	dc.b nB0, nCs2, nB1, nB0, nBb1, nB0, nB1, nB0
	dc.b nB1, $08, nB0, $04, nB1, nB0, nBb1, nB0
	dc.b nB1, nB0, nCs2, nB1, nB0, nCs2, nB0, nEb2
	dc.b nB0, nB1, $08, $04, nBb1, nB0, nAb1, nFs1
	dc.b nB0, nE1, $08, nB0, $04, nEb1, nB0, nCs1
	dc.b nEb1, nB0, nB1, $08, nB0, $04, nA1, nB0
	dc.b nG1, nFs1, nB0, nA1, $08, nB0, $04, nB1

Nepu_DimTrip_Jump7:
	dc.b nB0, $04, nCs2, nE2, nRst, nEb2, $08, nRst
	dc.b $04, nE2, nRst, nFs2, nE2, nEb2, nB1, $10
	dc.b nRst, $7F, nRst, $7D
	smpsPSGvoice	$28
	dc.b nG1, $02, nRst, $0E, nA1, $02, nRst, $2A
	dc.b nC0, $02, nRst, nC0, nRst, nCs0, nRst, nEb0
	dc.b nRst, nCs0, nRst, nC0, nRst, nC0, nRst, $7F
	dc.b nRst, $23, nFs1, $02, nRst, nFs1, nRst, $06
	dc.b $02, nRst, $06, nE1, $02, nRst, $7F, nRst
	dc.b $6B, nFs1, $02, nRst, nFs1, nRst, nFs1, nRst
	dc.b $7F, nRst, $5B
	smpsPSGvoice	$00
	dc.b nRst, $04, $04, nB1, nEb2, nE2, nFs2, nAb2
	dc.b $08, nFs2, $04, nE2, nEb2, nCs2, nE2, nCs2
	dc.b nEb2, $10, nRst, $70, nE1, $14, nB1, $0C
	dc.b nFs1, $14, nCs2, $0C, nB1, $10, nRst, nEb2
	dc.b $06, nRst, $02, $04, nCs2, nCs2, nB1, nCs2
	dc.b nRst, nEb2, $08, nB0, $04, nRst, nB0, nBb1
	dc.b nB1, nB0, nB0, nCs2, nB1, nB0, nBb1, nB0
	dc.b nB1, nB0, nB1, $08, nB0, $04, nB1, nB0
	dc.b nBb1, nB1, nB0, nB0, nCs2, nB1, nB0, nCs2
	dc.b nB0, nEb2, nB0, nB1, $08, $04, nBb1, nB0
	dc.b nAb1, nFs1, nB0, nE1, $08, nB0, $04, nEb1
	dc.b nB0, nCs1, nEb1, nB0, nB1, $08, nB0, $04
	dc.b nA1, nB0, nG1, nFs1, nB0, nA1, $08, nB0
	dc.b $04, nB1, nB0, nCs2, nB0, nRst, nB1, $08
	dc.b nB0, $04, nB1, nB0, nBb1, nB0, nB1, nB0
	dc.b nCs2, nB1, nB0, nBb1, nB0, nB1, nB0, nB1
	dc.b $08, nB0, $04, nB1, nB0, nBb1, nB0, nB1
	dc.b nB0, nCs2, nB1, nB0, nCs2, nB0, nEb2, nB0
	dc.b nB1, $08, $04, nBb1, nB0, nAb1, nFs1, nB0
	dc.b nE1, $08, nB0, $04, nEb1, nB0, nCs1, nEb1
	dc.b nB0, nB1, $08, nB0, $04, nA1, nB0, nG1
	dc.b nFs1, nB0, nA1, $08, nB0, $04, nB1
	smpsJump		Nepu_DimTrip_Jump7, Target

Nepu_DimTrip_PSG3:
	dc.b nRst, $40
	smpsLoop		$00, $08, Nepu_DimTrip_PSG3, Target

Nepu_DimTrip_Loop41:
	dc.b nRst, $60
	smpsLoop		$00, $08, Nepu_DimTrip_Loop41, Target
	smpsPSGvoice	$00
	dc.b nRst, $10, nCs1, $20
	smpsPSGvoice	$00
	dc.b nRst, $04, $02, nRst, nCs1, nRst, nCs1, nRst
	dc.b $7F, nRst, $5F, nEb1, $04, nFs1, nB1, nCs2
	dc.b nEb2, nE2, $08, nEb2, $04, nCs2, nB1, nBb1
	dc.b nCs2, nBb1, nB1, $10, nRst, $7F, nRst, $51
	dc.b $06, nRst, $02, $04, nBb1, nBb1, nAb1, nBb1
	dc.b nRst, nB1, $08, nB0, $04, nB1, nRst, $7F
	dc.b nRst, nRst, nRst, $63
	smpsJump		Nepu_DimTrip_Loop41, Target

Nepu_DimTrip_DAC:
	smpsStop

Nepu_DimTrip_Patches:
	; Patch $00
	; $3B
	; $3E, $42, $41, $33,	$DE, $14, $1E, $14
	; $14, $0F, $0F, $00,	$01, $00, $00, $00
	; $36, $25, $26, $29,	$1F, $1E, $19, $80
	smpsVcAlgorithm	$03
	smpsVcFeedback	$07
	smpsVcDetune	$03, $04, $04, $03
	smpsVcCoarseFreq	$0E, $01, $02, $03
	smpsVcRateScale	$03, $00, $00, $00
	smpsVcAttackRate	$1E, $1E, $14, $14
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$14, $0F, $0F, $00
	smpsVcDecayRate2	$03, $02, $02, $02
	smpsVcDecayLevel	$01, $00, $00, $00
	smpsVcReleaseRate	$06, $06, $05, $09
	smpsVcTotalLevel	$1F, $19, $1E, $00

	; Patch $01
	; $3A
	; $23, $72, $22, $32,	$1F, $1F, $1F, $1F
	; $05, $05, $05, $0B,	$05, $05, $05, $05
	; $11, $18, $11, $18,	$1C, $15, $1E, $82
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$02, $02, $07, $03
	smpsVcCoarseFreq	$03, $02, $02, $02
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$05, $05, $05, $0B
	smpsVcDecayRate2	$01, $01, $01, $01
	smpsVcDecayLevel	$05, $05, $05, $05
	smpsVcReleaseRate	$01, $01, $08, $08
	smpsVcTotalLevel	$1C, $1E, $15, $02

	; Patch $02
	; $2A
	; $50, $03, $11, $00,	$90, $CE, $CD, $9B
	; $05, $0A, $09, $08,	$00, $00, $12, $0C
	; $09, $FF, $50, $4A,	$18, $27, $25, $80
	smpsVcAlgorithm	$02
	smpsVcFeedback	$05
	smpsVcDetune	$05, $01, $00, $00
	smpsVcCoarseFreq	$00, $01, $03, $00
	smpsVcRateScale	$02, $03, $03, $02
	smpsVcAttackRate	$10, $0D, $0E, $1B
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$05, $09, $0A, $08
	smpsVcDecayRate2	$00, $05, $0F, $04
	smpsVcDecayLevel	$00, $12, $00, $0C
	smpsVcReleaseRate	$09, $00, $0F, $0A
	smpsVcTotalLevel	$18, $25, $27, $00

	; Patch $03
	; $10
	; $35, $76, $70, $30,	$DF, $DF, $5F, $5F
	; $06, $08, $09, $09,	$06, $03, $03, $01
	; $26, $16, $06, $26,	$21, $34, $19, $80
	smpsVcAlgorithm	$00
	smpsVcFeedback	$02
	smpsVcDetune	$03, $07, $07, $03
	smpsVcCoarseFreq	$05, $00, $06, $00
	smpsVcRateScale	$03, $01, $03, $01
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$06, $09, $08, $09
	smpsVcDecayRate2	$02, $00, $01, $02
	smpsVcDecayLevel	$06, $03, $03, $01
	smpsVcReleaseRate	$06, $06, $06, $06
	smpsVcTotalLevel	$21, $19, $34, $00

	; Patch $04
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	smpsVcAlgorithm	$05
	smpsVcFeedback	$07
	smpsVcDetune	$00, $00, $00, $00
	smpsVcCoarseFreq	$01, $01, $01, $01
	smpsVcRateScale	$02, $00, $00, $00
	smpsVcAttackRate	$14, $19, $19, $19
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0F, $0D, $0D, $0D
	smpsVcDecayRate2	$02, $01, $01, $01
	smpsVcDecayLevel	$07, $04, $04, $04
	smpsVcReleaseRate	$05, $0A, $0A, $0A
	smpsVcTotalLevel	$15, $00, $00, $00

	; Patch $05
	; $3A
	; $7F, $06, $22, $01,	$9F, $9F, $8E, $5A
	; $0F, $00, $00, $00,	$09, $00, $00, $00
	; $71, $83, $14, $05,	$14, $23, $1E, $80
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$07, $02, $00, $00
	smpsVcCoarseFreq	$0F, $02, $06, $01
	smpsVcRateScale	$02, $02, $02, $01
	smpsVcAttackRate	$1F, $0E, $1F, $1A
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0F, $00, $00, $00
	smpsVcDecayRate2	$07, $01, $08, $00
	smpsVcDecayLevel	$09, $00, $00, $00
	smpsVcReleaseRate	$01, $04, $03, $05
	smpsVcTotalLevel	$14, $1E, $23, $00

	; Patch $06
	; $1C
	; $03, $01, $02, $00,	$1F, $1F, $1F, $1F
	; $1F, $1F, $1F, $1F,	$10, $0A, $0F, $0C
	; $47, $06, $08, $06,	$00, $80, $0C, $80
	smpsVcAlgorithm	$04
	smpsVcFeedback	$03
	smpsVcDetune	$00, $00, $00, $00
	smpsVcCoarseFreq	$03, $02, $01, $00
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$1F, $1F, $1F, $1F
	smpsVcDecayRate2	$04, $00, $00, $00
	smpsVcDecayLevel	$10, $0F, $0A, $0C
	smpsVcReleaseRate	$07, $08, $06, $06
	smpsVcTotalLevel	$00, $0C, $00, $00

	; Patch $07
	; $3E
	; $38, $01, $7A, $34,	$59, $D9, $5F, $9C
	; $0F, $04, $0F, $0A,	$02, $02, $05, $05
	; $AF, $AF, $66, $66,	$28, $80, $A3, $80
	smpsVcAlgorithm	$06
	smpsVcFeedback	$07
	smpsVcDetune	$03, $07, $00, $03
	smpsVcCoarseFreq	$08, $0A, $01, $04
	smpsVcRateScale	$01, $01, $03, $02
	smpsVcAttackRate	$19, $1F, $19, $1C
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0F, $0F, $04, $0A
	smpsVcDecayRate2	$0A, $06, $0A, $06
	smpsVcDecayLevel	$02, $05, $02, $05
	smpsVcReleaseRate	$0F, $06, $0F, $06
	smpsVcTotalLevel	$28, $23, $00, $00

	; Patch $08
	; $3A
	; $71, $0C, $33, $01,	$1C, $16, $1D, $1F
	; $04, $06, $04, $08,	$00, $01, $03, $00
	; $16, $17, $16, $A6,	$25, $2F, $25, $80
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$07, $03, $00, $00
	smpsVcCoarseFreq	$01, $03, $0C, $01
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1C, $1D, $16, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$04, $04, $06, $08
	smpsVcDecayRate2	$01, $01, $01, $0A
	smpsVcDecayLevel	$00, $03, $01, $00
	smpsVcReleaseRate	$06, $06, $07, $06
	smpsVcTotalLevel	$25, $25, $2F, $00
