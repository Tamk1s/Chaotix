Elegy_Header:
	sHeaderInit
	sHeaderPatch	Elegy_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $09
	sHeaderDAC	Elegy_DAC
	sHeaderFM	Elegy_FM1, $00, $1F
	sHeaderFM	Elegy_FM2, $00, $24
	sHeaderFM	Elegy_FM3, $00, $15
	sHeaderFM	Elegy_FM4, $00, $17
	sHeaderFM	Elegy_FM5, $00, $16
	sHeaderFM	Elegy_FM6, $00, $16
	sHeaderPSG	Elegy_PSG1, $00, $06, $00, v00
	sHeaderPSG	Elegy_PSG2, $00, $06, $00, v00
	sHeaderPSG	Elegy_PSG3, $00, $07, $00, $46

Elegy_FM1:
	sPan		spCenter
	ssDetune	$02
	sPatFM		$00

Elegy_Loop1:
	dc.b nB4, $14, nC5, nCs5, nD5
	sLoop		$00, $04, Elegy_Loop1

Elegy_Jump1:
	ssDetune	$FB
	saVolFM		$FC
	dc.b nA4, $05
	ssDetune	$FE
	dc.b sHold, nAb4, $01
	ssDetune	$E9
	dc.b sHold, nFs4
	ssDetune	$11
	dc.b sHold, nEb4
	ssDetune	$FF
	dc.b sHold, nCs4
	ssDetune	$F0
	dc.b sHold, nB3
	ssDetune	$F3
	dc.b sHold, $01
	ssDetune	$F6
	dc.b sHold, nE4
	ssDetune	$19
	dc.b sHold, nAb4
	ssDetune	$FB
	dc.b sHold, nA4, $1B, nB4, $05
	ssDetune	$EB
	dc.b sHold, nBb4, $01
	ssDetune	$0B
	dc.b sHold, nG4
	ssDetune	$00
	dc.b sHold, nF4
	ssDetune	$EB
	dc.b sHold, nEb4
	ssDetune	$03
	dc.b sHold, nC4
	ssDetune	$0D
	dc.b sHold, nD4
	ssDetune	$EF
	dc.b sHold, nAb4
	ssDetune	$FD
	dc.b sHold, nB4, $1C, nC5, $05
	ssDetune	$FF
	dc.b sHold, nB4, $01
	ssDetune	$E4
	dc.b sHold, nA4
	ssDetune	$15
	dc.b sHold, nFs4
	ssDetune	$FE
	dc.b sHold, nE4
	ssDetune	$ED
	dc.b sHold, nD4
	ssDetune	$F0
	dc.b sHold, $01
	ssDetune	$F3
	dc.b sHold, nG4
	ssDetune	$0E
	dc.b sHold, nB4
	ssDetune	$FD
	dc.b sHold, nC5, $1B, nD5, $05
	ssDetune	$F3
	dc.b sHold, nCs5, $01
	ssDetune	$0E
	dc.b sHold, nBb4
	ssDetune	$00
	dc.b sHold, nAb4
	ssDetune	$E9
	dc.b sHold, nFs4
	ssDetune	$03
	dc.b sHold, nEb4
	ssDetune	$10
	dc.b sHold, nF4
	ssDetune	$F5
	dc.b sHold, nB4
	ssDetune	$FD
	dc.b sHold, nD5, $1C, nE5, $05
	ssDetune	$FE
	dc.b sHold, nEb5, $01
	ssDetune	$EE
	dc.b sHold, nCs5
	ssDetune	$1A
	dc.b sHold, nBb4
	ssDetune	$FE
	dc.b sHold, nAb4
	ssDetune	$E9
	dc.b sHold, nFs4
	ssDetune	$ED
	dc.b sHold, $01
	ssDetune	$F8
	dc.b sHold, nB4
	ssDetune	$12
	dc.b sHold, nEb5
	ssDetune	$FD
	dc.b sHold, nE5, $1B, nF5, $05
	ssDetune	$F1
	dc.b sHold, nE5, $01
	ssDetune	$08
	dc.b sHold, nCs5
	ssDetune	$00
	dc.b sHold, nB4
	ssDetune	$E3
	dc.b sHold, nA4
	ssDetune	$05
	dc.b sHold, nFs4
	ssDetune	$13
	dc.b sHold, nAb4
	ssDetune	$F3
	dc.b sHold, nD5
	ssDetune	$FD
	dc.b sHold, nF5, $1C
	ssDetune	$FC
	dc.b nG5, $05
	ssDetune	$FF
	dc.b sHold, nFs5, $01
	ssDetune	$EB
	dc.b sHold, nE5
	ssDetune	$0F
	dc.b sHold, nCs5
	ssDetune	$FE
	dc.b sHold, nB4
	ssDetune	$E3
	dc.b sHold, nA4
	ssDetune	$E9
	dc.b sHold, $01
	ssDetune	$F7
	dc.b sHold, nD5
	ssDetune	$16
	dc.b sHold, nFs5
	ssDetune	$FC
	dc.b sHold, nG5, $1B, nA5, $05
	ssDetune	$ED
	dc.b sHold, nAb5, $01
	ssDetune	$0B
	dc.b sHold, nF5
	ssDetune	$00
	dc.b sHold, nEb5
	ssDetune	$EE
	dc.b sHold, nCs5
	ssDetune	$05
	dc.b sHold, nBb4
	ssDetune	$0B
	dc.b sHold, nC5
	ssDetune	$F1
	dc.b sHold, nFs5
	ssDetune	$FB
	dc.b sHold, nA5, $08, nB5, $05
	ssDetune	$F3
	dc.b sHold, nBb5, $01
	ssDetune	$11
	dc.b sHold, nG5
	ssDetune	$04
	dc.b sHold, nF5
	ssDetune	$ED
	dc.b sHold, nEb5
	ssDetune	$03
	dc.b sHold, nC5
	ssDetune	$10
	dc.b sHold, nCs5
	ssDetune	$00
	dc.b sHold, nFs5
	ssDetune	$09
	dc.b sHold, nBb5
	ssDetune	$02
	dc.b sHold, nB5, $07, nRst

