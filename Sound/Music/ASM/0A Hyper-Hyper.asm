
Target	EQU	$4551B
	smpsHeaderVoice	Hyper_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $26
	smpsHeaderFM	Hyper_FM1, Target, $00, $0C
	smpsHeaderFM	Hyper_FM2, Target, $00, $12
	smpsHeaderFM	Hyper_FM3, Target, $00, $12
	smpsHeaderFM	Hyper_FM4, Target, $00, $12
	smpsHeaderFM	Hyper_FM5, Target, $00, $0E
	smpsHeaderFM	Hyper_FM6, Target, $00, $0E
	smpsHeaderPSG	Hyper_PSG1, Target, $00, $00, $00, $0C
	smpsHeaderPSG	Hyper_PSG2, Target, $00, $02, $00, $0C
	smpsHeaderPSG	Hyper_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Hyper_PWM1, Target, $00, $BB
	smpsHeaderPWM	Hyper_PWM2, Target, $00, $BB
	smpsHeaderPWM	Hyper_PWM3, Target, $00, $AA
	smpsHeaderPWM	Hyper_PWM4, Target, $00, $75

Hyper_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $60, nRst, nRst, nRst, $06, nG2, nRst
	dc.b	nG2, nRst, $18, nRst, $06, nG2, nF2, nD2
	dc.b	nRst, nG1, nRst, nG1
	smpsCall		Hyper_Call1, Target

Hyper_Loop1:
	smpsCall		Hyper_Call2, Target
	dc.b	nRst, $30
	smpsCall		Hyper_Call2, Target
	dc.b	nRst, $0C, nEb1, nRst, $06, nF1, $12
	smpsCall		Hyper_Call1, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call2, Target
	dc.b	nRst, $30
	smpsCall		Hyper_Call2, Target
	smpsAlterPitch	$02
	dc.b	nRst, $0C, nAb1, nRst, $06, nBb1, $12
	smpsCall		Hyper_Call1, Target
	smpsLoop		$00, $02, Hyper_Loop1, Target
	smpsJump		Hyper_Loop1, Target

Hyper_Call2:
	dc.b	nG1, $0C, nRst, $06, nF1, $0C, nRst, $06
	dc.b	nG1, $0C
	smpsReturn

Hyper_Call1:
	smpsCall		Hyper_Call2, Target
	dc.b	nRst, $30
	smpsCall		Hyper_Call2, Target
	dc.b	nRst, $06, nE3, nC3, nG2, nF2, nE2, nC2
	dc.b	nG1
	smpsReturn

Hyper_FM2:
	smpsFMvoice		$01
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $30
	smpsCall		Hyper_Call3, Target

Hyper_Jump1:
	smpsCall		Hyper_Call4, Target
	dc.b	nD4, $12, nC4, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nBb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12
	smpsCall		Hyper_Call5, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call4, Target
	smpsAlterPitch	$02
	dc.b	nC4, $12, nBb3, nC4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nEb4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nEb4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $12
	smpsCall		Hyper_Call5, Target
	smpsCall		Hyper_Call4, Target
	dc.b	nD4, $12, nC4, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nBb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12
	smpsCall		Hyper_Call5, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call4, Target
	smpsAlterPitch	$02
	dc.b	nC4, $12, nBb3, nC4, $06, nRst, $12, nEb4
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nEb4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $12
	smpsCall		Hyper_Call5, Target
	smpsJump		Hyper_Jump1, Target

Hyper_Call3:
	smpsFMvoice		$03
	dc.b	nF6, $06, nE6, nC6, nG5, nF5, nE5, nC5
	dc.b	nG4
	smpsFMvoice		$01
	smpsReturn

Hyper_Call4:
	dc.b	nD4, $12, nC4, nD4, $0C, nF4, $12, nE4
	dc.b	nC4, $0C
	smpsReturn

Hyper_Call5:
	smpsCall		Hyper_Call4, Target
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nC4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12, nD4, $18
	smpsCall		Hyper_Call3, Target
	smpsReturn

Hyper_FM3:
	smpsFMvoice		$01
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $30
	smpsCall		Hyper_Call6, Target

