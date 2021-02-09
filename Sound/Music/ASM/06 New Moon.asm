
Target	EQU	$4357D
	smpsHeaderVoice	NewMoon_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $1C
	smpsHeaderFM	NewMoon_FM1, Target, $00, $14
	smpsHeaderFM	NewMoon_FM2, Target, $00, $0E
	smpsHeaderFM	NewMoon_FM3, Target, $00, $0E
	smpsHeaderFM	NewMoon_FM4, Target, $00, $14
	smpsHeaderFM	NewMoon_FM5, Target, $00, $13
	smpsHeaderFM	NewMoon_FM6, Target, $00, $16
	smpsHeaderPSG	NewMoon_PSG1, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	NewMoon_PSG2, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	NewMoon_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	NewMoon_PWM1, Target, $00, $AA
	smpsHeaderPWM	NewMoon_PWM2, Target, $00, $BB
	smpsHeaderPWM	NewMoon_PWM3, Target, $00, $99
	smpsHeaderPWM	NewMoon_PWM4, Target, $00, $77

NewMoon_FM1:
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterVol		$08
	dc.b	nRst, $01, nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$05
	smpsAlterVol		$F6
	smpsAlterVol		$F8
	smpsFMvoice		$02
	smpsAlterVol		$02
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	dc.b	nRst, $60
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	dc.b	nRst, $3C
	smpsAlterVol		$FE
	smpsPan		panCenter
	smpsFMvoice		$00
	smpsAlterVol		$F8
	dc.b	nF3, $06, nG3, nBb2, nC3, nF2, nG2

NewMoon_Jump1:
	smpsCall		NewMoon_Call2, Target
	dc.b	nRst, $06, nG1
	smpsCall		NewMoon_Call2, Target
	dc.b	nRst, $06, nF1, nG1, $06, nF1, nFs1, nG1
	dc.b	nRst, $18, nFs1, $06, nRst, nF2, nFs2, nRst
	dc.b	nC2, nD2, nFs1, nF2, nD2, nEb2, nE2, nRst
	dc.b	$12, nEb2, $06, nRst, nRst, nD3, nEb3, nF2
	dc.b	nG2, nD2, nEb2, nD2, nC2, nCs2, nD2, nRst
	dc.b	$12, nD2, $06, nRst, nRst, nF2, nFs2, nRst
	dc.b	nFs1, nRst, nFs1, nFs1, nE1, nF1, nFs1, nRst
	dc.b	nFs1, nRst, nFs1, nRst, nRst, nF2, nFs2, nRst
	dc.b	nD2, nRst, nD2, nEb2, nC2, nD2, nEb2, nRst
	dc.b	$18, nF2, $06, nRst, nF2, nRst, nRst, nRst
	dc.b	nEb2, nF2, nFs1, nEb1, nF1, nFs1, nRst, $12
	dc.b	nFs2, $06, nRst, nRst, nFs2, nG2, nRst, nG1
	dc.b	nRst, nG1, nC2, nBb1, nB1, nC2, nRst, $12
	dc.b	nF2, $06, nRst, nRst, nBb2, nC3, nRst, nC2
	dc.b	nRst, nC2, nF1, nEb1, nE1, nF1, nRst, nF1
	dc.b	nRst, nF1, nRst, nRst, nEb3, nF3, nBb2, nC3
	dc.b	nEb2, nF2

NewMoon_Loop1:
	smpsCall		NewMoon_Call2, Target
	dc.b	nRst, $06, nG1
	smpsLoop		$00, $04, NewMoon_Loop1, Target
	smpsFMvoice		$02
	smpsAlterVol		$08
	smpsPan		panLeft
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	dc.b	nRst, $60
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsFMvoice		$00
	smpsAlterVol		$F8
	dc.b	nRst, $06, nF3, nG3, $0C, nC3, $06, nF2
	dc.b	$0C, nF3, $06, nG2, $0C, nG3, $06, nBb2
	dc.b	$0C, nEb2, $06, nBb1, nB1
	smpsFMvoice		$02
	smpsAlterVol		$08
	smpsPan		panLeft
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	dc.b	nRst, $60
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsFMvoice		$00
	smpsAlterVol		$F8
	dc.b	nRst, $3C, nF3, $06, nG3, nBb2, nC3, nF2
	dc.b	nG2
	smpsJump		NewMoon_Jump1, Target

