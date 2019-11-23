
Target	EQU	$4349A
	smpsHeaderVoice	Midnight_GH_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $48
	smpsHeaderFM	Midnight_GH_FM1, Target, $00, $0C
	smpsHeaderFM	Midnight_GH_FM2, Target, $00, $10
	smpsHeaderFM	Midnight_GH_FM3, Target, $00, $14
	smpsHeaderFM	Midnight_GH_FM4, Target, $00, $14
	smpsHeaderFM	Midnight_GH_FM5, Target, $F4, $15
	smpsHeaderFM	Midnight_GH_FM6, Target, $00, $10
	smpsHeaderPSG	Midnight_GH_PSG1, Target, $DC, $03, $00, $00
	smpsHeaderPSG	Midnight_GH_PSG2, Target, $DC, $02, $00, $00
	smpsHeaderPSG	Midnight_GH_PSG3, Target, $23, $02, $00, $00
	smpsHeaderPWM	Midnight_GH_PWM1, Target, $00, $CC
	smpsHeaderPWM	Midnight_GH_PWM2, Target, $00, $BB
	smpsHeaderPWM	Midnight_GH_PWM3, Target, $00, $BB
	smpsHeaderPWM	Midnight_GH_PWM4, Target, $00, $66

Midnight_GH_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $60, nRst, $2C, nE1, $0C, $04, nE2
	dc.b	$08, nE1, $04, nG1, $08, nG2, $04, nAb1
	dc.b	$08, nAb2, $04

Midnight_GH_Jump1:
	smpsCall		Midnight_GH_Call1, Target
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall		Midnight_GH_Call1, Target
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE1, $04
	smpsCall		Midnight_GH_Call1, Target
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall		Midnight_GH_Call1, Target
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE2, $04, nD2, $18, nRst, $0C, nD2, $18
	dc.b	nC2, $0C, nRst, $08, nF1, $10, nG1, $18
	dc.b	nRst, $0C, nG1, $18, nF1, $0C, nRst, $08
	dc.b	nA1, $10, nE1, $18, nRst, $0C, nE1, $18
	dc.b	nG1, $0C, nRst, $08, nB1, $0C, nE1, $04
	dc.b	nA1, $18, nRst, $0C, nA1, $24, nRst, $08
	dc.b	nEb2, $10, nD2, $18, nRst, $0C, nD2, $18
	dc.b	nC2, $0C, nRst, $08, nF1, $10, nE1, $18
	dc.b	nRst, $0C, nE1, $18, nD1, $0C, nRst, $08
	dc.b	nG1, $10, nF1, $18, nRst, $0C, nF1, $18
	dc.b	nE1, $0C, nRst, $08, nF1, $0C, nF2, $04
	dc.b	nG1, $14, $24, $04, nG2, $0C, nAb1, $08
	dc.b	nAb2, $0C, nAb1, $04

Midnight_GH_Loop1:
	smpsCall		Midnight_GH_Call1, Target
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall		Midnight_GH_Call1, Target
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE1, $04
	smpsLoop		$00, $05, Midnight_GH_Loop1, Target
	smpsJump		Midnight_GH_Jump1, Target

Midnight_GH_Call1:
	dc.b	nRst, $08, nA1, $04, nRst, $08, nG1, $04
	dc.b	nA1, $0C, nG1, nF1, nRst, nRst, nF1, $08
	dc.b	nFs1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nG1, $0C, nF1, nE1
	smpsReturn

Midnight_GH_FM2:
	smpsFMvoice		$02
	smpsPan		panLeft
	smpsAlterNote	$02
	smpsAlterVol		$0A
	smpsCall		Midnight_GH_Call2, Target
	smpsPan		panCenter
	smpsAlterNote	$FE
	smpsAlterVol		$F6

