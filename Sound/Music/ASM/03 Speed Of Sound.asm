
Target	EQU	$40D9F
	smpsHeaderVoice	SpeedOfSound_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $4C
	smpsHeaderFM	SpeedOfSound_FM1, Target, $00, $0B
	smpsHeaderFM	SpeedOfSound_FM2, Target, $00, $0D
	smpsHeaderFM	SpeedOfSound_FM3, Target, $0C, $18
	smpsHeaderFM	SpeedOfSound_FM4, Target, $00, $12
	smpsHeaderFM	SpeedOfSound_FM5, Target, $00, $12
	smpsHeaderFM	SpeedOfSound_FM6, Target, $00, $11
	smpsHeaderPSG	SpeedOfSound_PSG1, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	SpeedOfSound_PSG2, Target, $E8, $03, $00, $0C
	smpsHeaderPSG	SpeedOfSound_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	SpeedOfSound_PWM1, Target, $00, $99
	smpsHeaderPWM	SpeedOfSound_PWM2, Target, $00, $BB
	smpsHeaderPWM	SpeedOfSound_PWM3, Target, $00, $BB
	smpsHeaderPWM	SpeedOfSound_PWM4, Target, $00, $66

SpeedOfSound_FM1:
	smpsFMvoice		$01
	smpsPan		panLeft
	smpsAlterVol		$14
	smpsAlterPitch	$0C
	dc.b	nRst, $02
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2, $02
	smpsPan		panCenter
	smpsAlterVol		$EB
	smpsAlterPitch	$F4
	smpsFMvoice		$00

SpeedOfSound_Loop1:
	dc.b	nG1, $08, nG2, $04, nRst
	smpsLoop		$00, $03, SpeedOfSound_Loop1, Target
	dc.b	nFs1, $08, $04, nRst

SpeedOfSound_Loop2:
	smpsCall		SpeedOfSound_Call3, Target
	smpsLoop		$00, $04, SpeedOfSound_Loop2, Target
	smpsAlterPitch	$02

SpeedOfSound_Loop3:
	smpsCall		SpeedOfSound_Call3, Target
	smpsLoop		$00, $04, SpeedOfSound_Loop3, Target
	smpsAlterPitch	$FE

SpeedOfSound_Loop4:
	smpsCall		SpeedOfSound_Call3, Target
	smpsLoop		$00, $04, SpeedOfSound_Loop4, Target
	smpsAlterPitch	$02

SpeedOfSound_Loop5:
	smpsCall		SpeedOfSound_Call3, Target
	smpsLoop		$00, $03, SpeedOfSound_Loop5, Target
	smpsAlterPitch	$FE
	dc.b	nA1, $08, nA2, $04, nRst, nA1, nRst, nRst
	dc.b	nA1, nRst, nA1, nA1, $08, nA1, nBb2
	smpsCall		SpeedOfSound_Call4, Target
	dc.b	nRst, $28, nD2, $08, nD3, nA1
	smpsCall		SpeedOfSound_Call4, Target
	dc.b	nRst, $08, nC2, nC2, nC3, $04, nRst, nD2
	dc.b	$08, nD3, $04, nRst, nD2, $08, nD3, $04
	dc.b	nRst
	smpsCall		SpeedOfSound_Call4, Target
	dc.b	nRst, $28, nD2, $08, nD3, nA1, nB1, $08
	dc.b	nB2, $04, nRst, nB1, $08, nC2, nRst, $18
	dc.b	nC2, $08, nRst, nC2, nC2, nFs2, $04, nRst
	dc.b	nFs1, $08, nFs2, $04, nRst, nFs1, $08, $08
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$FB
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nG1, $08, nG2, $04, nRst, nA1
	dc.b	$08, nA2, $04, nRst
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$FB
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$02
	dc.b	nB1, $0C, nBb1, nA1, nAb1, nG1, $04, nRst
	dc.b	nG1, nRst
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$FB
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nG1, $08, nG2, $04, nRst, nA1
	dc.b	$08, nA2, $04, nRst
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$FB
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nRst, $08, nA2, $04, nRst
	smpsModSet	$01, $03, $F8, $00
	dc.b	nA1, $10
	smpsModSet	$00, $00, $00, $00
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$FB
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$02
	dc.b	nG1, $08, nG2, $04, nRst, nG1, $08, nG2
	dc.b	$04, nRst, nG1, $08, nG2, $04, nRst, nA1
	dc.b	$08, nA2, $04, nRst
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$FB
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call5, Target
	smpsAlterPitch	$02
	dc.b	nB1, $0C, nBb1, nA1, nAb1, nG1, $04, nRst
	dc.b	nG1, nRst, nG1, $0C, nFs1, nF1, nE2, nEb2
	dc.b	$04, nRst, nEb2, nRst
	smpsJump		SpeedOfSound_Loop2, Target

