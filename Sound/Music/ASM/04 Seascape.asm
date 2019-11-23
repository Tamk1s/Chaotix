
Target	EQU	$428A6
	smpsHeaderVoice	Seascape_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $33
	smpsHeaderFM	Seascape_FM1, Target, $00, $0B
	smpsHeaderFM	Seascape_FM2, Target, $00, $0C
	smpsHeaderFM	Seascape_FM3, Target, $00, $0C
	smpsHeaderFM	Seascape_FM4, Target, $00, $0C
	smpsHeaderFM	Seascape_FM5, Target, $00, $0C
	smpsHeaderFM	Seascape_FM6, Target, $00, $12
	smpsHeaderPSG	Seascape_PSG1, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	Seascape_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Seascape_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Seascape_PWM1, Target, $00, $BB
	smpsHeaderPWM	Seascape_PWM2, Target, $00, $BB
	smpsHeaderPWM	Seascape_PWM3, Target, $00, $BB
	smpsHeaderPWM	Seascape_PWM4, Target, $00, $53

Seascape_FM1:
	dc.b	nRst, $24
	smpsFMvoice		$00

Seascape_Loop1:
	smpsCall		Seascape_Call1, Target
	dc.b	nBb1, $12, $06, nRst, nBb2, nRst, $0C, nBb1
	dc.b	$18, nC2, $0C, nD2
	smpsCall		Seascape_Call1, Target
	dc.b	nBb1, $18, nC2, nD2, nA1
	smpsLoop		$00, $02, Seascape_Loop1, Target
	smpsCall		Seascape_Call2, Target
	dc.b	nD2, $24, nRst, $06, nD3, nD2, $18, nA1
	smpsCall		Seascape_Call2, Target
	dc.b	nEb1, $24, nRst, $06, nEb2, nEb1, $18, nF1
	dc.b	nG1, $60, smpsNoAttack, $0C, nG1, $0C, nA1, nBb1
	dc.b	nC2, $12, nD2, nF1, $0C, nG1, $54, nRst
	dc.b	$06, nG1, nRst, nF1, nRst, nG1, nRst, nA1
	dc.b	nRst, nBb1, nRst, $24, nG1, $0C
	smpsJump		Seascape_Loop1, Target

Seascape_Call1:
	dc.b	nEb2, $12, $06, nRst, nEb3, nRst, $0C, nD2
	dc.b	$30, nG1, $12, $06, nRst, nG2, nRst, $0C
	dc.b	nF1, $18, nBb1, nEb2, $12, $06, nRst, nEb3
	dc.b	nRst, $0C, nF1, $18, nF1
	smpsReturn

Seascape_Call2:
	dc.b	nG1, $24, nRst, $06, nG2, nG1, $18, nF1
	dc.b	nEb1, $24, nRst, $06, nEb2, nEb1, $18, nEb2
	dc.b	nD2, $24, nRst, $06, nD3, nD2, $18, nA1
	dc.b	nG1, $24, nRst, $06, nG2, nG1, $18, nCs2
	dc.b	nC2, $24, nRst, $06, nC3, nC2, $18, nG1
	dc.b	nF1, $24, nRst, $06, nF2, nF1, $18, nC2
	dc.b	nBb1, $24, nRst, $06, nBb2, nBb1, $18, nC2
	smpsReturn

Seascape_FM2:
	smpsFMvoice		$01
	dc.b	nRst, $24

