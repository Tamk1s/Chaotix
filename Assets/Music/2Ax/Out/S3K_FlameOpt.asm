SCD_MMZA_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	SCD_MMZA_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$02, $55
	sHeaderDAC	SCD_MMZA_DAC
	sHeaderFM	SCD_MMZA_FM1, $00, $10
	sHeaderFM	SCD_MMZA_FM2, $00, $10
	sHeaderFM	SCD_MMZA_FM3, $00, $10
	sHeaderFM	SCD_MMZA_FM4, $00, $10
	sHeaderFM	SCD_MMZA_FM5, $00, $1A
	sHeaderPSG	SCD_MMZA_PSG1, $E8, $02, $00, v00
	sHeaderPSG	SCD_MMZA_PSG2, $E8, $02, $00, v00
	sHeaderPSG	SCD_MMZA_PSG3, $2F, $00, $00, v00

SCD_MMZA_FM1:
	dc.b nRst, $40, nRst, $40
	sPatFM		$01

SCD_MMZA_Loop1:
	dc.b nD3, $04, nF3, nD3, nC3, nA2, nG2, nF2
	dc.b nD2
	sLoop		$00, $20, SCD_MMZA_Loop1

SCD_MMZA_Loop2:
	sPatFM		$03
	dc.b nD3, $02, nRst, nC3, nRst, nD3, nRst, $0A
	dc.b nC3, $02, nRst, nD3, nRst, $06
	sPatFM		$01
	dc.b nD3, $04, nF3, nG3, nAb3, nG3, nF3, nD3
	dc.b nC3
	sPatFM		$03
	dc.b nA2, $02, nRst, nG2, nRst, nA2, nRst, $0A
	dc.b nG2, $02, nRst, nA2, nRst, $06
	sPatFM		$01
	dc.b nA2, $04, nC3, nA2, nG2, nA2, $06, $02
	dc.b nRst, nA2, nC3, $04
	sLoop		$00, $02, SCD_MMZA_Loop2
	sJump		SCD_MMZA_FM1

SCD_MMZA_FM2:
	dc.b nRst, $40
	sPan		spCenter
	sPatFM		$03

SCD_MMZA_Loop3:
	dc.b nA4, $02, nRst, $04, nAb4, $02, nRst, $04
	dc.b nG4, $02, nRst, $06, nF4, $02, nRst, nD4
	dc.b nRst, $06
	sLoop		$00, $02, SCD_MMZA_Loop3
	dc.b nD4, $19, nRst, $6B
	sPan		spLeft
	sPatFM		$00
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop4:
	dc.b nAb4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop4
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop5:
	dc.b nAb4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop5
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst
	sPan		spCenter
	sPatFM		$03
	dc.b nD4, $04
	sPan		spLeft
	sPatFM		$00
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop6:
	dc.b nAb4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop6
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop7:
	dc.b nAb4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop7
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst
	sPan		spCenter
	sPatFM		$04
	dc.b nD4, nA4, nA4, nF4, nF4, nG4, nA4, nC4
	dc.b $04, nAb4, $02, nG4, nG4, nF4, nC4, $04
	dc.b nCs4, $02, nD4, nF4, nG4, nD4, nA3, nC4
	dc.b nD4, nG3, nRst, nF3, nRst, nF3, nF4, nD4
	dc.b nC4, nA3, nAb3, nG3, nF3, nD3, nG3, nAb3
	dc.b nA3, nC4, nD4, nF4, nG4, nF4, nRst, nD4
	dc.b nF4, nG4, nRst, nC3, nD3, nC3, nD3, nF3
	dc.b $04, nA3, nBb3, nCs4, nF4, nAb4, $02, nA4
	dc.b nBb4, nA4, nG4, nE4, nF4, nG4, nC4, nC4
	dc.b nD4, nRst, nF4, nG4, nAb4, nF4, nC4, nD4
	dc.b nF4, nD4, $04, nA3, nC4, $02, nD4, nD3
	dc.b nF4, nF4, nF4, $04, nAb3, $02, nG3, nF3
	dc.b nG3, $04, $02

