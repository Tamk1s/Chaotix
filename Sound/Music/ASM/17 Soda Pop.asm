
Target	EQU	$4AC3C
	smpsHeaderVoice	SodaPop_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0A
	smpsHeaderFM	SodaPop_FM1, Target, $F4, $07
	smpsHeaderFM	SodaPop_FM2, Target, $00, $09
	smpsHeaderFM	SodaPop_FM3, Target, $00, $1B
	smpsHeaderFM	SodaPop_FM4, Target, $00, $1B
	smpsHeaderFM	SodaPop_FM5, Target, $00, $0F
	smpsHeaderFM	SodaPop_FM6, Target, $00, $18
	smpsHeaderPSG	SodaPop_PSG1, Target, $E8, $01, $00, $00
	smpsHeaderPSG	SodaPop_PSG2, Target, $E8, $01, $00, $00
	smpsHeaderPSG	SodaPop_PSG3, Target, $23, $03, $00, $00
	smpsHeaderPWM	SodaPop_PWM1, Target, $00, $FF
	smpsHeaderPWM	SodaPop_PWM2, Target, $00, $DD
	smpsHeaderPWM	SodaPop_PWM3, Target, $00, $FF
	smpsHeaderPWM	SodaPop_PWM4, Target, $00, $00

SodaPop_FM1:
	smpsPan		panCenter

SodaPop_Loop1:
	smpsFMvoice		$00
	dc.b	nC3, $12
	smpsAlterVol		$03
	dc.b	nC4, $06, nBb3, nG3, $0C, nA3, $06, nRst
	dc.b	nC3
	smpsAlterVol		$FD
	dc.b	nC4, $0C
	smpsAlterVol		$03
	dc.b	nBb3, nG3
	smpsAlterVol		$FD
	smpsLoop		$00, $20, SodaPop_Loop1, Target

SodaPop_Loop2:
	dc.b	nRst, $60
	smpsLoop		$00, $04, SodaPop_Loop2, Target
	smpsAlterVol		$0B
	smpsFMvoice		$01
	smpsAlterPitch	$0C
	dc.b	nC3, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $30
	dc.b	nG2, $30, nC3, $60, smpsNoAttack, $60, smpsNoAttack, $60
	dc.b	smpsNoAttack, $30
	smpsAlterVol		$F5
	smpsFMvoice		$00
	smpsAlterPitch	$F4
	dc.b	nC3, $06, nF3, nBb3, nB3, nA3, $04, nAb3
	dc.b	nG3, nFs3, nF3, nEb3
	smpsJump		SodaPop_Loop1, Target

SodaPop_FM2:
	smpsPan		panCenter
	smpsFMvoice		$02

SodaPop_Loop3:
	smpsCall		SodaPop_Call1, Target
	smpsLoop		$00, $04, SodaPop_Loop3, Target

SodaPop_Loop4:
	dc.b	nRst, $60
	smpsLoop		$00, $04, SodaPop_Loop4, Target
	smpsCall		SodaPop_Call1, Target
	smpsJump		SodaPop_Loop3, Target

SodaPop_Call1:
	dc.b	nG4, $60, smpsNoAttack, $18, nF4, $15, nRst, $03
	dc.b	nEb4, $15, nRst, $03, nF4, $15, nRst, $03
	dc.b	nC4, $60, smpsNoAttack, $18, nD4, $15, nRst, $03
	dc.b	nEb4, $15, nRst, $03, nF4, $15, nRst, $03
	dc.b	nG4, $60, smpsNoAttack, $18, nA4, $15, nRst, $03
	dc.b	nBb4, $15, nRst, $03, nF5, $15, nRst, $03
	dc.b	nE5, $60, smpsNoAttack, $30, nRst, $30
	smpsReturn

SodaPop_FM3:
	smpsModSet	$01, $01, $02, $05
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b	nRst, $09
	smpsCall		SodaPop_Call2, Target

SodaPop_FM4:
	smpsModSet	$01, $01, $02, $05
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b	nRst, $09
	smpsCall		SodaPop_Call3, Target

SodaPop_FM5:
	smpsFMvoice		$04
	smpsAlterNote	$05

SodaPop_Loop10:
	dc.b	nRst, $60, nRst, $60, nRst, $18

SodaPop_Loo$8:
	smpsCall		SodaPop_Call4, Target
	smpsLoop		$00, $07, SodaPop_Loo$8, Target
	dc.b	nRst, $60, nRst, $60, nRst, $18

SodaPop_Loo$9:
	smpsCall		SodaPop_Call5, Target
	smpsLoop		$01, $07, SodaPop_Loo$9, Target
	smpsLoop		$02, $04, SodaPop_Loop10, Target

