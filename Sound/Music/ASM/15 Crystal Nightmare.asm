CrystalN_Header:

	smpsHeaderVoice	CrystalN_Patches
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $30
	smpsHeaderFM	CrystalN_FM1, $00, $09
	smpsHeaderFM	CrystalN_FM2, $0C, $13
	smpsHeaderFM	CrystalN_FM3, $F4, $1A
	smpsHeaderFM	CrystalN_FM4, $00, $24
	smpsHeaderFM	CrystalN_FM5, $0C, $20
	smpsHeaderFM	CrystalN_FM6, $07, $18
	smpsHeaderPSG	CrystalN_PSG1, $E8, $01, $00, $00
	smpsHeaderPSG	CrystalN_PSG2, $E3, $02, $00, $00
	smpsHeaderPSG	CrystalN_PSG3, $23, $02, $00, $00
	smpsHeaderPWM	CrystalN_PWM1, $00, $CC
	smpsHeaderPWM	CrystalN_PWM2, $00, $46
	smpsHeaderPWM	CrystalN_PWM3, $00, $54
	smpsHeaderPWM	CrystalN_PWM4, $00, $66

CrystalN_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

CrystalN_Jump1:
	dc.b	nC2, $30, smpsNoAttack, $24, nC3, $0C

CrystalN_Loop1:
	smpsAlterVol		$FD
	dc.b	nC3, $04, nRst
	smpsAlterVol		$03
	dc.b	nC3, nBb2, $0C, nA2, nAb2, $04, nRst, nG2
	dc.b	nF2, $04, nRst, nF2, nEb2, $0C, nD2, nEb2
	dc.b	$04, nRst, nE2
	smpsLoop		$00, $07, CrystalN_Loop1
	smpsAlterVol		$FD
	dc.b	nC2, $0C
	smpsAlterVol		$03
	dc.b	nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b	$04, nRst, nC3, nBb2, nRst, nG2, nF2, nRst
	dc.b	nFs2, nF2, nRst, nEb2
	smpsLoop		$01, $02, CrystalN_Loop1
	smpsFMvoice		$02
	smpsAlterPitch	$E8
	smpsAlterVol		$05
	dc.b	nC2, $60, smpsNoAttack, $60, smpsNoAttack, $30, smpsNoAttack
	smpsAlterVol		$FF
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FF
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FF
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FE
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FE
	dc.b	$18
	smpsAlterVol		$02
	smpsFMvoice		$00
	dc.b	nRst, $18
	smpsAlterPitch	$18

CrystalN_Loop2:
	dc.b	nC3, $04, nRst, nC3, nBb2, $0C, nA2, nAb2
	dc.b	$04, nRst, nG2, nF2, $04, nRst, nF2, nEb2
	dc.b	$0C, nD2, nEb2, $04, nRst, nE2
	smpsLoop		$00, $03, CrystalN_Loop2
	smpsJump		CrystalN_Jump1

CrystalN_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		CrystalN_Call1

CrystalN_Call1:
	dc.b	nEb3, $10, nRst, $04, nFs3, $04, nRst, $0C
	dc.b	nEb3, $10, nRst, $04, nFs3, $04, nRst, $0C
	dc.b	nG3, $06, nRst, nFs3, nRst, nRst, $60
	smpsAlterVol		$FB
	dc.b	nRst, $3C, nF3, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nF3, $04, nRst, nF3, nRst, $0C
	dc.b	nRst, $60, nRst, $3C, nF3, $0C, nRst, $08
	dc.b	nF3, $04, nRst, $0C, nRst, $60, nRst, $30
	dc.b	nEb3, $06, nRst, nD3, nRst, nC3, nRst, nG2
	dc.b	nRst
	smpsAlterVol		$05
	dc.b	nRst, $60
	smpsLoop		$00, $02, CrystalN_Call1
	dc.b	nEb3, $10, nRst, $04, nFs3, $04, nRst, $0C
	dc.b	nEb3, $10, nRst, $04, nFs3, $04, nRst, $0C
	dc.b	nG3, $06, nRst, nFs3, nRst
	smpsAlterPitch	$0C
	smpsAlterVol		$07
	dc.b	nC2, $18
	smpsAlterVol		$FF
	dc.b	nEb2
	smpsAlterVol		$FF
	dc.b	nF2
	smpsAlterVol		$FF
	dc.b	nFs2
	smpsAlterVol		$FF
	dc.b	nG2
	smpsAlterVol		$FF
	dc.b	nBb2
	smpsAlterVol		$FF
	dc.b	nC3
	smpsAlterVol		$FF
	dc.b	nEb3, nE3, $18, smpsNoAttack, nE3, $18, smpsNoAttack, nE3
	dc.b	$18, smpsNoAttack, nE3, $18, smpsNoAttack
	smpsAlterVol		$FF
	dc.b	nE3, $18, smpsNoAttack
	smpsAlterVol		$FF
	dc.b	nE3, $18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$12, nRst, $06
	smpsAlterVol		$F9
	dc.b	nFs3, $04, nFs3, $04, nFs3, $04, nFs3, $0C
	smpsAlterVol		$0C
	dc.b	nC3, $60, smpsNoAttack, $60, smpsNoAttack, $18, smpsNoAttack
	smpsAlterVol		$01
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$01
	dc.b	$18, nRst, $18
	smpsAlterVol		$FE
	smpsAlterPitch	$F4
	smpsJump		CrystalN_Call1

