
Target	EQU	$40000
	smpsHeaderVoice	HDN1R_Splash_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$03, $20
	sHeaderDAC	HDN1R_Splash_DAC
	smpsHeaderFM	HDN1R_Splash_FM1, Target, $00, $17
	smpsHeaderFM	HDN1R_Splash_FM2, Target, $00, $13
	smpsHeaderFM	HDN1R_Splash_FM3, Target, $00, $0E
	smpsHeaderFM	HDN1R_Splash_FM4, Target, $00, $25
	smpsHeaderFM	HDN1R_Splash_FM5, Target, $00, $22
	smpsHeaderFM	HDN1R_Splash_FM6, Target, $00, $1B
	smpsHeaderPSG	HDN1R_Splash_PSG1, Target, $0C, $05, $00, $00
	smpsHeaderPSG	HDN1R_Splash_PSG2, Target, $0C, $0B, $00, $00
	smpsHeaderPSG	HDN1R_Splash_PSG3, Target, $0C, $0A, $00, $00

HDN1R_Splash_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00
	sModOff
	sModOff
	dc.b nRst, $06

HDN1R_Splash_Loop1:
	dc.b nBb5, $02, nG5, $01, nE5, $02, nCs5, $01
	dc.b nBb4, $02, nG4, $01, nBb4, $02, nCs5, $01
	dc.b nE5, $02, nCs5, $01, nBb4, $02, nG4, $01
	dc.b nE4, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b nCs5, $02, nBb4, $01, nG4, $02, nE4, $01
	dc.b nCs4, $02, nBb3, $01, nCs4, $02, nE4, $01
	dc.b nBb4, $02, nG4, $01, nE4, $02, nCs4, $01
	dc.b nBb3, $02, nG3, $01, nBb3, $02, nCs4, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop1, Target
	dc.b nCs6, $02, nBb5, $01, nG5, $02, nE5, $01
	dc.b nCs5, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b nBb5, $02, nG5, $01, nE5, $02, nCs5, $01
	dc.b nBb4, $02, nG4, $01, nBb4, $02, nCs5, $01
	dc.b nG5, $02, nE5, $01, nCs5, $02, nBb4, $01
	dc.b nG4, $02, nE4, $01, nG4, $02, nBb4, $01
	dc.b nE5, $02, nCs5, $01, nBb4, $02, nG4, $01
	dc.b nE4, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b nBb3, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b nBb4, $02, nCs5, $01, nE5, $02, nG5, $01
	dc.b nCs4, $02, nE4, $01, nG4, $02, nBb4, $01
	dc.b nCs5, $02, nE5, $01, nG5, $02, nBb5, $01
	dc.b nCs5, nRst, nBb5, nRst, $02, nBb6, $01, nRst
	dc.b $02, nBb5, $01, nRst, nE5, nBb4, nRst, $03
	dc.b nRst, $01, nRst
	smpsAlterNote	$03
	dc.b nRst
	smpsAlterNote	$05
	dc.b nRst
	smpsAlterNote	$07
	dc.b nRst
	smpsAlterNote	$08
	dc.b nRst
	smpsAlterNote	$13
	dc.b nRst
	smpsAlterNote	$14
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, nRst, $55, nRst, $3B
	smpsAlterVol		$02
	dc.b nG3, $02, nBb3, $01, nCs4, $02, nE4, $01
	dc.b nG4, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b nCs5, $02, nBb4, $01, nG4, $02, nE4, $01
	dc.b nG4, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b nRst, $05
	smpsAlterVol		$01
	dc.b nCs6, $01, nRst, $02, nBb5, $01, nRst, $02
	dc.b nBb6, $01

HDN1R_Splash_Jump1:
	dc.b nRst, $54, nRst, nRst, nRst, nRst
	smpsAlterVol		$FA
	dc.b nD4, $02, nF4, $01, nA4, $02, nD5, $01
	dc.b nF5, $02, nA5, $01, nD6, $02, nF6, $01
	dc.b nA6, $02, nF6, $01, nD6, $02, nA5, $01
	dc.b nF5, $02, nD5, $01, nA4, $02, nD4, $01
	dc.b nRst, $18
	smpsAlterVol		$FF
	dc.b nF4, $02, nA4, $01, nD5, $02, nF5, $01
	dc.b nA5, $02, nD6, $01, nF6, $02, nA6, $01
	dc.b nD7, $02, nA6, $01, nF6, $02, nD6, $01
	dc.b nA5, $02, nF5, $01, nA4, $02, nF4, $01
	dc.b nRst, $18
	smpsAlterVol		$FF
	dc.b nC4, $02, nE4, $01, nG4, $02, nC5, $01
	dc.b nE5, $02, nG5, $01, nC6, $02
	smpsAlterVol		$01
	dc.b nE6, $01, nG6, $02, nE6, $01, nC6, $02
	dc.b nG5, $01, nE5, $02, nC5, $01, nG4, $02
	dc.b nC4, $01, nRst, $30
	smpsAlterNote	$00
	smpsAlterVol		$FE
	dc.b nE5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b nD5, $02, nRst, $04, nAb4, $03, nAb5, nA4
	dc.b nA5, nB4, nB5, nE5, nE4, nF5, $02, nRst
	dc.b $07, nFs5, $02, nRst, $07, nD5, $02, nRst
	dc.b $04, nE5, $02, nFs5, $01, nAb5, $02, nA5
	dc.b $01, nFs5, $02, nAb5, $01, nA5, $02, nB5
	dc.b $01, nAb5, $02, nA5, $01, nB5, $02, nD6
	dc.b $01, nE6, $03
	smpsAlterNote	$0F
	dc.b smpsNoAttack, nD6, $01
	smpsAlterNote	$0A
	dc.b smpsNoAttack, nBb5
	smpsAlterNote	$FD
	dc.b smpsNoAttack, nFs5
	smpsAlterNote	$FF
	dc.b nE5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b nD5, $02, nRst, $01, nAb4, $03, nAb5, nA5
	dc.b nA4, nB5, nA5, nA4, nE5
	smpsAlterNote	$13
	dc.b smpsNoAttack, nD5, $01
	smpsAlterNote	$15
	dc.b smpsNoAttack, nBb4
	smpsAlterNote	$0A
	dc.b smpsNoAttack, nFs4
	smpsAlterNote	$01
	dc.b nF5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b nD5, $02, nRst, $04, nF6, $02, nD6, $01
	dc.b nB5, $02, nA5, $01, nD6, $02, nB5, $01
	dc.b nA5, $02, nAb5, $01, nA5, $02, nAb5, $01
	dc.b nFs5, $02, nF5, $01, nD5, $03
	smpsAlterNote	$09
	dc.b smpsNoAttack, nC5, $01
	smpsAlterNote	$0A
	dc.b smpsNoAttack, nAb4
	smpsAlterNote	$04
	dc.b smpsNoAttack, nE4
	smpsAlterNote	$FF
	dc.b nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b nFs5, $02, nRst, $04, nB4, $03, nB5, nC5
	dc.b nC6, nD5, nD6, nG5, nG4, nAb5, $02, nRst
	dc.b $07, nA5, $02, nRst, $07, nFs5, $02, nRst
	dc.b $04, nG5, $02, nAb5, $01, nB5, $02, nC6
	dc.b $01, nAb5, $02, nB5, $01, nC6, $02, nD6
	dc.b $01, nB5, $02, nC6, $01, nD6, $02, nF6
	dc.b $01, nG6, $03
	smpsAlterNote	$06
	dc.b smpsNoAttack, nF6, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nCs6
	smpsAlterNote	$F4
	dc.b smpsNoAttack, nA5
	smpsAlterNote	$01
	dc.b nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b nFs5, $02, nRst, $01, nB4, $03, nB5, nC6
	dc.b nC5, nD6, nC6, nC5, nG5
	smpsAlterNote	$EF
	dc.b smpsNoAttack, nFs5, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, nCs5
	smpsAlterNote	$FD
	dc.b smpsNoAttack, nA4
	smpsAlterNote	$FF
	dc.b nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b nFs5, $02, nRst, $04, nAb6, $02, nFs6, $01
	dc.b nF6, $02, nD6, $01, nF6, $02, nD6, $01
	dc.b nC6, $02, nB5, $01, nC6, $02, nB5, $01
	dc.b nAb5, $02, nFs5, $01, nE5, $03
	smpsAlterNote	$06
	dc.b smpsNoAttack, nD5, $01
	smpsAlterNote	$FA
	dc.b smpsNoAttack, nBb4
	smpsAlterNote	$F0
	dc.b smpsNoAttack, nFs4
	smpsAlterNote	$FF
	dc.b nRst, $55, nRst, nRst, $16, nRst, $3E, nRst
	dc.b nRst, nRst, nRst, nRst
	smpsAlterVol		$07
	dc.b nC4, $02, nD4, $01, nEb4, $02, nF4, $01
	dc.b nG4, $02, nBb4, $01, nC5, $02, nD5, $01
	dc.b nEb5, $18, nD5, $0C, nBb4, nC5, nG5