NewMoon_Call2:
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $18, nC2
	dc.b	$06, nRst, nC2, nRst, $1E, nC2, $06, nG1
	dc.b	nBb1, nC2, nRst, $12, nC2, $06, nRst, $0C
	dc.b	nC3, $06, nD3, nRst, nF2, nG2, nEb2, nF2
	dc.b	$06, nC2, nEb2, nF2, nRst, $12, nF2, $06
	dc.b	nRst, $0C, nF3, $06, nG3, nRst, nBb2, nC3
	dc.b	nEb2, nG1, $06, nRst, nG1, nRst, nRst, nG2
	dc.b	nRst, nG1, nG2, nF2, nC2, nD2, nRst, nG1
	smpsReturn

NewMoon_Call1:
	dc.b	nF4, $0C
	smpsAlterVol		$08
	dc.b	$06
	smpsAlterVol		$F8
	dc.b	$06
	smpsAlterVol		$08
	dc.b	$06
	smpsAlterVol		$F8
	dc.b	nRst, $12
	smpsReturn

NewMoon_FM2:
	smpsFMvoice		$03
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panLeft
	smpsAlterVol		$F7
	dc.b	nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nG4, $06, nFs4, nF4, nE4, nC4
	dc.b	nG3, nBb3, nB3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC4, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $2A

NewMoon_Jump2:
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$05
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4
	dc.b	$06, nRst, $0C, nG4, nF4, $12, nG4, $06
	dc.b	nRst, $0C, nEb4, nRst, nD4, nEb4, nF4, smpsNoAttack
	dc.b	$0C
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nF4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nEb4, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, smpsNoAttack, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$05
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4
	dc.b	$06, nRst, $0C, nG4, nF4, $12, nG4, $06
	dc.b	nRst, $0C, nEb4, nRst, nD4, nEb4, nBb4, smpsNoAttack
	dc.b	$0C
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nD4, nEb4, nE4, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nBb3, nB3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, nEb4, nE4, nF4, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nF3, nE3, nEb3, nC3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$05
	smpsModSet	$05, $01, $02, $09
	dc.b	nG4, $18, nA4, $0C, nBb4, nC5, nD5, nBb4
	dc.b	$18, nC5, $30, nA4, $18, nFs4, nEb5, nD5
	dc.b	nFs4, nG4, nFs4, nG4, nBb4, nRst, $18, nEb4
	dc.b	nF4, $0C, nG4, nA4, nBb4, nA4, $18, nFs4
	dc.b	nG4, nA4, nBb4, $24, nC5, $3C
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	dc.b	nRst, $06, nF3, nG3, nBb3, nC4, nEb4, nE4
	dc.b	nF4, nRst, $30
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$05
	smpsModSet	$05, $01, $02, $04
	smpsCall		NewMoon_Call3, Target
	dc.b	nRst, $0C
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nRst, $18
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$05
	smpsModSet	$05, $01, $02, $04
	smpsCall		NewMoon_Call3, Target
	dc.b	nRst, $0C
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nG3, $18, nA3, nBb3, $30, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nG4, $06, nFs4, nF4, nE4, nC4
	dc.b	nG3, nBb3, nB3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC4, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $2A
	smpsJump		NewMoon_Jump2, Target

NewMoon_Call3:
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nG4
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nC4, $0C, nF4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nEb4, $0C, nRst, $0C, nC4, nF4
	dc.b	nG4, nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nA4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nA4, nBb4
	dc.b	$06, nC5, $12, nRst, $0C, nC5, $18, nD5
	dc.b	$0C, nD5, $03, nEb5, $0F, nC5, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nBb4, $0C, nA4, $12, nF4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nG4, $0C, smpsNoAttack, $0C, nAb4, nA4
	dc.b	nBb4, nC5, $12, nEb5, $03, nF5, $3F
	smpsReturn