Elegy_Loop2:
	dc.b $50
	sLoop		$00, $08, Elegy_Loop2
	saVolFM		$04
	sJump		Elegy_Jump1

Elegy_FM2:
	sPatFM		$00
	sPan		spCenter
	ssDetune	$02

Elegy_Loop3:
	dc.b nB3, $14, nC4, nCs4, nD4
	sLoop		$00, $04, Elegy_Loop3

Elegy_Jump2:
	ssDetune	$FB
	saVolFM		$FC
	dc.b nA3, $05
	ssDetune	$FE
	dc.b sHold, nAb3, $01
	ssDetune	$E9
	dc.b sHold, nFs3
	ssDetune	$11
	dc.b sHold, nEb3
	ssDetune	$FF
	dc.b sHold, nCs3
	ssDetune	$F0
	dc.b sHold, nB2
	ssDetune	$F3
	dc.b sHold, $01
	ssDetune	$F6
	dc.b sHold, nE3
	ssDetune	$19
	dc.b sHold, nAb3
	ssDetune	$FB
	dc.b sHold, nA3, $1B, nB3, $05
	ssDetune	$EB
	dc.b sHold, nBb3, $01
	ssDetune	$0B
	dc.b sHold, nG3
	ssDetune	$00
	dc.b sHold, nF3
	ssDetune	$EB
	dc.b sHold, nEb3
	ssDetune	$03
	dc.b sHold, nC3
	ssDetune	$0D
	dc.b sHold, nD3
	ssDetune	$EF
	dc.b sHold, nAb3
	ssDetune	$FD
	dc.b sHold, nB3, $1C, nC4, $05
	ssDetune	$FF
	dc.b sHold, nB3, $01
	ssDetune	$E4
	dc.b sHold, nA3
	ssDetune	$15
	dc.b sHold, nFs3
	ssDetune	$FE
	dc.b sHold, nE3
	ssDetune	$ED
	dc.b sHold, nD3
	ssDetune	$F0
	dc.b sHold, $01
	ssDetune	$F3
	dc.b sHold, nG3
	ssDetune	$0E
	dc.b sHold, nB3
	ssDetune	$FD
	dc.b sHold, nC4, $1B, nD4, $05
	ssDetune	$F3
	dc.b sHold, nCs4, $01
	ssDetune	$0E
	dc.b sHold, nBb3
	ssDetune	$00
	dc.b sHold, nAb3
	ssDetune	$E9
	dc.b sHold, nFs3
	ssDetune	$03
	dc.b sHold, nEb3
	ssDetune	$10
	dc.b sHold, nF3
	ssDetune	$F5
	dc.b sHold, nB3
	ssDetune	$FD
	dc.b sHold, nD4, $1C, nE4, $05
	ssDetune	$FE
	dc.b sHold, nEb4, $01
	ssDetune	$EE
	dc.b sHold, nCs4
	ssDetune	$1A
	dc.b sHold, nBb3
	ssDetune	$FE
	dc.b sHold, nAb3
	ssDetune	$E9
	dc.b sHold, nFs3
	ssDetune	$ED
	dc.b sHold, $01
	ssDetune	$F8
	dc.b sHold, nB3
	ssDetune	$12
	dc.b sHold, nEb4
	ssDetune	$FD
	dc.b sHold, nE4, $1B, nF4, $05
	ssDetune	$F1
	dc.b sHold, nE4, $01
	ssDetune	$08
	dc.b sHold, nCs4
	ssDetune	$00
	dc.b sHold, nB3
	ssDetune	$E3
	dc.b sHold, nA3
	ssDetune	$05
	dc.b sHold, nFs3
	ssDetune	$13
	dc.b sHold, nAb3
	ssDetune	$F3
	dc.b sHold, nD4
	ssDetune	$FD
	dc.b sHold, nF4, $1C
	ssDetune	$FC
	dc.b nG4, $05
	ssDetune	$FF
	dc.b sHold, nFs4, $01
	ssDetune	$EB
	dc.b sHold, nE4
	ssDetune	$0F
	dc.b sHold, nCs4
	ssDetune	$FE
	dc.b sHold, nB3
	ssDetune	$E3
	dc.b sHold, nA3
	ssDetune	$E9
	dc.b sHold, $01
	ssDetune	$F7
	dc.b sHold, nD4
	ssDetune	$16
	dc.b sHold, nFs4
	ssDetune	$FC
	dc.b sHold, nG4, $1B, nA4, $05
	ssDetune	$ED
	dc.b sHold, nAb4, $01
	ssDetune	$0B
	dc.b sHold, nF4
	ssDetune	$00
	dc.b sHold, nEb4
	ssDetune	$EE
	dc.b sHold, nCs4
	ssDetune	$05
	dc.b sHold, nBb3
	ssDetune	$0B
	dc.b sHold, nC4
	ssDetune	$F1
	dc.b sHold, nFs4
	ssDetune	$FB
	dc.b sHold, nA4, $08, nB4, $05
	ssDetune	$F3
	dc.b sHold, nBb4, $01
	ssDetune	$11
	dc.b sHold, nG4
	ssDetune	$04
	dc.b sHold, nF4
	ssDetune	$ED
	dc.b sHold, nEb4
	ssDetune	$03
	dc.b sHold, nC4
	ssDetune	$10
	dc.b sHold, nCs4
	ssDetune	$00
	dc.b sHold, nFs4
	ssDetune	$09
	dc.b sHold, nBb4
	ssDetune	$02
	dc.b sHold, nB4, $07, nRst

