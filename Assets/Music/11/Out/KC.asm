Target	EQU	$40000

Maniax_Header:
	smpsHeaderVoice	Maniax_Patches, Target
	smpsHeaderChan	6, 3
	smpsHeaderTempo	$01, $55
	smpsHeaderFM	Maniax_FM1, Target, $F4, $12
	smpsHeaderFM	Maniax_FM2, Target, $00, $0B
	smpsHeaderFM	Maniax_FM3, Target, $F4, $14
	smpsHeaderFM	Maniax_FM4, Target, $F4, $08
	smpsHeaderFM	Maniax_FM5, Target, $F4, $20
	smpsHeaderFM	Maniax_FM6, Target, $F4, $20
	smpsHeaderPSG	Maniax_PSG1, Target, $D0, $01, $00, $03
	smpsHeaderPSG	Maniax_PSG2, Target, $D0, $03, $00, $06
	smpsHeaderPSG	Maniax_PSG3, Target, $00, $03, $00, $04
	smpsHeaderPWM	Maniax_PWM1, Target, $00, $AA
	smpsHeaderPWM	Maniax_FM6, Target, $00, $AA
	smpsHeaderPWM	Maniax_FM6, Target, $00, $AA
	smpsHeaderPWM	Maniax_FM6, Target, $00, $AA

Maniax_FM1:
	smpsFMvoice		$02
	smpsPan		panRight
	smpsCall	Maniax_Call1,Target
	smpsPan		panCenter

Maniax_Loop1:
	smpsPan		panLeft
	dc.b nE7, $04
	smpsPan		panRight
	dc.b nC7
	smpsAlterVol		$01
	smpsLoop		$00, $0D, Maniax_Loop1,Target
	dc.b nE7, $04, nRst, $14
	smpsAlterVol		$EB
	smpsPan		panCenter
	dc.b nRst, $40, nRst, nRst, nRst, nRst, nRst

Maniax_Jump1:
	smpsFMvoice		$06
	smpsModSet	$0D, $01, $07, $04
	smpsAlterPitch	$F4
	dc.b nRst, $20
	smpsCall		Maniax_Call2,Target
	dc.b nC6, $38
	smpsCall		Maniax_Call2,Target
	dc.b nC6, $08, $08, nE6
	smpsAlterPitch	$0C
	smpsFMvoice		$06
	smpsAlterPitch	$F4
	dc.b nD6, $34, smpsNoAttack, $34, nC6, $08, nD6, nE6
	dc.b $38, smpsNoAttack, $38, nC6, $08, nC6, nE6, nEb6
	dc.b $34, smpsNoAttack, $34, nC6, $08, nEb6, nD6, $1C
	dc.b smpsNoAttack, $1C
	smpsFMvoice		$05
	smpsAlterPitch	$F4
	smpsAlterVol		$0A
	dc.b nRst, $08, nE7, $0C, nRst, $04
	smpsNoteFill	$0B
	dc.b nE7, $08, nF7, nE7, nG7
	smpsNoteFill	$14
	dc.b nE7, $10
	smpsNoteFill	$0B
	dc.b nC7, $08
	smpsNoteFill	$00
	smpsAlterVol		$F6
	smpsAlterPitch	$18
	smpsJump		Maniax_Jump1,Target

Maniax_Call1:
	dc.b nA6, $04, nF6, nA6, nF6, nB6, nG6, nB6
	dc.b nG6, nC7, nA6, nC7, nA6, nD7, nB6, nD7
	dc.b nB6
	smpsReturn

Maniax_Call2:
	dc.b nC7, $08, nA6, $10, nC7, $08, nB6, $10
	dc.b nC7, $08, nB6, $10, nG6, $30, nA6, $08
	dc.b nE7, nD7, $10, nC7, $08, nB6, $10, nC7
	dc.b $08, nB6, $10, nG6, $38, nC7, $08, nA6
	dc.b $10, nC7, $08, nB6, $10, nC7, $08, nB6
	dc.b $10, nG6, $30, nA6, $08, $08, nF6, $10
	dc.b nA6, $08, nG6, $10, nA6, $08, nG6, $10
	smpsReturn