Midnight_GH_Jump2:
	smpsFMvoice		$03
	dc.b	nA4, $18, nB4, nC5, nG5, $14, nE5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nD5, $58, nRst, $18, nG4, $18, nA4, nC5
	dc.b	$14, nE5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nF5
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, nD5, smpsNoAttack, $48, nA4, $18, nB4, nC5
	dc.b	nG5, $14, nE5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nD5, $58, nRst, $18, nG5, $18, nA5, nE5
	dc.b	$14, nD5, $04, smpsNoAttack, $08, nCs5, $04, nC5
	dc.b	$08, nG5, $04, smpsNoAttack, $30
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $08
	smpsFMvoice		$01
	dc.b	nG4, $0C
	smpsAlterVol		$FB
	dc.b	nD5, $14, nC5, $04, nD5, $08, nRst, $04
	dc.b	nG5, $24, nRst, $0C, nG4, nD5, $14, nC5
	dc.b	$02, nCs5, nD5, $08, nRst, $04, nG5, $24
	dc.b	nRst, $0C, nG4, nD5, $14, nC5, $04, nD5
	dc.b	$08, nRst, $04, nFs5, $02, nG5, $16, nA5
	dc.b	$0C, nE5, $08, nD5, $0C, nEb5, $02, nE5
	dc.b	$02, smpsNoAttack, $14, nD5, $10, nCs5, $24, nRst
	dc.b	$18, nRst, $0C, nC5, $18, nA4, $08, nRst
	dc.b	$04, nB4, $02, nC5, $12, nD5, $04, nRst
	dc.b	$0C, nEb5, $02, nE5, $0A, smpsNoAttack, $0C, nF5
	dc.b	$08, nRst, $04, nE5, $08, nD5, $04, nRst
	dc.b	$08, nB4, $02, nC5, $0E, nD5, $0C, nRst
	dc.b	nG4, smpsNoAttack, $0C, nA4, $18, nC5, nD5, nE5
	dc.b	$08, nRst, $04, nFs5, $02, nG5, $12, nF5
	dc.b	$10, nE5, $0C, nC5, nRst, nD5, nRst, $08
	smpsFMvoice		$03
	dc.b	nB5, $04
	smpsAlterVol		$05
	smpsCall		Midnight_GH_Call3, Target
	dc.b	nRst, $08, nB5, $04
	smpsCall		Midnight_GH_Call3, Target
	dc.b	nRst, $0C
	smpsFMvoice		$01
	smpsAlterVol		$FB
	smpsPan		panLeft
	dc.b	nA4, $60, nG4, nA4, nG4, $30, nRst
	smpsPan		panCenter
	smpsFMvoice		$03
	smpsAlterVol		$05
	smpsJump		Midnight_GH_Jump2, Target

Midnight_GH_Call3:
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nB5, $04, nC6, $08, nG5, $34, nRst, $14
	dc.b	nB5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nB5, $04, nC6, $08, nG5, $4C, nRst, $18
	dc.b	nG5, $18, nF5, nE5, $14, nF5, $04, smpsNoAttack
	dc.b	$08, nE5, $04, nF5, $08, nRst, $04, nG5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nB5, $04, nRst, $08, nC5, $04, smpsNoAttack
	dc.b	$0C, nG5, nF5, nE5, $08, nF5, $0C, nE5
	dc.b	$04, nC5, $18, nRst, $08, nD5, $04, smpsNoAttack
	dc.b	$0C, nG5, nF5, $08, nG5, $04, nRst, $08
	dc.b	nAb5, $0C, nA5, $04, nB5, $0C, nC6, nE5
	dc.b	nD5, $14, nE5, $4C, nRst, $54
	smpsReturn

Midnight_GH_FM3:
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsCall		Midnight_GH_Call2, Target
	smpsAlterVol		$FB

Midnight_GH_Jump3:
	smpsPan		panLeft
	smpsCall		Midnight_GH_Call4, Target
	smpsCall		Midnight_GH_Call4, Target
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterVol		$04
	dc.b	nRst, $38, nG4, $04, nA4, $08, nC5, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD5
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD5
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $34, nG5, $04, nF5, $08, nE5, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14, nRst, $44, nCs5, $04, smpsNoAttack, $14
	dc.b	nB4, $10, nA4, $24
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs4, $10
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nA4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA4, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4, $14, nA4, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14, nRst, $0C, nB4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nB4, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA4, $10, nB4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $18, nRst, $0C, nC5, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nC5, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD5, $28, nC5, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE5, $14, nD5, $1C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nD5, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nD5, $10
	smpsAlterVol		$FC