Elegy_Loop4:
	dc.b $50
	sLoop		$00, $08, Elegy_Loop4
	saVolFM		$04
	sJump		Elegy_Jump2

Elegy_FM3:
	sPan		spCenter
	sPatFM		$00
	dc.b nE2, $03

Elegy_Loop6:
	dc.b $02, $03, $02, $03, nRst, $02, nE2, $03
	dc.b $02, nRst, $03, nE2, $02, $03, nRst, $02
	dc.b nE2, $03, $02, $03, $02, $03

Elegy_Loop5:
	dc.b nRst, $02, nE2, $03
	sLoop		$00, $08, Elegy_Loop5
	sLoop		$01, $03, Elegy_Loop6
	dc.b $02, $03, $02, $03, nRst, $02, nE2, $03
	dc.b $02, nRst, $03, nE2, $02, $03, nRst, $02
	dc.b nE2, $03, $02, $03, $02, $03

Elegy_Loop7:
	dc.b nRst, $02, nE2, $03
	sLoop		$00, $07, Elegy_Loop7
	dc.b nRst, $02

Elegy_Jump3:
	dc.b nA2, $03, $02, nRst, $03, nA2, $02, $03
	dc.b nRst, $02, nA2, $03, $02, nRst, $05, nA2

Elegy_Loop8:
	dc.b $03, $02
	sLoop		$00, $04, Elegy_Loop8
	dc.b nRst, $03, nA2

Elegy_Loop9:
	dc.b $02, $03, nRst, $02, nA2, $03
	sLoop		$00, $02, Elegy_Loop9
	dc.b nRst, $02, nB2, $0A, nA2, $03, $02, nRst
	dc.b $03, nA2, $02, $03, nRst, $02, nA2, $03
	dc.b $02, nRst, $05, nA2

Elegy_Loop10:
	dc.b $03, $02
	sLoop		$00, $04, Elegy_Loop10
	dc.b nRst, $03, nA2

Elegy_Loop11:
	dc.b $02, $03, nRst, $02, nA2, $03
	sLoop		$00, $02, Elegy_Loop11
	dc.b nRst, $02, nF2, $0A, nA2, $03, $02, nRst
	dc.b $03, nA2, $02, $03, nRst, $02, nA2, $03
	dc.b $02, nRst, $05, nA2

