
Target	EQU	$4E3C1
	smpsHeaderVoice	Olegend_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $00
	smpsHeaderFM	Olegend_FM1, Target, $00, $09
	smpsHeaderFM	Olegend_FM2, Target, $00, $0D
	smpsHeaderFM	Olegend_FM3, Target, $FA, $11
	smpsHeaderFM	Olegend_FM4, Target, $0C, $1B
	smpsHeaderFM	Olegend_FM5, Target, $F4, $13
	smpsHeaderFM	Olegend_FM6, Target, $00, $16
	smpsHeaderPSG	Olegend_PSG1, Target, $E8, $02, $00, $00
	smpsHeaderPSG	Olegend_PSG2, Target, $E2, $03, $00, $00
	smpsHeaderPSG	Olegend_PSG3, Target, $23, $02, $00, $00
	smpsHeaderPWM	Olegend_PWM1, Target, $00, $CC
	smpsHeaderPWM	Olegend_PWM2, Target, $00, $AA
	smpsHeaderPWM	Olegend_PWM3, Target, $00, $AA
	smpsHeaderPWM	Olegend_PWM4, Target, $00, $77

Olegend_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

Olegend_Loop1:
	smpsAlterVol		$FA
	dc.b	nG2, $0C
	smpsAlterVol		$06
	dc.b	nG2, $06, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b	nRst, nG2, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b	$06, nRst, nG2, nRst, nG2, nRst, nG2, nRst
	dc.b	nG2, nRst, nG2, nRst, nG2, nRst, nG2, nRst
	smpsAlterPitch	$01
	smpsLoop		$01, $04, Olegend_Loop1, Target
	smpsAlterPitch	$FC

Olegend_Jump1:
	smpsCall		Olegend_Call1, Target
	dc.b	nBb2, $60, smpsNoAttack, $30, nRst, $0C
	smpsAlterVol		$FB
	dc.b	nBb3, $0C
	smpsAlterVol		$05
	dc.b	nBb2, $18
	smpsCall		Olegend_Call1, Target
	dc.b	nBb2, $60
	smpsAlterVol		$05
	dc.b	nF2, $18
	smpsAlterVol		$FF
	dc.b	nG2
	smpsAlterVol		$FE
	dc.b	nAb2
	smpsAlterVol		$FE
	dc.b	nBb2
	smpsJump		Olegend_Jump1, Target

Olegend_Call1:
	smpsAlterVol		$FC
	dc.b	nC3, $12
	smpsAlterVol		$04
	dc.b	$06, nRst, $48, nC3, $12, $06, nRst, $0C
	dc.b	nC3, $0C, nRst, $30
	smpsAlterVol		$FC
	dc.b	nC3, $12
	smpsAlterVol		$04
	dc.b	$06, nRst, $48, nC3, $12, $06, nRst, $36
	dc.b	nG2, $12
	smpsLoop		$00, $03, Olegend_Call1, Target
	dc.b	nAb2, $60, smpsNoAttack, $60
	smpsReturn

Olegend_FM2:
	smpsFMvoice		$04
	smpsAlterVol		$FB

Olegend_Loop2:
	smpsPan		panCenter
	dc.b	nG6, $18
	smpsPan		panLeft
	smpsAlterVol		$02
	dc.b	nG6, $18, nRst, $30
	smpsAlterVol		$FE
	dc.b	nRst, $60
	smpsAlterPitch	$01
	smpsLoop		$00, $03, Olegend_Loop2, Target
	smpsAlterVol		$05
	smpsPan		panCenter
	dc.b	nG6, $18
	smpsPan		panLeft
	dc.b	nG6, $18, nRst, $30
	smpsAlterPitch	$FD
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nBb4, $18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18
	smpsAlterVol		$05

Olegend_Jump2:
	smpsCall		Olegend_Call2, Target
	smpsAlterVol		$F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $1E, nRst, $18
	smpsAlterVol		$08
	smpsCall		Olegend_Call2, Target
	smpsAlterVol		$FB
	dc.b	nF4, $12
	smpsAlterVol		$0F
	dc.b	nF4, $06
	smpsAlterVol		$F1
	dc.b	nG4, $12
	smpsAlterVol		$0F
	dc.b	nG4, $06
	smpsAlterVol		$F1
	dc.b	nAb4, $12
	smpsAlterVol		$0F
	dc.b	nAb4, $06
	smpsAlterVol		$F1
	dc.b	nBb4, $12
	smpsAlterVol		$0F
	dc.b	nBb4, $06
	smpsAlterVol		$F1
	smpsAlterVol		$05
	smpsJump		Olegend_Jump2, Target

