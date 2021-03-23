
Target	EQU	$4E255
	smpsHeaderVoice	Decision_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $44
	smpsHeaderFM	Decision_FM1, Target, $F4, $0B
	smpsHeaderFM	Decision_FM2, Target, $0C, $0F
	smpsHeaderFM	Decision_FM3, Target, $0C, $0F
	smpsHeaderFM	Decision_FM4, Target, $0C, $0F
	smpsHeaderFM	Decision_FM5, Target, $0C, $16
	smpsHeaderFM	Decision_FM6, Target, $0C, $18
	smpsHeaderPSG	Decision_PSG1, Target, $00, $00, $00, $00
	smpsHeaderPSG	Decision_PSG2, Target, $00, $00, $00, $00
	smpsHeaderPSG	Decision_PSG3, Target, $23, $01, $00, $00
	smpsHeaderPWM	Decision_PWM1, Target, $00, $AA
	smpsHeaderPWM	Decision_PWM2, Target, $00, $88
	smpsHeaderPWM	Decision_PWM3, Target, $00, $BB
	smpsHeaderPWM	Decision_PWM4, Target, $00, $00

Decision_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

Decision_Jump1:
	dc.b	nRst, $08, nAb3, $04
	smpsAlterVol		$FD
	dc.b	nRst, $0C, nBb3, $04
	smpsAlterVol		$FC
	dc.b	nRst, $0C, nB3, $04
	smpsAlterVol		$FC
	dc.b	nRst, $0C, nCs4, $04, nRst, $04
	smpsAlterVol		$0B
	smpsE2		$01
	smpsJump		Decision_Jump1, Target

Decision_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter

Decision_Jump2:
	smpsCall		Decision_Call1, Target
	smpsJump		Decision_Jump2, Target

Decision_Call1:
	dc.b	nRst, $08, nBb3, $02, nRst
	smpsAlterVol		$11
	smpsPan		panLeft
	dc.b	nBb3, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FD
	dc.b	nRst, $08, nC4, $02, nRst
	smpsAlterVol		$11
	smpsPan		panLeft
	dc.b	nC4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nCs4, $02, nRst
	smpsAlterVol		$11
	smpsPan		panLeft
	dc.b	nCs4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nEb4, $02, nRst
	smpsAlterVol		$11
	smpsPan		panLeft
	dc.b	nEb4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$0B
	smpsReturn

Decision_FM3:
	smpsFMvoice		$00
	smpsPan		panCenter

Decision_Jump3:
	smpsCall		Decision_Call2, Target
	smpsJump		Decision_Jump3, Target

Decision_Call2:
	dc.b	nRst, $08, nCs4, $04
	smpsAlterVol		$11
	smpsPan		panRight
	dc.b	nCs4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FD
	dc.b	nRst, $08, nEb4, $04
	smpsAlterVol		$11
	smpsPan		panRight
	dc.b	nEb4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nE4, $04
	smpsAlterVol		$11
	smpsPan		panRight
	dc.b	nE4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$FC
	dc.b	nRst, $08, nFs4, $04
	smpsAlterVol		$11
	smpsPan		panRight
	dc.b	nFs4, $04
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsAlterVol		$0B
	smpsReturn

Decision_FM4:
	smpsFMvoice		$00
	smpsPan		panCenter

Decision_Jump4:
	dc.b	nRst, $08, nFs4, $02, nRst
	smpsAlterVol		$15
	dc.b	nFs4, $04
	smpsAlterVol		$E8
	dc.b	nRst, $08, nAb4, $02, nRst
	smpsAlterVol		$15
	dc.b	nAb4, $04
	smpsAlterVol		$E7
	dc.b	nRst, $08, nA4, $02, nRst
	smpsAlterVol		$15
	dc.b	nA4, $04
	smpsAlterVol		$E7
	dc.b	nRst, $08, nB4, $02, nRst
	smpsAlterVol		$15
	dc.b	nB4, $04
	smpsAlterVol		$F6
	smpsJump		Decision_Jump4, Target

Decision_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08

Decision_Jump5:
	smpsCall		Decision_Call1, Target
	smpsJump		Decision_Jump5, Target

Decision_FM6:
	smpsFMvoice		$00
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08

Decision_Jump6:
	smpsCall		Decision_Call2, Target
	smpsJump		Decision_Jump6, Target

Decision_PSG1:
	smpsStop

Decision_PSG2:
	smpsStop

Decision_PSG3:
	smpsPSGform	$E7

Decision_Jump7:
	smpsPSGvoice	$05
	dc.b	nC4, $08
	smpsSetVol	$03
	smpsPSGvoice	$02
	dc.b	nC4
	smpsSetVol	$FD
	smpsJump		Decision_Jump7, Target

Decision_PWM1:
	dc.b	$96, $08, $8B
	smpsJump		Decision_PWM1, Target

Decision_PWM2:
	dc.b	$8C, $10
	smpsJump		Decision_PWM2, Target

Decision_PWM3:
	smpsStop

Decision_PWM4:
	smpsStop

Decision_Patches:

	
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