Hyper_Jump2:
	smpsCall		Hyper_Call7, Target
	dc.b	nA3, $12, nG3, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $12
	smpsCall		Hyper_Call7, Target
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $12, nA3, $18
	smpsCall		Hyper_Call6, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call7, Target
	smpsAlterPitch	$02
	dc.b	nG3, $12, nF3, nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nC4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $12
	smpsCall		Hyper_Call7, Target
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $12, nA3, $18
	smpsCall		Hyper_Call6, Target
	smpsCall		Hyper_Call7, Target
	dc.b	nA3, $12, nG3, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $12
	smpsCall		Hyper_Call7, Target
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $12, nA3, $18
	smpsCall		Hyper_Call6, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call7, Target
	smpsAlterPitch	$02
	dc.b	nG3, $12, nF3, nG3, $06, nRst, $12, nC4
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nC4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $12
	smpsCall		Hyper_Call7, Target
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $12, nA3, $18
	smpsCall		Hyper_Call6, Target
	smpsJump		Hyper_Jump2, Target

Hyper_Call6:
	smpsFMvoice		$03
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $05, nF6, $06, nE6, nC6, nG5
	smpsPan		panRight
	dc.b	nF5, nE5, nC5, nG4, $01
	smpsFMvoice		$01
	smpsAlterVol		$FB
	smpsPan		panCenter
	smpsReturn

Hyper_Call7:
	dc.b	nG3, $12, nG3, nA3, $0C, nC4, $12, nC4
	dc.b	nG3, $0C
	smpsReturn

Hyper_FM4:
	smpsFMvoice		$02
	dc.b	nRst, $04
	smpsAlterVol		$01

Hyper_Loop2:
	smpsPan		panLeft
	smpsCall		Hyper_Call8, Target
	smpsPan		panRight
	smpsCall		Hyper_Call8, Target
	smpsLoop		$01, $0B, Hyper_Loop2, Target
	smpsPan		panLeft
	smpsCall		Hyper_Call8, Target
	smpsPan		panRight
	dc.b	nC3, $06, nF3, nD3, nG3, $02
	smpsPan		panCenter
	smpsAlterVol		$FF
	smpsFMvoice		$01

Hyper_Jump3:
	smpsCall		Hyper_Call9, Target
	dc.b	nG3, $12, nF3, nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nG3, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nEb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nEb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12
	smpsCall		Hyper_Call9, Target
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12, nG3, $48
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call9, Target
	smpsAlterPitch	$02
	dc.b	nF3, $12, nEb3, nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nAb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nAb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb3, $12
	smpsCall		Hyper_Call9, Target
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12, nG3, $48
	smpsCall		Hyper_Call9, Target
	dc.b	nG3, $12, nF3, nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nG3, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nEb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nEb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12
	smpsCall		Hyper_Call9, Target
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12, nG3, $48
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call9, Target
	smpsAlterPitch	$02
	dc.b	nF3, $12, nEb3, nF3, $06, nRst, $12, nAb3
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nAb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb3, $12
	smpsCall		Hyper_Call9, Target
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12, nG3, $48
	smpsJump		Hyper_Jump3, Target

Hyper_Call9:
	dc.b	nF3, $12, nF3, nF3, $0C, nG3, $12, nG3
	dc.b	nF3, $0C
	smpsReturn

Hyper_Call8:
	dc.b	nC3, $06, nF3, nD3, nG3
	smpsReturn

Hyper_FM5:
	smpsFMvoice		$02

Hyper_Loop3:
	smpsCall		Hyper_Call10, Target
	smpsLoop		$01, $06, Hyper_Loop3, Target

Hyper_Loop4:
	smpsCall		Hyper_Call10, Target
	smpsLoop		$01, $04, Hyper_Loop4, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call10, Target
	smpsCall		Hyper_Call10, Target
	smpsAlterPitch	$02
	smpsCall		Hyper_Call10, Target
	smpsCall		Hyper_Call10, Target

Hyper_Loop5:
	smpsCall		Hyper_Call10, Target
	smpsLoop		$01, $04, Hyper_Loop5, Target
	smpsAlterPitch	$FE
	smpsCall		Hyper_Call10, Target
	smpsAlterPitch	$02
	dc.b	nBb2, $06, nEb3, nC3, nF3, nBb2, nEb3, nC3
	dc.b	nRst, nRst, nRst, nC3, nF3, nBb2, nEb3, nC3
	dc.b	nF3
	smpsCall		Hyper_Call10, Target
	smpsCall		Hyper_Call10, Target
	smpsJump		Hyper_Loop4, Target

