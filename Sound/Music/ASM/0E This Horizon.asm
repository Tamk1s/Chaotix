
Target	EQU	$44AD4
	smpsHeaderVoice	ThisHorizon_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $03
	smpsHeaderFM	ThisHorizon_FM1, Target, $00, $0C
	smpsHeaderFM	ThisHorizon_FM2, Target, $00, $0C
	smpsHeaderFM	ThisHorizon_FM3, Target, $00, $0C
	smpsHeaderFM	ThisHorizon_FM4, Target, $00, $10
	smpsHeaderFM	ThisHorizon_FM5, Target, $00, $10
	smpsHeaderFM	ThisHorizon_FM6, Target, $00, $10
	smpsHeaderPSG	ThisHorizon_PSG1, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	ThisHorizon_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	ThisHorizon_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	ThisHorizon_PWM1, Target, $00, $99
	smpsHeaderPWM	ThisHorizon_PWM2, Target, $00, $11
	smpsHeaderPWM	ThisHorizon_PWM3, Target, $00, $99
	smpsHeaderPWM	ThisHorizon_PWM4, Target, $00, $33

ThisHorizon_FM1:
	smpsFMvoice		$00
	smpsModSet	$09, $01, $02, $00
	dc.b	nC2, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30, nRst, $30, nG1, $06, nG2, nG1
	dc.b	$0C, nA1, $06, nA2, nA1, $0C

ThisHorizon_Loop1:
	smpsCall		ThisHorizon_Call1, Target
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nC2
	dc.b	$18, nC3, $0C, nC2, nF1, $12, nF2, $06
	dc.b	nRst, $0C, nF1, $0C, $12, $06, nF2, $0C
	dc.b	nF1
	smpsCall		ThisHorizon_Call1, Target
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nEb2
	dc.b	$18, nEb3, $0C, nEb2, nD2, $12, nD3, $06
	dc.b	nRst, $0C, nD2, nRst, $06, nD3, nRst, nD3
	dc.b	nD2, nC2, $12
	smpsLoop		$00, $02, ThisHorizon_Loop1, Target
	smpsJump		ThisHorizon_Loop1, Target

ThisHorizon_Call1:
	dc.b	nBb1, $12, nBb2, $06, nRst, $0C, nBb1, $0C
	dc.b	$18, nBb2, $0C, nBb1, nA1, $12, nA2, $06
	dc.b	nRst, $0C, nA1, nD2, $12, $06, nD3, $0C
	dc.b	nD2
	smpsReturn

ThisHorizon_FM2:
	smpsModSet	$09, $01, $02, $00
	smpsFMvoice		$04
	smpsPan		panRight
	dc.b	nF3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsFMvoice		$02
	dc.b	nRst, $60

ThisHorizon_Loop2:
	smpsCall		ThisHorizon_Call2, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $0C
	smpsFMvoice		$03
	smpsPan		panRight
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsCall		ThisHorizon_Call2, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $30
	smpsFMvoice		$03
	smpsPan		panRight
	dc.b	nC3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC3, $12
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsLoop		$00, $02, ThisHorizon_Loop2, Target
	smpsJump		ThisHorizon_Loop2, Target

ThisHorizon_Call2:
	dc.b	nRst, $18, nA3, nG3, nC4, $06, nRst, nC4
	dc.b	$0C, smpsNoAttack, $0C, nD4, nA3, $24, nG3, $0C
	dc.b	nA3, nBb3, smpsNoAttack, $0C, nA3, nG3, nF3
	smpsReturn

ThisHorizon_FM3:
	smpsModSet	$09, $01, $02, $00
	smpsFMvoice		$04
	dc.b	nC3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsAlterPitch	$0C
	smpsFMvoice		$02
	smpsAlterVol		$05
	smpsModSet	$02, $01, $02, $05
	smpsPan		panLeft
	dc.b	nRst, $60

ThisHorizon_Loop3:
	dc.b	nRst, $0C
	smpsCall		ThisHorizon_Call2, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C
	smpsFMvoice		$03
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nA2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF2, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$02
	smpsAlterVol		$05
	smpsModSet	$02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall		ThisHorizon_Call2, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24
	smpsFMvoice		$03
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nG2, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nG2, $12
	smpsFMvoice		$02
	smpsAlterVol		$05
	smpsModSet	$02, $01, $02, $05
	smpsLoop		$00, $02, ThisHorizon_Loop3, Target
	smpsJump		ThisHorizon_Loop3, Target