Maniax_FM2:
	smpsFMvoice		$00
	smpsE2		$01
	dc.b nRst, $08, nA2, nA3, nA2, nBb2, nBb3, nB2
	dc.b nB3
	smpsNoteFill	$04
	smpsFMvoice		$01

Maniax_Loop2:
	dc.b nC3, $08
	smpsLoop		$00, $18, Maniax_Loop2,Target
	smpsNoteFill	$00
	dc.b nC3, $04, nRst, nC3, $08, nA2, $04, nRst
	dc.b nA2, $08, nBb2, $04, nRst, nBb2, $08, nB2
	dc.b $04, nRst, nB2, $08
	smpsNoteFill	$04

Maniax_Loop3:
	dc.b nC3, $08
	smpsLoop		$00, $1D, Maniax_Loop3,Target
	smpsNoteFill	$00
	dc.b nC3, nD3, nE3

Maniax_Jump2:
	smpsFMvoice		$01
	smpsCall		Maniax_Call3,Target
	smpsCall		Maniax_Call4,Target
	smpsNoteFill	$00
	dc.b nC3, nD3, nE3
	smpsCall		Maniax_Call3,Target
	smpsCall		Maniax_Call4,Target
	dc.b nC3, nC3, nC3
	smpsNoteFill	$00
	smpsFMvoice		$00
	dc.b nBb2, $18, nA2, nG2, nF2, nE2, $08, nRst
	dc.b nD2, nRst, nA2, $18, nB2, nC3, nD3, nE3
	dc.b $08, nRst, nA3, nRst, nAb3, $18, nG3, nF3
	dc.b nEb3, nD3, $08, nRst, nC3, nRst, nG2, $18
	dc.b nD3, nG2, nG3, $08, nE2, nE3, nF2, nF3
	dc.b nG2, nG3
	smpsNoteFill	$04
	smpsE2		$01
	smpsJump		Maniax_Jump2,Target

Maniax_Call3:
	smpsNoteFill	$04
	dc.b nF3, $08, nF3, nF3, nF3, nF3, nF3, nF3
	smpsNoteFill	$00
	dc.b nF3
	smpsNoteFill	$04
	dc.b nE3, nE3, nE3, nE3, nE3
	smpsNoteFill	$00
	dc.b nC3, nD3, nE3
	smpsNoteFill	$04
	dc.b nF3, nF3, nF3, nF3, nF3, nF3, nF3
	smpsNoteFill	$00
	dc.b nF3
	smpsNoteFill	$04
	dc.b nE3, nE3, nE3, nE3, nE3
	smpsNoteFill	$00
	dc.b nC3, nD3, nE3
	smpsReturn

Maniax_Call4:
	smpsNoteFill	$04
	dc.b nF3, nF3, nF3, nF3, nF3, nF3, nF3
	smpsNoteFill	$00
	dc.b nF3
	smpsNoteFill	$04
	dc.b nE3, nE3, nE3, nE3, nE3, nE3, nE3
	smpsNoteFill	$00
	dc.b nE3
	smpsNoteFill	$04
	dc.b nD3, nD3, nD3, nD3, nD3, nD3, nD3
	smpsNoteFill	$00
	dc.b nD3
	smpsNoteFill	$04
	dc.b nC3, nC3, nC3, nC3, nC3
	smpsReturn

Maniax_FM3:
	smpsFMvoice		$02
	smpsPan		panLeft
	smpsCall		Maniax_Call1,Target
	smpsFMvoice		$08
	smpsPan		panCenter
	smpsAlterPitch	$E8
	smpsAlterVol		$FE
	dc.b nRst, $01