Elegy_Loop12:
	dc.b $03, $02
	sLoop		$00, $04, Elegy_Loop12
	dc.b nRst, $03, nA2

Elegy_Loop13:
	dc.b $02, $03, nRst, $02, nA2, $03
	sLoop		$00, $02, Elegy_Loop13
	dc.b nRst, $02, nB2, $0A, nA2, $03, $02, nRst
	dc.b $03, nA2, $02, $03, nRst, $02, nA2, $03
	dc.b $02, nRst, $05, nA2, $03, $02, $03, $02
	dc.b $03, $02, nD3, $03, nC3, $02, nE3, $03
	dc.b nD3, $05, nRst, $02, nF3, $03, nE3, $02
	dc.b nD3, $03, nE3, $05, nRst, $0C
	saVolFM		$01
	dc.b nA2, $03, $02, $03, nRst, $07, nA2, $03
	dc.b $02, $03, nRst, $02, nA2, $03, $02, $03
	dc.b $02, $03, $02, nG2, $03, $02, $03, nRst
	dc.b $02, nG2, $03, nRst

Elegy_Loop14:
	dc.b $02, nG2, $03
	sLoop		$00, $04, Elegy_Loop14
	dc.b nRst, $02, nG2, $03, $02, nF2, $03, $02
	dc.b $03, nRst, $02, nF2, $03, nRst

Elegy_Loop15:
	dc.b $02, nF2, $03
	sLoop		$00, $04, Elegy_Loop15
	dc.b nRst, $02, nF2, $03, $02, nE2, $03, $02
	dc.b $03, nRst, $02, nE2, $03, nRst

Elegy_Loop16:
	dc.b $02, nE2, $03
	sLoop		$00, $04, Elegy_Loop16
	dc.b nRst, $02, nE2, $03, $02, nD2, $03, $02
	dc.b $03, nRst, $02, nD2, $03, nRst

Elegy_Loop17:
	dc.b $02, nD2, $03
	sLoop		$00, $04, Elegy_Loop17
	dc.b nRst, $02, nD2, $03, $02, nC2, $03, $02
	dc.b $03, nRst, $02, nC2, $03, nRst

Elegy_Loop18:
	dc.b $02, nC2, $03
	sLoop		$00, $04, Elegy_Loop18
	dc.b nRst, $02, nC2, $03

Elegy_Loop20:
	dc.b $02, nE2, $03, $02, $03, nRst, $02, nE2
	dc.b $03, nRst

Elegy_Loop19:
	dc.b $02, nE2, $03
	sLoop		$00, $04, Elegy_Loop19
	dc.b nRst, $02, nE2, $03
	sLoop		$01, $02, Elegy_Loop20
	dc.b $02, nA2, $03, $02, $03, nRst, $07, nA2
	dc.b $03, $02, $03, nRst, $02, nA2, $03, $02
	dc.b $03, $02, $03, $02, nG2, $03, $02, $03
	dc.b nRst, $02, nG2, $03, nRst

Elegy_Loop21:
	dc.b $02, nG2, $03
	sLoop		$00, $04, Elegy_Loop21
	dc.b nRst, $02, nG2, $03, $02, nF2, $03, $02
	dc.b $03, nRst, $02, nF2, $03, nRst

Elegy_Loop22:
	dc.b $02, nF2, $03
	sLoop		$00, $04, Elegy_Loop22
	dc.b nRst, $02, nF2, $03, $02, nE2, $03, $02
	dc.b $03, nRst, $02, nE2, $03, nRst

Elegy_Loop23:
	dc.b $02, nE2, $03
	sLoop		$00, $04, Elegy_Loop23
	dc.b nRst, $02, nE2, $03, $02, nF2, $03, $02
	dc.b $03, nRst, $02, nF2, $03, nRst

Elegy_Loop24:
	dc.b $02, nF2, $03
	sLoop		$00, $04, Elegy_Loop24
	dc.b nRst, $02, nF2, $03, $02, nG2, $03, $02
	dc.b $03, nRst, $02, nG2, $03, nRst

Elegy_Loop25:
	dc.b $02, nG2, $03
	sLoop		$00, $04, Elegy_Loop25
	dc.b nRst, $02, nG2, $03, $02, nAb2, $03, $02
	dc.b $03, nRst, $02, nAb2, $03, nRst

Elegy_Loop26:
	dc.b $02, nAb2, $03
	sLoop		$00, $04, Elegy_Loop26
	dc.b nRst, $02, nAb2, $03, $02, nA2, $03, $02
	dc.b $03, nRst, $02, nA2, $03, nRst

Elegy_Loop27:
	dc.b $02, nA2, $03
	sLoop		$00, $04, Elegy_Loop27
	dc.b nRst, $02, nA2, $03, $02
	saVolFM		$FF
	sJump		Elegy_Jump3