HDN1R_Splash_Loop2:
	smpsAlterVol		$01
	dc.b smpsNoAttack, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop2, Target
	smpsAlterVol		$02
	dc.b smpsNoAttack, $01
	smpsAlterVol		$01

HDN1R_Splash_Loop3:
	dc.b smpsNoAttack, $01
	smpsAlterVol		$01
	dc.b smpsNoAttack, $01
	smpsAlterVol		$02
	smpsLoop		$00, $02, HDN1R_Splash_Loop3, Target
	dc.b smpsNoAttack, $01
	smpsAlterVol		$02
	dc.b smpsNoAttack, $01
	smpsAlterVol		$01
	dc.b smpsNoAttack, $01
	smpsAlterVol		$02

HDN1R_Splash_Loop4:
	dc.b smpsNoAttack, $01
	smpsAlterVol		$02
	dc.b smpsNoAttack, $01
	smpsAlterVol		$03
	smpsLoop		$00, $02, HDN1R_Splash_Loop4, Target
	dc.b smpsNoAttack, $01
	smpsAlterVol		$04
	dc.b smpsNoAttack, $01
	smpsAlterVol		$03
	dc.b smpsNoAttack, $01
	smpsAlterVol		$06
	dc.b smpsNoAttack, $01
	smpsAlterVol		$05
	dc.b smpsNoAttack, $01
	smpsAlterVol		$0A
	dc.b smpsNoAttack, $01
	smpsAlterVol		$10
	dc.b smpsNoAttack, $01
	smpsAlterVol		$20
	dc.b smpsNoAttack, $02

HDN1R_Splash_Loop5:
	dc.b nRst, $01
	smpsLoop		$00, $18, HDN1R_Splash_Loop5, Target
	smpsAlterVol		$BA
	dc.b nC5

HDN1R_Splash_Loop6:
	dc.b smpsNoAttack, $01
	smpsAlterVol		$FF
	smpsLoop		$00, $04, HDN1R_Splash_Loop6, Target
	dc.b smpsNoAttack, $02
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $01
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $01
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $03
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $01
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $01

HDN1R_Splash_Loop7:
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $02
	smpsLoop		$00, $05, HDN1R_Splash_Loop7, Target
	smpsAlterVol		$F1
	dc.b nB4, $01
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $05
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $05
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $06
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $06
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $05
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $06
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $07
	smpsAlterVol		$FF
	dc.b smpsNoAttack, $07, nC5, $18, nCs5, $0C
	smpsAlterVol		$06
	smpsJump		HDN1R_Splash_Jump1, Target

HDN1R_Splash_FM2:
	smpsFMvoice		$00
	sModOff
	smpsPan		panCenter
	sModOff
	smpsAlterNote	$FF
	dc.b nRst, $06
	smpsAlterNote	$00
	dc.b nRst, $30, nRst, $55, nRst, $24, nE5, $01
	dc.b nBb5, nRst, nE6, nRst, nG6, nE6, nRst, nG5
	dc.b nRst, nRst, nG4, $05
	smpsAlterNote	$03
	dc.b smpsNoAttack, nF4, $01
	smpsAlterNote	$05
	dc.b smpsNoAttack, nEb4
	smpsAlterNote	$07
	dc.b smpsNoAttack, nCs4
	smpsAlterNote	$08
	dc.b smpsNoAttack, nB3
	smpsAlterNote	$13
	dc.b smpsNoAttack, nA3
	smpsAlterNote	$14
	dc.b smpsNoAttack, nG3
	smpsAlterNote	$00
	dc.b smpsNoAttack, $01, nRst, $55, nRst, $53
	smpsAlterVol		$07
	dc.b nE4, $01, nG4, nRst, $04, nCs5, $01, nRst
	dc.b nBb5, nRst, nE6, nRst

HDN1R_Splash_Loo$8:
	dc.b nRst, $54
	smpsLoop		$00, $07, HDN1R_Splash_Loo$8, Target
	smpsAlterNote	$00

HDN1R_Splash_Loop10:
	dc.b nRst, $55, nRst, $08

HDN1R_Splash_Loo$9:
	dc.b nRst, $01, nRst, nRst, nRst, $2D
	smpsLoop		$00, $02, HDN1R_Splash_Loo$9, Target
	dc.b nRst, $01, nRst, nRst
	smpsLoop		$01, $02, HDN1R_Splash_Loop10, Target

HDN1R_Splash_Loop11:
	dc.b nRst, $4E
	smpsLoop		$00, $07, HDN1R_Splash_Loop11, Target
	dc.b nRst, $55, nRst, nRst, nRst, $03
	smpsJump		HDN1R_Splash_Loo$8, Target

HDN1R_Splash_FM3:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b nRst, $09

HDN1R_Splash_Loop12:
	dc.b nBb3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nE3, $02, nRst, $04, $02, nRst, $01, nE2
	dc.b $02, nRst, $01, nBb2, $02, nRst, $04, $02
	dc.b nRst, $01, nBb1, $02, nRst, $01, nE2, $02
	dc.b nRst, $04, $02, nRst, $01, nE1, $02, nRst
	dc.b $01, nBb1, $02, nRst, $04
	smpsLoop		$00, $02, HDN1R_Splash_Loop12, Target
	dc.b nCs4, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b nCs4, $02, nRst, $04, nG3, $02, nRst, $01
	dc.b nG2, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b nCs3, $02, nRst, $04, nBb2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nBb1, $03
	smpsAlterVol		$0A
	dc.b nBb2, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b nCs2, $03
	smpsAlterVol		$0A
	dc.b nCs3, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b nG2, $03
	smpsAlterVol		$0A
	dc.b nG3, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b nCs3, $03
	smpsAlterVol		$0A
	dc.b nCs4, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b nE3, $03, nRst, nCs3, nRst, nBb2, $06, nRst

HDN1R_Splash_Loop13:
	dc.b nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $18, HDN1R_Splash_Loop13, Target

HDN1R_Splash_Loop14:
	dc.b nCs2, $02, nRst, $01, nCs3, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop14, Target
	dc.b nCs2, $02, nRst, $01, nCs3, $02, nRst, $0D

HDN1R_Splash_Jump2:
	dc.b nRst, $0C
	smpsAlterVol		$01

HDN1R_Splash_Loop15:
	dc.b nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $06, HDN1R_Splash_Loop15, Target

HDN1R_Splash_Loop16:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop16, Target

HDN1R_Splash_Loop17:
	dc.b nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop17, Target

