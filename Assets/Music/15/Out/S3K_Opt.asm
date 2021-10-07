HDN1R_Splash_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	HDN1R_Splash_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$03, $20
	sHeaderDAC	HDN1R_Splash_DAC
	sHeaderFM	HDN1R_Splash_FM1, $00, $17
	sHeaderFM	HDN1R_Splash_FM2, $00, $13
	sHeaderFM	HDN1R_Splash_FM3, $00, $0E
	sHeaderFM	HDN1R_Splash_FM4, $00, $19
	sHeaderFM	HDN1R_Splash_FM5, $00, $16
	sHeaderFM	HDN1R_Splash_FM6, $00, $1B
	sHeaderPSG	HDN1R_Splash_PSG1, $0C, $05, $00, v00
	sHeaderPSG	HDN1R_Splash_PSG2, $0C, $0B, $00, v00
	sHeaderPSG	HDN1R_Splash_PSG3, $0C, $0A, $00, v00

HDN1R_Splash_FM1:
	sPan		spCenter
	sPatFM		$00
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
	sLoop		$00, $02, HDN1R_Splash_Loop1
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
	dc.b $02, nBb5, $01, nRst, nE5, nBb4, nRst, $05
	ssDetune	$03
	dc.b nRst, $01
	ssDetune	$05
	dc.b nRst, $01
	ssDetune	$07
	dc.b nRst, $01
	ssDetune	$08
	dc.b nRst, $01
	ssDetune	$13
	dc.b nRst, $01
	ssDetune	$14
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $01, nRst, $55, nRst, $3B
	saVolFM		$02
	dc.b nG3, $02, nBb3, $01, nCs4, $02, nE4, $01
	dc.b nG4, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b nCs5, $02, nBb4, $01, nG4, $02, nE4, $01
	dc.b nG4, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b nRst, $05
	saVolFM		$01
	dc.b nCs6, $01, nRst, $02, nBb5, $01, nRst, $02
	dc.b nBb6, $01

HDN1R_Splash_Jump1:
	dc.b nRst, $54, nRst, $54, nRst, $54, nRst, $54
	dc.b nRst, $54
	saVolFM		$FA
	dc.b nD4, $02, nF4, $01, nA4, $02, nD5, $01
	dc.b nF5, $02, nA5, $01, nD6, $02, nF6, $01
	dc.b nA6, $02, nF6, $01, nD6, $02, nA5, $01
	dc.b nF5, $02, nD5, $01, nA4, $02, nD4, $01
	dc.b nRst, $18
	saVolFM		$FF
	dc.b nF4, $02, nA4, $01, nD5, $02, nF5, $01
	dc.b nA5, $02, nD6, $01, nF6, $02, nA6, $01
	dc.b nD7, $02, nA6, $01, nF6, $02, nD6, $01
	dc.b nA5, $02, nF5, $01, nA4, $02, nF4, $01
	dc.b nRst, $18
	saVolFM		$FF
	dc.b nC4, $02, nE4, $01, nG4, $02, nC5, $01
	dc.b nE5, $02, nG5, $01, nC6, $02
	saVolFM		$01
	dc.b nE6, $01, nG6, $02, nE6, $01, nC6, $02
	dc.b nG5, $01, nE5, $02, nC5, $01, nG4, $02
	dc.b nC4, $01, nRst, $30
	ssDetune	$00
	saVolFM		$FE
	dc.b nE5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b nD5, $02, nRst, $04, nAb4, $03, nAb5, nA4
	dc.b nA5, nB4, nB5, nE5, nE4, nF5, $02, nRst
	dc.b $07, nFs5, $02, nRst, $07, nD5, $02, nRst
	dc.b $04, nE5, $02, nFs5, $01, nAb5, $02, nA5
	dc.b $01, nFs5, $02, nAb5, $01, nA5, $02, nB5
	dc.b $01, nAb5, $02, nA5, $01, nB5, $02, nD6
	dc.b $01, nE6, $03
	ssDetune	$0F
	dc.b sHold, nD6, $01
	ssDetune	$0A
	dc.b sHold, nBb5
	ssDetune	$FD
	dc.b sHold, nFs5
	ssDetune	$FF
	dc.b nE5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b nD5, $02, nRst, $01, nAb4, $03, nAb5, nA5
	dc.b nA4, nB5, nA5, nA4, nE5
	ssDetune	$13
	dc.b sHold, nD5, $01
	ssDetune	$15
	dc.b sHold, nBb4
	ssDetune	$0A
	dc.b sHold, nFs4
	ssDetune	$01
	dc.b nF5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b nD5, $02, nRst, $04, nF6, $02, nD6, $01
	dc.b nB5, $02, nA5, $01, nD6, $02, nB5, $01
	dc.b nA5, $02, nAb5, $01, nA5, $02, nAb5, $01
	dc.b nFs5, $02, nF5, $01, nD5, $03
	ssDetune	$09
	dc.b sHold, nC5, $01
	ssDetune	$0A
	dc.b sHold, nAb4
	ssDetune	$04
	dc.b sHold, nE4
	ssDetune	$FF
	dc.b nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b nFs5, $02, nRst, $04, nB4, $03, nB5, nC5
	dc.b nC6, nD5, nD6, nG5, nG4, nAb5, $02, nRst
	dc.b $07, nA5, $02, nRst, $07, nFs5, $02, nRst
	dc.b $04, nG5, $02, nAb5, $01, nB5, $02, nC6
	dc.b $01, nAb5, $02, nB5, $01, nC6, $02, nD6
	dc.b $01, nB5, $02, nC6, $01, nD6, $02, nF6
	dc.b $01, nG6, $03
	ssDetune	$06
	dc.b sHold, nF6, $01
	ssDetune	$FF
	dc.b sHold, nCs6
	ssDetune	$F4
	dc.b sHold, nA5
	ssDetune	$01
	dc.b nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b nFs5, $02, nRst, $01, nB4, $03, nB5, nC6
	dc.b nC5, nD6, nC6, nC5, nG5
	ssDetune	$EF
	dc.b sHold, nFs5, $01
	ssDetune	$0C
	dc.b sHold, nCs5
	ssDetune	$FD
	dc.b sHold, nA4
	ssDetune	$FF
	dc.b nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b nFs5, $02, nRst, $04, nAb6, $02, nFs6, $01
	dc.b nF6, $02, nD6, $01, nF6, $02, nD6, $01
	dc.b nC6, $02, nB5, $01, nC6, $02, nB5, $01
	dc.b nAb5, $02, nFs5, $01, nE5, $03
	ssDetune	$06
	dc.b sHold, nD5, $01
	ssDetune	$FA
	dc.b sHold, nBb4
	ssDetune	$F0
	dc.b sHold, nFs4
	ssDetune	$FF
	dc.b nRst, $55, nRst, $55, nRst, $54, nRst, $3E
	dc.b nRst, $3E, nRst, $3E, nRst, $3E, nRst, $3E
	saVolFM		$07
	dc.b nC4, $02, nD4, $01, nEb4, $02, nF4, $01
	dc.b nG4, $02, nBb4, $01, nC5, $02, nD5, $01
	dc.b nEb5, $18, nD5, $0C, nBb4, nC5, nG5

HDN1R_Splash_Loop2:
	saVolFM		$01
	dc.b sHold, $01
	sLoop		$00, $03, HDN1R_Splash_Loop2
	saVolFM		$02
	dc.b sHold, $01
	saVolFM		$01

HDN1R_Splash_Loop3:
	dc.b sHold, $01
	saVolFM		$01
	dc.b sHold, $01
	saVolFM		$02
	sLoop		$00, $02, HDN1R_Splash_Loop3
	dc.b sHold, $01
	saVolFM		$02
	dc.b sHold, $01
	saVolFM		$01
	dc.b sHold, $01
	saVolFM		$02

