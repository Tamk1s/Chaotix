Target	EQU	$40000
	smpsHeaderVoice	SCra_Electoria_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $19
	sHeaderDAC	SCra_Electoria_DAC
	smpsHeaderFM	SCra_Electoria_FM1, Target, $00, $0E
	smpsHeaderFM	SCra_Electoria_FM2, Target, $00, $18
	smpsHeaderFM	SCra_Electoria_FM3, Target, $00, $18
	smpsHeaderFM	SCra_Electoria_FM4, Target, $00, $18
	smpsHeaderFM	SCra_Electoria_FM5, Target, $00, $18
	smpsHeaderPSG	SCra_Electoria_PSG1, Target, $00, $04, $00, $0C
	smpsHeaderPSG	SCra_Electoria_PSG2, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	SCra_Electoria_PSG3, Target, $23, $01, $00, $02

SCra_Electoria_FM1:
	smpsFMvoice		$00
	dc.b	nD1, $06, nD2, nD2, nE1, nE2, nE2, nE1
	dc.b	nE2, nE2, nG1, nG2, nG2, nA1, nA2, nD1
	dc.b	$0C

SCra_Electoria_Loop1:
	smpsCall		SCra_Electoria_Call1, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop1, Target

SCra_Electoria_Loop2:
	smpsCall		SCra_Electoria_Call1, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop2, Target
	smpsAlterPitch	$FC

SCra_Electoria_Loop3:
	smpsCall		SCra_Electoria_Call1, Target
	smpsLoop		$00, $07, SCra_Electoria_Loop3, Target
	smpsAlterPitch	$04
	dc.b	nEb1, $0C, nEb2, $06, nRst, nEb1, nRst, nEb2
	dc.b	nEb1, nRst, nRst, nEb2, nRst
	smpsModSet	$01, $08, $EC, $00
	dc.b	nEb1, $18
	smpsModSet	$00, $00, $00, $00

SCra_Electoria_Loop4:
	smpsCall		SCra_Electoria_Call1, Target
	smpsLoop		$00, $07, SCra_Electoria_Loop4, Target
	dc.b	nD1, $0C, nD2, nE1, nE2, nF1, $06, nF2
	dc.b	nF1, nRst, nD1, nD2, nD1, nRst

SCra_Electoria_Loop5:
	smpsCall		SCra_Electoria_Call1, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop5, Target

SCra_Electoria_Loop6:
	smpsCall		SCra_Electoria_Call1, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop6, Target
	smpsJump		SCra_Electoria_Loop2, Target

SCra_Electoria_Call1:
	dc.b	nG1, $0C, nG2, $06, nRst, nG1, $0C, nRst
	dc.b	$06, nG1, nRst, nG1, nG1, $0C, nF1, nFs1
	smpsReturn

SCra_Electoria_FM2:
	smpsFMvoice		$03
	dc.b	nRst, $60

SCra_Electoria_Loop7:
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $04, SCra_Electoria_Loop7, Target
	smpsAlterVol		$FA