Elegy_FM4:
	sPan		spCenter
	sPatFM		$01
	dc.b nE3

Elegy_Loop29:
	dc.b $03, $02, $03, $02, $05, $03, $05, $02
	dc.b $05, $03, $02, $03, $02

Elegy_Loop28:
	dc.b $05
	sLoop		$00, $08, Elegy_Loop28
	sLoop		$01, $04, Elegy_Loop29

Elegy_Jump4:
	dc.b nA3, $03, $05, $02, $05, $03, $07, $03
	dc.b $02, $03, $02, $03, $02, $03, $05, $02
	dc.b $05, $03, $02, $05, $05, nB3, $0A, nA3
	dc.b $03, $05, $02, $05, $03, $07, $03, $02
	dc.b $03, $02, $03, $02, $03, $05, $02, $05
	dc.b $03, $02, $05, $05, nF3, $0A, nA3, $03
	dc.b $05, $02, $05, $03, $07, $03, $02, $03
	dc.b $02, $03, $02, $03, $05, $02, $05, $03
	dc.b $02, $05, $05, nB3, $0A, nA3, $03, $05
	dc.b $02, $05, $03, $07, $03, $02, $03, $02
	dc.b $03, $02, nD4, $03, nC4, $02, nE4, $03
	dc.b nD4, $07, nF4, $03, nE4, $02, nD4, $03
	dc.b nE4, $11
	saVolFM		$01
	dc.b nA3, $03, $02, $0A, $03, $02, $05, $03
	dc.b $02, $03, $02, $03, $02, nG3, $03, $02
	dc.b $05, $05, $03, $02, $03, $02, $03, $02
	dc.b $05, $03, $02, nF3, $03, $02, $05, $05
	dc.b $03, $02, $03, $02, $03, $02, $05, $03
	dc.b $02, nE3, $03, $02, $05, $05, $03, $02
	dc.b $03, $02, $03, $02, $05, $03, $02, nD3
	dc.b $03, $02, $05, $05, $03, $02, $03, $02
	dc.b $03, $02, $05, $03, $02, nC3, $03

Elegy_Loop30:
	dc.b $02, $05, $05, $03, $02, $03, $02, $03
	dc.b $02, $05, $03, $02, nE3, $03
	sLoop		$00, $02, Elegy_Loop30
	dc.b $02, $05, $05, $03, $02, $03, $02, $03
	dc.b $02, $05, $03, $02, nA3, $03, $02, $0A
	dc.b $03, $02, $05, $03, $02, $03, $02, $03
	dc.b $02, nG3, $03, $02, $05, $05, $03, $02
	dc.b $03, $02, $03, $02, $05, $03, $02, nF3
	dc.b $03, $02, $05, $05, $03, $02, $03, $02
	dc.b $03, $02, $05, $03, $02, nE3, $03, $02
	dc.b $05, $05, $03, $02, $03, $02, $03, $02
	dc.b $05, $03, $02, nF3, $03, $02, $05, $05
	dc.b $03, $02, $03, $02, $03, $02, $05, $03
	dc.b $02, nG3, $03, $02, $05, $05, $03, $02
	dc.b $03, $02, $03, $02, $05, $03, $02, nAb3
	dc.b $03, $02, $05, $05, $03, $02, $03, $02
	dc.b $03, $02, $05, $03, $02, nA3, $03, $02
	dc.b $05, $05, $03, $02, $03, $02, $03, $02
	dc.b $05, $03, $02
	saVolFM		$FF
	sJump		Elegy_Jump4

Elegy_FM5:
	sPatFM		$02
	sPan		spCenter

Elegy_Loop31:
	dc.b nE5, $28, nRst
	sLoop		$00, $04, Elegy_Loop31

Elegy_Jump5:
	saVolFM		$10

Elegy_Loop32:
	dc.b nA4, $05, nRst, $03, nG4, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop32
	dc.b nA4, $05, nG4
	saVolFM		$FF
	dc.b nA4, nRst, $03, nG4, $05, nRst, $02, nA4
	dc.b $05, nRst, $14, nA4, $05, nRst, $03, nG4
	dc.b $05, nRst, $02
	saVolFM		$FF
	dc.b nA4, $05, nRst, $03, nG4, $05, nRst, $02
	dc.b nA4, $05, nG4, nA4, nRst, $03, nG4, $05
	dc.b nRst, $02, nF4, $05, nRst, $14

Elegy_Loop33:
	dc.b nA4, $05, nRst, $03, nG4, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop33
	dc.b nA4, $05, nG4, nA4, nRst, $03, nG4, $05
	dc.b nRst, $02, nA4, $05, nRst, $14

