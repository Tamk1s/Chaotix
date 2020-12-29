SH_SystemMenu_Header:
	sHeaderInit
	sHeaderPatch	SH_SystemMenu_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $0F
	sHeaderDAC	SH_SystemMenu_DAC
	sHeaderFM	SH_SystemMenu_FM1, $00, $11
	sHeaderFM	SH_SystemMenu_FM2, $00, $23
	sHeaderFM	SH_SystemMenu_FM3, $00, $14
	sHeaderFM	SH_SystemMenu_FM4, $00, $23
	sHeaderFM	SH_SystemMenu_FM5, $00, $0F
	sHeaderFM	SH_SystemMenu_FM6, $00, $21
	sHeaderPSG	SH_SystemMenu_PSG1, $00, $07, $00, v01
	sHeaderPSG	SH_SystemMenu_PSG2, $00, $0C, $00, v01
	sHeaderPSG	SH_SystemMenu_PSG3, $00, $0A, $00, v04

SH_SystemMenu_FM1:
	sPan		spCenter
	sPatFM		$00
	dc.b nRst, $05

SH_SystemMenu_Loop2:
	dc.b nG4

SH_SystemMenu_Loop1:
	dc.b $06, nC5, $03, nRst, nG5, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop1
	dc.b nG4, $06, nC5, nD5, nG4, nG4, $03, nRst
	dc.b nF4, $06, nG4, $18, nRst, $54
	sLoop		$01, $03, SH_SystemMenu_Loop2
	dc.b nG4

SH_SystemMenu_Loop3:
	dc.b $06, nC5, $03, nRst, nG5, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop3
	dc.b nG4, $06, nC5, nD5, nG4, nG4, $03, nRst
	dc.b nF4, $06, nG4, $18, nRst, $7F, $77

SH_SystemMenu_Loop4:
	dc.b nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b nRst, $4E
	sLoop		$00, $03, SH_SystemMenu_Loop4
	dc.b nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b nRst, $7F, $53, nA5, $06, nRst, nC6, nA5
	dc.b nRst, nC6, $0C, nA5, $06, nC6, nA5, nC6
	dc.b nRst, nEb5, nD5, $03, nRst, $09, nC6, $1E
	dc.b nEb5, $06, nD5, $03, nRst, $09, nC6, $0C
	dc.b nAb5, $06, nC6, $0C, nD6, $03, nRst, nD6
	dc.b nRst, $09, nC6, $57, nRst, $4B

SH_SystemMenu_Loop5:
	dc.b nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b nRst, $4E
	sLoop		$00, $02, SH_SystemMenu_Loop5
	dc.b nG5, $03, $03, nRst, $06, nG5, $03, $03
	sStop

SH_SystemMenu_FM2:
	sPatFM		$01
	sPan		spCenter
	dc.b nRst

