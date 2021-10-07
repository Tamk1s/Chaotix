
Target	EQU	$40000
	smpsHeaderVoice	DoorIntoSummer_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $25
	smpsHeaderFM	DoorIntoSummer_FM1, Target, $00, $09
	smpsHeaderFM	DoorIntoSummer_FM2, Target, $0C, $10
	smpsHeaderFM	DoorIntoSummer_FM3, Target, $0C, $10
	smpsHeaderFM	DoorIntoSummer_FM4, Target, $00, $10
	smpsHeaderFM	DoorIntoSummer_FM5, Target, $00, $10
	smpsHeaderFM	DoorIntoSummer_FM6, Target, $00, $10
	smpsHeaderPSG	DoorIntoSummer_PSG1, Target, $F4, $00, $00, $0C
	smpsHeaderPSG	DoorIntoSummer_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	DoorIntoSummer_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	DoorIntoSummer_PWM1, Target, $00, $99
	smpsHeaderPWM	DoorIntoSummer_PWM2, Target, $00, $AA
	smpsHeaderPWM	DoorIntoSummer_PWM3, Target, $00, $99
	smpsHeaderPWM	DoorIntoSummer_PWM4, Target, $00, $99

DoorIntoSummer_FM1:
	smpsFMvoice		$00

DoorIntoSummer_Loop1:
	smpsCall		DoorIntoSummer_Call1, Target
	smpsLoop		$00, $03, DoorIntoSummer_Loop1, Target
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, $30

DoorIntoSummer_Loop2:
	smpsCall		DoorIntoSummer_Call2, Target
	smpsLoop		$00, $07, DoorIntoSummer_Loop2, Target
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06
	dc.b	nRst, $30
	smpsCall		DoorIntoSummer_Call3, Target
	dc.b	nA2, $24, nG1, nC2, $18
	smpsCall		DoorIntoSummer_Call3, Target
	dc.b	nA1, $18, nA2, $06, nRst, nA1, $18, $0C
	dc.b	nG1, $06, nG2, nRst, nG2
	smpsCall		DoorIntoSummer_Call3, Target
	dc.b	nA2, $24, nG1, nC2, $18
	smpsCall		DoorIntoSummer_Call3, Target
	dc.b	nD2, $24, nE2, $18, nE3, $06, nRst, nA1
	dc.b	$0C, nA2, $06, nRst

DoorIntoSummer_Loop3:
	smpsCall		DoorIntoSummer_Call1, Target
	smpsLoop		$00, $03, DoorIntoSummer_Loop3, Target
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nG2, nA1, $12
	dc.b	nA2, $06, nRst, $12, nA1, $06, nRst, nA1
	dc.b	$06, $0C, $0C, nA2, $06, nRst, nAb1, $12
	dc.b	nAb2, $06, nRst, $12, nAb1, $06, nRst, nAb1
	dc.b	$06, $0C, $18, nG1, $12, nG2, $06, nRst
	dc.b	$12, nG1, $06, nRst, nG1, $06, $0C, $0C
	dc.b	nE1, nFs1, $12, nFs2, $06, nRst, $12, nD2
	dc.b	$06, nRst, nD2, $06, $0C, $0C, nD3, $06
	dc.b	nRst
	smpsLoop		$01, $02, DoorIntoSummer_Loop3, Target

DoorIntoSummer_Loop4:
	smpsCall		DoorIntoSummer_Call1, Target
	smpsLoop		$00, $03, DoorIntoSummer_Loop4, Target
	dc.b	nF1, $12, nF2, $06, nRst, $0C, $06, nF1
	dc.b	$06, nRst, $30
	smpsJump		DoorIntoSummer_Loop2, Target

DoorIntoSummer_Call1:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nF2, $06, nRst
	smpsReturn

DoorIntoSummer_Call2:
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06
	dc.b	nRst, nC2, $06, $0C, nBb1, nB1
	smpsReturn

DoorIntoSummer_Call3:
	dc.b	nRst, $0C, nF1, nRst, $06, nF1, $0C, nE1
	dc.b	$06, nRst, $30
	smpsReturn

DoorIntoSummer_FM2:
	smpsFMvoice		$02
	smpsCall		DoorIntoSummer_Call4, Target

DoorIntoSummer_Jump1:
	smpsFMvoice		$04
	smpsAlterPitch	$F4
	dc.b	nRst, $0C, nC4, $06, $06