CrystalN_FM3:
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsAlterNote	$02

CrystalN_Jump2:
	dc.b	nRst, $60

CrystalN_Loop3:
	smpsCall		CrystalN_Call2
	smpsLoop		$00, $25, CrystalN_Loop3
	dc.b	nEb6, nRst
	smpsJump		CrystalN_Jump2

CrystalN_Call2:
	dc.b	nEb6, $03, nRst, nG6, nRst, nAb6, nRst
	smpsReturn

CrystalN_FM4:
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $08

CrystalN_Loop4:
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst
	dc.b	$0C, nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04
	dc.b	nRst, $0C, nG5, $06, nRst, nFs5, $06, nRst
	dc.b	nRst, $0C, nF4, $08, nBb4, $04, nC5, $08
	dc.b	nEb5, $04, nRst, $08, nF5, $04, smpsNoAttack, $04
	dc.b	nRst, nFs5, $04, nF5, $04, nRst, nEb5, $04
	dc.b	nF5, $04, nRst, nEb5, nD5, nRst, nEb5, nD5
	dc.b	$08, nC5, $04, nBb4, $08, nG4, $04, nRst
	dc.b	$48, nRst, $0C, nF4, $08, nBb4, $04, nC5
	dc.b	$08, nEb5, $04, nRst, $08, nF5, $04, smpsNoAttack
	dc.b	$04, nRst, nFs5, $04, nF5, $04, nRst, nEb5
	dc.b	$04, nF5, $04, nRst, nEb5, nD5, nRst, nEb5
	dc.b	nD5, $08, nC5, $04, nBb4, $08, nBb5, $04
	dc.b	nRst, $48, nRst, $08, nC5, $04, nC6, $08
	dc.b	nRst, $04, nBb5, $06, nRst, nG5, nRst, nF5
	dc.b	$08, nFs5, $04, nF5, $04, nRst, nEb5, nG5
	dc.b	$08, nBb5, $04, nC6, $08, nD6, $04, nEb6
	dc.b	$08, nF6, $04, smpsNoAttack, $04, nRst, nG6, nRst
	dc.b	$18, nEb5, $08, nEb6, $04, nD5, $08, nD6
	dc.b	$04, nC5, $08, nC6, $04, nG4, $08, nG5
	dc.b	$04, nBb5, $08, nRst, $04, nRst, $08, nC6
	dc.b	$04, nRst, $48
	smpsLoop		$00, $02, CrystalN_Loop4
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst
	dc.b	$0C, nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04
	dc.b	nRst, $0C, nG5, $06, nRst, nFs5, $06, nRst
	smpsAlterVol		$07
	dc.b	nC5, $18
	smpsAlterVol		$FF
	dc.b	nEb5
	smpsAlterVol		$FF
	dc.b	nF5
	smpsAlterVol		$FF
	dc.b	nFs5
	smpsAlterVol		$FF
	dc.b	nG5
	smpsAlterVol		$FF
	dc.b	nBb5
	smpsAlterVol		$FF
	dc.b	nC6
	smpsAlterVol		$FF
	dc.b	nEb6, nE6, $60, smpsNoAttack, $30, smpsNoAttack, $12, nRst
	dc.b	$06, nFs6, $04, nFs6, $04, nFs6, $04, nFs6
	dc.b	$0C, nC6, $60, smpsNoAttack, $60, smpsNoAttack, $18, smpsNoAttack
	smpsAlterVol		$01
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$01
	dc.b	$18, nRst, $18
	smpsAlterVol		$FE
	smpsJump		CrystalN_Loop4