Olegend_Call2:
	smpsAlterVol		$FB
	dc.b	nC5, $06
	smpsAlterVol		$0F
	dc.b	nC5, $06
	smpsAlterVol		$F1
	dc.b	nRst, $0C
	smpsAlterVol		$05
	dc.b	nG4, $06, nRst, nEb4, $0C, nRst, $0C, nG4
	dc.b	$0C, nC5, $06, nRst, nB4, $0C, smpsNoAttack
	smpsAlterVol		$07
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, nRst, $48, nRst, $60
	smpsAlterVol		$05
	smpsAlterVol		$FB
	dc.b	nC5, $06
	smpsAlterVol		$0A
	dc.b	nC5, $06
	smpsAlterVol		$F6
	dc.b	nRst, $0C
	smpsAlterVol		$05
	dc.b	nG4, $06, nRst, nEb4, $0C, nRst, $0C, nG4
	dc.b	$0C, nC5, $06, nRst, nG5, $0C, smpsNoAttack
	smpsAlterVol		$07
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, nRst, $48, nRst, $60
	smpsAlterVol		$05
	dc.b	nRst, $0C, nF4, nFs4, $06, nRst, nF4, nRst
	dc.b	nEb4, $0C, nC4, $06, nRst, nRst, $0C, nBb3
	dc.b	$0C, nC4, $0C, nEb4, $06, nRst, nRst, $0C
	dc.b	nF4, $0C, nRst, $06, nF4, $0C, nG4, $03
	dc.b	nRst, nBb4, $06, nRst, nG4, nRst, nC5, $0C
	dc.b	nG4, $03, nRst, nBb4, nRst, nRst, $06, nG4
	dc.b	$03, nRst, nC5, $0C, nG4, $03, nRst, nBb4
	dc.b	$06, nRst, nG4, $03, nRst, nC5, $0C, nG4
	dc.b	$03, nRst, nBb4, nRst, nRst, $06, nG4, $03
	dc.b	nRst, nC5, $0C, nG4, $03, nRst, nD5, $0C
	dc.b	nG4, $03, nRst, nEb5, $0C, nG4, $03, nRst
	dc.b	nF5, $06, nRst, nG4, $06, nG5, nRst, nBb5
	dc.b	$0C, nRst, $06
	smpsAlterVol		$FD
	dc.b	nC6, $06, smpsNoAttack, $48, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18
	smpsAlterVol		$09
	smpsAlterVol		$FD
	dc.b	nD6, $18, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FC
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FC
	dc.b	$18
	smpsAlterVol		$08
	smpsReturn

Olegend_FM3:
	smpsFMvoice		$04
	smpsModSet	$01, $01, $06, $08
	dc.b	nRst, $0C
	smpsAlterPitch	$06
	smpsAlterVol		$03

Olegend_Loop3:
	smpsPan		panCenter
	dc.b	nG6, $18
	smpsPan		panRight
	dc.b	nG6, $18, nRst, $30, nRst, $60
	smpsAlterPitch	$01
	smpsLoop		$01, $03, Olegend_Loop3, Target
	smpsAlterVol		$05
	smpsPan		panCenter
	dc.b	nG6, $18
	smpsPan		panRight
	dc.b	nG6, $18, nRst, $24
	smpsAlterPitch	$F7
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterVol		$F8
	dc.b	nBb4, $18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18, smpsNoAttack
	smpsAlterVol		$FD
	dc.b	$18
	smpsAlterVol		$05
	smpsAlterPitch	$01
	smpsAlterVol		$0A