Elegy_Loop34:
	dc.b nA4, $05, nRst, $03, nG4, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop34
	dc.b nA4, $05, nG4
	ssDetune	$00
	dc.b nRst

Elegy_Loop35:
	dc.b $55
	sLoop		$00, $08, Elegy_Loop35
	saVolFM		$F2
	sJump		Elegy_Jump5

Elegy_FM6:
	sPatFM		$02
	sPan		spCenter

Elegy_Loop36:
	dc.b nE4, $28, nRst
	sLoop		$00, $04, Elegy_Loop36

Elegy_Jump6:
	dc.b nRst, $7F, $7F, $1A
	ssDetune	$00

Elegy_Loop37:
	dc.b $55
	sLoop		$00, $08, Elegy_Loop37
	sJump		Elegy_Jump6

Elegy_PSG1:
	dc.b nRst, $28
	sVolEnvPSG	v00

Elegy_Loop38:
	dc.b nB0, $03, nD1, $02, nF1, $03
	saVolPSG	$FF
	dc.b nAb1, $02, nB1, $03, nAb1, $02, nF1, $03
	dc.b nD1, $02, nB0, $03, nF1, $02, nAb1, $03
	dc.b nB1, $02, nD2, $03, nB1, $02, nAb1, $03
	dc.b nE1, $02, nRst, $28
	saVolPSG	$01
	sLoop		$00, $02, Elegy_Loop38
	dc.b nB0, $03, nD1, $02, nF1, $03
	saVolPSG	$FF
	dc.b nAb1, $02, nB1, $03, nAb1, $02, nF1, $03
	dc.b nD1, $02, nB0, $03, nF1, $02, nAb1, $03
	dc.b nB1, $02, nD2, $03, nB1, $02, nAb1, $03
	dc.b nE1, $02, nRst, $28, nB0, $03, nD1, $02
	dc.b nF1, $03, nAb1, $02, nRst, $05, nB0, $03
	dc.b nD1, $02, nB0, $03, nF1, $02, nAb1, $03
	dc.b nB1, $02, nRst, $0A

Elegy_Jump7:
	dc.b nRst, $7F, $7F, $42
	ssDetune	$00
	dc.b $0A
	saVolPSG	$01
	ssDetune	$FF
	dc.b nE2, $01
	ssDetune	$00
	dc.b sHold, nA2, $04, nG2, $05, nA2, $0A, nE2
	dc.b $05
	ssDetune	$02
	dc.b sHold, nF2, $01, sHold, nG2
	ssDetune	$FC
	dc.b sHold, nAb2
	ssDetune	$FD
	dc.b sHold, nBb2
	ssDetune	$FE
	dc.b sHold, nC3
	ssDetune	$00
	dc.b $08, nB2, $07, nG2, $12
	ssDetune	$01
	dc.b sHold, $02
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$04
	dc.b sHold, $01
	ssDetune	$FF
	dc.b sHold, nFs2
	ssDetune	$FD
	dc.b sHold, nF2
	ssDetune	$00
	dc.b sHold, $01
	ssDetune	$02
	dc.b nRst, $0A
	ssDetune	$FD
	dc.b nA2, $01
	ssDetune	$01
	dc.b sHold, nC3, $04
	ssDetune	$00
	dc.b sHold, nB2, $0A, nA2, $07, nRst, $01, nG2
	dc.b $07
	ssDetune	$01
	dc.b $01
	ssDetune	$00
	dc.b sHold, nAb2, $23
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$FC
	dc.b sHold, nG2
	ssDetune	$FF
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, nFs2
	ssDetune	$FD
	dc.b nAb2
	ssDetune	$00
	dc.b sHold, nA2, $0E
	ssDetune	$03
	dc.b nBb2, $01
	ssDetune	$00
	dc.b sHold, nB2, $0E
	ssDetune	$01
	dc.b $01
	ssDetune	$00
	dc.b sHold, nC3, $0E, nBb2, $01, sHold, nB2, $07
	dc.b nC3, nCs3, $01, sHold, nD3, $0F
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$03
	dc.b sHold, $01
	ssDetune	$01
	dc.b sHold, nCs3
	ssDetune	$00
	dc.b sHold, nC3, nRst, $05
	ssDetune	$FE
	dc.b nA2, $01
	ssDetune	$00
	dc.b sHold, nB2, $04, nC3, $05, nB2, $0A, nD3
	dc.b $08, nC3, $07, nB2, $03, nC3, $02, nB2
	dc.b $1E
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$03
	dc.b sHold, $01
	ssDetune	$FE
	dc.b sHold, nBb2, sHold, nA2
	ssDetune	$00
	dc.b sHold, $01, nA1, $05, nC2, nE2, nA2, nC3
	dc.b nD3
	ssDetune	$FF
	dc.b nEb3, $01
	ssDetune	$00
	dc.b sHold, nE3, $0C
	ssDetune	$FF
	dc.b sHold, nEb3, $01
	ssDetune	$FE
	dc.b sHold, nD3
	ssDetune	$00
	dc.b $05, nE3, nF3
	ssDetune	$FE
	dc.b nD3, $01
	ssDetune	$00
	dc.b sHold, nE3, $07
	ssDetune	$02
	dc.b nF3, $01
	ssDetune	$00
	dc.b sHold, $06, nFs3, $01, sHold, nG3, $04
	ssDetune	$FE
	dc.b nF3, $01
	ssDetune	$00
	dc.b sHold, nG3, $0E, nF3, $0F, nE3, $0A, nD3
	dc.b $23
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$FE
	dc.b sHold, nCs3
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, nC3, nRst, $05, nA2, $03, nB2, $02
	dc.b nC3, $05, nB2, $0A, nG2, $05, nA2, $06
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$FD
	dc.b sHold, nAb2
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$FE
	dc.b sHold, nG2
	ssDetune	$00
	dc.b nRst, $05, nG2, $03, nA2, $02, nB2, $05
	dc.b nC3, $0A, nD3, $05, nB2, $06
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$FE
	dc.b sHold, nBb2
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$FF
	dc.b sHold, nA2
	ssDetune	$00
	dc.b nRst, $0A
	saVolPSG	$FE
	ssDetune	$02
	dc.b nEb3, $01
	ssDetune	$00
	dc.b sHold, nF3, $04, nD3, $0A, nAb2, $05, nB2
	dc.b nF3, nEb3, $01, sHold, nA3, $13
	saVolPSG	$02
	dc.b sHold, $01
	saVolPSG	$01
	dc.b sHold, $03