Seascape_Jump1:
	smpsCall		Seascape_Call3, Target
	dc.b	nBb3, $24, nF4, $3C, nRst, $0C, nF3, nG3
	dc.b	nA3, $06, nRst, nBb3, $0C, nA3, $06, nRst
	dc.b	nBb3, $0C, nC4, $06, nRst
	smpsCall		Seascape_Call3, Target
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $30
	dc.b	nRst, $12, nD4, $06, nRst, nC4, nRst, nBb3
	dc.b	nF3, $12, nF4, $0C, nRst, $12, nRst, nD4
	dc.b	$06, nRst, nC4, nRst, nBb3, nF3, $12, nE4
	dc.b	$02, nF4, $0A, nRst, $42, nRst, $18, nEb4
	dc.b	$12, nRst, $06, nF4, $12, nRst, $06, nC4
	dc.b	$0C, nRst, $06, nEb4, nRst, nF4, nRst, nD4
	dc.b	$1E, nRst, $12, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nG3, $12, nG4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nC4, $12
	dc.b	nA4, $0C, nRst, $12, nRst, $0C, nA4, nBb4
	dc.b	nC5, $06, nRst, nD5, $12, nRst, $06, nC5
	dc.b	$12, nE5, $02, nF5, $0A, nRst, $06, nEb5
	dc.b	nRst, nD5, $0C, nC5, smpsNoAttack, $0C, nFs4, nA4
	dc.b	nD4, $18, nRst, $06, nD4, nRst, nC4, nRst
	dc.b	nBb3, nF3, $12, nF4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nF3, $12
	dc.b	nE4, $02, nF4, $0A, nRst, $42, nRst, $06
	dc.b	nCs4, $02, nD4, $0A, nA3, $06, nG3, nAb3
	dc.b	nA3, nRst, nB3, nC4, nE4, nG4, nFs4, nF4
	dc.b	nD4, $04, nCs4, nC4, nB3, $06, nBb3, nA3
	dc.b	nG3, $0C, nC3, $06, nCs3, nD3, nF3, nFs3
	dc.b	nG3, nBb3, nA3, nG3, nBb3, $04, nB3, nC4
	dc.b	nG4, $0C, nF4, nCs4, $02, nD4, $0A, nF4
	dc.b	$06, nG4, nA4, nBb4, nRst, nF4, nRst, nF4
	dc.b	nRst, nF4, nEb4, nD4, nC4, nF4, $0C, nG4
	dc.b	$06, nRst, nF4, smpsNoAttack, $06, nRst, nA4, nRst
	dc.b	nA4, nRst, $12, nA3, $06, nBb3, nD4, nF4
	dc.b	$0C, nA4, $06, nB4, $02, nC5, $04, nBb4
	dc.b	$06, nA4, $0C, nG4, nF4, nG4, $06, nRst
	dc.b	nF4, nD4, nCs4, nC4, $0C, nBb3, $06, nF3
	dc.b	$04, nFs3, nG3, nBb3, $06, nG3, nBb3, nC4
	dc.b	nD4, nC4, nF4, nFs4, nG4, $18
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b	nA5, $48
	smpsAlterVol		$0F
	dc.b	nRst, $18, nA5, $48
	smpsAlterVol		$F1
	dc.b	nRst, $18, nG5, $3C, nRst, $06, nA5, $06
	dc.b	nRst, $2A, nB5, $06, nRst, $30
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsJump		Seascape_Jump1, Target

Seascape_Call3:
	dc.b	nC4, $03, nCs4, nD4, $12, nEb4, $06, nRst
	dc.b	nC4, $18, nBb3, $0C, nC4, nF4, $06, nEb4
	dc.b	smpsNoAttack, $0C, nD4, $06, nRst, nC4, nD4, nRst
	dc.b	nEb4, $12, nF4, $06, nRst, nBb3, $0C, nC4
	dc.b	$06, nRst, nBb3, $12, nG3, nBb3, $0C, nC4
	dc.b	$18, nRst, $0C, nBb3, $06, nB3, nC4, $12
	dc.b	nB3, $02, nC4, $10, nCs4, $02, nD4, $2E
	dc.b	nG4, $06, nRst, nE4, $02, nF4, $0A, nRst
	dc.b	$06, nE4, $02, nF4, $0A, nRst, $06, nE4
	dc.b	$02, nF4, $0A, nRst, $0C, nE4, $02, nF4
	dc.b	$16, nEb4, $0C, nD4, $12, nC4, nF4, $0C
	dc.b	nD4, $18, nC4
	smpsReturn

Seascape_FM3:
	smpsFMvoice		$01
	dc.b	nRst, $24