DoorIntoSummer_Loop5:
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nC4, $06, $06
	smpsLoop		$00, $1D, DoorIntoSummer_Loop5, Target
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $2A
	smpsAlterPitch	$0C
	smpsFMvoice		$03
	smpsPan		panRight
	dc.b	nRst, $3C, nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $5A
	smpsAlterVol		$F7
	dc.b	nRst, $3C, nD5, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nD5, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$ED
	dc.b	nRst, $36, nG4, $06, nA4, nE4, nD4, $0C
	dc.b	nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $36, nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $5A
	smpsAlterVol		$F7
	dc.b	nRst, $3C, nD5, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nD5, $0C
	smpsAlterVol		$F7
	smpsAlterVol		$02
	dc.b	nC4, $24
	smpsAlterVol		$FE
	dc.b	nD4
	smpsAlterVol		$FE
	dc.b	nE4, $18
	smpsAlterVol		$02

DoorIntoSummer_Loop6:
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nRst, $18, nG5
	smpsFMvoice		$03
	smpsPan		panRight
	dc.b	nRst, $06, nG3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nRst, $18, nG5
	smpsFMvoice		$03
	smpsPan		panRight
	dc.b	nRst, $06, nG3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nA4, $18, nB4, nC5, nD5, nG4, nG5, nF5
	dc.b	nE5
	smpsFMvoice		$03
	smpsPan		panRight
	dc.b	nE4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $12, nB3, nBb3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nAb3, $0C, nG3, nAb3, nA3, nBb3, nB3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $0C, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nG3, nA3, nC4, $06, nG4, $36
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nE4, $3C, nD4, $0C
	smpsLoop		$00, $02, DoorIntoSummer_Loop6, Target
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsCall		DoorIntoSummer_Call4, Target
	smpsJump		DoorIntoSummer_Jump1, Target

DoorIntoSummer_Call4:
	dc.b	nRst, $18, nG5, nRst, $30
	smpsLoop		$00, $03, DoorIntoSummer_Call4, Target
	dc.b	nRst, $18, nG5, nRst, nG5
	smpsReturn

DoorIntoSummer_FM3:
	smpsFMvoice		$02
	smpsCall		DoorIntoSummer_Call5, Target

DoorIntoSummer_Jump2:
	smpsFMvoice		$04
	smpsAlterPitch	$F4
	dc.b	nRst, $0C, nG3, $06, $06
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call6, Target

DoorIntoSummer_Loop7:
	smpsCall		DoorIntoSummer_Call6, Target
	smpsLoop		$00, $04, DoorIntoSummer_Loop7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call6, Target
	smpsLoop		$01, $02, DoorIntoSummer_Loop7, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsCall		DoorIntoSummer_Call6, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call6, Target
	smpsAlterPitch	$FE
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nA3, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $2A
	smpsAlterPitch	$0C
	smpsFMvoice		$03
	smpsPan		panLeft
	dc.b	nRst, $3C, nD4, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nD4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $5A
	smpsAlterVol		$F7
	dc.b	nRst, $3C, nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$ED
	dc.b	nRst, $36, nB3, $06, nC4, nC4, nA3, $0C
	dc.b	nA3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $36, nD4, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nD4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $5A
	smpsAlterVol		$F7
	dc.b	nRst, $3C, nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsAlterVol		$09
	dc.b	nG4, $0C
	smpsAlterVol		$F7
	smpsAlterVol		$02
	dc.b	nG3, $24
	smpsAlterVol		$FE
	dc.b	nA3
	smpsAlterVol		$FE
	dc.b	nBb3, $18
	smpsAlterVol		$02

DoorIntoSummer_Loo$8:
	smpsFMvoice		$02
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice		$03
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $06, nC3, nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, $0C, nC3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice		$03
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $06, nD3, nE3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3
	smpsFMvoice		$02
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $06, nA4, $18, nB4, nC5, nD5, nG4
	dc.b	nG5, nF5, nE5, $12
	smpsFMvoice		$03
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nA3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, $12, nE3, nEb3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, $0C, nC3, nD3, nEb3, nE3, nF3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $0C, nAb3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nC3, nD3, nG3, $06, nC4, $36
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nC4, $3C, $0C
	smpsLoop		$00, $02, DoorIntoSummer_Loo$8, Target
	smpsFMvoice		$02
	smpsCall		DoorIntoSummer_Call5, Target
	smpsJump		DoorIntoSummer_Jump2, Target