HDN1R_Splash_Loop18:
	dc.b nC2, $02, nRst, $01, nC3, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop18, Target

HDN1R_Splash_Loop19:
	dc.b nG1, $02, nRst, $01, nG2, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop19, Target

HDN1R_Splash_Loop20:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop20, Target

HDN1R_Splash_Loop21:
	dc.b nE2, $02, nRst, $01, nE3, $02, nRst, $01
	smpsLoop		$00, $08, HDN1R_Splash_Loop21, Target

HDN1R_Splash_Loop22:
	dc.b nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $06, HDN1R_Splash_Loop22, Target

HDN1R_Splash_Loop23:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop23, Target

HDN1R_Splash_Loop24:
	dc.b nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop24, Target

HDN1R_Splash_Loop25:
	dc.b nC2, $02, nRst, $01, nC3, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop25, Target

HDN1R_Splash_Loop26:
	dc.b nG1, $02, nRst, $01, nG2, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop26, Target

HDN1R_Splash_Loop27:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop27, Target

HDN1R_Splash_Loop28:
	dc.b nE2, $02, nRst, $01, nE3, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop28, Target

HDN1R_Splash_Loop29:
	dc.b nD2, $02, nRst, $01

HDN1R_Splash_Loop30:
	dc.b nD3, $02, nRst, $01
	smpsLoop		$00, $04, HDN1R_Splash_Loop29, Target
	dc.b nD2, $03
	smpsLoop		$01, $02, HDN1R_Splash_Loop30, Target

HDN1R_Splash_Loop31:
	dc.b nD3, $02, nRst, $01, nD2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop31, Target
	dc.b nD3, $02

HDN1R_Splash_Loop33:
	dc.b nRst, $01, nBb1, $03

HDN1R_Splash_Loop32:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop32, Target
	dc.b nBb2, $02
	smpsLoop		$01, $02, HDN1R_Splash_Loop33, Target

HDN1R_Splash_Loop35:
	dc.b nRst, $01, nC2, $03

HDN1R_Splash_Loop34:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop34, Target
	dc.b nC3, $02
	smpsLoop		$01, $02, HDN1R_Splash_Loop35, Target
	dc.b nRst, $01, nCs2, $03

HDN1R_Splash_Loop36:
	dc.b nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop36, Target
	dc.b nCs3, $02, nRst, $01, nD2, $03, nRst, $02
	dc.b $03, nRst, $01, $09, nRst, $06
	smpsAlterVol		$FF

HDN1R_Splash_Loop38:
	dc.b nA1, $03

HDN1R_Splash_Loop37:
	dc.b nA2, $02, nRst, $01, nA1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop37, Target
	dc.b nA2, $02, nRst, $01
	smpsLoop		$01, $08, HDN1R_Splash_Loop38, Target

HDN1R_Splash_Loop40:
	dc.b nC2, $03

HDN1R_Splash_Loop39:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop39, Target
	dc.b nC3, $02, nRst, $01
	smpsLoop		$01, $08, HDN1R_Splash_Loop40, Target
	smpsAlterVol		$01

HDN1R_Splash_Loop42:
	dc.b nD2, $03

HDN1R_Splash_Loop41:
	dc.b nD3, $02, nRst, $01, nD2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop41, Target
	dc.b nD3, $02, nRst, $01
	smpsLoop		$01, $02, HDN1R_Splash_Loop42, Target

HDN1R_Splash_Loop44:
	dc.b nBb1, $03

HDN1R_Splash_Loop43:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop43, Target
	dc.b nBb2, $02, nRst, $01
	smpsLoop		$01, $02, HDN1R_Splash_Loop44, Target

HDN1R_Splash_Loop46:
	dc.b nC2, $03

HDN1R_Splash_Loop45:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop45, Target
	dc.b nC3, $02, nRst, $01
	smpsLoop		$01, $02, HDN1R_Splash_Loop46, Target
	dc.b nCs2, $03

HDN1R_Splash_Loop47:
	dc.b nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop47, Target
	dc.b nCs3, $02, nRst, $01, nD2, $03, nRst, $02
	dc.b $03, nRst, $01, $09, nRst, $06, nG1, $03

HDN1R_Splash_Loop48:
	dc.b nG2, $02, nRst, $01, nG1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop48, Target
	dc.b nG2, $02, nRst, $01, nAb1, $03

HDN1R_Splash_Loop49:
	dc.b nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop49, Target
	dc.b nAb2, $02, nRst, $01, nBb1, $03

HDN1R_Splash_Loop50:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop50, Target
	dc.b nBb2, $02, nRst, $01, nC2, $03

HDN1R_Splash_Loop51:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop51, Target
	dc.b nC3, $02, nRst, $01, nEb2, $03

HDN1R_Splash_Loop52:
	dc.b nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop52, Target
	dc.b nEb3, $02, nRst, $01, nF2, $03

HDN1R_Splash_Loop53:
	dc.b nF3, $02, nRst, $01, nF2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop53, Target
	dc.b nF3, $02

HDN1R_Splash_Loop55:
	dc.b nRst, $01, nBb1, $03

HDN1R_Splash_Loop54:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop54, Target
	dc.b nBb2, $02
	smpsLoop		$01, $02, HDN1R_Splash_Loop55, Target
	dc.b nRst, $01, nG1, $03

HDN1R_Splash_Loop56:
	dc.b nG2, $02, nRst, $01, nG1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop56, Target
	dc.b nG2, $02, nRst, $01, nAb1, $03

HDN1R_Splash_Loop57:
	dc.b nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop57, Target
	dc.b nAb2, $02, nRst, $01, nBb1, $03

HDN1R_Splash_Loop58:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop58, Target
	dc.b nBb2, $02, nRst, $01, nC2, $03

HDN1R_Splash_Loop59:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop59, Target
	dc.b nC3, $02, nRst, $01, nEb2, $03

HDN1R_Splash_Loop60:
	dc.b nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop60, Target
	dc.b nEb3, $02, nRst, $01, nF1, $03

HDN1R_Splash_Loop61:
	dc.b nF2, $02, nRst, $01, nF1, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop61, Target
	dc.b nF2, $02, nRst, $01, nAb1, $03, nAb2, $02
	dc.b nRst, $01, nAb1, $02, nRst, $01, nAb2, $02
	dc.b nRst, $01, nBb1, $03, nBb2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nBb2, $02

HDN1R_Splash_Loop63:
	dc.b nRst, $01, nC2, $03

HDN1R_Splash_Loop62:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop62, Target
	dc.b nC3, $02
	smpsLoop		$01, $07, HDN1R_Splash_Loop63, Target
	smpsAlterNote	$00
	dc.b nRst, $55
	smpsAlterVol		$FF
	smpsJump		HDN1R_Splash_Jump2, Target

HDN1R_Splash_FM4:
	sModOff
	smpsPan		panCenter
	sModOff
	smpsFMvoice		$02
	sModOff
	sModOff
	sModOff
	sModOff
	dc.b nRst, $55, nRst, nRst, $16
	smpsFMvoice		$04
	dc.b nRst, $06, nD4

HDN1R_Splash_Loop64:
	dc.b $03
	smpsAlterVol		$F5
	dc.b $03
	smpsAlterVol		$0B
	smpsLoop		$00, $18, HDN1R_Splash_Loop64, Target
	dc.b nE4
	smpsAlterVol		$F5
	dc.b $03
	smpsAlterVol		$0A
	dc.b $03
	smpsAlterVol		$F6
	dc.b $03
	smpsAlterVol		$0B
	dc.b $03
	smpsAlterVol		$F5
	dc.b $03
	smpsAlterVol		$0A
	dc.b $03
	smpsAlterVol		$F6
	dc.b $03
	smpsAlterVol		$FE
	dc.b $03, nRst, $02, $03, nRst, $01, $03