Seascape_Loop2:
	smpsCall		Seascape_Call4, Target
	dc.b	nD3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, smpsNoAttack, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsCall		Seascape_Call4, Target
	dc.b	nD3, $18, nC3, nF3, $0C, nEb3, nD3, nC3
	smpsLoop		$00, $02, Seascape_Loop2, Target
	smpsCall		Seascape_Call5, Target
	dc.b	nRst, $0C, nFs3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$18, $18
	smpsCall		Seascape_Call5, Target
	dc.b	nRst, $0C, nG3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG3, $18, nF3, nF3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nEb3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsJump		Seascape_Loop2, Target

Seascape_Call4:
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nC3, $18, nRst, nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nC3, $18, nD3, nD3, $0C, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $18, $0C, nF3
	smpsReturn

Seascape_Call5:
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nF3, nRst, $0C, nF3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$18, $18, nRst, $0C, nF3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nF3, nRst, $0C, nF3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF3, $18, nE3, nEb3, $12, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nEb3, nRst, $0C, nEb3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$18, $18, nRst, $0C, nF3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nF3
	smpsReturn

Seascape_FM4:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nRst, $24

Seascape_Loop3:
	smpsCall		Seascape_Call6, Target
	dc.b	nA2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, smpsNoAttack, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsCall		Seascape_Call6, Target
	dc.b	nBb2, $30, nD3, $18, nRst
	smpsLoop		$00, $02, Seascape_Loop3, Target
	smpsCall		Seascape_Call7, Target
	dc.b	nRst, $0C, nC3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$18, $18
	smpsCall		Seascape_Call7, Target
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $18, nC3, nC3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nBb2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsJump		Seascape_Loop3, Target

Seascape_Call6:
	dc.b	nRst, $0C, nBb2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nA2, $18, nRst, $0C, nA2, nRst
	dc.b	$0C, nBb2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nAb2, $18, nBb2, nBb2, $0C, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA2, $18, nRst
	smpsReturn

Seascape_Call7:
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nD3, nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$18, $18, nRst, $0C, nC3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nC3, nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $18, nB2, nBb2, $12, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nBb2, nRst, $0C, nC3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$18, $18, nRst, $0C, nC3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $0C, nC3
	smpsReturn

Seascape_FM5:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $24

Seascape_Loop4:
	smpsCall		Seascape_Call8, Target
	dc.b	nF2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, smpsNoAttack, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsCall		Seascape_Call8, Target
	dc.b	nF2, $30, nBb2
	smpsLoop		$00, $02, Seascape_Loop4, Target
	smpsCall		Seascape_Call9, Target
	dc.b	nA2, $0C, $0C, $06, $0C, $06, $18, $18
	smpsCall		Seascape_Call9, Target
	dc.b	nBb2, $0C, $0C, $06, $0C, $06, $18, nA2
	dc.b	nA2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12, $06, smpsNoAttack, $30, smpsNoAttack, $60, nG2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12, $06, smpsNoAttack, $24
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsJump		Seascape_Loop4, Target

Seascape_Call8:
	dc.b	nRst, $0C, nG2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nFs2, $18, $0C, nRst, nRst, $0C
	dc.b	nF2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nF2, $18, nF2, nG2, $0C, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C, nF2, nF2, nRst
	smpsReturn

Seascape_Call9:
	dc.b	nBb2, $0C, $0C, $06, $0C, $06, $06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, $0C, nBb2, $0C, $0C, $06, $0C, $06
	dc.b	$18, $18, nA2, $0C, $0C, $06, $0C, $06
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, $0C, nB2, $0C, $0C, $06, $0C, $06
	dc.b	$18, nA2, $18, nG2, $12, $06, $06, $0C
	dc.b	$06, $06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, $0C, nA2, $0C, $0C, $06, $0C, $06
	dc.b	$18, $18, nA2, $0C, $0C, $06, $0C, $06
	dc.b	$06, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, $0C
	smpsReturn

Seascape_FM6:
	smpsFMvoice		$01
	dc.b	nRst, $24