CrystalN_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $03, $05
	dc.b	nRst, $09
	smpsCall		CrystalN_Call1

CrystalN_FM6:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		CrystalN_Call1

CrystalN_PSG1:
	smpsCall		CrystalN_Call3

CrystalN_Call3:
	smpsPSGvoice	$08
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst
	dc.b	$0C, nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04
	dc.b	nRst, $0C
	smpsPSGvoice	$0C
	dc.b	nG5, $06, nRst, nFs5, $06, nRst, nRst, $0C
	dc.b	nF4, $08, nBb4, $04, nC5, $08, nEb5, $04
	dc.b	nRst, $08, nF5, $04, smpsNoAttack, $08, nFs5, $04
	dc.b	nF5, $08, nEb5, $04, nF5, $08, nEb5, $04
	dc.b	nD5, $08, nEb5, $04, nD5, $08, nC5, $04
	dc.b	nBb4, $08, nG4, $04, nRst, $48, nRst, $0C
	dc.b	nF4, $08, nBb4, $04, nC5, $08, nEb5, $04
	dc.b	nRst, $08, nF5, $04, smpsNoAttack, $08, nFs5, $04
	dc.b	nF5, $08, nEb5, $04, nF5, $08, nEb5, $04
	dc.b	nD5, $08, nEb5, $04, nD5, $08, nC5, $04
	dc.b	nBb4, $08, nBb5, $04, nRst, $48, nRst, $08
	dc.b	nC5, $04, nC6, $08, nRst, $04, nBb5, $06
	dc.b	nRst, nG5, nRst, nF5, $08, nFs5, $04, nF5
	dc.b	$08, nEb5, $04, nG5, $08, nBb5, $04, nC6
	dc.b	$08, nD6, $04, nEb6, $08, nF6, $04, nRst
	dc.b	$08, nG6, $04, nRst, $18, nEb5, $08, nEb6
	dc.b	$04, nD5, $08, nD6, $04, nC5, $08, nC6
	dc.b	$04, nG4, $08, nG5, $04, nBb5, $08, smpsNoAttack
	dc.b	$04, nRst, $08, nC6, $04, nRst, $48
	smpsLoop		$00, $02, CrystalN_Call3
	smpsPSGvoice	$08
	dc.b	nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04, nRst
	dc.b	$0C, nEb5, $0C, smpsNoAttack, $04, nRst, nFs5, $04
	dc.b	nRst, $0C, nG5, $06, nRst, nFs5, $06, nRst
	smpsSetVol	$03
	dc.b	nC5, $18, nEb5
	smpsSetVol	$FF
	dc.b	nF5, nFs5
	smpsSetVol	$FF
	dc.b	nG5, nBb5
	smpsSetVol	$FF
	dc.b	nC6, nEb6, nE6, $60, smpsNoAttack, $30, smpsNoAttack, $12
	dc.b	nRst, $06, nFs6, $04, nFs6, $04, nFs6, $04
	dc.b	nFs6, $0C, nC6, $60, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack
	smpsSetVol	$01
	dc.b	$18, smpsNoAttack, $18, nRst
	smpsSetVol	$FF
	smpsJump		CrystalN_Call3

CrystalN_PSG2:
	smpsCall		CrystalN_Call3

CrystalN_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nRst, $60

CrystalN_Jump3:
	dc.b	nC4, $04, nRst, $08
	smpsSetVol	$02
	dc.b	nC4, $04, nRst, nC4
	smpsSetVol	$FE
	smpsJump		CrystalN_Jump3

CrystalN_PWM1:
	dc.b	$96, $30, $8B, $04, nRst, $04, nRst, $04
	dc.b	nRst, $0C, $8B, $04, nRst, $8C, $8C, $08
	dc.b	$04

