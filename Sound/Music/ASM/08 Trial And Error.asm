
Target	EQU	$446C8
	smpsHeaderVoice	TrialError_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $22
	smpsHeaderFM	TrialError_FM1, Target, $00, $0C
	smpsHeaderFM	TrialError_FM2, Target, $0C, $16
	smpsHeaderFM	TrialError_FM3, Target, $0C, $14
	smpsHeaderFM	TrialError_FM4, Target, $0C, $0D
	smpsHeaderFM	TrialError_FM5, Target, $0C, $0D
	smpsHeaderFM	TrialError_FM6, Target, $00, $10
	smpsHeaderPSG	TrialError_PSG1, Target, $F4, $01, $00, $0C
	smpsHeaderPSG	TrialError_PSG2, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	TrialError_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	TrialError_PWM1, Target, $00, $AA
	smpsHeaderPWM	TrialError_PWM2, Target, $00, $99
	smpsHeaderPWM	TrialError_PWM3, Target, $00, $AA
	smpsHeaderPWM	TrialError_PWM4, Target, $00, $AA

TrialError_FM1:
	smpsFMvoice		$00
	dc.b	nB2, $06, nRst
	smpsModSet	$03, $01, $FB, $00
	dc.b	nB1, $18
	smpsModSet	$00, $00, $00, $00

TrialError_Loop1:
	smpsCall		TrialError_Call1, Target
	smpsLoop		$00, $08, TrialError_Loop1, Target

TrialError_Loop2:
	dc.b	nE3, $06, nE1, $0C, nE2, $06, nE2, nRst
	dc.b	nE1, $12, nE2, $06, nE2, nRst, nE1, $06
	dc.b	nE1, $0C, nE2, $06, nE2, nRst, nRst, nE1
	dc.b	$0C, nE2, $06, nE2, nRst
	smpsLoop		$00, $03, TrialError_Loop2, Target
	dc.b	nE3, $06, nE1, $0C, nE2, $06, nE2, nRst
	dc.b	nE1, $12, nE2, $06, nE2, nRst, nE1, $06
	dc.b	nE1, $0C, nE2, $06, nE2, nRst, nF1, $0C
	dc.b	nF1, nF1
	smpsJump		TrialError_Loop1, Target

TrialError_Call1:
	dc.b	nE1, $06, $0C, nE2, $06, nRst, nE2, nD1
	dc.b	nE1, nG1, $12, nG2, $06, nG1, nA1, $0C
	dc.b	nA2, $06, nRst, nB2, nRst, $12, nB2, $06
	dc.b	nA1, nB1
	smpsReturn

TrialError_FM2:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $24

TrialError_Loop3:
	smpsCall		TrialError_Call2, Target
	smpsLoop		$00, $03, TrialError_Loop3, Target
	dc.b	nD3, $06, nRst, $0C, nCs3, $06, nD3, $04
	dc.b	nE3, nD3, nCs3, $06, nB2, nE3, nD3, nCs3
	dc.b	nB2, nD3, $04, nCs3, nD3, nE3, $06, nD3
	dc.b	nCs3, nE3, nRst, $24

TrialError_Loop4:
	smpsCall		TrialError_Call2, Target
	smpsLoop		$00, $04, TrialError_Loop4, Target
	smpsAlterPitch	$0C
	smpsCall		TrialError_Call3, Target
	smpsAlterPitch	$F4
	smpsJump		TrialError_Loop3, Target

TrialError_Call2:
	dc.b	nD3, $06, nRst, $0C, nCs3, $06, nD3, $04
	dc.b	nE3, nD3, nCs3, $06, nB2, nE3, nD3, nCs3
	dc.b	nB2, nD3, $04, nCs3, nD3, nE3, $06, nD3
	dc.b	nCs3, nE3, nRst, $18, nD3, $06, nE3
	smpsReturn

