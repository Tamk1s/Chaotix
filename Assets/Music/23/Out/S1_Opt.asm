
	sHeaderInit
	smpsHeaderVoice	SH_SystemMenu_Patches, Target
	smpsHeaderChan	$07, $00
	smpsHeaderTempo	$03, $05
	sHeaderDAC	SH_SystemMenu_DAC
	smpsHeaderFM	SH_SystemMenu_FM1, Target, $00, $08
	smpsHeaderFM	SH_SystemMenu_FM2, Target, $00, $09
	smpsHeaderFM	SH_SystemMenu_FM3, Target, $00, $08
	smpsHeaderFM	SH_SystemMenu_FM4, Target, $00, $08
	smpsHeaderFM	SH_SystemMenu_FM5, Target, $00, $08
	smpsHeaderFM	SH_SystemMenu_FM6, Target, $00, $09

SH_SystemMenu_FM1:
	smpsFMvoice		$00
	smpsPan		panLeft
	dc.b	nRst, $55, $02, nA2, $06, nB2, $03
	smpsStop

SH_SystemMenu_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nRst, $24, nD3, $06, nB1, nRst, $27, nA1
	dc.b	$06, nB1, $03
	smpsStop

SH_SystemMenu_FM3:
	smpsPan		panCenter
	smpsFMvoice		$02
	dc.b	nCs3, $03, nFs3, nAb3, nCs3, nB3, nCs4, nCs3
	dc.b	nFs3, nAb3, nCs3, nD4, nCs4, nD3, $06, nB1

SH_SystemMenu_Loop1:
	dc.b	nCs3, $03, nFs3, nAb3, nCs3, nB3, nCs4
	smpsLoop		$00, $02, SH_SystemMenu_Loop1, Target
	dc.b	nRst, nA1, $06, nB1, $03, nCs3, nFs3, nAb3
	dc.b	nCs3, nB3, nCs4, nD4, nCs4
	smpsStop

SH_SystemMenu_FM4:
	smpsFMvoice		$00
	smpsPan		panRight
	dc.b	nRst, $55, $02, nA2, $06, nB2, $03
	smpsStop

SH_SystemMenu_FM5:
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b	nCs3, $0C, nE3, nCs3, $06, nG3, nD3, nB2
	dc.b	nCs3, $0C, nE3, nCs3, $06, nFs3, $08, nRst
	dc.b	$01, nA2, $06, nB2, $03, nCs3, $0C, nE3
	dc.b	$06, nCs3
	smpsStop

SH_SystemMenu_FM6:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nRst, $24, nD2, $06, nB2, nRst, $27, nA2
	dc.b	$06, nB2, $03
	smpsStop

SH_SystemMenu_DAC:
	smpsStop

SH_SystemMenu_Patches:

	
	dc.b	$39
	dc.b	$33, $01, $51, $01,	$5F, $5F, $5F, $5F
	dc.b	$0F, $00, $00, $0D,	$01, $01, $01, $01
	dc.b	$33, $1A, $1A, $17,	$1E, $19, $16, $11
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$00, $00, $00, $00,	$0C, $0C, $16, $16
	dc.b	$17, $17, $00, $00,	$09, $09, $09, $09
	dc.b	$02, $02, $02, $02,	$21, $10, $12, $12
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$31, $34, $71, $71,	$16, $17, $17, $17
	dc.b	$05, $05, $05, $05,	$07, $07, $07, $07
	dc.b	$13, $13, $13, $13,	$1C, $1C, $1C, $14
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$26
	dc.b	$00, $00, $01, $02,	$9F, $1F, $9F, $1F
	dc.b	$08, $01, $11, $14,	$0E, $02, $0E, $0A
	dc.b	$D8, $48, $F8, $F8,	$14, $14, $12, $0E
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