Midnight_GH_Loop2:
	smpsFMvoice		$02
	smpsPan		panLeft
	smpsCall		Midnight_GH_Call4, Target
	dc.b	nA4, $18, nB4, nC5, $14, nD5, $04, nRst
	dc.b	$0C, nG5, smpsNoAttack, $08, nRst, $04, nG5, $08
	dc.b	nRst, $04, nF5, $08, nE5, $04, nRst, $08
	dc.b	nD5, $34
	smpsCall		Midnight_GH_Call2, Target
	smpsLoop		$00, $02, Midnight_GH_Loop2, Target
	smpsFMvoice		$01
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nRst, $08, nC5, $58, nRst, $08, nB4, $58
	dc.b	nRst, $08, nC5, $58, nRst, $08, nB4, $28
	dc.b	nRst, $30
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsJump		Midnight_GH_Jump3, Target

Midnight_GH_Call2:
	dc.b	nRst, $08, nG4, $04, nAb4, $08, nA4, $04
	dc.b	nC5, $08, nA4, $04, nC5, $08, nD5, $04
	dc.b	nE5, $04, nEb5, nD5, nC5, $08, nG4, $04
	dc.b	nA4, $08, nC5, $04, nD5, $08, nE5, $04
	dc.b	nG5, $04, nFs5, nF5, nD5, $0C, nRst, $04
	dc.b	nRst, nD5, nRst, nRst, nE5, nRst, nRst, nG5
	dc.b	nRst, nRst, nAb5, nRst, nRst, nAb5, nA5, $08
	dc.b	nB5, $04
	smpsReturn

Midnight_GH_Call4:
	dc.b	nRst, $24, nC5, $04, nRst, $08, nB4, $14
	dc.b	nC5, $04, nRst, $18, nRst, $24, nB4, $04
	dc.b	nRst, $08, nE5, $14, nD5, $04, nRst, $18
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nB4, $08
	dc.b	nC5, $04, nRst, $0C, nRst, $0C, nC5, $04
	dc.b	nRst, $08, nB4, $08, nC5, $04, nRst, $0C
	dc.b	nRst, $0C, nB4, $04, nRst, $08, nE5, $08
	dc.b	nD5, $04, nRst, $08, nE5, $04, nRst, $08
	dc.b	nE5, $04, nRst, $08, nD5, $1C
	smpsReturn

Midnight_GH_FM4:
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsCall		Midnight_GH_Call5, Target
	smpsAlterVol		$FB

Midnight_GH_Jump4:
	smpsPan		panRight
	smpsCall		Midnight_GH_Call6, Target
	smpsCall		Midnight_GH_Call6, Target
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterVol		$04
	dc.b	nRst, $38, nC4, $04, nD4, $08, nF4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $34, nD5, $04, nC5, $08, nB4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14, nRst, $44, nA4, $04, smpsNoAttack, $14
	dc.b	nA4, $10, nG4, $24
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nEb4, $10
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nD4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $14, nD4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14, nRst, $0C, nE4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nE4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $10, nE4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $18, nRst, $0C, nF4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nF4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $28, nF4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA4, $14, nB4, $1C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nB4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nB4, $10
	smpsAlterVol		$FC
	smpsFMvoice		$02
	smpsPan		panRight

Midnight_GH_Loop3:
	smpsCall		Midnight_GH_Call6, Target
	dc.b	nE4, $18, nG4, nA4, $14, $04, nRst, $0C
	dc.b	nD5, smpsNoAttack, $08, nRst, $04, nD5, $08, nRst
	dc.b	$04, nC5, $08, nB4, $04, nRst, $08, nAb4
	dc.b	$34
	smpsCall		Midnight_GH_Call5, Target
	smpsLoop		$00, $02, Midnight_GH_Loop3, Target
	smpsFMvoice		$01
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nRst, $0C, nE5, $54, nRst, $0C, nD5, $54
	dc.b	nRst, $0C, nE5, $54, nRst, $0C, nD5, $24
	dc.b	nRst, $30
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsJump		Midnight_GH_Jump4, Target