TrialError_Call3:
	dc.b	nB2, $0C, nE3, nAb3, $06, nB3, nAb3, nG3
	dc.b	nFs3, nB3, nFs3, nF3, nE3, nB3, nE3, nEb3
	dc.b	nD3, nB3, nD3, nCs3, nC3, nBb2, nRst, nBb2
	dc.b	nB2, $0C, nE3, nAb3, $06, nB3, nAb3, nG3
	dc.b	nFs3, nB3, nFs3, nF3, nE3, nB3, nE3, nEb3
	dc.b	nD3, nB3, nD3, nCs3, nB2, nE3, nRst, nE3
	dc.b	nD3, $0C, nG3, nB3, $06, nD4, nB3, nBb3
	dc.b	nA3, nD4, nA3, nAb3, nG3, nD4, nG3, nFs3
	dc.b	nF3, nD4, nF3, nE3, nEb3, nD3, nRst, nD3
	dc.b	nE3, $0C, nAb3, nE4, $06, nEb4, nD4, nCs4
	dc.b	nC4, nB3, nG3, nF3, smpsNoAttack, $06, nC4, nB3
	dc.b	nG3, nF3, $0C, smpsNoAttack, $24
	smpsReturn

TrialError_FM3:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nRst, $24

TrialError_Loop5:
	smpsCall		TrialError_Call4, Target
	smpsLoop		$00, $03, TrialError_Loop5, Target
	dc.b	nA2, $06, nRst, $0C, nAb2, $06, nA2, $04
	dc.b	nB2, nA2, nAb2, $06, nFs2, nB2, nA2, nAb2
	dc.b	nFs2, nA2, $04, nAb2, nA2, nB2, $06, nA2
	dc.b	nAb2, nB2, nRst, $24

TrialError_Loop6:
	smpsCall		TrialError_Call4, Target
	smpsLoop		$00, $04, TrialError_Loop6, Target
	smpsCall		TrialError_Call3, Target
	smpsJump		TrialError_Loop5, Target

TrialError_Call4:
	dc.b	nA2, $06, nRst, $0C, nAb2, $06, nA2, $04
	dc.b	nB2, nA2, nAb2, $06, nFs2, nB2, nA2, nAb2
	dc.b	nFs2, nA2, $04, nAb2, nA2, nB2, $06, nA2
	dc.b	nAb2, nB2, nRst, $18, nA2, $06, nB2
	smpsReturn

TrialError_FM4:
	smpsFMvoice		$03
	dc.b	nRst, $24
	smpsCall		TrialError_Call5, Target

TrialError_Jump1:
	dc.b	nE4, $12, nEb4, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $1E
	smpsCall		TrialError_Call5, Target
	dc.b	nRst, $12, nE4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24, nRst, $06, nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06, nE4, nRst, $48, nRst, $24, nRst
	dc.b	$0C, nD4, $06, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $48, nRst, $06, nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $42, nD4, $06, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nA3, $06, nAb3, nE3, nD3, $12
	dc.b	smpsNoAttack, $24, smpsNoAttack, $0C, nC4, $06, nB3, nG3
	dc.b	nF3, smpsNoAttack, $24, nE4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $05
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $06, nE4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nRst, $18, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24, nD4, $06, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nRst, $1E, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $1E, nRst, $06, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $18, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24
	smpsJump		TrialError_Jump1, Target

TrialError_Call5:
	dc.b	nRst, $06, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $18, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24, nD4, $06, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nRst, $1E, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $1E, nRst, $06, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $18, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24
	smpsReturn

TrialError_FM5:
	smpsFMvoice		$03
	dc.b	nRst, $24
	smpsCall		TrialError_Call6, Target

TrialError_Jump2:
	dc.b	nB3, $12, nBb3, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $1E
	smpsCall		TrialError_Call6, Target
	dc.b	nRst, $12, nB3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24, nRst, $06, nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06, nB3, nRst, $48, nRst, $24, nRst
	dc.b	$0C, nA3, $06, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $48, nRst, $06, nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $42, nA3, $06, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nE3, $06, nEb3, nB2, nAb2, $12
	dc.b	smpsNoAttack, $24, smpsNoAttack, $0C, nG3, $06, nFs3, nD3
	dc.b	nC3, smpsNoAttack, $24, nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $05
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$01
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nRst, $18, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24, nA3, $06, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nRst, $1E, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $1E, nRst, $06, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $18, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24
	smpsJump		TrialError_Jump2, Target

TrialError_Call6:
	dc.b	nRst, $06, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $18, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24, nA3, $06, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $12, nRst, $1E, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $1E, nRst, $06, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nRst, $18, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $24
	smpsReturn