HDN1R_Splash_Jump3:
	dc.b nRst, $06
	smpsFMvoice		$05
	dc.b nRst
	smpsAlterVol		$09
	dc.b nA3

HDN1R_Splash_Loop65:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop65, Target
	dc.b $03, $02, nRst, $01, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nC4, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nEb4, $03, $02, nRst, $01
	dc.b nD4, $03, $02, nRst, $01, $03, $02, nRst
	dc.b $01, $02, $01, $02, nRst, $01, $03, $02
	dc.b nRst, $01, nE4, $03, $02, nRst, $01, $03

HDN1R_Splash_Loop66:
	dc.b $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop66, Target
	dc.b $03, $02, nRst, $01, nD4

HDN1R_Splash_Loop67:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop67, Target
	dc.b $03, $02, nRst, $01, nC4

HDN1R_Splash_Loop68:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop68, Target
	dc.b $03, $02, nRst, $01, nBb3

HDN1R_Splash_Loop69:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop69, Target
	dc.b $03, $02, nRst, $01, nE4

HDN1R_Splash_Loop70:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop70, Target
	dc.b $03, $02, nRst, $01
	smpsAlterVol		$01
	dc.b nA3

HDN1R_Splash_Loop71:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop71, Target
	dc.b $03, $02, nRst, $01, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nC4, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nEb4, $03, $02, nRst, $01
	dc.b nD4, $03, $02, nRst, $01, $03, $02, nRst
	dc.b $01, $02, $01, $02, nRst, $01, $03, $02
	dc.b nRst, $01, nE4, $03, $02, nRst, $01, $03

HDN1R_Splash_Loop72:
	dc.b $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loop72, Target
	dc.b $03, $02, nRst, $01, nD4

HDN1R_Splash_Loop73:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop73, Target
	dc.b $03, $02, nRst, $01, nC4

HDN1R_Splash_Loop74:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop74, Target
	dc.b $03, $02, nRst, $01, nBb3

HDN1R_Splash_Loop75:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop75, Target
	dc.b $03, $02, nRst, $01, nD4

HDN1R_Splash_Loop76:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop76, Target
	dc.b $03, $02, nRst, $01
	smpsAlterVol		$FC
	dc.b $02, $01, $02, nRst, $04
	smpsAlterVol		$06
	dc.b $03, nRst, nD4, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nD4, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nC4, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nC4, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nCs4, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nCs4, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $01, $02, nRst, $01, nD4, $02
	dc.b nRst, $03, $01, nRst, $03, $06, nRst, $09
	smpsAlterVol		$FD
	dc.b nA1

HDN1R_Splash_Loop77:
	dc.b $03, $02, nRst, $01

HDN1R_Splash_Loop78:
	dc.b $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop77, Target

HDN1R_Splash_Loop79:
	dc.b $03
	smpsLoop		$01, $02, HDN1R_Splash_Loop78, Target
	dc.b $02, nRst, $01, $02, nRst, $01
	smpsLoop		$02, $07, HDN1R_Splash_Loop79, Target
	dc.b $03, $02, nRst, $01, nC3

HDN1R_Splash_Loo$80:
	dc.b $03, $02, nRst, $01

HDN1R_Splash_Loo$81:
	dc.b $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$80, Target

HDN1R_Splash_Loo$82:
	dc.b $03
	smpsLoop		$01, $02, HDN1R_Splash_Loo$81, Target
	dc.b $02, nRst, $01, $02, nRst, $01
	smpsLoop		$02, $07, HDN1R_Splash_Loo$82, Target
	dc.b $03, $02, nRst, $01
	smpsAlterVol		$03
	dc.b nD4, $02, $01, $02, nRst, $04
	smpsAlterVol		$06
	dc.b $03, nRst, nD4, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nD4, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nC4, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nC4, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nCs4, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nCs4, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $01, $02, nRst, $01, nD4, $02
	dc.b nRst, $03, $01, nRst, $03, $06

HDN1R_Splash_Loo$83:
	dc.b nRst, $4F
	smpsLoop		$00, $07, HDN1R_Splash_Loo$83, Target
	dc.b nRst, $02
	smpsFMvoice		$02
	dc.b nRst, $06
	smpsAlterVol		$FD
	dc.b nB2, $05, $04, $09, nRst, $06, nC3, $05
	dc.b $04, $09, nRst, $06, nCs3, $05, $04, $03
	smpsAlterVol		$FD
	smpsJump		HDN1R_Splash_Jump3, Target

HDN1R_Splash_FM5:
	sModOff
	smpsPan		panCenter
	sModOff
	sModOff
	sModOff
	sModOff
	sModOff
	smpsFMvoice		$02
	sModOff
	sModOff
	dc.b nRst, $55, nRst, nRst, $16
	smpsFMvoice		$04
	dc.b nRst, $06, nD3

HDN1R_Splash_Loo$84:
	dc.b $03
	smpsAlterVol		$F5
	dc.b $03
	smpsAlterVol		$0B
	smpsLoop		$00, $18, HDN1R_Splash_Loo$84, Target
	dc.b nE3
	smpsAlterVol		$F5
	dc.b $03
	smpsAlterVol		$0A
	dc.b $03
	smpsAlterVol		$F6
	dc.b $03
	smpsAlterVol		$0B
	dc.b $03
	smpsAlterVol		$F5
	dc.b $03
	smpsAlterVol		$0A
	dc.b $03
	smpsAlterVol		$F6
	dc.b $03
	smpsAlterVol		$FE
	dc.b $03, nRst, $02, $03, nRst, $01, $03

HDN1R_Splash_Jump4:
	dc.b nRst, $06
	smpsFMvoice		$05
	dc.b nRst
	smpsAlterVol		$09
	dc.b nA2

HDN1R_Splash_Loo$85:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$85, Target
	dc.b $03, $02, nRst, $01, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nC3, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nEb3, $03, $02, nRst, $01
	dc.b nD3, $03, $02, nRst, $01, $03, $02, nRst
	dc.b $01, $02, $01, $02, nRst, $01, $03, $02
	dc.b nRst, $01, nE3, $03, $02, nRst, $01, $03

HDN1R_Splash_Loo$86:
	dc.b $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loo$86, Target
	dc.b $03, $02, nRst, $01, nD3

HDN1R_Splash_Loo$87:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$87, Target
	dc.b $03, $02, nRst, $01, nC3

HDN1R_Splash_Loo$88:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$88, Target
	dc.b $03, $02, nRst, $01, nBb2

HDN1R_Splash_Loo$89:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$89, Target
	dc.b $03, $02, nRst, $01, nE3

HDN1R_Splash_Loo$90:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$90, Target
	dc.b $03, $02, nRst, $01
	smpsAlterVol		$01
	dc.b nA2

HDN1R_Splash_Loo$91:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$91, Target
	dc.b $03, $02, nRst, $01, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nC3, $03, $02, nRst, $01
	dc.b $02, nRst, $01, nEb3, $03, $02, nRst, $01
	dc.b nD3, $03, $02, nRst, $01, $03, $02, nRst
	dc.b $01, $02, $01, $02, nRst, $01, $03, $02
	dc.b nRst, $01, nE3, $03, $02, nRst, $01, $03

HDN1R_Splash_Loo$92:
	dc.b $02, nRst, $01
	smpsLoop		$00, $03, HDN1R_Splash_Loo$92, Target
	dc.b $03, $02, nRst, $01, nD3

HDN1R_Splash_Loo$93:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$93, Target
	dc.b $03, $02, nRst, $01, nC3

HDN1R_Splash_Loo$94:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$94, Target
	dc.b $03, $02, nRst, $01, nBb2

HDN1R_Splash_Loo$95:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$95, Target
	dc.b $03, $02, nRst, $01, nD3