CrystalN_Loop5:
	dc.b	$8B, $06, nRst, $06, $8B, $06, nRst, $06
	dc.b	nRst, $0C, nRst, $08, $8B, $04, nRst, $18
	dc.b	nRst, $08, $8B, $04, nRst, $0C
	smpsLoop		$00, $06, CrystalN_Loop5
	dc.b	$8B, $06, nRst, $06, $8B, $06, nRst, $06
	dc.b	nRst, $0C, nRst, $08, $8B, $04, nRst, $18
	dc.b	nRst, $08, $8B, $04, $8C, $03, nRst, $09
	dc.b	$8B, $06, nRst, $06, $8B, $06, nRst, $06
	dc.b	$8B, $06, nRst, $06, $8B, $06, nRst, $06
	dc.b	$8B, $06, nRst, $06, $8B, $06, nRst, $06
	dc.b	$8B, $04, nRst, $8C, $8C, $08, $8C, $04
	smpsLoop		$01, $02, CrystalN_Loop5
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalN_Loop6:
	dc.b	$8B, $06, nRst, $06, $8B, $06, nRst, $06
	dc.b	nRst, $0C, nRst, $08, $8B, $04, nRst, $18
	dc.b	nRst, $08, $8B, $04, nRst, $0C
	smpsLoop		$00, $03, CrystalN_Loop6
	smpsJump		CrystalN_PWM1

CrystalN_PWM2:
	dc.b	$96, $30, $96, $0C, $87, $08, $04, nRst
	dc.b	$18

CrystalN_Loop7:
	dc.b	nRst, $18, nRst, $08, $87, $04, nRst, $0C
	dc.b	$87, $06, nRst, $06, nRst, $08, $87, $04
	dc.b	nRst, $18
	smpsLoop		$00, $07, CrystalN_Loop7
	dc.b	nRst, $30, nRst, $0C, $87, $08, $04, nRst
	dc.b	$18
	smpsLoop		$01, $02, CrystalN_Loop7
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalN_Loo$8:
	dc.b	nRst, $18, nRst, $08, $87, $04, nRst, $0C
	dc.b	$87, $06, nRst, $06, nRst, $08, $87, $04
	dc.b	nRst, $18
	smpsLoop		$00, $03, CrystalN_Loo$8
	smpsJump		CrystalN_PWM2

CrystalN_PWM3:
	dc.b	$96, $30, nRst, $08, $87, $04, smpsNoAttack, $03
	dc.b	nRst, $09, nRst, $18

CrystalN_Loo$9:
	dc.b	nRst, $30, $24, nRst, $08, $87, $04
	smpsLoop		$00, $06, CrystalN_Loo$9
	dc.b	nRst, $60, $96, $30, nRst, $08, $87, $04
	dc.b	smpsNoAttack, $03, nRst, $09, nRst, $18
	smpsLoop		$01, $02, CrystalN_Loo$9
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalN_Loop10:
	dc.b	nRst, $30, $24, nRst, $08, $87, $04
	smpsLoop		$00, $03, CrystalN_Loop10
	smpsJump		CrystalN_PWM3
	dc.b	$F2	; Unused

CrystalN_PWM4:
	dc.b	$96, $60

CrystalN_Loop11:
	dc.b	$96, $18, $87, $03, nRst, $09, $87, $0C
	dc.b	nRst, $0C, $87, $03, nRst, $09, nRst, $0C
	dc.b	$87, $03, nRst, $09
	smpsLoop		$00, $07, CrystalN_Loop11
	dc.b	nRst, $60
	smpsLoop		$01, $02, CrystalN_Loop11
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

CrystalN_Loop12:
	dc.b	$96, $18, $87, $03, nRst, $09, $87, $0C
	dc.b	nRst, $0C, $87, $03, nRst, $09, nRst, $0C
	dc.b	$87, $03, nRst, $09
	smpsLoop		$00, $03, CrystalN_Loop12
	smpsJump		CrystalN_PWM4

CrystalN_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$07
	dc.b	$78, $06, $72, $31,	$9F, $DF, $5F, $DF
	dc.b	$0A, $0A, $00, $00,	$00, $00, $00, $00
	dc.b	$17, $17, $07, $07,	$88, $8A, $80, $83
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$72, $71, $32, $31,	$1F, $16, $1F, $16
	dc.b	$0A, $0C, $0A, $0C,	$00, $00, $00, $00
	dc.b	$F5, $F7, $F5, $F7,	$23, $81, $23, $81
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$11, $12, $51, $31,	$1E, $19, $14, $14
	dc.b	$08, $0A, $0A, $05,	$08, $08, $05, $05
	dc.b	$35, $46, $36, $57,	$19, $1E, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
