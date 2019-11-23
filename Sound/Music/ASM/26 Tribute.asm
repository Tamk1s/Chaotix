
Target	EQU	$50000
	smpsHeaderVoice	Tribute_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $2C
	smpsHeaderFM	Tribute_FM1, Target, $00, $0D
	smpsHeaderFM	Tribute_FM2, Target, $00, $16
	smpsHeaderFM	Tribute_FM3, Target, $00, $16
	smpsHeaderFM	Tribute_FM4, Target, $00, $16
	smpsHeaderFM	Tribute_FM5, Target, $0C, $15
	smpsHeaderFM	Tribute_FM6, Target, $0C, $17
	smpsHeaderPSG	Tribute_PSG1, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Tribute_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Tribute_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Tribute_PWM1, Target, $00, $AA
	smpsHeaderPWM	Tribute_PWM2, Target, $00, $BB
	smpsHeaderPWM	Tribute_PWM3, Target, $00, $BB
	smpsHeaderPWM	Tribute_PWM4, Target, $00, $32

Tribute_FM1:
	smpsFMvoice		$00
	smpsCall		Tribute_Call1, Target
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $24, nD2, $06
	dc.b	nRst, nRst, nD2, nRst, nD2, smpsNoAttack, $06, nD2
	dc.b	$06, nD3, nD2, nD3, nD2, nRst, nD2, $0C
	dc.b	$06, nD3, nD2, nC2, nCs2, nD2, nF2
	smpsCall		Tribute_Call1, Target
	dc.b	smpsNoAttack, $12, nD2, $06, nRst, $24, nD2, $06
	dc.b	nRst, nRst, nD2, nRst, nG1
	smpsSetTempoMod		$1B
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop1:
	dc.b	nC2, $18, $0C, $0C, $12, $06, nRst, nC3
	dc.b	nRst, nB1, smpsNoAttack, $18, $0C, $0C, $12, $0C
	dc.b	nG2, $06, nG1, $0C, nA1, $18, $0C, $0C
	dc.b	$12, $06, nRst, nA2, nRst, nG1, smpsNoAttack, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, nC2, nD2
	dc.b	$18, $0C, $0C, $12, $06, nRst, nD3, nRst
	dc.b	nBb1, smpsNoAttack, $0C, $0C, $0C, $0C, $12, $12
	dc.b	nBb2, $06, nRst, nA1, $18, $0C, $0C, $12
	dc.b	$06, nRst, nA2, nRst, nF1, smpsNoAttack, $0C, $0C
	dc.b	$0C, $0C, nE1, $0C, $0C, $0C, nD2
	smpsLoop		$00, $02, Tribute_Loop1, Target
	dc.b	nA1, $24, nAb1, $30, nG1, $0C, smpsNoAttack, $24
	dc.b	nFs1, $30, nF1, $0C, smpsNoAttack, $4E, nRst, $06
	dc.b	nG1, $0C, smpsNoAttack, $60
	smpsCall		Tribute_Call2, Target
	smpsStop

Tribute_Call1:
	dc.b	nD2, $12, $06, nRst, $24, nD2, $06, nRst
	dc.b	nRst, nD2, nRst, nD2, smpsNoAttack, $12, nD2, $06
	dc.b	nRst, $1E, nD3, $06, nD2, nRst, nRst, nD2
	dc.b	nRst, nD2
	smpsReturn

Tribute_Call2:
	dc.b	nRst, $06, nC2, nD2, nG2, nF2, nE2, nG1
	dc.b	nC2, smpsNoAttack, $06, nG2, nF2, nC3, nG2, nC3
	dc.b	nD3, nG3, smpsNoAttack, $06, nF2, nE2, nC2, nF1
	dc.b	nG1, nA1, nC2, smpsNoAttack, $06
	smpsReturn