SpeedOfSound_Call3:
	dc.b	nG1, $08, nG2, $04, nRst, nG1, nRst, nRst
	dc.b	nG1, nRst, nG1, nG1, $08, nF1, nFs1
	smpsReturn

SpeedOfSound_Call4:
	dc.b	nB1, $08, nB2, $04, nRst, nB1, $08, nC2
	dc.b	nRst, $20
	smpsReturn

SpeedOfSound_Call5:
	dc.b	nD2, $08, nD3, $04, nRst
	smpsLoop		$00, $04, SpeedOfSound_Call5, Target
	smpsReturn

SpeedOfSound_FM2:
	smpsFMvoice		$02
	dc.b	nRst, $40, nRst, nRst, nF3, $10, nF3, nF3
	dc.b	nE3

SpeedOfSound_Jump1:
	smpsFMvoice		$04
	smpsAlterPitch	$0C
	smpsAlterVol		$FD
	smpsCall		SpeedOfSound_Call6, Target
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall		SpeedOfSound_Call6, Target
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4
	smpsAlterVol		$0A
	dc.b	$04, nRst, $04
	smpsAlterVol		$F6
	dc.b	nA4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4, $08, nB4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG4
	dc.b	$08, nE4, nA4, smpsNoAttack, $40
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $3C
	smpsCall		SpeedOfSound_Call6, Target
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall		SpeedOfSound_Call6, Target
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4
	smpsAlterVol		$0A
	dc.b	$04, nRst, $04
	smpsAlterVol		$F6
	dc.b	nA4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4, $08, nB4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG5
	dc.b	$08, nFs5, nA4, smpsNoAttack, $40
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsAlterPitch	$F4
	smpsFMvoice		$03
	smpsAlterVol		$03
	dc.b	nRst, $34, nG4, $08
	smpsCall		SpeedOfSound_Call7, Target
	dc.b	nFs5, $08, nE5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nD5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nC5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nD5, $08, smpsNoAttack, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nC5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nB4, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nG4, $08
	smpsCall		SpeedOfSound_Call7, Target
	dc.b	nFs5, $08, nG5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nD5, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE5, $08, smpsNoAttack, $18, nFs5, $04, nE5, nD5
	dc.b	$10
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nE4, $0C, nFs4, nD4, $28, nE4
	dc.b	$0C, nFs4, nA4, $10, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs4, nE4, $08, nD4, $04, smpsNoAttack, $08, nC4
	dc.b	nD4, $04, nC4, $08, nD4, $0C, nE4, $08
	dc.b	nFs4, nE4, nFs4, $10, nE4, nD4, nA3, $08
	dc.b	nA4, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs4, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE4, $04, smpsNoAttack, $40
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $3C, nE4, $0C, nFs4, nD4, $28, nE4
	dc.b	$0C, nFs4, nA4, $10, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs4, nE4, $08, nD4, $04, smpsNoAttack, $08, nC4
	dc.b	nD4, $04, nC4, $08, nD4, $0C, nE4, $08
	dc.b	nFs4, nE4, nFs4, $10, nE4, nD4, nA3, $08
	dc.b	nA4, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nC5, nB4
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4, $04, smpsNoAttack, $38, nG4, $08, nA4, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA4, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C, nE4, $0C, nFs4, nD4, $28, nE4
	dc.b	$0C, nFs4, nA4, $10, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs4, nE4, $08, nD4, $04, smpsNoAttack, $08, nC4
	dc.b	nD4, $04, nC4, $08, nD4, $0C, nE4, $08
	dc.b	nFs4, nE4, nFs4, $10, nE4, nD4, nA3, $08
	dc.b	nA4, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs4, nG4, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE4, $04, smpsNoAttack, $40
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $3C, nRst, $40
	smpsJump		SpeedOfSound_Jump1, Target