SH_SystemMenu_Loop6:
	dc.b $55
	sLoop		$00, $08, SH_SystemMenu_Loop6
	dc.b $57, nG4, $03, nA4, $01
	sPatFM		$01
	saVolFM		$EE
	dc.b sHold, $02, nB4, $03, nC5, nA4, nB4, nC5
	dc.b nD5, nB4, nC5, nD5, nE5
	saVolFM		$01
	dc.b nC5, nD5, nE5, nFs5, nD5, nE5, nFs5, nG5
	dc.b nE5, nFs5, nG5, nA5, nFs5, nG5, nA5, nB5
	dc.b nG5, nA5, nB5, nC6, nA5, nB5, nC6
	saVolFM		$02
	dc.b nD6, nB5, nC6, nD6, nE6, nC6, nD6, nE6
	dc.b nFs6, nD6, nE6, nFs6, nG6, nE6, nFs6, nG6
	dc.b nA6, nFs6, nG6, nA6, nB6, nG6, nA6, nB6
	dc.b nC7, nA6
	saVolFM		$01
	dc.b nB6, nC7, nD7, nRst, $06
	saVolFM		$F4
	dc.b nG3, $01
	sPatFM		$07
	saVolFM		$26
	dc.b sHold, $02, nA3, $03, nC4, $06, nRst, $03
	saVolFM		$01
	dc.b nC4, nRst, $06, nE4
	saVolFM		$01
	dc.b nC4, $03, nRst, $0F, nG3, $03
	saVolFM		$01
	dc.b nA3, nC4, nRst, nC4, nRst, nD4, $06, nG3
	dc.b $03, nA3, nC4, nRst
	saVolFM		$FF
	dc.b nD4, nRst
	saVolFM		$FF
	dc.b nEb4, nE4, nG3, nA3, nC4, nG3, nA3, nC4
	dc.b nRst, nC4, nRst, $06, nEb4, $03, nE4, nRst
	dc.b $0C, nEb4, $03, nRst, nEb4, nRst
	saVolFM		$08
	dc.b nEb4, nRst, nE4
	saVolFM		$F8
	dc.b $03
	saVolFM		$08
	dc.b $03
	saVolFM		$F8
	dc.b $03
	saVolFM		$0B
	dc.b nC4
	saVolFM		$F5
	dc.b $03, nA3, nG3, nRst
	saVolFM		$02
	dc.b nF3, nG3, nA3
	saVolFM		$FF
	dc.b nC4, nRst, nC4, nRst
	saVolFM		$FF
	dc.b nC4, nRst
	saVolFM		$0B
	dc.b nE4, nRst
	saVolFM		$F5
	dc.b nEb4
	saVolFM		$0B
	dc.b nE4, $06, nC4, $03, nRst
	saVolFM		$F6
	dc.b nC4, nRst
	saVolFM		$02
	dc.b nC4
	saVolFM		$FF
	dc.b $03, nRst, nC4, nRst
	saVolFM		$09
	dc.b nG3
	saVolFM		$F7
	dc.b nA3
	saVolFM		$FF
	dc.b nC4, nRst
	saVolFM		$0A
	dc.b nG3
	saVolFM		$F5
	dc.b nA3
	saVolFM		$02
	dc.b nC4
	saVolFM		$FE
	dc.b nD4, nRst, $07
	sPatFM		$08
	dc.b $01
	saVolFM		$F6
	dc.b nB4, nRst, $02, nFs5, $01, nRst, $02, nC6
	dc.b $01, nRst, $02, nG6, $01, nRst, nC7, nRst
	dc.b $03, nC7, $01, nB6, nRst, $03, nC6, $01
	dc.b nRst, nA5, nRst, $2F
	saVolFM		$08
	dc.b nG5, $01
	sPatFM		$01
	saVolFM		$E8
	dc.b sHold, $05, nF5, $06, nE5, nD5, nD5, nF5
	dc.b nA5, $0C, nF5, $06, nD5, nB4, nRst, $7F
	dc.b $7F, $23
	sPatFM		$08
	dc.b $04
	saVolFM		$10
	dc.b nB4, $01, nRst, $02, nFs5, $01, nRst, $02
	dc.b nC6, $01, nRst, $02, nG6, $01, nRst, nC7
	dc.b nRst, $03, nC7, $01, nB6, nRst, $03, nC6
	dc.b $01, nRst, nA5, nRst, $02, nD5, $01, nRst
	dc.b $02, nG4, $01, nRst, nG4, nRst, $02, nD5
	dc.b $01, nRst, $02, nA5, $01, nRst, nRst, $04
	dc.b nB6, $01, nRst, $06
	saVolFM		$FA
	dc.b nG3, $01
	sPatFM		$07
	saVolFM		$0F
	dc.b sHold, $02, nA3, $03, nC4, $06, nRst, $03
	saVolFM		$01
	dc.b nC4, nRst, $06, nE4
	saVolFM		$01
	dc.b nC4, $03, nRst, $0F, nG3, $03
	saVolFM		$01
	dc.b nA3, nC4, nRst, nC4, nRst, nD4, $06, nG3
	dc.b $03, nA3, nC4, nRst
	saVolFM		$FF
	dc.b nD4, nRst
	saVolFM		$FF
	dc.b nEb4, nE4, nG3, nA3, nC4, nG3, nA3, nC4
	dc.b nRst, nC4, nRst, $06, nEb4, $03, nE4, nRst
	dc.b $0C, nEb4, $03, nRst, nEb4, nRst
	saVolFM		$08
	dc.b nEb4, nRst, nE4
	saVolFM		$F8
	dc.b $03
	saVolFM		$08
	dc.b $03
	saVolFM		$F8
	dc.b $03
	saVolFM		$0B
	dc.b nC4
	saVolFM		$F5
	dc.b $03, nA3, nG3, nRst
	saVolFM		$02
	dc.b nF3, nG3, nA3
	saVolFM		$FF
	dc.b nC4, nRst, nC4, nRst
	saVolFM		$FF
	dc.b nC4, nRst
	saVolFM		$0B
	dc.b nE4, nRst
	saVolFM		$F5
	dc.b nEb4
	saVolFM		$0B
	dc.b nE4, $06, nC4, $03, nRst
	saVolFM		$F6
	dc.b nC4, nRst
	saVolFM		$02
	dc.b nC4
	saVolFM		$FF
	dc.b $03, nRst, nC4, nRst
	saVolFM		$09
	dc.b nG3
	saVolFM		$F7
	dc.b nA3
	saVolFM		$FF
	dc.b nC4, nRst
	saVolFM		$0A
	dc.b nG3
	saVolFM		$F5
	dc.b nA3
	saVolFM		$02
	dc.b nC4
	saVolFM		$FE
	dc.b nD4
	sStop