SCra_Electoria_Jump1:
	smpsFMvoice		$01
	smpsAlterPitch	$0C
	smpsAlterVol		$FB
	dc.b	nBb3, $12, nG3, $06, nRst, $3C, nF3, $06
	dc.b	nG3, nC4, nRst, nC4, nRst, nC4, $0C, nD4
	dc.b	$06, nG3, smpsNoAttack, $0C, nF3, nG3, $06, nRst
	dc.b	nG3, $0C, nRst, $60
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsFMvoice		$02
	smpsAlterVol		$0A
	smpsCall		SCra_Electoria_Call3, Target
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsAlterPitch	$0C
	smpsAlterVol		$F6
	dc.b	nBb3, $0C, smpsNoAttack, $0C, nG3, $06, nRst, nRst
	dc.b	$3C, nF4, $0C, smpsNoAttack, $06, nRst, nE4, nRst
	dc.b	nD4, nE4, nRst, nD4, smpsNoAttack, nD4, nRst, nC4
	dc.b	nRst, nBb3, nC4, nRst, nB3, smpsNoAttack, $60
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsFMvoice		$02
	smpsAlterVol		$0A
	smpsCall		SCra_Electoria_Call4, Target
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsAlterVol		$F6
	smpsCall		SCra_Electoria_Call5, Target
	dc.b	nRst, $30
	smpsFMvoice		$02
	smpsAlterVol		$0B
	smpsCall		SCra_Electoria_Call6, Target
	dc.b	nB3, $12, nD4, $4E, nRst, $60
	smpsCall		SCra_Electoria_Call8, Target
	dc.b	nD4, $12, nG4, $4E, nC5, $18, nB4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nB4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA4, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4, $0C, smpsNoAttack, $60
	smpsFMvoice		$03
	dc.b	nG2, $60, $60, $30, nRst

SCra_Electoria_Loo$8:
	dc.b	nG2, $60
	smpsLoop		$00, $04, SCra_Electoria_Loo$8, Target
	smpsFMvoice		$01
	smpsAlterVol		$FA
	smpsJump		SCra_Electoria_Jump1, Target

SCra_Electoria_Call2:
	dc.b	nRst, $0C, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsReturn

SCra_Electoria_Call3:
	dc.b	nC5, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB4, $12, nC5, $06, nA4, nG4
	smpsAlterVol		$0A
	dc.b	nG4
	smpsAlterVol		$F6
	dc.b	nG4, $12
	smpsReturn

SCra_Electoria_Call4:
	dc.b	nD4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nCs4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	nBb3
	smpsAlterVol		$F6
	dc.b	nA3
	smpsAlterVol		$0A
	dc.b	nA3
	smpsAlterVol		$F6
	dc.b	nG3, $0C
	smpsReturn

SCra_Electoria_Call5:
	smpsAlterPitch	$0C
	dc.b	nBb3, $06, nRst, nBb3, nRst, nBb3, nRst, nBb3
	dc.b	$0C, nG3, $06, nBb3, nRst, nC4, nRst, nD4
	dc.b	smpsNoAttack, $0C, nC4, $06, nRst, nBb3, nRst, nC4
	dc.b	nRst, nD4, $0C, nRst, $06, nF4, $12, nD4
	dc.b	$06, nRst, nC4, $0C, nRst, $06, nD4, nRst
	dc.b	$48, nRst, $0C, nF3, $06, nRst, nG3, nRst
	dc.b	nBb3, nRst, nC4, nRst, nD4, nRst, nF4, $0C
	dc.b	nD4, $06, nRst, nRst, $0C, nD4, $06, nRst
	dc.b	nF4, nRst, nD4, nRst, nF4, $0C, nG4, $06
	dc.b	nBb3, nRst, nC4, nRst, nD4, smpsNoAttack, $0C, nC4
	dc.b	$06, nRst, nBb3, nRst, nC4, nRst, nD4, $0C
	dc.b	nRst, $06, nC4, $12, nF4, $06, nRst, nF3
	dc.b	$60, nRst, $0C, nBb3, $12, nC4, $0C, nF4
	dc.b	$06
	smpsAlterPitch	$F4
	smpsReturn

SCra_Electoria_Call6:
	smpsCall		SCra_Electoria_Call7, Target
	dc.b	nD4, $0C, smpsNoAttack, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $18, nB3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nB3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $12, nE4, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, smpsNoAttack, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nE4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, nE4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nE4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nC4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $0C, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsReturn

SCra_Electoria_Call8:
	smpsCall		SCra_Electoria_Call7, Target
	dc.b	nF4, $0C, smpsNoAttack, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $18, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $12, nG4, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, $0C, smpsNoAttack, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nB4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC5
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nC5
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, nA4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD5, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG4
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsReturn

SCra_Electoria_Call7:
	dc.b	nRst, $0C, nF4, nG4, $06, nRst, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG4, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, $12, nG4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC5, $0C, smpsNoAttack, $0C, nB4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nB4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC5, nD5
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD5
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC5, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA4, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, nG4, $06, nRst, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG4, nRst
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB4, $12, nG4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, smpsNoAttack, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, nE4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nE4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $1E
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsReturn

SCra_Electoria_FM3:
	smpsFMvoice		$03
	dc.b	nRst, $60
	smpsAlterPitch	$FA

SCra_Electoria_Loo$9:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $08, SCra_Electoria_Loo$9, Target
	smpsAlterPitch	$06
	smpsAlterVol		$FC

SCra_Electoria_Jump2:
	smpsFMvoice		$01
	smpsPan		panLeft
	smpsModSet	$01, $01, $02, $03
	smpsAlterPitch	$0C
	dc.b	nRst, $06, nBb3, $12, nG3, $06, nRst, $3C
	dc.b	nF3, $06, nG3, nC4, nRst, nC4, nRst, nC4
	dc.b	$0C, nD4, $06, nG3, smpsNoAttack, $0C, nF3, nG3
	dc.b	$06, nRst, nG3, $0C, nRst, $5A
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsModSet	$00, $00, $00, $00
	smpsPan		panRight
	smpsAlterPitch	$E8
	smpsCall		SCra_Electoria_Call3, Target
	smpsModSet	$01, $01, $01, $05
	smpsPan		panLeft
	smpsAlterPitch	$18
	smpsFMvoice		$01
	smpsAlterVol		$FD
	dc.b	nRst, $06, nBb3, $0C, smpsNoAttack, $0C, nG3, $06
	dc.b	nRst, nRst, $3C, nF4, $0C, smpsNoAttack, $06, nRst
	dc.b	nE4, nRst, nD4, nE4, nRst, nD4, smpsNoAttack, nD4
	dc.b	nRst, nC4, nRst, nBb3, nC4, nRst, nB3, smpsNoAttack
	dc.b	$5A
	smpsModSet	$00, $00, $00, $00
	smpsPan		panRight
	smpsAlterPitch	$E8
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsCall		SCra_Electoria_Call4, Target
	smpsPan		panLeft
	smpsFMvoice		$01
	smpsAlterVol		$FD
	smpsAlterPitch	$0C
	smpsModSet	$01, $01, $02, $03
	dc.b	nRst, $06
	smpsCall		SCra_Electoria_Call5, Target
	dc.b	nRst, $2A
	smpsModSet	$00, $00, $00, $00
	smpsAlterPitch	$F4
	smpsFMvoice		$02
	smpsAlterVol		$04
	smpsPan		panCenter
	smpsAlterPitch	$F4
	smpsCall		SCra_Electoria_Call6, Target
	smpsAlterPitch	$0C
	dc.b	nB2, $12, nG3, $4E, nRst, $60
	smpsAlterPitch	$F4
	smpsCall		SCra_Electoria_Call8, Target
	smpsAlterPitch	$0C
	dc.b	nB3, $12, nD4, $4E, nC4, $18, nB3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nB3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $0C, smpsNoAttack, $60
	smpsFMvoice		$03
	smpsAlterPitch	$03

SCra_Electoria_Loop10:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $02, SCra_Electoria_Loop10, Target
	smpsAlterPitch	$FF
	smpsCall		SCra_Electoria_Call9, Target
	smpsAlterPitch	$01

SCra_Electoria_Loop11:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $04, SCra_Electoria_Loop11, Target
	smpsAlterPitch	$09
	smpsAlterVol		$FF
	smpsJump		SCra_Electoria_Jump2, Target

SCra_Electoria_FM4:
	smpsFMvoice		$03
	dc.b	nRst, $60
	smpsAlterPitch	$F7