Tribute_FM2:
	smpsFMvoice		$01
	dc.b	nE4, $12, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nG4
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4
	smpsFMvoice		$02
	smpsAlterPitch	$18
	smpsCall		Tribute_Call3, Target
	smpsFMvoice		$01
	smpsAlterPitch	$E8
	smpsCall		Tribute_Call3, Target
	dc.b	nEb4, $06, smpsNoAttack, $12, $18, nF4, $18, $18
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $12, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nG4
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4
	smpsFMvoice		$02
	smpsAlterPitch	$18
	smpsCall		Tribute_Call3, Target
	smpsFMvoice		$01
	smpsAlterPitch	$E8
	smpsCall		Tribute_Call3, Target
	dc.b	nC4, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop2:
	dc.b	nRst, $18, nE4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4, smpsNoAttack, $60
	smpsLoop		$00, $03, Tribute_Loop2, Target
	dc.b	nRst, $18, nE4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, smpsNoAttack, $30, nD4, $18, nG4
	smpsLoop		$01, $02, Tribute_Loop2, Target
	dc.b	nE4, $1E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $0C, smpsNoAttack, $4E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4, $0C, smpsNoAttack, $60
	smpsCall		Tribute_Call4, Target
	smpsStop

Tribute_Call3:
	dc.b	nE4, $06, smpsNoAttack, $12, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nG4
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4
	smpsReturn

Tribute_Call4:
	smpsAlterPitch	$18
	dc.b	nRst, $06, nC2, nD2, nG2, nF2, nE2, nG1
	dc.b	nC2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG2, nF2, nC3, nG2, nC3, nD3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF2, nE2, nC2, nF1, nG1, nA1, nC2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsAlterPitch	$E8
	smpsReturn

Tribute_FM3:
	smpsFMvoice		$01
	dc.b	nC4, $12, nB3, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nD4
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nC4, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3
	smpsFMvoice		$02
	smpsAlterPitch	$18
	smpsPan		panLeft
	smpsCall		Tribute_Call5, Target
	smpsFMvoice		$01
	smpsAlterPitch	$E8
	smpsPan		panCenter
	smpsCall		Tribute_Call5, Target
	dc.b	nBb3, $06, smpsNoAttack, $12, $18, nC4, $18, $18
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $12, nB3, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nD4
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nC4, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3
	smpsFMvoice		$02
	smpsAlterPitch	$18
	smpsPan		panLeft
	smpsCall		Tribute_Call5, Target
	smpsFMvoice		$01
	smpsAlterPitch	$E8
	smpsPan		panCenter
	smpsCall		Tribute_Call5, Target
	dc.b	nA3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop3:
	dc.b	nRst, $18, nC4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3, smpsNoAttack, $60
	smpsLoop		$00, $02, Tribute_Loop3, Target
	dc.b	nRst, $18, nC4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3, smpsNoAttack, $60, nRst, $18, nC4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, smpsNoAttack, $30, nB3, $18, nD4
	smpsLoop		$01, $02, Tribute_Loop3, Target
	dc.b	nC4, $1E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $0C, smpsNoAttack, $4E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3, $0C, smpsNoAttack, $60
	smpsAlterPitch	$F4
	smpsCall		Tribute_Call4, Target
	smpsAlterPitch	$0C
	smpsStop

Tribute_Call5:
	dc.b	nC4, $06, smpsNoAttack, $12, nB3, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nD4
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nC4, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3
	smpsReturn

Tribute_FM4:
	smpsFMvoice		$01
	dc.b	nG3, $12, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nG3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsFMvoice		$02
	smpsAlterPitch	$18
	smpsPan		panRight
	smpsCall		Tribute_Call6, Target
	smpsFMvoice		$01
	smpsAlterPitch	$E8
	smpsPan		panCenter
	smpsCall		Tribute_Call6, Target
	dc.b	nG3, $06, smpsNoAttack, $12, $18, nA3, $18, $18
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $12, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nG3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsFMvoice		$02
	smpsAlterPitch	$18
	smpsPan		panRight
	smpsCall		Tribute_Call6, Target
	smpsFMvoice		$01
	smpsAlterPitch	$E8
	smpsPan		panCenter
	smpsCall		Tribute_Call6, Target
	dc.b	nF3, $06, smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18

Tribute_Loop4:
	dc.b	nRst, $18, nG3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, smpsNoAttack, $60
	smpsLoop		$00, $02, Tribute_Loop4, Target
	dc.b	nRst, $18, nG3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, smpsNoAttack, $60, nRst, $18, nG3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3, smpsNoAttack, $30, nAb3, $18, nB3
	smpsLoop		$01, $02, Tribute_Loop4, Target
	dc.b	nG3, $1E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nAb3, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3, $2A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3, $0C, smpsNoAttack, $4E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $0C, smpsNoAttack, $60, nRst, $60
	smpsStop