HDN1R_Splash_Loop4:
	dc.b sHold, $01
	saVolFM		$02
	dc.b sHold, $01
	saVolFM		$03
	sLoop		$00, $02, HDN1R_Splash_Loop4
	dc.b sHold, $01
	saVolFM		$04
	dc.b sHold, $01
	saVolFM		$03
	dc.b sHold, $01
	saVolFM		$06
	dc.b sHold, $01
	saVolFM		$05
	dc.b sHold, $01
	saVolFM		$0A
	dc.b sHold, $01
	saVolFM		$10
	dc.b sHold, $01
	saVolFM		$20
	dc.b sHold, $02, nRst

HDN1R_Splash_Loop5:
	dc.b $01
	sLoop		$00, $18, HDN1R_Splash_Loop5
	saVolFM		$BA
	dc.b nC5

HDN1R_Splash_Loop6:
	dc.b sHold, $01
	saVolFM		$FF
	sLoop		$00, $04, HDN1R_Splash_Loop6
	dc.b sHold, $02
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$FF
	dc.b sHold, $03
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$FF
	dc.b sHold, $01

HDN1R_Splash_Loop7:
	saVolFM		$FF
	dc.b sHold, $02
	sLoop		$00, $05, HDN1R_Splash_Loop7
	saVolFM		$F1
	dc.b nB4, $01
	saVolFM		$FF
	dc.b sHold, $05
	saVolFM		$FF
	dc.b sHold, $05
	saVolFM		$FF
	dc.b sHold, $06
	saVolFM		$FF
	dc.b sHold, $06
	saVolFM		$FF
	dc.b sHold, $05
	saVolFM		$FF
	dc.b sHold, $06
	saVolFM		$FF
	dc.b sHold, $07
	saVolFM		$FF
	dc.b sHold, $07, nC5, $18, nCs5, $0C
	saVolFM		$06
	sJump		HDN1R_Splash_Jump1

HDN1R_Splash_FM2:
	sPatFM		$00
	sModOff
	sPan		spCenter
	sModOff
	ssDetune	$FF
	dc.b nRst, $06
	ssDetune	$00
	dc.b nRst, $30, nRst, $55, nRst, $24, nE5, $01
	dc.b nBb5, nRst, nE6, nRst, nG6, nE6, nRst, nG5
	dc.b nRst, nRst, nG4, $05
	ssDetune	$03
	dc.b sHold, nF4, $01
	ssDetune	$05
	dc.b sHold, nEb4
	ssDetune	$07
	dc.b sHold, nCs4
	ssDetune	$08
	dc.b sHold, nB3
	ssDetune	$13
	dc.b sHold, nA3
	ssDetune	$14
	dc.b sHold, nG3
	ssDetune	$00
	dc.b sHold, $01, nRst, $55, nRst, $53
	saVolFM		$07
	dc.b nE4, $01, nG4, nRst, $04, nCs5, $01, nRst
	dc.b nBb5, nRst, nE6, nRst

HDN1R_Splash_Loop8:
	dc.b nRst, $54
	sLoop		$00, $07, HDN1R_Splash_Loop8
	ssDetune	$00

HDN1R_Splash_Loop9:
	dc.b nRst, $55, nRst, $0A, nRst, $01, nRst, $2F
	dc.b nRst, $01, nRst, $2F, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop9

HDN1R_Splash_Loop10:
	dc.b nRst, $4E
	sLoop		$00, $07, HDN1R_Splash_Loop10
	dc.b nRst, $55, nRst, $55, nRst, $55, nRst, $03
	sJump		HDN1R_Splash_Loop8

HDN1R_Splash_FM3:
	sPan		spCenter
	sPatFM		$01
	dc.b nRst, $09

HDN1R_Splash_Loop11:
	dc.b nBb3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nE3, $02, nRst, $04, nE3, $02, nRst, $01
	dc.b nE2, $02, nRst, $01, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	dc.b nE2, $02, nRst, $04, nE2, $02, nRst, $01
	dc.b nE1, $02, nRst, $01, nBb1, $02, nRst, $04
	sLoop		$00, $02, HDN1R_Splash_Loop11
	dc.b nCs4, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b nCs4, $02, nRst, $04, nG3, $02, nRst, $01
	dc.b nG2, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b nCs3, $02, nRst, $04, nBb2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nBb1, $03
	saVolFM		$0A
	dc.b nBb2, $02, nRst, $01
	saVolFM		$F6
	dc.b nCs2, $03
	saVolFM		$0A
	dc.b nCs3, $02, nRst, $01
	saVolFM		$F6
	dc.b nG2, $03
	saVolFM		$0A
	dc.b nG3, $02, nRst, $01
	saVolFM		$F6
	dc.b nCs3, $03
	saVolFM		$0A
	dc.b nCs4, $02, nRst, $01
	saVolFM		$F6
	dc.b nE3, $03, nRst, nCs3, nRst, nBb2, $06, nRst

HDN1R_Splash_Loop12:
	dc.b nD2, $02, nRst, $01, nD3, $02, nRst, $01
	sLoop		$00, $18, HDN1R_Splash_Loop12

HDN1R_Splash_Loop13:
	dc.b nCs2, $02, nRst, $01, nCs3, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop13
	dc.b nCs2, $02, nRst, $01, nCs3, $02, nRst, $0D

HDN1R_Splash_Jump2:
	dc.b nRst, $0C
	saVolFM		$01

HDN1R_Splash_Loop14:
	dc.b nD2, $02, nRst, $01, nD3, $02, nRst, $01
	sLoop		$00, $06, HDN1R_Splash_Loop14

HDN1R_Splash_Loop15:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop15

HDN1R_Splash_Loop16:
	dc.b nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop16

HDN1R_Splash_Loop17:
	dc.b nC2, $02, nRst, $01, nC3, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop17

HDN1R_Splash_Loop18:
	dc.b nG1, $02, nRst, $01, nG2, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop18

HDN1R_Splash_Loop19:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop19

HDN1R_Splash_Loop20:
	dc.b nE2, $02, nRst, $01, nE3, $02, nRst, $01
	sLoop		$00, $08, HDN1R_Splash_Loop20

HDN1R_Splash_Loop21:
	dc.b nD2, $02, nRst, $01, nD3, $02, nRst, $01
	sLoop		$00, $06, HDN1R_Splash_Loop21

HDN1R_Splash_Loop22:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop22

HDN1R_Splash_Loop23:
	dc.b nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop23

HDN1R_Splash_Loop24:
	dc.b nC2, $02, nRst, $01, nC3, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop24

HDN1R_Splash_Loop25:
	dc.b nG1, $02, nRst, $01, nG2, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop25

HDN1R_Splash_Loop26:
	dc.b nF2, $02, nRst, $01, nF3, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop26

HDN1R_Splash_Loop27:
	dc.b nE2, $02, nRst, $01, nE3, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop27

HDN1R_Splash_Loop28:
	dc.b nD2, $02, nRst, $01

HDN1R_Splash_Loop29:
	dc.b nD3, $02, nRst, $01
	sLoop		$00, $04, HDN1R_Splash_Loop28
	dc.b nD2, $03
	sLoop		$01, $02, HDN1R_Splash_Loop29

HDN1R_Splash_Loop30:
	dc.b nD3, $02, nRst, $01, nD2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop30
	dc.b nD3, $02

HDN1R_Splash_Loop32:
	dc.b nRst, $01, nBb1, $03

HDN1R_Splash_Loop31:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop31
	dc.b nBb2, $02
	sLoop		$01, $02, HDN1R_Splash_Loop32

HDN1R_Splash_Loop34:
	dc.b nRst, $01, nC2, $03

HDN1R_Splash_Loop33:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop33
	dc.b nC3, $02
	sLoop		$01, $02, HDN1R_Splash_Loop34
	dc.b nRst, $01, nCs2, $03

HDN1R_Splash_Loop35:
	dc.b nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop35
	dc.b nCs3, $02, nRst, $01, nD2, $03, nRst, $02
	dc.b nD2, $03, nRst, $01, nD2, $09, nRst, $06
	saVolFM		$FF