NewMoon_FM3:
	smpsFMvoice		$03
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panRight
	smpsAlterVol		$F7
	dc.b	nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nC4, $06, nB3, nBb3, nG3, nF3
	dc.b	nC3, nEb3, nE3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nG3, nC3, nEb3, nE3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $2A

NewMoon_Jump3:
	smpsFMvoice		$04
	smpsAlterVol		$0B
	smpsAlterPitch	$0C
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C, nRst, $0C, nC4, nF4, nG4, nBb4
	dc.b	$12, nA4, $06, nRst, $0C, nG4, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nF4
	smpsFMvoice		$03
	smpsAlterVol		$F5
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	dc.b	nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb2, nB2, nC3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, smpsNoAttack, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$04
	smpsAlterVol		$0B
	smpsAlterPitch	$0C
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C, nRst, $0C, nC4, nF4, nG4, nBb4
	dc.b	$12, nA4, $06, nRst, $0C, nG4, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nF4
	smpsFMvoice		$03
	smpsAlterVol		$F5
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	dc.b	nG3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nBb3, nB3, nC4, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nF3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nC3, nB2, nBb2, nG2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsModSet	$05, $01, $02, $09
	smpsFMvoice		$04
	smpsAlterVol		$0B
	smpsAlterPitch	$0C
	dc.b	nRst, $0C, nG4, $18, nA4, $0C, nBb4, nC5
	dc.b	nD5, nBb4, $18, nC5, $30, nA4, $18, nFs4
	dc.b	nEb5, nD5, nFs4, nG4, nFs4, nG4, nBb4, nRst
	dc.b	$18, nEb4, nF4, $0C, nG4, nA4, nBb4, nA4
	dc.b	$18, nFs4, nG4, nA4, nBb4, $24, nC5, $30
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$03
	smpsAlterVol		$F5
	smpsAlterPitch	$F4
	dc.b	nRst, $06, nC3, nD3, nF3, nG3, nBb3, nB3
	dc.b	nC4, nRst, $30
	smpsFMvoice		$04
	smpsAlterVol		$0B
	smpsAlterPitch	$0C
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C
	smpsCall		NewMoon_Call3, Target
	smpsFMvoice		$03
	smpsAlterVol		$F5
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nRst, $18
	smpsFMvoice		$04
	smpsAlterVol		$0B
	smpsAlterPitch	$0C
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C
	smpsCall		NewMoon_Call3, Target
	smpsFMvoice		$03
	smpsAlterVol		$F5
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nC3, $18, nD3, nEb3, $30, nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $4E, nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nC4, $06, nB3, nBb3, nG3, nF3
	dc.b	nC3, nEb3, nE3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nG3, nC3, nEb3, nE3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $2A
	smpsJump		NewMoon_Jump3, Target

NewMoon_FM4:
	smpsFMvoice		$03
	dc.b	nRst, $01
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$05
	smpsAlterVol		$F6
	smpsAlterVol		$FA
	smpsFMvoice		$02
	smpsAlterPitch	$F6

NewMoon_Loop2:
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	dc.b	nRst, $60
	smpsLoop		$00, $02, NewMoon_Loop2, Target
	smpsAlterPitch	$0A

NewMoon_Loop3:
	smpsCall		NewMoon_Call4, Target
	smpsLoop		$00, $02, NewMoon_Loop3, Target
	smpsPan		panCenter
	smpsModSet	$0F, $01, $01, $08
	smpsFMvoice		$05
	dc.b	nD3, $30, nFs3, nBb3, $18, nC4, nBb3, $30
	dc.b	nA3, nC4, smpsNoAttack, $60, nBb3, $30, nA3, smpsNoAttack
	dc.b	$30, nBb3, smpsNoAttack, $60
	smpsModSet	$00, $00, $00, $00
	dc.b	nA3, $1E, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$06, nRst, $30
	smpsFMvoice		$02