DoorIntoSummer_Call5:
	smpsPan		panLeft
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $06, nRst, $18, nG5, nRst, $30, nRst
	dc.b	$18, nG5, nRst, $30, nRst, $18, nG5, nRst
	dc.b	$30, nRst, $18, nG5, nRst, nG5, $12
	smpsPan		panCenter
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	smpsReturn
	dc.b	$F9	; Unused

DoorIntoSummer_Call6:
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nG3, $06, $06
	smpsReturn

DoorIntoSummer_FM4:
	smpsFMvoice		$01
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call8, Target
	smpsAlterPitch	$02

DoorIntoSummer_Loo$9:
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C, nRst, $0C, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nC3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsLoop		$00, $03, DoorIntoSummer_Loo$9, Target
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C, nRst, $0C, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsCall		DoorIntoSummer_Call9, Target
	dc.b	nE3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $18
	smpsCall		DoorIntoSummer_Call9, Target
	dc.b	nE3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C, $06
	smpsCall		DoorIntoSummer_Call9, Target
	dc.b	nE3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $18
	smpsCall		DoorIntoSummer_Call9, Target
	dc.b	nC3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1

DoorIntoSummer_Loop10:
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsCall		DoorIntoSummer_Call7, Target
	smpsLoop		$00, $02, DoorIntoSummer_Loop10, Target
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call8, Target
	smpsAlterPitch	$02
	smpsJump		DoorIntoSummer_Loo$9, Target

DoorIntoSummer_Call7:
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsReturn

DoorIntoSummer_Call8:
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nE3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_Call9:
	dc.b	nRst, $0C, nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C, nD3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_FM5:
	smpsFMvoice		$01
	smpsAlterPitch	$FC
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FF
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$01
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FF
	smpsCall		DoorIntoSummer_Call8, Target
	smpsAlterPitch	$05

DoorIntoSummer_Loop11:
	dc.b	nRst, $0C, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C, nRst, $0C, nA2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nA2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nA2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsLoop		$00, $03, DoorIntoSummer_Loop11, Target
	dc.b	nRst, $0C, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C, nRst, $0C, nA2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nA2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsCall		DoorIntoSummer_Call10, Target
	dc.b	nC3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nBb2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nBb2, $18
	smpsCall		DoorIntoSummer_Call10, Target
	dc.b	nC3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C, $06
	smpsCall		DoorIntoSummer_Call10, Target
	dc.b	nC3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nBb2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nBb2, $18
	smpsCall		DoorIntoSummer_Call10, Target
	dc.b	nA2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nBb2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1

DoorIntoSummer_Loop12:
	smpsAlterPitch	$FC
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FF
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$01
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FF
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$01
	smpsCall		DoorIntoSummer_Call7, Target
	smpsCall		DoorIntoSummer_Call7, Target
	smpsCall		DoorIntoSummer_Call7, Target
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$04
	smpsLoop		$00, $02, DoorIntoSummer_Loop12, Target
	smpsAlterPitch	$FC
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FF
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$01
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FF
	smpsCall		DoorIntoSummer_Call8, Target
	smpsAlterPitch	$05
	smpsJump		DoorIntoSummer_Loop11, Target

DoorIntoSummer_Call10:
	dc.b	nRst, $0C, nC3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $0C, nB2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_FM6:
	smpsFMvoice		$01
	smpsAlterPitch	$F9
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call8, Target
	smpsAlterPitch	$09

DoorIntoSummer_Loop13:
	dc.b	nRst, $0C, nG2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nG2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nG2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C, nRst, $0C, nF2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nF2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nF2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C
	smpsLoop		$00, $03, DoorIntoSummer_Loop13, Target
	dc.b	nRst, $0C, nG2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nG2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nG2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C, nRst, $0C, nF2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, nF2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsCall		DoorIntoSummer_Call11, Target
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $18
	smpsCall		DoorIntoSummer_Call11, Target
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C, $06
	smpsCall		DoorIntoSummer_Call11, Target
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $18
	smpsCall		DoorIntoSummer_Call11, Target
	dc.b	nF2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1

DoorIntoSummer_Loop14:
	smpsAlterPitch	$F9
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$07
	smpsLoop		$00, $02, DoorIntoSummer_Loop14, Target
	smpsAlterPitch	$F9
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$02
	smpsCall		DoorIntoSummer_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		DoorIntoSummer_Call8, Target
	smpsAlterPitch	$09
	smpsJump		DoorIntoSummer_Loop13, Target