Midnight_GH_Call5:
	dc.b	nRst, $08, nD4, $04, nEb4, $08, nE4, $04
	dc.b	nG4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nA4, $08, nC4, $04
	dc.b	nD4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nG4, $0C, nRst, $04
	dc.b	nRst, nG4, nRst, nRst, nA4, nRst, nRst, nC5
	dc.b	nRst, nRst, nD5, nRst, nRst, nE5, nF5, $08
	dc.b	nAb5, $04
	smpsReturn

Midnight_GH_Call6:
	dc.b	nRst, $24, nA4, $04, nRst, $08, nG4, $14
	dc.b	nA4, $04, nRst, $18, nRst, $24, nG4, $04
	dc.b	nRst, $08, nC5, $14, nB4, $04, nRst, $18
	dc.b	nRst, $0C, nA4, $04, nRst, $08, nG4, $08
	dc.b	nA4, $04, nRst, $0C, nRst, $0C, nA4, $04
	dc.b	nRst, $08, nG4, $08, nA4, $04, nRst, $0C
	dc.b	nRst, $0C, nG4, $04, nRst, $08, nC5, $08
	dc.b	nB4, $04, nRst, $08, nB4, $04, nRst, $08
	dc.b	nB4, $04, nRst, $08, nAb4, $1C
	smpsReturn

Midnight_GH_FM5:
	smpsFMvoice		$05
	dc.b	nRst, $60, nRst
	smpsModSet	$03, $01, $01, $03

Midnight_GH_Loop4:
	dc.b	nE5, $60, nD5
	smpsLoop		$00, $04, Midnight_GH_Loop4, Target
	smpsFMvoice		$01
	smpsAlterVol		$FC
	smpsModSet	$00, $00, $00, $00
	dc.b	nC5, $18
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nF5, $30
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nD5, $18
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nG5, $30
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nD5, $18
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nG5, $30
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $48
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nB4, $10, nC5, $18
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nF5, $30
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nD5, $18
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nG5, $30
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nC5, $18
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nE5, $30
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nC5, $0C
	smpsAlterVol		$0F
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F1
	smpsPan		panCenter
	dc.b	nB4, $4C
	smpsAlterVol		$04

Midnight_GH_Loop5:
	smpsFMvoice		$05
	smpsModSet	$03, $01, $01, $03
	dc.b	nE5, $60, nD5
	smpsLoop		$00, $08, Midnight_GH_Loop5, Target
	dc.b	nE5, $60, nD5, nE5, nD5, $38, nRst, $28
	smpsJump		Midnight_GH_Loop4, Target

Midnight_GH_FM6:
	smpsFMvoice		$02
	smpsPan		panRight
	smpsAlterNote	$02
	smpsAlterVol		$0A
	smpsCall		Midnight_GH_Call5, Target
	smpsPan		panCenter
	smpsAlterNote	$FE
	smpsAlterVol		$F6