HDN1R_Splash_Loo$96:
	dc.b $03, $02, nRst, $01, $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$96, Target
	dc.b $03, $02, nRst, $01
	smpsAlterVol		$FC
	dc.b $02, $01, $02, nRst, $04
	smpsAlterVol		$06
	dc.b $03, nRst, nD3, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nD3, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nC3, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nC3, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nCs3, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nCs3, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $01, $02, nRst, $01, nD3, $02
	dc.b nRst, $03, $01, nRst, $03, $06, nRst, $09
	smpsAlterVol		$FD
	dc.b nA2

HDN1R_Splash_Loo$97:
	dc.b $03, $02, nRst, $01

HDN1R_Splash_Loo$98:
	dc.b $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loo$97, Target

HDN1R_Splash_Loo$99:
	dc.b $03
	smpsLoop		$01, $02, HDN1R_Splash_Loo$98, Target
	dc.b $02, nRst, $01, $02, nRst, $01
	smpsLoop		$02, $07, HDN1R_Splash_Loo$99, Target
	dc.b $03, $02, nRst, $01, nC2

HDN1R_Splash_Loop100:
	dc.b $03, $02, nRst, $01

HDN1R_Splash_Loop101:
	dc.b $02, nRst, $01
	smpsLoop		$00, $02, HDN1R_Splash_Loop100, Target

HDN1R_Splash_Loop102:
	dc.b $03
	smpsLoop		$01, $02, HDN1R_Splash_Loop101, Target
	dc.b $02, nRst, $01, $02, nRst, $01
	smpsLoop		$02, $07, HDN1R_Splash_Loop102, Target
	dc.b $03, $02, nRst, $01
	smpsAlterVol		$03
	dc.b nD3, $02, $01, $02, nRst, $04
	smpsAlterVol		$06
	dc.b $03, nRst, nD3, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nD3, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nC3, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nC3, nRst, $06
	smpsAlterVol		$FA
	dc.b $02, nRst, $04, $02, nRst, $07, $02, $01
	dc.b $02, nRst, $01, $02, $01, $02, nRst, $01
	dc.b nCs3, $02, $01, $02, nRst, $01
	smpsAlterVol		$06
	dc.b $03, nRst, nCs3, nRst
	smpsAlterVol		$FA
	dc.b $02, nRst, $01, $02, nRst, $01, nD3, $02
	dc.b nRst, $03, $01, nRst, $03, $06

HDN1R_Splash_Loop103:
	dc.b nRst, $4F
	smpsLoop		$00, $07, HDN1R_Splash_Loop103, Target
	dc.b nRst, $02
	smpsFMvoice		$02
	dc.b nRst, $06
	smpsAlterVol		$FD
	dc.b nB3, $05, $04, $09, nRst, $06, nC4, $05
	dc.b $04, $09, nRst, $06, nCs4, $05, $04, $03
	smpsAlterVol		$FD
	smpsJump		HDN1R_Splash_Jump4, Target

HDN1R_Splash_FM6:
	smpsFMvoice		$03
	smpsModSet	$01, $01, $01, $05
	smpsPan		panCenter
	sModOn
	dc.b nRst, $3F, nRst, nRst, nRst, nRst, nRst

HDN1R_Splash_Jump5:
	smpsAlterNote	$00
	dc.b nRst, $40, nRst, nRst, nRst, nRst, nRst
	smpsAlterNote	$E5
	dc.b nRst, $01
	smpsAlterNote	$E8
	dc.b nRst
	smpsAlterNote	$E9
	dc.b nRst
	smpsAlterNote	$EA
	dc.b nRst
	smpsAlterNote	$EB
	dc.b nRst
	smpsAlterNote	$ED
	dc.b nRst
	smpsAlterNote	$EE
	dc.b nRst
	smpsAlterNote	$F0
	dc.b nRst
	smpsAlterNote	$F1
	dc.b nRst
	smpsAlterNote	$E4
	dc.b nRst
	smpsAlterNote	$E6
	dc.b nRst
	smpsAlterNote	$E7
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $30, nRst, nRst, $55, nRst, $0B, nRst
	dc.b $55, nRst, $08
	smpsAlterNote	$12
	dc.b nRst, $01
	smpsAlterNote	$06
	dc.b nRst
	smpsAlterNote	$FC
	dc.b nRst
	smpsAlterNote	$FF
	dc.b nRst, $2D
	smpsAlterNote	$18
	dc.b nRst, $01
	smpsAlterNote	$0D
	dc.b nRst
	smpsAlterNote	$0A
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$0C
	dc.b nRst, $01
	smpsAlterNote	$07
	dc.b nRst
	smpsAlterNote	$05
	dc.b nRst
	smpsAlterNote	$FF
	dc.b nRst, $55, nRst, $08
	smpsAlterNote	$06
	dc.b nRst, $01
	smpsAlterNote	$FF
	dc.b nRst
	smpsAlterNote	$F4
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$EF
	dc.b nRst, $01
	smpsAlterNote	$0C
	dc.b nRst
	smpsAlterNote	$FD
	dc.b nRst
	smpsAlterNote	$FF
	dc.b nRst, $2D
	smpsAlterNote	$07
	dc.b nRst, $01
	smpsAlterNote	$FD
	dc.b nRst
	smpsAlterNote	$EC
	dc.b nRst
	smpsAlterNote	$FF
	dc.b nRst, $55, nRst, nRst, $1C, nG3, $02, nRst
	dc.b $0A, $03, nRst, nAb3, nRst, $06, $03, nRst
	dc.b $06, $03, nRst, $09, nBb3, $02, nRst, $0A
	dc.b $03, nRst, nC4, nRst, $06, nBb3, $03, nRst
	dc.b nBb3, $02, nRst, $01, $03, $02, nRst, $07
	dc.b nC4, $02, nRst, $0A, $03, nRst, nEb4, nRst
	dc.b nEb4, $02, nRst, $0A, $03, nRst, nF4, nRst
	dc.b $0F, $03, nRst, nF4, nRst, $0F, $02, nRst
	dc.b $0A, nG3, $02, nRst, $0A, $03, nRst, nAb3
	dc.b nRst, $06, $03, nRst, $06, $03, nRst, $09
	dc.b nBb3, $02, nRst, $0A, $03, nRst, nC4, nRst
	dc.b $0F, nBb3, $03, $02, nRst, $07, nC4, $02
	dc.b nRst, $0A, $03, nRst, nBb3, nRst, $06, $03
	dc.b nRst, $06, $02, nRst, $04, nCs4, $03, nRst
	dc.b nCs4, $02, nRst, $04, nBb3, $03, nRst, nBb3
	dc.b $02, nRst, $04, nC4, $03, nRst, $55, nRst
	dc.b nRst, $4F
	smpsJump		HDN1R_Splash_Jump5, Target

HDN1R_Splash_PSG1:
	smpsModSet	$01, $02, $00, $06
	sModOn
	smpsAlterNote	$01
	dc.b nRst, $55, nRst, nRst, $1C, nF1, $18, nE1
	dc.b $0C, nC1, nD1, nA1, nD2, nE2, nF2, $18
	dc.b nG2, nE2
	smpsSetVol	$02
	dc.b $03, nRst, $02, $01, nRst, $03, $02, nRst
	dc.b $01

HDN1R_Splash_Jump6:
	smpsAlterNote	$00
	smpsSetVol	$FE
	dc.b nF1, $03, nA1, nC2, nF2, nE2, $18, nF2
	dc.b $0C, nC2, $03, nA1, nC2, nD2, $0C, nA2
	dc.b $06, nG2, $03, nRst, nG2, $0F, nE2, $03
	dc.b nRst, $02, nD2, $03, nRst, $01, nC2, $03
	dc.b nBb1, $0C, nD2, $03, nRst, $02, nF2, $03
	dc.b nRst, $01, nG2, $03, nC2, $12, nD2, $03
	dc.b nE2