SCD_MMZA_Loop8:
	dc.b nAb3, nG3, nF3, nD3, nC3, nG3
	sLoop		$00, $02, SCD_MMZA_Loop8
	dc.b nAb3, nG3, nF3, nD3, nC3, nD3, $04, nF3
	dc.b $02, nG3, $04, nAb3, $02, nA3, nC4, nCs4
	dc.b nD4, nF4, nG4
	sPatFM		$03
	dc.b nA4

SCD_MMZA_Loop9:
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nA4, $02
	sLoop		$00, $03, SCD_MMZA_Loop9
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nD4, $04
	sPan		spLeft
	sPatFM		$00

SCD_MMZA_Loop11:
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop10:
	dc.b nAb4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop10
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	sLoop		$01, $03, SCD_MMZA_Loop11
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop12:
	dc.b nAb4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop12
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, nD3
	dc.b $04, nC3, nD3, nRst, $08, nC3, $04, nD3
	dc.b nRst
	sPatFM		$02
	dc.b nA4, nC5, nD5, nEb5, nD5, nC5, nA4, nG4
	sPatFM		$00
	dc.b nA2, nG2, nA2, nRst, $08, nG2, $04, nA2
	dc.b nRst
	sPatFM		$02
	dc.b nE4, nG4, nE4, nD4, nE4, $06, $02, nRst
	dc.b nE4, nG4, $04
	sPatFM		$00
	dc.b nD3, nC3, nD3, nRst, $08, nC3, $04, nD3
	dc.b nRst
	sPatFM		$02
	dc.b nA4, nC5, nD5, nEb5, nD5, nC5, nA4, nG4
	sPatFM		$00
	dc.b nA2, nG2, nA2, nRst, $08, nG2, $04, nA2
	dc.b nRst
	sPatFM		$02
	dc.b nE4, nG4, nE4, nD4, nE4, $06, $02, nRst
	dc.b nE4, nG4, $04
	sJump		SCD_MMZA_FM2

SCD_MMZA_FM3:
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $44
	sPan		spRight
	sPatFM		$00

SCD_MMZA_Loop14:
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop13:
	dc.b nF4, $02, nRst, $04
	sLoop		$00, $04, SCD_MMZA_Loop13
	dc.b nF4, $02, nRst, $06
	sLoop		$01, $03, SCD_MMZA_Loop14
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop15:
	dc.b nF4, $02, nRst, $04
	sLoop		$00, $04, SCD_MMZA_Loop15
	dc.b nF4, $02, nRst, nRst, $40, nRst, $40
	sPan		spCenter
	sPatFM		$03
	dc.b nD4, $19, nRst, $67, nRst, $40, nRst, $44
	sPan		spRight
	sPatFM		$00

SCD_MMZA_Loop17:
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop16:
	dc.b nF4, $02, nRst, $04
	sLoop		$00, $04, SCD_MMZA_Loop16
	dc.b nF4, $02, nRst, $06
	sLoop		$01, $03, SCD_MMZA_Loop17
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop18:
	dc.b nF4, $02, nRst, $04
	sLoop		$00, $04, SCD_MMZA_Loop18
	dc.b nF4, $02, nRst, nD2, $04, nC2, nD2, nRst
	dc.b $08, nC2, $04, nD2, nRst
	sPatFM		$02
	dc.b nD4, nF4, nG4, nAb4, nG4, nF4, nD4, nC4
	sPatFM		$00
	dc.b nA1, nG1, nA1, nRst, $08, nG1, $04, nA1
	dc.b nRst
	sPatFM		$02
	dc.b nA3, nC4, nA3, nG3, nA3, $06, $02, nRst
	dc.b nA3, nC4, $04
	sPatFM		$00
	dc.b nD2, nC2, nD2, nRst, $08, nC2, $04, nD2
	dc.b nRst
	sPatFM		$02
	dc.b nD4, nF4, nG4, nAb4, nG4, nF4, nD4, nC4
	sPatFM		$00
	dc.b nA1, nG1, nA1, nRst, $08, nG1, $04, nA1
	dc.b nRst
	sPatFM		$02
	dc.b nA3, nC4, nA3, nG3, nA3, $06, $02, nRst
	dc.b nA3, nC4, $04
	sJump		SCD_MMZA_FM3