SpeedOfSound_Call6:
	dc.b	nRst, $08, nF4, $04
	smpsAlterVol		$0A
	dc.b	nF4
	smpsAlterVol		$F6
	dc.b	nF4
	smpsAlterVol		$0A
	dc.b	nF4
	smpsAlterVol		$F6
	dc.b	nF4
	smpsAlterVol		$0A
	dc.b	nF4
	smpsAlterVol		$F6
	dc.b	nF4, $08, nD4, $04
	smpsAlterVol		$0A
	dc.b	nD4
	smpsAlterVol		$F6
	dc.b	nF4
	smpsAlterVol		$0A
	dc.b	nF4
	smpsAlterVol		$F6
	dc.b	nG4, $08
	smpsReturn

SpeedOfSound_Call7:
	dc.b	nD5, $18, nG4, $1C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nG4, $08, nD5, $18, nG4, $10, nFs5, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs5
	smpsAlterVol		$0A
	dc.b	nFs5
	smpsAlterVol		$F6
	dc.b	nFs5
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsReturn

SpeedOfSound_FM3:
	smpsFMvoice		$01
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call1, Target

SpeedOfSound_Jump2:
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call1, Target
	smpsAlterPitch	$02
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch	$FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nRst, $14, nCs4, $04, nD4, nE4
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call1, Target
	smpsAlterPitch	$02
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch	$FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nD3, nE3, nF3, nG3, nAb3, nA3, nBb3
	dc.b	nB3
	smpsAlterVol		$FD
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nFs4, $08, smpsNoAttack, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $08
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nA4, $08, smpsNoAttack, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs4, $08, nE4, nD4, $20
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nFs4, $08, smpsNoAttack, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $08
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nA4, $08, smpsNoAttack, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panLeft
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nCs4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nCs4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs4, $08, nCs5
	smpsAlterVol		$03
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall		SpeedOfSound_Call9, Target
	smpsFMvoice		$02
	smpsAlterPitch	$F4
	smpsAlterPitch	$FC
	smpsAlterVol		$FA
	smpsCall		SpeedOfSound_Call10, Target
	smpsAlterPitch	$04
	smpsFMvoice		$01
	smpsAlterPitch	$0C
	smpsPan		panCenter
	smpsAlterVol		$06
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nRst, $14, nB4, $04, nC5, nD5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall		SpeedOfSound_Call9, Target
	smpsFMvoice		$02
	smpsAlterPitch	$F4
	smpsAlterPitch	$FC
	smpsAlterVol		$FA
	smpsCall		SpeedOfSound_Call10, Target
	smpsCall		SpeedOfSound_Call11, Target
	smpsAlterPitch	$04
	smpsFMvoice		$01
	smpsAlterPitch	$0C
	smpsPan		panCenter
	smpsAlterVol		$06
	smpsJump		SpeedOfSound_Jump2, Target

SpeedOfSound_Call1:
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nD3, $04, nE3, nF3, nG3, nA3, nB3, nC4
	dc.b	nD4
	smpsReturn

SpeedOfSound_Call2:
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3
	smpsReturn

SpeedOfSound_Call8:
	dc.b	nG3, $04, nA3, nB3, nC4, nD4, nRst, nE4
	dc.b	$0C, nRst, $04, nG4, $0C, nRst, $04
	smpsReturn

SpeedOfSound_Call9:
	dc.b	nA4, $04, nG4, nFs4, nE4, nFs4, nE4, nD4
	dc.b	nCs4, nD4, nCs4, nB3, nA3, nB3, nFs3, nG3
	dc.b	nA3, nE4, nD4, nCs4, nB3, nCs4, nB3, nA3
	dc.b	nAb3, nA3, nRst, $10, nAb3, $04, nA3, nB3
	dc.b	nC4, nB3, nC4, nD4, nE4, nD4, nE4, nA4
	dc.b	nG4, nFs4, nE4, nD4, nE4, nD4, nC4, nD4
	smpsReturn

