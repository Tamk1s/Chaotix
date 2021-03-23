
Target	EQU	$4AA39
	smpsHeaderVoice	TubePanic_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0A
	smpsHeaderFM	TubePanic_FM1, Target, $00, $0D
	smpsHeaderFM	TubePanic_FM2, Target, $00, $17
	smpsHeaderFM	TubePanic_FM3, Target, $00, $17
	smpsHeaderFM	TubePanic_FM4, Target, $0C, $11
	smpsHeaderFM	TubePanic_FM5, Target, $0C, $11
	smpsHeaderFM	TubePanic_FM6, Target, $0C, $11
	smpsHeaderPSG	TubePanic_PSG1, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	TubePanic_PSG2, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	TubePanic_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	TubePanic_PWM1, Target, $00, $AA
	smpsHeaderPWM	TubePanic_PWM2, Target, $00, $CC
	smpsHeaderPWM	TubePanic_PWM3, Target, $00, $AA
	smpsHeaderPWM	TubePanic_PWM4, Target, $00, $88

TubePanic_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $0C, nC1, $06, nCs1

TubePanic_Loop1:
	smpsCall		TubePanic_Call1, Target
	smpsLoop		$00, $07, TubePanic_Loop1, Target
	dc.b	nD1, $0C, nD2, nD2, nD1
	smpsAlterPitch	$02

TubePanic_Loop2:
	smpsCall		TubePanic_Call1, Target
	smpsLoop		$00, $07, TubePanic_Loop2, Target
	smpsAlterPitch	$FE
	dc.b	nE1, $0C, nD2, $06, nEb2, nE2, $0C, nE1
	smpsLoop		$01, $02, TubePanic_Loop1, Target
	smpsCall		TubePanic_Call2, Target
	dc.b	nA1, $0C, nA2, nA2, nA1, nB1, nAb2, $06
	dc.b	nA2, nB2, $18
	smpsCall		TubePanic_Call2, Target
	dc.b	nBb1, $0C, nEb2, nBb2, nBb1, nC2, nF2, $06
	dc.b	nG2, nC3, $18
	smpsJump		TubePanic_Loop1, Target

TubePanic_Call1:
	dc.b	nD1, $12, nA1, nD2, $0C
	smpsReturn

TubePanic_Call2:
	dc.b	nAb1, $12, nE2, nAb2, $0C, nA1, $12, nE2
	dc.b	nA2, $0C, nA1, $12, nE2, nA2, $0C, nB1
	dc.b	$12, nB2, nBb1, $0C, nAb1, $12, nE2, nAb2
	dc.b	$0C, nA1, $12, nE2, nA2, $0C
	smpsReturn

TubePanic_FM2:
	smpsFMvoice		$02
	dc.b	nRst, $18

TubePanic_Jump1:
	smpsCall		TubePanic_Call3, Target
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
	dc.b	nRst, $06
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nB4, $06, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$F8
	smpsPan		panCenter
	smpsCall		TubePanic_Call3, Target
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
	dc.b	nRst, $06
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nB4, $06, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nB3, $18, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panRight
	dc.b	nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsCall		TubePanic_Call4, Target
	dc.b	nA4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nAb4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nFs4, $18
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nB4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $06, nB4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$05
	smpsPan		panRight
	dc.b	nRst, $06, nB4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $06, nB4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsCall		TubePanic_Call4, Target
	smpsAlterVol		$05
	dc.b	nEb4, $18
	smpsAlterVol		$FE
	dc.b	nD4
	smpsAlterVol		$FD
	dc.b	nF4
	smpsAlterVol		$FD
	dc.b	nE4
	smpsAlterVol		$03
	smpsJump		TubePanic_Jump1, Target

TubePanic_Call3:
	dc.b	nRst, $12, nA4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nRst, nA4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nA4, $06, nA4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nA4, $06, nA4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $2A
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nRst, $06, nA4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nRst, $06, nA4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nB3, $12, nA4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nB3, $12, nA4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nA4, nA4, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nA4, $06, nA4, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nB3, $12, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nB3, $12, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nB4, $06, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nB4, $06, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nB4, $06, $06
	smpsReturn

TubePanic_Call4:
	dc.b	nRst, $3C, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nA4, $12, nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panRight
	dc.b	nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nB4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsReturn

TubePanic_FM3:
	smpsFMvoice		$02
	dc.b	nRst, $18

