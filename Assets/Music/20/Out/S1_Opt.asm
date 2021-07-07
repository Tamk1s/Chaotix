
	sHeaderInit
	smpsHeaderVoice	SMB3_Cards3_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$02, $1E
	sHeaderDAC	SMB3_Cards3_DAC
	smpsHeaderFM	SMB3_Cards3_FM1, Target, $00, $11
	smpsHeaderFM	SMB3_Cards3_FM2, Target, $00, $17
	smpsHeaderFM	SMB3_Cards3_FM3, Target, $00, $15
	smpsHeaderFM	SMB3_Cards3_FM4, Target, $00, $18
	smpsHeaderFM	SMB3_Cards3_FM5, Target, $00, $0A
	smpsHeaderFM	SMB3_Cards3_FM6, Target, $00, $19
	smpsHeaderPSG	SMB3_Cards3_PSG1, Target, $00, $07, $00, $00
	smpsHeaderPSG	SMB3_Cards3_PSG2, Target, $00, $08, $00, $00
	smpsHeaderPSG	SMB3_Cards3_PSG3, Target, $00, $08, $00, $01

SMB3_Cards3_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nD4, $04, $04, $04, $0C, nBb3, nC4, nD4
	dc.b	$04, nRst, nC4, nD4, $0C, $02, nA3, $01
	dc.b	nRst, $02, nD4, $01, nRst, $03, nD4, $02
	dc.b	nA3, $01, nRst, $02, nD4, $01, nRst, $03
	dc.b	nA3, $02, nRst, $01, nA3, $02, nFs3, $01
	smpsStop

SMB3_Cards3_FM2:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nA3, $04, $04, $04, $0C, nG3, nG3, nA3
	dc.b	$04, nRst, nA3, nA3, $0E, nRst, $01, nFs3
	dc.b	$02, nRst, $01, nA3, $02, nFs3, $01, nRst
	dc.b	$03, nFs3, $02, nRst, $01, nA3, $02, nFs3
	dc.b	$01, nRst, $02, nFs3, $01
	smpsStop

SMB3_Cards3_FM3:
	smpsFMvoice		$00
	smpsPan		panRight
	dc.b	nG3, $04, $04, $04, nFs3, $0C, nF3, nE3
	dc.b	nFs3, $04, nRst, nE3, nFs3, $0F
	smpsStop

SMB3_Cards3_FM4:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nG5, $04, $04, $04, nFs5, nCs5, nFs5, nF5
	dc.b	nA4, nF5, nE5, nA4, nE5, nD5, $02, nRst
	dc.b	$06, nD5, $02, $02, $24
	smpsStop

SMB3_Cards3_FM5:
	smpsPan		panLeft
	smpsFMvoice		$02
	dc.b	nG3, $04, $04, $04, nFs3, $0C, nG3, nG3
	dc.b	nD3, $04, nRst, nD3, nD3, $24
	smpsStop

SMB3_Cards3_FM6:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b	nG2, $04, $04, $04, nFs2, $0C, nG2, nG2
	dc.b	nD2, $04, nRst, nD2, nD2, $24
	smpsStop

SMB3_Cards3_PSG1:
	dc.b	nA0, $04, $04, $04, $0C, nG0, nG0, nA0
	dc.b	$04, nRst, nA0, nA0, $0E, nRst, $01, nFs0
	dc.b	$02, nRst, $01, nA0, $02, nFs0, $01, nRst
	dc.b	$03, nFs0, $02, nRst, $01, nA0, $02, nFs0
	dc.b	$01, nRst, $02, nFs0, $01
	smpsStop

SMB3_Cards3_PSG2:
	dc.b	nG0, $04, $04, $04, nFs0, $0C, nF0, nE0
	dc.b	nFs0, $04, nRst, nE0, nFs0, $0F
	smpsStop

SMB3_Cards3_PSG3:
	dc.b	nG1, $04, $04, $04, nFs1, $0C, nF1, nE1
	dc.b	nD1, $02, nRst, $06, nD1, $02, $02, $24
	smpsStop

SMB3_Cards3_DAC:
	smpsStop

SMB3_Cards3_Patches:

	
	dc.b	$3A
	dc.b	$02, $0E, $02, $02,	$8E, $8F, $8D, $53
	dc.b	$0E, $10, $0E, $0D,	$00, $00, $00, $00
	dc.b	$13, $68, $13, $08,	$19, $2A, $23, $04
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $12, $21, $31,	$14, $0F, $0E, $0F
	dc.b	$00, $03, $04, $04,	$00, $00, $00, $00
	dc.b	$00, $16, $16, $16,	$1B, $0C, $0C, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$20
	dc.b	$36, $35, $30, $31,	$DF, $DF, $9F, $9F
	dc.b	$07, $06, $09, $06,	$07, $06, $06, $08
	dc.b	$20, $10, $10, $F8,	$19, $37, $13, $00
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