SH_SystemMenu_FM3:
	sPan		spCenter
	sPatFM		$03
	dc.b nG4, $0B

SH_SystemMenu_Loop8:
	dc.b nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b $06, nRst, $0C, nG4, $06, nRst, $0C, nG4
	dc.b nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b $06, nRst, $0C, nG4, $06

SH_SystemMenu_Loop7:
	dc.b nRst, $0C, nF4, nRst, $06, nF4, nRst, $0C
	dc.b nF4, nRst, nF4, $06, nRst, $0C, nF4, $06
	sLoop		$00, $02, SH_SystemMenu_Loop7
	dc.b nRst, $0C, nG4
	sLoop		$01, $02, SH_SystemMenu_Loop8
	dc.b nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b $06, nRst, $0C, nG4, $06, nRst, $0C, nG4
	dc.b nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b $06, nRst, $0C, nG4, $06, nRst, $0C
	saVolFM		$FA
	dc.b nE5, $01
	saVolFM		$11
	sPatFM		$02
	dc.b sHold, $05, nRst, $06, nC5, nRst, nD5, nRst
	dc.b nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b $12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b nG5, nRst, nF5, nE5, nC5, nA4, nG4, nRst
	dc.b $12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b $12
	saVolFM		$06
	dc.b nE5, $01
	saVolFM		$F4
	sPatFM		$03
	dc.b sHold, $0B, nG5, $06, nB5, $12, nG5, $06
	dc.b nE5, $24, nRst, $12, nF5, $06, $06, nG5
	dc.b nA5, $0C, nA4, $06, nC5, nB4, nG4, nB4
	dc.b nG5, nB5, nG5, nE5, nG5, nA5, $24, nRst
	dc.b $4E, nAb4, $0C, nC5, nEb5, $06, nG5, nD5
	dc.b $0C, nF5, $06, nD5, nBb4, $0C, nG5, $06
	dc.b nF5, $03, nRst, $09, nE5, $36, nRst, $24
	saVolFM		$FA
	dc.b nE5, $01
	sPatFM		$02
	saVolFM		$0C
	dc.b sHold, $05, nRst, $06, nC5, nRst, nD5, nRst
	dc.b nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b $12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b nG5, nRst, nF5, nE5, nC5, nA4, nG4, nRst
	dc.b $12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b $12
	saVolFM		$06
	sStop

SH_SystemMenu_FM4:
	sPan		spCenter
	sPatFM		$04
	dc.b nRst, $6B, nG5, $0C
	saVolFM		$02
	dc.b nA5
	saVolFM		$FE
	dc.b nG5
	saVolFM		$FE
	dc.b nF5, $12
	saVolFM		$FB
	dc.b nE5
	saVolFM		$FD
	dc.b nC6, $0C
	saVolFM		$03
	dc.b nD5, $24, nRst, $3C
	saVolFM		$03
	dc.b nG5, $0C, nF5
	saVolFM		$FE
	dc.b nE5, $09, nF5, $03
	saVolFM		$01
	dc.b nF6, $0C, nG5, $0F, $09, nA5
	saVolFM		$01
	dc.b nC6
	saVolFM		$01
	dc.b nB5, $06
	saVolFM		$FF
	dc.b nG5, $30, nRst, $3C, nG5, $0C, nA5, nG5
	dc.b nF5, $12, nE5, nC6, $0C, nD5, $24, nRst
	dc.b $3C
	saVolFM		$FD
	dc.b nG5, $0C, nF5, nE5, nRst
	saVolFM		$02
	dc.b nG5, $0F, $09, nA5, nC6, nB5, $06, nG5
	dc.b $30, nRst, $7F, $11, nG5, $42, nE5, $06
	dc.b nF5, nE5
	saVolFM		$01
	dc.b nC6
	saVolFM		$01
	dc.b nG5, $48
	saVolFM		$FF
	dc.b nA5, $06, nC6, nD5, nE5, nF5, nG5, $48
	dc.b nRst, $06, nA5
	saVolFM		$FF
	dc.b nC6, nD5
	saVolFM		$F9
	dc.b nE5, $0C
	saVolFM		$04
	dc.b nG5, $06
	saVolFM		$FF
	dc.b nB5, $12
	saVolFM		$01
	dc.b nG6, $06
	saVolFM		$01
	dc.b nE5, $24, nRst, $12
	saVolFM		$07
	dc.b nB5, $06, $06
	saVolFM		$FB
	dc.b nD5, nF5, $0C, $06, nA5, nG5, nE5
	saVolFM		$01
	dc.b nG5, nB5, nD5
	saVolFM		$FC
	dc.b nB5
	saVolFM		$FE
	dc.b nG5, nB5, nC6, $7F, sHold, $17
	saVolFM		$03
	dc.b nBb5, $0C, $0C, $0C
	saVolFM		$02
	dc.b nG5, $06, nF5, $0C
	saVolFM		$01
	dc.b nC6, $5A
	saVolFM		$FE
	dc.b nG5, $42
	saVolFM		$FF
	dc.b nE5, $06, nF5
	saVolFM		$FE
	dc.b nE5
	saVolFM		$FF
	dc.b nC6
	saVolFM		$01
	dc.b nG5, $48
	saVolFM		$02
	dc.b nA5, $06, nC6
	saVolFM		$FF
	dc.b nD5
	saVolFM		$FA
	dc.b nE5, nF5
	saVolFM		$FE
	dc.b nG5, $48, nRst, $06
	saVolFM		$0B
	dc.b nA5
	saVolFM		$01
	dc.b nC6, nD5
	saVolFM		$01
	sStop