TubePanic_Jump2:
	smpsCall		TubePanic_Call5, Target
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
	dc.b	nRst, $06
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nE4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$F8
	smpsPan		panCenter
	smpsCall		TubePanic_Call5, Target
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
	dc.b	nRst, $06
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nE4, nE4, nRst, $06, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nE3, $18, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panRight
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsCall		TubePanic_Call6, Target
	dc.b	nE4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nCs4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nB3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3, $18
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $06, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$05
	smpsPan		panRight
	dc.b	nRst, $06, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $06, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsCall		TubePanic_Call6, Target
	smpsAlterVol		$05
	dc.b	nBb3, $18
	smpsAlterVol		$FE
	dc.b	nAb3
	smpsAlterVol		$FD
	dc.b	nC4
	smpsAlterVol		$FD
	dc.b	nC4
	smpsAlterVol		$03
	smpsJump		TubePanic_Jump2, Target

TubePanic_Call5:
	dc.b	nRst, $12, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nRst, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nD4, $06, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nD4, $06, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $2A
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nRst, $06, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nRst, $06, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nE3, $12, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nE3, $12, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nD4, nD4, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nD4, nD4, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nE3, $12, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nE3, $12, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nE4, $06, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nE4, $06, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $1E
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nE4, $06, $06
	smpsReturn

TubePanic_Call6:
	dc.b	nRst, $3C, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nE4, $12, nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panRight
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$F1
	smpsPan		panCenter
	smpsReturn

TubePanic_FM4:
	smpsFMvoice		$01
	dc.b	nRst, $18

TubePanic_Loop3:
	smpsCall		TubePanic_Call7, Target
	smpsCall		TubePanic_Call7, Target
	smpsAlterPitch	$02
	smpsCall		TubePanic_Call7, Target
	smpsCall		TubePanic_Call7, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, TubePanic_Loop3, Target
	smpsAlterVol		$FE
	smpsCall		TubePanic_Call8, Target
	smpsCall		TubePanic_Call9, Target
	smpsCall		TubePanic_Call8, Target
	dc.b	nA3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nAb3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nFs3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsCall		TubePanic_Call8, Target
	smpsCall		TubePanic_Call9, Target
	smpsCall		TubePanic_Call8, Target
	smpsAlterVol		$02
	dc.b	nF3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsJump		TubePanic_Loop3, Target

TubePanic_Call7:
	dc.b	nRst, $0C, nA3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, nRst, $0C, nG3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsReturn

TubePanic_Call8:
	dc.b	nRst, $0C, nAb3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nAb3, $0C
	smpsReturn

TubePanic_Call9:
	dc.b	nA3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nCs4, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nB3, $18
	smpsReturn

TubePanic_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nRst, $18

TubePanic_Loop4:
	smpsCall		TubePanic_Call10, Target
	smpsCall		TubePanic_Call10, Target
	smpsAlterPitch	$02
	smpsCall		TubePanic_Call10, Target
	smpsCall		TubePanic_Call10, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, TubePanic_Loop4, Target
	smpsCall		TubePanic_Call11, Target
	smpsCall		TubePanic_Call12, Target
	smpsCall		TubePanic_Call11, Target
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nEb3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsCall		TubePanic_Call11, Target
	smpsCall		TubePanic_Call12, Target
	smpsCall		TubePanic_Call11, Target
	dc.b	nEb3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsJump		TubePanic_Loop4, Target

TubePanic_Call10:
	dc.b	nRst, $0C, nG3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nFs3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, nRst, $0C, nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nFs3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsReturn

TubePanic_Call11:
	dc.b	nRst, $0C, nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsReturn

TubePanic_Call12:
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nFs3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nFs3, $18
	smpsReturn

TubePanic_FM6:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $18

TubePanic_Loop5:
	smpsCall		TubePanic_Call13, Target
	smpsCall		TubePanic_Call13, Target
	smpsAlterPitch	$02
	smpsCall		TubePanic_Call13, Target
	smpsCall		TubePanic_Call13, Target
	smpsAlterPitch	$FE
	smpsLoop		$01, $02, TubePanic_Loop5, Target
	smpsCall		TubePanic_Call14, Target
	smpsCall		TubePanic_Call15, Target
	smpsCall		TubePanic_Call14, Target
	dc.b	nCs3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nCs3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nFs3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsCall		TubePanic_Call14, Target
	smpsCall		TubePanic_Call15, Target
	smpsCall		TubePanic_Call14, Target
	dc.b	nBb2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsJump		TubePanic_Loop5, Target

TubePanic_Call13:
	dc.b	nRst, $0C, nC3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsLoop		$00, $02, TubePanic_Call13, Target
	smpsReturn

TubePanic_Call14:
	dc.b	nRst, $0C, nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nAb2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsReturn

TubePanic_Call15:
	dc.b	nCs3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nEb3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nEb3, $18
	smpsReturn

TubePanic_PSG1:
	smpsPSGvoice	$03
	dc.b	nRst, $18

TubePanic_Loop6:
	smpsCall		TubePanic_Call16, Target
	smpsAlterPitch	$02
	smpsCall		TubePanic_Call16, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, TubePanic_Loop6, Target

