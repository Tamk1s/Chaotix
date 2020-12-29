
Target	EQU	$4BF02
	smpsHeaderVoice	SScreen_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $45
	smpsHeaderFM	SScreen_FM1, Target, $00, $08
	smpsHeaderFM	SScreen_FM2, Target, $00, $0B
	smpsHeaderFM	SScreen_FM3, Target, $FB, $0C
	smpsHeaderFM	SScreen_FM4, Target, $00, $1B
	smpsHeaderFM	SScreen_FM5, Target, $00, $1B
	smpsHeaderFM	SScreen_FM6, Target, $00, $20
	smpsHeaderPSG	SScreen_PSG1, Target, $E8, $01, $00, $00
	smpsHeaderPSG	SScreen_PSG2, Target, $E3, $02, $00, $00
	smpsHeaderPSG	SScreen_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	SScreen_PWM1, Target, $00, $CC
	smpsHeaderPWM	SScreen_PWM2, Target, $00, $AA
	smpsHeaderPWM	SScreen_PWM3, Target, $00, $CC
	smpsHeaderPWM	SScreen_PWM4, Target, $00, $AA

SScreen_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $14

SScreen_Loop1:
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02
	dc.b	nB2, $02, nRst, $02, nD3, $04, nB2, $02
	dc.b	nD3, $04, nE3, $04, nE2, $04, nE2, $04
	dc.b	nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $02, nD3, $02, nB2, $02, nD3, $04
	dc.b	nCs3, $04
	smpsLoop		$00, $03, SScreen_Loop1, Target
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02
	dc.b	nB2, $02, nRst, $02, nD3, $04, nB2, $02
	dc.b	nD3, $04, nE3, $04, nE2, $04, nE3, $04
	dc.b	nEb3, $04, nEb2, $02, nD2, $02, nRst, $02
	dc.b	nD2, $02, nD3, $04, nCs2, $02, nCs3, $02
	dc.b	nD2, $02, nD3, $02

SScreen_Loop2:
	dc.b	nE2, $04, nRst, $04, nD3, $04, nE3, $02
	dc.b	nB2, $02, nRst, $02, nD3, $04, nB2, $02
	dc.b	nD3, $04, nE3, $04, nE2, $04, nE2, $04
	dc.b	nD3, $04, nE3, $02, nB2, $02, nRst, $02
	dc.b	nD3, $02, nD3, $02, nB2, $02, nD3, $04
	dc.b	nCs3, $04
	smpsLoop		$00, $04, SScreen_Loop2, Target

SScreen_Loop3:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2
	dc.b	nB2, nD3, nE3, nD3, nB2, nD3, nB2, nE3
	dc.b	nE2
	smpsLoop		$00, $06, SScreen_Loop3, Target
	smpsJump		SScreen_Loop1, Target

SScreen_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nRst, $14

SScreen_Loop4:
	smpsCall		SScreen_Call1, Target
	smpsLoop		$00, $04, SScreen_Loop4, Target

SScreen_Loop5:
	dc.b	nRst, $20
	smpsLoop		$00, $04, SScreen_Loop5, Target
	smpsCall		SScreen_Call1, Target
	smpsAlterPitch	$0C
	smpsCall		SScreen_Call1, Target
	smpsAlterPitch	$F4
	smpsJump		SScreen_Loop4, Target

SScreen_Call1:
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panLeft
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panLeft
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panLeft
	dc.b	nE5, $02, nRst, $02, nRst, $0C
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02, nD5, $02, nRst, $02
	dc.b	nD5, $02, nRst, $02, nF5, $02, nRst, $02
	dc.b	nF5, $02, nRst, $02, nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panLeft
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panLeft
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panLeft
	dc.b	nE5, $02, nRst, $02, nRst, $20
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsReturn

SScreen_FM3:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nRst, $14

SScreen_Loop6:
	smpsCall		SScreen_Call2, Target
	smpsLoop		$00, $04, SScreen_Loop6, Target

SScreen_Loop7:
	dc.b	nRst, $20
	smpsLoop		$00, $04, SScreen_Loop7, Target
	smpsCall		SScreen_Call2, Target
	smpsAlterPitch	$0C
	smpsCall		SScreen_Call2, Target
	smpsAlterPitch	$F4
	smpsJump		SScreen_Loop6, Target

SScreen_Call2:
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	nE5, $02, nRst, $02, nRst, $0C
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02, nD5, $02, nRst, $02
	dc.b	nD5, $02, nRst, $02, nF5, $02, nRst, $02
	dc.b	nF5, $02, nRst, $02, nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	nE5, $02, nRst, $02, nRst, $04
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $02, nRst, $02
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	nE5, $02, nRst, $02, nRst, $20
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsReturn

SScreen_FM4:
	smpsPan		panCenter
	smpsFMvoice		$02
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $14

SScreen_Loo$8:
	dc.b	nBb4, $01, nB4, $1F, smpsNoAttack, $10, nA4, nB4
	dc.b	$20, smpsNoAttack, $1F, nBb5, $01, nB5, $20, smpsNoAttack
	dc.b	$10, nA5, $10, nB5, $20, smpsNoAttack, $20
	smpsLoop		$00, $02, SScreen_Loo$8, Target

SScreen_Loo$9:
	dc.b	nRst, $20
	smpsLoop		$00, $0B, SScreen_Loo$9, Target
	dc.b	nRst, $20
	smpsJump		SScreen_Loo$8, Target

SScreen_FM5:
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	smpsFMvoice		$02
	dc.b	nRst, $14

SScreen_Loop10:
	dc.b	nEb4, $01, nE4, $1F, smpsNoAttack, $10, nD4, $10
	dc.b	nE4, $20, smpsNoAttack, $1F, nEb5, $01, nE5, $20
	dc.b	smpsNoAttack, $10, nD5, $10, nE5, $20, smpsNoAttack, $20
	smpsLoop		$00, $02, SScreen_Loop10, Target
	smpsFMvoice		$03
	smpsAlterPitch	$13
	smpsAlterVol		$05
	dc.b	nRst, $04

SScreen_Loop11:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2
	dc.b	nB2, nD3, nE3, nD3, nB2, nD3, nB2, nE3
	dc.b	nE2
	smpsLoop		$00, $05, SScreen_Loop11, Target
	dc.b	nE2, nB2, nD3, nE3, nD3, nB2, nE2, nB2
	dc.b	nD3, nE3, nD3, nB2, nD3, nB2, nE3
	smpsAlterPitch	$ED
	smpsAlterVol		$FB
	smpsFMvoice		$02
	smpsJump		SScreen_Loop10, Target

SScreen_FM6:
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $04, nRst, $14

SScreen_Jump1:
	smpsCall		SScreen_Call3, Target
	smpsJump		SScreen_Jump1, Target

SScreen_PSG1:
	smpsPSGvoice	$0C
	dc.b	nRst, $14

SScreen_Jump2:
	smpsCall		SScreen_Call3, Target
	smpsJump		SScreen_Jump2, Target

SScreen_Call3:
	dc.b	nRst, $20, nRst, $20, nRst, $04, nE5, $04
	dc.b	nG5, $04, nD6, $04, nCs6, $06, nB5, $02
	dc.b	nA5, $04, nB5, $04, nA5, $04, nD5, nE5
	dc.b	nG5, nA5, nB5, nD6, nFs6, nRst, $20, nRst
	dc.b	$20, nRst, $04, nE5, $04, nG5, $04, nD6
	dc.b	$04, nCs6, $06, nB5, $02, nA5, $04, nB5
	dc.b	$04, nA5, $04, nD5, nE5, nG5, nA5, nG5
	dc.b	nFs5, nD5
	smpsLoop		$00, $02, SScreen_Call3, Target
	smpsAlterPitch	$18

SScreen_Loop12:
	dc.b	nE2, $04, nB2, nD3, nE3, nD3, nB2, nE2
	dc.b	nB2, nD3, nE3, nD3, nB2, nD3, nB2, nE3
	dc.b	nE2
	smpsLoop		$00, $06, SScreen_Loop12, Target
	smpsAlterPitch	$E8
	smpsReturn

SScreen_PSG2:
	smpsPSGvoice	$0C
	dc.b	nRst, $14

SScreen_Jump3:
	smpsCall		SScreen_Call3, Target
	smpsJump		SScreen_Jump3, Target

SScreen_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $14

SScreen_Loop13:
	smpsPSGvoice	$05
	dc.b	nC4, $04
	smpsPSGvoice	$02
	smpsSetVol	$04
	dc.b	nC4
	smpsPSGvoice	$05
	smpsSetVol	$FD
	dc.b	nC4
	smpsPSGvoice	$02
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	smpsPSGvoice	$05
	dc.b	nC4, $04
	smpsPSGvoice	$02
	smpsSetVol	$04
	dc.b	nC4
	smpsPSGvoice	$05
	smpsSetVol	$FD
	dc.b	nC4
	smpsPSGvoice	$02
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	smpsLoop		$00, $10, SScreen_Loop13, Target