SCD_MMZA_FM4:
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $44
	sPatFM		$00

SCD_MMZA_Loop20:
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop19:
	dc.b nD4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop19
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, $06
	sLoop		$01, $03, SCD_MMZA_Loop20
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop21:
	dc.b nD4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop21
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, nRst
	dc.b $40, nRst, $40, nRst, $40, nRst, $40, nRst
	dc.b $40, nRst, $44

SCD_MMZA_Loop23:
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop22:
	dc.b nD4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop22
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, $06
	sLoop		$01, $03, SCD_MMZA_Loop23
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop24:
	dc.b nD4, $02, nRst, $04
	sLoop		$00, $03, SCD_MMZA_Loop24
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, $22
	sPatFM		$02
	dc.b nA3, $04, nC4, nD4, nEb4, nD4, nC4, nA3
	dc.b nG3, nRst, $20, nE3, $04, nG3, nE3, nD3
	dc.b nE3, $06, $02, nRst, nE3, nG3, $04, nRst
	dc.b $20, nA3, $04, nC4, nD4, nEb4, nD4, nC4
	dc.b nA3, nG3, nRst, $20, nE3, $04, nG3, nE3
	dc.b nD3, nE3, $06, $02, nRst, nE3, nG3, $04
	sJump		SCD_MMZA_FM4

SCD_MMZA_FM5:
	dc.b nRst, $46
	sPatFM		$03

SCD_MMZA_Loop25:
	dc.b nA4, $02, nRst, $04, nAb4, $02, nRst, $04
	dc.b nG4, $02, nRst, $06, nF4, $02, nRst, nD4
	dc.b nRst, $06
	sLoop		$00, $02, SCD_MMZA_Loop25
	dc.b nD4, $19, nRst, $61, nRst, $40, nRst, $40
	dc.b nRst, $06, nD4, $19, nRst, $65
	sPatFM		$04
	dc.b nD4, $02, nA4, nA4, nF4, nF4, nG4, nA4
	dc.b nC4, $04, nAb4, $02, nG4, nG4, nF4, nC4
	dc.b $04, nCs4, $02, nD4, nF4, nG4, nD4, nA3
	dc.b nC4, nD4, nG3, nRst, nF3, nRst, nF3, nF4
	dc.b nD4, nC4, nA3, nAb3, nG3, nF3, nD3, nG3
	dc.b nAb3, nA3, nC4, nD4, nF4, nG4, nF4, nRst
	dc.b nD4, nF4, nG4, nRst, nC3, nD3, nC3, nD3
	dc.b nF3, $04, nA3, nBb3, nCs4, nF4, nAb4, $02
	dc.b nA4, nBb4, nA4, nG4, nE4, nF4, nG4, nC4
	dc.b nC4, nD4, nRst, nF4, nG4, nAb4, nF4, nC4
	dc.b nD4, nF4, nD4, $04, nA3, nC4, $02, nD4
	dc.b nD3, nF4, nF4, nF4, $04, nAb3, $02, nG3
	dc.b nF3, nG3, $04, $02

SCD_MMZA_Loop26:
	dc.b nAb3, nG3, nF3, nD3, nC3, nG3
	sLoop		$00, $02, SCD_MMZA_Loop26
	dc.b nAb3, nG3, nF3, nD3, nC3, nD3, $04, nF3
	dc.b $02, nG3, $04, nAb3, $02, nA3, nC4, nCs4
	dc.b nD4, nF4, nG4, nRst
	sPatFM		$03
	dc.b nA4