TrialError_FM6:
	smpsFMvoice		$02
	dc.b	nRst, $24

TrialError_Jump3:
	smpsCall		TrialError_Call7, Target
	smpsCall		TrialError_Call9, Target
	smpsCall		TrialError_Call7, Target
	smpsCall		TrialError_Call8, Target
	dc.b	nRst, $0C, nB1, nD2, $06, nE2, nRst, $24
	smpsCall		TrialError_Call7, Target
	smpsCall		TrialError_Call9, Target
	smpsCall		TrialError_Call7, Target
	smpsCall		TrialError_Call9, Target
	smpsAlterPitch	$F4
	smpsCall		TrialError_Call3, Target
	smpsAlterPitch	$0C
	smpsJump		TrialError_Jump3, Target

TrialError_Call8:
	dc.b	nE2, $12, nAb2, $06, nRst, $0C, nA2, nB2
	dc.b	nRst
	smpsReturn

TrialError_Call7:
	smpsCall		TrialError_Call8, Target
	dc.b	nRst, $0C, nB1, nD2, nE2, nA2, $12, nAb2
	dc.b	$06
	smpsReturn

TrialError_Call9:
	smpsCall		TrialError_Call8, Target
	dc.b	nRst, $0C, nB1, nD2, nE2, nA2, nAb2
	smpsReturn

TrialError_PSG1:
	smpsPSGvoice	$04

TrialError_Jump4:
	dc.b	nRst, $24

TrialError_Loop7:
	smpsCall		TrialError_Call10, Target
	smpsLoop		$00, $03, TrialError_Loop7, Target
	dc.b	nB3, $0C, nD4, $06, nRst, nE4, nRst, nFs4
	dc.b	nRst, nA4, $12, nAb4, $06, smpsNoAttack, $0C, nD4
	dc.b	nEb4, $06, nE4, nRst, $24

TrialError_Loo$8:
	smpsCall		TrialError_Call10, Target
	smpsLoop		$00, $04, TrialError_Loo$8, Target
	smpsAlterPitch	$0C
	smpsCall		TrialError_Call3, Target
	smpsAlterPitch	$F4
	smpsJump		TrialError_Loop7, Target

TrialError_Call10:
	dc.b	nB3, $0C, nD4, $06, nRst, nE4, nRst, nFs4
	dc.b	nRst, nA4, $12, nAb4, $06, smpsNoAttack, $0C, nD4
	dc.b	nE4, $06, nB4, nA4, nAb4, nE4, nD4, nAb3
	dc.b	nA3
	smpsReturn

TrialError_PSG2:
	smpsModSet	$01, $01, $01, $04
	smpsPSGvoice	$04
	dc.b	nRst, $06
	smpsJump		TrialError_Jump4, Target
	dc.b	$F2	; Unused

TrialError_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nRst, $24

TrialError_Loo$9:
	dc.b	nC4, $0C
	smpsLoop		$00, $2D, TrialError_Loo$9, Target
	dc.b	nRst, $24

TrialError_Loop10:
	dc.b	nC4, $0C
	smpsLoop		$00, $60, TrialError_Loop10, Target
	smpsJump		TrialError_Loo$9, Target

TrialError_PWM1:
	dc.b	$81, $0C, $18

TrialError_Loop11:
	smpsCall		TrialError_Call11, Target
	smpsLoop		$00, $03, TrialError_Loop11, Target
	dc.b	$81, $06, $06, nRst, $0C, $81, $81, $0C
	dc.b	$18, $81, $06, $06, nRst, $0C, $81, nRst
	dc.b	$24

TrialError_Loop12:
	smpsCall		TrialError_Call11, Target
	smpsLoop		$00, $08, TrialError_Loop12, Target
	smpsJump		TrialError_Loop11, Target

TrialError_Call11:
	dc.b	$81, $06, $06, nRst, $0C, $81, $81, $0C
	dc.b	$18, $81, $06, $06, nRst, $0C, $81, nRst
	dc.b	$06, $81, nRst, $0C, $81, $0C
	smpsReturn

TrialError_PWM2:
	dc.b	nRst, $0C, $82, $06, $82, $82, $82