HDN1R_Splash_Loop104:
	dc.b nG2, nRst, $02, nE2, $03, nRst, $01, nD2
	dc.b $03
	smpsLoop		$00, $02, HDN1R_Splash_Loop104, Target
	dc.b nE2, $0C, nC1, $03, nE1, nG1, nC2, nE2
	dc.b $18, nF2, $0C, nC2, $03, nA1, nC2, nD2
	dc.b $0C, nA2, $06, nG2, $03, nRst, nG2, $0F
	dc.b nCs2, $03, nRst, $02, nD2, $03, nRst, $01
	dc.b nE2, $03, nF2, $0F, nD2, $03, nE2, nF2
	dc.b nG2, $0C, $03, nRst, $02, $03, nRst, $01
	dc.b nA2, $03, nBb2, $06, nG2, nE2, $09, nCs2
	dc.b $03, nD2, $0C
	smpsAlterNote	$06
	dc.b smpsNoAttack, $01
	smpsAlterNote	$05
	dc.b smpsNoAttack, nCs2
	smpsAlterNote	$06
	dc.b smpsNoAttack, nC2
	smpsAlterNote	$07
	dc.b smpsNoAttack, nB1
	smpsAlterNote	$06
	dc.b smpsNoAttack, nBb1
	smpsAlterNote	$07
	dc.b smpsNoAttack, nA1, smpsNoAttack, nAb1
	smpsAlterNote	$08
	dc.b smpsNoAttack, nG1, smpsNoAttack, nFs1, smpsNoAttack, nF1
	smpsAlterNote	$09
	dc.b smpsNoAttack, nE1
	smpsAlterNote	$08
	dc.b smpsNoAttack, nEb1
	smpsAlterNote	$00
	smpsSetVol	$01
	dc.b nD2

HDN1R_Splash_Loop105:
	dc.b $02, nRst, $01, nA1, $02, nRst, $01, nD2
	dc.b $02, nRst, $01, nE2, $06, nF2, $02, nRst
	dc.b $01, nE2, $02, nRst, $01, nD2, $02, nRst
	dc.b $19
	smpsLoop		$00, $03, HDN1R_Splash_Loop105, Target
	dc.b nCs2, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nCs2, $02, nRst, $01, nE2, $06, nG2, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nCs2, $02
	dc.b nRst, $01, nD2, $02, nRst, $03, $01, nRst
	dc.b $03, $03, $06, nRst, nE2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $07, nD2, $02, nRst, $04
	dc.b nAb1, $03, nAb2, nA1, nA2, nB1, nB2, nE2
	dc.b nE1, nF2, $02, nRst, $07, nFs2, $02, nRst
	dc.b $07, nD2, $02, nRst, $04, nE2, $02, nFs2
	dc.b $01, nAb2, $02, nA2, $01, nFs2, $02, nAb2
	dc.b $01, nA2, $02, nB2, $01, nAb2, $02, nA2
	dc.b $01, nB2, $02, nD3, $01, nE3, $03
	smpsAlterNote	$FE
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nBb2
	smpsAlterNote	$01
	dc.b smpsNoAttack, nFs2
	smpsAlterNote	$00
	dc.b nE2, $02, nRst, $07, nFs2, $02, nRst, $07
	dc.b nD2, $02, nRst, $01, nAb1, $03, nAb2, nA2
	dc.b nA1, nB2, nA2, nA1, nE2
	smpsAlterNote	$FB
	dc.b smpsNoAttack, nD2, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nBb1
	smpsAlterNote	$FD
	dc.b smpsNoAttack, nFs1
	smpsAlterNote	$00
	dc.b nF2, $02, nRst, $07, nFs2, $02, nRst, $07
	dc.b nD2, $02, nRst, $04, nF3, $02, nD3, $01
	dc.b nB2, $02, nA2, $01, nD3, $02, nB2, $01
	dc.b nA2, $02, nAb2, $01, nA2, $02, nAb2, $01
	dc.b nFs2, $02, nF2, $01, nD2, $03
	smpsAlterNote	$FD
	dc.b smpsNoAttack, nC2, $01
	smpsAlterNote	$FE
	dc.b smpsNoAttack, nAb1
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nE1
	smpsAlterNote	$01
	dc.b nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $04, nB1, $03, nB2, nC2
	dc.b nC3, nD2, nD3, nG2, nG1, nAb2, $02, nRst
	dc.b $07, nA2, $02, nRst, $07, nFs2, $02, nRst
	dc.b $04, nG2, $02, nAb2, $01, nB2, $02, nC3
	dc.b $01, nAb2, $02, nB2, $01, nC3, $02, nD3
	dc.b $01, nB2, $02, nC3, $01, nD3, $02, nF3
	dc.b $01, nG3, $03
	smpsAlterNote	$00
	dc.b smpsNoAttack, nF3, $01, smpsNoAttack, nCs3
	smpsAlterNote	$01
	dc.b smpsNoAttack, nA2
	smpsAlterNote	$00
	dc.b nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $01, nB1, $03, nB2, nC3
	dc.b nC2, nD3, nC3, nC2, nG2
	smpsAlterNote	$03
	dc.b smpsNoAttack, nFs2, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nCs2
	smpsAlterNote	$01
	dc.b smpsNoAttack, nA1
	smpsAlterNote	$00
	dc.b nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $04, nAb3, $02, nFs3, $01
	dc.b nF3, $02, nD3, $01, nF3, $02, nD3, $01
	dc.b nC3, $02, nB2, $01, nC3, $02, nB2, $01
	dc.b nAb2, $02, nFs2, $01, nE2, $03
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nD2, $01
	smpsAlterNote	$01
	dc.b smpsNoAttack, nBb1
	smpsAlterNote	$06
	dc.b smpsNoAttack, nFs1
	smpsAlterNote	$00
	smpsSetVol	$01
	dc.b nD1, $0C, nE1, nF1, nG1, $06, nA1, nD1
	dc.b $0C, nE1, nF1, nBb1, $06, nA1, nD1, $0C
	dc.b nE1, nF1, nG1, $06, nA1, nG1, $0C, nE1
	dc.b nD1

HDN1R_Splash_Loop106:
	dc.b nRst, $4E
	smpsLoop		$00, $08, HDN1R_Splash_Loop106, Target
	smpsJump		HDN1R_Splash_Jump6, Target

HDN1R_Splash_PSG2:
	smpsModSet	$01, $02, $00, $06
	sModOn
	dc.b nRst, $55, nRst, nRst, $1C, nD1

HDN1R_Splash_Loop107:
	dc.b $02, $01, $02, nRst, $10, $02, nRst, $04
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $07
	smpsLoop		$00, $02, HDN1R_Splash_Loop107, Target
	dc.b $02, $01, $02, nRst, $10, $02, nRst, $04
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $1F
	smpsSetVol	$FC
	dc.b nG2, $03, nRst, $02, $01, nRst, $03, $02
	dc.b nRst, $01

HDN1R_Splash_Jump7:
	smpsAlterNote	$00
	dc.b nRst, $0F
	smpsSetVol	$03
	dc.b nC0

HDN1R_Splash_Loop108:
	dc.b $01, nRst, nRst, nC0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop108, Target
	dc.b $02, nRst, $04
	smpsLoop		$01, $02, HDN1R_Splash_Loop108, Target
	dc.b nD0

HDN1R_Splash_Loop109:
	dc.b $01, nRst, nRst, nD0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop109, Target
	dc.b $02, nRst, $04, nE0

HDN1R_Splash_Loop110:
	dc.b $01, nRst, nRst, nE0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop110, Target
	dc.b $02, nRst, $04, nD0

HDN1R_Splash_Loop111:
	dc.b $01, nRst, nRst, nD0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop111, Target
	dc.b $02, nRst, $04, nC0