Midnight_GH_Jump5:
	smpsFMvoice		$03
	smpsModSet	$05, $01, $03, $04
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $0C, nA4, $18, nB4, nC5, nG5, $14
	dc.b	nE5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nD5, $58
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14, nG4, $18, nA4, nC5, $14, nE5
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nF5
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, nD5, smpsNoAttack, $48, nA4, $18, nB4, nC5
	dc.b	nG5, $14, nE5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nD5, $58
	smpsAlterVol		$0A
	dc.b	$04, nRst, $14
	smpsAlterVol		$F6
	dc.b	nG5, $18, nA5, nE5, $14, nD5, $04, smpsNoAttack
	dc.b	$08, nCs5, $04, nC5, $08, nG5, $04, smpsNoAttack
	dc.b	$30
	smpsFMvoice		$01
	smpsModSet	$00, $00, $00, $00
	smpsAlterNote	$02
	dc.b	nRst, $02, nG4, $0C, nD5, $14, nC5, $04
	dc.b	nD5, $08, nRst, $04, nG5, $24, nRst, $0C
	dc.b	nG4, nD5, $14, nC5, $02, nCs5, nD5, $08
	dc.b	nRst, $04, nG5, $24, nRst, $0C, nG4, nD5
	dc.b	$14, nC5, $04, nD5, $08, nRst, $04, nFs5
	dc.b	$02, nG5, $16, nA5, $0C, nE5, $08, nD5
	dc.b	$0C, nEb5, $02, nE5, $02, smpsNoAttack, $14, nD5
	dc.b	$10, nCs5, $24, nRst, $18, nRst, $0C, nC5
	dc.b	$18, nA4, $08, nRst, $04, nB4, $02, nC5
	dc.b	$12, nD5, $04, nRst, $0C, nEb5, $02, nE5
	dc.b	$0A, smpsNoAttack, $0C, nF5, $08, nRst, $04, nE5
	dc.b	$08, nD5, $04, nRst, $08, nB4, $02, nC5
	dc.b	$0E, nD5, $0C, nRst, nG4, smpsNoAttack, $0C, nA4
	dc.b	$18, nC5, nD5, nE5, $08, nRst, $04, nFs5
	dc.b	$02, nG5, $12, nF5, $10, nE5, $0C, nC5
	dc.b	nRst, nD5, nRst, $06
	smpsAlterNote	$FE
	smpsFMvoice		$03
	smpsModSet	$05, $01, $03, $04
	dc.b	nRst, $0C, nB5, $04
	smpsCall		Midnight_GH_Call3, Target
	dc.b	nRst, $08, nB5, $04
	smpsCall		Midnight_GH_Call3, Target
	smpsAlterVol		$F6
	smpsPan		panRight
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$01
	dc.b	nRst, $14, nA5, $4C, nRst, $14, nG5, $4C
	dc.b	nRst, $14, nA5, $4C, nRst, $14, nG5, $1C
	dc.b	nRst, $30
	smpsAlterVol		$05
	smpsJump		Midnight_GH_Jump5, Target

Midnight_GH_PSG1:
	smpsPSGvoice	$04
	dc.b	nRst, $60, nRst
	smpsModSet	$03, $01, $01, $04

Midnight_GH_Loop6:
	dc.b	nC5, $60, nB4
	smpsLoop		$00, $04, Midnight_GH_Loop6, Target
	smpsModSet	$00, $00, $00, $00
	smpsPSGvoice	$06
	smpsSetVol	$FF
	dc.b	nA4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nC5, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nB4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nD5, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nB4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nD5, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nCs5, $48
	smpsSetVol	$05
	dc.b	$04, nRst
	smpsSetVol	$FB
	dc.b	nFs4, $10, nA4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nC5, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nB4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nD5, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nA4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nC5, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nA4, $0C
	smpsSetVol	$05
	dc.b	$04, nRst
	smpsSetVol	$FB
	dc.b	nG4, $4C
	smpsModSet	$03, $01, $01, $04
	smpsSetVol	$01

Midnight_GH_Loop7:
	smpsPSGvoice	$04
	dc.b	nC5, $60, nB4
	smpsLoop		$00, $08, Midnight_GH_Loop7, Target
	dc.b	nC5, $60, nB4, nC5, $60, nB4, $38, nRst
	dc.b	$28
	smpsJump		Midnight_GH_Loop6, Target

Midnight_GH_PSG2:
	smpsPSGvoice	$04
	dc.b	nRst, $60, nRst
	smpsModSet	$03, $01, $01, $04

Midnight_GH_Loo$8:
	dc.b	nG4, $30, nA4, nF4, nAb4
	smpsLoop		$00, $04, Midnight_GH_Loo$8, Target
	smpsPSGvoice	$06
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FF
	dc.b	nF4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nA4, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nF4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nB4, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nG4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nB4, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nG4, $48
	smpsSetVol	$05
	dc.b	$04, nRst
	smpsSetVol	$FB
	dc.b	nCs4, $10, nF4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nA4, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nG4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nB4, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nE4, $18
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nA4, $30
	smpsSetVol	$05
	dc.b	$04, nRst, $08
	smpsSetVol	$FB
	dc.b	nE4, $0C
	smpsSetVol	$05
	dc.b	$04, nRst
	smpsSetVol	$FB
	dc.b	nD4, $4C
	smpsModSet	$03, $01, $01, $04
	smpsSetVol	$01