Maniax_Loop4:
	dc.b nC6, $01, smpsNoAttack, nB5, $0F, nRst, $08, nBb5
	dc.b $01, smpsNoAttack, nA5, $0F, nRst, $08
	smpsLoop		$00, $02, Maniax_Loop4,Target
	dc.b nC6, $01, smpsNoAttack, nB5, $07, nRst, $08, nBb5
	dc.b $01, smpsNoAttack, nA5, $07, nRst, $08, nCs6, $01
	dc.b smpsNoAttack, nC6, $0F, nRst, $08, nC6, $01, smpsNoAttack
	dc.b nB5, $0F, nRst, $08, nBb5, $01, smpsNoAttack, nA5
	dc.b $10, smpsNoAttack, $3B, nRst, $04

Maniax_Loop5:
	dc.b nBb5, $01, smpsNoAttack, nA5, $0F, nRst, $08, nC6
	dc.b $01, smpsNoAttack, nB5, $0F, nRst, $08, nCs6, $01
	dc.b smpsNoAttack, nC6, $07, nRst, $08
	smpsLoop		$00, $02, Maniax_Loop5,Target
	dc.b nCs6, $01, smpsNoAttack, nC6, $0F, nRst, $08, nC6
	dc.b $01, smpsNoAttack, nB5, $28, smpsNoAttack, $3E
	smpsAlterVol		$02
	smpsAlterPitch	$18

Maniax_Jump3:
	smpsFMvoice		$05
	smpsAlterPitch	$E8
	smpsCall		Maniax_Call5,Target
	dc.b nA6
	smpsCall		Maniax_Call5,Target
	dc.b nE7
	smpsCall		Maniax_Call5,Target
	dc.b nA6, nRst, $24, nRst, nC7, $04, nRst, $0C
	dc.b nA6, $10, nG6, $04, nRst, nA6, nRst, nC7
	dc.b nRst
	dc.b smpsModOff
	smpsFMvoice		$05
	smpsCall		Maniax_Call6,Target
	dc.b nG6, $04, nA6, nC7, $08, nA6
	smpsCall		Maniax_Call6,Target
	dc.b nG6, $04, nA6, nC7, $08, nE7
	smpsCall		Maniax_Call6,Target
	dc.b nG6, $04, nA6, nC7, $08, nA6
	smpsAlterVol		$06
	dc.b nC5, nA4, $04, nRst, $16, nRst
	smpsAlterVol		$FA
	dc.b nE7, $08, nRst, nC7, nRst, nA6, nA6, nA6
	dc.b $04, nRst, nC7, nRst, nE7, nRst
	smpsAlterPitch	$18
	smpsFMvoice		$07
	smpsPan		panCenter
	smpsNoteFill	$1E
	smpsAlterVol		$06
	dc.b nF5, $18, $18, $18, $18, $08, nRst, nF5
	dc.b nRst, nE5, $18, $18, $18, $18, $08, nRst
	dc.b nE5, nRst, nEb5, $18, $18, $18, $18, $08
	dc.b nRst, nEb5, nRst, nA5, $18, $18, $18, $18
	dc.b $08, nRst, nA5, nRst
	smpsAlterVol		$FA
	smpsNoteFill	$00
	smpsJump		Maniax_Jump3,Target

Maniax_Call5:
	dc.b nRst, $34, nRst, nG6, $04, nA6, nC7, $08
	smpsReturn

Maniax_Call6:
	smpsAlterVol		$06
	dc.b nE5, $08, nC5, $04, nRst, $12, nRst, nE5
	dc.b $08, nC5, $04, nRst, nD5, $08, nB4, $04
	dc.b nRst, $0E, nRst
	smpsAlterVol		$FA
	smpsReturn

Maniax_FM4:
	smpsFMvoice		$08
	dc.b nRst, $20, nRst
	smpsPan		panLeft
	smpsAlterPitch	$E8
	smpsAlterVol		$0A

