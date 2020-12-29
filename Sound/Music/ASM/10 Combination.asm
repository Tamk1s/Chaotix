
Target	EQU	$48DDB
	smpsHeaderVoice	Combi_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $43
	smpsHeaderFM	Combi_FM1, Target, $00, $0D
	smpsHeaderFM	Combi_FM2, Target, $00, $11
	smpsHeaderFM	Combi_FM3, Target, $0C, $0E
	smpsHeaderFM	Combi_FM4, Target, $0C, $0E
	smpsHeaderFM	Combi_FM5, Target, $00, $11
	smpsHeaderFM	Combi_FM6, Target, $00, $11
	smpsHeaderPSG	Combi_PSG1, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	Combi_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Combi_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Combi_PWM1, Target, $00, $AA
	smpsHeaderPWM	Combi_PWM2, Target, $00, $AA
	smpsHeaderPWM	Combi_PWM3, Target, $00, $99
	smpsHeaderPWM	Combi_PWM4, Target, $00, $61

Combi_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $18, nG1

Combi_Loop1:
	dc.b	nC2, $08, nB1, $04, nC2, $08, nD2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nC2, $04
	dc.b	nRst, $08, nC2, $0C, nB1, $04, nC2, $0C
	dc.b	nD2, nRst, $08, nB1, $04, nC2, $08, nD2
	dc.b	$04, nRst, $08, nE2, $04, nRst, $08, nC2
	dc.b	$04, nRst, $08, nC2, $0C, nB1, $04, nC2
	dc.b	$0C, nD2
	smpsLoop		$00, $08, Combi_Loop1, Target
	smpsJump		Combi_Loop1, Target

Combi_FM2:
	smpsFMvoice		$01
	dc.b	nRst, $30

Combi_Loop2:
	dc.b	nB3, $18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $18, $0C, nC4, nB3, nA3, $18, nD3
	dc.b	nE3, nG3, nA3, $18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $18, nG4, $0C, nFs4, nD4, nE4, nB3
	dc.b	nD4, nA3, $3C, nB3, $18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $18, nG4, $0C, nG4, nG4, nG4, nA4
	dc.b	nE4, nG4, $18, nD4, $0C, nE4, nB3, nA3
	dc.b	$18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $24, nG4, $18, nFs4, nA4, $0C, nD4
	dc.b	$3C
	smpsLoop		$00, $02, Combi_Loop2, Target
	smpsJump		Combi_Loop2, Target

Combi_FM3:
	smpsFMvoice		$02
	dc.b	nRst, $30, nRst, $60

Combi_Jump1:
	dc.b	nRst, $60, nRst, nRst, $0C, nG4, nFs4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $14
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C, nB3, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsCall		Combi_Call1, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call1, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call1, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call1, Target
	smpsPan		panCenter
	smpsAlterVol		$E8
	smpsAlterPitch	$FE
	smpsCall		Combi_Call1, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call1, Target
	smpsPan		panCenter
	smpsAlterVol		$F8
	smpsAlterPitch	$02
	smpsAlterVol		$02
	dc.b	nA3, $18
	smpsAlterVol		$FF
	dc.b	nB3
	smpsAlterVol		$FE
	dc.b	nC4
	smpsAlterVol		$FF
	dc.b	nD4
	smpsAlterVol		$02
	dc.b	nB3, $10
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14, nRst, $0C, nG4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nG4, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nRst, $08, nG4, $04, nFs4, $08
	dc.b	nD4, $04, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nG4, $04, nFs4, $08, nD4, $04
	dc.b	nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nB3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nB3, nRst, $08, nA3, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nRst, $08, nA3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nA3
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nRst, $0C, nD4, nE4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA4, $14
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, $14, nG4, $04, smpsNoAttack, $60
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4, smpsNoAttack, $08, nA4, $04, nB4, $08, nD4
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nRst, $08, nD4, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nD4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14
	smpsAlterVol		$F8
	smpsPan		panCenter
	smpsAlterVol		$02
	dc.b	nA3, $18
	smpsAlterVol		$FF
	dc.b	nB3
	smpsAlterVol		$FE
	dc.b	nC4
	smpsAlterVol		$FF
	dc.b	nD4
	smpsAlterVol		$02
	dc.b	nB3, $5C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsJump		Combi_Jump1, Target

Combi_Call1:
	dc.b	nB3, $10
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14
	smpsReturn

Combi_FM4:
	smpsFMvoice		$02
	dc.b	nRst, $30, nRst, $60

Combi_Jump2:
	dc.b	nRst, $60, nRst, nRst, $0C, nB3, nA3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $14
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, nE3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsCall		Combi_Call2, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call2, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call2, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call2, Target
	smpsPan		panCenter
	smpsAlterVol		$E8
	smpsAlterPitch	$FE
	smpsCall		Combi_Call2, Target
	smpsAlterVol		$08
	smpsCall		Combi_Call2, Target
	smpsPan		panCenter
	smpsAlterVol		$F8
	smpsAlterPitch	$02
	smpsAlterVol		$02
	dc.b	nD3, $18
	smpsAlterVol		$FF
	dc.b	nE3
	smpsAlterVol		$FE
	dc.b	nG3
	smpsAlterVol		$FF
	dc.b	nA3
	smpsAlterVol		$02
	dc.b	nE3, $10
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14, nRst, $0C, nD4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nD4, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $08, nRst, $08, nG3, $04, nFs3, $08
	dc.b	nD3, $04, nB2, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nG3, $04, nFs3, $08, nD3, $04
	dc.b	nB2, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nB2
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nB2, nRst, $08, nD3, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $04, nD3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nRst, $08, nD3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nD3
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nRst, $0C, nFs3, nG3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $14
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $14, nE4, $04, smpsNoAttack, $60
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, smpsNoAttack, $08, nFs4, $04, nG4, $08, nB3
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $14
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nRst, $08, nA3, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nA3
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14
	smpsAlterVol		$F8
	smpsPan		panCenter
	smpsAlterVol		$02
	dc.b	nD3, $18
	smpsAlterVol		$FF
	dc.b	nE3
	smpsAlterVol		$FE
	dc.b	nG3
	smpsAlterVol		$FF
	dc.b	nA3
	smpsAlterVol		$02
	dc.b	nE3, $5C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsJump		Combi_Jump2, Target