HDN1R_Splash_Loop112:
	dc.b $01, nRst, nRst, nC0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop112, Target
	dc.b $02, nRst, $04
	smpsLoop		$01, $02, HDN1R_Splash_Loop112, Target
	dc.b nE0

HDN1R_Splash_Loop113:
	dc.b $01, nRst, nRst, nE0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop113, Target
	dc.b $02, nRst, $04, nC0

HDN1R_Splash_Loop114:
	dc.b $01, nRst, nRst, nC0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop114, Target
	dc.b $02, nRst, $04
	smpsLoop		$01, $02, HDN1R_Splash_Loop114, Target
	dc.b nD0

HDN1R_Splash_Loop115:
	dc.b $01, nRst, nRst, nD0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop115, Target
	dc.b $02, nRst, $04, nE0

HDN1R_Splash_Loop116:
	dc.b $01, nRst, nRst, nE0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop116, Target
	dc.b $02, nRst, $04, nD0

HDN1R_Splash_Loop117:
	dc.b $01, nRst, nRst, nD0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop117, Target
	dc.b $02, nRst, $04, nC0

HDN1R_Splash_Loop118:
	dc.b $01, nRst, nRst, nC0, nRst, $05
	smpsLoop		$00, $02, HDN1R_Splash_Loop118, Target
	dc.b $02, nRst, $04
	smpsLoop		$01, $02, HDN1R_Splash_Loop118, Target
	dc.b $01, nRst, nRst, nC0, nRst, $05
	smpsAlterNote	$7F
	dc.b $01, nRst, nRst, nC0, nRst, nRst, nRst, nRst
	dc.b nRst, nC0, smpsNoAttack, $01
	smpsAlterNote	$12
	dc.b nRst
	smpsAlterNote	$00
	smpsSetVol	$FE
	dc.b nD1, $02, $01, $02, nRst, $10, $02, nRst
	dc.b $04, $02, nRst, $07, $02, $01, $02, nRst
	dc.b $07, $02, $01, $02, nRst, $10, $02, nRst
	dc.b $04, $02, nRst, $07, $02, $01, $02, nRst
	dc.b $01, $02, $01, $02, nRst, $01, nC1, $02
	dc.b $01, $02, nRst, $10, $02, nRst, $04, $02
	dc.b nRst, $07, $02, $01, $02, nRst, $01, $02
	dc.b $01, $02, nRst, $01, nCs1, $02, $01, $02
	dc.b nRst, $0D, $02, nRst, $01, $02, nRst, $01
	dc.b nD1, $02, nRst, $03, $01, nRst, $03, $06
	dc.b nRst, $09, nRst, $55, nRst, $08
	smpsAlterNote	$F7
	dc.b nRst, $01
	smpsAlterNote	$FB
	dc.b nRst
	smpsAlterNote	$02
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$F4
	dc.b nRst, $01
	smpsAlterNote	$F6
	dc.b nRst
	smpsAlterNote	$F9
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$FA
	dc.b nRst, $01
	smpsAlterNote	$FB
	dc.b nRst
	smpsAlterNote	$FD
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $55, nRst, $08
	smpsAlterNote	$FD
	dc.b nRst, $01
	smpsAlterNote	$01
	dc.b nRst
	smpsAlterNote	$07
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$07
	dc.b nRst, $01
	smpsAlterNote	$F6
	dc.b nRst
	smpsAlterNote	$02
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$FC
	dc.b nRst, $01
	smpsAlterNote	$02
	dc.b nRst
	smpsAlterNote	$0C
	dc.b nRst
	smpsAlterNote	$00
	dc.b $02, $01, $02, nRst, $10, $02, nRst, $04
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $07
	dc.b $02, $01, $02, nRst, $10, $02, nRst, $04
	dc.b $02, nRst, $07, $02, $01, $02, nRst, $01
	dc.b $02, $01, $02, nRst, $01, nC1, $02, $01
	dc.b $02, nRst, $10, $02, nRst, $04, $02, nRst
	dc.b $07, $02, $01, $02, nRst, $01, $02, $01
	dc.b $02, nRst, $01, nCs1, $02, $01, $02, nRst
	dc.b $0D, $02, nRst, $01, $02, nRst, $01, nD1
	dc.b $02, nRst, $03, $01, nRst, $03, $06, nRst
	dc.b $09
	smpsSetVol	$02
	dc.b $03, nRst
	smpsSetVol	$FD
	dc.b nG1, $06, nAb1, nBb1, nC2
	smpsSetVol	$03
	dc.b nEb1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b nC2, $0F
	smpsSetVol	$03
	dc.b nF1, $03, nRst
	smpsSetVol	$FD
	dc.b nD2, $06, nC2, nBb1, nC2, $18
	smpsSetVol	$03
	dc.b nG1, $03, nRst
	smpsSetVol	$FD
	dc.b nEb2, $06, nD2, nBb1, nC2, $0F
	smpsSetVol	$03
	dc.b nAb1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b nC2, $03, nD2, nEb2, $18, nD2
	smpsSetVol	$03
	dc.b nD1, $03, nRst
	smpsSetVol	$FD
	dc.b nD2, $06, nEb2, nD2, nC2
	smpsSetVol	$03
	dc.b nEb1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b nAb1, $0F
	smpsSetVol	$03
	dc.b nF1, $03, nRst
	smpsSetVol	$FD
	dc.b nBb1, $06, nC2, nD2, nC2, $18
	smpsSetVol	$03
	dc.b nG1, $03, nRst
	smpsSetVol	$FD
	dc.b nEb2, $06, nD2, nBb1, nC2
	smpsSetVol	$03
	dc.b nF1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b nF2, $09, $06, nAb2, nEb2, nD2, nF2, nC2
	dc.b $0C, nRst, $03
	smpsSetVol	$03
	dc.b nG1, $02, nRst, $01, $02, nRst, $04, nC2

HDN1R_Splash_Loop119:
	dc.b $03, $02, nRst, $10, $02, nRst, $04, $02
	dc.b nRst, $07, $02, $01, $02, nRst, $07
	smpsLoop		$00, $02, HDN1R_Splash_Loop119, Target
	dc.b $03, $02, nRst, $10, $02, nRst, $04, $02
	dc.b nRst, $07, $02, $01, $02, nRst, $55, nRst
	dc.b $06
	smpsSetVol	$FD
	smpsJump		HDN1R_Splash_Jump7, Target

HDN1R_Splash_PSG3:
	smpsModSet	$01, $02, $00, $06
	sModOn
	dc.b nRst, $3F, nRst, nRst, nRst, nRst, nRst

HDN1R_Splash_Jum$8:
	smpsAlterNote	$00
	dc.b nRst, $40, nRst, nRst, nRst, nRst, nRst
	smpsAlterNote	$10
	dc.b nRst, $01
	smpsAlterNote	$11
	dc.b nRst, nRst
	smpsAlterNote	$12
	dc.b nRst
	smpsAlterNote	$13
	dc.b nRst
	smpsAlterNote	$14
	dc.b nRst
	smpsAlterNote	$16
	dc.b nRst, nRst
	smpsAlterNote	$4A
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst, nRst, nRst
	smpsAlterNote	$00
	dc.b nRst, $30, nRst, nRst, $55, nRst, $0B, nRst
	dc.b $55, nRst, $08
	smpsAlterNote	$F2
	dc.b nRst, $01
	smpsAlterNote	$F9
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$EF
	dc.b nRst, $01
	smpsAlterNote	$F1
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst
	smpsAlterNote	$FF
	dc.b nRst, $2D
	smpsAlterNote	$F7
	dc.b nRst, $01
	smpsAlterNote	$F9
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $55, nRst, $08
	smpsAlterNote	$FB
	dc.b nRst, $01
	smpsAlterNote	$02
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst
	smpsAlterNote	$FF
	dc.b nRst, $2D
	smpsAlterNote	$0C
	dc.b nRst, $01
	smpsAlterNote	$F2
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $2D
	smpsAlterNote	$FA
	dc.b nRst, $01
	smpsAlterNote	$04
	dc.b nRst
	smpsAlterNote	$7F
	dc.b nRst
	smpsAlterNote	$00
	dc.b nRst, $55, nRst, nRst, $16, nG0, $03, nRst
	dc.b nD1, $02, nRst, $01, nG0, $03, nRst, nG0
	dc.b $02, nRst, $01, nD1, $03, nRst, nEb1