Maniax_Loop6:
	dc.b nAb5, $01, smpsNoAttack, nG5, $0F, nRst, $08, nFs5
	dc.b $01, smpsNoAttack, nF5, $0F, nRst, $08
	smpsLoop		$00, $02, Maniax_Loop6,Target
	dc.b nAb5, $01, smpsNoAttack, nG5, $07, nRst, $08, nFs5
	dc.b $01, smpsNoAttack, nF5, $07, nRst, $08, nBb5, $01
	dc.b smpsNoAttack, nA5, $0F, nRst, $08, nAb5, $01, smpsNoAttack
	dc.b nG5, $0F, nRst, $08, nFs5, $01, smpsNoAttack, nF5
	dc.b $10, smpsNoAttack, $3C, nRst, $04

Maniax_Loop7:
	dc.b nFs5, $01, smpsNoAttack, nF5, $0F, nRst, $08, nAb5
	dc.b $01, smpsNoAttack, nG5, $0F, nRst, $08, nBb5, $01
	dc.b smpsNoAttack, nA5, $07, nRst, $08
	smpsLoop		$00, $02, Maniax_Loop7,Target
	dc.b nBb5, $01, smpsNoAttack, nA5, $0F, nRst, $08, nAb5
	dc.b $01, smpsNoAttack, nG5, $28, smpsNoAttack, $3F
	smpsAlterVol		$F6
	smpsAlterPitch	$18
	dc.b smpsModOff

Maniax_Jump4:
	smpsFMvoice		$05
	smpsAlterPitch	$E8
	smpsAlterVol		$18
	smpsPan		panLeft
	smpsAlterVol		$FD
	smpsCall		Maniax_Call7,Target
	dc.b nD5, nD5, nE5, nE5, nC5, nC5, nA4, nA4
	dc.b nF4, nF4, nD5, nD5, nB4, nB4, nG4, nG4
	dc.b nD5, nD5
	smpsCall		Maniax_Call7,Target
	dc.b nE4, nE4, nC5, nC5, nA4, nA4, nF4, nF4
	dc.b nD4, nD4, nB4, nB4
	smpsAlterVol		$03
	smpsAlterPitch	$18
	smpsAlterPitch	$F4
	smpsFMvoice		$04
	dc.b nG6, $10, nA6, nB6
	smpsAlterVol		$F9
	dc.b nC7, $28, smpsNoAttack, $28, nD7, $10, nB6, nG6
	dc.b nC7, $28, smpsNoAttack, $28, nB6, $10, nG6, nB6
	dc.b nC7, $28, smpsNoAttack, $28, nD7, $10, nB6, nG6
	dc.b nC7, $40, smpsNoAttack, $40
	smpsAlterPitch	$0C
	smpsAlterVol		$07
	smpsAlterVol		$E8
	smpsFMvoice		$07
	smpsNoteFill	$1E
	smpsPan		panCenter
	smpsAlterVol		$12
	dc.b nD5, $18, $18, $18, $18, $08, nRst, nD5
	dc.b nRst, nC5, $18, $18, $18, $18, $08, nRst
	dc.b nC5, nRst, nC5, $18, $18, $18, $18, $08
	dc.b nRst, nC5, nRst, nF5, $18, $18, $18, $18
	dc.b $08, nRst, nF5, nRst
	smpsAlterVol		$EE
	smpsNoteFill	$00
	smpsJump		Maniax_Jump4,Target

Maniax_Call7:
	dc.b nE5, $08, nE5, nC5, nC5, nA4, nA4, nF4
	dc.b nF4, nD5, nD5, nB4, nB4, nG4, nG4
	smpsReturn

Maniax_FM5:
	smpsFMvoice		$03
	dc.b nRst, $20, nRst
	smpsFMvoice		$08
	smpsPan		panRight
	smpsAlterPitch	$E8
	smpsAlterVol		$F2