NewMoon_Loop4:
	smpsCall		NewMoon_Call4, Target
	smpsLoop		$00, $04, NewMoon_Loop4, Target
	smpsAlterPitch	$F6
	smpsPan		panRight

NewMoon_Loop5:
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$0A
	smpsCall		NewMoon_Call1, Target
	smpsAlterVol		$F6
	dc.b	nRst, $60
	smpsLoop		$00, $04, NewMoon_Loop5, Target
	smpsAlterPitch	$0A
	smpsJump		NewMoon_Loop3, Target

NewMoon_Call4:
	smpsPan		panLeft
	dc.b	nF4, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nF4, $0C, smpsNoAttack, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $06, nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC5
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG4, smpsNoAttack, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC5, $0C, smpsNoAttack, $0C, nD5, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC5, nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsReturn

NewMoon_FM5:
	dc.b	nRst, $60
	smpsFMvoice		$01

NewMoon_Loop6:
	smpsCall		NewMoon_Call5, Target
	smpsLoop		$01, $04, NewMoon_Loop6, Target

NewMoon_Loop7:
	smpsCall		NewMoon_Call5, Target
	smpsLoop		$01, $08, NewMoon_Loop7, Target
	dc.b	nG2, $06, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nFs2, nD3, nFs2, nD3, nFs2, nD3, nFs2
	dc.b	nD3, nBb2, nD3, nBb2, nD3, nBb2, nD3, nBb2
	dc.b	nD3, nAb2, nEb2, nAb2, nEb3, nAb2, nEb3, nAb2
	dc.b	nEb3, nA2, nD3, nA2, nD3, nA2, nD3, nA2
	dc.b	nD3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nA2, nC3, nA2, nC3, nA2, nC3, nA2
	dc.b	nC3, nG2, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nF2, nC3, nF2, nC3, nF2, nC3, nF2
	dc.b	nC3, nFs2, nC3, nFs2, nC3, nFs2, nC3, nFs2
	dc.b	nC3, nG2, nD3, nG2, nD3, nG2, nD3, nG2
	dc.b	nD3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2
	dc.b	nEb3, nBb2, nEb3, nBb2, nEb3, nBb2, nEb3, nBb2
	dc.b	nEb3, nA2, nF3, nA2, nF3, nA2, nF3, nA2
	dc.b	nF3, nRst, $30

NewMoon_Loo$8:
	smpsCall		NewMoon_Call5, Target
	smpsLoop		$01, $18, NewMoon_Loo$8, Target
	smpsJump		NewMoon_Loop7, Target

NewMoon_Call5:
	dc.b	nC2, $06, nF2, nC2, nG2
	smpsLoop		$00, $04, NewMoon_Call5, Target
	smpsReturn

NewMoon_FM6:
	smpsFMvoice		$01
	dc.b	nRst, $60

NewMoon_Loo$9:
	smpsCall		NewMoon_Call6, Target
	smpsLoop		$00, $04, NewMoon_Loo$9, Target

NewMoon_Jump4:
	smpsFMvoice		$06
	smpsModSet	$01, $01, $03, $06
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nA4
	dc.b	$06, nRst, $0C, nG4, nF4, $12, nG4, $06
	dc.b	nRst, $0C, nEb4, nRst, nD4, nEb4, nF4, smpsNoAttack
	dc.b	$60, nRst, nRst, $0C, nC4, nF4, nG4, nBb4
	dc.b	$12, nA4, $06, nRst, $0C, nG4, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nEb4, nRst, nD4, nEb4
	dc.b	nBb4, smpsNoAttack, $60, nRst, nRst, $18, nG4, nA4
	dc.b	$0C, nBb4, nC5, nD5, nBb4, $18, nC5, $30
	dc.b	nA4, $18, nFs4, nEb5, nD5, nFs4, nG4, nFs4
	dc.b	nG4, nBb4, nRst, $18, nEb4, nF4, $0C, nG4
	dc.b	nA4, nBb4, nA4, $18, nFs4, nG4, nA4, nBb4
	dc.b	$24, nC5, $3C, nRst, $60
	smpsCall		NewMoon_Call3, Target
	dc.b	smpsNoAttack, $0C, smpsNoAttack, $60
	smpsCall		NewMoon_Call3, Target
	dc.b	smpsNoAttack, $0C, smpsNoAttack, $60