SH_SystemMenu_FM5:
	sPan		spCenter
	sPatFM		$05
	dc.b nG1, $08

SH_SystemMenu_Loop9:
	dc.b nD1, $09, nG1, $0C, nD1, $06, nG1, nD2
	dc.b nG1, $09
	sLoop		$00, $03, SH_SystemMenu_Loop9
	dc.b nD1, nG1, $0C, nD1, $06, nG1, nD2

SH_SystemMenu_Loop10:
	dc.b nF1, $09, nC1, nF1, $0C, nC1, $06, nF1
	dc.b nC2
	sLoop		$00, $04, SH_SystemMenu_Loop10
	dc.b nG1, $09
	sLoop		$01, $02, SH_SystemMenu_Loop9

SH_SystemMenu_Loop11:
	dc.b nD1, nG1, $0C, nD1, $06, nG1, nD2, nG1
	dc.b $09
	sLoop		$00, $03, SH_SystemMenu_Loop11
	dc.b nD1, nG1, $0C, nD1, $06, nG1, nD2
	saVolFM		$06
	dc.b $09, nA1, nD2, $0C, nA1, nAb1, $06, nG1
	dc.b nD2, $0C, nG2, nF2, $06, nA1, nG1, nD2
	dc.b $09, nA1, nD2, $0C, nA1, nAb1, $06, nG1
	dc.b nD2, nAb2, $03, nRst, nG2, $0C, nF2, $06
	dc.b nD2, nAb1, nD2, $09, nA1, nD2, $0C, nA1
	dc.b nAb1, $06, nG1, nD2, $0C, nG2, nF2, $06
	dc.b nA1, nG1, nE2, nRst, $03, nE2, nB1, $06
	dc.b nE2, $09, nRst, $03, nE2, $06, nB1, nE2
	dc.b nEb2, $0C, nBb1, nE2, nB1, nF2, $09, nC2
	dc.b nF1, $12, nC2, $06, nF2, nB1, nRst, $03
	dc.b nB1, nRst, $06, nE1, $12, nB1, $06, nG1
	dc.b nA1, nRst, $03, nA1, nRst, $06, nE1, $0C
	dc.b $06, $06, nG1, nAb1, $09, nEb2, nEb1, $0C
	dc.b $06, $06, nG1, nAb1, $09, nEb1, nAb1, $0C
	dc.b nRst, $06, nAb1, $03, nRst, nAb1, nRst, nBb1
	dc.b $0C, nF1, nBb0, nBb1, $06, nG1, nC2, nRst
	dc.b $03, nC2, nRst, $06, nC2, $18, nG1, $06
	dc.b nC2, $09, nG1, nC1, $1E, nD2, $09, nA1
	dc.b nD2, $0C, nA1, nAb1, $06, nG1, nD2, $0C
	dc.b nG2, nF2, $06, nA1, nG1, nD2, $09, nA1
	dc.b nD2, $0C, nA1, nAb1, $06, nG1, nD2, nAb2
	dc.b $03, nRst, nG2, $0C, nF2, $06, nD2, nAb1
	dc.b nD2, $09, nA1, nD2, $0C, nA1, nAb1, $06
	dc.b nG1, nD2, $0C, nG2, nF2, $06, nA1, nG1
	sStop