SpeedOfSound_FM4:
	smpsFMvoice		$02
	dc.b	nRst, $40, nRst, nRst
	smpsPan		panLeft
	dc.b	nC4, $10, nC4, nC4, nG3

SpeedOfSound_Jump3:
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$01
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$01
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FE
	dc.b	nCs4, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$01
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$03
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$01
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FF
	smpsAlterVol		$FE
	smpsCall		SpeedOfSound_Call13, Target
	dc.b	smpsNoAttack, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nA3, $28
	smpsCall		SpeedOfSound_Call13, Target
	dc.b	smpsNoAttack, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsAlterVol		$02
	smpsCall		SpeedOfSound_Call14, Target
	dc.b	nB3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nB3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nCs4, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsCall		SpeedOfSound_Call14, Target
	smpsCall		SpeedOfSound_Call10, Target
	smpsPan		panLeft
	smpsCall		SpeedOfSound_Call14, Target
	dc.b	nB3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nB3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nCs4, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsCall		SpeedOfSound_Call14, Target
	dc.b	nB3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C
	smpsCall		SpeedOfSound_Call14, Target
	dc.b	nB3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nB3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nCs4, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsCall		SpeedOfSound_Call14, Target
	smpsCall		SpeedOfSound_Call10, Target
	smpsCall		SpeedOfSound_Call11, Target
	smpsPan		panLeft
	smpsJump		SpeedOfSound_Jump3, Target

SpeedOfSound_Call12:
	dc.b	nC4, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsReturn

SpeedOfSound_Call13:
	dc.b	nG3, $14
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nG3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C, nRst, $38, nG3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nG3, $14
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nG3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nRst, $08, nG3
	smpsReturn

SpeedOfSound_Call14:
	smpsAlterPitch	$FD
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$04
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FA
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$05
	smpsReturn

SpeedOfSound_Call10:
	smpsAlterVol		$FD
	smpsPan		panLeft
	dc.b	nEb4, $0C
	smpsPan		panRight
	dc.b	nD4, $0C
	smpsPan		panLeft
	dc.b	nCs4, $0C
	smpsPan		panRight
	dc.b	nC4, $0C
	smpsPan		panLeft
	dc.b	nB3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsAlterVol		$03
	smpsReturn

SpeedOfSound_Call11:
	smpsAlterVol		$FD
	smpsPan		panRight
	dc.b	nB3, $0C
	smpsPan		panLeft
	dc.b	nBb3, $0C
	smpsPan		panRight
	dc.b	nA3, $0C
	smpsPan		panLeft
	dc.b	nAb3, $0C
	smpsPan		panRight
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsAlterVol		$03
	smpsReturn

SpeedOfSound_FM5:
	smpsFMvoice		$02
	dc.b	nRst, $40, nRst, nRst
	smpsPan		panRight
	dc.b	nD3, $10, nD3, nD3, nCs3
	smpsAlterPitch	$F9

SpeedOfSound_Loop6:
	smpsCall		SpeedOfSound_Call12, Target
	smpsLoop		$00, $04, SpeedOfSound_Loop6, Target
	smpsAlterPitch	$02
	smpsCall		SpeedOfSound_Call12, Target
	smpsCall		SpeedOfSound_Call12, Target
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$05
	dc.b	nG3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C
	smpsAlterPitch	$F9

SpeedOfSound_Loop7:
	smpsCall		SpeedOfSound_Call12, Target
	smpsLoop		$00, $04, SpeedOfSound_Loop7, Target
	smpsAlterPitch	$02

SpeedOfSound_Loo$8:
	smpsCall		SpeedOfSound_Call12, Target
	smpsLoop		$00, $04, SpeedOfSound_Loo$8, Target
	smpsAlterPitch	$05
	smpsAlterVol		$FE
	smpsCall		SpeedOfSound_Call15, Target
	dc.b	smpsNoAttack, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nFs3, $28
	smpsCall		SpeedOfSound_Call15, Target
	dc.b	smpsNoAttack, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsAlterVol		$02
	smpsCall		SpeedOfSound_Call16, Target
	dc.b	nD3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nD3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsCall		SpeedOfSound_Call16, Target
	smpsAlterPitch	$F7
	smpsCall		SpeedOfSound_Call10, Target
	smpsAlterPitch	$09
	smpsCall		SpeedOfSound_Call16, Target
	dc.b	nD3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nD3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsCall		SpeedOfSound_Call16, Target
	dc.b	nD3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C
	smpsCall		SpeedOfSound_Call16, Target
	dc.b	nD3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	$08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $04, nD3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	smpsCall		SpeedOfSound_Call16, Target
	smpsAlterPitch	$F7
	smpsCall		SpeedOfSound_Call10, Target
	smpsCall		SpeedOfSound_Call11, Target
	smpsAlterPitch	$09
	smpsAlterPitch	$F9
	smpsJump		SpeedOfSound_Loop6, Target