Hyper_Call10:
	dc.b	nC3, $06, nF3, nD3, nG3
	smpsLoop		$00, $04, Hyper_Call10, Target
	smpsReturn

Hyper_FM6:
	smpsFMvoice		$04
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
	smpsJump		Hyper_Jump4, Target
	;dc.b	$F2	; Unused

Hyper_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $60, nRst, nRst, nRst, nRst
	smpsModSet	$01, $06, $01, $01
	smpsSetVol	$02
	dc.b	nE5, $60
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FE

Hyper_Jump4:
	smpsCall		Hyper_Call11, Target
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nC4, $12
	dc.b	nAb3, nBb3, nC4, $0C, nRst, nG3, nRst, nBb3
	dc.b	$03, smpsNoAttack, nB3, $0F, nG3, $06, nRst, $0C
	dc.b	nF3, smpsNoAttack, $06, nRst, nG3, $54
	smpsCall		Hyper_Call11, Target
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nC4, $06
	dc.b	nRst, $0C, nAb3, $12, nBb3, nC4, $0C, nRst
	dc.b	nG3, nRst, nBb3, $03, smpsNoAttack, nB3, $0F, nG3
	dc.b	$06, nRst, $0C, nF3, smpsNoAttack, $06, nRst, nG3
	dc.b	$54
	smpsJump		Hyper_Jump4, Target

Hyper_Call12:
	dc.b	nF3, $0C, nRst, nG3, nRst, nBb3, $03, smpsNoAttack
	dc.b	nB3, $0F, nG3, $06, nRst, $0C
	smpsReturn

Hyper_Call11:
	smpsCall		Hyper_Call12, Target
	dc.b	nC4, $0C, smpsNoAttack, $0C, nB3, $06, nRst, nC4
	dc.b	nD4, nRst, nG3, $30, nRst, $06
	smpsCall		Hyper_Call12, Target
	dc.b	nF4, $0C, smpsNoAttack, $06, nRst, nG4, nRst, nF4
	dc.b	nE4, nRst, nD4, $30, nRst, $06
	smpsReturn

Hyper_PSG2:
	smpsPSGvoice	$08
	dc.b	nRst, $60, nRst, nRst, nRst, nRst
	smpsModSet	$01, $06, $01, $01
	smpsSetVol	$02
	dc.b	nRst, $04, nE5, $5C
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FE
	smpsModSet	$01, $01, $01, $03

Hyper_Jump5:
	dc.b	nRst, $06
	smpsCall		Hyper_Call11, Target
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nC4, $12
	dc.b	nAb3, nBb3, nC4, $0C, nRst, nG3, nRst, nBb3
	dc.b	$03, smpsNoAttack, nB3, $0F, nG3, $06, nRst, $0C
	dc.b	nF3, smpsNoAttack, $06, nRst, nG3, $54
	smpsCall		Hyper_Call11, Target
	dc.b	nRst, $0C, nC4, $18, nA3, $06, nRst, nC4
	dc.b	$12, nD4, $06, nRst, $0C, nEb4, smpsNoAttack, $0C
	dc.b	nD4, $06, nRst, nEb4, nD4, nRst, nRst, $06
	dc.b	nRst, $0C, nAb3, $12, nBb3, nC4, $0C, nRst
	dc.b	nG3, nRst, nBb3, $03, smpsNoAttack, nB3, $0F, nG3
	dc.b	$06, nRst, $0C, nF3, smpsNoAttack, $06, nRst, nG3
	dc.b	$4E
	smpsJump		Hyper_Jump5, Target

Hyper_PSG3:
	smpsPSGform	$E7

Hyper_Loop6:
	smpsCall		Hyper_Call13, Target
	smpsLoop		$01, $05, Hyper_Loop6, Target
	smpsCall		Hyper_Call14, Target

Hyper_Loop7:
	smpsCall		Hyper_Call13, Target
	smpsLoop		$01, $03, Hyper_Loop7, Target
	smpsCall		Hyper_Call14, Target
	smpsLoop		$02, $02, Hyper_Loop7, Target

Hyper_Loo$8:
	smpsCall		Hyper_Call13, Target
	smpsLoop		$01, $03, Hyper_Loo$8, Target
	smpsCall		Hyper_Call14, Target
	smpsCall		Hyper_Call13, Target
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06, $06, $06, nRst, nRst, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsCall		Hyper_Call13, Target
	smpsCall		Hyper_Call14, Target
	smpsJump		Hyper_Loop7, Target