SH_SystemMenu_FM6:
	sPan		spCenter
	sPatFM		$06
	dc.b nRst

SH_SystemMenu_Loop12:
	dc.b $57
	sLoop		$00, $0A, SH_SystemMenu_Loop12
	dc.b $59, nE4, $03, nRst, $06, nE4, $01
	saVolFM		$06
	sPatFM		$06
	dc.b sHold, $02, nRst, $06, nE4, $03, nRst, $09
	dc.b nE4, $03, nRst, $06, nE4, $03, nB4, nE4
	dc.b nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop13:
	dc.b nRst, $06, nB3, $03
	sLoop		$00, $03, SH_SystemMenu_Loop13
	dc.b nRst, nB3, nC4, nE4, $06, nRst, $03, nE4
	dc.b nRst, $06, nE4, $03, nRst, $09, nE4, $03
	dc.b nRst, $06, nE4, nRst, $03, nB3, $06, nRst
	dc.b $03, nB3, nRst, $06, nB3, $03, nRst, $09
	dc.b nB3, $03, nRst, nB3, nRst, nB3, nC4, nE4
	dc.b nRst, $06, nE4, $03, nRst, $06, nE4, $03
	dc.b nRst, $09, nE4, $03, nRst, $06, nE4, $03
	dc.b nB4, nE4, nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop14:
	dc.b nRst, $06, nB3, $03
	sLoop		$00, $03, SH_SystemMenu_Loop14
	dc.b nRst, nB3, nC4, nRst, $7F, $7F, $7F, $63
	dc.b nE4, $03, nRst, $06, nE4, $01
	sPatFM		$06
	dc.b sHold, $02, nRst, $06, nE4, $03, nRst, $09
	dc.b nE4, $03, nRst, $06, nE4, $03, nB4, nE4
	dc.b nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop15:
	dc.b nRst, $06, nB3, $03
	sLoop		$00, $03, SH_SystemMenu_Loop15
	dc.b nRst, nB3, nC4, nE4, $06, nRst, $03, nE4
	dc.b nRst, $06, nE4, $03, nRst, $09, nE4, $03
	dc.b nRst, $06, nE4, nRst, $03, nB3, $06, nRst
	dc.b $03, nB3, nRst, $06, nB3, $03, nRst, $09
	dc.b nB3, $03, nRst, nB3, nRst, nB3, nC4, nE4
	dc.b nRst, $06, nE4, $03, nRst, $06, nE4, $03
	dc.b nRst, $09, nE4, $03, nRst, $06, nE4, $03
	dc.b nB4, nE4, nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop16:
	dc.b nRst, $06, nB3, $03
	sLoop		$00, $03, SH_SystemMenu_Loop16
	dc.b nRst, nB3, nC4
	sStop

SH_SystemMenu_PSG1:
	dc.b nRst, $05

SH_SystemMenu_Loop18:
	dc.b nG0

SH_SystemMenu_Loop17:
	dc.b $06, nC1, $03, nRst, nG1, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop17
	dc.b nG0, $06, nC1, nD1, nG0, nG0, $03, nRst
	dc.b nF0, $06, nG0, $18, nRst, $54
	sLoop		$01, $03, SH_SystemMenu_Loop18
	dc.b nG0

SH_SystemMenu_Loop19:
	dc.b $06, nC1, $03, nRst, nG1, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop19
	dc.b nG0, $06, nC1, nD1, nG0, nG0, $03, nRst
	dc.b nF0, $06, nG0, $18, nRst, $7F, $77, nG1
	dc.b $03, $03, nRst, $06, nG1, $03, $03, nRst
	dc.b $4E, nG3, $03, $03, nRst, $06, nG3, $03

SH_SystemMenu_Loop20:
	dc.b $03, nRst, $4E, nG1, $03, $03, nRst, $06
	dc.b nG1, $03
	sLoop		$00, $02, SH_SystemMenu_Loop20
	dc.b $03, nRst, $7F, $53, nA1, $06, nRst, nC2
	dc.b nA1, nRst, nC2, $0C, nA1, $06, nC2, nA1
	dc.b nC2, nRst, nEb3, nD3, $03, nRst, $09, nC2
	dc.b $1E, nEb3, $06, nD3, $03, nRst, $09, nC2
	dc.b $0C, nAb1, $06, nC2, $0C, nEb3, $06, nD3
	dc.b $03, nRst, $4B
	saVolPSG	$03
	dc.b nG3, $03, $03, nRst, $09, nG3, $03, nRst
	dc.b $4E
	saVolPSG	$FD
	dc.b nG3, $03, $03, nRst, $06, nG3, $03