TubePanic_Loop7:
	smpsCall		TubePanic_Call18, Target
	smpsLoop		$00, $03, TubePanic_Loop7, Target
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4
	dc.b	$06, nAb4, nE4, nB3, nRst, $0C, nA4, $06
	dc.b	nAb4, nE4, nB3, nRst, $0C, nEb4, $06, nD4
	dc.b	nBb3, nF3, nRst, $0C, nF4, $06, nE4, nC4
	dc.b	nG3, nF3, nE3, nC3, nG2
	smpsJump		TubePanic_Loop6, Target

TubePanic_Call16:
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	smpsCall		TubePanic_Call17, Target
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	dc.b	nRst, $0C
	smpsCall		TubePanic_Call17, Target
	smpsAlterPitch	$F4
	smpsCall		TubePanic_Call17, Target
	smpsAlterPitch	$0C
	smpsReturn

TubePanic_Call17:
	dc.b	nG4, $06, nFs4, nD4, nA3
	smpsReturn

TubePanic_Call18:
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4
	dc.b	$06, nAb4, nE4, nB3, nRst, $0C, nA4, $06
	dc.b	nAb4, nE4, nB3, nRst, $0C, nA4, $06, nAb4
	dc.b	nE4, nCs4, nRst, $0C, nE4, $06, nEb4, nB3
	dc.b	nFs3, nE3, nEb3, nB2, nFs2
	smpsReturn

TubePanic_PSG2:
	smpsPSGvoice	$03
	dc.b	nRst, $18
	smpsAlterNote	$FE
	dc.b	nRst, $06

TubePanic_Loo$8:
	smpsCall		TubePanic_Call16, Target
	smpsAlterPitch	$02
	smpsCall		TubePanic_Call16, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, TubePanic_Loo$8, Target

TubePanic_Loo$9:
	smpsCall		TubePanic_Call18, Target
	smpsLoop		$00, $03, TubePanic_Loo$9, Target
	dc.b	nA4, $06, nAb4, nE4, nB3, nRst, $0C, nA4
	dc.b	$06, nAb4, nE4, nB3, nRst, $0C, nA4, $06
	dc.b	nAb4, nE4, nB3, nRst, $0C, nEb4, $06, nD4
	dc.b	nBb3, nF3, nRst, $0C, nF4, $06, nE4, nC4
	dc.b	nG3, nF3, nE3, nC3, nG2
	smpsJump		TubePanic_Loo$8, Target

TubePanic_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $18

TubePanic_Loop10:
	smpsCall		TubePanic_Call19, Target
	smpsLoop		$01, $18, TubePanic_Loop10, Target
	smpsJump		TubePanic_Loop10, Target

TubePanic_Call19:
	smpsPSGvoice	$02
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	$06
	smpsSetVol	$FD
	dc.b	$06, $06
	smpsLoop		$00, $04, TubePanic_Call19, Target
	smpsReturn

TubePanic_PWM1:
	smpsAlterVol		$33
	dc.b	$82, $06, $82
	smpsAlterVol		$CD
	dc.b	$81, $0C

TubePanic_Loop11:
	smpsCall		TubePanic_Call20, Target
	smpsCall		TubePanic_Call21, Target
	smpsLoop		$00, $02, TubePanic_Loop11, Target
	smpsCall		TubePanic_Call20, Target
	dc.b	$81, $06
	smpsAlterVol		$F8
	dc.b	$91, nRst
	smpsAlterVol		$08
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$CD
	dc.b	$81, nRst
	smpsAlterVol		$80
	dc.b	$90, nRst
	smpsAlterVol		$80
	dc.b	$81
	smpsAlterVol		$F8
	dc.b	$91, $91, $91
	smpsAlterVol		$08
	dc.b	$81, nRst
	smpsAlterVol		$F8
	dc.b	$91
	smpsAlterVol		$08
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$CD
	smpsCall		TubePanic_Call20, Target
	dc.b	$81, $06
	smpsAlterVol		$F8
	dc.b	$91, nRst
	smpsAlterVol		$08
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$CD
	dc.b	$81, nRst
	smpsAlterVol		$33
	dc.b	$82, nRst
	smpsAlterVol		$CD
	dc.b	$81
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$CD
	smpsAlterVol		$F8
	dc.b	$91
	smpsAlterVol		$08
	dc.b	$81
	smpsAlterVol		$33
	dc.b	$82, nRst, $82, $82
	smpsAlterVol		$CD
	smpsLoop		$01, $03, TubePanic_Loop11, Target
	smpsJump		TubePanic_Loop11, Target