NewMoon_Loop10:
	smpsFMvoice		$01
	smpsModSet	$00, $00, $00, $00
	smpsCall		NewMoon_Call6, Target
	smpsLoop		$00, $08, NewMoon_Loop10, Target
	smpsJump		NewMoon_Jump4, Target

NewMoon_Call6:
	smpsAlterVol		$03
	smpsAlterNote	$02
	smpsPan		panLeft
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan		panRight
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan		panLeft
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsPan		panRight
	dc.b	nC3, $06, nF3, nC3, nG3
	smpsAlterVol		$FD
	smpsAlterNote	$FE
	smpsPan		panCenter
	smpsReturn

NewMoon_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice	$06

NewMoon_Loop11:
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$05
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$FB
	dc.b	nRst, $60
	smpsLoop		$00, $02, NewMoon_Loop11, Target

NewMoon_Loop12:
	smpsCall		NewMoon_Call8, Target
	smpsLoop		$00, $08, NewMoon_Loop12, Target
	smpsPSGvoice	$09
	smpsModSet	$0F, $01, $01, $08
	dc.b	nBb2, $30, nD3, nF3, $18, nG3, nG3, $30
	dc.b	nFs3, nA3, smpsNoAttack, $60, nG3, $30, nF3, smpsNoAttack
	dc.b	$30, nG3, smpsNoAttack, $60
	smpsModSet	$00, $00, $00, $00
	smpsPSGvoice	$06
	dc.b	nF3, $1E, $06
	smpsSetVol	$02
	dc.b	$06
	smpsSetVol	$FE
	dc.b	$06, nRst, $30

NewMoon_Loop13:
	smpsCall		NewMoon_Call8, Target
	smpsLoop		$00, $10, NewMoon_Loop13, Target

NewMoon_Loop14:
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$05
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$FB
	dc.b	nRst, $60
	smpsLoop		$00, $04, NewMoon_Loop14, Target
	smpsJump		NewMoon_Loop12, Target

NewMoon_Call7:
	dc.b	nBb2, $0C
	smpsSetVol	$02
	dc.b	$06
	smpsSetVol	$FE
	dc.b	$06
	smpsSetVol	$02
	dc.b	$06
	smpsSetVol	$FE
	dc.b	nRst, $12
	smpsReturn

NewMoon_Call8:
	dc.b	nF3, $12, $06, nRst, $24, nF3, $06, nRst
	dc.b	$0C, nF3, nRst, $06
	smpsReturn

NewMoon_PSG2:
	dc.b	nRst, $60
	smpsPSGvoice	$06
	smpsAlterPitch	$02

NewMoon_Loop15:
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$05
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$FB
	dc.b	nRst, $60
	smpsLoop		$00, $02, NewMoon_Loop15, Target
	smpsAlterPitch	$FE
	smpsAlterPitch	$F9

NewMoon_Loop16:
	smpsCall		NewMoon_Call8, Target
	smpsLoop		$00, $08, NewMoon_Loop16, Target
	smpsAlterPitch	$07
	smpsPSGvoice	$09
	smpsModSet	$0F, $01, $01, $08
	dc.b	nG2, $30, nA2, nD3, $18, nE3, nD3, $30
	dc.b	nE3, nFs3, smpsNoAttack, $60, nD3, $30, nC3, smpsNoAttack
	dc.b	$30, nD3, smpsNoAttack, $60
	smpsModSet	$00, $00, $00, $00
	smpsPSGvoice	$06
	dc.b	nC3, $1E, $06
	smpsSetVol	$02
	dc.b	$06
	smpsSetVol	$FE
	dc.b	$06, nRst, $30
	smpsAlterPitch	$F9