SH_SystemMenu_Loop21:
	dc.b $03, nRst, $4E, nG1, $03, $03, nRst, $06
	dc.b nG1, $03
	sLoop		$00, $02, SH_SystemMenu_Loop21
	dc.b $03
	sStop

SH_SystemMenu_PSG2:
	dc.b nC1, $0B, nRst, $06, nC1, nRst, $0C, nC1
	dc.b nRst, nC1, $06, nRst, $0C, nC1, $06, nRst
	dc.b $0C, nC1, nRst, $06, nC1, nRst, $0C, nC1
	dc.b nRst, nC1, $06, nRst, $0C, nC1, $06, nRst
	dc.b $0C
	saVolPSG	$01

SH_SystemMenu_Loop22:
	dc.b nC1, nRst, $06, nC1, nRst, $0C, nC1, nRst
	dc.b nC1, $06, nRst, $0C, nC1, $06, nRst, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop22
	saVolPSG	$FF

SH_SystemMenu_Loop23:
	dc.b nC1, nRst, $06, nC1, nRst, $0C, nC1, nRst
	dc.b nC1, $06, nRst, $0C, nC1, $06, nRst, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop23
	saVolPSG	$01

SH_SystemMenu_Loop24:
	dc.b nC1, nRst, $06, nC1, nRst, $0C, nC1, nRst
	dc.b nC1, $06, nRst, $0C, nC1, $06, nRst, $0C
	sLoop		$00, $02, SH_SystemMenu_Loop24
	saVolPSG	$FF
	dc.b nC1, $04
	saVolPSG	$F6
	dc.b sHold, $08, nRst, $06, nC1, nRst, $0C, nC1
	dc.b nRst, nC1, $06, nRst, $0C, nC1, $06, nRst
	dc.b $0C, nC1, nRst, $06, nC1, nRst, $0C, nC1
	dc.b nRst, nC1, $06, nRst, $0C, nC1, $06, nRst
	dc.b $0C
	saVolPSG	$03
	dc.b nE1, $03, nRst, $06, nA0, $01
	sVolEnvPSG	v04
	saVolPSG	$07
	dc.b sHold, $02, nRst, $06, nA0, $03, nRst, $09
	dc.b nA0, $03, nRst, $06, nA0, $03, nE1, nA0
	dc.b nE0, $06, nRst, $03, nE0

SH_SystemMenu_Loop25:
	dc.b nRst, $06, nE0, $03
	sLoop		$00, $03, SH_SystemMenu_Loop25
	dc.b nRst, nE0, nF0, nA0, $06, nRst, $03, nA0
	dc.b nRst, $06, nA0, $03, nRst, $09, nA0, $03
	dc.b nRst, $06, nA0, nRst, $03, nE0, $06, nRst
	dc.b $03, nE0, nRst, $06, nE0, $03, nRst, $09
	dc.b nE0, $03, nRst, nE0, nRst, nE0, nF0, nE1
	dc.b nRst, $06, nA0, $03, nRst, $06, nA0, $03
	dc.b nRst, $09, nA0, $03, nRst, $06, nA0, $03
	dc.b nE1, nA0, nE0, $06, nRst, $03, nE0, nRst
	dc.b $06, nE0, $03, nRst, $06, nE0, $03, nRst
	dc.b $06, nE0, $01
	sVolEnvPSG	v04
	saVolPSG	$01
	dc.b sHold, $02, nRst, $03, nE0, nF0, nRst, $01
	sVolEnvPSG	v01
	dc.b $06
	saVolPSG	$FE
	dc.b nA1, $01, nRst, $02, nE2, $01, nRst, $05
	dc.b nFs3, $01, nRst, $04, nE4, $01, nRst, $07
	dc.b nB2, $01, nRst, nRst, $05, nG3, $06, nE3
	dc.b $24
	saVolPSG	$03
	dc.b nG3, $01
	saVolPSG	$F7
	sVolEnvPSG	$32
	dc.b sHold, $05, nF3, $06, nE3
	saVolPSG	$FD
	dc.b nF2, nRst, $2A, $7F, $7F, $23
	sVolEnvPSG	$2E
	dc.b $03
	sVolEnvPSG	v01
	saVolPSG	$09
	dc.b nA1, $01, nRst, $02, nE2, $01, nRst, $02
	dc.b nB2, $01, nRst, $02, nFs3, $01, nRst, $04
	dc.b nE4, $01, nRst, $07, nB2, $01, nRst, nRst
	dc.b $06, nFs1, $01, nG1, nRst, nC2, nRst, $02
	dc.b nG2, $01, nRst, nB2, nRst, $03, nA3, $01
	dc.b nRst
	saVolPSG	$03
	dc.b nE1, $03, nRst, $06, nA0, $01
	sVolEnvPSG	v04
	saVolPSG	$FE
	dc.b sHold, $02, nRst, $06, nA0, $03, nRst, $09
	dc.b nA0, $03, nRst, $06, nA0, $03, nE1, nA0
	dc.b nE0, $06, nRst, $03, nE0