HDN1R_Splash_Loop37:
	dc.b nA1, $03

HDN1R_Splash_Loop36:
	dc.b nA2, $02, nRst, $01, nA1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop36
	dc.b nA2, $02, nRst, $01
	sLoop		$01, $08, HDN1R_Splash_Loop37

HDN1R_Splash_Loop39:
	dc.b nC2, $03

HDN1R_Splash_Loop38:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop38
	dc.b nC3, $02, nRst, $01
	sLoop		$01, $08, HDN1R_Splash_Loop39
	saVolFM		$01

HDN1R_Splash_Loop41:
	dc.b nD2, $03

HDN1R_Splash_Loop40:
	dc.b nD3, $02, nRst, $01, nD2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop40
	dc.b nD3, $02, nRst, $01
	sLoop		$01, $02, HDN1R_Splash_Loop41

HDN1R_Splash_Loop43:
	dc.b nBb1, $03

HDN1R_Splash_Loop42:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop42
	dc.b nBb2, $02, nRst, $01
	sLoop		$01, $02, HDN1R_Splash_Loop43

HDN1R_Splash_Loop45:
	dc.b nC2, $03

HDN1R_Splash_Loop44:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop44
	dc.b nC3, $02, nRst, $01
	sLoop		$01, $02, HDN1R_Splash_Loop45
	dc.b nCs2, $03

HDN1R_Splash_Loop46:
	dc.b nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop46
	dc.b nCs3, $02, nRst, $01, nD2, $03, nRst, $02
	dc.b nD2, $03, nRst, $01, nD2, $09, nRst, $06
	dc.b nG1, $03

HDN1R_Splash_Loop47:
	dc.b nG2, $02, nRst, $01, nG1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop47
	dc.b nG2, $02, nRst, $01, nAb1, $03

HDN1R_Splash_Loop48:
	dc.b nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop48
	dc.b nAb2, $02, nRst, $01, nBb1, $03

HDN1R_Splash_Loop49:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop49
	dc.b nBb2, $02, nRst, $01, nC2, $03

HDN1R_Splash_Loop50:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop50
	dc.b nC3, $02, nRst, $01, nEb2, $03

HDN1R_Splash_Loop51:
	dc.b nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop51
	dc.b nEb3, $02, nRst, $01, nF2, $03

HDN1R_Splash_Loop52:
	dc.b nF3, $02, nRst, $01, nF2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop52
	dc.b nF3, $02

HDN1R_Splash_Loop54:
	dc.b nRst, $01, nBb1, $03

HDN1R_Splash_Loop53:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop53
	dc.b nBb2, $02
	sLoop		$01, $02, HDN1R_Splash_Loop54
	dc.b nRst, $01, nG1, $03

HDN1R_Splash_Loop55:
	dc.b nG2, $02, nRst, $01, nG1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop55
	dc.b nG2, $02, nRst, $01, nAb1, $03

HDN1R_Splash_Loop56:
	dc.b nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop56
	dc.b nAb2, $02, nRst, $01, nBb1, $03

HDN1R_Splash_Loop57:
	dc.b nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop57
	dc.b nBb2, $02, nRst, $01, nC2, $03

HDN1R_Splash_Loop58:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop58
	dc.b nC3, $02, nRst, $01, nEb2, $03

HDN1R_Splash_Loop59:
	dc.b nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop59
	dc.b nEb3, $02, nRst, $01, nF1, $03

HDN1R_Splash_Loop60:
	dc.b nF2, $02, nRst, $01, nF1, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop60
	dc.b nF2, $02, nRst, $01, nAb1, $03, nAb2, $02
	dc.b nRst, $01, nAb1, $02, nRst, $01, nAb2, $02
	dc.b nRst, $01, nBb1, $03, nBb2, $02, nRst, $01
	dc.b nBb1, $02, nRst, $01, nBb2, $02

HDN1R_Splash_Loop62:
	dc.b nRst, $01, nC2, $03

HDN1R_Splash_Loop61:
	dc.b nC3, $02, nRst, $01, nC2, $02, nRst, $01
	sLoop		$00, $03, HDN1R_Splash_Loop61
	dc.b nC3, $02
	sLoop		$01, $07, HDN1R_Splash_Loop62
	ssDetune	$00
	dc.b nRst, $55
	saVolFM		$FF
	sJump		HDN1R_Splash_Jump2

HDN1R_Splash_FM4:
	sModOff
	sPan		spCenter
	sModOff
	sPatFM		$02
	sModOff
	sModOff
	sModOff
	sModOff
	dc.b nRst, $06

HDN1R_Splash_Loop63:
	dc.b nBb4, $09, nRst, $03, nE4, $09, nRst, $03
	dc.b nCs4, $09, nRst, $03, nBb3, $09, nRst, $03
	sLoop		$00, $02, HDN1R_Splash_Loop63
	dc.b nCs5, $09, nRst, $03, nBb4, $09, nRst, $03
	dc.b nG4, $09, nRst, $03, nE4, $09, nRst, $03
	dc.b nBb3, $06, nCs4, nEb4, nCs4, $07, nRst, $11
	sPatFM		$04
	dc.b nRst, $06
	saVolFM		$0C
	dc.b nD4

HDN1R_Splash_Loop64:
	dc.b $03
	saVolFM		$F5
	dc.b $03
	saVolFM		$0B
	sLoop		$00, $18, HDN1R_Splash_Loop64
	dc.b nE4
	saVolFM		$F5
	dc.b $03
	saVolFM		$0A
	dc.b $03
	saVolFM		$F6
	dc.b $03
	saVolFM		$0B
	dc.b $03
	saVolFM		$F5
	dc.b $03
	saVolFM		$0A
	dc.b $03
	saVolFM		$F6
	dc.b $03
	saVolFM		$FE
	dc.b $03, nRst, $02, nE4, $03, nRst, $01, nE4
	dc.b $03

HDN1R_Splash_Jump3:
	dc.b nRst, $06
	sPatFM		$05
	dc.b nRst, $06
	saVolFM		$09

HDN1R_Splash_Loop65:
	dc.b nA3, $03, $02, nRst, $01, nA3, $02, nRst
	dc.b $01
	sLoop		$00, $02, HDN1R_Splash_Loop65
	dc.b nA3, $03, $02, nRst, $01, nA3, $03, $02
	dc.b nRst, $01, nA3, $02, nRst, $01, nC4, $03
	dc.b $02, nRst, $01, nC4, $02, nRst, $01, nEb4
	dc.b $03, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b $01, nD4, $03, $02, nRst, $01, nD4, $02
	dc.b $01, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b $01, nE4, $03, $02, nRst, $01, nE4, $03
	dc.b $02, nRst, $01, nE4, $02, nRst, $01, nE4
	dc.b $02, nRst, $01, nE4, $03, $02

HDN1R_Splash_Loop66:
	dc.b nRst, $01, nD4, $03, $02, nRst, $01, nD4
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop66
	dc.b nRst, $01, nD4, $03, $02

HDN1R_Splash_Loop67:
	dc.b nRst, $01, nC4, $03, $02, nRst, $01, nC4
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop67
	dc.b nRst, $01, nC4, $03, $02

HDN1R_Splash_Loop68:
	dc.b nRst, $01, nBb3, $03, $02, nRst, $01, nBb3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop68
	dc.b nRst, $01, nBb3, $03, $02

HDN1R_Splash_Loop69:
	dc.b nRst, $01, nE4, $03, $02, nRst, $01, nE4
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop69
	dc.b nRst, $01, nE4, $03, $02, nRst, $01
	saVolFM		$01

HDN1R_Splash_Loop70:
	dc.b nA3, $03, $02, nRst, $01, nA3, $02, nRst
	dc.b $01
	sLoop		$00, $02, HDN1R_Splash_Loop70
	dc.b nA3, $03, $02, nRst, $01, nA3, $03, $02
	dc.b nRst, $01, nA3, $02, nRst, $01, nC4, $03
	dc.b $02, nRst, $01, nC4, $02, nRst, $01, nEb4
	dc.b $03, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b $01, nD4, $03, $02, nRst, $01, nD4, $02
	dc.b $01, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b $01, nE4, $03, $02, nRst, $01, nE4, $03
	dc.b $02, nRst, $01, nE4, $02, nRst, $01, nE4
	dc.b $02, nRst, $01, nE4, $03, $02