NewMoon_Loop17:
	smpsCall		NewMoon_Call8, Target
	smpsLoop		$00, $10, NewMoon_Loop17, Target
	smpsAlterPitch	$07
	smpsAlterPitch	$02

NewMoon_Loop18:
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$05
	smpsCall		NewMoon_Call7, Target
	smpsSetVol	$FB
	dc.b	nRst, $60
	smpsLoop		$00, $04, NewMoon_Loop18, Target
	smpsAlterPitch	$FE
	smpsAlterPitch	$F9
	smpsJump		NewMoon_Loop16, Target

NewMoon_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $60

NewMoon_Loop19:
	smpsCall		NewMoon_Call9, Target
	smpsLoop		$01, $04, NewMoon_Loop19, Target

NewMoon_Loop20:
	smpsCall		NewMoon_Call10, Target
	smpsLoop		$01, $0F, NewMoon_Loop20, Target
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C, nRst, $30

NewMoon_Loop21:
	smpsCall		NewMoon_Call10, Target
	smpsLoop		$01, $10, NewMoon_Loop21, Target

NewMoon_Loop22:
	smpsCall		NewMoon_Call9, Target
	smpsLoop		$01, $08, NewMoon_Loop22, Target
	smpsJump		NewMoon_Loop20, Target

NewMoon_Call9:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsLoop		$00, $08, NewMoon_Call9, Target
	smpsReturn

NewMoon_Call10:
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$00, $04, NewMoon_Call10, Target
	smpsReturn

NewMoon_PWM1:
	dc.b	$96, $60

NewMoon_Loop23:
	dc.b	$8B, $0C, $0C, nRst, $8B, $8B, $12, $12
	dc.b	$0C
	smpsLoop		$00, $04, NewMoon_Loop23, Target

NewMoon_Jump5:
	smpsCall		NewMoon_Call11, Target
	smpsCall		NewMoon_Call11, Target
	smpsCall		NewMoon_Call11, Target
	smpsCall		NewMoon_Call12, Target
	dc.b	nRst, $30

NewMoon_Loop24:
	smpsCall		NewMoon_Call11, Target
	smpsLoop		$00, $04, NewMoon_Loop24, Target

NewMoon_Loop25:
	dc.b	$8B, $0C, $0C, nRst, $8B, $8B, $12, $12
	dc.b	$0C
	smpsLoop		$00, $08, NewMoon_Loop25, Target
	smpsJump		NewMoon_Jump5, Target

NewMoon_Call11:
	smpsCall		NewMoon_Call12, Target
	dc.b	nRst, $0C, $8B, nRst, $18
	smpsReturn

NewMoon_Call12:
	dc.b	$8B, $06, $06, $06, $06, nRst, $18, $8B
	dc.b	$0C, $0C, nRst, $18, $8B, $06, $06, $06
	dc.b	$06, nRst, $12, $8B, $06, nRst, $0C, $8B
	dc.b	nRst, $18, $8B, $06, $06, $06, $06, nRst
	dc.b	$12, $8B, $06, nRst, $0C, $8B, nRst, $18
	dc.b	$8B, $06, $06, $06, $06, nRst, $8B, nRst
	dc.b	$8B
	smpsReturn

NewMoon_PWM2:
	dc.b	$96, $60
	smpsAlterVol		$DE
	smpsCall		NewMoon_Call13, Target

NewMoon_Jump6:
	smpsCall		NewMoon_Call15, Target
	smpsCall		NewMoon_Call15, Target
	smpsCall		NewMoon_Call15, Target
	smpsCall		NewMoon_Call16, Target
	dc.b	nRst, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70

NewMoon_Loop26:
	smpsCall		NewMoon_Call15, Target
	smpsLoop		$00, $04, NewMoon_Loop26, Target
	smpsAlterVol		$DE
	smpsCall		NewMoon_Call14, Target
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$8C, $8C, $86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C, $8C
	smpsAlterVol		$90
	dc.b	$87, $87
	smpsAlterVol		$70
	dc.b	$8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$86, $8C, $8C, $8C, $8C
	smpsCall		NewMoon_Call13, Target
	smpsJump		NewMoon_Jump6, Target