Olegend_Jump3:
	smpsCall		Olegend_Call2, Target
	smpsAlterVol		$F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $1E, nRst, $18
	smpsAlterVol		$08
	smpsCall		Olegend_Call2, Target
	smpsAlterVol		$FB
	dc.b	nF4, $12
	smpsAlterVol		$0F
	dc.b	nF4, $06
	smpsAlterVol		$F1
	dc.b	nG4, $12
	smpsAlterVol		$0F
	dc.b	nG4, $06
	smpsAlterVol		$F1
	dc.b	nAb4, $12
	smpsAlterVol		$0F
	dc.b	nAb4, $06
	smpsAlterVol		$F1
	dc.b	nBb4, $12
	smpsAlterVol		$0F
	dc.b	nBb4, $06
	smpsAlterVol		$F1
	smpsAlterVol		$05
	smpsJump		Olegend_Jump3, Target

Olegend_FM4:
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsAlterVol		$03

Olegend_Loop4:
	dc.b	nCs4, $60, smpsNoAttack, $60
	smpsAlterPitch	$01
	smpsLoop		$00, $04, Olegend_Loop4, Target
	smpsAlterPitch	$FC
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterVol		$F9

Olegend_Jump4:
	smpsCall		Olegend_Call2, Target
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $1E, nRst, $18
	smpsCall		Olegend_Call2, Target
	dc.b	nF4, $12
	smpsAlterVol		$0F
	dc.b	nF4, $06
	smpsAlterVol		$F1
	dc.b	nG4, $12
	smpsAlterVol		$0F
	dc.b	nG4, $06
	smpsAlterVol		$F1
	dc.b	nAb4, $12
	smpsAlterVol		$0F
	dc.b	nAb4, $06
	smpsAlterVol		$F1
	dc.b	nBb4, $12
	smpsAlterVol		$0F
	dc.b	nBb4, $06
	smpsAlterVol		$F1
	smpsJump		Olegend_Jump4, Target

Olegend_FM5:
	smpsPan		panCenter
	smpsFMvoice		$02

Olegend_Loop5:
	dc.b	nG5, $60, smpsNoAttack, $60
	smpsAlterPitch	$01
	smpsLoop		$00, $04, Olegend_Loop5, Target
	smpsAlterPitch	$FC
	smpsAlterPitch	$0C
	smpsPan		panCenter
	smpsAlterVol		$0A
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $0C

Olegend_Jump5:
	smpsCall		Olegend_Call2, Target
	smpsAlterVol		$F8
	dc.b	nF6, $03, nRst, nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $03, nRst
	smpsAlterVol		$0D
	dc.b	nF6, $03, nRst
	smpsAlterVol		$F3
	dc.b	nF6, $1E, nRst, $18
	smpsAlterVol		$08
	smpsCall		Olegend_Call2, Target
	smpsAlterVol		$F8
	dc.b	nF4, $12
	smpsAlterVol		$0F
	dc.b	nF4, $06
	smpsAlterVol		$F1
	dc.b	nG4, $12
	smpsAlterVol		$0F
	dc.b	nG4, $06
	smpsAlterVol		$F1
	dc.b	nAb4, $12
	smpsAlterVol		$0F
	dc.b	nAb4, $06
	smpsAlterVol		$F1
	dc.b	nBb4, $12
	smpsAlterVol		$0F
	dc.b	nBb4, $06
	smpsAlterVol		$F1
	smpsAlterVol		$08
	smpsJump		Olegend_Jump5, Target

Olegend_FM6:
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $0C

Olegend_Loop6:
	dc.b	nG4, $08, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4, nG4, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4, nG4, nBb4, nCs5, nEb5, nFs5, nEb5, nCs5
	dc.b	nBb4
	smpsAlterPitch	$01
	smpsLoop		$01, $03, Olegend_Loop6, Target
	smpsAlterPitch	$FD
	dc.b	nBb4, nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5
	dc.b	nBb4, nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5
	dc.b	nBb4, $04, nRst, $09, nBb4, $06, nCs5, nE5
	dc.b	nFs5, nBb5, nCs6, nE6, nBb6

Olegend_Jump6:
	smpsCall		Olegend_Call3, Target
	smpsJump		Olegend_Jump6, Target

Olegend_PSG1:
	smpsPSGvoice	$0C
	smpsCall		Olegend_Call4, Target

Olegend_Jump7:
	smpsCall		Olegend_Call3, Target
	smpsJump		Olegend_Jump7, Target