DoorIntoSummer_Call11:
	dc.b	nRst, $0C, nA2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA2, $0C, nAb2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $2A
	smpsReturn

DoorIntoSummer_PSG1:
	smpsPSGvoice	$08

DoorIntoSummer_Jump4:
	dc.b	nRst, $60, nRst, nRst, nRst, $4E, nG3, $06
	dc.b	nA3, nB3

DoorIntoSummer_Jump3:
	smpsCall		DoorIntoSummer_Call12, Target
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, $0C
	dc.b	nRst, $06, nE4, $12, nRst, $06, nG3, $0C
	smpsCall		DoorIntoSummer_Call12, Target
	dc.b	nG4, $0C, nA4, nB4, nC5, $18, nE4, $06
	dc.b	nRst, nD4, nG3, nA3, nB3
	smpsCall		DoorIntoSummer_Call12, Target
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, $0C
	dc.b	nRst, $06, nE4, $12, nRst, $06, nG3, $0C
	smpsCall		DoorIntoSummer_Call12, Target
	dc.b	nF4, $0C, nE4, nD4, nC4, $06, nD4, nRst
	dc.b	$1E, nA3, $06, nC4, nD4, nEb4, $03, smpsNoAttack
	dc.b	nE4, $27, nG4, $1E, nF4, $0C, nE4, nD4
	dc.b	$12, nE4, nC4, $24, nRst, $06, nA3, nC4
	dc.b	nD4, nEb4, $03, smpsNoAttack, nE4, $27, nAb4, $12
	dc.b	nE4, $0C, nD4, nC4, nD4, $12, nC4, nG4
	dc.b	$24, nRst, $06, nA3, nC4, nD4, nEb4, $05
	dc.b	smpsNoAttack, nE4, $25, nG4, $1E, nF4, $0C, nE4
	dc.b	nD4, $12, nE4, nC4, $18, nA3, $0C, nB3
	dc.b	nC4, nD4, $12, nE4, $4E, nRst, $0C, nG3
	dc.b	nAb3, nA3, nC4, nA3, nG4, nF4
	smpsCall		DoorIntoSummer_Call13, Target
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4
	dc.b	nF4
	smpsCall		DoorIntoSummer_Call13, Target
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60
	dc.b	nRst, $60, nRst, nRst, $4E, nG3, $06, nA3
	dc.b	nB3
	smpsJump		DoorIntoSummer_Jump3, Target

DoorIntoSummer_Call12:
	dc.b	nC4, $0C, nG4, $06, nC4, nRst, nC4, nRst
	dc.b	nC4
	smpsLoop		$00, $02, DoorIntoSummer_Call12, Target
	smpsReturn

DoorIntoSummer_Call13:
	dc.b	nEb4, $05, smpsNoAttack, nE4, $1F, nD4, $18, nA3
	dc.b	$06, nRst, nG4, $0C, nF4, $06, nRst, nEb4
	dc.b	$02, smpsNoAttack, nE4, $22, nD4, $3C, nRst, $0C
	dc.b	nC4, $18, nG4, $06, nRst, nF4, $12, nE4
	dc.b	$06, nRst, $0C, nD4, smpsNoAttack, $06, nRst, nE4
	dc.b	nRst, nD4, nE4, nRst, nA3, $12, nG3, $0C
	dc.b	nRst, nG3, smpsNoAttack, $0C, nA3, $06, nRst, nA3
	dc.b	$24, nB3, $06, nRst, nRst, nC4, nRst, nD4
	dc.b	smpsNoAttack, $0C, nC4, nD4, nG4, $18, nC4, $06
	dc.b	nRst, nD4, $0C, nE4, smpsNoAttack, $60
	smpsReturn

DoorIntoSummer_PSG2:
	smpsPSGvoice	$08
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C
	smpsJump		DoorIntoSummer_Jump4, Target
	dc.b	$F6, $99, $89	; Unused

DoorIntoSummer_PSG3:
	smpsPSGform	$E7
	smpsCall		DoorIntoSummer_Call14, Target
	smpsCall		DoorIntoSummer_Call15, Target