SCra_Electoria_Loop12:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop12, Target
	smpsAlterPitch	$09

SCra_Electoria_Loop13:
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $04, SCra_Electoria_Loop13, Target

SCra_Electoria_Loop14:
	smpsAlterPitch	$FF
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$02
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $03, SCra_Electoria_Loop14, Target
	smpsAlterPitch	$FF
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call9, Target

SCra_Electoria_Loop15:
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $03, SCra_Electoria_Loop15, Target
	smpsCall		SCra_Electoria_Call2, Target
	dc.b	nRst, $60

SCra_Electoria_Loop16:
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $05, SCra_Electoria_Loop16, Target
	smpsCall		SCra_Electoria_Call2, Target
	smpsCall		SCra_Electoria_Call9, Target

SCra_Electoria_Loop17:
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $02, SCra_Electoria_Loop17, Target
	smpsJump		SCra_Electoria_Loop13, Target

SCra_Electoria_Call9:
	dc.b	nRst, $0C, nC4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C, $06, nRst, $30
	smpsReturn

SCra_Electoria_FM5:
	smpsFMvoice		$03
	dc.b	nRst, $60

SCra_Electoria_Loop18:
	dc.b	nG2, $60
	smpsLoop		$00, $08, SCra_Electoria_Loop18, Target
	smpsAlterPitch	$FA

SCra_Electoria_Loop19:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop19, Target
	smpsAlterPitch	$06

SCra_Electoria_Loop20:
	smpsAlterPitch	$FC
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$02
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$02
	smpsLoop		$00, $03, SCra_Electoria_Loop20, Target
	smpsAlterPitch	$FC
	smpsCall		SCra_Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		SCra_Electoria_Call9, Target
	smpsAlterPitch	$03
	smpsAlterPitch	$FA

SCra_Electoria_Loop21:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $07, SCra_Electoria_Loop21, Target
	dc.b	nRst, $60

SCra_Electoria_Loop22:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $0B, SCra_Electoria_Loop22, Target
	smpsAlterPitch	$FF
	smpsCall		SCra_Electoria_Call9, Target
	smpsAlterPitch	$01

SCra_Electoria_Loop23:
	smpsCall		SCra_Electoria_Call2, Target
	smpsLoop		$00, $04, SCra_Electoria_Loop23, Target
	smpsJump		SCra_Electoria_Loop19, Target

SCra_Electoria_PSG1:
	smpsPSGvoice	$0C
	dc.b	nRst, $60

SCra_Electoria_Loop24:
	smpsCall		SCra_Electoria_Call10, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop24, Target

SCra_Electoria_Loop25:
	smpsCall		SCra_Electoria_Call10, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop25, Target

SCra_Electoria_Loop26:
	smpsAlterPitch	$FC
	smpsCall		SCra_Electoria_Call10, Target
	smpsAlterPitch	$04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2
	dc.b	nEb2, nEb3, nA2, nEb2, nEb3, nA2, nEb2, nEb3
	dc.b	nA2
	smpsLoop		$00, $03, SCra_Electoria_Loop26, Target
	smpsAlterPitch	$FC
	smpsCall		SCra_Electoria_Call10, Target
	smpsAlterPitch	$04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2
	dc.b	nEb2, nRst, $30

SCra_Electoria_Loop27:
	smpsCall		SCra_Electoria_Call10, Target
	smpsLoop		$00, $07, SCra_Electoria_Loop27, Target
	dc.b	nRst, $60

SCra_Electoria_Loop28:
	smpsCall		SCra_Electoria_Call10, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop28, Target

SCra_Electoria_Loop29:
	smpsCall		SCra_Electoria_Call10, Target
	smpsLoop		$00, $03, SCra_Electoria_Loop29, Target
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3
	dc.b	nG2, nRst, $30