Tribute_Call6:
	dc.b	nG3, $06, smpsNoAttack, $12, nG3, $06
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	dc.b	nG3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsReturn

Tribute_FM5:
	smpsFMvoice		$02

Tribute_Jump1:
	dc.b	nRst, $60, nRst, nRst, nRst, $0C, nEb4, $06
	dc.b	nF4, nG4, nD5, $12, nRst, $0C, nF4, $06
	dc.b	nG4, nA4, nG5, $12, nRst, $60, nRst, $60
	dc.b	nRst, $5A, nD7, $06, nF6, nE6, nC6, nG5
	dc.b	nF6, nE6, nC6, nG5, nF5, nE5, nC5, nG4
	dc.b	nF4, nE4, nC4, nG3, nF3, $48, nRst, $18

Tribute_Loop5:
	dc.b	nRst, $60, nRst, $0C, nC4, $06, nD4, nG4
	dc.b	nC5, nD5, nG5, nC5, nD5, nG5, nD5, nG5
	dc.b	nC6, nG5, nD5, nRst, $60, nRst, $0C, nC5
	dc.b	$06, nG5, nC5, nD5, nG5, nA5, nC5, nG4
	dc.b	nC5, nD5, nG5, nC5, nD5, nG5, nRst, $60
	dc.b	nRst, $0C, nG4, $06, nA4, nC5, nA4, nC5
	dc.b	nD5, nG5, nF5, nC5, nD5, nG4, nD4, nC5
	dc.b	nD5, nRst, $60, nG5, $06, nF5, nC5, nA4
	dc.b	nG5, nF5, nC5, nA4, nG5, nF5, nD5, nB4
	dc.b	nAb4, nA4, nB4, nD5
	smpsLoop		$00, $02, Tribute_Loop5, Target
	dc.b	nRst, $0C, nG4, $06, nC5, nD5, nE5, nF5
	dc.b	$0C, nRst, $30, nRst, $0C, nG4, $06, nC5
	dc.b	nD5, nE5, nA5, $0C, nRst, $30, nRst, $0C
	dc.b	nA5, nG5, nF5, nE5, $18, nC5, $0C, nD5
	dc.b	smpsNoAttack, $0C, nB4, nC5, nD5, nD4, $06, nG4
	dc.b	nA4, nD5, nG4, nA4, nD5, nG5
	smpsAlterPitch	$18
	smpsCall		Tribute_Call2, Target
	smpsAlterPitch	$E8
	smpsStop

Tribute_FM6:
	smpsFMvoice		$02
	smpsPan		panRight
	smpsModSet	$01, $01, $03, $05
	smpsAlterNote	$04
	dc.b	nRst, $06
	smpsJump		Tribute_Jump1, Target
	dc.b	$F2	; Unused

Tribute_PSG1:
	smpsPSGvoice	$04
	smpsModSet	$04, $01, $03, $03
	dc.b	nD3, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $60
	dc.b	nD3, $60, smpsNoAttack, $60, smpsNoAttack, $5A, nG3, $06
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FD

Tribute_Jump2:
	smpsPSGvoice	$08
	smpsCall		Tribute_Call7, Target
	dc.b	smpsNoAttack, $06, nF3, nG3, nA3, nB3, $02, nC4
	dc.b	nB3, nG3, $06, nA3, nB3, nC4, nA3, nB3
	dc.b	nC4, nD4, nE4, nF4, nA4
	smpsCall		Tribute_Call7, Target
	dc.b	smpsNoAttack, $0C, nA3, nB3, nC4, $06, nRst, nD4
	dc.b	$0C, nE4, $06, nRst, nF4, $0C, nD4, $06
	dc.b	nRst, nG4, $1E, nRst, $06, nAb4, $18, nG4
	dc.b	$06, nRst, nF4, nRst, nE4, $0C, smpsNoAttack, $0C
	dc.b	nD4, nC4, $06, nRst, nD4, $18, nA3, $0C
	dc.b	nB3, $06, nRst, nC4, $0C, smpsNoAttack, $3C, nB3
	dc.b	$0C, nC4, $06, nRst, nD4, $0C, smpsNoAttack, $3C
	dc.b	nG4, $0C, nD5, nG5
	smpsAlterPitch	$18
	smpsCall		Tribute_Call2, Target
	smpsAlterPitch	$E8
	smpsStop