HDN1R_Splash_Loop120:
	dc.b nRst, nAb0, $02, nRst, $01, nEb1, $03
	smpsLoop		$00, $02, HDN1R_Splash_Loop120, Target
	dc.b nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0
	dc.b $03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b $03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b $02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b $01, nG1, $03, nRst, nAb1, nRst, nAb1, $02
	dc.b nRst, $01, nEb1, $03, nRst, nEb1, $02, nRst
	dc.b $01, nAb1, $03, nRst, nBb1, nRst, nF1, $02
	dc.b nRst, $01, $03, nRst, nF1, $02, nRst, $01
	dc.b nBb1, $03, nRst, nBb1, nRst, nF1, $02, nRst
	dc.b $01, $03, nRst, nF1, $02, nRst, $01, nBb1
	dc.b $02, nRst, $01, nF1, $02, nRst, $01, nG0
	dc.b $03, nRst, nD1, $02, nRst, $01, nG0, $03
	dc.b nRst, nG0, $02, nRst, $01, nD1, $03, nRst
	dc.b nEb1

HDN1R_Splash_Loop121:
	dc.b nRst, nAb0, $02, nRst, $01, nEb1, $03
	smpsLoop		$00, $02, HDN1R_Splash_Loop121, Target
	dc.b nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0
	dc.b $03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b $03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b $02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b $01, nG1, $03, nRst, nF1, nRst, nBb0, $02
	dc.b nRst, $01, nF1, $03, nRst, nBb0, $02, nRst
	dc.b $01, nF1, $02, nRst, $01, nBb0, $02, nRst
	dc.b $01, nAb1, $03, nRst, nAb1, $02, nRst, $01
	dc.b nCs1, $02, nRst, $01, nF1, $03, nRst, nF1
	dc.b $02, nRst, $01, nBb0, $02, nRst, $01, nG1
	dc.b $03, nRst, nC1

HDN1R_Splash_Loop122:
	dc.b $02, nRst, $01, $02, nRst, $04
	smpsLoop		$00, $02, HDN1R_Splash_Loop122, Target
	dc.b nG1

HDN1R_Splash_Loop123:
	dc.b $03, $02, nRst, $10, $02, nRst, $04, $02
	dc.b nRst, $07, $02, $01, $02, nRst, $07
	smpsLoop		$00, $02, HDN1R_Splash_Loop123, Target
	dc.b $03, $02, nRst, $10, $02, nRst, $04, $02
	dc.b nRst, $07, $02, $01, $02, nRst, $55, nRst
	dc.b $06
	smpsJump		HDN1R_Splash_Jum$8, Target

HDN1R_Splash_DAC:
	smpsStop

HDN1R_Splash_Patches:

	; Patch $00
	; $3F
	; $00, $32, $00, $76,	$1F, $1F, $1F, $1F
	; $0E, $0E, $0E, $10,	$03, $03, $03, $03
	; $08, $58, $38, $38,	$99, $8B, $8A, $8A
	smpsVcAlgorithm	$07
	smpsVcFeedback	$07
	smpsVcDetune	$00, $00, $03, $07
	smpsVcCoarseFreq	$00, $00, $02, $06
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0E, $0E, $0E, $10
	smpsVcDecayRate2	$00, $03, $05, $03
	smpsVcDecayLevel	$03, $03, $03, $03
	smpsVcReleaseRate	$08, $08, $08, $08
	smpsVcTotalLevel	$19, $0A, $0B, $0A

	; Patch $01
	; $39
	; $06, $01, $01, $01,	$9F, $1F, $1F, $5F
	; $0A, $09, $09, $04,	$08, $07, $07, $07
	; $24, $24, $24, $28,	$22, $24, $26, $8A
	smpsVcAlgorithm	$01
	smpsVcFeedback	$07
	smpsVcDetune	$00, $00, $00, $00
	smpsVcCoarseFreq	$06, $01, $01, $01
	smpsVcRateScale	$02, $00, $00, $01
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0A, $09, $09, $04
	smpsVcDecayRate2	$02, $02, $02, $02
	smpsVcDecayLevel	$08, $07, $07, $07
	smpsVcReleaseRate	$04, $04, $04, $08
	smpsVcTotalLevel	$22, $26, $24, $0A

	; Patch $02
	; $3A
	; $64, $60, $60, $30,	$9D, $9D, $50, $4C
	; $04, $06, $04, $05,	$1F, $05, $01, $01
	; $A8, $25, $25, $55,	$7F, $06, $14, $8E
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$06, $06, $06, $03
	smpsVcCoarseFreq	$04, $00, $00, $00
	smpsVcRateScale	$02, $01, $02, $01
	smpsVcAttackRate	$1D, $10, $1D, $0C
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$04, $04, $06, $05
	smpsVcDecayRate2	$0A, $02, $02, $05
	smpsVcDecayLevel	$1F, $01, $05, $01
	smpsVcReleaseRate	$08, $05, $05, $05
	smpsVcTotalLevel	$7F, $14, $06, $0E

	; Patch $03
	; $3D
	; $72, $31, $31, $71,	$1A, $1C, $1A, $1C
	; $0E, $0A, $0E, $0C,	$00, $00, $00, $01
	; $38, $08, $28, $38,	$1C, $88, $8E, $88
	smpsVcAlgorithm	$05
	smpsVcFeedback	$07
	smpsVcDetune	$07, $03, $03, $07
	smpsVcCoarseFreq	$02, $01, $01, $01
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1A, $1A, $1C, $1C
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0E, $0E, $0A, $0C
	smpsVcDecayRate2	$03, $02, $00, $03
	smpsVcDecayLevel	$00, $00, $00, $01
	smpsVcReleaseRate	$08, $08, $08, $08
	smpsVcTotalLevel	$1C, $0E, $08, $08

	; Patch $04
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1C, $12, $1A, $8C
	smpsVcAlgorithm	$01
	smpsVcFeedback	$07
	smpsVcDetune	$00, $06, $02, $02
	smpsVcCoarseFreq	$03, $01, $02, $01
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $12, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$05, $05, $05, $0B
	smpsVcDecayRate2	$01, $01, $01, $01
	smpsVcDecayLevel	$00, $00, $00, $00
	smpsVcReleaseRate	$00, $00, $08, $08
	smpsVcTotalLevel	$1C, $1A, $12, $0C

	; Patch $05
	; $39
	; $33, $01, $51, $01,	$5F, $5F, $5F, $5F
	; $0F, $00, $00, $0D,	$01, $01, $01, $01
	; $33, $1A, $1A, $17,	$1E, $19, $16, $84
	smpsVcAlgorithm	$01
	smpsVcFeedback	$07
	smpsVcDetune	$03, $05, $00, $00
	smpsVcCoarseFreq	$03, $01, $01, $01
	smpsVcRateScale	$01, $01, $01, $01
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0F, $00, $00, $0D
	smpsVcDecayRate2	$03, $01, $01, $01
	smpsVcDecayLevel	$01, $01, $01, $01
	smpsVcReleaseRate	$03, $0A, $0A, $07
	smpsVcTotalLevel	$1E, $16, $19, $04