ThisHorizon_FM4:
	smpsModSet	$09, $01, $02, $00
	smpsPan		panLeft
	smpsFMvoice		$04
	dc.b	nG2, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nRst, $60

ThisHorizon_Loop4:
	smpsCall		ThisHorizon_Call3, Target
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsCall		ThisHorizon_Call3, Target
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsLoop		$00, $02, ThisHorizon_Loop4, Target
	smpsJump		ThisHorizon_Loop4, Target

ThisHorizon_Call3:
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsReturn

ThisHorizon_FM5:
	dc.b	nRst, $60
	smpsFMvoice		$01
	dc.b	nRst, $60

ThisHorizon_Loop5:
	smpsCall		ThisHorizon_Call4, Target
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsCall		ThisHorizon_Call4, Target
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsLoop		$00, $02, ThisHorizon_Loop5, Target
	smpsJump		ThisHorizon_Loop5, Target

ThisHorizon_Call4:
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsReturn

ThisHorizon_FM6:
	dc.b	nRst, $60
	smpsFMvoice		$01
	dc.b	nRst, $60

ThisHorizon_Loop6:
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C, nRst, $0C, nC3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsLoop		$00, $03, ThisHorizon_Loop6, Target
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, nRst, $0C, nC3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsLoop		$01, $02, ThisHorizon_Loop6, Target
	smpsJump		ThisHorizon_Loop6, Target

ThisHorizon_PSG1:
	smpsPSGvoice	$04
	smpsModSet	$09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPSGvoice	$02
	smpsSetVol	$02
	dc.b	nRst, $30, nC4, $06, nG3, nC3, nC4, nG3
	dc.b	nC3, nC4, nG3
	smpsSetVol	$FE

ThisHorizon_Loop7:
	dc.b	nC3, $06, nC3, nC4, nG3, nC3, nC4, nG3
	dc.b	nC3, nC4, nG3, nC3, nC4, nG3, nC3, nC4
	dc.b	nG3
	smpsLoop		$00, $10, ThisHorizon_Loop7, Target
	smpsJump		ThisHorizon_Loop7, Target

ThisHorizon_PSG2:
	smpsPSGvoice	$04
	smpsModSet	$09, $02, $FF, $00
	dc.b	nBb2, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPSGvoice	$02
	smpsSetVol	$05
	dc.b	nRst, $01
	smpsAlterNote	$02
	dc.b	nRst, $30, nC4, $06, nG3, nC3, nC4, nG3
	dc.b	nC3, nC4, nG3, $05
	smpsPSGvoice	$08
	smpsSetVol	$FB
	smpsAlterNote	$FE
	smpsModSet	$08, $01, $01, $02

ThisHorizon_Loo$8:
	smpsCall		ThisHorizon_Call2, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $60
	smpsCall		ThisHorizon_Call2, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $54
	smpsLoop		$00, $02, ThisHorizon_Loo$8, Target
	smpsJump		ThisHorizon_Loo$8, Target

ThisHorizon_PSG3:
	dc.b	nRst, $60
	smpsPSGform	$E7
	dc.b	nRst, $60

ThisHorizon_Loo$9:
	smpsCall		ThisHorizon_Call5, Target
	smpsLoop		$00, $04, ThisHorizon_Loo$9, Target
	smpsCall		ThisHorizon_Call5, Target
	smpsPSGvoice	$05
	dc.b	nC4, $0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$12
	smpsPSGvoice	$02
	dc.b	$0C
	smpsCall		ThisHorizon_Call5, Target
	smpsCall		ThisHorizon_Call5, Target
	smpsJump		ThisHorizon_Loo$9, Target

ThisHorizon_Call5:
	smpsPSGvoice	$05
	dc.b	nC4, $0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsReturn

ThisHorizon_PWM1:
	dc.b	$96, $60, $96, $60