HDN1R_Splash_Loop71:
	dc.b nRst, $01, nD4, $03, $02, nRst, $01, nD4
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop71
	dc.b nRst, $01, nD4, $03, $02

HDN1R_Splash_Loop72:
	dc.b nRst, $01, nC4, $03, $02, nRst, $01, nC4
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop72
	dc.b nRst, $01, nC4, $03, $02

HDN1R_Splash_Loop73:
	dc.b nRst, $01, nBb3, $03, $02, nRst, $01, nBb3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop73
	dc.b nRst, $01, nBb3, $03, $02

HDN1R_Splash_Loop74:
	dc.b nRst, $01, nD4, $03, $02, nRst, $01, nD4
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop74
	dc.b nRst, $01, nD4, $03, $02, nRst, $01
	saVolFM		$FC
	dc.b nD4, $02, $01, $02, nRst, $04
	saVolFM		$06
	dc.b nD4, $03, nRst, nD4, nRst
	saVolFM		$FA
	dc.b nD4, $02, nRst, $04, nD4

HDN1R_Splash_Loop75:
	dc.b $02, nRst, $07, nD4, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop75
	dc.b $02, nRst, $01
	saVolFM		$06
	dc.b nD4, $03, nRst, nD4, nRst, $06
	saVolFM		$FA
	dc.b nD4, $02, nRst, $04, nD4, $02, nRst, $07

HDN1R_Splash_Loop76:
	dc.b nD4, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop76
	dc.b nC4, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nC4, $03, nRst, nC4, nRst, $06
	saVolFM		$FA
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $07

HDN1R_Splash_Loop77:
	dc.b nC4, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop77
	dc.b nCs4, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nCs4, $03, nRst, nCs4, nRst
	saVolFM		$FA
	dc.b nCs4, $02, nRst, $01, nCs4, $02, nRst, $01
	dc.b nD4, $02, nRst, $03, nD4, $01, nRst, $03
	dc.b nD4, $06, nRst, $09
	saVolFM		$FD

HDN1R_Splash_Loop78:
	dc.b nA1, $03, $02, nRst, $01, nA1

HDN1R_Splash_Loop79:
	dc.b $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop78

HDN1R_Splash_Loop80:
	dc.b nA1, $03
	sLoop		$01, $02, HDN1R_Splash_Loop79
	dc.b $02, nRst, $01, nA1, $02, nRst, $01
	sLoop		$02, $07, HDN1R_Splash_Loop80
	dc.b nA1, $03

HDN1R_Splash_Loop82:
	dc.b $02

HDN1R_Splash_Loop81:
	dc.b nRst, $01, nC3, $03, $02, nRst, $01, nC3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop81
	dc.b nRst, $01, nC3, $03
	sLoop		$01, $08, HDN1R_Splash_Loop82
	dc.b $02, nRst, $01
	saVolFM		$03
	dc.b nD4, $02, $01, $02, nRst, $04
	saVolFM		$06
	dc.b nD4, $03, nRst, nD4, nRst
	saVolFM		$FA
	dc.b nD4, $02, nRst, $04, nD4

HDN1R_Splash_Loop83:
	dc.b $02, nRst, $07, nD4, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop83
	dc.b $02, nRst, $01
	saVolFM		$06
	dc.b nD4, $03, nRst, nD4, nRst, $06
	saVolFM		$FA
	dc.b nD4, $02, nRst, $04, nD4, $02, nRst, $07

HDN1R_Splash_Loop84:
	dc.b nD4, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop84
	dc.b nC4, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nC4, $03, nRst, nC4, nRst, $06
	saVolFM		$FA
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $07

HDN1R_Splash_Loop85:
	dc.b nC4, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop85
	dc.b nCs4, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nCs4, $03, nRst, nCs4, nRst
	saVolFM		$FA
	dc.b nCs4, $02, nRst, $01, nCs4, $02, nRst, $01
	dc.b nD4, $02, nRst, $03, nD4, $01, nRst, $03
	dc.b nD4, $06, nRst

HDN1R_Splash_Loop86:
	dc.b $4F
	sLoop		$00, $07, HDN1R_Splash_Loop86
	dc.b nRst, $02
	sPatFM		$02
	dc.b nRst, $06
	saVolFM		$FD
	dc.b nB2, $05, $04, $09, nRst, $06, nC3, $05
	dc.b $04, $09, nRst, $06, nCs3, $05, $04, $03
	saVolFM		$FD
	sJump		HDN1R_Splash_Jump3

HDN1R_Splash_FM5:
	sModOff
	sPan		spCenter
	sModOff
	sModOff
	sModOff
	sModOff
	sModOff
	sPatFM		$02
	sModOff
	sModOff
	dc.b nRst, $06

HDN1R_Splash_Loop87:
	dc.b nBb5, $09, nRst, $03, nE5, $09, nRst, $03
	dc.b nCs5, $09, nRst, $03, nBb4, $09, nRst, $03
	sLoop		$00, $02, HDN1R_Splash_Loop87
	dc.b nCs6, $09, nRst, $03, nBb5, $09, nRst, $03
	dc.b nG5, $09, nRst, $03, nE5, $09, nRst, $03
	dc.b nBb4, $06, nCs5, nEb4, nCs5, $07, nRst, $11
	sPatFM		$04
	dc.b nRst, $06
	saVolFM		$0C
	dc.b nD3

HDN1R_Splash_Loop88:
	dc.b $03
	saVolFM		$F5
	dc.b $03
	saVolFM		$0B
	sLoop		$00, $18, HDN1R_Splash_Loop88
	dc.b nE3
	saVolFM		$F5
	dc.b $03
	saVolFM		$0A
	dc.b $03
	saVolFM		$F6
	dc.b $03
	saVolFM		$0B
	dc.b $03
	saVolFM		$F5
	dc.b $03
	saVolFM		$0A
	dc.b $03
	saVolFM		$F6
	dc.b $03
	saVolFM		$FE
	dc.b $03, nRst, $02, nE3, $03, nRst, $01, nE3
	dc.b $03

HDN1R_Splash_Jump4:
	dc.b nRst, $06
	sPatFM		$05
	dc.b nRst, $06
	saVolFM		$09

HDN1R_Splash_Loop89:
	dc.b nA2, $03, $02, nRst, $01, nA2, $02, nRst
	dc.b $01
	sLoop		$00, $02, HDN1R_Splash_Loop89
	dc.b nA2, $03, $02, nRst, $01, nA2, $03, $02
	dc.b nRst, $01, nA2, $02, nRst, $01, nC3, $03
	dc.b $02, nRst, $01, nC3, $02, nRst, $01, nEb3
	dc.b $03, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b $01, nD3, $03, $02, nRst, $01, nD3, $02
	dc.b $01, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b $01, nE3, $03, $02, nRst, $01, nE3, $03
	dc.b $02, nRst, $01, nE3, $02, nRst, $01, nE3
	dc.b $02, nRst, $01, nE3, $03, $02

HDN1R_Splash_Loop90:
	dc.b nRst, $01, nD3, $03, $02, nRst, $01, nD3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop90
	dc.b nRst, $01, nD3, $03, $02

HDN1R_Splash_Loop91:
	dc.b nRst, $01, nC3, $03, $02, nRst, $01, nC3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop91
	dc.b nRst, $01, nC3, $03, $02

HDN1R_Splash_Loop92:
	dc.b nRst, $01, nBb2, $03, $02, nRst, $01, nBb2
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop92
	dc.b nRst, $01, nBb2, $03, $02

