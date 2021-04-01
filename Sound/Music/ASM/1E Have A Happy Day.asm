
Target	EQU	$4DC84
	smpsHeaderVoice	HappyDay_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $1C
	smpsHeaderFM	HappyDay_FM1, Target, $F4, $05
	smpsHeaderFM	HappyDay_FM2, Target, $00, $10
	smpsHeaderFM	HappyDay_FM3, Target, $00, $0F
	smpsHeaderFM	HappyDay_FM4, Target, $00, $1C
	smpsHeaderFM	HappyDay_FM5, Target, $0C, $16
	smpsHeaderFM	HappyDay_FM6, Target, $00, $24
	smpsHeaderPSG	HappyDay_PSG1, Target, $F4, $02, $00, $00
	smpsHeaderPSG	HappyDay_PSG2, Target, $F4, $02, $00, $00
	smpsHeaderPSG	HappyDay_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	HappyDay_PWM1, Target, $00, $CC
	smpsHeaderPWM	HappyDay_PWM2, Target, $00, $8A
	smpsHeaderPWM	HappyDay_PWM3, Target, $00, $DD
	smpsHeaderPWM	HappyDay_PWM4, Target, $00, $00

HappyDay_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

HappyDay_Jump1:
	dc.b	nBb2, $0C, nC3, $06, nBb2, nRst, nBb2, nG2
	dc.b	nF2, nF2, $0C, nG2, nEb2, $06, nF2, $12
	dc.b	nAb2, $0C, nBb2, $06, nAb2, nRst, nAb2, nF2
	dc.b	nEb2, nEb2, $0C, nF2, nBb1, $06, nF2, $12
	smpsJump		HappyDay_Jump1, Target

HappyDay_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterPitch	$F4

HappyDay_Jump2:
	dc.b	nBb5, $24, nF5, $24, nF6, $18, smpsNoAttack, $18
	dc.b	nEb6, $0C, nD6, nC6, nD6, nEb6, nC6, nD6
	dc.b	$24, nBb5, $24, nF5, $18, smpsNoAttack, $48, nRst
	dc.b	$18, nF6, $24, nBb5, $24, nCs6, $18, smpsNoAttack
	dc.b	$18, nC6, $0C, nCs6, nBb5, nF5, nG5, nBb5
	dc.b	smpsNoAttack, $60, smpsNoAttack, $18, nC6, nD6, nEb6
	smpsJump		HappyDay_Jump2, Target

HappyDay_FM3:
	smpsFMvoice		$02
	smpsPan		panCenter

HappyDay_Jump3:
	dc.b	nBb4, $24, nF4, $24, nF5, $18, smpsNoAttack, $18
	dc.b	nEb5, $0C, nD5, nC5, nD5, nEb5, nC5, nD5
	dc.b	$24, nBb4, $24, nF4, $18, smpsNoAttack, $48, nRst
	dc.b	$18, nF5, $24, nBb4, $24, nCs5, $18, smpsNoAttack
	dc.b	$18, nC5, $0C, nCs5, nBb4, nF4, nG4, nBb4
	dc.b	smpsNoAttack, $60, smpsNoAttack, $18, nC5, nD5, nEb5
	smpsJump		HappyDay_Jump3, Target

HappyDay_FM4:
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06

HappyDay_Jump4:
	dc.b	nBb5, $24, nF5, $24, nF6, $18, smpsNoAttack, $18
	dc.b	nEb6, $0C, nD6, nC6, nD6, nEb6, nC6, nD6
	dc.b	$24, nBb5, $24, nF5, $12
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$01
	smpsPan		panRight
	smpsAlterVol		$F6
	dc.b	nD6, $12, nEb6, $12, nE6, $0C, nF6, $12
	dc.b	nC6, $12, nEb6, $0C, nRst, $06
	smpsAlterVol		$0A
	smpsPan		panCenter
	smpsFMvoice		$02
	smpsModSet	$01, $01, $02, $05
	dc.b	nF6, $24, nBb5, $24, nCs6, $18, smpsNoAttack, $18
	dc.b	nC6, $0C, nCs6, nBb5, nF5, nG5, nBb5, nRst
	dc.b	$5A
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$01
	smpsPan		panRight
	smpsAlterVol		$FC
	dc.b	nRst, $18, nC6, nD6, nEb6, nRst, $06
	smpsAlterVol		$04
	smpsPan		panCenter
	smpsFMvoice		$02
	smpsModSet	$01, $01, $02, $05
	smpsJump		HappyDay_Jump4, Target

HappyDay_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter

HappyDay_Jump5:
	dc.b	nRst, $60, nRst, $60, nRst, $5A
	smpsPan		panLeft
	dc.b	nCs5, $06, nD5, $12, nEb5, $12, nE5, $0C
	dc.b	nF5, $12, nC5, $12, nEb5, $0C, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $18, nC5, nD5
	dc.b	nEb5
	smpsJump		HappyDay_Jump5, Target

HappyDay_FM6:
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsModSet	$01, $01, $05, $07
	dc.b	nRst, $0C

HappyDay_Jump6:
	dc.b	nRst, $0C, nBb5, nRst, nBb5, nRst, nBb5, nRst
	dc.b	nBb5, nRst, $0C, nAb5, nRst, nAb5, nRst, nAb5
	dc.b	nRst, nAb5
	smpsJump		HappyDay_Jump6, Target

HappyDay_PSG1:
	smpsPSGvoice	$08

HappyDay_Jump7:
	dc.b	nRst, $0C, nBb4, nRst, nBb4, nRst, nBb4, nRst
	dc.b	nBb4, nRst, $0C, nAb4, nRst, nAb4, nRst, nAb4
	dc.b	nRst, nAb4
	smpsJump		HappyDay_Jump7, Target

HappyDay_PSG2:
	smpsPSGvoice	$08

HappyDay_Jum$8:
	dc.b	nRst, $0C, nD4, nRst, nD4, nRst, nD4, nRst
	dc.b	nD4, nRst, $0C, nC4, nRst, nC4, nRst, nC4
	dc.b	nRst, nC4
	smpsJump		HappyDay_Jum$8, Target

HappyDay_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02

HappyDay_Jum$9:
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	nC4, $06
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $06
	smpsSetVol	$FD
	smpsJump		HappyDay_Jum$9, Target

HappyDay_PWM1:
	dc.b	$8B, $18, nRst, $12, $8B, $06, nRst, $8B
	dc.b	$8B, $0C, nRst, $0C, $8B
	smpsJump		HappyDay_PWM1, Target

HappyDay_PWM2:
	dc.b	nRst, $18, $8C
	smpsJump		HappyDay_PWM2, Target

HappyDay_PWM3:
	dc.b	$89, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump		HappyDay_PWM3, Target

HappyDay_PWM4:
	smpsStop

HappyDay_Patches:

	
	dc.b	$3A
	dc.b	$01, $05, $32, $71,	$CF, $95, $1F, $1F
	dc.b	$0E, $0F, $05, $0C,	$17, $06, $06, $07
	dc.b	$8F, $4F, $4F, $4F,	$21, $13, $24, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$71, $31, $70, $01,	$4F, $10, $51, $4F
	dc.b	$06, $0A, $0C, $02,	$01, $00, $01, $00
	dc.b	$25, $E5, $35, $17,	$20, $21, $0C, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