SpeedOfSound_Call15:
	dc.b	nD3, $14
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $1C, nRst, $38, nD3, $04
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nD3, $14
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nE3, $08
	smpsAlterVol		$0A
	dc.b	$04
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nRst, $08, nE3
	smpsReturn

SpeedOfSound_Call16:
	smpsAlterPitch	$FA
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$FE
	smpsCall		SpeedOfSound_Call12, Target
	smpsCall		SpeedOfSound_Call12, Target
	smpsAlterPitch	$08
	smpsReturn

SpeedOfSound_FM6:
	smpsFMvoice		$01
	smpsPan		panRight
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $04, nRst, $40, nRst, nRst, nRst
	smpsJump		SpeedOfSound_Jump1, Target
	dc.b	$F6, $BD, $A2	; Unused

SpeedOfSound_PSG1:
	smpsPSGvoice	$04
	dc.b	nRst, $01
	smpsModSet	$01, $01, $02, $03
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call1, Target

SpeedOfSound_Jump4:
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call1, Target
	smpsAlterPitch	$02
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch	$FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nRst, $14, nCs4, $04, nD4, nE4
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call1, Target
	smpsAlterPitch	$02
	smpsCall		SpeedOfSound_Call1, Target
	smpsCall		SpeedOfSound_Call2, Target
	dc.b	nF4, $04, nE4, nC4, nG3, nF3, nE3, nC3
	dc.b	nG2
	smpsAlterPitch	$FE
	dc.b	nE3, $04, nFs3, nG3, nA3, nB3, nCs4, nD4
	dc.b	nE4, nD3, nE3, nF3, nG3, nAb3, nA3, nBb3
	dc.b	nB3
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nFs4, $08, smpsNoAttack, $04, nRst, $04, nE4, $0C
	dc.b	nRst, $04, nD4, $0C, nRst, $04, nB3, $0C
	dc.b	nRst, $04, nC4, $08
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nA4, $08, smpsNoAttack, $04, nRst, $04, nFs4, $08
	dc.b	nE4, nD4, $20, nRst, $08
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nFs4, $08, smpsNoAttack, $04, nRst, $04, nE4, $0C
	dc.b	nRst, $04, nD4, $0C, nRst, $04, nB3, $0C
	dc.b	nRst, $04, nC4, $08
	smpsCall		SpeedOfSound_Call8, Target
	dc.b	nA4, $08, smpsNoAttack, $04, nRst, $04, nE4, $08
	dc.b	nRst, nCs4, $0C, nRst, $04, nCs4, nRst, nFs4
	dc.b	$08, nCs5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nRst, $40
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nRst, $14, nB4, $04, nC5, nD5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nG3, $04, nA3, nB3, nC4, nB3, nC4, nD4
	dc.b	nE4, nD4, nE4, nFs4, nG4, nA4, nB4, nC5
	dc.b	nD5
	smpsCall		SpeedOfSound_Call9, Target
	dc.b	nRst, $40, nRst, $40
	smpsJump		SpeedOfSound_Jump4, Target

SpeedOfSound_PSG2:
	smpsPSGvoice	$08
	smpsModSet	$01, $01, $01, $02
	dc.b	nRst, $40, nRst, nRst, nRst