HDN1R_Splash_Loop93:
	dc.b nRst, $01, nE3, $03, $02, nRst, $01, nE3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop93
	dc.b nRst, $01, nE3, $03, $02, nRst, $01
	saVolFM		$01

HDN1R_Splash_Loop94:
	dc.b nA2, $03, $02, nRst, $01, nA2, $02, nRst
	dc.b $01
	sLoop		$00, $02, HDN1R_Splash_Loop94
	dc.b nA2, $03, $02, nRst, $01, nA2, $03, $02
	dc.b nRst, $01, nA2, $02, nRst, $01, nC3, $03
	dc.b $02, nRst, $01, nC3, $02, nRst, $01, nEb3
	dc.b $03, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b $01, nD3, $03, $02, nRst, $01, nD3, $02
	dc.b $01, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b $01, nE3, $03, $02, nRst, $01, nE3, $03
	dc.b $02, nRst, $01, nE3, $02, nRst, $01, nE3
	dc.b $02, nRst, $01, nE3, $03, $02

HDN1R_Splash_Loop95:
	dc.b nRst, $01, nD3, $03, $02, nRst, $01, nD3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop95
	dc.b nRst, $01, nD3, $03, $02

HDN1R_Splash_Loop96:
	dc.b nRst, $01, nC3, $03, $02, nRst, $01, nC3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop96
	dc.b nRst, $01, nC3, $03, $02

HDN1R_Splash_Loop97:
	dc.b nRst, $01, nBb2, $03, $02, nRst, $01, nBb2
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop97
	dc.b nRst, $01, nBb2, $03, $02

HDN1R_Splash_Loop98:
	dc.b nRst, $01, nD3, $03, $02, nRst, $01, nD3
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop98
	dc.b nRst, $01, nD3, $03, $02, nRst, $01
	saVolFM		$FC
	dc.b nD3, $02, $01, $02, nRst, $04
	saVolFM		$06
	dc.b nD3, $03, nRst, nD3, nRst
	saVolFM		$FA
	dc.b nD3, $02, nRst, $04, nD3

HDN1R_Splash_Loop99:
	dc.b $02, nRst, $07, nD3, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop99
	dc.b $02, nRst, $01
	saVolFM		$06
	dc.b nD3, $03, nRst, nD3, nRst, $06
	saVolFM		$FA
	dc.b nD3, $02, nRst, $04, nD3, $02, nRst, $07

HDN1R_Splash_Loop100:
	dc.b nD3, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop100
	dc.b nC3, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nC3, $03, nRst, nC3, nRst, $06
	saVolFM		$FA
	dc.b nC3, $02, nRst, $04, nC3, $02, nRst, $07

HDN1R_Splash_Loop101:
	dc.b nC3, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop101
	dc.b nCs3, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nCs3, $03, nRst, nCs3, nRst
	saVolFM		$FA
	dc.b nCs3, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b nD3, $02, nRst, $03, nD3, $01, nRst, $03
	dc.b nD3, $06, nRst, $09
	saVolFM		$FD

HDN1R_Splash_Loop102:
	dc.b nA2, $03, $02, nRst, $01, nA2

HDN1R_Splash_Loop103:
	dc.b $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop102

HDN1R_Splash_Loop104:
	dc.b nA2, $03
	sLoop		$01, $02, HDN1R_Splash_Loop103
	dc.b $02, nRst, $01, nA2, $02, nRst, $01
	sLoop		$02, $07, HDN1R_Splash_Loop104
	dc.b nA2, $03

HDN1R_Splash_Loop106:
	dc.b $02

HDN1R_Splash_Loop105:
	dc.b nRst, $01, nC2, $03, $02, nRst, $01, nC2
	dc.b $02
	sLoop		$00, $02, HDN1R_Splash_Loop105
	dc.b nRst, $01, nC2, $03
	sLoop		$01, $08, HDN1R_Splash_Loop106
	dc.b $02, nRst, $01
	saVolFM		$03
	dc.b nD3, $02, $01, $02, nRst, $04
	saVolFM		$06
	dc.b nD3, $03, nRst, nD3, nRst
	saVolFM		$FA
	dc.b nD3, $02, nRst, $04, nD3

HDN1R_Splash_Loop107:
	dc.b $02, nRst, $07, nD3, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop107
	dc.b $02, nRst, $01
	saVolFM		$06
	dc.b nD3, $03, nRst, nD3, nRst, $06
	saVolFM		$FA
	dc.b nD3, $02, nRst, $04, nD3, $02, nRst, $07

HDN1R_Splash_Loop108:
	dc.b nD3, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop108
	dc.b nC3, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nC3, $03, nRst, nC3, nRst, $06
	saVolFM		$FA
	dc.b nC3, $02, nRst, $04, nC3, $02, nRst, $07

HDN1R_Splash_Loop109:
	dc.b nC3, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop109
	dc.b nCs3, $02, $01, $02, nRst, $01
	saVolFM		$06
	dc.b nCs3, $03, nRst, nCs3, nRst
	saVolFM		$FA
	dc.b nCs3, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b nD3, $02, nRst, $03, nD3, $01, nRst, $03
	dc.b nD3, $06, nRst

HDN1R_Splash_Loop110:
	dc.b $4F
	sLoop		$00, $07, HDN1R_Splash_Loop110
	dc.b nRst, $02
	sPatFM		$02
	dc.b nRst, $06
	saVolFM		$FD
	dc.b nB3, $05, $04, $09, nRst, $06, nC4, $05
	dc.b $04, $09, nRst, $06, nCs4, $05, $04, $03
	saVolFM		$FD
	sJump		HDN1R_Splash_Jump4

HDN1R_Splash_FM6:
	sPatFM		$03
	ssModZ80	$01, $01, $01, $05
	sPan		spCenter
	sModOn
	dc.b nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F
	dc.b nRst, $3F, nRst, $3F

HDN1R_Splash_Jump5:
	ssDetune	$00
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $40
	dc.b nRst, $40, nRst, $40
	ssDetune	$E5
	dc.b nRst, $01
	ssDetune	$E8
	dc.b nRst, $01
	ssDetune	$E9
	dc.b nRst, $01
	ssDetune	$EA
	dc.b nRst, $01
	ssDetune	$EB
	dc.b nRst, $01
	ssDetune	$ED
	dc.b nRst, $01
	ssDetune	$EE
	dc.b nRst, $01
	ssDetune	$F0
	dc.b nRst, $01
	ssDetune	$F1
	dc.b nRst, $01
	ssDetune	$E4
	dc.b nRst, $01
	ssDetune	$E6
	dc.b nRst, $01
	ssDetune	$E7
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $30, nRst, $30, nRst, $55, nRst, $0B
	dc.b nRst, $55, nRst, $08
	ssDetune	$12
	dc.b nRst, $01
	ssDetune	$06
	dc.b nRst, $01
	ssDetune	$FC
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $2D
	ssDetune	$18
	dc.b nRst, $01
	ssDetune	$0D
	dc.b nRst, $01
	ssDetune	$0A
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$0C
	dc.b nRst, $01
	ssDetune	$07
	dc.b nRst, $01
	ssDetune	$05
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $55, nRst, $08
	ssDetune	$06
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $01
	ssDetune	$F4
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$EF
	dc.b nRst, $01
	ssDetune	$0C
	dc.b nRst, $01
	ssDetune	$FD
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $2D
	ssDetune	$07
	dc.b nRst, $01
	ssDetune	$FD
	dc.b nRst, $01
	ssDetune	$EC
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $55, nRst, $55, nRst, $1C, nG3, $02
	dc.b nRst, $0A, nG3, $03, nRst, nAb3, nRst, $06
	dc.b nAb3, $03, nRst, $06, nAb3, $03, nRst, $09
	dc.b nBb3, $02, nRst, $0A, nBb3, $03, nRst, nC4
	dc.b nRst, $06, nBb3, $03, nRst, nBb3, $02, nRst
	dc.b $01, nBb3, $03, $02, nRst, $07, nC4, $02
	dc.b nRst, $0A, nC4, $03, nRst, nEb4, nRst, nEb4
	dc.b $02, nRst, $0A, nEb4, $03, nRst, nF4, nRst
	dc.b $0F, nF4, $03, nRst, nF4, nRst, $0F, nF4
	dc.b $02, nRst, $0A, nG3, $02, nRst, $0A, nG3
	dc.b $03, nRst, nAb3, nRst, $06, nAb3, $03, nRst
	dc.b $06, nAb3, $03, nRst, $09, nBb3, $02, nRst
	dc.b $0A, nBb3, $03, nRst, nC4, nRst, $0F, nBb3
	dc.b $03, $02, nRst, $07, nC4, $02, nRst, $0A
	dc.b nC4, $03, nRst, nBb3, nRst, $06, nBb3, $03
	dc.b nRst, $06, nBb3, $02, nRst, $04, nCs4, $03
	dc.b nRst, nCs4, $02, nRst, $04, nBb3, $03, nRst
	dc.b nBb3, $02, nRst, $04, nC4, $03, nRst, $55
	dc.b nRst, $55, nRst, $4F
	sJump		HDN1R_Splash_Jump5