SodaPop_Loop11:
	dc.b	nRst, $60
	smpsLoop		$00, $04, SodaPop_Loop11, Target
	dc.b	nRst, $18
	smpsAlterVol		$05

SodaPop_Loop12:
	smpsCall		SodaPop_Call4, Target
	smpsLoop		$00, $07, SodaPop_Loop12, Target
	smpsAlterPitch	$0C

SodaPop_Loop13:
	smpsCall		SodaPop_Call4, Target
	smpsLoop		$00, $08, SodaPop_Loop13, Target
	smpsAlterPitch	$F4
	dc.b	nRst, $18

SodaPop_Loop14:
	smpsCall		SodaPop_Call4, Target
	smpsLoop		$00, $07, SodaPop_Loop14, Target
	smpsAlterPitch	$0C

SodaPop_Loop15:
	smpsCall		SodaPop_Call5, Target
	smpsLoop		$00, $08, SodaPop_Loop15, Target
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	smpsJump		SodaPop_Loop10, Target

SodaPop_Call4:
	smpsPan		panCenter
	dc.b	nG5, $03
	smpsPan		panLeft
	smpsAlterVol		$06
	dc.b	nG5
	smpsPan		panCenter
	smpsAlterVol		$FA
	dc.b	nA5
	smpsPan		panRight
	smpsAlterVol		$06
	dc.b	nA5
	smpsPan		panCenter
	smpsAlterVol		$FA
	dc.b	nBb5
	smpsPan		panLeft
	smpsAlterVol		$06
	dc.b	nBb5
	smpsPan		panCenter
	smpsAlterVol		$FA
	dc.b	nF6
	smpsPan		panRight
	smpsAlterVol		$06
	dc.b	nF6
	smpsAlterVol		$FA
	smpsReturn

SodaPop_Call5:
	smpsPan		panCenter
	dc.b	nG5, $03
	smpsPan		panLeft
	smpsAlterVol		$06
	dc.b	nG5
	smpsPan		panCenter
	smpsAlterVol		$FA
	dc.b	nA5
	smpsPan		panRight
	smpsAlterVol		$06
	dc.b	nA5
	smpsPan		panCenter
	smpsAlterVol		$FA
	dc.b	nBb5
	smpsPan		panLeft
	smpsAlterVol		$06
	dc.b	nBb5
	smpsPan		panCenter
	smpsAlterVol		$FA
	dc.b	nE6
	smpsPan		panRight
	smpsAlterVol		$06
	dc.b	nE6
	smpsAlterVol		$FA
	smpsReturn

SodaPop_FM6:
	smpsPan		panCenter
	dc.b	nRst, $12

SodaPop_Loop16:
	smpsModSet	$01, $01, $04, $06
	smpsFMvoice		$02
	smpsCall		SodaPop_Call1, Target
	dc.b	nG4, $60, smpsNoAttack, $18, nF4, $15, nRst, $03
	dc.b	nEb4, $15, nRst, $03, nF4, $15, nRst, $03
	dc.b	nC4, $60, smpsNoAttack, $18, nD4, $15, nRst, $03
	dc.b	nEb4, $15, nRst, $03, nF4, $15, nRst, $03
	dc.b	nG4, $60, smpsNoAttack, $18, nA4, $15, nRst, $03
	dc.b	nBb4, $15, nRst, $03, nF5, $15, nRst, $03
	dc.b	nE5, $36
	smpsFMvoice		$05
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$F7
	dc.b	nG4, $06, nA4, nBb4, nG5
	smpsAlterVol		$08
	dc.b	nFs5, $03, nG5, nFs5, nG5
	smpsAlterVol		$FE
	dc.b	nFs5, nG5, nFs5, nG5
	smpsAlterVol		$FE
	dc.b	nFs5, nG5
	smpsAlterVol		$FE
	dc.b	nFs5, nG5
	smpsAlterVol		$FE
	dc.b	nFs5, nG5, nFs5, nG5, nFs5, $06, nF5, nEb5
	dc.b	nD5, nC5, nBb4, nA4, nAb4, nRst, $12
	smpsAlterVol		$09
	smpsLoop		$00, $02, SodaPop_Loop16, Target

SodaPop_Loop17:
	dc.b	nRst, $60
	smpsLoop		$00, $04, SodaPop_Loop17, Target
	smpsFMvoice		$02
	smpsModSet	$01, $01, $04, $06
	smpsCall		SodaPop_Call1, Target
	smpsJump		SodaPop_Loop16, Target

SodaPop_PSG1:
	smpsPSGvoice	$0C
	smpsCall		SodaPop_Call2, Target