SpeedOfSound_Jump5:
	smpsCall		SpeedOfSound_Call17, Target
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall		SpeedOfSound_Call17, Target
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4, nRst, nA4, $04, nRst, nA4, nRst, nA4
	dc.b	nRst, nA4, $08, nB4, $04, nRst, nA4, nRst
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG4
	dc.b	$08, nE4, nA4, smpsNoAttack, $40, nRst, $40
	smpsCall		SpeedOfSound_Call17, Target
	dc.b	smpsNoAttack, $08, nD4, $10, nC4, nD4, $18
	smpsCall		SpeedOfSound_Call17, Target
	dc.b	smpsNoAttack, $08, nB4, $10, nC5, nD5, $08, nC5
	dc.b	nB4, nRst, nA4, $04, nRst, nA4, nRst, nA4
	dc.b	nRst, nA4, $08, nB4, $04, nRst, nA4, nRst
	dc.b	nD5, $08, smpsNoAttack, $08, nE5, nA4, $18, nG5
	dc.b	$08, nFs5, nA4, smpsNoAttack, $40, nRst, $38, nG4
	dc.b	$08
	smpsCall		SpeedOfSound_Call18, Target
	dc.b	nFs5, $08, nE5, $0C, nRst, $04, nD5, $0C
	dc.b	nRst, $04, nC5, $0C, nRst, $04, nD5, $08
	dc.b	smpsNoAttack, $04, nRst, nC5, $0C, nRst, $04, nB4
	dc.b	$0C, nRst, $04, nA4, $0C, nRst, $04, nG4
	dc.b	$08
	smpsCall		SpeedOfSound_Call18, Target
	dc.b	nFs5, $04, nRst, nG5, $0C, nRst, $04, nA5
	dc.b	$0C, nRst, $04, nD5, $0C, nRst, $04, nE5
	dc.b	$08, smpsNoAttack, $18, nFs5, $04, nE5, nD5, $10
	dc.b	nRst, nE4, $0C, nFs4, nD4, $28, nE4, $0C
	dc.b	nFs4, nA4, $10, nG4, $04, nRst, nFs4, nE4
	dc.b	$08, nD4, $04, smpsNoAttack, $08, nC4, nD4, $04
	dc.b	nC4, $08, nD4, $0C, nE4, $08, nFs4, nE4
	dc.b	nFs4, $10, nE4, nD4, nA3, $08, nA4, nE4
	dc.b	$0C, nFs4, nD4, $28, nE4, $0C, nFs4, nA4
	dc.b	$10, nG4, $04, nRst, nFs4, nG4, $04, nRst
	dc.b	nE4, $04, smpsNoAttack, $40, nRst, $40, nE4, $0C
	dc.b	nFs4, nD4, $28, nE4, $0C, nFs4, nA4, $10
	dc.b	nG4, $04, nRst, nFs4, nE4, $08, nD4, $04
	dc.b	smpsNoAttack, $08, nC4, nD4, $04, nC4, $08, nD4
	dc.b	$0C, nE4, $08, nFs4, nE4, nFs4, $10, nE4
	dc.b	nD4, nA3, $08, nA4, nE4, $0C, nFs4, nD4
	dc.b	$28, nE4, $0C, nFs4, nA4, $10, nG4, $04
	dc.b	nRst, nC5, nB4, nRst, nA4, $04, smpsNoAttack, $38
	dc.b	nG4, $08, nA4, $04, nRst, $08, nA4, $04
	dc.b	nRst, $08, nA4, $04, nRst, $24, nE4, $0C
	dc.b	nFs4, nD4, $28, nE4, $0C, nFs4, nA4, $10
	dc.b	nG4, $04, nRst, nFs4, nE4, $08, nD4, $04
	dc.b	smpsNoAttack, $08, nC4, nD4, $04, nC4, $08, nD4
	dc.b	$0C, nE4, $08, nFs4, nE4, nFs4, $10, nE4
	dc.b	nD4, nA3, $08, nA4, nE4, $0C, nFs4, nD4
	dc.b	$28, nE4, $0C, nFs4, nA4, $10, nG4, $04
	dc.b	nRst, nFs4, nG4, $04, nRst, nE4, $04, smpsNoAttack
	dc.b	$40, nRst, $40, nRst, $40
	smpsJump		SpeedOfSound_Jump5, Target

SpeedOfSound_Call17:
	dc.b	nRst, $08, nF4, $04, nRst, nF4, nRst, nF4
	dc.b	nRst, nF4, $08, nD4, $04, nRst, nF4, nRst
	dc.b	nG4, $08
	smpsReturn