Midnight_GH_Loo$9:
	smpsPSGvoice	$04
	dc.b	nG4, $30, nA4, nF4, nAb4
	smpsLoop		$00, $08, Midnight_GH_Loo$9, Target
	dc.b	nG4, $30, nA4, nF4, nAb4, nG4, $30, nA4
	dc.b	nF4, nAb4, $08, nRst, $28
	smpsJump		Midnight_GH_Loo$8, Target

Midnight_GH_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, nRst, $08, nC4, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, nRst, $04, nC4, nC4
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, $08, $04, $08, $04, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C

Midnight_GH_Loop10:
	smpsCall		Midnight_GH_Call7, Target
	smpsLoop		$00, $04, Midnight_GH_Loop10, Target
	smpsCall		Midnight_GH_Call8, Target
	smpsCall		Midnight_GH_Call8, Target
	smpsCall		Midnight_GH_Call8, Target
	dc.b	nRst, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, nRst, $0C, nC4, $0C, nRst, $0C
	smpsPSGvoice	$05
	dc.b	nC4, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C
	smpsCall		Midnight_GH_Call8, Target
	smpsCall		Midnight_GH_Call8, Target
	smpsCall		Midnight_GH_Call8, Target
	dc.b	nRst, $0C, nC4, nRst, nC4, nC4, nC4, nC4
	dc.b	nC4

Midnight_GH_Loop11:
	smpsCall		Midnight_GH_Call7, Target
	smpsLoop		$00, $08, Midnight_GH_Loop11, Target
	smpsCall		Midnight_GH_Call7, Target
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$08, $04, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, nRst, $24
	smpsJump		Midnight_GH_Loop10, Target

Midnight_GH_Call7:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$08, $04, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $08
	dc.b	$04, $08, $04
	smpsReturn

Midnight_GH_Call8:
	dc.b	nRst, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, nRst, $0C, nC4, $0C, nRst, $0C
	smpsPSGvoice	$05
	dc.b	nC4, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $04, $04, $04
	smpsReturn

Midnight_GH_PWM1:
	dc.b	$81, $18, nRst, $14, $81, $04, nRst, $30
	dc.b	$81, $18, nRst, $14, $81, $04, nRst, $2C
	dc.b	$81, $04

Midnight_GH_Jump6:
	smpsCall		Midnight_GH_Call9, Target
	smpsCall		Midnight_GH_Call9, Target

Midnight_GH_Loop12:
	dc.b	$81, $14, $04, nRst, $0C, $81, nRst, $08
	dc.b	$81, $04, $08, nRst, $1C
	smpsLoop		$00, $07, Midnight_GH_Loop12, Target
	dc.b	$81, $14, $04, nRst, $0C, $81, nRst, $30

Midnight_GH_Loop13:
	smpsCall		Midnight_GH_Call9, Target
	smpsLoop		$01, $04, Midnight_GH_Loop13, Target

Midnight_GH_Loop14:
	dc.b	nRst, $08, $81, $04, nRst, $08, $81, $04
	dc.b	nRst, $0C, $81, $0C, $30
	smpsLoop		$00, $04, Midnight_GH_Loop14, Target
	smpsJump		Midnight_GH_Jump6, Target

Midnight_GH_Call9:
	dc.b	nRst, $08, $81, $04, nRst, $08, $81, $04
	dc.b	nRst, $0C, $81, $0C, $30, nRst, $08, $81
	dc.b	$04, nRst, $08, $81, $04, nRst, $0C, $81
	dc.b	$0C, $14, $04, nRst, $18
	smpsLoop		$00, $02, Midnight_GH_Call9, Target
	smpsReturn

Midnight_GH_PWM2:
	dc.b	$96, $60, nRst, $08, $82, $04, $08, nRst
	dc.b	$04, $82, $08, $0C, $04, nRst, $08, $82
	dc.b	$04, $08, $04, nRst, $08, $82, $04
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70

Midnight_GH_Jump7:
	smpsCall		Midnight_GH_Call10, Target
	smpsCall		Midnight_GH_Call10, Target
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $82, nRst
	dc.b	$08
	smpsAlterVol		$F9
	dc.b	$85, $04
	smpsAlterVol		$07
	dc.b	$86, $08, nRst, $04, $82, $18, nRst, $18
	dc.b	$82, nRst, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $08
	smpsAlterVol		$F9
	dc.b	$85, $04, nRst, $08, $85, $04
	smpsAlterVol		$07
	dc.b	$86, $08
	smpsAlterVol		$90
	dc.b	$87, $04
	smpsAlterVol		$70
	dc.b	$82, $82, $82