ThisHorizon_Loop10:
	dc.b	$81, $24, $0C, $24, $0C, $24, $0C, $12
	dc.b	$12, $0C
	smpsLoop		$00, $08, ThisHorizon_Loop10, Target
	smpsJump		ThisHorizon_Loop10, Target

ThisHorizon_PWM2:
	dc.b	$82, $04, $82, $82
	smpsAlterVol		$11
	smpsLoop		$00, $04, ThisHorizon_PWM2, Target

ThisHorizon_Loop11:
	dc.b	$82, $04, $82
	smpsAlterVol		$11
	smpsLoop		$00, $06, ThisHorizon_Loop11, Target
	dc.b	$96, $0C, $82, $82, $82, $06, $82, $82
	dc.b	$82, $86, nRst, $82, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82

ThisHorizon_Jump1:
	smpsCall		ThisHorizon_Call6, Target
	smpsCall		ThisHorizon_Call6, Target
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06, $85, nRst, $85
	smpsAlterVol		$07
	dc.b	$86, nRst, $86, $86, nRst, $86
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	$82
	smpsCall		ThisHorizon_Call6, Target
	smpsJump		ThisHorizon_Jump1, Target

ThisHorizon_Call6:
	dc.b	nRst, $18, $82
	smpsLoop		$00, $06, ThisHorizon_Call6, Target
	dc.b	nRst, $0C, $82, $82, $82, $06, $82, nRst
	dc.b	$82, nRst, nRst, $82, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	nRst
	smpsReturn

ThisHorizon_PWM3:
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04

ThisHorizon_Jump2:
	smpsCall		ThisHorizon_Call7, Target
	smpsCall		ThisHorizon_Call7, Target
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	dc.b	nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $54
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $0C
	smpsAlterVol		$04
	smpsCall		ThisHorizon_Call7, Target
	smpsJump		ThisHorizon_Jump2, Target

ThisHorizon_Call7:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	smpsReturn

ThisHorizon_PWM4:
	dc.b	$95, $03
	smpsLoop		$00, $04, ThisHorizon_PWM4, Target
	smpsAlterVol		$11
	smpsLoop		$01, $08, ThisHorizon_PWM4, Target
	smpsAlterVol		$AB
	dc.b	$96, $30
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $91, $91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $90, $90
	smpsAlterVol		$50

ThisHorizon_Loop12:
	smpsCall		ThisHorizon_Call8, Target
	smpsLoop		$00, $05, ThisHorizon_Loop12, Target
	smpsCall		ThisHorizon_Call9, Target

ThisHorizon_Loop13:
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $0C
	smpsAlterVol		$50
	smpsLoop		$00, $04, ThisHorizon_Loop13, Target
	smpsAlterVol		$FB
	dc.b	$91, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsCall		ThisHorizon_Call8, Target
	smpsCall		ThisHorizon_Call8, Target
	smpsJump		ThisHorizon_Loop12, Target

ThisHorizon_Call8:
	smpsCall		ThisHorizon_Call9, Target
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $0C
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $06, $06
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsReturn

ThisHorizon_Call9:
	smpsAlterVol		$FB
	dc.b	$91, $0C, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $0C, $0C
	smpsAlterVol		$50
	smpsReturn

ThisHorizon_Patches:

	
	dc.b	$3B
	dc.b	$53, $31, $02, $03,	$DF, $9F, $5F, $9F
	dc.b	$14, $08, $0E, $07,	$13, $0E, $0F, $07
	dc.b	$8F, $7F, $3F, $8F,	$05, $18, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$08, $02, $02, $02,	$5D, $5D, $5D, $5E
	dc.b	$07, $07, $06, $0B,	$15, $15, $14, $18
	dc.b	$FF, $FF, $FF, $FF,	$24, $26, $17, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $9F, $9F, $9F
	dc.b	$00, $03, $03, $05,	$00, $18, $16, $16
	dc.b	$0F, $5C, $5C, $5C,	$22, $8B, $8B, $8A
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$28
	dc.b	$44, $47, $12, $71,	$1F, $12, $1F, $1F
	dc.b	$04, $01, $04, $0C,	$01, $01, $01, $00
	dc.b	$1F, $1F, $1F, $1F,	$26, $17, $14, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	dc.b	$00	; Unused