SodaPop_Call2:
	dc.b	nEb5, $0C, nEb4, $06, nBb4, nRst, $06, nD5
	dc.b	$0C, nC5, $06, nRst, $06, nEb5, $06, nEb4
	dc.b	$0C, nBb4, nD5
	smpsLoop		$00, $06, SodaPop_Call2, Target

SodaPop_Loop5:
	dc.b	nE5, $0C, nE4, $06, nBb4, nRst, $06, nD5
	dc.b	$0C, nC5, $06, nRst, $06, nE5, $06, nE4
	dc.b	$0C, nBb4, nD5
	smpsLoop		$01, $02, SodaPop_Loop5, Target
	smpsLoop		$02, $04, SodaPop_Call2, Target

SodaPop_Loop6:
	dc.b	nEb5, $0C, nEb4, $06, nBb4, nRst, $06, nD5
	dc.b	$0C, nC5, $06, nRst, $06, nEb5, $06, nEb4
	dc.b	$0C, nBb4, nD5
	smpsLoop		$00, $0A, SodaPop_Loop6, Target

SodaPop_Loop7:
	dc.b	nE5, $0C, nE4, $06, nBb4, nRst, $06, nD5
	dc.b	$0C, nC5, $06, nRst, $06, nE5, $06, nE4
	dc.b	$0C, nBb4, nD5
	smpsLoop		$00, $02, SodaPop_Loop7, Target
	smpsJump		SodaPop_Call2, Target

SodaPop_PSG2:
	smpsPSGvoice	$0C
	smpsCall		SodaPop_Call3, Target

SodaPop_Call3:
	dc.b	nC5, $12, nG4, $06, nRst, $06, nBb4, $0C
	dc.b	nA4, $06, nRst, $06, nC5, $06, nRst, $0C
	dc.b	nG4, nBb4
	smpsJump		SodaPop_Call3, Target

SodaPop_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02

SodaPop_Loop18:
	dc.b	nC4, $06
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	dc.b	nC4
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	dc.b	nC4
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	dc.b	nC4
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	smpsLoop		$00, $20, SodaPop_Loop18, Target

SodaPop_Loop19:
	dc.b	nRst, $60
	smpsLoop		$00, $0C, SodaPop_Loop19, Target
	smpsJump		SodaPop_Loop18, Target

SodaPop_PWM1:
	dc.b	$8B, $18, nRst, $12, $8B, $06, $8B, $18
	dc.b	nRst, $18, $8B, $18, nRst, $12, $8B, $06
	dc.b	$8B, $18, nRst, $0C, $8B, $0C
	smpsLoop		$00, $03, SodaPop_PWM1, Target
	dc.b	$8B, $18, nRst, $12, $8B, $06, $8B, $18
	dc.b	nRst, $0C, $8B, $0C, $8B, $18, nRst, $12
	dc.b	$8B, $06, $8B, $0C, $8B, $8B, $8B
	smpsLoop		$01, $04, SodaPop_PWM1, Target

SodaPop_Loop20:
	dc.b	$8B, $18, $8B, $8B, $8B
	smpsLoop		$00, $0C, SodaPop_Loop20, Target
	smpsJump		SodaPop_PWM1, Target

SodaPop_PWM2:
	dc.b	$96, $18, $82, $12, $82, $06, nRst, $06
	dc.b	$82, $06, $82, $0C, $82, $18
	smpsLoop		$00, $07, SodaPop_PWM2, Target
	dc.b	nRst, $18, $82, $12, $82, $06, nRst, $06
	smpsAlterVol		$67
	dc.b	$82
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$33
	dc.b	$82, $0C, $82, $06, $82
	smpsLoop		$01, $04, SodaPop_PWM2, Target

SodaPop_Loop21:
	dc.b	nRst, $60
	smpsLoop		$00, $0B, SodaPop_Loop21, Target
	dc.b	nRst, $30, $82, $06
	smpsAlterVol		$34
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsJump		SodaPop_PWM2, Target

SodaPop_PWM3:
	dc.b	$89, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump		SodaPop_PWM3, Target

SodaPop_PWM4:
	smpsStop

SodaPop_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $17, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$70, $01, $01, $01,	$58, $5A, $5A, $5A
	dc.b	$0C, $04, $04, $13,	$02, $03, $03, $09
	dc.b	$25, $27, $27, $27,	$85, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $01, $03, $02,	$0D, $07, $07, $12
	dc.b	$09, $00, $00, $03,	$01, $01, $01, $08
	dc.b	$52, $02, $03, $38,	$1A, $23, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $11, $1F, $11
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $22, $51, $01,	$0F, $0F, $0F, $4F
	dc.b	$0A, $05, $05, $05,	$00, $00, $00, $00
	dc.b	$56, $28, $28, $28,	$23, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