NewMoon_Call13:
	smpsCall		NewMoon_Call14, Target
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$8C, $8C, $86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C, $8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsAlterVol		$22
	dc.b	$8C, $8C, $8C, $8C, $8C, $8C, $8C, $8C
	smpsReturn

NewMoon_Call15:
	smpsCall		NewMoon_Call16, Target
	dc.b	$8C, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsReturn

NewMoon_Call16:
	dc.b	nRst, $18, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, $0C, $06, $06, nRst, $18, $8C, nRst
	dc.b	$8C, nRst, $8C, nRst
	smpsReturn

NewMoon_Call14:
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	$8C
	smpsAlterVol		$F9
	dc.b	$85, $85
	smpsAlterVol		$07
	dc.b	$86, $8C
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C, $8C, $86, $8C, $8C, $8C
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$8C
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C, $8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87, $87
	smpsAlterVol		$70
	dc.b	$8C, $8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$8C, $86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$8C, $8C, $86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$8C, $8C, $8C
	smpsReturn

NewMoon_PWM3:
	dc.b	$96, $60
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst

NewMoon_Jump7:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04

NewMoon_Loop27:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $04, NewMoon_Loop27, Target
	smpsJump		NewMoon_Jump7, Target

NewMoon_PWM4:
	dc.b	$96, $60

NewMoon_Loop28:
	smpsCall		NewMoon_Call17, Target
	smpsLoop		$01, $04, NewMoon_Loop28, Target

NewMoon_Loop29:
	smpsCall		NewMoon_Call17, Target
	smpsLoop		$01, $0F, NewMoon_Loop29, Target
	smpsAlterVol		$FD
	dc.b	nRst, $0C, $88, $06, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $0C, $88, $06, $06
	smpsAlterVol		$30
	dc.b	$96, $30

NewMoon_Loop30:
	smpsCall		NewMoon_Call17, Target
	smpsLoop		$01, $18, NewMoon_Loop30, Target
	smpsJump		NewMoon_Loop29, Target

NewMoon_Call17:
	smpsAlterVol		$FD
	dc.b	nRst, $0C, $88, $06, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $0C, $88, $06, $06
	smpsAlterVol		$30
	smpsLoop		$00, $02, NewMoon_Call17, Target
	smpsReturn

NewMoon_Patches:

	
	dc.b	$3B
	dc.b	$18, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$12, $14, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$01
	dc.b	$76, $75, $72, $33,	$D5, $57, $9F, $FF
	dc.b	$02, $0B, $05, $0B,	$0A, $0A, $0F, $09
	dc.b	$FF, $2F, $3F, $FF,	$1E, $28, $16, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1F
	dc.b	$67, $32, $53, $23,	$1C, $98, $1F, $1F
	dc.b	$12, $0F, $0F, $0F,	$00, $00, $00, $00
	dc.b	$FF, $0F, $0F, $0F,	$80, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$02, $09, $01, $02,	$8E, $8E, $8D, $55
	dc.b	$0E, $0E, $0E, $04,	$00, $00, $00, $09
	dc.b	$1F, $FF, $3F, $4F,	$16, $29, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $DF, $DF, $DF
	dc.b	$00, $00, $03, $02,	$00, $04, $02, $01
	dc.b	$BF, $4C, $6C, $5C,	$22, $8E, $8E, $8E
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$72, $72, $33, $32,	$1F, $08, $1F, $08
	dc.b	$01, $00, $01, $00,	$01, $00, $01, $00
	dc.b	$1F, $0F, $1F, $0F,	$19, $80, $17, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$37
	dc.b	$52, $31, $34, $50,	$1F, $1F, $1F, $1F
	dc.b	$05, $05, $10, $10,	$05, $05, $05, $05
	dc.b	$4D, $4D, $4C, $4C,	$80, $87, $87, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
