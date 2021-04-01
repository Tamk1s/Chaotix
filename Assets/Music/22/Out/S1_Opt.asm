
	sHeaderInit
	smpsHeaderVoice	VOC_Patches, Target
	smpsHeaderChan	$05, $00
	smpsHeaderTempo	$05, $0C
	sHeaderDAC	VOC_DAC
	smpsHeaderFM	VOC_FM1, Target, $00, $0E
	smpsHeaderFM	VOC_FM2, Target, $00, $0E
	smpsHeaderFM	VOC_FM3, Target, $00, $19
	smpsHeaderFM	VOC_FM4, Target, $00, $13

VOC_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b	nD3, $18, nG3, $0C, nA3, nD3, $18, nG3
	dc.b	$0C, nA3
	smpsJump		VOC_FM1, Target

VOC_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nD3, $18, nG3, $0C, nA3, nD3, $18, nG3
	dc.b	$0C, nA3
	smpsJump		VOC_FM2, Target

VOC_FM3:
	smpsPan		panCenter
	smpsFMvoice		$02
	dc.b	nD2, $18, $0C, nE2, nD2, $18, $0C, nE2
	smpsJump		VOC_FM3, Target

VOC_FM4:
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b	nD2, $18, $0C, nE2, nD2, $18, $0C, nE2
	smpsJump		VOC_FM4, Target

VOC_DAC:
	smpsStop

VOC_Patches:

	
	dc.b	$0D
	dc.b	$35, $33, $73, $73,	$0B, $0B, $0A, $0A
	dc.b	$06, $06, $06, $06,	$00, $00, $00, $00
	dc.b	$93, $93, $9F, $9F,	$20, $18, $18, $10
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$31, $32, $78, $62,	$0B, $0B, $0A, $0A
	dc.b	$01, $02, $01, $02,	$00, $00, $00, $00
	dc.b	$9F, $9F, $9F, $9F,	$20, $20, $30, $08
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$00, $00, $00, $00,	$0C, $0C, $16, $16
	dc.b	$17, $17, $00, $00,	$09, $09, $09, $09
	dc.b	$02, $02, $02, $02,	$21, $10, $12, $09
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$31, $34, $71, $71,	$16, $17, $17, $17
	dc.b	$05, $05, $05, $05,	$07, $07, $07, $07
	dc.b	$13, $13, $13, $13,	$1C, $1C, $1C, $0A
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