Elegy_Loop39:
	saVolPSG	$01
	dc.b sHold, $02
	sLoop		$00, $04, Elegy_Loop39
	saVolPSG	$01
	dc.b sHold, $01
	saVolPSG	$01
	dc.b sHold, $02
	saVolPSG	$01
	dc.b sHold, $03
	saVolPSG	$01
	dc.b sHold, $02
	saVolPSG	$F6
	sJump		Elegy_Jump7

Elegy_PSG2:
	dc.b nRst, $7F, $7F, $42

Elegy_Jump8:
	sVolEnvPSG	v00

Elegy_Loop40:
	dc.b nA2, $05, nRst, $03, nG2, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop40
	dc.b nA2, $05, nG2, nA2, nRst, $03, nG2, $05
	dc.b nRst, $02, nA2, $05, nRst, $14

Elegy_Loop41:
	dc.b nA2, $05, nRst, $03, nG2, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop41
	dc.b nA2, $05, nG2, nA2, nRst, $03, nG2, $05
	dc.b nRst, $02, nF2, $05
	saVolPSG	$02
	dc.b nE3, $03, nC3, $02, nA2, $03, nC3, $02
	dc.b nA2, $03, nE3, $02, nB2, $03, nE3, $02
	saVolPSG	$FE

Elegy_Loop42:
	dc.b nA2, $05, nRst, $03, nG2, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop42
	dc.b nA2, $05, nG2, nA2, nRst, $03, nG2, $05
	dc.b nRst, $02, nA2, $05, nRst, $14

Elegy_Loop43:
	dc.b nA2, $05, nRst, $03, nG2, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop43
	dc.b nA2, $05, nG2, nD3, $03, nC3, $02, nE3
	dc.b $03, nD3, $07, nF3, $03, nE3, $02, nD3
	dc.b $03, nE3, $0C, nRst, $41, nE2, $05, nRst
	dc.b $03, nD2, $05, nRst, $02, nC2, $05, nRst
	dc.b $28, nE1, $05, nRst, $03, nAb1, $05, nRst
	dc.b $02, nB1, $05, nD2, nRst, $03, nE2, $05
	dc.b nRst, $02, nF2, $05, nE2, nRst, $37, nG2
	dc.b $05, $05, nA2, nB2, nRst, $0A, nE3, $0F
	dc.b $0F, nF3, $05, nRst, $03, nE3, $05, nRst
	dc.b $02, nD3, $05, nC3, nRst, $03, nB2, $05
	dc.b nRst, $02, nBb2, $05, nA2, nRst, $1E, nE2
	dc.b $03, nF2, $02, nG2, $0F, nD2, nB1, $0A
	dc.b nC2, $26, $01, nEb2, nE2, nAb2, $07, nF2
	dc.b nE2, $05, nD2, $08, nB1, $07, nAb1, $05
	dc.b nA1, nC2, $03, nD2, $02, nE2, $05, nD2
	dc.b $0A, nB1, $05, nC2, $0D, nRst, $02, nB1
	dc.b $03, nC2, $02, nD2, $05, nE2, $0A, nF2
	dc.b $05, nD2, $0D, nRst, $07, nB1, $0A, nD2
	dc.b nF2, nA1, $03, nC2, $02, nE2, $03, nA2
	dc.b $16
	ssDetune	$00
	dc.b nRst, $0A
	sJump		Elegy_Jump8