DoorIntoSummer_Loop15:
	smpsCall		DoorIntoSummer_Call14, Target
	smpsLoop		$00, $03, DoorIntoSummer_Loop15, Target
	smpsCall		DoorIntoSummer_Call15, Target
	smpsPSGvoice	$02
	dc.b	nC4, $0C, nRst, nRst, $06
	smpsPSGvoice	$05
	dc.b	nC4, $0C, $06, smpsNoAttack, $06, nRst
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06, nRst, nC4, $06, $0C, nRst
	dc.b	$06, nC4, nC4, nRst, nRst, $0C, nC4, $06
	dc.b	$06, nRst
	smpsPSGvoice	$05
	dc.b	nC4, $06
	smpsPSGvoice	$02
	dc.b	$06, nRst, nC4, $0C, $06, $06, nRst, $0C
	smpsPSGvoice	$05
	dc.b	nC4, nRst, $06, nC4, $0C, $0C, nRst, $06
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06, nRst, nC4, nC4, $0C, nRst
	dc.b	$06, nC4, nC4, nRst, nRst, nC4, nC4
	smpsPSGvoice	$05
	dc.b	nC4
	smpsPSGvoice	$02
	dc.b	nC4, nC4, $0C, $06, nRst, $18, nRst, $0C
	smpsPSGvoice	$05
	dc.b	nC4, nRst, $06, nC4, $0C, $0C, nRst, $06
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06, nRst, nC4, nC4, nC4, nRst
	dc.b	nC4, nC4, nRst, nRst, nC4, nC4, nRst, nC4
	smpsPSGvoice	$05
	dc.b	nC4
	smpsPSGvoice	$02
	dc.b	nC4, nRst, nC4, $0C, $06, $06, nRst, $0C
	smpsPSGvoice	$05
	dc.b	nC4, $0C, nRst, $06, nC4, $0C, nC4, nRst
	dc.b	$2A, nRst, $60
	smpsSetVol	$01

DoorIntoSummer_Loop16:
	dc.b	nB3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C
	smpsLoop		$00, $10, DoorIntoSummer_Loop16, Target

DoorIntoSummer_Loop17:
	dc.b	nB3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C
	smpsLoop		$00, $03, DoorIntoSummer_Loop17, Target
	dc.b	nB3, $0C, $0C, $0C, $0C, nRst, $30
	smpsSetVol	$FF
	smpsJump		DoorIntoSummer_Loop15, Target

DoorIntoSummer_Call14:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsReturn

DoorIntoSummer_Call15:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06, nRst
	dc.b	$30
	smpsReturn

DoorIntoSummer_PWM1:
	smpsCall		DoorIntoSummer_Call16, Target
	dc.b	$81, $18, nRst, $06, $81, nRst, $81, nRst
	dc.b	$18, $81

DoorIntoSummer_Jump5:
	smpsCall		DoorIntoSummer_Call16, Target
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, nRst, nRst, $18
	smpsCall		DoorIntoSummer_Call16, Target
	dc.b	$81, $18, nRst, $06, $81, nRst, $81, nRst
	dc.b	$30

DoorIntoSummer_Loop18:
	dc.b	nRst, $0C, $81, nRst, $06, $81, nRst, $81
	dc.b	nRst, $30, $81, $18, nRst, $0C, $81, nRst
	dc.b	$81, nRst, $06, $81, nRst, $81
	smpsLoop		$00, $03, DoorIntoSummer_Loop18, Target
	dc.b	nRst, $0C, $81, nRst, $06, $81, nRst, $81
	dc.b	nRst, $18, $87, $0C, $87, $81, $18, nRst
	dc.b	$0C, $81, nRst, $81, $81, $18

DoorIntoSummer_Loop19:
	smpsCall		DoorIntoSummer_Call16, Target
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, nRst, nRst, $18
	smpsLoop		$00, $04, DoorIntoSummer_Loop19, Target
	smpsCall		DoorIntoSummer_Call16, Target
	dc.b	$81, $18, nRst, $06, $81, nRst, $81, nRst
	dc.b	$18, $81
	smpsJump		DoorIntoSummer_Jump5, Target

DoorIntoSummer_Call16:
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, nRst, nRst, $0C, $81, $81, $18, nRst
	dc.b	$12, $81, $06, nRst, $81, $81, nRst, nRst
	dc.b	$18, $81, $18, nRst, $12, $81, $06, nRst
	dc.b	$81, $81, nRst, nRst, $0C, $81
	smpsReturn

DoorIntoSummer_PWM2:
	dc.b	$96, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82