Tribute_Call7:
	dc.b	nFs4, $03, nG4, $33, nRst, $06, nB4, nRst
	dc.b	nC5, nD5, nRst, nFs4, $03, nG4, $03, smpsNoAttack
	dc.b	$36, nRst, $06, nE4, nRst, nD4, nC4, nRst
	dc.b	nFs4, $02, nG4, $04, smpsNoAttack, $36, nRst, $06
	dc.b	nB4, nRst, nC5, nD5, nRst, nG4, smpsNoAttack, $12
	dc.b	nRst, $06, nE4, $12, nRst, $06, nD4, $12
	dc.b	nRst, $06, nE4, $0C, nRst, $06, nC4, smpsNoAttack
	dc.b	$36, nRst, $06, nC5, nRst, nB4, nC5, nRst
	dc.b	nC4, smpsNoAttack, $36, nRst, $06, nC5, nRst, nB4
	dc.b	nC5, nRst, nC4, smpsNoAttack, $3C, nE4, $0C, nD4
	dc.b	nC4
	smpsReturn

Tribute_PSG2:
	smpsPSGvoice	$04
	smpsModSet	$06, $01, $02, $03
	dc.b	nD2, $60, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $60
	dc.b	nD2, $60, smpsNoAttack, $60, smpsNoAttack, $5A, nG2, $06
	dc.b	smpsNoAttack, $60, smpsNoAttack, $48, nRst, $18
	smpsSetVol	$FF
	smpsModSet	$01, $01, $02, $03
	dc.b	nRst, $06
	smpsJump		Tribute_Jump2, Target
	dc.b	$F2	; Unused

Tribute_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nC4, $18, $18, $18, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$06, nRst, $18
	smpsPSGvoice	$02
	dc.b	nC4, $18, $18, $06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	nRst, $18, nC4, $18, $18, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$06, nRst, $12, nC4, $06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	nRst, $0C, nC4, $06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	nC4, $18, $18, $18, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	nRst, $18, nC4, $18, $18, $06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	nRst, $18, nC4, $18, $18, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$06, nRst, $60, nRst

Tribute_Loop6:
	smpsCall		Tribute_Call8, Target
	dc.b	nRst, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, nRst, $18
	smpsCall		Tribute_Call8, Target
	dc.b	nRst, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, nRst, $30
	smpsLoop		$00, $02, Tribute_Loop6, Target
	dc.b	smpsNoAttack, $18
	smpsPSGvoice	$02
	dc.b	nC4, nRst, nC4, nRst, nC4, nRst, nC4, nRst
	dc.b	nC4, nRst, nC4, nRst, nC4
	smpsStop

Tribute_Call8:
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06, nRst, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $06
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$06
	smpsReturn

Tribute_PWM1:
	dc.b	$8B, $5A, $06, nRst, $5A, $8B, $06, nRst
	dc.b	$5A, $8B, $06, nRst, $2A, $8B, $36, $8B
	dc.b	$5A, $06, nRst, $5A, $8B, $06, nRst, $5A
	dc.b	$8B, $06, nRst, $60, nRst, $3C, $8B, $06
	dc.b	$06, nRst, $18

Tribute_Loop7:
	dc.b	$8B, $18, $18, $12, $06, nRst, $8B, nRst
	dc.b	$8B, nRst, $18, $8B, $18, $12, $12, $0C
	dc.b	$8B, $18, $18, $12, $06, nRst, $8B, nRst
	dc.b	$8B, nRst, $18, $8B, $8B, $8B
	smpsLoop		$00, $04, Tribute_Loop7, Target
	dc.b	$8B, $24, $30, $0C, nRst, $24, $8B, $30
	dc.b	$0C, nRst, $54, $8B, $0C, nRst, $60, nRst
	dc.b	$2A, $8B, $06, nRst, $2A, $8B, $06, nRst
	dc.b	$2A, $8B, $06
	smpsStop

Tribute_PWM2:
	dc.b	$96, $48, $82, $18, nRst, $48, $82, $06
	dc.b	$86, $06
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	nRst, $48, $82, $18, nRst, $30, $82, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, $82, $82, $96, $48, $82, $18, nRst
	dc.b	$48, $82, $06, $86, $06
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	nRst, $48, $82, $18, nRst, $60, nRst, $48
	dc.b	$82, $18