Elegy_PSG3:
	dc.b nRst, $7F, $7F, $42

Elegy_Jump9:
	sVolEnvPSG	v00

Elegy_Loop44:
	dc.b nC2, $05, nRst, $03, nB1, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop44
	dc.b nC2, $05, nB1, nC2, nRst, $03, nB1, $05
	dc.b nRst, $02, nC2, $05, nRst, $14

Elegy_Loop45:
	dc.b nC2, $05, nRst, $03, nB1, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop45
	dc.b nC2, $05, nB1, nC2, nRst, $03, nB1, $05
	dc.b nRst, $02, nA1, $05, nRst, $01
	saVolPSG	$04
	dc.b nE3, $02, nC3, $03, nA2, $02, nC3, $03
	dc.b nA2, $02, nE3, $03, nB2, $02, nE3
	saVolPSG	$FC

Elegy_Loop46:
	dc.b nC2, $05, nRst, $03, nB1, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop46
	dc.b nC2, $05, nB1, nC2, nRst, $03, nB1, $05
	dc.b nRst, $02, nC2, $05, nRst, $14

Elegy_Loop47:
	dc.b nC2, $05, nRst, $03, nB1, $05, nRst, $02
	sLoop		$00, $02, Elegy_Loop47
	dc.b nC2, $05, nB1, nF2, $03, nE2, $02, nG2
	dc.b $03, nF2, $07, nA2, $03, nG2, $02, nF2
	dc.b $03, nG2, $0C, nRst, $46
	saVolPSG	$05
	dc.b nE2, $05, nRst, $03, nD2, $05, nRst, $02
	dc.b nC2, $05, nRst, $28, nE1, $05, nRst, $03
	dc.b nAb1, $05, nRst, $02, nB1, $05, nD2, nRst
	dc.b $03, nE2, $05, nRst, $02, nF2, $05, nE2
	dc.b nRst, $37, nG2, $05, $05, nA2, nB2, nRst
	dc.b $0A, nE3, $0F, $0F, nF3, $05, nRst, $03
	dc.b nE3, $05, nRst, $02, nD3, $05, nC3, nRst
	dc.b $03, nB2, $05, nRst, $02, nBb2, $05, nA2
	dc.b nRst, $1E, nE2, $03, nF2, $02, nG2, $0F
	dc.b nD2, nB1, $0A, nC2, $26, $01, nEb2, nE2
	dc.b nAb2, $07, nF2, nE2, $05, nD2, $08, nB1
	dc.b $07, nAb1, $05, nA1, nC2, $03, nD2, $02
	dc.b nE2, $05, nD2, $0A, nB1, $05, nC2, $0D
	dc.b nRst, $02, nB1, $03, nC2, $02, nD2, $05
	dc.b nE2, $0A, nF2, $05, nD2, $0D, nRst, $07
	dc.b nB1, $0A, nD2, nF2, nA1, $03, nC2, $02
	dc.b nE2, $03, nA2, $16
	ssDetune	$00
	dc.b nRst, $05
	saVolPSG	$FB
	sJump		Elegy_Jump9

Elegy_DAC:
	sStop

Elegy_Patches:

	; Patch $00
	; $38
	; $75, $13, $71, $11,	$D1, $52, $14, $14
	; $0A, $07, $01, $01,	$00, $00, $00, $00
	; $F0, $F0, $F0, $FC,	$23, $1E, $1E, $06
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$05, $01, $03, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$11, $14, $12, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $01, $07, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0C
	spTotalLv	$23, $1E, $1E, $06

	; Patch $01
	; $08
	; $0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$24, $2D, $13, $06
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$0A, $00, $00, $00
	spRateScale	$00, $01, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0A, $0E, $0A
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$00, $04, $04, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $13, $2D, $06

	; Patch $02
	; $3A
	; $64, $60, $60, $30,	$9D, $9D, $50, $4C
	; $04, $06, $04, $05,	$1F, $05, $01, $01
	; $A8, $25, $25, $55,	$7F, $06, $14, $00
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
	spTotalLv	$7F, $14, $06, $00