SCD_MMZA_Loop27:
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nA4, $02
	sLoop		$00, $03, SCD_MMZA_Loop27
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nD4, $19, nRst, $61, nRst, $40, nRst, $40
	dc.b nRst, $06, nD3, $02, nRst, nC3, nRst, nD3
	dc.b nRst, $0A, nC3, $02, nRst, nD3, nRst, $26
	dc.b nA2, $02, nRst, nG2, nRst, nA2, nRst, $0A
	dc.b nG2, $02, nRst, nA2, nRst, $26, nD3, $02
	dc.b nRst, nC3, nRst, nD3, nRst, $0A, nC3, $02
	dc.b nRst, nD3, nRst, $26, nA2, $02, nRst, nG2
	dc.b nRst, nA2, nRst, $0A, nG2, $02, nRst, nA2
	dc.b nRst, $20
	sJump		SCD_MMZA_FM5

SCD_MMZA_PSG1:
	sVolEnvPSG	$2B

SCD_MMZA_Loop28:
	dc.b nD4, $02, nE4, nF4, nC5, nE5, nF5, nA5
	dc.b nG5, nE4, nF4, nC5, nE4, nF4, nG4, nA4
	dc.b nF5, nAb4, nD4, nF4, nAb4, nD5, nAb4, nF4
	dc.b nD5, nF5, nAb5, nD5, nF5, nAb5, nD6, nF6
	dc.b nAb6
	sLoop		$00, $12, SCD_MMZA_Loop28
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $40
	sJump		SCD_MMZA_PSG1

SCD_MMZA_PSG2:
	sVolEnvPSG	$2B

SCD_MMZA_Loop29:
	dc.b nD5, $02, nE5, nF5, nC6, nE6, nF6, nA6
	dc.b nG6, nE5, nF5, nC6, nE5, nF5, nG5, nA5
	dc.b nF4, nAb3, nD3, nF3, nAb3, nD4, nAb3, nF3
	dc.b nD4, nF4, nAb4, nD6, nF6, nAb6, nD5, nF5
	dc.b nAb5
	sLoop		$00, $12, SCD_MMZA_Loop29
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $40
	sJump		SCD_MMZA_PSG2

SCD_MMZA_PSG3:
	sNoisePSG	$E7

SCD_MMZA_Jump1:
	dc.b nRst, $40
	sVolEnvPSG	$29
	dc.b nAb6

SCD_MMZA_Loop30:
	dc.b $08
	sLoop		$00, $07, SCD_MMZA_Loop30
	dc.b $02, $02, $02, $02, $02, nRst, nAb6, nAb6

SCD_MMZA_Loop33:
	dc.b nAb6, nRst, nAb6, nAb6, nAb6, nAb6, nRst, nAb6
	dc.b nAb6, nRst

SCD_MMZA_Loop31:
	dc.b nAb6, nAb6

SCD_MMZA_Loop32:
	dc.b nAb6, nRst, nAb6, nAb6
	sLoop		$00, $02, SCD_MMZA_Loop31
	sLoop		$01, $02, SCD_MMZA_Loop32
	sLoop		$02, $10, SCD_MMZA_Loop33

SCD_MMZA_Loop34:
	dc.b nAb6, nRst, nAb6
	sLoop		$00, $03, SCD_MMZA_Loop34
	dc.b nRst, nAb6, nAb6, nAb6, nRst, nAb6, nAb6
	sLoop		$01, $07, SCD_MMZA_Loop34

SCD_MMZA_Loop35:
	dc.b nAb6, nRst, nAb6
	sLoop		$00, $03, SCD_MMZA_Loop35
	dc.b nRst, nAb6, nAb6
	sJump		SCD_MMZA_Jump1

SCD_MMZA_DAC:
	dc.b nRst, $40, dEchoedClapHit2, $08, $08, $08, $08, $08
	dc.b $08, dLowerEchoedClapHit2, $01, $01, $01, $01, $02, $02
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dLowerEchoedClapHit2, nRst