Olegend_Call4:
	smpsSetVol	$FF
	dc.b	nG4, $08
	smpsSetVol	$01
	dc.b	nBb4, nCs5, nEb5, nFs5, nEb5, nCs5, nBb4, nG4
	dc.b	nBb4, nCs5, nEb5
	smpsSetVol	$FF
	dc.b	nFs5
	smpsSetVol	$01
	dc.b	nEb5, nCs5, nBb4, nG4, nBb4, nCs5, nEb5, nFs5
	dc.b	nEb5, nCs5, nBb4
	smpsAlterPitch	$01
	smpsLoop		$01, $03, Olegend_Call4, Target
	smpsAlterPitch	$FD
	smpsSetVol	$FF
	dc.b	nBb4
	smpsSetVol	$01
	dc.b	nCs5, nE5, nFs5, nA5, nFs5, nE5, nCs5, nBb4
	dc.b	nCs5, nE5, nFs5
	smpsSetVol	$FF
	dc.b	nA5
	smpsSetVol	$01
	dc.b	nFs5, nE5, nCs5, nBb4, nCs5, nBb4, $06, nCs5
	dc.b	nE5, nFs5, nBb5, nCs6, nE6, nBb6
	smpsReturn

Olegend_Call3:
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nC5, nEb5
	dc.b	nG5, $0C, nBb4, nC5, $18
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nRst, nD5
	dc.b	nEb5, $0C, nA4, nBb4, $06, nE4, $12
	smpsLoop		$00, $07, Olegend_Call3, Target
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nC5, nEb5
	dc.b	nG5, $0C, nBb4, nC5, $18
	smpsAlterPitch	$FE
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $0C, nF4, $06, nG4, nBb4, nRst, nD5
	dc.b	nEb5, $0C, nA4, nBb4, $06, nE4, $12
	smpsAlterPitch	$02
	smpsLoop		$01, $02, Olegend_Call3, Target
	smpsReturn

Olegend_PSG2:
	smpsPSGvoice	$0C
	smpsCall		Olegend_Call4, Target
	smpsAlterPitch	$01

Olegend_Jum$8:
	smpsCall		Olegend_Call3, Target
	smpsJump		Olegend_Jum$8, Target

Olegend_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02

Olegend_Loop7:
	dc.b	nC4, $0C
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FE
	dc.b	nC4
	smpsSetVol	$02
	dc.b	nC4
	smpsSetVol	$FC
	smpsLoop		$00, $0F, Olegend_Loop7, Target
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FE
	dc.b	nC4
	smpsSetVol	$02
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4, $18
	smpsSetVol	$FF

Olegend_Jum$9:
	dc.b	nC4, $06
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FE
	dc.b	nC4
	smpsSetVol	$02
	dc.b	nC4
	smpsSetVol	$FC
	smpsJump		Olegend_Jum$9, Target

Olegend_PWM1:
	dc.b	$8B, $18, nRst, $3C, $8B, $0C, $8B, $18
	dc.b	$8B, nRst, $18, $8B, $18
	smpsLoop		$00, $04, Olegend_PWM1, Target

Olegend_Loo$8:
	dc.b	$8B, $12, $06, nRst, $18, $8B, $18, nRst
	dc.b	$0C, $8B, $0C, $8B, $12, $06, nRst, $06
	dc.b	$8B, $06, nRst, $24, $8B, $18, $8B, $12
	dc.b	$06, nRst, $0C, $8B, $0C, nRst, $12, $8B
	dc.b	$06, nRst, $18, $8B, $18, nRst, $0C, $8B
	dc.b	$0C, $18, $18
	smpsLoop		$00, $03, Olegend_Loo$8, Target

Olegend_Loo$9:
	dc.b	$8B, $18, nRst, $12, $8B, $06, $0C, $0C
	dc.b	nRst, $18
	smpsLoop		$00, $04, Olegend_Loo$9, Target
	smpsJump		Olegend_Loo$8, Target