TrialError_Loop13:
	smpsCall		TrialError_Call12, Target
	smpsLoop		$00, $03, TrialError_Loop13, Target
	dc.b	nRst, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $82, nRst, $0C, nRst, $18, $82, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, nRst, $0C, nRst, $24

TrialError_Loop14:
	smpsCall		TrialError_Call12, Target
	smpsLoop		$00, $03, TrialError_Loop14, Target
	dc.b	$82, $06
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	$82, $06, nRst, $0C, nRst, $18, $82, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, nRst, $0C, nRst, $12, $82

TrialError_Loop15:
	smpsCall		TrialError_Call12, Target
	smpsLoop		$00, $04, TrialError_Loop15, Target
	smpsJump		TrialError_Loop13, Target

TrialError_Call12:
	dc.b	nRst, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $82, nRst, $0C, nRst, $18, $82, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, nRst, $0C, nRst, $12, $82
	smpsReturn

TrialError_PWM3:
	smpsAlterVol		$90
	dc.b	$89, $0C
	smpsAlterVol		$70
	smpsAlterVol		$F9
	dc.b	$83, $18
	smpsAlterVol		$07

TrialError_Jump5:
	smpsAlterVol		$90
	dc.b	$89, $24
	smpsAlterVol		$70
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsAlterVol		$F9
	dc.b	$83, $24
	smpsAlterVol		$07
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsAlterVol		$90
	dc.b	$89, $24
	smpsAlterVol		$70
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsAlterVol		$F9
	dc.b	$83, $12
	smpsAlterVol		$07
	smpsAlterVol		$90
	dc.b	$89
	smpsAlterVol		$70
	smpsAlterVol		$F9
	dc.b	$83, $18
	smpsAlterVol		$07
	smpsAlterVol		$D0
	dc.b	$84, $84, nRst, $24
	smpsAlterVol		$30
	smpsAlterVol		$90
	dc.b	$89, $24
	smpsAlterVol		$70
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsAlterVol		$F9
	dc.b	$83, $24
	smpsAlterVol		$07
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsAlterVol		$90
	dc.b	$89, $24
	smpsAlterVol		$70
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	dc.b	nRst, $12
	smpsAlterVol		$F9
	dc.b	$83, $12
	smpsAlterVol		$07
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30

TrialError_Loop16:
	smpsAlterVol		$90
	dc.b	$89, $24
	smpsAlterVol		$70
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsAlterVol		$F9
	dc.b	$83, $24
	smpsAlterVol		$07
	smpsAlterVol		$D0
	dc.b	$84, $18, $18, $18, $18, $0C
	smpsAlterVol		$30
	smpsLoop		$00, $02, TrialError_Loop16, Target
	smpsJump		TrialError_Jump5, Target

TrialError_PWM4:
	dc.b	nRst, $0C
	smpsAlterVol		$FA
	dc.b	$8A, $06, $06, $06, $06
	smpsAlterVol		$06

TrialError_Loop17:
	smpsAlterVol		$9E
	dc.b	$8F, $18, $18, $18, $18, $18
	smpsAlterVol		$62
	smpsAlterVol		$FA
	dc.b	$8A, $06, $06, $06, $06
	smpsAlterVol		$06
	smpsLoop		$00, $0C, TrialError_Loop17, Target
	smpsJump		TrialError_Loop17, Target

TrialError_Patches:

	
	dc.b	$3B
	dc.b	$58, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$05, $14, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$74
	dc.b	$39, $30, $53, $51,	$5F, $9D, $5F, $7F
	dc.b	$0F, $03, $10, $09,	$0A, $09, $08, $06
	dc.b	$3F, $5F, $5F, $1F,	$16, $80, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$11, $05, $31, $02,	$1D, $15, $15, $1F
	dc.b	$06, $04, $08, $0C,	$0E, $0A, $0A, $0B
	dc.b	$7F, $9F, $7F, $9F,	$16, $20, $19, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$02, $09, $01, $02,	$8E, $8E, $8D, $55
	dc.b	$0E, $0E, $0E, $04,	$00, $00, $00, $09
	dc.b	$1F, $FF, $3F, $4F,	$16, $29, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