SpeedOfSound_Call18:
	dc.b	nD5, $18, nG4, $1C, nRst, $04, nG4, $08
	dc.b	nD5, $18, nG4, $10, nFs5, $04, nRst, nFs5
	dc.b	nRst, nFs5, nRst
	smpsReturn

SpeedOfSound_PSG3:
	smpsPSGform	$E7

SpeedOfSound_Loo$9:
	smpsCall		SpeedOfSound_Call19, Target
	smpsLoop		$01, $04, SpeedOfSound_Loo$9, Target

SpeedOfSound_Loop10:
	smpsCall		SpeedOfSound_Call19, Target
	smpsLoop		$01, $07, SpeedOfSound_Loop10, Target
	smpsPSGvoice	$02
	dc.b	nC4, $04, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	nC4, $04, $04
	smpsPSGvoice	$05
	dc.b	$08, nRst, $20

SpeedOfSound_Loop11:
	smpsCall		SpeedOfSound_Call19, Target
	smpsLoop		$01, $10, SpeedOfSound_Loop11, Target

SpeedOfSound_Loop12:
	smpsCall		SpeedOfSound_Call19, Target
	smpsLoop		$01, $0F, SpeedOfSound_Loop12, Target

SpeedOfSound_Loop13:
	smpsPSGvoice	$02
	dc.b	$04, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsLoop		$00, $02, SpeedOfSound_Loop13, Target
	dc.b	nRst, $20

SpeedOfSound_Loop14:
	smpsCall		SpeedOfSound_Call19, Target
	smpsLoop		$01, $09, SpeedOfSound_Loop14, Target
	smpsJump		SpeedOfSound_Loop10, Target

SpeedOfSound_Call19:
	smpsPSGvoice	$02
	dc.b	nC4, $04, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsLoop		$00, $04, SpeedOfSound_Call19, Target
	smpsReturn

SpeedOfSound_PWM1:
	dc.b	$8B, $10
	smpsLoop		$00, $0B, SpeedOfSound_PWM1, Target
	dc.b	$8B, $08, $8B, $8B, $10, $10, $10, $10

SpeedOfSound_Loop15:
	smpsCall		SpeedOfSound_Call20, Target
	smpsLoop		$01, $0C, SpeedOfSound_Loop15, Target
	dc.b	$8B, $10, $8B, $8B, $8B
	smpsJump		SpeedOfSound_Loop15, Target

SpeedOfSound_Call20:
	dc.b	$8B, $10, $10, $08, $08, nRst, $8B
	smpsLoop		$00, $03, SpeedOfSound_Call20, Target
	dc.b	$8B, $10, $10, $10, $10
	smpsReturn

SpeedOfSound_PWM2:
	dc.b	$96, $40, nRst, nRst, $30
	smpsAlterVol		$F9
	dc.b	$85, $04
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87, $08
	smpsAlterVol		$70
	dc.b	$8C, $04, $8C, $8C, nRst, $8C, nRst, nRst
	dc.b	$8C, $8C, $8C, $8C, nRst, $8C, $8C, $8C
	dc.b	$8C

SpeedOfSound_Jump6:
	smpsCall		SpeedOfSound_Call21, Target
	smpsCall		SpeedOfSound_Call22, Target
	smpsCall		SpeedOfSound_Call21, Target
	smpsCall		SpeedOfSound_Call21, Target
	smpsCall		SpeedOfSound_Call21, Target
	smpsCall		SpeedOfSound_Call21, Target
	smpsCall		SpeedOfSound_Call21, Target
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, nRst, $10
	dc.b	$8C, $04, nRst, nRst, $8C, nRst, $10, $8C
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, nRst, $30
	dc.b	$8C, $08, $04, $04
	smpsCall		SpeedOfSound_Call21, Target
	smpsCall		SpeedOfSound_Call22, Target
	smpsCall		SpeedOfSound_Call21, Target
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, nRst, $10
	dc.b	$8C, $04, nRst, nRst, $8C, nRst, $10, $8C
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, nRst, $30
	dc.b	$8C, $08, $04, $04, nRst, $30, $8C, $08
	dc.b	$04, $04
	smpsJump		SpeedOfSound_Jump6, Target