SCra_Electoria_Loop30:
	smpsCall		SCra_Electoria_Call10, Target
	smpsLoop		$00, $04, SCra_Electoria_Loop30, Target
	smpsJump		SCra_Electoria_Loop25, Target

SCra_Electoria_Call10:
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3
	dc.b	nG2, nG3, nD3, nG2, nG3, nD3, nG2, nG3
	dc.b	nD3
	smpsReturn

SCra_Electoria_PSG2:
	smpsPSGvoice	$0C
	dc.b	nRst, $60
	smpsAlterPitch	$0C

SCra_Electoria_Loop31:
	smpsCall		SCra_Electoria_Call11, Target
	smpsCall		SCra_Electoria_Call12, Target
	smpsLoop		$00, $04, SCra_Electoria_Loop31, Target
	smpsAlterPitch	$F4
	smpsSetVol	$FF

SCra_Electoria_Loop32:
	smpsPSGvoice	$03
	smpsCall		SCra_Electoria_Call13, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop32, Target
	smpsAlterPitch	$03

SCra_Electoria_Loop33:
	smpsCall		SCra_Electoria_Call13, Target
	smpsLoop		$00, $07, SCra_Electoria_Loop33, Target
	smpsAlterPitch	$FD
	smpsCall		SCra_Electoria_Call14, Target

SCra_Electoria_Loop34:
	smpsCall		SCra_Electoria_Call13, Target
	smpsLoop		$00, $07, SCra_Electoria_Loop34, Target
	dc.b	nRst, $60

SCra_Electoria_Loop35:
	smpsCall		SCra_Electoria_Call13, Target
	smpsLoop		$00, $08, SCra_Electoria_Loop35, Target
	smpsPSGvoice	$0C
	smpsAlterPitch	$0C
	smpsSetVol	$01
	smpsCall		SCra_Electoria_Call11, Target
	smpsCall		SCra_Electoria_Call12, Target
	smpsCall		SCra_Electoria_Call11, Target
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, $30

SCra_Electoria_Loop36:
	smpsCall		SCra_Electoria_Call11, Target
	smpsCall		SCra_Electoria_Call12, Target
	smpsLoop		$00, $02, SCra_Electoria_Loop36, Target
	smpsAlterPitch	$F4
	smpsSetVol	$FF
	smpsJump		SCra_Electoria_Loop32, Target

SCra_Electoria_Call11:
	dc.b	nF3, $06, nG3, nRst, nB3, nRst, nRst, nF3
	dc.b	nG3, nRst, nB3, nRst, nF3, nG3, nRst, nB3
	dc.b	nRst
	smpsReturn

SCra_Electoria_Call12:
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, nC4, nRst, nF3, nG3, nRst, nC4
	dc.b	nRst
	smpsReturn

SCra_Electoria_Call13:
	dc.b	nRst, $0C, nD3, nRst, $06, nD3, $0C, nRst
	dc.b	$06, nD3, $0C, nRst, $06, nD3, $0C, nRst
	dc.b	$06, nD3, $0C
	smpsReturn

SCra_Electoria_Call14:
	dc.b	nRst, $0C, nF3, nRst, $06, nF3, $0C, $06
	dc.b	nRst, $30
	smpsReturn

SCra_Electoria_PSG3:
	smpsPSGform	$E7

SCra_Electoria_Loop37:
	smpsCall		SCra_Electoria_Call15, Target
	smpsLoop		$01, $09, SCra_Electoria_Loop37, Target

SCra_Electoria_Loop38:
	smpsCall		SCra_Electoria_Call15, Target
	smpsLoop		$01, $0F, SCra_Electoria_Loop38, Target
	smpsCall		SCra_Electoria_Call16, Target

SCra_Electoria_Loop39:
	smpsCall		SCra_Electoria_Call15, Target
	smpsLoop		$01, $13, SCra_Electoria_Loop39, Target
	smpsCall		SCra_Electoria_Call16, Target