SH_SystemMenu_Loop26:
	dc.b nRst, $06, nE0, $03
	sLoop		$00, $03, SH_SystemMenu_Loop26
	dc.b nRst, nE0, nF0, nA0, $06, nRst, $03, nA0
	dc.b nRst, $06, nA0, $03, nRst, $09, nA0, $03
	dc.b nRst, $06, nA0, nRst, $03, nE0, $06, nRst
	dc.b $03, nE0, nRst, $06, nE0, $03, nRst, $09
	dc.b nE0, $03, nRst, nE0, nRst, nE0, nF0, nE1
	dc.b nRst, $06, nA0, $03, nRst, $06, nA0, $03
	dc.b nRst, $09, nA0, $03, nRst, $06, nA0, $03
	dc.b nE1, nA0, nE0, $06, nRst, $03, nE0

SH_SystemMenu_Loop27:
	dc.b nRst, $06, nE0, $03
	sLoop		$00, $03, SH_SystemMenu_Loop27
	dc.b nRst, nE0, nF0
	sVolEnvPSG	v04
	dc.b nRst, $01
	sVolEnvPSG	$1B
	sStop

SH_SystemMenu_PSG3:
	dc.b nRst, $6C, nG1, $01
	sVolEnvPSG	v05
	dc.b sHold, $0B
	saVolPSG	$01
	dc.b nA1, $0C
	saVolPSG	$FF
	dc.b nG3
	saVolPSG	$FF
	dc.b nF3, $12
	saVolPSG	$FE
	dc.b nE3
	saVolPSG	$FF
	dc.b nC2, $0C
	saVolPSG	$01
	dc.b nD3, $24, nRst, $3C
	saVolPSG	$02
	dc.b nG3, $0C, nF3
	saVolPSG	$FF
	dc.b nE3, nRst, nG3, $0F, nG1, $09, nA1
	saVolPSG	$01
	dc.b nC2, nB1, $06, nG1, $30, nRst, $3C, nG1
	dc.b $0C
	saVolPSG	$FF
	dc.b nA1, nG3, nF3, $12, nE3, nC2, $0C, nD3
	dc.b $24, nRst, $3C
	saVolPSG	$FF
	dc.b nG3, $0C, nF3
	saVolPSG	$01
	dc.b nE3, nRst, nG3, $0F, nG1, $09, nA1, nC2
	dc.b nB1, $06, nG1, $30, nRst, $7F, $11, nG3
	dc.b $42, nE3, $06, nF3, nE3, nC2
	saVolPSG	$01
	dc.b nG1, $48, nA1, $06, nC2, nD3, nE3, nF3
	dc.b nG3, $48, nRst, $06
	saVolPSG	$FF
	dc.b nA1, nC2, nD3
	saVolPSG	$FE
	dc.b nE3, $0C
	saVolPSG	$01
	dc.b nG3, $06, nB3, $12, nRst, $06
	saVolPSG	$01
	dc.b nE3, $24, nRst, $12
	saVolPSG	$02
	dc.b nB1, $06, $06
	saVolPSG	$FE
	dc.b nD3, nF3, $0C, nF1, $06, nA1, nG1, nE1
	dc.b nG1, nB1, nD3
	saVolPSG	$FF
	dc.b nB1
	saVolPSG	$FF
	dc.b nG1, nB1, nC2, $7F, sHold, $17
	saVolPSG	$01
	dc.b nD2, $0C, nBb1, nEb3
	saVolPSG	$01
	dc.b $06, nD3, $0C, nE3, $5A, nG3, $42
	saVolPSG	$FF
	dc.b nE3, $06, nF3, nE3
	saVolPSG	$FF
	dc.b nC2
	saVolPSG	$01
	dc.b nG1, $48
	saVolPSG	$01
	dc.b nA1, $06, nC2
	saVolPSG	$FF
	dc.b nD3
	saVolPSG	$FE
	dc.b nE3, nF3
	saVolPSG	$FF
	dc.b nG3, $48, nRst, $06
	saVolPSG	$04
	dc.b nA1, nC2, nD3
	sStop

SH_SystemMenu_DAC:
	sStop