Midnight_GH_Loop15:
	smpsCall		Midnight_GH_Call10, Target
	smpsLoop		$00, $05, Midnight_GH_Loop15, Target
	smpsJump		Midnight_GH_Jump7, Target

Midnight_GH_Call10:
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, $14, $04, nRst, $18, $82, nRst, $82
	dc.b	nRst, $82, nRst, $82, $08, $04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsReturn

Midnight_GH_PWM3:
	dc.b	$96, $60
	smpsAlterVol		$C0
	dc.b	$89, $18, nRst, $14
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $04, nRst, $30
	smpsAlterVol		$04

Midnight_GH_Jum$8:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, $50
	smpsAlterVol		$FC
	dc.b	$83, $10
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $14
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $04, nRst, $48
	smpsAlterVol		$04

Midnight_GH_Loop16:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	smpsLoop		$00, $02, Midnight_GH_Loop16, Target
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsJump		Midnight_GH_Jum$8, Target

Midnight_GH_PWM4:
	dc.b	$96, $60, nRst, $0C, $88, nRst, $88, nRst
	dc.b	$88, nRst, $88, $04, $04, $04

Midnight_GH_Loop17:
	smpsCall		Midnight_GH_Call11, Target
	smpsLoop		$01, $04, Midnight_GH_Loop17, Target

Midnight_GH_Loop18:
	smpsCall		Midnight_GH_Call11, Target
	smpsLoop		$01, $04, Midnight_GH_Loop18, Target

Midnight_GH_Loop19:
	smpsCall		Midnight_GH_Call12, Target
	smpsLoop		$00, $08, Midnight_GH_Loop19, Target
	smpsCall		Midnight_GH_Call12, Target
	dc.b	nRst, $0C, $88, nRst, $88
	smpsAlterVol		$FC
	dc.b	nRst, $0C, $90, $08, $04, $08
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$91, $04, nRst, $08
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $04
	smpsAlterVol		$04
	dc.b	nRst, $0C, $88, nRst, $88, $88, $30
	smpsJump		Midnight_GH_Loop17, Target

Midnight_GH_Call11:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $07, Midnight_GH_Call11, Target
	dc.b	nRst, $0C, $88, $04, $04, $04
	smpsReturn

Midnight_GH_Call12:
	dc.b	nRst, $0C, $88, nRst, $88
	smpsAlterVol		$FC
	dc.b	nRst, $0C, $90, $08, $04, $08
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$91, $04, nRst, $08
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $04
	smpsAlterVol		$04
	dc.b	nRst, $0C, $88, nRst, $88, nRst, $08
	smpsAlterVol		$C0
	dc.b	$91, $04, $0C
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $0C
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$91, $08
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $04
	smpsAlterVol		$04
	smpsReturn

Midnight_GH_Patches:

	
	dc.b	$3B
	dc.b	$58, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$05, $14, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$84
	dc.b	$3F, $01, $01, $01,	$1F, $1F, $5F, $5F
	dc.b	$0E, $0A, $09, $0A,	$0F, $0B, $0A, $0A
	dc.b	$2F, $1F, $4F, $1F,	$2C, $80, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1F
	dc.b	$66, $30, $53, $22,	$1C, $9C, $1F, $1F
	dc.b	$12, $0F, $0F, $0F,	$00, $00, $00, $00
	dc.b	$FF, $0F, $0F, $0F,	$84, $80, $80, $87
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $0C, $08, $03,	$00, $11, $10, $0C
	dc.b	$0F, $4C, $4C, $1C,	$22, $83, $82, $82
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $01, $01, $01,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$06
	dc.b	$03, $02, $01, $03,	$1F, $0A, $0A, $0D
	dc.b	$08, $08, $08, $08,	$01, $01, $00, $00
	dc.b	$3F, $2F, $1F, $1F,	$20, $84, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