Seascape_Jump2:
	smpsAlterNote	$FB
	smpsPan		panRight
	smpsPan		panRight
	smpsAlterVol		$05
	dc.b	nRst, $02
	smpsCall		Seascape_Call3, Target
	dc.b	nBb3, $24, nF4, $3C, nRst, $0C, nF3, nG3
	dc.b	nA3, $06, nRst, nBb3, $0C, nA3, $06, nRst
	dc.b	nBb3, $0C, nC4, $06, nRst
	smpsCall		Seascape_Call3, Target
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $30
	dc.b	nRst, $12, nD4, $06, nRst, nC4, nRst, nBb3
	dc.b	nF3, $12, nF4, $0C, nRst, $12, nRst, nD4
	dc.b	$06, nRst, nC4, nRst, nBb3, nF3, $12, nE4
	dc.b	$02, nF4, $0A, nRst, $42, nRst, $18, nEb4
	dc.b	$12, nRst, $06, nF4, $12, nRst, $06, nC4
	dc.b	$0C, nRst, $06, nEb4, nRst, nF4, nRst, nD4
	dc.b	$1E, nRst, $12, nD4, $06, nRst, nC4, nRst
	dc.b	nBb3, nG3, $12, nG4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nC4, $12
	dc.b	nA4, $0C, nRst, $12, nRst, $0C, nA4, nBb4
	dc.b	nC5, $06, nRst, nD5, $12, nRst, $06, nC5
	dc.b	$12, nE5, $02, nF5, $0A, nRst, $06, nEb5
	dc.b	nRst, nD5, $0C, nC5, smpsNoAttack, $0C, nFs4, nA4
	dc.b	nD4, $18, nRst, $06, nD4, nRst, nC4, nRst
	dc.b	nBb3, nF3, $12, nF4, $0C, nRst, $12, nRst
	dc.b	nD4, $06, nRst, nC4, nRst, nBb3, nF3, $12
	dc.b	nE4, $02, nF4, $0A, nRst, $42, nRst, $06
	dc.b	nCs4, $02, nD4, $0A, nA3, $06, nG3, nAb3
	dc.b	nA3, nRst, nB3, nC4, nE4, nG4, nFs4, nF4
	dc.b	nD4, $04, nCs4, nC4, nB3, $06, nBb3, nA3
	dc.b	nG3, $0C, nC3, $06, nCs3, nD3, nF3, nFs3
	dc.b	nG3, nBb3, nA3, nG3, nBb3, $04, nB3, nC4
	dc.b	nG4, $0C, nF4, nCs4, $02, nD4, $0A, nF4
	dc.b	$06, nG4, nA4, nBb4, nRst, $04
	smpsAlterVol		$FB
	dc.b	nC4, $06, nRst, nC4, nRst, nC4
	smpsAlterVol		$05
	dc.b	nRst, $02, nEb4, $06, nD4, nC4, nF4, $0C
	dc.b	nG4, $06, nRst, nF4, smpsNoAttack, $06, nRst, $04
	smpsAlterVol		$FB
	dc.b	nC4, $06, nC4, nC4
	smpsAlterVol		$05
	dc.b	nRst, $14, nA3, $06, nBb3, nD4, nF4, $0C
	dc.b	nA4, $06, nB4, $02, nC5, $04, nBb4, $06
	dc.b	nA4, $0C, nG4, nF4, nG4, $06, nRst, nF4
	dc.b	nD4, nCs4, nC4, $0C, nBb3, $06, nF3, $04
	dc.b	nFs3, nG3, nBb3, $06, nG3, nBb3, nC4, nD4
	dc.b	nC4, nF4, nFs4, nG4, $16
	smpsFMvoice		$02
	smpsAlterNote	$FB
	smpsAlterVol		$FB
	dc.b	nC5, $48
	smpsAlterVol		$0F
	dc.b	nRst, $18, nC5, $48
	smpsAlterVol		$F1
	dc.b	nRst, $18, nBb4, $3C, nRst, $06, nC5, $06
	dc.b	nRst, $2A, nD5, $06, nRst, $30
	smpsFMvoice		$01
	smpsJump		Seascape_Jump2, Target

Seascape_PSG1:
	smpsPSGvoice	$02
	dc.b	nRst, $24

