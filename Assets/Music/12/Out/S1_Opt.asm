
	sHeaderInit
	smpsHeaderVoice	SRB2_INV_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$03, $05
	sHeaderDAC	SRB2_INV_DAC
	smpsHeaderFM	SRB2_INV_FM1, Target, $00, $10
	smpsHeaderFM	SRB2_INV_FM2, Target, $00, $0F
	smpsHeaderFM	SRB2_INV_FM3, Target, $00, $0B
	smpsHeaderFM	SRB2_INV_FM4, Target, $00, $0B
	smpsHeaderFM	SRB2_INV_FM5, Target, $00, $0B
	smpsHeaderFM	SRB2_INV_FM6, Target, $00, $0B
	smpsHeaderPSG	SRB2_INV_PSG1, Target, $00, $05, $00, $00
	smpsHeaderPSG	SRB2_INV_PSG2, Target, $00, $03, $00, $04
	smpsHeaderPSG	SRB2_INV_PSG3, Target, $00, $03, $00, $06

SRB2_INV_FM1:
	smpsFMvoice		$00

SRB2_INV_Loop1:
	smpsPan		panRight
	dc.b	nCs5, $01, nRst
	smpsPan		panLeft
	dc.b	nCs6, nAb5, nRst
	smpsPan		panRight
	dc.b	nE5
	smpsPan		panLeft
	dc.b	nCs5, nRst
	smpsPan		panRight
	dc.b	nFs5, nE5, nRst
	smpsPan		panLeft
	dc.b	nAb5
	smpsPan		panRight
	dc.b	nB5, nRst
	smpsPan		panLeft
	dc.b	nCs6, nAb5, nRst
	smpsPan		panRight
	dc.b	nCs5
	smpsPan		panLeft
	dc.b	nAb4, nRst
	smpsPan		panRight
	dc.b	nFs5, nE5, nRst
	smpsPan		panLeft
	dc.b	nB4
	smpsLoop		$00, $0D, SRB2_INV_Loop1, Target
	smpsPan		panCenter
	smpsAlterVol		$04
	dc.b	nCs5, $03
	smpsStop

SRB2_INV_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nRst, $18

SRB2_INV_Loop3:
	dc.b	nCs3, $01, nRst, $02

SRB2_INV_Loop2:
	dc.b	nCs3, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop2, Target
	dc.b	nFs3, $06, $05, nRst, $01, nE3, $05, nRst
	dc.b	$01, nE3, $05, nRst, $01, nE3, $03
	smpsLoop		$01, $05, SRB2_INV_Loop3, Target
	dc.b	nCs3, $01, nRst, $02, nCs3, $05, nRst, $01
	dc.b	nCs3, $05, nRst, $01, nCs3, $03, nE3, nFs3
	dc.b	$06, $03, nAb3, nA3, $05, nRst, $01, nAb3
	dc.b	$08, nRst, $01, nCs3, $05
	smpsStop

SRB2_INV_FM3:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nB5, $17, nRst, $01, nCs5, $55, smpsNoAttack, $0A
	dc.b	nRst, $01, nAb5, $55, smpsNoAttack, $0A, nRst, $01
	dc.b	nB5, $45, nFs5, $0B, nRst, $01, nE5, $0E
	dc.b	nRst, $01, nCs5, $05
	smpsStop

SRB2_INV_FM4:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nE5, $17, nRst, $55, $0C, nCs5, $55, smpsNoAttack
	dc.b	$0A, nRst, $01, nAb5, $45, nCs5, $0B, nRst
	dc.b	$01, nB4, $0E
	smpsStop

SRB2_INV_FM5:
	smpsPan		panLeft
	smpsFMvoice		$02
	dc.b	nRst, $18

SRB2_INV_Loop5:
	dc.b	nCs3, $01, nRst, $02

SRB2_INV_Loop4:
	dc.b	nCs3, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop4, Target
	dc.b	nCs3, $06, $05, nRst, $01, nB2, $05, nRst
	dc.b	$01, nB2, $05, nRst, $01, nB2, $03
	smpsLoop		$01, $06, SRB2_INV_Loop5, Target
	dc.b	nCs3, $05
	smpsStop

SRB2_INV_FM6:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b	nRst, $18

SRB2_INV_Loop7:
	dc.b	nAb2, $01, nRst, $02

SRB2_INV_Loop6:
	dc.b	nAb2, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop6, Target
	dc.b	nAb2, $06, $05, nRst, $01, nFs2, $05, nRst
	dc.b	$01, nFs2, $05, nRst, $01, nFs2, $03
	smpsLoop		$01, $05, SRB2_INV_Loop7, Target
	dc.b	nAb2, $01, nRst, $02

SRB2_INV_Loo$8:
	dc.b	nAb2, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loo$8, Target
	dc.b	nFs2, $06, $05, nRst, $01, nE2, $05, nRst
	dc.b	$01, nE2, $05, nRst, $01, nE2, $03, nAb2
	dc.b	$05
	smpsStop

SRB2_INV_PSG1:
	dc.b	nCs2, $01, nRst, nCs3, nAb2, nRst, nE2, nCs2
	dc.b	nRst, nFs2, nE2, nRst, nAb2, nB2, nRst, nCs3
	dc.b	nAb2, nRst, nCs2, nAb1, nRst, nFs2, nE2, nRst
	dc.b	nB1
	smpsLoop		$00, $0D, SRB2_INV_PSG1, Target
	dc.b	nCs2, $03
	smpsStop

SRB2_INV_PSG2:
	dc.b	nB2, $17, nRst, $01, nCs2, $55, smpsNoAttack, $0A
	dc.b	nRst, $01, nAb2, $55, smpsNoAttack, $0A, nRst, $01
	dc.b	nB2, $45, nFs2, $0B, nRst, $01, nE2, $0E
	smpsStop

SRB2_INV_PSG3:
	dc.b	nRst, $18

SRB2_INV_Loop10:
	dc.b	nCs0, $01, nRst, $02

SRB2_INV_Loo$9:
	dc.b	nCs0, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loo$9, Target
	dc.b	nCs0, $06, $05, nRst, $01, nC0, $05, nRst
	dc.b	$01, nC0, $05, nRst, $01, nC0, $03
	smpsLoop		$01, $06, SRB2_INV_Loop10, Target
	dc.b	nCs0, $05
	smpsStop

SRB2_INV_DAC:
	smpsStop

SRB2_INV_Patches:

	
	dc.b	$2E
	dc.b	$02, $01, $71, $31,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$00, $0A, $0A, $0A,	$1C, $04, $04, $04
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$00, $30, $70, $00,	$1F, $1F, $1F, $11
	dc.b	$0B, $09, $00, $1F,	$00, $00, $00, $00
	dc.b	$FF, $F9, $0F, $07,	$1A, $00, $10, $00
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$03, $22, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$00, $00, $00, $00
	dc.b	$10, $18, $10, $18,	$1E, $12, $1D, $00
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