SH_SystemMenu_Patches:

	; Patch $00
	; $3A
	; $02, $0E, $02, $02,	$8E, $8F, $8D, $53
	; $0E, $10, $0E, $0D,	$00, $00, $00, $00
	; $13, $68, $13, $08,	$19, $2A, $23, $08
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $02, $0E, $02
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0F, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $10, $0D
	spSustainLv	$01, $01, $06, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $03, $08, $08
	spTotalLv	$19, $23, $2A, $08

	; Patch $01
	; $3B
	; $02, $02, $04, $02,	$59, $59, $59, $4C
	; $03, $07, $03, $05,	$00, $00, $00, $00
	; $22, $22, $22, $27,	$40, $18, $24, $08
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $04, $02, $02
	spRateScale	$01, $01, $01, $01
	spAttackRt	$19, $19, $19, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $03, $07, $05
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$02, $02, $02, $07
	spTotalLv	$40, $24, $18, $08

	; Patch $02
	; $05
	; $36, $32, $7C, $72,	$1F, $5F, $1F, $1F
	; $07, $0B, $0A, $0B,	$00, $07, $07, $07
	; $59, $4E, $59, $4E,	$23, $10, $23, $08
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$03, $07, $03, $07
	spMultiple	$06, $0C, $02, $02
	spRateScale	$00, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $0A, $0B, $0B
	spSustainLv	$05, $05, $04, $04
	spDecayRt	$00, $07, $07, $07
	spReleaseRt	$09, $09, $0E, $0E
	spTotalLv	$23, $23, $10, $08

	; Patch $03
	; $2C
	; $31, $31, $71, $71,	$5F, $54, $5F, $5F
	; $05, $0A, $03, $0C,	$00, $03, $03, $03
	; $00, $87, $00, $A7,	$17, $0E, $19, $08
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$03, $07, $03, $07
	spMultiple	$01, $01, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $14, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $03, $0A, $0C
	spSustainLv	$00, $00, $08, $0A
	spDecayRt	$00, $03, $03, $03
	spReleaseRt	$00, $00, $07, $07
	spTotalLv	$17, $19, $0E, $08

	; Patch $04
	; $3A
	; $31, $05, $71, $01,	$59, $59, $5C, $4E
	; $0A, $0B, $0D, $04,	$01, $01, $01, $01
	; $15, $58, $26, $16,	$23, $0D, $2D, $06
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $07, $00, $00
	spMultiple	$01, $01, $05, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$19, $1C, $19, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0D, $0B, $04
	spSustainLv	$01, $02, $05, $01
	spDecayRt	$01, $01, $01, $01
	spReleaseRt	$05, $06, $08, $06
	spTotalLv	$23, $2D, $0D, $06

	; Patch $05
	; $3D
	; $00, $30, $70, $00,	$1F, $1F, $1F, $11
	; $0B, $09, $00, $1F,	$00, $00, $00, $00
	; $FF, $F9, $0F, $07,	$1E, $1F, $2D, $0A
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $07, $03, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0B, $00, $09, $1F
	spSustainLv	$0F, $00, $0F, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $09, $07
	spTotalLv	$1E, $2D, $1F, $0A

	; Patch $06
	; $07
	; $01, $33, $74, $08,	$DF, $DF, $DF, $DF
	; $03, $05, $05, $05,	$00, $00, $00, $00
	; $2A, $2A, $2A, $2A,	$0C, $18, $1F, $0C
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$00, $07, $03, $00
	spMultiple	$01, $04, $03, $08
	spRateScale	$03, $03, $03, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $05, $05, $05
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0A, $0A, $0A, $0A
	spTotalLv	$0C, $1F, $18, $0C

	; Patch $07
	; $3B
	; $0D, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0E, $0D, $09, $09,	$00, $00, $00, $00
	; $D6, $D6, $D6, $D7,	$33, $21, $22, $06
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0D, $00, $01, $00
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $09, $0D, $09
	spSustainLv	$0D, $0D, $0D, $0D
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$06, $06, $06, $07
	spTotalLv	$33, $22, $21, $06

	; Patch $08
	; $3A
	; $71, $06, $33, $01,	$9C, $96, $5D, $92
	; $04, $09, $04, $07,	$00, $01, $03, $00
	; $15, $12, $16, $B5,	$25, $34, $25, $08
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $03, $06, $01
	spRateScale	$02, $01, $02, $02
	spAttackRt	$1C, $1D, $16, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $09, $07
	spSustainLv	$01, $01, $01, $0B
	spDecayRt	$00, $03, $01, $00
	spReleaseRt	$05, $06, $02, $05
	spTotalLv	$25, $25, $34, $08