Maniax_Loop8:
	dc.b nF5, $01, smpsNoAttack, nE5, $0F, nRst, $08, nEb5
	dc.b $01, smpsNoAttack, nD5, $0F, nRst, $08
	smpsLoop	$00, $02, Maniax_Loop8,Target
	dc.b nF5, $01, smpsNoAttack, nE5, $07, nRst, $08, nEb5
	dc.b $01, smpsNoAttack, nD5, $07, nRst, $08, nFs5, $01
	dc.b smpsNoAttack, nF5, $0F, nRst, $08, nF5, $01, smpsNoAttack
	dc.b nE5, $0F, nRst, $08, nEb5, $01, smpsNoAttack, nD5
	dc.b $10, smpsNoAttack, $3C, nRst, $04

Maniax_Loop9:
	dc.b nEb5, $01, smpsNoAttack, nD5, $0F, nRst, $08, nF5
	dc.b $01, smpsNoAttack, nE5, $0F, nRst, $08, nFs5, $01
	dc.b smpsNoAttack, nF5, $07, nRst, $08
	smpsLoop		$00, $02, Maniax_Loop9,Target
	dc.b nFs5, $01, smpsNoAttack, nF5, $0F, nRst, $08, nF5
	dc.b $01, smpsNoAttack, nE5, $28, smpsNoAttack, $3F
	smpsAlterPitch	$18
	smpsAlterVol		$0E

Maniax_Jump5:
	smpsFMvoice		$05
	smpsAlterPitch	$E8
	smpsPan		panRight
	smpsAlterVol		$FD
	smpsCall		Maniax_Call8,Target
	dc.b nD5, nD5, nE5, nE5, nC5, nC5, nA4, nA4
	dc.b nF4, nF4, nD5, nD5, nB4, nB4, nG4, nG4
	dc.b nD5, nD5
	smpsCall		Maniax_Call8,Target
	dc.b nE4, nE4, nC5, nC5, nA4, nA4, nF4, nF4
	dc.b nD4, nD4, nB4, nB4
	smpsAlterPitch	$18
	smpsAlterVol		$03
	smpsAlterPitch	$F4
	smpsFMvoice		$04
	smpsAlterNote	$02
	dc.b nG6, $10, nA6, nB6
	smpsAlterVol		$F9
	dc.b nC7, $28, smpsNoAttack, $28, nD7, $10, nB6, nG6
	dc.b nC7, $28, smpsNoAttack, $28, nB6, $10, nG6, nB6
	dc.b nC7, $28, smpsNoAttack, $28, nD7, $10, nB6, nG6
	dc.b nC7, $40, smpsNoAttack, $40
	smpsAlterPitch	$0C
	smpsAlterNote	$00
	smpsFMvoice		$04
	smpsAlterPitch	$F4
	smpsAlterVol		$FA

Maniax_Loop10:
	dc.b nBb6, $08, nF6, nD7, nF6, nBb6, nF6, nD7
	dc.b nF6
	smpsLoop		$00, $02, Maniax_Loop10,Target

Maniax_Loop11:
	dc.b nA6, nE6, nC7, nE6, nA6, nE6, nC7, nE6
	smpsLoop		$00, $02, Maniax_Loop11,Target

Maniax_Loop12:
	dc.b nAb6, nEb6, nC7, nEb6, nAb6, nEb6, nC7, nEb6
	smpsLoop		$00, $02, Maniax_Loop12,Target

Maniax_Loop13:
	dc.b nC7, nA6, nE7, nA6, nC7, nA6, nE7, nA6
	smpsLoop		$00, $02, Maniax_Loop13,Target
	smpsAlterVol		$0D
	smpsAlterPitch	$0C
	smpsJump		Maniax_Jump5,Target

Maniax_Call8:
	dc.b nE5, $08, nE5, nC5, nC5, nA4, nA4, nF4
	dc.b nF4, nD5, nD5, nB4, nB4, nG4, nG4
	smpsReturn
	
Maniax_FM6:
	smpsStop