Seascape_Loop5:
	smpsAlterPitch	$07
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FF
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FF
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$01
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$F6
	smpsLoop		$01, $04, Seascape_Loop5, Target
	smpsAlterPitch	$0A
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FF
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$F7
	smpsAlterPitch	$0A
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FF
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$F9
	dc.b	nRst, $0C, nG4, $06, $06, nRst, $0C, nA4
	dc.b	$06, $06
	smpsAlterPitch	$05
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FD
	dc.b	nRst, $0C, nEb4, $06, $06, nRst, $0C, nEb4
	dc.b	$06, nF4, nRst, nF4, nRst, nF4, nRst, nF4
	dc.b	nRst, nG4, nRst, $30
	smpsJump		Seascape_Loop5, Target

Seascape_Call10:
	dc.b	nRst, $0C, nC4, $06, $06
	smpsLoop		$00, $02, Seascape_Call10, Target
	smpsReturn

Seascape_PSG2:
	smpsPSGvoice	$02
	dc.b	nRst, $24

Seascape_Loop6:
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4
	dc.b	$06, $06
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsLoop		$01, $04, Seascape_Loop6, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$04
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FA
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$04
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FA
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FC
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	dc.b	nRst, $0C, nBb3, $06, $06, nRst, $0C, nC4
	dc.b	$06, $06
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$FE
	smpsCall		Seascape_Call10, Target
	smpsAlterPitch	$02
	dc.b	nRst, $0C, nBb3, $06, $06, nRst, $0C, nBb3
	dc.b	$06, nC4, nRst, nC4, nRst, nC4, nRst, nC4
	dc.b	nRst, nA3, nRst, $30
	smpsJump		Seascape_Loop6, Target

Seascape_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $24

Seascape_Loop7:
	smpsCall		Seascape_Call11, Target
	smpsLoop		$01, $07, Seascape_Loop7, Target
	dc.b	nC4, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b	nRst, $24

Seascape_Loo$8:
	smpsCall		Seascape_Call11, Target
	smpsLoop		$01, $07, Seascape_Loo$8, Target
	dc.b	nC4, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b	nRst, $24

Seascape_Loo$9:
	smpsCall		Seascape_Call12, Target
	dc.b	$0C, $0C, $06, $06, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $18
	smpsCall		Seascape_Call12, Target
	dc.b	$0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$18, nRst
	smpsLoop		$00, $02, Seascape_Loo$9, Target
	dc.b	nRst, $18
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call14, Target
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call14, Target
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call13, Target
	smpsCall		Seascape_Call13, Target
	smpsPSGvoice	$02
	dc.b	$06
	smpsSetVol	$01
	dc.b	$06, $06
	smpsSetVol	$FF
	dc.b	nRst, nRst, $60
	smpsJump		Seascape_Loop7, Target

Seascape_Call11:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $06, $06
	smpsLoop		$00, $04, Seascape_Call11, Target
	smpsReturn

Seascape_Call12:
	smpsPSGvoice	$02
	dc.b	nC4, $12, $06
	smpsPSGvoice	$05
	dc.b	$18
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $18, $0C, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06, $06, $06, $06, $0C, $0C, $06, $06
	smpsReturn

Seascape_Call13:
	smpsPSGvoice	$02
	dc.b	$06
	smpsSetVol	$01
	dc.b	$06, $06, $06
	smpsSetVol	$FF
	smpsReturn

Seascape_Call14:
	smpsPSGvoice	$02
	dc.b	$06
	smpsSetVol	$01
	dc.b	$06
	smpsSetVol	$FF
	smpsPSGvoice	$05
	dc.b	$0C
	smpsReturn

Seascape_PWM1:
	dc.b	$96, $18, $8B, $0C

Seascape_Loop10:
	dc.b	$8B, $12, $06, nRst, $12, $8B, $06, $18
	dc.b	nRst
	smpsLoop		$00, $07, Seascape_Loop10, Target
	dc.b	$8B, $18, $8B, $8B, $8B
	smpsLoop		$01, $02, Seascape_Loop10, Target