TubePanic_Call20:
	dc.b	$81, $06
	smpsAlterVol		$F8
	dc.b	$91, nRst
	smpsAlterVol		$08
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$CD
	dc.b	$81, nRst
	smpsAlterVol		$80
	dc.b	$90, nRst
	smpsAlterVol		$80
	dc.b	$81
	smpsAlterVol		$80
	dc.b	$90, nRst, $90
	smpsAlterVol		$80
	dc.b	$81
	smpsAlterVol		$F8
	dc.b	$91, nRst
	smpsAlterVol		$08
	smpsAlterVol		$80
	dc.b	$90
	smpsAlterVol		$80
	smpsReturn

TubePanic_Call21:
	dc.b	$81, $06
	smpsAlterVol		$F8
	dc.b	$91, nRst
	smpsAlterVol		$08
	smpsAlterVol		$33
	dc.b	$82
	smpsAlterVol		$CD
	dc.b	$81, nRst
	smpsAlterVol		$80
	dc.b	$90, nRst
	smpsAlterVol		$80
	dc.b	$81
	smpsAlterVol		$F8
	dc.b	$91, $91, $91
	smpsAlterVol		$08
	dc.b	$81, nRst
	smpsAlterVol		$F8
	dc.b	$91
	smpsAlterVol		$08
	smpsAlterVol		$80
	dc.b	$90
	smpsAlterVol		$80
	smpsReturn

TubePanic_PWM2:
	smpsStop
	dc.b	$82, $06, $06, $80, $0C, $80, $12, $82	; Unused
	dc.b	$06, $80, $30, $82, $18, $80, $12, $82	; Unused
	dc.b	$06, $80, $2A, $82, $06, $18, $80, $12	; Unused
	dc.b	$82, $06, $80, $30, $82, $18, $80, $12	; Unused
	dc.b	$82, $06, $80, $2A, $82, $06, $18, $80	; Unused
	dc.b	$12, $82, $06, $80, $30, $82, $18, $80	; Unused
	dc.b	$12, $82, $06, $80, $2A, $82, $06, $12	; Unused
	dc.b	$06, $80, $12, $82, $06, $80, $30, $82	; Unused
	dc.b	$18, $80, $12, $82, $06, $80, $0C, $82	; Unused
	dc.b	$0C, $06, $0C, $06, $0C, $06, $06, $F7	; Unused
	dc.b	$00, $03, $81, $9E, $F6, $81, $9E	; Unused

TubePanic_PWM3:
	smpsStop
	dc.b	$96, $18, $E6, $C0, $89, $60, $E6, $40	; Unused
	dc.b	$80, $80, $80, $E6, $FC, $83, $60, $E6	; Unused
	dc.b	$04, $80, $80, $80, $F7, $00, $02, $D6	; Unused
	dc.b	$9E, $E6, $C0, $89, $60, $E6, $40, $80	; Unused
	dc.b	$80, $80, $E6, $FC, $83, $60, $E6, $04	; Unused
	dc.b	$80, $80, $E6, $C0, $89, $30, $E6, $40	; Unused
	dc.b	$E6, $FC, $83, $30, $E6, $04, $F6, $D6	; Unused
	dc.b	$9E	; Unused

TubePanic_PWM4:
	smpsStop
	dc.b	$80, $18, $E6, $FA, $91, $12, $12, $E6	; Unused
	dc.b	$06, $E6, $A0, $90, $0C, $E6, $60, $E6	; Unused
	dc.b	$FA, $91, $06, $E6, $06, $E6, $A0, $90	; Unused
	dc.b	$12, $E6, $60, $E6, $FA, $91, $06, $06	; Unused
	dc.b	$E6, $06, $E6, $A0, $90, $0C, $E6, $60	; Unused
	dc.b	$E6, $FA, $91, $12, $12, $E6, $06, $E6	; Unused
	dc.b	$A0, $90, $0C, $E6, $60, $E6, $FA, $91	; Unused
	dc.b	$06, $06, $06, $06, $E6, $06, $E6, $A0	; Unused
	dc.b	$90, $0C, $E6, $60, $E6, $FA, $91, $06	; Unused
	dc.b	$E6, $06, $E6, $A0, $90, $E6, $60, $F7	; Unused
	dc.b	$00, $0C, $10, $9F, $F6, $10, $9F	; Unused

TubePanic_Patches:

	
	dc.b	$4B
	dc.b	$12, $12, $23, $62,	$3F, $9F, $9F, $9F
	dc.b	$02, $0C, $13, $07,	$12, $11, $05, $0A
	dc.b	$0F, $3F, $5F, $6F,	$14, $0D, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$02, $14, $03, $00,	$AF, $FF, $AF, $FF
	dc.b	$00, $05, $00, $05,	$08, $04, $08, $01
	dc.b	$4F, $5F, $4F, $1F,	$20, $80, $25, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$22, $04, $02, $14,	$51, $52, $50, $52
	dc.b	$0D, $00, $06, $04,	$03, $05, $02, $00
	dc.b	$1C, $1F, $2B, $1F,	$0F, $80, $13, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