HDN1R_Splash_PSG1:
	ssModZ80	$01, $02, $00, $06
	sModOn
	ssDetune	$01
	dc.b nRst, $55, nRst, $55, nRst, $1C, nF1, $18
	dc.b nE1, $0C, nC1, nD1, nA1, nD2, nE2, nF2
	dc.b $18, nG2, nE2
	saVolPSG	$02
	dc.b $03, nRst, $02, nE2, $01, nRst, $03, nE2
	dc.b $02, nRst, $01

HDN1R_Splash_Jump6:
	ssDetune	$00
	saVolPSG	$FE
	dc.b nF1, $03, nA1, nC2, nF2, nE2, $18, nF2
	dc.b $0C, nC2, $03, nA1, nC2, nD2, $0C, nA2
	dc.b $06, nG2, $03, nRst, nG2, $0F, nE2, $03
	dc.b nRst, $02, nD2, $03, nRst, $01, nC2, $03
	dc.b nBb1, $0C, nD2, $03, nRst, $02, nF2, $03
	dc.b nRst, $01, nG2, $03, nC2, $12, nD2, $03
	dc.b nE2

HDN1R_Splash_Loop111:
	dc.b nG2, nRst, $02, nE2, $03, nRst, $01, nD2
	dc.b $03
	sLoop		$00, $02, HDN1R_Splash_Loop111
	dc.b nE2, $0C, nC1, $03, nE1, nG1, nC2, nE2
	dc.b $18, nF2, $0C, nC2, $03, nA1, nC2, nD2
	dc.b $0C, nA2, $06, nG2, $03, nRst, nG2, $0F
	dc.b nCs2, $03, nRst, $02, nD2, $03, nRst, $01
	dc.b nE2, $03, nF2, $0F, nD2, $03, nE2, nF2
	dc.b nG2, $0C, $03, nRst, $02, nG2, $03, nRst
	dc.b $01, nA2, $03, nBb2, $06, nG2, nE2, $09
	dc.b nCs2, $03, nD2, $0C
	ssDetune	$06
	dc.b sHold, $01
	ssDetune	$05
	dc.b sHold, nCs2
	ssDetune	$06
	dc.b sHold, nC2
	ssDetune	$07
	dc.b sHold, nB1
	ssDetune	$06
	dc.b sHold, nBb1
	ssDetune	$07
	dc.b sHold, nA1, sHold, nAb1
	ssDetune	$08
	dc.b sHold, nG1, sHold, nFs1, sHold, nF1
	ssDetune	$09
	dc.b sHold, nE1
	ssDetune	$08
	dc.b sHold, nEb1
	ssDetune	$00
	saVolPSG	$01

HDN1R_Splash_Loop112:
	dc.b nD2, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nD2, $02, nRst, $01, nE2, $06, nF2, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nD2, $02
	dc.b nRst, $19
	sLoop		$00, $03, HDN1R_Splash_Loop112
	dc.b nCs2, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b nCs2, $02, nRst, $01, nE2, $06, nG2, $02
	dc.b nRst, $01, nE2, $02, nRst, $01, nCs2, $02
	dc.b nRst, $01, nD2, $02, nRst, $03, nD2, $01
	dc.b nRst, $03, nD2, nD2, $06, nRst, nE2, $02
	dc.b nRst, $07, nFs2, $02, nRst, $07, nD2, $02
	dc.b nRst, $04, nAb1, $03, nAb2, nA1, nA2, nB1
	dc.b nB2, nE2, nE1, nF2, $02, nRst, $07, nFs2
	dc.b $02, nRst, $07, nD2, $02, nRst, $04, nE2
	dc.b $02, nFs2, $01, nAb2, $02, nA2, $01, nFs2
	dc.b $02, nAb2, $01, nA2, $02, nB2, $01, nAb2
	dc.b $02, nA2, $01, nB2, $02, nD3, $01, nE3
	dc.b $03
	ssDetune	$FE
	dc.b sHold, nD3, $01
	ssDetune	$FF
	dc.b sHold, nBb2
	ssDetune	$01
	dc.b sHold, nFs2
	ssDetune	$00
	dc.b nE2, $02, nRst, $07, nFs2, $02, nRst, $07
	dc.b nD2, $02, nRst, $01, nAb1, $03, nAb2, nA2
	dc.b nA1, nB2, nA2, nA1, nE2
	ssDetune	$FB
	dc.b sHold, nD2, $01
	ssDetune	$FC
	dc.b sHold, nBb1
	ssDetune	$FD
	dc.b sHold, nFs1
	ssDetune	$00
	dc.b nF2, $02, nRst, $07, nFs2, $02, nRst, $07
	dc.b nD2, $02, nRst, $04, nF3, $02, nD3, $01
	dc.b nB2, $02, nA2, $01, nD3, $02, nB2, $01
	dc.b nA2, $02, nAb2, $01, nA2, $02, nAb2, $01
	dc.b nFs2, $02, nF2, $01, nD2, $03
	ssDetune	$FD
	dc.b sHold, nC2, $01
	ssDetune	$FE
	dc.b sHold, nAb1
	ssDetune	$FF
	dc.b sHold, nE1
	ssDetune	$01
	dc.b nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $04, nB1, $03, nB2, nC2
	dc.b nC3, nD2, nD3, nG2, nG1, nAb2, $02, nRst
	dc.b $07, nA2, $02, nRst, $07, nFs2, $02, nRst
	dc.b $04, nG2, $02, nAb2, $01, nB2, $02, nC3
	dc.b $01, nAb2, $02, nB2, $01, nC3, $02, nD3
	dc.b $01, nB2, $02, nC3, $01, nD3, $02, nF3
	dc.b $01, nG3, $03
	ssDetune	$00
	dc.b sHold, nF3, $01, sHold, nCs3
	ssDetune	$01
	dc.b sHold, nA2
	ssDetune	$00
	dc.b nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $01, nB1, $03, nB2, nC3
	dc.b nC2, nD3, nC3, nC2, nG2
	ssDetune	$03
	dc.b sHold, nFs2, $01
	ssDetune	$FC
	dc.b sHold, nCs2
	ssDetune	$01
	dc.b sHold, nA1
	ssDetune	$00
	dc.b nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b nFs2, $02, nRst, $04, nAb3, $02, nFs3, $01
	dc.b nF3, $02, nD3, $01, nF3, $02, nD3, $01
	dc.b nC3, $02, nB2, $01, nC3, $02, nB2, $01
	dc.b nAb2, $02, nFs2, $01, nE2, $03
	ssDetune	$FF
	dc.b sHold, nD2, $01
	ssDetune	$01
	dc.b sHold, nBb1
	ssDetune	$06
	dc.b sHold, nFs1
	ssDetune	$00
	saVolPSG	$01
	dc.b nD1, $0C, nE1, nF1, nG1, $06, nA1, nD1
	dc.b $0C, nE1, nF1, nBb1, $06, nA1, nD1, $0C
	dc.b nE1, nF1, nG1, $06, nA1, nG1, $0C, nE1
	dc.b nD1, nRst

