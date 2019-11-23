
Target	EQU	$5400B
	smpsHeaderVoice	Decision2_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $44
	smpsHeaderFM	Decision2_FM1, Target, $F4, $0B
	smpsHeaderFM	Decision2_FM2, Target, $0C, $0F
	smpsHeaderFM	Decision2_FM3, Target, $0C, $0F
	smpsHeaderFM	Decision2_FM4, Target, $0C, $0F
	smpsHeaderFM	Decision2_FM5, Target, $0C, $16
	smpsHeaderFM	Decision2_FM6, Target, $0C, $18
	smpsHeaderPSG	Decision2_PSG1, Target, $00, $00, $00, $00
	smpsHeaderPSG	Decision2_PSG2, Target, $00, $00, $00, $00
	smpsHeaderPSG	Decision2_PSG3, Target, $23, $01, $00, $00
	smpsHeaderPWM	Decision2_PWM1, Target, $00, $AA
	smpsHeaderPWM	Decision2_PWM2, Target, $00, $88
	smpsHeaderPWM	Decision2_PWM3, Target, $00, $BB
	smpsHeaderPWM	Decision2_PWM4, Target, $00, $00

Decision2_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $08, nAb3, $04
	smpsAlterVol		$FC
	dc.b	nRst, $0C, nBb3, $04
	smpsAlterVol		$FC
	dc.b	nRst, $0C, nB3, $08
	smpsAlterVol		$FD
	dc.b	nCs4, $04, nRst, nEb4, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		Decision2_Call1, Target

Decision2_Call1:
	dc.b	nRst, $08, nBb3, $02, nRst
	smpsAlterVol		$11
	smpsPan		panLeft
	dc.b	nBb3, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nC4, $02, nRst
	smpsAlterVol		$11
	smpsPan		panLeft
	dc.b	nC4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nCs4, $08
	smpsAlterVol		$FD
	dc.b	nEb4, $04, nRst, nF4, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2_FM3:
	smpsFMvoice		$00
	smpsPan		panCenter
	smpsCall		Decision2_Call2, Target

Decision2_Call2:
	dc.b	nRst, $08, nCs4, $04
	smpsAlterVol		$11
	smpsPan		panRight
	dc.b	nCs4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nEb4, $04
	smpsAlterVol		$11
	smpsPan		panRight
	dc.b	nEb4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nE4, $08
	smpsAlterVol		$FD
	dc.b	nFs4, $04, nRst, nAb4, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2_FM4:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $08, nFs4, $02, nRst
	smpsAlterVol		$15
	dc.b	nFs4, $04
	smpsAlterVol		$E7
	dc.b	nRst, $08, nAb4, $02, nRst
	smpsAlterVol		$15
	dc.b	nAb4, $04
	smpsAlterVol		$E7
	dc.b	nRst, $08, nA4, $08
	smpsAlterVol		$FD
	dc.b	nB4, $04, nRst, nCs5, $08, smpsNoAttack, $40, smpsNoAttack
	dc.b	$30
	smpsStop

Decision2_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall		Decision2_Call1, Target
	smpsStop

Decision2_FM6:
	smpsFMvoice		$00
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall		Decision2_Call2, Target
	smpsStop

Decision2_PSG1:
	smpsStop

Decision2_PSG2:
	smpsStop

Decision2_PSG3:
	smpsPSGform	$E7

Decision2_Loop1:
	smpsPSGvoice	$05
	dc.b	nC4, $08
	smpsSetVol	$03
	smpsPSGvoice	$02
	dc.b	nC4
	smpsSetVol	$FD
	smpsLoop		$00, $03, Decision2_Loop1, Target
	smpsPSGvoice	$05
	dc.b	nC4, $10
	smpsStop

Decision2_PWM1:
	dc.b	$96, $08, $8B
	smpsLoop		$00, $03, Decision2_PWM1, Target
	dc.b	$8B, $10
	smpsStop

Decision2_PWM2:
	dc.b	$8C, $10
	smpsLoop		$00, $02, Decision2_PWM2, Target
	dc.b	$8C, $0C, $04, nRst, $08, $8C
	smpsStop

Decision2_PWM3:
	dc.b	$96, $20, $18, $89, $08
	smpsStop

Decision2_PWM4:
	smpsStop

Decision2_Patches:

	
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