SCra_Electoria_Loop40:
	smpsCall		SCra_Electoria_Call15, Target
	smpsLoop		$01, $04, SCra_Electoria_Loop40, Target
	smpsJump		SCra_Electoria_Loop38, Target

SCra_Electoria_Call15:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsPSGvoice	$05
	dc.b	nC4
	smpsLoop		$00, $04, SCra_Electoria_Call15, Target
	smpsReturn

SCra_Electoria_Call16:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06, nRst, $30
	smpsReturn

SCra_Electoria_DAC:
	dc.b	d82, $06, nRst, d82, d82, nRst, d82, d82
	dc.b	d81, d82, d83, d84, d82, d82, d84, d85
	dc.b	d82

SCra_Electoria_Loop41:
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsLoop		$00, $03, SCra_Electoria_Loop41, Target
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call19, Target

SCra_Electoria_Loop42:
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsLoop		$00, $03, SCra_Electoria_Loop42, Target
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call20, Target

SCra_Electoria_Loop43:
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsLoop		$00, $03, SCra_Electoria_Loop43, Target
	smpsCall		SCra_Electoria_Call17, Target
	dc.b	d82, $04, d82, d82, d82, $06, d82, d82
	dc.b	d82, d82, d82, nRst, $30

SCra_Electoria_Loop44:
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsLoop		$00, $03, SCra_Electoria_Loop44, Target
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call19, Target

SCra_Electoria_Loop45:
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsLoop		$00, $03, SCra_Electoria_Loop45, Target
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call20, Target
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsCall		SCra_Electoria_Call17, Target
	dc.b	d81, $06, d82, $12, d82, d81, $06, nRst
	dc.b	$30
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call18, Target
	smpsCall		SCra_Electoria_Call17, Target
	smpsCall		SCra_Electoria_Call19, Target
	smpsJump		SCra_Electoria_Loop42, Target

SCra_Electoria_Call17:
	dc.b	d81, $0C, d81, d82, nRst, $06, d82, nRst
	dc.b	d82, d81, nRst, d82, $18
	smpsReturn

SCra_Electoria_Call18:
	dc.b	d81, $06, d82, $12, d82, d81, $06, nRst
	dc.b	d82, d81, nRst, d82, $18
	smpsReturn

SCra_Electoria_Call19:
	dc.b	d84, $0C, $0C, $0C, $06, $06, nRst, d84
	dc.b	d84, $0C, d84, d84
	smpsReturn

SCra_Electoria_Call20:
	dc.b	nRst, $06, d82, $12, d82, $18, nRst, $06
	dc.b	d82, $12, d82, $18
	smpsReturn

SCra_Electoria_Patches:

	
	dc.b	$3B
	dc.b	$12, $11, $13, $01,	$1F, $1F, $1F, $1E
	dc.b	$02, $0C, $13, $07,	$12, $0A, $05, $07
	dc.b	$0F, $3F, $5F, $3F,	$16, $10, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$01, $02, $0F, $04,	$8D, $52, $9F, $1F
	dc.b	$09, $00, $00, $0D,	$00, $00, $00, $00
	dc.b	$2F, $0F, $0F, $FF,	$17, $86, $1F, $86
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$22, $04, $02, $14,	$51, $52, $50, $52
	dc.b	$0D, $00, $06, $04,	$03, $05, $02, $00
	dc.b	$16, $18, $26, $18,	$0F, $80, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$41
	dc.b	$18, $12, $02, $12,	$5F, $5F, $5F, $5F
	dc.b	$0C, $0B, $0B, $0B,	$09, $08, $10, $0A
	dc.b	$AF, $FF, $FF, $FF,	$1D, $23, $1B, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$07, $01, $08, $04,	$5F, $9F, $9F, $5F
	dc.b	$16, $1F, $16, $1F,	$09, $0F, $16, $11
	dc.b	$6F, $0F, $AF, $0F,	$16, $80, $11, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