SCD_MMZA_Loop37:
	dc.b dFloorTom, $08, dLowerEchoedClapHit2, $06, $02, dEchoedClapHit2, $06, $02
	dc.b dLowerEchoedClapHit2, $08, dEchoedClapHit2, dLowerEchoedClapHit2, $04, dEchoedClapHit2, $02, dLowerEchoedClapHit2
	dc.b $04, $02, dEchoedClapHit2, $04, dLowerEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $08
	dc.b dLowerEchoedClapHit2, $06, $02, dEchoedClapHit2, $06, $02, dLowerEchoedClapHit2, $08
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, $04, dEchoedClapHit2, $02, dLowerEchoedClapHit2, $04, $02
	dc.b dEchoedClapHit2, $04, dLowerEchoedClapHit2, dLowerEchoedClapHit2, dFloorTom, $08, dLowerEchoedClapHit2, $06
	dc.b $02, dEchoedClapHit2, $06, $02, dLowerEchoedClapHit2, $08, dEchoedClapHit2, dLowerEchoedClapHit2
	dc.b $04, dEchoedClapHit2, $02, dLowerEchoedClapHit2, $04, $02, dEchoedClapHit2, $04
	dc.b dLowerEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $08, dLowerEchoedClapHit2, $06, $02, dEchoedClapHit2
	dc.b $06, $02, dLowerEchoedClapHit2, $08

SCD_MMZA_Loop36:
	dc.b $02
	sLoop		$00, $10, SCD_MMZA_Loop36
	sLoop		$01, $04, SCD_MMZA_Loop37

SCD_MMZA_Loop38:
	dc.b dFloorTom, $04, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $02, dLowerEchoedClapHit2, nRst
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, nRst, dLowerEchoedClapHit2, nRst, dEchoedClapHit2, nRst, dEchoedClapHit2
	dc.b nRst, dEchoedClapHit2, nRst, dLowerEchoedClapHit2, nRst, dEchoedClapHit2, dLowerEchoedClapHit2, nRst
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, nRst, dLowerEchoedClapHit2, nRst, dLowerEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2
	dc.b $04, $04, dLowerEchoedClapHit2, dEchoedClapHit2, $02, dLowerEchoedClapHit2, $04, $02
	dc.b dEchoedClapHit2, $04, dLowerEchoedClapHit2, dEchoedClapHit2, dEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2
	dc.b $02, dLowerEchoedClapHit2, $04, $02, dEchoedClapHit2, $06, dLowerEchoedClapHit2, $01
	dc.b $01, $02, $02
	sLoop		$00, $02, SCD_MMZA_Loop38
	sJump		SCD_MMZA_DAC

SCD_MMZA_Patches:

	; Patch $00
	; $3A
	; $71, $0C, $33, $01,	$1C, $16, $1D, $1F
	; $04, $06, $04, $08,	$00, $01, $03, $00
	; $16, $17, $16, $A6,	$25, $2F, $25, $FF
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $03, $0C, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $1D, $16, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $06, $08
	spSustainLv	$01, $01, $01, $0A
	spDecayRt	$00, $03, $01, $00
	spReleaseRt	$06, $06, $07, $06
	spTotalLv	$25, $25, $2F, $7F

	; Patch $01
	; $08
	; $0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$24, $2D, $13, $80
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
	spTotalLv	$24, $13, $2D, $00

	; Patch $02
	; $38
	; $0A, $08, $01, $02,	$14, $14, $10, $0E
	; $05, $08, $02, $08,	$00, $00, $00, $00
	; $99, $09, $09, $19,	$28, $23, $24, $FF
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0A, $01, $08, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $10, $14, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $02, $08, $08
	spSustainLv	$09, $00, $00, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$09, $09, $09, $09
	spTotalLv	$28, $24, $23, $7F

	; Patch $03
	; $3A
	; $64, $60, $60, $30,	$9D, $9D, $50, $4C
	; $04, $06, $04, $05,	$1F, $05, $01, $01
	; $A8, $25, $25, $55,	$7F, $06, $14, $80
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

	; Patch $04
	; $3A
	; $7F, $06, $22, $01,	$9F, $9F, $8E, $5A
	; $0F, $00, $00, $00,	$09, $00, $00, $00
	; $71, $83, $14, $05,	$14, $23, $1E, $FF
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $02, $00, $00
	spMultiple	$0F, $02, $06, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$1F, $0E, $1F, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $00, $00, $00
	spSustainLv	$07, $01, $08, $00
	spDecayRt	$09, $00, $00, $00
	spReleaseRt	$01, $04, $03, $05
	spTotalLv	$14, $1E, $23, $7F