Combi_Call2:
	dc.b	nE3, $10
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $14
	smpsReturn

Combi_FM5:
	smpsFMvoice		$01
	dc.b	nRst, $30

Combi_Loop3:
	dc.b	nG3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3, $18, nRst, $0C
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nD4, $0C, nC4, nB3, nA3, $18, nD3, nE3
	dc.b	nG3, $0C
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nFs3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $18, nRst, $0C
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nG4, $0C, nFs4, nD4, nE4, nB3, nD4, nA3
	dc.b	$30
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nG3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3, $18, nRst, $0C
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nG4, $0C, nG4, nG4, nG4, nA4, nE4, nG4
	dc.b	$18, nD4, $0C, nE4
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nFs3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $24, nRst, $0C
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nG4, $18, nFs4, nA4, $0C, nD4, $30
	smpsAlterVol		$F8
	smpsPan		panCenter
	smpsLoop		$00, $02, Combi_Loop3, Target
	smpsJump		Combi_Loop3, Target

Combi_FM6:
	smpsFMvoice		$01
	dc.b	nRst, $30

Combi_Loop4:
	dc.b	nE3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $3C, smpsNoAttack, $60, nD3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs3, $3C, smpsNoAttack, $60
	smpsLoop		$00, $04, Combi_Loop4, Target
	smpsJump		Combi_Loop4, Target

Combi_PSG1:
	smpsModSet	$0A, $01, $01, $04
	smpsPSGvoice	$04
	dc.b	nRst, $30

Combi_Loop5:
	dc.b	nB3, $60, smpsNoAttack, $60, nA3, $60, smpsNoAttack, $60
	smpsLoop		$00, $04, Combi_Loop5, Target
	smpsJump		Combi_Loop5, Target

Combi_PSG2:
	smpsModSet	$0A, $01, $02, $02
	smpsPSGvoice	$04
	dc.b	nRst, $30

Combi_Loop6:
	dc.b	nE3, $60, smpsNoAttack, $60, nD3, $60, smpsNoAttack, $60
	smpsLoop		$00, $04, Combi_Loop6, Target
	smpsJump		Combi_Loop6, Target

Combi_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $30

Combi_Loop7:
	smpsCall		Combi_Call3, Target
	smpsLoop		$00, $03, Combi_Loop7, Target
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04, $08, $04, $0C, $0C
	smpsLoop		$01, $04, Combi_Loop7, Target
	smpsJump		Combi_Loop7, Target

Combi_Call3:
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$08, $04, $08, $04
	smpsReturn

Combi_PWM1:
	dc.b	$96, $30

Combi_Loo$8:
	dc.b	$81, $18, nRst, $0C, $81, nRst, $81, nRst
	dc.b	$18
	smpsLoop		$00, $10, Combi_Loo$8, Target
	smpsJump		Combi_Loo$8, Target

Combi_PWM2:
	dc.b	$82, $0C, $0C, $08, $04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70

Combi_Loo$9:
	smpsCall		Combi_Call4, Target
	dc.b	nRst, $14, $82, $04, nRst, $30, $82, $08
	dc.b	$04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsCall		Combi_Call4, Target
	dc.b	nRst, $14, $82, $04, nRst, $18, $82, $0C
	dc.b	$0C, $08, $04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsLoop		$00, $02, Combi_Loo$9, Target
	smpsJump		Combi_Loo$9, Target

Combi_Call4:
	dc.b	nRst, $14, $82, $04, nRst, $30, $82, $18
	dc.b	nRst, $14, $82, $04, nRst, $30, $82, $14
	dc.b	$04, nRst, $14, $82, $04, nRst, $30, $82
	dc.b	$18
	smpsReturn

Combi_PWM3:
	smpsAlterVol		$FC
	dc.b	$83, $30
	smpsAlterVol		$04

Combi_Loop10:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $02, Combi_Loop10, Target
	smpsLoop		$00, $02, Combi_Loop10, Target
	smpsJump		Combi_Loop10, Target

Combi_PWM4:
	dc.b	$96, $30

Combi_Loop11:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $07, Combi_Loop11, Target
	dc.b	smpsNoAttack, $0C, $88, $08, $04

Combi_Loop12:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $07, Combi_Loop12, Target
	dc.b	nRst, $0C, $88, $04, $04, $04
	smpsLoop		$01, $04, Combi_Loop11, Target
	smpsJump		Combi_Loop11, Target

Combi_Patches:

	
	dc.b	$3C
	dc.b	$01, $06, $00, $00,	$5F, $5F, $15, $1F
	dc.b	$11, $0D, $12, $05,	$07, $14, $09, $02
	dc.b	$5D, $5D, $2A, $1F,	$0E, $80, $07, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$43, $08, $73, $54,	$5E, $5E, $5E, $9E
	dc.b	$0C, $0C, $08, $08,	$0C, $0C, $15, $15
	dc.b	$8F, $9F, $8F, $CF,	$41, $80, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $07, $01, $01,	$8E, $8E, $8D, $53
	dc.b	$0E, $0E, $0E, $03,	$00, $00, $00, $00
	dc.b	$1F, $FF, $1F, $0F,	$17, $28, $27, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