Maniax_PSG1:
	smpsPSGvoice	$05
	smpsModSet	$0E, $01, $01, $03
	dc.b nRst, $40
	smpsNoteFill	$10
	dc.b nE5, $18, nD5, nE5, nD5, nE5, $08, nRst
	dc.b nD5, nRst, nF5, $18, nE5
	smpsNoteFill	$00
	dc.b nD5, $28, smpsNoAttack, $28
	smpsNoteFill	$10
	dc.b nD5, $18, nE5, nF5, $10, nD5, $18, nE5
	dc.b nF5, $10, $18
	smpsNoteFill	$00
	dc.b nE5, $34, smpsNoAttack, $34
	dc.b smpsModOff

Maniax_Loop15:
	smpsPSGvoice	$01

Maniax_Loop14:
	dc.b nRst, $10, nC6, $04, nRst, $14, nC6, $08
	dc.b nRst, $20, nB5, $04, nRst, $14, nB5, $08
	dc.b nRst, $10
	smpsLoop		$01, $03, Maniax_Loop14,Target
	dc.b nRst, $10, nA5, $04, nRst, $14, nA5, $08
	dc.b nRst, $20, nG5, $04, nRst, $14, nG5, $08
	dc.b nRst, $10
	smpsLoop		$00, $02, Maniax_Loop15,Target
	smpsPSGvoice	$05
	dc.b nBb6, $18, nA6, nG6, nF6, nE6, $08, nRst
	dc.b nD6, nRst, nA5, $18, nB5, nC6, nD6, nE6
	dc.b $08, nRst, nA6, nRst, nAb6, $18, nG6, nF6
	dc.b nEb6, nD6, $10, nC6, $08, nRst, nRst, $08
	dc.b nG6, nA6, nG6, $10, $08, nA6, nRst, $10
	smpsSetVol	$01
	dc.b nA5, $18, $08, nRst, nA5, nRst
	smpsSetVol	$FF
	smpsPSGvoice	$03
	smpsJump		Maniax_Loop15,Target

Maniax_PSG2:
	dc.b nRst, $40
	smpsSetVol	$FE

Maniax_Loop16:
	smpsNoteFill	$06
	dc.b nC7, $08, nB6, nA6, nG6, nC7, nB6, nA6
	dc.b nG6
	smpsLoop		$00, $08, Maniax_Loop16,Target
	smpsNoteFill	$00

Maniax_Loop18:
	smpsPSGvoice	$01

Maniax_Loop17:
	dc.b nRst, $10, nE6, $04, nRst, $14, nE6, $08
	dc.b nRst, $20, nD6, $04, nRst, $14, nD6, $08
	dc.b nRst, $10
	smpsLoop		$01, $03, Maniax_Loop17,Target
	dc.b nRst, $10, nC6, $04, nRst, $14, nC6, $08
	dc.b nRst, $20, nB5, $04, nRst, $14, nB5, $08
	dc.b nRst, $10
	smpsLoop		$00, $02, Maniax_Loop18,Target
	dc.b nD6, $34, smpsNoAttack, $34, nC6, $08, nD6, nE6
	dc.b $38, smpsNoAttack, $38, nC6, $08, nC6, nE6, nEb6
	dc.b $34, smpsNoAttack, $34, nC6, $08, nEb6, nD6
	smpsPSGvoice	$05
	dc.b nC5, $18, $18, $18, $18, $08, nRst, nC5
	dc.b nRst
	smpsPSGvoice	$03
	smpsJump		Maniax_Loop18,Target

Maniax_PSG3:
	smpsPSGform	$E7
	smpsNoteFill	$06
	dc.b nA5, $10, $10, $10

Maniax_Jump6:
	dc.b $08
	smpsJump		Maniax_Jump6,Target

Maniax_PWM1:
	dc.b nRst, $08, dKick, dSnare, dKick, dKick, dSnare, dSnare
	dc.b dSnare