Hyper_Call13:
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$00, $04, Hyper_Call13, Target
	smpsReturn

Hyper_Call14:
	smpsPSGvoice	$02
	dc.b	nC4, $04, $04, $04, $06, $06, $06, $06
	dc.b	$06, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C, $0C, $0C
	smpsReturn

Hyper_PWM1:
	smpsCall		Hyper_Call15, Target
	smpsCall		Hyper_Call15, Target
	smpsCall		Hyper_Call16, Target

Hyper_Loo$9:
	smpsCall		Hyper_Call15, Target
	smpsLoop		$00, $03, Hyper_Loo$9, Target
	smpsCall		Hyper_Call16, Target
	smpsLoop		$01, $02, Hyper_Loo$9, Target
	smpsJump		Hyper_Loo$9, Target

Hyper_Call15:
	dc.b	$81, $12, $12, $0C, nRst, $81, nRst, $06
	dc.b	$81, $12, $81, $12, $12, $0C, nRst, $0C
	dc.b	$81, $06, $06, nRst, $81, $12
	smpsReturn

Hyper_Call16:
	dc.b	$81, $12, $12, $0C, nRst, $81, nRst, $06
	dc.b	$81, $12, $81, $12, $12, $0C, nRst, $30
	smpsReturn

Hyper_PWM2:
	dc.b	$96, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, $12, $06
	smpsCall		Hyper_Call17, Target
	smpsCall		Hyper_Call18, Target

Hyper_Loop10:
	smpsCall		Hyper_Call17, Target
	smpsLoop		$00, $03, Hyper_Loop10, Target
	smpsCall		Hyper_Call18, Target
	smpsLoop		$01, $02, Hyper_Loop10, Target
	smpsJump		Hyper_Loop10, Target

Hyper_Call17:
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, $12, $06
	smpsReturn

Hyper_Call18:
	dc.b	nRst, $18, $82, nRst, $82, nRst, $0C, $82
	dc.b	$82, $82, $04, $82, $82, $82, $06, $82
	dc.b	$82, $82
	smpsAlterVol		$90
	dc.b	$87, $87, $87, $87
	smpsAlterVol		$70
	smpsReturn

Hyper_PWM3:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04

Hyper_Jump6:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, $3C
	smpsAlterVol		$C0
	dc.b	$89, $12
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $12
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst
	smpsJump		Hyper_Jump6, Target

Hyper_PWM4:
	smpsCall		Hyper_Call19, Target
	smpsLoop		$01, $06, Hyper_PWM4, Target

Hyper_Loop11:
	smpsCall		Hyper_Call19, Target
	smpsLoop		$01, $0D, Hyper_Loop11, Target
	dc.b	$88, $06
	smpsAlterVol		$CD
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$33
	dc.b	$88, $06
	smpsAlterVol		$CD
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$11
	dc.b	smpsNoAttack, $1E, $88, $06
	smpsAlterVol		$CD
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$33
	smpsCall		Hyper_Call19, Target
	smpsCall		Hyper_Call19, Target
	smpsJump		Hyper_Loop11, Target

Hyper_Call19:
	dc.b	$88, $06
	smpsAlterVol		$CD
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$33
	smpsLoop		$00, $04, Hyper_Call19, Target
	smpsReturn

Hyper_Patches:

	
	dc.b	$3B
	dc.b	$58, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$05, $14, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$34, $75, $34, $36,	$1F, $5D, $9F, $5C
	dc.b	$03, $0C, $03, $0C,	$02, $06, $02, $06
	dc.b	$AF, $8F, $AF, $8F,	$1A, $80, $27, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$07, $06, $02, $01,	$5F, $5F, $5F, $9F
	dc.b	$09, $02, $0A, $AC,	$02, $16, $54, $09
	dc.b	$5F, $7F, $AF, $6F,	$18, $17, $1B, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $03, $03, $05,	$00, $01, $02, $01
	dc.b	$0F, $1C, $1C, $1C,	$22, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1C
	dc.b	$33, $02, $04, $34,	$5F, $FF, $5F, $FF
	dc.b	$05, $05, $05, $07,	$15, $10, $21, $13
	dc.b	$9F, $3F, $5F, $AF,	$30, $80, $02, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