DoorIntoSummer_Jump6:
	smpsCall		DoorIntoSummer_Call17, Target
	smpsCall		DoorIntoSummer_Call17, Target
	dc.b	nRst, $48, $82, $18, nRst, $82, nRst, $82
	dc.b	nRst, $48, $82, $18, nRst, $82, nRst, $82
	dc.b	$06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	nRst, $48, $82, $18, nRst, $0C, $82, $82
	dc.b	$18, nRst, $82, nRst, $3C
	smpsAlterVol		$90
	dc.b	$87, $04, $87, $87
	smpsAlterVol		$70
	dc.b	$82, $0C, $82, nRst, $48, $82, $06, $82
	dc.b	$82, $82

DoorIntoSummer_Loop20:
	smpsCall		DoorIntoSummer_Call17, Target
	smpsLoop		$01, $04, DoorIntoSummer_Loop20, Target

DoorIntoSummer_Loop21:
	dc.b	nRst, $18, $82
	smpsLoop		$00, $08, DoorIntoSummer_Loop21, Target
	smpsJump		DoorIntoSummer_Jump6, Target

DoorIntoSummer_Call17:
	dc.b	nRst, $18, $82
	smpsLoop		$00, $07, DoorIntoSummer_Call17, Target
	dc.b	nRst, $0C, $82, $82, $06, $82, $86, $0C
	smpsReturn

DoorIntoSummer_PWM3:
	dc.b	$96, $60, nRst, nRst, nRst

DoorIntoSummer_Jump7:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	nRst, $0C, $89, $54
	smpsAlterVol		$40
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $12
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $06, nRst, $0C
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, nRst, $06
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $12, nRst, $18
	smpsAlterVol		$04

DoorIntoSummer_Loop22:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $03, DoorIntoSummer_Loop22, Target
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsJump		DoorIntoSummer_Jump7, Target

DoorIntoSummer_PWM4:
	smpsAlterVol		$F9

DoorIntoSummer_Loop23:
	dc.b	$96, $48, $8A, $18
	smpsLoop		$00, $04, DoorIntoSummer_Loop23, Target
	smpsAlterVol		$07
	smpsAlterVol		$BC

DoorIntoSummer_Loop24:
	smpsCall		DoorIntoSummer_Call18, Target
	smpsLoop		$01, $03, DoorIntoSummer_Loop24, Target

DoorIntoSummer_Loop25:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $05, DoorIntoSummer_Loop25, Target
	dc.b	nRst, $0C, $88, $06, $06, nRst, $30
	smpsAlterVol		$44

DoorIntoSummer_Loop26:
	dc.b	$96, $60
	smpsLoop		$00, $08, DoorIntoSummer_Loop26, Target
	smpsAlterVol		$D0

DoorIntoSummer_Loop27:
	dc.b	nRst, $06, $84, nRst, $84, nRst, $84, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	nRst, $84, nRst, $84, $84, nRst, $84, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, nRst
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, $84
	dc.b	$84
	smpsLoop		$00, $04, DoorIntoSummer_Loop27, Target
	dc.b	nRst, $06, $84, nRst, $84, nRst, $84, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	nRst, $84, nRst, $84, $84, nRst, $84, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, nRst
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $30
	smpsAlterVol		$30
	smpsAlterVol		$BC
	smpsJump		DoorIntoSummer_Loop24, Target

DoorIntoSummer_Call18:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $07, DoorIntoSummer_Call18, Target
	dc.b	smpsNoAttack, $0C, $88, $06, $06
	smpsReturn

DoorIntoSummer_Patches:

	
	dc.b	$3A
	dc.b	$01, $05, $32, $71,	$CF, $95, $1F, $1F
	dc.b	$0E, $0F, $05, $0C,	$17, $06, $06, $07
	dc.b	$8F, $4F, $4F, $4F,	$21, $13, $24, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1C
	dc.b	$32, $02, $04, $34,	$5F, $FF, $5F, $FF
	dc.b	$05, $05, $05, $07,	$15, $10, $21, $13
	dc.b	$9F, $3F, $5F, $AF,	$30, $80, $02, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$06, $05, $04, $10,	$1F, $5F, $5F, $5F
	dc.b	$05, $07, $0C, $0C,	$17, $17, $12, $18
	dc.b	$9F, $9C, $9C, $9C,	$2D, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $01, $01, $01,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$15, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$07, $01, $08, $04,	$5F, $9F, $9F, $5F
	dc.b	$16, $1F, $16, $1F,	$09, $0F, $16, $11
	dc.b	$6F, $0F, $AF, $0F,	$16, $80, $11, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