SScreen_Loop14:
	dc.b	nRst, $20
	smpsLoop		$00, $0B, SScreen_Loop14, Target
	smpsPSGvoice	$05
	dc.b	nC4, $04
	smpsPSGvoice	$02
	dc.b	nC4
	smpsSetVol	$04
	smpsPSGvoice	$05
	dc.b	nC4
	smpsPSGvoice	$02
	dc.b	nC4
	smpsPSGvoice	$05
	smpsSetVol	$FF
	dc.b	nC4
	smpsPSGvoice	$02
	smpsSetVol	$FF
	dc.b	nC4
	smpsPSGvoice	$05
	smpsSetVol	$FF
	dc.b	nC4
	smpsPSGvoice	$02
	smpsSetVol	$FF
	dc.b	nC4
	smpsJump		SScreen_Loop13, Target

SScreen_PWM1:
	dc.b	$96, $14

SScreen_Jump4:
	dc.b	$8B, $04, $87, $8B, $8B, $87, $8B, $8B
	dc.b	$87, $8B, $04, $8B, $87, $8B, $87, $8B
	dc.b	$87, $8B
	smpsJump		SScreen_Jump4, Target

SScreen_PWM2:
	smpsAlterVol		$C0
	dc.b	$82, $02, $82
	smpsAlterVol		$40
	smpsAlterVol		$11
	dc.b	$82, $04
	smpsAlterVol		$AB
	dc.b	$82, $02, $82
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $08, nRst, $18
	smpsAlterVol		$EF

SScreen_Loop15:
	dc.b	nRst, $20
	smpsLoop		$00, $06, SScreen_Loop15, Target
	dc.b	nRst, $0C
	smpsLoop		$01, $02, SScreen_PWM2, Target
	dc.b	$82, $02, $82
	smpsAlterVol		$11
	dc.b	$82, $04
	smpsAlterVol		$AB
	dc.b	$82, $02, $82
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $02
	smpsAlterVol		$11
	dc.b	$82, $02

SScreen_Loop16:
	smpsAlterVol		$11
	dc.b	$82, $08, nRst, $18
	smpsAlterVol		$EF
	dc.b	nRst, $20
	smpsLoop		$00, $05, SScreen_Loop16, Target
	smpsAlterVol		$11
	dc.b	$82, $08, nRst, $18
	smpsAlterVol		$EF
	dc.b	nRst, $0C
	smpsJump		SScreen_PWM2, Target

SScreen_PWM3:
	dc.b	$96, $04
	smpsAlterVol		$9A
	dc.b	$89, $08
	smpsAlterVol		$33
	dc.b	$89, $08
	smpsAlterVol		$33

SScreen_Loop18:
	dc.b	$89, $20

SScreen_Loop17:
	dc.b	nRst, $20
	smpsLoop		$00, $03, SScreen_Loop17, Target
	smpsLoop		$01, $04, SScreen_Loop18, Target

SScreen_Loop19:
	dc.b	nRst, $20
	smpsLoop		$00, $0B, SScreen_Loop19, Target
	smpsAlterVol		$9A
	dc.b	$89, $08
	smpsAlterVol		$11
	dc.b	$89, $08
	smpsAlterVol		$22
	dc.b	$89, $08
	smpsAlterVol		$11
	dc.b	$89, $08
	smpsAlterVol		$22
	smpsJump		SScreen_Loop18, Target

SScreen_PWM4:
	dc.b	nRst, $14

SScreen_Loop21:
	dc.b	$83, $20

SScreen_Loop20:
	dc.b	nRst, $20
	smpsLoop		$00, $03, SScreen_Loop20, Target
	smpsLoop		$01, $04, SScreen_Loop21, Target

SScreen_Loop22:
	smpsAlterVol		$22
	dc.b	$8A, $04
	smpsAlterVol		$DE
	dc.b	$04, nRst, $08, $8A, $08
	smpsAlterVol		$22
	dc.b	$04
	smpsAlterVol		$DE
	dc.b	$04, nRst, $08, $8A, nRst, $04, $8A, nRst
	dc.b	$8A
	smpsLoop		$00, $06, SScreen_Loop22, Target
	smpsJump		SScreen_Loop21, Target

SScreen_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $0F, $01, $01,	$0F, $0F, $0F, $14
	dc.b	$0A, $0A, $0A, $05,	$02, $02, $02, $08
	dc.b	$56, $A6, $56, $17,	$19, $28, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$0F
	dc.b	$32, $76, $72, $31,	$1F, $1F, $1F, $1F
	dc.b	$00, $0F, $00, $00,	$00, $00, $00, $00
	dc.b	$0A, $69, $09, $08,	$85, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $10
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $07,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