Olegend_PWM2:
	dc.b	$96, $60, $96, $3C, $8C, $0C, nRst, $18
	smpsLoop		$00, $03, Olegend_PWM2, Target
	dc.b	nRst, $60, nRst, $30
	smpsAlterVol		$22
	dc.b	$8C, $06
	smpsAlterVol		$BC
	dc.b	$0C
	smpsAlterVol		$11
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$0C, $0C
	smpsAlterVol		$EF

Olegend_Loop10:
	dc.b	nRst, $18, $8C, $18, nRst, $8C, $18
	smpsLoop		$00, $0C, Olegend_Loop10, Target
	dc.b	nRst, $60, nRst, $54, $8C, $0C, nRst, $60
	dc.b	nRst, $30, $8C, $06, $0C, $06, $0C, $0C
	smpsJump		Olegend_Loop10, Target

Olegend_PWM3:
	dc.b	$84, $60, nRst, $60
	smpsLoop		$00, $03, Olegend_PWM3, Target
	dc.b	$84, $60
	smpsAlterVol		$AB
	dc.b	$89, $18
	smpsAlterVol		$11
	dc.b	$89, $18
	smpsAlterVol		$11
	dc.b	$89, $18
	smpsAlterVol		$11
	dc.b	$89, $18
	smpsAlterVol		$22

Olegend_Jump10:
	dc.b	$89, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump		Olegend_Jump10, Target

Olegend_PWM4:
	dc.b	nRst, $60
	smpsLoop		$00, $07, Olegend_PWM4, Target
	dc.b	nRst, $30
	smpsAlterVol		$FD
	dc.b	$90, $06, $06, nRst, $90, $06, $06, $06
	dc.b	$06, $06

Olegend_Loop11:
	dc.b	$91, $06, $06, nRst
	smpsAlterVol		$03
	smpsAlterVol		$CE
	smpsAlterVol		$DE
	dc.b	$93
	smpsAlterVol		$32
	smpsAlterVol		$22
	smpsAlterVol		$FD
	dc.b	$91, $06, $06, nRst
	smpsAlterVol		$03
	smpsAlterVol		$CE
	smpsAlterVol		$DE
	dc.b	$93
	smpsAlterVol		$32
	smpsAlterVol		$22
	smpsAlterVol		$FD
	dc.b	$91, $0C, $0C, $06, $06
	smpsAlterVol		$03
	smpsAlterVol		$CE
	smpsAlterVol		$DE
	dc.b	$93
	smpsAlterVol		$32
	smpsAlterVol		$22
	smpsAlterVol		$FD
	dc.b	$91
	smpsLoop		$00, $0B, Olegend_Loop11, Target
	dc.b	$91, $06, $06, nRst
	smpsAlterVol		$03
	smpsAlterVol		$CE
	smpsAlterVol		$DE
	dc.b	$93
	smpsAlterVol		$32
	smpsAlterVol		$22
	smpsAlterVol		$FD
	dc.b	$91, $06, $06, nRst
	smpsAlterVol		$03
	smpsAlterVol		$CE
	smpsAlterVol		$DE
	dc.b	$93
	smpsAlterVol		$32
	smpsAlterVol		$22
	smpsAlterVol		$FD
	dc.b	$91, $0C, $0C, $06, $06, $06, $06
	smpsAlterVol		$22

Olegend_Loop13:
	dc.b	$90, $04, $04, $04, $06, $06, $06, $06
	dc.b	$06, $06, $0C, $0C, $06, $06, $06, $06
	dc.b	nRst, $06, $90, nRst, $90, $90, $06, $03
	dc.b	$03, $06, $06

Olegend_Loop12:
	dc.b	nRst, $06, $91
	smpsLoop		$00, $04, Olegend_Loop12, Target
	smpsLoop		$01, $02, Olegend_Loop13, Target
	smpsAlterVol		$DE
	smpsJump		Olegend_Loop11, Target

Olegend_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $03, $02, $01,	$0F, $10, $11, $19
	dc.b	$0A, $05, $0A, $05,	$02, $02, $02, $02
	dc.b	$36, $36, $36, $58,	$19, $1E, $32, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$61, $34, $34, $72,	$14, $0B, $0B, $0B
	dc.b	$08, $05, $05, $05,	$00, $00, $00, $00
	dc.b	$12, $27, $27, $27,	$19, $99, $99, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $0C, $0E
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