Tribute_Loo$8:
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $82, nRst, $18, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $06
	smpsAlterVol		$07
	dc.b	$85
	smpsAlterVol		$F9
	dc.b	$86, $82, nRst, $82, $82, $82
	smpsLoop		$00, $02, Tribute_Loo$8, Target
	dc.b	nRst, $3C, $82, $0C
	smpsAlterVol		$F9
	dc.b	$85, $04
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	nRst, $0C, nRst, $3C, $82, $06, $82, $82
	dc.b	$82, nRst, $0C, nRst, $60, nRst, $36
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, $82, $82, $82, nRst, $82, $82, $82
	dc.b	$82, $82, $82, nRst, nRst, $82
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, nRst, nRst, $82, $82, $86, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, nRst
	smpsStop

Tribute_PWM3:
	smpsAlterVol		$80
	dc.b	$89, $60, nRst, $60, nRst, $5A, $89, $06
	dc.b	nRst, $2A
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83, $36
	smpsAlterVol		$08
	smpsAlterVol		$80
	dc.b	$89, $60, nRst, $60, nRst, $5A, $89, $06
	dc.b	nRst, $60
	smpsAlterVol		$80
	dc.b	nRst, $48
	smpsAlterVol		$F8
	dc.b	$83, $18
	smpsAlterVol		$08

Tribute_Loo$9:
	smpsAlterVol		$80
	dc.b	$89, $60, nRst, nRst, nRst, $89, nRst, nRst
	smpsAlterVol		$80
	dc.b	nRst, $30
	smpsAlterVol		$F8
	dc.b	$83
	smpsAlterVol		$08
	smpsLoop		$00, $02, Tribute_Loo$9, Target
	smpsAlterVol		$80
	dc.b	$89, $24
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83, $30
	smpsAlterVol		$08
	smpsAlterVol		$80
	dc.b	$89, $0C, nRst, $24
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83, $30
	smpsAlterVol		$08
	smpsAlterVol		$80
	dc.b	$89, $0C, nRst, $54
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83, $0C, nRst, $60
	smpsAlterVol		$08
	dc.b	nRst, $2A
	smpsAlterVol		$80
	dc.b	$89, $06, nRst, $2A
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83, $06, nRst, $2A
	smpsAlterVol		$80
	dc.b	$89, $06, nRst, $60
	smpsAlterVol		$80
	smpsStop

Tribute_PWM4:
	smpsCall		Tribute_Call9, Target
	smpsLoop		$01, $04, Tribute_PWM4, Target

Tribute_Loop10:
	smpsCall		Tribute_Call9, Target
	smpsLoop		$01, $03, Tribute_Loop10, Target
	smpsCall		Tribute_Call10, Target

Tribute_Loop11:
	smpsCall		Tribute_Call9, Target
	smpsLoop		$01, $10, Tribute_Loop11, Target
	smpsCall		Tribute_Call9, Target
	smpsCall		Tribute_Call9, Target
	smpsCall		Tribute_Call10, Target
	smpsStop

Tribute_Call9:
	dc.b	$88, $06, $06
	smpsAlterVol		$44
	dc.b	$06
	smpsAlterVol		$BC
	dc.b	$06
	smpsLoop		$00, $04, Tribute_Call9, Target
	smpsReturn

Tribute_Call10:
	dc.b	$88, $04
	smpsLoop		$00, $0C, Tribute_Call10, Target
	smpsAlterVol		$EF
	smpsLoop		$01, $02, Tribute_Call10, Target
	dc.b	$88, $60
	smpsAlterVol		$22
	smpsReturn

Tribute_Patches:

	
	dc.b	$3B
	dc.b	$53, $31, $02, $03,	$DF, $9F, $5F, $9F
	dc.b	$17, $08, $0E, $07,	$0F, $0E, $0D, $02
	dc.b	$5F, $7F, $3F, $5F,	$0C, $16, $1F, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$52, $02, $04, $01,	$94, $19, $19, $19
	dc.b	$11, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$35, $1A, $1A, $1A,	$0D, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1F
	dc.b	$26, $32, $07, $11,	$9F, $9F, $9F, $9F
	dc.b	$06, $07, $09, $07,	$0D, $0F, $0D, $11
	dc.b	$9C, $9C, $9C, $9C,	$80, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