HDN1R_Splash_Loop113:
	dc.b $4E
	sLoop		$00, $08, HDN1R_Splash_Loop113
	sJump		HDN1R_Splash_Jump6

HDN1R_Splash_PSG2:
	ssModZ80	$01, $02, $00, $06
	sModOn
	dc.b nRst, $55, nRst, $55, nRst, $1C, nD1, $02
	dc.b $01

HDN1R_Splash_Loop115:
	dc.b $02, nRst, $10, nD1, $02, nRst, $04, nD1

HDN1R_Splash_Loop114:
	dc.b $02, nRst, $07, nD1, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop114
	sLoop		$01, $02, HDN1R_Splash_Loop115
	dc.b $02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b $02, nRst, $07, nD1, $02, $01, $02, nRst
	dc.b $1F
	saVolPSG	$FC
	dc.b nG2, $03, nRst, $02, nG2, $01, nRst, $03
	dc.b nG2, $02, nRst, $01

HDN1R_Splash_Jump7:
	ssDetune	$00
	dc.b nRst, $0F
	saVolPSG	$03

HDN1R_Splash_Loop116:
	dc.b nC0, $01, nRst, nRst, nC0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop116
	dc.b nC0, $02, nRst, $04
	sLoop		$01, $02, HDN1R_Splash_Loop116

HDN1R_Splash_Loop117:
	dc.b nD0, $01, nRst, nRst, nD0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop117
	dc.b nD0, $02, nRst, $04

HDN1R_Splash_Loop118:
	dc.b nE0, $01, nRst, nRst, nE0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop118
	dc.b nE0, $02, nRst, $04

HDN1R_Splash_Loop119:
	dc.b nD0, $01, nRst, nRst, nD0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop119
	dc.b nD0, $02

HDN1R_Splash_Loop121:
	dc.b nRst, $04

HDN1R_Splash_Loop120:
	dc.b nC0, $01, nRst, nRst, nC0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop120
	dc.b nC0, $02
	sLoop		$01, $02, HDN1R_Splash_Loop121
	dc.b nRst, $04

HDN1R_Splash_Loop122:
	dc.b nE0, $01, nRst, nRst, nE0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop122
	dc.b nE0, $02

HDN1R_Splash_Loop124:
	dc.b nRst, $04

HDN1R_Splash_Loop123:
	dc.b nC0, $01, nRst, nRst, nC0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop123
	dc.b nC0, $02
	sLoop		$01, $02, HDN1R_Splash_Loop124
	dc.b nRst, $04

HDN1R_Splash_Loop125:
	dc.b nD0, $01, nRst, nRst, nD0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop125
	dc.b nD0, $02, nRst, $04

HDN1R_Splash_Loop126:
	dc.b nE0, $01, nRst, nRst, nE0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop126
	dc.b nE0, $02, nRst, $04

HDN1R_Splash_Loop127:
	dc.b nD0, $01, nRst, nRst, nD0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop127
	dc.b nD0, $02

HDN1R_Splash_Loop129:
	dc.b nRst, $04

HDN1R_Splash_Loop128:
	dc.b nC0, $01, nRst, nRst, nC0, nRst, $05
	sLoop		$00, $02, HDN1R_Splash_Loop128
	dc.b nC0, $02
	sLoop		$01, $02, HDN1R_Splash_Loop129
	dc.b nRst, $04, nC0, $01, nRst, nRst, nC0, nRst
	dc.b $05
	ssDetune	$7F
	dc.b nC0, $01, nRst, nRst, nC0, nRst, $01, nRst
	dc.b $01, nRst, $01, nRst, $01, nRst, $01, nC0
	dc.b sHold, $01
	ssDetune	$12
	dc.b nRst
	ssDetune	$00
	saVolPSG	$FE
	dc.b nD1, $02, $01, $02, nRst, $10, nD1, $02
	dc.b nRst, $04, nD1

HDN1R_Splash_Loop130:
	dc.b $02, nRst, $07, nD1, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop130
	dc.b $02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b $02, nRst, $07

HDN1R_Splash_Loop131:
	dc.b nD1, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop131
	dc.b nC1, $02, $01, $02, nRst, $10, nC1, $02
	dc.b nRst, $04, nC1, $02, nRst, $07

HDN1R_Splash_Loop132:
	dc.b nC1, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop132
	dc.b nCs1, $02, $01, $02, nRst, $0D, nCs1, $02
	dc.b nRst, $01, nCs1, $02, nRst, $01, nD1, $02
	dc.b nRst, $03, nD1, $01, nRst, $03, nD1, $06
	dc.b nRst, $09, nRst, $55, nRst, $08
	ssDetune	$F7
	dc.b nRst, $01
	ssDetune	$FB
	dc.b nRst, $01
	ssDetune	$02
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$F4
	dc.b nRst, $01
	ssDetune	$F6
	dc.b nRst, $01
	ssDetune	$F9
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$FA
	dc.b nRst, $01
	ssDetune	$FB
	dc.b nRst, $01
	ssDetune	$FD
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $55, nRst, $08
	ssDetune	$FD
	dc.b nRst, $01
	ssDetune	$01
	dc.b nRst, $01
	ssDetune	$07
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$07
	dc.b nRst, $01
	ssDetune	$F6
	dc.b nRst, $01
	ssDetune	$02
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$FC
	dc.b nRst, $01
	ssDetune	$02
	dc.b nRst, $01
	ssDetune	$0C
	dc.b nRst, $01
	ssDetune	$00
	dc.b nD1, $02, $01, $02, nRst, $10, nD1, $02
	dc.b nRst, $04, nD1

HDN1R_Splash_Loop133:
	dc.b $02, nRst, $07, nD1, $02, $01
	sLoop		$00, $02, HDN1R_Splash_Loop133
	dc.b $02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b $02, nRst, $07

HDN1R_Splash_Loop134:
	dc.b nD1, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop134
	dc.b nC1, $02, $01, $02, nRst, $10, nC1, $02
	dc.b nRst, $04, nC1, $02, nRst, $07

HDN1R_Splash_Loop135:
	dc.b nC1, $02, $01, $02, nRst, $01
	sLoop		$00, $02, HDN1R_Splash_Loop135
	dc.b nCs1, $02, $01, $02, nRst, $0D, nCs1, $02
	dc.b nRst, $01, nCs1, $02, nRst, $01, nD1, $02
	dc.b nRst, $03, nD1, $01, nRst, $03, nD1, $06
	dc.b nRst, $09
	saVolPSG	$02
	dc.b nD1, $03, nRst
	saVolPSG	$FD
	dc.b nG1, $06, nAb1, nBb1, nC2
	saVolPSG	$03
	dc.b nEb1, $02, nRst, $01
	saVolPSG	$FD
	dc.b nC2, $0F
	saVolPSG	$03
	dc.b nF1, $03, nRst
	saVolPSG	$FD
	dc.b nD2, $06, nC2, nBb1, nC2, $18
	saVolPSG	$03
	dc.b nG1, $03, nRst
	saVolPSG	$FD
	dc.b nEb2, $06, nD2, nBb1, nC2, $0F
	saVolPSG	$03
	dc.b nAb1, $02, nRst, $01
	saVolPSG	$FD
	dc.b nC2, $03, nD2, nEb2, $18, nD2
	saVolPSG	$03
	dc.b nD1, $03, nRst
	saVolPSG	$FD
	dc.b nD2, $06, nEb2, nD2, nC2
	saVolPSG	$03
	dc.b nEb1, $02, nRst, $01
	saVolPSG	$FD
	dc.b nAb1, $0F
	saVolPSG	$03
	dc.b nF1, $03, nRst
	saVolPSG	$FD
	dc.b nBb1, $06, nC2, nD2, nC2, $18
	saVolPSG	$03
	dc.b nG1, $03, nRst
	saVolPSG	$FD
	dc.b nEb2, $06, nD2, nBb1, nC2
	saVolPSG	$03
	dc.b nF1, $02, nRst, $01
	saVolPSG	$FD
	dc.b nF2, $09, $06, nAb2, nEb2, nD2, nF2, nC2
	dc.b $0C, nRst, $03
	saVolPSG	$03
	dc.b nG1, $02, nRst, $01, nG1, $02, nRst, $04

