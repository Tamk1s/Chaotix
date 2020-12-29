
Target	EQU	$4DCBF
	smpsHeaderVoice	High5_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $30
	smpsHeaderFM	High5_FM1, Target, $00, $06
	smpsHeaderFM	High5_FM2, Target, $00, $06
	smpsHeaderFM	High5_FM3, Target, $FD, $07
	smpsHeaderFM	High5_FM4, Target, $0C, $09
	smpsHeaderFM	High5_FM5, Target, $00, $17
	smpsHeaderFM	High5_FM6, Target, $FD, $17
	smpsHeaderPSG	High5_PSG1, Target, $E8, $04, $00, $00
	smpsHeaderPSG	High5_PSG2, Target, $E8, $04, $00, $00
	smpsHeaderPSG	High5_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	High5_PWM1, Target, $00, $AA
	smpsHeaderPWM	High5_PWM2, Target, $00, $C8
	smpsHeaderPWM	High5_PWM3, Target, $00, $00
	smpsHeaderPWM	High5_PWM4, Target, $00, $00

High5_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nBb1, $06, nBb2, nRst, nBb1, nC3, nRst, nC2
	dc.b	$6C
	smpsStop

High5_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nF4, $03, nRst, nF4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06, nG4, $78
	smpsStop

High5_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nF4, $03, nRst, nF4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06, nG4, $78
	smpsStop

High5_FM4:
	smpsPan		panCenter
	smpsFMvoice		$02
	dc.b	nF4, $03, nRst, nF4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06, nG4, $78
	smpsStop

High5_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06, nF4, $03, nRst, nF4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06, nG4, $78
	smpsStop

High5_FM6:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06, nF4, $03, nRst, nF4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06, nG4, $78
	smpsStop

High5_PSG1:
	smpsPSGvoice	$04
	dc.b	nRst, $24, nG4, $6C
	smpsStop

High5_PSG2:
	smpsPSGvoice	$04
	dc.b	nRst, $24, nC4, $6C
	smpsStop

High5_PSG3:
	smpsStop

High5_PWM1:
	dc.b	$8B, $06, $0C, $06, $18
	smpsStop

High5_PWM2:
	dc.b	$96, $24, $89, $18
	smpsStop

High5_PWM3:
	smpsStop

High5_PWM4:
	smpsStop

High5_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $03, $02, $01,	$0F, $10, $11, $19
	dc.b	$0A, $05, $0A, $05,	$02, $02, $02, $02
	dc.b	$36, $36, $36, $58,	$19, $1E, $32, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