Maniax_Loop19:
	dc.b dKick, $10, dSnare, $08, dKick, $10, $08, dSnare
	dc.b $10
	smpsLoop		$00, $07, Maniax_Loop19,Target
	dc.b dKick, $10, dSnare, $08, dKick, $10, dSnare, $08
	dc.b $08, $08

Maniax_Loop20:
	dc.b dKick, $10, dSnare, $08, dKick, $10, $08, dSnare
	dc.b $10
	smpsLoop		$00, $07, Maniax_Loop20,Target
	dc.b dKick, $10, dSnare, $08, dKick, $10, dSnare, $08
	dc.b $08, $08
	smpsLoop		$01, $02, Maniax_Loop20,Target
	smpsJump		Maniax_Loop20,Target

Maniax_Patches:
	dc.b	$08, $0A, $70, $30, $00, $1F, $1F, $5F, $5F, $12, $0E, $0A, $0A, $00, $04, $04, $03, $2F, $2F, $2F, $2F, $24, $2D, $13, $80
	dc.b	$20, $36, $35, $30, $31, $DF, $DF, $9F, $9F, $07, $06, $09, $06, $07, $06, $06, $08, $20, $10, $10, $F8, $19, $37, $13, $80
	dc.b	$36, $0F, $01, $01, $01, $1F, $1F, $1F, $1F, $12, $11, $0E, $00, $00, $0A, $07, $09, $FF, $0F, $1F, $0F, $18, $80, $80, $80
	dc.b	$3D, $01, $02, $02, $02, $14, $0E, $8C, $0E, $08, $05, $02, $05, $00, $0D, $0D, $0D, $1F, $1F, $1F, $1F, $1A, $80, $80, $80
	dc.b	$2C, $72, $78, $34, $34, $1F, $12, $1F, $12, $00, $0A, $00, $0A, $00, $00, $00, $00, $0F, $1F, $0F, $1F, $16, $80, $17, $80
	dc.b	$2C, $74, $74, $34, $34, $1F, $12, $1F, $1F, $00, $00, $00, $00, $00, $01, $00, $01, $0F, $3F, $0F, $3F, $16, $80, $17, $80
	dc.b	$04, $72, $42, $32, $32, $12, $12, $12, $12, $00, $08, $00, $08, $00, $08, $00, $08, $0F, $1F, $0F, $1F, $23, $80, $23, $80
	dc.b	$3D, $01, $02, $02, $02, $10, $50, $50, $50, $07, $08, $08, $08, $01, $00, $00, $00, $20, $17, $17, $17, $1C, $80, $80, $80
	dc.b	$2C, $74, $74, $34, $34, $1F, $12, $1F, $1F, $00, $07, $00, $07, $00, $07, $00, $07, $00, $38, $00, $38, $16, $80, $17, $80
	even
	; Patch $00
	; $08
	; $0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$24, $2D, $13, $80
	;spAlgorithm	$00
	;spFeedback	$01
	;spDetune	$00, $03, $07, $00
	;spMultiple	$0A, $00, $00, $00
	;spRateScale	$00, $01, $00, $01
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$12, $0A, $0E, $0A
	;spSustainLv	$02, $02, $02, $02
	;spDecayRt	$00, $04, $04, $03
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$24, $13, $2D, $00

	; Patch $01
	; $20
	; $36, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $07, $06, $09, $06,	$07, $06, $06, $08
	; $20, $10, $10, $F8,	$19, $37, $13, $80
	;spAlgorithm	$00
	;spFeedback	$04
	;spDetune	$03, $03, $03, $03
	;spMultiple	$06, $00, $05, $01
	;spRateScale	$03, $02, $03, $02
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$07, $09, $06, $06
	;spSustainLv	$02, $01, $01, $0F
	;spDecayRt	$07, $06, $06, $08
	;spReleaseRt	$00, $00, $00, $08
	;spTotalLv	$19, $13, $37, $00

	; Patch $02
	; $36
	; $0F, $01, $01, $01,	$1F, $1F, $1F, $1F
	; $12, $11, $0E, $00,	$00, $0A, $07, $09
	; $FF, $0F, $1F, $0F,	$18, $80, $80, $80
	;spAlgorithm	$06
	;spFeedback	$06
	;spDetune	$00, $00, $00, $00
	;spMultiple	$0F, $01, $01, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$12, $0E, $11, $00
	;spSustainLv	$0F, $01, $00, $00
	;spDecayRt	$00, $07, $0A, $09
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$18, $00, $00, $00

	; Patch $03
	; $3D
	; $01, $02, $02, $02,	$14, $0E, $8C, $0E
	; $08, $05, $02, $05,	$00, $0D, $0D, $0D
	; $1F, $1F, $1F, $1F,	$1A, $80, $80, $80
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $02, $02, $02
	;spRateScale	$00, $02, $00, $00
	;spAttackRt	$14, $0C, $0E, $0E
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$08, $02, $05, $05
	;spSustainLv	$01, $01, $01, $01
	;spDecayRt	$00, $0D, $0D, $0D
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$1A, $00, $00, $00

	; Patch $04
	; $2C
	; $72, $78, $34, $34,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$16, $80, $17, $80
	;spAlgorithm	$04
	;spFeedback	$05
	;spDetune	$07, $03, $07, $03
	;spMultiple	$02, $04, $08, $04
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $12, $12
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $00, $0A, $0A
	;spSustainLv	$00, $00, $01, $01
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$16, $17, $00, $00

	; Patch $05
	; $2C
	; $74, $74, $34, $34,	$1F, $12, $1F, $1F
	; $00, $00, $00, $00,	$00, $01, $00, $01
	; $0F, $3F, $0F, $3F,	$16, $80, $17, $80
	;spAlgorithm	$04
	;spFeedback	$05
	;spDetune	$07, $03, $07, $03
	;spMultiple	$04, $04, $04, $04
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $12, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $00, $00, $00
	;spSustainLv	$00, $00, $03, $03
	;spDecayRt	$00, $00, $01, $01
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$16, $17, $00, $00

	; Patch $06
	; $04
	; $72, $42, $32, $32,	$12, $12, $12, $12
	; $00, $08, $00, $08,	$00, $08, $00, $08
	; $0F, $1F, $0F, $1F,	$23, $80, $23, $80
	;spAlgorithm	$04
	;spFeedback	$00
	;spDetune	$07, $03, $04, $03
	;spMultiple	$02, $02, $02, $02
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$12, $12, $12, $12
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $00, $08, $08
	;spSustainLv	$00, $00, $01, $01
	;spDecayRt	$00, $00, $08, $08
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$23, $23, $00, $00

	; Patch $07
	; $3D
	; $01, $02, $02, $02,	$10, $50, $50, $50
	; $07, $08, $08, $08,	$01, $00, $00, $00
	; $20, $17, $17, $17,	$1C, $80, $80, $80
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $02, $02, $02
	;spRateScale	$00, $01, $01, $01
	;spAttackRt	$10, $10, $10, $10
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$07, $08, $08, $08
	;spSustainLv	$02, $01, $01, $01
	;spDecayRt	$01, $00, $00, $00
	;spReleaseRt	$00, $07, $07, $07
	;spTotalLv	$1C, $00, $00, $00

	; Patch $08
	; $2C
	; $74, $74, $34, $34,	$1F, $12, $1F, $1F
	; $00, $07, $00, $07,	$00, $07, $00, $07
	; $00, $38, $00, $38,	$16, $80, $17, $80
	;spAlgorithm	$04
	;spFeedback	$05
	;spDetune	$07, $03, $07, $03
	;spMultiple	$04, $04, $04, $04
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $12, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $00, $07, $07
	;spSustainLv	$00, $00, $03, $03
	;spDecayRt	$00, $00, $07, $07
	;spReleaseRt	$00, $00, $08, $08
	;spTotalLv	$16, $17, $00, $00