SpeedOfSound_Call21:
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, nRst, $10
	dc.b	$8C, $04, nRst, nRst, $8C, nRst, $10, $8C
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, $8C, $04
	dc.b	$8C, $8C, nRst, $8C, nRst, nRst, $8C, $8C
	dc.b	$8C, $8C, nRst, $8C, nRst, nRst, $8C
	smpsReturn

SpeedOfSound_Call22:
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, nRst, $10
	dc.b	$8C, $04, nRst, nRst, $8C, nRst, $10, $8C
	dc.b	nRst, $10, $8C, $04, nRst, nRst, $8C, nRst
	dc.b	$10, $8C, $04, nRst, nRst, $8C, $8C, $04
	dc.b	$8C, $8C, nRst, $8C, nRst, nRst, $8C, nRst
	dc.b	$20
	smpsReturn

SpeedOfSound_PWM3:
	smpsAlterVol		$C0
	dc.b	$89, $40, nRst, $89, $40
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $40
	smpsAlterVol		$04

SpeedOfSound_Loop16:
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $40
	smpsAlterVol		$04
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $02, SpeedOfSound_Loop16, Target

SpeedOfSound_Loop17:
	smpsAlterVol		$C0
	dc.b	$89, $40, nRst, $89, $38
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $08, nRst, $40
	smpsAlterVol		$04
	smpsLoop		$00, $02, SpeedOfSound_Loop17, Target
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	smpsCall		SpeedOfSound_Call23, Target
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $40
	smpsAlterVol		$40
	smpsCall		SpeedOfSound_Call23, Target
	smpsCall		SpeedOfSound_Call23, Target
	smpsJump		SpeedOfSound_Loop16, Target

SpeedOfSound_Call23:
	smpsAlterVol		$FC
	dc.b	$83, $0C
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $10
	smpsAlterVol		$04
	smpsReturn

SpeedOfSound_PWM4:
	smpsAlterVol		$FD
	dc.b	$96, $08, $88, $04, $04
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$30
	smpsLoop		$01, $08, SpeedOfSound_PWM4, Target

SpeedOfSound_Loop18:
	smpsCall		SpeedOfSound_Call24, Target
	smpsLoop		$01, $07, SpeedOfSound_Loop18, Target
	smpsAlterVol		$FD
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$30
	dc.b	$96, $20

SpeedOfSound_Loop19:
	smpsCall		SpeedOfSound_Call24, Target
	smpsLoop		$01, $1F, SpeedOfSound_Loop19, Target
	smpsAlterVol		$FD
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$30
	dc.b	$96, $20

SpeedOfSound_Loop20:
	smpsCall		SpeedOfSound_Call24, Target
	smpsLoop		$01, $09, SpeedOfSound_Loop20, Target
	smpsJump		SpeedOfSound_Loop18, Target

SpeedOfSound_Call24:
	smpsAlterVol		$FD
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $08, $88, $04, $04
	smpsAlterVol		$30
	smpsLoop		$00, $02, SpeedOfSound_Call24, Target
	smpsReturn

SpeedOfSound_Patches:

	
	dc.b	$3A
	dc.b	$73, $77, $31, $72,	$1F, $95, $1F, $1F
	dc.b	$0E, $0F, $05, $0C,	$07, $06, $06, $07
	dc.b	$2F, $4F, $1F, $4F,	$22, $11, $27, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$07
	dc.b	$38, $02, $01, $08,	$FF, $CF, $FF, $BF
	dc.b	$07, $0B, $0B, $00,	$05, $00, $00, $00
	dc.b	$6F, $1F, $2F, $0F,	$80, $80, $80, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$30
	dc.b	$77, $77, $72, $32,	$D8, $58, $96, $94
	dc.b	$01, $1B, $03, $08,	$01, $04, $01, $04
	dc.b	$FF, $2F, $5F, $9F,	$26, $2B, $10, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$32, $25, $73, $41,	$5F, $1F, $1F, $9F
	dc.b	$08, $05, $04, $07,	$03, $04, $02, $03
	dc.b	$2F, $2F, $1F, $0F,	$20, $27, $1F, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $03, $03, $05,	$00, $01, $02, $01
	dc.b	$0F, $6C, $6C, $1C,	$22, $8C, $8C, $8C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
