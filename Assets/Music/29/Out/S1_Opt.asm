
	sHeaderInit
	smpsHeaderVoice	FF1_Victory_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$03, $08
	sHeaderDAC	FF1_Victory_DAC
	smpsHeaderFM	FF1_Victory_FM1, Target, $00, $0A
	smpsHeaderFM	FF1_Victory_FM2, Target, $00, $0A
	smpsHeaderFM	FF1_Victory_FM3, Target, $00, $0E
	smpsHeaderFM	FF1_Victory_FM4, Target, $00, $0E
	smpsHeaderFM	FF1_Victory_FM5, Target, $00, $0A
	smpsHeaderFM	FF1_Victory_FM6, Target, $00, $0A
	smpsHeaderPSG	FF1_Victory_PSG1, Target, $00, $06, $00, $00
	smpsHeaderPSG	FF1_Victory_PSG2, Target, $00, $06, $00, $00
	smpsHeaderPSG	FF1_Victory_PSG3, Target, $00, $06, $00, $00

FF1_Victory_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nA4, $03, $03, nRst, nB4, nC5, nRst, nD5
	ssMod68k	$00, $01, $06, $04
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_FM2:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nG2, $03, $03, nRst, nG2, nG2, nRst, nC2
	ssMod68k	$00, $01, $06, $04
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_FM3:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b	nD4, $03, $03, nRst, nE4, nF4, nRst, nG4
	ssMod68k	$00, $01, $03, $04
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_FM4:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nC4, $03, $03, nRst, nD4, nE4, nRst, nE4
	ssMod68k	$00, $01, $06, $04
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nA5, $03, $03, nRst, nB5, nC6, nRst, nD6
	ssMod68k	$00, $01, $06, $04
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_FM6:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nF4, $03, $03, nRst, nG4, nA4, nRst, nB4
	ssMod68k	$00, $01, $06, $04
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_PSG1:
	dc.b	nA1, $03, $03, nRst, nB1, nC2, nRst, nD2
	ssMod68k	$00, $02, $03, $02
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_PSG2:
	dc.b	nD1, $03, $03, nRst, nE1, nF1, nRst, nG1
	ssMod68k	$00, $02, $01, $02
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_PSG3:
	dc.b	nC1, $03, $03, nRst, nD1, nE1, nRst, nE1
	ssMod68k	$00, $02, $03, $02
	dc.b	smpsNoAttack, $21
	smpsStop

FF1_Victory_DAC:
	smpsStop

FF1_Victory_Patches:

	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$12, $1F, $1F, $14
	dc.b	$07, $02, $02, $0A,	$05, $05, $05, $05
	dc.b	$25, $27, $27, $A7,	$1C, $0C, $0E, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