Seascape_Loop11:
	dc.b	$8B, $18, nRst, $12, $8B, $06, $18, nRst
	smpsLoop		$00, $10, Seascape_Loop11, Target
	dc.b	nRst, $18, $8B, nRst, $8B, nRst, $8B, nRst
	dc.b	$8B, nRst, $8B, nRst, $8B, nRst, $2A, $8B
	dc.b	$06, nRst, $18, $8B, $18
	smpsJump		Seascape_Loop10, Target

Seascape_PWM2:
	dc.b	$8C, $0C, $06, $06, nRst, $0C

Seascape_Loop12:
	dc.b	nRst, $1E, $8C, $12, nRst, $18, $8C
	smpsLoop		$00, $07, Seascape_Loop12, Target
	dc.b	nRst, $18, $8C, nRst, $0C, $8C, $06, $8C
	dc.b	$8C, $8C
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsLoop		$01, $02, Seascape_Loop12, Target
	smpsCall		Seascape_Call15, Target
	dc.b	nRst, $18, $8C, $8C, $12, $86, $06, $0C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsCall		Seascape_Call15, Target
	dc.b	nRst, $18, $8C, $8C, $12, $86, $06, $8C
	dc.b	$8C
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	nRst, $60, nRst, nRst, $5A
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	nRst, $06, $86, nRst
	smpsAlterVol		$90
	dc.b	$87, nRst, $87
	smpsAlterVol		$70
	dc.b	nRst, $8C, $18, $86, $06, $0C, $8C
	smpsJump		Seascape_Loop12, Target

Seascape_Call15:
	dc.b	nRst, $18, $8C, nRst, $8C, nRst, $18, $8C
	dc.b	nRst, $8C, nRst, $18, $8C, nRst, $8C, nRst
	dc.b	$18, $8C, nRst, $8C, nRst, $18, $8C, nRst
	dc.b	$8C, nRst, $18, $8C, nRst, $8C, nRst, $18
	dc.b	$8C, nRst, $8C
	smpsReturn

Seascape_PWM3:
	dc.b	$96, $18
	smpsAlterVol		$FB
	dc.b	$83, $0C
	smpsAlterVol		$05

Seascape_Loop13:
	smpsAlterVol		$B0
	dc.b	$89, $60
	smpsAlterVol		$50
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $04, Seascape_Loop13, Target

Seascape_Loop14:
	smpsAlterVol		$B0
	dc.b	$89, $60
	smpsAlterVol		$50
	dc.b	nRst, nRst
	smpsAlterVol		$B0
	dc.b	nRst, $30, $89, $18
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$83
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$89, $60
	smpsAlterVol		$50
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $02, Seascape_Loop14, Target
	smpsAlterVol		$B0
	dc.b	$89, $60
	smpsAlterVol		$50
	dc.b	nRst, $60, nRst, $5A
	smpsAlterVol		$FB
	dc.b	$83, $06, nRst, $54, $83, $0C
	smpsAlterVol		$05
	smpsJump		Seascape_Loop13, Target

Seascape_PWM4:
	dc.b	$96, $24

Seascape_Loop15:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $80, Seascape_Loop15, Target

Seascape_Loop16:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $0C, Seascape_Loop16, Target
	dc.b	nRst, $06, $88, nRst, $88, nRst, $88, nRst
	dc.b	$88, nRst, $30
	smpsJump		Seascape_Loop15, Target

Seascape_Patches:

	
	dc.b	$3B
	dc.b	$53, $31, $02, $03,	$DF, $9F, $5F, $9F
	dc.b	$10, $08, $0E, $07,	$13, $0E, $0D, $02
	dc.b	$7F, $7F, $3F, $5F,	$10, $16, $1F, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$08, $02, $02, $02,	$5F, $7F, $7F, $5F
	dc.b	$17, $07, $06, $0C,	$15, $10, $10, $15
	dc.b	$FF, $FF, $FF, $FF,	$23, $20, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $09, $09, $09,	$00, $06, $06, $06
	dc.b	$0F, $AC, $AC, $AC,	$22, $89, $86, $86
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