HDN1R_Splash_Loop136:
	dc.b nC2, $03, $02, nRst, $10, nC2, $02, nRst
	dc.b $04, nC2, $02, nRst, $07, nC2, $02, $01
	dc.b $02, nRst, $07
	sLoop		$00, $02, HDN1R_Splash_Loop136
	dc.b nC2, $03, $02, nRst, $10, nC2, $02, nRst
	dc.b $04, nC2, $02, nRst, $07, nC2, $02, $01
	dc.b $02, nRst, $55, nRst, $06
	saVolPSG	$FD
	sJump		HDN1R_Splash_Jump7

HDN1R_Splash_PSG3:
	ssModZ80	$01, $02, $00, $06
	sModOn
	dc.b nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F
	dc.b nRst, $3F, nRst, $3F

HDN1R_Splash_Jump8:
	ssDetune	$00
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $40
	dc.b nRst, $40, nRst, $40
	ssDetune	$10
	dc.b nRst, $01
	ssDetune	$11
	dc.b nRst, $01, nRst, $01
	ssDetune	$12
	dc.b nRst, $01
	ssDetune	$13
	dc.b nRst, $01
	ssDetune	$14
	dc.b nRst, $01
	ssDetune	$16
	dc.b nRst, $01, nRst, $01
	ssDetune	$4A
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01, nRst, $01, nRst, $01
	ssDetune	$00
	dc.b nRst, $30, nRst, $30, nRst, $55, nRst, $0B
	dc.b nRst, $55, nRst, $08
	ssDetune	$F2
	dc.b nRst, $01
	ssDetune	$F9
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$EF
	dc.b nRst, $01
	ssDetune	$F1
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $2D
	ssDetune	$F7
	dc.b nRst, $01
	ssDetune	$F9
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $55, nRst, $08
	ssDetune	$FB
	dc.b nRst, $01
	ssDetune	$02
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01
	ssDetune	$FF
	dc.b nRst, $2D
	ssDetune	$0C
	dc.b nRst, $01
	ssDetune	$F2
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $2D
	ssDetune	$FA
	dc.b nRst, $01
	ssDetune	$04
	dc.b nRst, $01
	ssDetune	$7F
	dc.b nRst, $01
	ssDetune	$00
	dc.b nRst, $55, nRst, $55, nRst, $16, nG0, $03
	dc.b nRst, nD1, $02, nRst, $01, nG0, $03, nRst
	dc.b nG0, $02, nRst, $01, nD1, $03, nRst, nEb1

HDN1R_Splash_Loop137:
	dc.b nRst, nAb0, $02, nRst, $01, nEb1, $03
	sLoop		$00, $02, HDN1R_Splash_Loop137
	dc.b nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0
	dc.b $03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b $03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b $02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b $01, nG1, $03, nRst, nAb1, nRst, nAb1, $02
	dc.b nRst, $01, nEb1, $03, nRst, nEb1, $02, nRst
	dc.b $01, nAb1, $03, nRst, nBb1, nRst, nF1, $02
	dc.b nRst, $01, nF1, $03, nRst, nF1, $02, nRst
	dc.b $01, nBb1, $03, nRst, nBb1, nRst, nF1, $02
	dc.b nRst, $01, nF1, $03, nRst, nF1, $02, nRst
	dc.b $01, nBb1, $02, nRst, $01, nF1, $02, nRst
	dc.b $01, nG0, $03, nRst, nD1, $02, nRst, $01
	dc.b nG0, $03, nRst, nG0, $02, nRst, $01, nD1
	dc.b $03, nRst, nEb1

HDN1R_Splash_Loop138:
	dc.b nRst, nAb0, $02, nRst, $01, nEb1, $03
	sLoop		$00, $02, HDN1R_Splash_Loop138
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
	dc.b $03, nRst

HDN1R_Splash_Loop139:
	dc.b nC1, $02, nRst, $01, nC1, $02, nRst, $04
	sLoop		$00, $02, HDN1R_Splash_Loop139

HDN1R_Splash_Loop140:
	dc.b nG1, $03, $02, nRst, $10, nG1, $02, nRst
	dc.b $04, nG1, $02, nRst, $07, nG1, $02, $01
	dc.b $02, nRst, $07
	sLoop		$00, $02, HDN1R_Splash_Loop140
	dc.b nG1, $03, $02, nRst, $10, nG1, $02, nRst
	dc.b $04, nG1, $02, nRst, $07, nG1, $02, $01
	dc.b $02, nRst, $55, nRst, $06
	sJump		HDN1R_Splash_Jump8

HDN1R_Splash_DAC:
	sStop

HDN1R_Splash_Patches:

	; Patch $00
	; $3F
	; $00, $32, $00, $76,	$1F, $1F, $1F, $1F
	; $0E, $0E, $0E, $10,	$03, $03, $03, $03
	; $08, $58, $38, $38,	$99, $8B, $8A, $8A
	spAlgorithm	$07
	spFeedback	$07
	spDetune	$00, $00, $03, $07
	spMultiple	$00, $00, $02, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $10
	spSustainLv	$00, $03, $05, $03
	spDecayRt	$03, $03, $03, $03
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$19, $0A, $0B, $0A

	; Patch $01
	; $39
	; $06, $01, $01, $01,	$9F, $1F, $1F, $5F
	; $0A, $09, $09, $04,	$08, $07, $07, $07
	; $24, $24, $24, $28,	$22, $24, $26, $8A
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$06, $01, $01, $01
	spRateScale	$02, $00, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $09, $09, $04
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$08, $07, $07, $07
	spReleaseRt	$04, $04, $04, $08
	spTotalLv	$22, $26, $24, $0A

	; Patch $02
	; $3A
	; $64, $60, $60, $30,	$9D, $9D, $50, $4C
	; $04, $06, $04, $05,	$1F, $05, $01, $01
	; $A8, $25, $25, $55,	$7F, $06, $14, $8E
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$06, $06, $06, $03
	spMultiple	$04, $00, $00, $00
	spRateScale	$02, $01, $02, $01
	spAttackRt	$1D, $10, $1D, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $06, $05
	spSustainLv	$0A, $02, $02, $05
	spDecayRt	$1F, $01, $05, $01
	spReleaseRt	$08, $05, $05, $05
	spTotalLv	$7F, $14, $06, $0E

	; Patch $03
	; $3D
	; $72, $31, $31, $71,	$1A, $1C, $1A, $1C
	; $0E, $0A, $0E, $0C,	$00, $00, $00, $01
	; $38, $08, $28, $38,	$1C, $88, $8E, $88
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$07, $03, $03, $07
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1A, $1A, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0A, $0C
	spSustainLv	$03, $02, $00, $03
	spDecayRt	$00, $00, $00, $01
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$1C, $0E, $08, $08

	; Patch $04
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1C, $12, $1A, $8C
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $06, $02, $02
	spMultiple	$03, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $0B
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $08, $08
	spTotalLv	$1C, $1A, $12, $0C

	; Patch $05
	; $39
	; $33, $01, $51, $01,	$5F, $5F, $5F, $5F
	; $0F, $00, $00, $0D,	$01, $01, $01, $01
	; $33, $1A, $1A, $17,	$1E, $19, $16, $84
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$03, $05, $00, $00
	spMultiple	$03, $01, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $00, $00, $0D
	spSustainLv	$03, $01, $01, $01
	spDecayRt	$01, $01, $01, $01
	spReleaseRt	$03, $0A, $0A, $07
	spTotalLv	$1E, $16, $19, $04
