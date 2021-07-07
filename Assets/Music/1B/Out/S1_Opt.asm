
	sHeaderInit
	smpsHeaderVoice	FF1_Victory_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$02, $03
	sHeaderDAC	FF1_Victory_DAC
	smpsHeaderFM	FF1_Victory_FM1, Target, $00, $14
	smpsHeaderFM	FF1_Victory_FM2, Target, $00, $1B
	smpsHeaderFM	FF1_Victory_FM3, Target, $00, $1A
	smpsHeaderFM	FF1_Victory_FM4, Target, $00, $14
	smpsHeaderFM	FF1_Victory_FM5, Target, $00, $1B
	smpsHeaderFM	FF1_Victory_FM6, Target, $00, $1A
	smpsHeaderPSG	FF1_Victory_PSG1, Target, $00, $06, $00, $00
	smpsHeaderPSG	FF1_Victory_PSG2, Target, $00, $07, $00, $00
	smpsHeaderPSG	FF1_Victory_PSG3, Target, $00, $08, $00, $00

FF1_Victory_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00

FF1_Victory_Loop1:
	dc.b	nC5, $06, nCs5, nD5, nEb5, nE5, nG4, nBb4
	dc.b	nB4
	smpsLoop		$00, $0C, FF1_Victory_Loop1, Target
	smpsJump		FF1_Victory_FM1, Target

FF1_Victory_FM2:
	smpsPan		panCenter
	smpsFMvoice		$00

FF1_Victory_Loop2:
	dc.b	nC4, $06, nCs4, nD4, nEb4, nE4, nG3, nBb3
	dc.b	nB3
	smpsLoop		$00, $0C, FF1_Victory_Loop2, Target
	smpsJump		FF1_Victory_FM2, Target

FF1_Victory_FM3:
	smpsPan		panRight
	smpsFMvoice		$01

FF1_Victory_Loop3:
	dc.b	nC3, $06, nCs3, nD3, nEb3, nE3, nG2, nBb2
	dc.b	nB2
	smpsLoop		$00, $0C, FF1_Victory_Loop3, Target
	smpsJump		FF1_Victory_FM3, Target

FF1_Victory_FM4:
	smpsPan		panLeft
	smpsFMvoice		$01

FF1_Victory_Loop4:
	dc.b	nC2, $06, nCs2, nD2, nEb2, nE2, nG1, nBb1
	dc.b	nB1
	smpsLoop		$00, $0C, FF1_Victory_Loop4, Target
	smpsJump		FF1_Victory_FM4, Target

FF1_Victory_FM5:
	smpsPan		panCenter
	smpsFMvoice		$02

FF1_Victory_Loop5:
	dc.b	nA1, $06, nBb1, nB1, nC2, nCs2, nE1, nG1
	dc.b	nAb1
	smpsLoop		$00, $0C, FF1_Victory_Loop5, Target
	smpsJump		FF1_Victory_FM5, Target

FF1_Victory_FM6:
	smpsPan		panRight
	smpsFMvoice		$02

FF1_Victory_Loop6:
	dc.b	nFs1, $06, nG1, nAb1, nA1, nBb1, nCs1, nE1
	dc.b	nF1
	smpsLoop		$00, $0C, FF1_Victory_Loop6, Target
	smpsJump		FF1_Victory_FM6, Target

FF1_Victory_PSG1:
	smpsPSGvoice	$20

FF1_Victory_Loop7:
	dc.b	nC1, $06, nCs1, nD1, nEb1, nE1, nG0, nBb0
	dc.b	nB0
	smpsLoop		$00, $07, FF1_Victory_Loop7, Target
	dc.b	nC1, nCs1, nD1, nEb1, nE1, nG0
	smpsJump		FF1_Victory_PSG1, Target

FF1_Victory_PSG2:
	smpsPSGvoice	$18
	dc.b	nC0

FF1_Victory_Loo$8:
	dc.b	$06, nCs0, nD0, nEb0, nE0, nC0, nC0, nC0
	smpsLoop		$00, $0C, FF1_Victory_Loo$8, Target
	smpsJump		FF1_Victory_PSG2, Target

FF1_Victory_PSG3:
	smpsPSGvoice	$24
	dc.b	nC0

FF1_Victory_Loo$9:
	dc.b	$06
	smpsLoop		$00, $60, FF1_Victory_Loo$9, Target
	smpsJump		FF1_Victory_PSG3, Target

FF1_Victory_DAC:
	smpsStop

FF1_Victory_Patches:

	
	dc.b	$3A
	dc.b	$11, $15, $01, $01,	$59, $59, $5C, $4E
	dc.b	$0A, $0B, $0D, $04,	$00, $00, $00, $00
	dc.b	$15, $58, $26, $06,	$1D, $15, $2D, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$31, $75, $01, $01,	$55, $54, $50, $4E
	dc.b	$07, $0B, $08, $05,	$00, $00, $00, $00
	dc.b	$37, $3C, $3C, $1C,	$25, $0F, $2D, $08
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$31, $75, $01, $01,	$55, $54, $50, $4E
	dc.b	$07, $0B, $08, $05,	$00, $00, $00, $00
	dc.b	$37, $3C, $3C, $1C,	$25, $0F, $2D, $10
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
