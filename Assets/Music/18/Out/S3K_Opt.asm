MDNV2_Uranus_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	MDNV2_Uranus_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $01
	sHeaderDAC	MDNV2_Uranus_DAC
	sHeaderFM	MDNV2_Uranus_FM1, $00, $00
	sHeaderFM	MDNV2_Uranus_FM2, $00, $00
	sHeaderFM	MDNV2_Uranus_FM3, $00, $00
	sHeaderFM	MDNV2_Uranus_FM4, $00, $00
	sHeaderFM	MDNV2_Uranus_FM5, $00, $00
	sHeaderPSG	MDNV2_Uranus_PSG1, $0C, $00, $00, v00
	sHeaderPSG	MDNV2_Uranus_PSG2, $0C, $00, $00, v00
	sHeaderPSG	MDNV2_Uranus_PSG3, $0C, $00, $00, v00

MDNV2_Uranus_PSG2:
	sStop

MDNV2_Uranus_FM1:
	sPatFM		$00
	saVolFM		$09
	sPan		spRight
	dc.b nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b nB2, nRst, nE2, nRst, $05, nC3, $04, nRst
	dc.b nB2, nRst, nA2, $05, nRst, $04, nE2, $0C
	dc.b nRst, $05, nE2, $04, nRst, nB2, nRst, nE2
	dc.b $05, nRst, $04, nC3, nRst, nB2, nRst, $05
	dc.b nA2, $04, nRst, nE2, $0D, nRst, $04, nE2
	dc.b nRst, nB2, $05, nRst, $04, nE2, nRst, nC3
	dc.b nRst, $05, nB2, $04, nRst, nA2, nRst, nG2
	dc.b $0D, nRst, $04, nA2, nRst, $05, nG2, $04
	dc.b nRst, nFs2, $0D, nRst, $04, nG2, nRst, nFs2
	dc.b $05, nRst, $04, nE2, $0C, nRst, $05, nE2
	dc.b $04, nRst, nB2, nRst, nE2, $05, nRst, $04
	dc.b nC3, nRst, nB2, nRst, $05, nA2, $04, nRst
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, nRst
	dc.b $05, nE2, $04, nRst, nC3, nRst, $05, nB2
	dc.b $04, nRst, nA2, nRst, nE2, $0D, nRst, $04
	dc.b nE2, nRst, $05, nB2, $04, nRst, nE2, nRst
	dc.b nC3, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b $05, nE2, $0C, nRst, $04, nFs2, $05, nRst
	dc.b $04, nG2, nRst, nA2, $05, nRst, $04, nB2
	dc.b nRst, nA2, nRst, $05, nG2, $04, nRst, nE2
	dc.b $0D, nRst, $04, nE2, nRst, nB2, nRst, $05
	dc.b nE2, $04, nRst, nC3, nRst, nB2, $05, nRst
	dc.b $04, nA2, nRst, nE2, $0D, nRst, $04, nE2
	dc.b nRst, $05, nB2, $04, nRst, nE2, nRst, nC3
	dc.b $05, nRst, $04, nB2, nRst, nA2, nRst, $05
	dc.b nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b nB2, nRst, nE2, nRst, $05, nC3, $04, nRst
	dc.b nB2, nRst, nA2, $05, nRst, $04, nE2, $0D
	dc.b nRst, $04, nFs2, nRst, nG2, nRst, $05, nA2
	dc.b $04, nRst, nB2, nRst, nA2, $05, nRst, $04
	dc.b nG2, nRst, nFs2, nRst, $05
	saVolFM		$02
	dc.b nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b $04, nE2

MDNV2_Uranus_Loop1:
	dc.b nRst, nE2, nRst, $05

MDNV2_Uranus_Loop2:
	dc.b nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop1
	dc.b nRst, nE2, nRst, nE2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop2
	dc.b nE2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop3:
	dc.b nD2, nRst, nD2, $05

MDNV2_Uranus_Loop4:
	dc.b nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop3
	dc.b nD2, nRst, nD2, nRst, $05, nD2, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop4
	dc.b nRst, nD2, nRst, nD2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop5:
	dc.b nRst, nC2, nRst, $05

MDNV2_Uranus_Loop6:
	dc.b nC2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop5
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop6
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2

MDNV2_Uranus_Loop7:
	dc.b nRst, nB1, $05

MDNV2_Uranus_Loop8:
	dc.b nRst, $04, nB1
	sLoop		$00, $02, MDNV2_Uranus_Loop7
	dc.b nRst, nB1, nRst, $05, nB1, $04
	sLoop		$01, $03, MDNV2_Uranus_Loop8

MDNV2_Uranus_Loop9:
	dc.b nRst, nE2, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2
	sLoop		$00, $03, MDNV2_Uranus_Loop9
	dc.b nRst, nE2, $05

MDNV2_Uranus_Loop10:
	dc.b nRst, $04, nD2, nRst, nD2, nRst, $05, nD2
	dc.b $04, nRst, nD2, nRst, nD2, $05
	sLoop		$00, $03, MDNV2_Uranus_Loop10
	dc.b nRst, $04, nD2, nRst, nC2, $05, nRst, $04
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b nC2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop11:
	dc.b nRst, nD2, nRst, $05, nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop11

MDNV2_Uranus_Loop12:
	dc.b nRst, nE2, nRst, nE2, $05, nRst, $04, nE2
	dc.b nRst, nE2, nRst, $05, nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop12
	dc.b nRst

MDNV2_Uranus_Loop13:
	dc.b nE2, nRst, nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop13
	dc.b nE2, nRst, nE2

MDNV2_Uranus_Loop14:
	dc.b nRst, $05, nC2, $04, nRst, nC2, nRst, nC2
	dc.b $05, nRst, $04, nC2, nRst, nC2
	sLoop		$00, $02, MDNV2_Uranus_Loop14

MDNV2_Uranus_Loop15:
	dc.b nRst, $05, nC2, $04, nRst, nC2
	sLoop		$00, $02, MDNV2_Uranus_Loop15
	dc.b nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop16:
	dc.b nRst, nD2, nRst, $05, nD2, $04, nRst, nD2
	dc.b nRst, nD2, $05, nRst, $04, nD2
	sLoop		$00, $02, MDNV2_Uranus_Loop16
	dc.b nRst, nD2, $05, nRst, $04, nD2, nRst, nD2
	dc.b nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b $05, nRst, $04, nE2

MDNV2_Uranus_Loop17:
	dc.b nRst, nE2, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2, nRst, nE2
	dc.b nRst, $05, nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop17
	dc.b nRst, nE2, nRst, nB1, $05, nRst, $04, nB1
	dc.b nRst, nB1, nRst, $05, nB1, $04, nRst

MDNV2_Uranus_Loop18:
	dc.b nB1, nRst, nB1, $05

MDNV2_Uranus_Loop19:
	dc.b nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop18
	dc.b nB1, nRst, nB1, nRst, $05, nB1, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop19
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop20:
	dc.b nRst, nC2, nRst, $05

MDNV2_Uranus_Loop21:
	dc.b nC2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop20
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop21
	dc.b nC2, nRst, nC2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop22:
	dc.b nD2, nRst, nD2, $05

MDNV2_Uranus_Loop23:
	dc.b nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop22
	dc.b nD2, nRst, nD2, nRst, $05, nD2, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop23
	dc.b nRst, nD2, nRst, nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop24:
	dc.b nRst, nB1, nRst, $05

MDNV2_Uranus_Loop25:
	dc.b nB1, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop24
	dc.b nRst, nB1, nRst, nB1, $05, nRst, $04
	sLoop		$01, $03, MDNV2_Uranus_Loop25
	dc.b nB1, $08, nRst, $11, nB1, $09, nRst, $10
	dc.b nB1, $09, nRst, $08, nB1, $09, nRst, $19
	dc.b nB1, $04, nRst, nB1, nRst, $05, nB1, $04
	dc.b nRst, nE2, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2, nRst, nE2
	dc.b nRst, $05, nE2, $04, nRst, nE2, nRst, nE2
	dc.b $05, nRst, $04, nD2, nRst, nD2, nRst, $05
	dc.b nD2, $04, nRst

MDNV2_Uranus_Loop26:
	dc.b nD2, nRst, nD2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop26
	dc.b nD2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b nC2, nRst, $05, nC2, $04, nRst, nC2, nRst
	dc.b nD2, $05, nRst, $04, nD2, nRst, nD2, nRst
	dc.b $05, nD2, $04, nRst

MDNV2_Uranus_Loop27:
	dc.b nD2, nRst, nD2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop27
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b nC2, nRst, $05, nC2, $04, nRst, nD2, nRst
	dc.b nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop28:
	dc.b nRst, nD2, nRst, $05, nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop28
	dc.b nRst, nD2, nRst, nG2, $05, nRst, $04, nG2
	dc.b nRst, nG2, nRst, $05, nG2, $04, nRst, nFs2
	dc.b nRst, nFs2, $05, nRst, $04, nFs2, nRst, nFs2
	dc.b nRst, $05, nE2, $04, nRst, nE2, nRst, nE2
	dc.b $05, nRst, $04, nE2, nRst, nB1, $05, nRst
	dc.b $04, nB1, nRst, nB1, nRst, $05, nB1, $04
	dc.b nRst, nA1, nRst, nA1, $05, nRst, $04, nA1
	dc.b nRst, nA1, nRst, $05, nA1, $04, nRst, nA1
	dc.b nRst, nA1, $05, nRst, $04, nA1

MDNV2_Uranus_Loop29:
	dc.b nRst, nB1, nRst, $05, nB1, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop29
	dc.b nRst, nB1, nRst, nB1, $05, nRst, $04, nB1
	dc.b nRst, nB1, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2, nRst, nD2
	dc.b nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b $05

MDNV2_Uranus_Loop30:
	dc.b nRst, $04, nC2, nRst, nC2, $05, nRst, $04
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04
	sLoop		$00, $03, MDNV2_Uranus_Loop30
	dc.b nRst, nC2, nRst, $05, nD2, $04, nRst, nD2
	dc.b nRst, nD2, $05, nRst, $04, nD2, nRst, nD2
	dc.b nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b $05, nRst, $04, nE2, nRst, nE2, nRst, $05
	dc.b nE2, $04, nRst

MDNV2_Uranus_Loop31:
	dc.b nE2, nRst, nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop31
	dc.b nE2, nRst, nD2, nRst, $05, nD2, $04, nRst
	dc.b nD2, nRst, nD2, $05, nRst, $04, nD2, nRst
	dc.b nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop32:
	dc.b nRst, nC2, nRst, $05, nC2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop32
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04, nD2
	dc.b nRst, $0D
	saVolFM		$29
	dc.b sHold, nRst, $10
	saVolFM		$D5
	dc.b nD2, $05, nRst, $04, nD2, nRst, nD2, nRst
	dc.b $05, nE2, $0C, nRst, $04, nE2, $05, nRst
	dc.b $04, nB2, nRst, nE2, $05, nRst, $04, nC3
	dc.b nRst, nB2, nRst, $05, nA2, $04, nRst, nE2
	dc.b $0D, nRst, $04, nE2, nRst, nB2, nRst, $05
	dc.b nE2, $04, nRst, nC3, nRst, nB2, $05, nRst
	dc.b $04, nA2, nRst, nE2, $0D, nRst, $04, nE2
	dc.b nRst, $05, nB2, $04, nRst, nE2, nRst, nC3
	dc.b $05, nRst, $04, nB2, nRst, nA2, nRst, $05
	dc.b nG2, $0C, nRst, $04, nA2, $05, nRst, $04
	dc.b nG2, nRst, nFs2, $0D, nRst, $04, nG2, nRst
	dc.b nFs2, $05, nRst, $04, nE2, $0D, nRst, $04
	dc.b nE2, nRst, nB2, nRst, $05, nE2, $04, nRst
	dc.b nC3, nRst, nB2, $05, nRst, $04, nA2, nRst
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, $05
	dc.b nRst, $04, nE2, nRst, nC3, nRst, $05, nB2
	dc.b $04, nRst, nA2, nRst, $05, nE2, $0C, nRst
	dc.b $04, nE2, $05, nRst, $04, nB2, nRst, nE2
	dc.b nRst, $05, nC3, $04, nRst, nB2, nRst, nA2
	dc.b $05, nRst, $04, nE2, $0C, nRst, $05, nFs2
	dc.b $04, nRst, nG2, nRst, nA2, $05, nRst, $04
	dc.b nB2, nRst, nA2, nRst, $05, nG2, $04, nRst
	dc.b nFs2, nRst, $05
	saVolFM		$02

MDNV2_Uranus_Loop33:
	dc.b nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b $04, nE2, nRst, nE2, nRst, $05
	sLoop		$00, $02, MDNV2_Uranus_Loop33
	dc.b nE2, $04, nRst

MDNV2_Uranus_Loop34:
	dc.b nE2, nRst, nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop34
	dc.b nE2

MDNV2_Uranus_Loop35:
	dc.b nRst, nD2, nRst, $05, nD2, $04, nRst, nD2
	dc.b nRst, nD2, $05, nRst, $04, nD2
	sLoop		$00, $02, MDNV2_Uranus_Loop35

MDNV2_Uranus_Loop36:
	dc.b nRst, nD2, nRst, $05, nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop36
	dc.b nRst, nD2, nRst, nD2, $05

MDNV2_Uranus_Loop37:
	dc.b nRst, $04, nC2, nRst, nC2, nRst, $05, nC2
	dc.b $04, nRst, nC2, nRst, nC2, $05
	sLoop		$00, $02, MDNV2_Uranus_Loop37
	dc.b nRst, $04, nC2, nRst, nC2, $05, nRst, $04
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2

MDNV2_Uranus_Loop38:
	dc.b nRst, nB1, $05, nRst, $04, nB1, nRst, nB1
	dc.b nRst, $05, nB1, $04, nRst, nB1
	sLoop		$00, $02, MDNV2_Uranus_Loop38
	dc.b nRst, $05, nB1, $04, nRst, nB1, nRst, nB1
	dc.b $05, nRst, $04, nB1, nRst, nB1, nRst, $05
	dc.b nB1, $04, nRst

MDNV2_Uranus_Loop39:
	dc.b nE2, nRst, nE2, $05, nRst, $04, nE2, nRst
	dc.b nE2, nRst, $05, nE2, $04, nRst, nE2, nRst
	dc.b nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop39
	dc.b nE2, nRst, nE2, nRst, $05, nD2, $04, nRst
	dc.b nD2, nRst, nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop40:
	dc.b nRst, nD2, nRst, $05

MDNV2_Uranus_Loop41:
	dc.b nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop40
	dc.b nRst, nD2, nRst, nD2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop41
	dc.b nD2, nRst, nC2, nRst, $05, nC2, $04, nRst

MDNV2_Uranus_Loop42:
	dc.b nC2, nRst, nC2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop42
	dc.b nC2, nRst, nC2, nRst, $05, nD2, $04, nRst
	dc.b nD2, nRst, nD2, $05, nRst, $04, nD2, nRst
	dc.b nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b nD2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop43:
	dc.b nRst, nE2, nRst, $05

MDNV2_Uranus_Loop44:
	dc.b nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop43
	dc.b nRst, nE2, nRst, nE2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop44
	dc.b nE2, nRst, nE2, nRst, $05, nE2, $04, nRst
	dc.b nE2, nRst, nE2, $7F, sHold, $08, nC2, $7F
	dc.b sHold, $08, nG2, $43, nFs2, nB2, $44, nRst
	dc.b $7F, nRst, $4B
	sStop

MDNV2_Uranus_FM2:
	sPatFM		$01
	saVolFM		$0B
	sPan		spLeft
	dc.b nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b nB2, nRst, nE2, nRst, $05, nC3, $04, nRst
	dc.b nB2, nRst, nA2, $05, nRst, $04, nE2, $0C
	dc.b nRst, $05, nE2, $04, nRst, nB2, nRst, nE2
	dc.b $05, nRst, $04, nC3, nRst, nB2, nRst, $05
	dc.b nA2, $04, nRst, nE2, $0D, nRst, $04, nE2
	dc.b nRst, nB2, $05, nRst, $04, nE2, nRst, nC3
	dc.b nRst, $05, nB2, $04, nRst, nA2, nRst, nG2
	dc.b $0D, nRst, $04, nA2, nRst, $05, nG2, $04
	dc.b nRst, nFs2, $0D, nRst, $04, nG2, nRst, nFs2
	dc.b $05, nRst, $04, nE2, $0C, nRst, $05, nE2
	dc.b $04, nRst, nB2, nRst, nE2, $05, nRst, $04
	dc.b nC3, nRst, nB2, nRst, $05, nA2, $04, nRst
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, nRst
	dc.b $05, nE2, $04, nRst, nC3, nRst, $05, nB2
	dc.b $04, nRst, nA2, nRst, nE2, $0D, nRst, $04
	dc.b nE2, nRst, $05, nB2, $04, nRst, nE2, nRst
	dc.b nC3, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b $05, nE2, $0C, nRst, $04, nFs2, $05, nRst
	dc.b $04, nG2, nRst, nA2, $05, nRst, $04, nB2
	dc.b nRst, nA2, nRst, $05, nG2, $04, nRst, nE2
	dc.b $0D, nRst, $04, nE2, nRst, nB2, nRst, $05
	dc.b nE2, $04, nRst, nC3, nRst, nB2, $05, nRst
	dc.b $04, nA2, nRst, nE2, $0D, nRst, $04, nE2
	dc.b nRst, $05, nB2, $04, nRst, nE2, nRst, nC3
	dc.b $05, nRst, $04, nB2, nRst, nA2, nRst, $05
	dc.b nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b nB2, nRst, nE2, nRst, $05, nC3, $04, nRst
	dc.b nB2, nRst, nA2, $05, nRst, $04, nE2, $0D
	dc.b nRst, $04, nFs2, nRst, nG2, nRst, $05, nA2
	dc.b $04, nRst, nB2, nRst, nA2, $05, nRst, $04
	dc.b nG2, nRst, nFs2, nRst, $05
	saVolFM		$02
	dc.b nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b $04, nE2

MDNV2_Uranus_Loop45:
	dc.b nRst, nE2, nRst, $05

MDNV2_Uranus_Loop46:
	dc.b nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop45
	dc.b nRst, nE2, nRst, nE2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop46
	dc.b nE2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop47:
	dc.b nD2, nRst, nD2, $05

MDNV2_Uranus_Loop48:
	dc.b nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop47
	dc.b nD2, nRst, nD2, nRst, $05, nD2, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop48
	dc.b nRst, nD2, nRst, nD2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop49:
	dc.b nRst, nC2, nRst, $05

MDNV2_Uranus_Loop50:
	dc.b nC2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop49
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop50
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2

MDNV2_Uranus_Loop51:
	dc.b nRst, nB1, $05

MDNV2_Uranus_Loop52:
	dc.b nRst, $04, nB1
	sLoop		$00, $02, MDNV2_Uranus_Loop51
	dc.b nRst, nB1, nRst, $05, nB1, $04
	sLoop		$01, $03, MDNV2_Uranus_Loop52

MDNV2_Uranus_Loop53:
	dc.b nRst, nE2, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2
	sLoop		$00, $03, MDNV2_Uranus_Loop53
	dc.b nRst, nE2, $05

MDNV2_Uranus_Loop54:
	dc.b nRst, $04, nD2, nRst, nD2, nRst, $05, nD2
	dc.b $04, nRst, nD2, nRst, nD2, $05
	sLoop		$00, $03, MDNV2_Uranus_Loop54
	dc.b nRst, $04, nD2, nRst, nC2, $05, nRst, $04
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b nC2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop55:
	dc.b nRst, nD2, nRst, $05, nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop55

MDNV2_Uranus_Loop56:
	dc.b nRst, nE2, nRst, nE2, $05, nRst, $04, nE2
	dc.b nRst, nE2, nRst, $05, nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop56
	dc.b nRst

MDNV2_Uranus_Loop57:
	dc.b nE2, nRst, nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop57
	dc.b nE2, nRst, nE2

MDNV2_Uranus_Loop58:
	dc.b nRst, $05, nC2, $04, nRst, nC2, nRst, nC2
	dc.b $05, nRst, $04, nC2, nRst, nC2
	sLoop		$00, $02, MDNV2_Uranus_Loop58

MDNV2_Uranus_Loop59:
	dc.b nRst, $05, nC2, $04, nRst, nC2
	sLoop		$00, $02, MDNV2_Uranus_Loop59
	dc.b nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop60:
	dc.b nRst, nD2, nRst, $05, nD2, $04, nRst, nD2
	dc.b nRst, nD2, $05, nRst, $04, nD2
	sLoop		$00, $02, MDNV2_Uranus_Loop60
	dc.b nRst, nD2, $05, nRst, $04, nD2, nRst, nD2
	dc.b nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b $05, nRst, $04, nE2

MDNV2_Uranus_Loop61:
	dc.b nRst, nE2, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2, nRst, nE2
	dc.b nRst, $05, nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop61
	dc.b nRst, nE2, nRst, nB1, $05, nRst, $04, nB1
	dc.b nRst, nB1, nRst, $05, nB1, $04, nRst

MDNV2_Uranus_Loop62:
	dc.b nB1, nRst, nB1, $05

MDNV2_Uranus_Loop63:
	dc.b nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop62
	dc.b nB1, nRst, nB1, nRst, $05, nB1, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop63
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop64:
	dc.b nRst, nC2, nRst, $05

MDNV2_Uranus_Loop65:
	dc.b nC2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop64
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop65
	dc.b nC2, nRst, nC2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop66:
	dc.b nD2, nRst, nD2, $05

MDNV2_Uranus_Loop67:
	dc.b nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop66
	dc.b nD2, nRst, nD2, nRst, $05, nD2, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop67
	dc.b nRst, nD2, nRst, nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop68:
	dc.b nRst, nB1, nRst, $05

MDNV2_Uranus_Loop69:
	dc.b nB1, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop68
	dc.b nRst, nB1, nRst, nB1, $05, nRst, $04
	sLoop		$01, $03, MDNV2_Uranus_Loop69
	dc.b nB1, $08
	saVolFM		$28
	dc.b sHold, $11
	saVolFM		$D6
	dc.b $09
	saVolFM		$2A
	dc.b sHold, $10
	saVolFM		$D6
	dc.b $09
	saVolFM		$2A
	dc.b sHold, $08
	saVolFM		$D6
	dc.b $09
	saVolFM		$2A
	dc.b sHold, $19
	saVolFM		$D6
	dc.b $04, nRst, nB1, nRst, $05, nB1, $04, nRst
	dc.b nE2, nRst, $05, nE2, $04, nRst, nE2, nRst
	dc.b nE2, $05, nRst, $04, nE2, nRst, nE2, nRst
	dc.b $05, nE2, $04, nRst, nE2, nRst, nE2, $05
	dc.b nRst, $04, nD2, nRst, nD2, nRst, $05, nD2
	dc.b $04, nRst

MDNV2_Uranus_Loop70:
	dc.b nD2, nRst, nD2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop70
	dc.b nD2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b nC2, nRst, $05, nC2, $04, nRst, nC2, nRst
	dc.b nD2, $05, nRst, $04, nD2, nRst, nD2, nRst
	dc.b $05, nD2, $04, nRst

MDNV2_Uranus_Loop71:
	dc.b nD2, nRst, nD2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop71
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b nC2, nRst, $05, nC2, $04, nRst, nD2, nRst
	dc.b nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop72:
	dc.b nRst, nD2, nRst, $05, nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop72
	dc.b nRst, nD2, nRst, nG2, $05, nRst, $04, nG2
	dc.b nRst, nG2, nRst, $05, nG2, $04, nRst, nFs2
	dc.b nRst, nFs2, $05, nRst, $04, nFs2, nRst, nFs2
	dc.b nRst, $05, nE2, $04, nRst, nE2, nRst, nE2
	dc.b $05, nRst, $04, nE2, nRst, nB1, $05, nRst
	dc.b $04, nB1, nRst, nB1, nRst, $05, nB1, $04
	dc.b nRst, nA1, nRst, nA1, $05, nRst, $04, nA1
	dc.b nRst, nA1, nRst, $05, nA1, $04, nRst, nA1
	dc.b nRst, nA1, $05, nRst, $04, nA1

MDNV2_Uranus_Loop73:
	dc.b nRst, nB1, nRst, $05, nB1, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop73
	dc.b nRst, nB1, nRst, nB1, $05, nRst, $04, nB1
	dc.b nRst, nB1, nRst, $05, nE2, $04, nRst, nE2
	dc.b nRst, nE2, $05, nRst, $04, nE2, nRst, nD2
	dc.b nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b $05

MDNV2_Uranus_Loop74:
	dc.b nRst, $04, nC2, nRst, nC2, $05, nRst, $04
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04
	sLoop		$00, $03, MDNV2_Uranus_Loop74
	dc.b nRst, nC2, nRst, $05, nD2, $04, nRst, nD2
	dc.b nRst, nD2, $05, nRst, $04, nD2, nRst, nD2
	dc.b nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b $05, nRst, $04, nE2, nRst, nE2, nRst, $05
	dc.b nE2, $04, nRst

MDNV2_Uranus_Loop75:
	dc.b nE2, nRst, nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop75
	dc.b nE2, nRst, nD2, nRst, $05, nD2, $04, nRst
	dc.b nD2, nRst, nD2, $05, nRst, $04, nD2, nRst
	dc.b nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop76:
	dc.b nRst, nC2, nRst, $05, nC2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop76
	dc.b nRst, nC2, nRst, nC2, $05, nRst, $04, nD2
	dc.b nRst, $1D, nD2, $05, nRst, $04, nD2, nRst
	dc.b nD2, nRst, $05, nE2, $0C, nRst, $04, nE2
	dc.b $05, nRst, $04, nB2, nRst, nE2, $05, nRst
	dc.b $04, nC3, nRst, nB2, nRst, $05, nA2, $04
	dc.b nRst, nE2, $0D, nRst, $04, nE2, nRst, nB2
	dc.b nRst, $05, nE2, $04, nRst, nC3, nRst, nB2
	dc.b $05, nRst, $04, nA2, nRst, nE2, $0D, nRst
	dc.b $04, nE2, nRst, $05, nB2, $04, nRst, nE2
	dc.b nRst, nC3, $05, nRst, $04, nB2, nRst, nA2
	dc.b nRst, $05, nG2, $0C, nRst, $04, nA2, $05
	dc.b nRst, $04, nG2, nRst, nFs2, $0D, nRst, $04
	dc.b nG2, nRst, nFs2, $05, nRst, $04, nE2, $0D
	dc.b nRst, $04, nE2, nRst, nB2, nRst, $05, nE2
	dc.b $04, nRst, nC3, nRst, nB2, $05, nRst, $04
	dc.b nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst
	dc.b nB2, $05, nRst, $04, nE2, nRst, nC3, nRst
	dc.b $05, nB2, $04, nRst, nA2, nRst, $05, nE2
	dc.b $0C, nRst, $04, nE2, $05, nRst, $04, nB2
	dc.b nRst, nE2, nRst, $05, nC3, $04, nRst, nB2
	dc.b nRst, nA2, $05, nRst, $04, nE2, $0C, nRst
	dc.b $05, nFs2, $04, nRst, nG2, nRst, nA2, $05
	dc.b nRst, $04, nB2, nRst, nA2, nRst, $05, nG2
	dc.b $04, nRst, nFs2, nRst, $05
	saVolFM		$02

MDNV2_Uranus_Loop77:
	dc.b nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b $04, nE2, nRst, nE2, nRst, $05
	sLoop		$00, $02, MDNV2_Uranus_Loop77
	dc.b nE2, $04, nRst

MDNV2_Uranus_Loop78:
	dc.b nE2, nRst, nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop78
	dc.b nE2

MDNV2_Uranus_Loop79:
	dc.b nRst, nD2, nRst, $05, nD2, $04, nRst, nD2
	dc.b nRst, nD2, $05, nRst, $04, nD2
	sLoop		$00, $02, MDNV2_Uranus_Loop79

MDNV2_Uranus_Loop80:
	dc.b nRst, nD2, nRst, $05, nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop80
	dc.b nRst, nD2, nRst, nD2, $05

MDNV2_Uranus_Loop81:
	dc.b nRst, $04, nC2, nRst, nC2, nRst, $05, nC2
	dc.b $04, nRst, nC2, nRst, nC2, $05
	sLoop		$00, $02, MDNV2_Uranus_Loop81
	dc.b nRst, $04, nC2, nRst, nC2, $05, nRst, $04
	dc.b nC2, nRst, nC2, nRst, $05, nC2, $04, nRst
	dc.b nC2

MDNV2_Uranus_Loop82:
	dc.b nRst, nB1, $05, nRst, $04, nB1, nRst, nB1
	dc.b nRst, $05, nB1, $04, nRst, nB1
	sLoop		$00, $02, MDNV2_Uranus_Loop82
	dc.b nRst, $05, nB1, $04, nRst, nB1, nRst, nB1
	dc.b $05, nRst, $04, nB1, nRst, nB1, nRst, $05
	dc.b nB1, $04, nRst

MDNV2_Uranus_Loop83:
	dc.b nE2, nRst, nE2, $05, nRst, $04, nE2, nRst
	dc.b nE2, nRst, $05, nE2, $04, nRst, nE2, nRst
	dc.b nE2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop83
	dc.b nE2, nRst, nE2, nRst, $05, nD2, $04, nRst
	dc.b nD2, nRst, nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop84:
	dc.b nRst, nD2, nRst, $05

MDNV2_Uranus_Loop85:
	dc.b nD2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop84
	dc.b nRst, nD2, nRst, nD2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop85
	dc.b nD2, nRst, nC2, nRst, $05, nC2, $04, nRst

MDNV2_Uranus_Loop86:
	dc.b nC2, nRst, nC2, $05, nRst, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop86
	dc.b nC2, nRst, nC2, nRst, $05, nD2, $04, nRst
	dc.b nD2, nRst, nD2, $05, nRst, $04, nD2, nRst
	dc.b nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b nD2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop87:
	dc.b nRst, nE2, nRst, $05

MDNV2_Uranus_Loop88:
	dc.b nE2, $04
	sLoop		$00, $02, MDNV2_Uranus_Loop87
	dc.b nRst, nE2, nRst, nE2, $05, nRst, $04
	sLoop		$01, $02, MDNV2_Uranus_Loop88
	dc.b nE2, nRst, nE2, nRst, $05, nE2, $04, nRst
	dc.b nE2, nRst, nE2, $7F, sHold, $08, nC2, $7F
	dc.b sHold, $08, nG2, $43, nFs2, nB2, $44, nRst
	dc.b $7F, nRst, $4B
	sStop

MDNV2_Uranus_FM3:
	sPan		spCenter
	dc.b nRst, $02
	sPatFM		$00
	saVolFM		$12
	sPan		spLeft
	dc.b nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b nB2, nRst, nE2, nRst, $05, nC3, $04, nRst
	dc.b nB2, nRst, nA2, $05, nRst, $04, nE2, $0D
	dc.b nRst, $04, nE2, nRst, nB2, nRst, $05, nE2
	dc.b $04, nRst, nC3, nRst, nB2, $05, nRst, $04
	dc.b nA2, nRst
	sPatFM		$01
	saVolFM		$02
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, $05
	dc.b nRst, $04, nE2, nRst, nC3, nRst, $05, nB2
	dc.b $04, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b $04, nA2, $05, nRst, $04, nG2, nRst, nFs2
	dc.b $0D, nRst, $04, nG2, nRst, nFs2, $05, nRst
	dc.b $04
	sPatFM		$00
	saVolFM		$FE
	dc.b nE2, $0C, nRst, $05, nE2, $04, nRst, nB2
	dc.b nRst, nE2, $05, nRst, $04, nC3, nRst, nB2
	dc.b $05, nRst, $04, nA2, nRst, nE2, $0D, nRst
	dc.b $04, nE2, nRst, nB2, $05, nRst, $04, nE2
	dc.b nRst, nC3, nRst, $05, nB2, $04, nRst, nA2
	dc.b nRst, nE2, $0D, nRst, $04, nE2, nRst, $05
	dc.b nB2, $04, nRst, nE2, nRst, $05, nC3, $04
	dc.b nRst, nB2, nRst, nA2, $05, nRst, $04, nE2
	dc.b $0C, nRst, $05, nFs2, $04, nRst, nG2, nRst
	dc.b nA2, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b $05, nG2, $04, nRst, nE2, $0D, nRst, $04
	dc.b nE2, nRst, nB2, $05, nRst, $04, nE2, nRst
	dc.b nC3, nRst, $05, nB2, $04, nRst, nA2, nRst
	dc.b nE2, $0D, nRst, $04, nE2, nRst, $05, nB2
	dc.b $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b nB2, nRst, nA2, nRst, $05, nE2, $0C, nRst
	dc.b $05, nE2, $04, nRst, nB2, nRst, nE2, $05
	dc.b nRst, $04, nC3, nRst, nB2, nRst, $05, nA2
	dc.b $04, nRst, nE2, $0D, nRst, $04, nFs2, nRst
	dc.b nG2, nRst, $05, nA2, $04, nRst, nB2, nRst
	dc.b nA2, $05, nRst, $04, nG2, nRst, nFs2, $05
	dc.b nRst, $02
	sPatFM		$03
	saVolFM		$F7
	sPan		spCenter
	dc.b nE3, $10, nFs3, $09, nG3, $11, nA3, $08
	dc.b nB3, $0A, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$01
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$02
	dc.b $02, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$FF
	dc.b $01, sHold
	ssDetune	$F4
	dc.b $01
	ssDetune	$00
	dc.b nA3, $11, nB3, $10, nFs4, $11
	ssDetune	$0C
	dc.b nE4, $01, sHold
	ssDetune	$18
	dc.b $01, sHold
	ssDetune	$EC
	dc.b nF4, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$10
	dc.b $02, sHold
	ssDetune	$F1
	dc.b nFs4, $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$00
	dc.b $08, nG4, nFs4, $11, nE4, $09
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$08
	dc.b nEb4, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$08
	dc.b nD4, sHold
	ssDetune	$00
	dc.b $0E, sHold
	ssDetune	$06
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$ED
	dc.b nEb4, sHold
	ssDetune	$EE
	dc.b $02, sHold
	ssDetune	$13
	dc.b nD4, $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs4, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nD4, sHold
	ssDetune	$FB
	dc.b $01, sHold
	ssDetune	$07
	dc.b $02, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb4, $02, sHold
	ssDetune	$10
	dc.b nD4, $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs4, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F3
	dc.b nD4, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb4, sHold
	ssDetune	$0B
	dc.b nD4, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$0B
	dc.b nCs4
	saVolFM		$01
	dc.b sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$F6
	dc.b nD4
	saVolFM		$01
	dc.b sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$14
	dc.b $02
	saVolFM		$01
	dc.b sHold
	ssDetune	$ED
	dc.b nEb4, $01, sHold
	ssDetune	$08
	dc.b nD4
	saVolFM		$01
	dc.b sHold
	ssDetune	$F6
	dc.b nCs4, sHold
	ssDetune	$F9
	dc.b nC4
	saVolFM		$01
	dc.b sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$20
	dc.b nB3
	saVolFM		$01
	dc.b sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01
	saVolFM		$01
	dc.b sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01
	saVolFM		$F9
	ssDetune	$00
	dc.b $11
	ssDetune	$14
	dc.b nE4, $01, sHold
	ssDetune	$F0
	dc.b nF4, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$ED
	dc.b nFs4, sHold
	ssDetune	$00
	dc.b $0D, nB3, $08, $11, nA3, $08, nB3, $0C
	dc.b sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$EF
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $02, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$0E
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$EB
	dc.b $01
	ssDetune	$00
	dc.b nA3, $11, nB3, nC4, $10, nB3, $11, nC4
	dc.b $09, nB3, $11, nBb3, $08, nB3, $12, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $02, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$EF
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$0E
	dc.b $02, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FA
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$00
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$FB
	dc.b $01, sHold
	ssDetune	$E0
	dc.b $02, sHold
	ssDetune	$FA
	dc.b nBb3, $01, sHold
	ssDetune	$FB
	dc.b nA3, sHold
	ssDetune	$ED
	dc.b nAb3, sHold
	ssDetune	$F3
	dc.b nG3, sHold
	ssDetune	$06
	dc.b nFs3, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$F2
	dc.b nF3, sHold
	ssDetune	$F1
	dc.b nE3, sHold
	ssDetune	$03
	dc.b nD3, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01
	ssDetune	$00
	dc.b nE3, $11, nFs3, $08, nG3, $11, nA3, $09
	dc.b nB3, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$01
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$05
	dc.b $02, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$FF
	dc.b $01, sHold
	ssDetune	$F4
	dc.b $01
	ssDetune	$00
	dc.b nA3, $11, nB3, nFs4
	ssDetune	$0C
	dc.b nE4, $01, sHold
	ssDetune	$18
	dc.b $01, sHold
	ssDetune	$EC
	dc.b nF4, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nFs4, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$00
	dc.b $09, nG4, $08, nFs4, $11, nE4, $08
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$08
	dc.b nEb4, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$08
	dc.b nD4, sHold
	ssDetune	$00
	dc.b $0E, sHold
	ssDetune	$06
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$ED
	dc.b nEb4, sHold
	ssDetune	$EE
	dc.b $02, sHold
	ssDetune	$13
	dc.b nD4, $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$09
	dc.b $02, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs4, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nD4, sHold
	ssDetune	$FB
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb4, $02, sHold
	ssDetune	$10
	dc.b nD4, $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs4, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F3
	dc.b nD4, sHold
	ssDetune	$05
	dc.b $02, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb4, sHold
	ssDetune	$0B
	dc.b nD4, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$0B
	dc.b nCs4
	saVolFM		$01
	dc.b sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$F6
	dc.b nD4
	saVolFM		$01
	dc.b sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01
	saVolFM		$01
	dc.b sHold
	ssDetune	$ED
	dc.b nEb4, sHold
	ssDetune	$08
	dc.b nD4
	saVolFM		$01
	dc.b sHold
	ssDetune	$F6
	dc.b nCs4, sHold
	ssDetune	$F9
	dc.b nC4
	saVolFM		$01
	dc.b sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$20
	dc.b nB3
	saVolFM		$01
	dc.b sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01
	saVolFM		$01
	dc.b sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01
	saVolFM		$F9
	ssDetune	$00
	dc.b $11, nFs4, $22, nB3, nD4, $21, nB3, $15
	dc.b sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$0C
	dc.b nBb3, sHold
	ssDetune	$F0
	dc.b $01, sHold
	ssDetune	$14
	dc.b nA3, $02, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$14
	dc.b nAb3, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$1A
	dc.b nG3, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$19
	dc.b nFs3, $03
	ssDetune	$00
	dc.b nE4, $1A, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $02, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$EF
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$0E
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F7
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$F7
	dc.b $01, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$14
	dc.b $02, sHold
	ssDetune	$06
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$FA
	dc.b $01, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$0E
	dc.b $01, sHold
	ssDetune	$FA
	dc.b $01, sHold
	ssDetune	$09
	dc.b nEb4, sHold
	ssDetune	$05
	dc.b nD4, sHold
	ssDetune	$F8
	dc.b nCs4, sHold
	ssDetune	$04
	dc.b nC4, $02, sHold
	ssDetune	$EF
	dc.b $01, sHold
	ssDetune	$E3
	dc.b $01, sHold
	ssDetune	$20
	dc.b nB3, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$E7
	dc.b $01, sHold
	ssDetune	$FF
	dc.b nBb3, sHold
	ssDetune	$12
	dc.b nA3, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$15
	dc.b nAb3, sHold
	ssDetune	$EE
	dc.b nA3, sHold
	ssDetune	$FD
	dc.b $01
	ssDetune	$00
	dc.b nD4, $11, nE4, nB4

MDNV2_Uranus_Loop89:
	ssDetune	$20
	dc.b nBb4, $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$00
	dc.b $16, nB4, $19, nE4, $11
	sLoop		$00, $02, MDNV2_Uranus_Loop89
	ssDetune	$20
	dc.b nBb4, $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$00
	dc.b $16, nB4, $1A, nE4, $10, nD4, $1A, nE4
	dc.b $19, nG4, $11, nFs4, $19, nG4, nFs4, $04
	dc.b nG4, $05, nFs4, $08, nD4, $19, nB3, $1A
	dc.b nD4, $10, nE4, $1B, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$EF
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$0E
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$16
	dc.b $02, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $01, sHold
	ssDetune	$F6
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$F6
	dc.b $01, sHold
	ssDetune	$EA
	dc.b $02, sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$F0
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb4, sHold
	ssDetune	$00
	dc.b nCs4, sHold, nC4, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$1F
	dc.b nB3, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$F2
	dc.b $01, sHold
	ssDetune	$0E
	dc.b nBb3, sHold
	ssDetune	$1B
	dc.b nA3, sHold
	ssDetune	$E6
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nAb3, sHold
	ssDetune	$10
	dc.b nG3, sHold
	ssDetune	$FB
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$14
	dc.b $02
	ssDetune	$00
	dc.b nD4, $10, nE4, $11, nB4
	ssDetune	$20
	dc.b nBb4, $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$00
	dc.b $16, nB4, $1A, nE4, $10
	ssDetune	$20
	dc.b nBb4, $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$00
	dc.b $17, nB4, $19, nE4, $11
	ssDetune	$20
	dc.b nBb4, $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$00
	dc.b $16, nB4, $19, nE4, $11, nD4, $19, nE4
	dc.b nG4, $11, nFs4, $1B, sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$14
	dc.b nF4, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$EF
	dc.b nFs4, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$0E
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $02, sHold
	ssDetune	$14
	dc.b nF4, $01, sHold
	ssDetune	$F3
	dc.b nFs4, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0B
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$EB
	dc.b $01, sHold
	ssDetune	$15
	dc.b nF4, sHold
	ssDetune	$F6
	dc.b nFs4, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$08
	dc.b $01, sHold
	ssDetune	$F6
	dc.b $01, sHold
	ssDetune	$15
	dc.b nF4, sHold
	ssDetune	$EB
	dc.b nFs4, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$0A
	dc.b $02, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$06
	dc.b $01, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$14
	dc.b nF4, sHold
	ssDetune	$EC
	dc.b nFs4, sHold
	ssDetune	$FB
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nF4, sHold
	ssDetune	$E9
	dc.b nE4, sHold
	ssDetune	$14
	dc.b nD4, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$00
	dc.b nCs4, sHold
	ssDetune	$F1
	dc.b nD4, sHold
	ssDetune	$F9
	dc.b $01
	ssDetune	$00
	dc.b nFs4, $11, nG4, nA4
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$E8
	dc.b nBb4, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$E0
	dc.b nB4, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$00
	dc.b $2C, nG5, $11, nFs5, sHold
	ssDetune	$07
	dc.b nF5, $01, sHold
	ssDetune	$1B
	dc.b nE5, sHold
	ssDetune	$F7
	dc.b $01, sHold
	ssDetune	$03
	dc.b nEb5, sHold
	ssDetune	$07
	dc.b nD5, sHold
	ssDetune	$03
	dc.b nCs5, sHold
	ssDetune	$0E
	dc.b nC5, $02, sHold
	ssDetune	$24
	dc.b nB4, $01, sHold
	ssDetune	$00
	dc.b $02, sHold
	ssDetune	$20
	dc.b nBb4, $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$F4
	dc.b $03
	ssDetune	$00
	dc.b nB4, $08, nD5, $09, nE5, $08, nB5, $0A
	dc.b sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01
	ssDetune	$00
	dc.b nA5, $11, nB5, $09, nC6, $10, nB5, $0E
	dc.b sHold
	ssDetune	$1A
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$18
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$1F
	dc.b nBb5, sHold
	ssDetune	$E8
	dc.b nB5, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$1C
	dc.b $02, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01
	ssDetune	$00
	dc.b nA5, $10, nB5, $09, nC6, $11, nB5, $0D
	dc.b sHold
	ssDetune	$1A
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$18
	dc.b $02, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$1F
	dc.b nBb5, sHold
	ssDetune	$E8
	dc.b nB5, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$1C
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01
	ssDetune	$00
	dc.b nA5, $11, nB5, $08, nC6, $11, nB5, $0E
	dc.b sHold
	ssDetune	$1A
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$18
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$1F
	dc.b nBb5, sHold
	ssDetune	$E8
	dc.b nB5, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$1C
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01
	ssDetune	$00
	dc.b nA5, $11, nG5, nFs5, $08, nE5, $0E, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nF5, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$15
	dc.b nE5, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$14
	dc.b nEb5, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $02, sHold
	ssDetune	$16
	dc.b $01
	ssDetune	$00
	dc.b nD5, $10, nE5, $09, nB5, $11, nA5, $0D
	dc.b sHold
	ssDetune	$1A
	dc.b $01, sHold
	ssDetune	$E4
	dc.b nBb5, sHold
	ssDetune	$18
	dc.b nA5, sHold
	ssDetune	$FD
	dc.b $02, sHold
	ssDetune	$1C
	dc.b nAb5, $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$E8
	dc.b nA5, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$1C
	dc.b $01, sHold
	ssDetune	$E4
	dc.b nBb5, sHold
	ssDetune	$15
	dc.b nA5
	ssDetune	$00
	dc.b nB5, $11, nD5, nC5, $10, nB4, $17, sHold
	ssDetune	$08
	dc.b nBb4, $02, sHold
	ssDetune	$0C
	dc.b nA4, $01, sHold
	ssDetune	$08
	dc.b nAb4, sHold
	ssDetune	$0A
	dc.b nG4, sHold
	ssDetune	$05
	dc.b nFs4, sHold
	ssDetune	$F4
	dc.b nF4, sHold
	ssDetune	$F0
	dc.b nE4, sHold
	ssDetune	$0C
	dc.b nD4, $03
	ssDetune	$00
	dc.b nG5, $19, sHold
	ssDetune	$FB
	dc.b nFs5, $01, sHold
	ssDetune	$EA
	dc.b nF5, sHold
	ssDetune	$16
	dc.b nEb5, sHold
	ssDetune	$02
	dc.b nD5, sHold
	ssDetune	$15
	dc.b nC5, $05
	ssDetune	$00
	dc.b nA5, $08, nA5, nRst, $09, nB5, sHold
	ssDetune	$06
	dc.b $01, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$06
	dc.b $02, sHold
	ssDetune	$FF
	dc.b $01, sHold
	ssDetune	$F9
	dc.b $01, sHold
	ssDetune	$F6
	dc.b $01, sHold
	ssDetune	$FA
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01
	ssDetune	$00
	dc.b nG5, $11, nC6, sHold, $01, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$21
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$24
	dc.b nB5, sHold
	ssDetune	$DD
	dc.b nC6, sHold
	ssDetune	$E6
	dc.b $01, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$07
	dc.b $02, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$22
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$1D
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$DF
	dc.b $01, sHold
	ssDetune	$23
	dc.b nB5, sHold
	ssDetune	$E0
	dc.b nC6, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$1D
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$22
	dc.b $01, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01
	ssDetune	$00
	dc.b nG5, $11, nFs5, $1A, nG5, $19, nA5, $11
	dc.b nG5, sHold
	ssDetune	$11
	dc.b $02, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$E3
	dc.b $01, sHold
	ssDetune	$15
	dc.b nG5, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$1B
	dc.b nFs5, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nG5, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$E4
	dc.b nAb5
	ssDetune	$00
	dc.b nA5, $09, $10, nB5, $1B, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$21
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$20
	dc.b nBb5, sHold
	ssDetune	$21
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nB5, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$17
	dc.b $02, sHold
	ssDetune	$22
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$1D
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$DF
	dc.b $01, sHold
	ssDetune	$1F
	dc.b nBb5, sHold
	ssDetune	$E0
	dc.b nB5, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$1D
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$22
	dc.b $01, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01
	ssDetune	$00
	dc.b nD5, $11, nE5, nD5, nE5, nB5, nA5, $10
	dc.b nB5, $11, nE5, nD5, $08, nE5, $7F, nD5
	dc.b $10, nE5, $11, nD5, nE5, nB5, nA5, $19
	dc.b nRst, $08, nD6, $09, $08, $09, nE6, $26

MDNV2_Uranus_Loop90:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $04, MDNV2_Uranus_Loop90
	saVolFM		$01
	dc.b sHold, $05

MDNV2_Uranus_Loop91:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $04, MDNV2_Uranus_Loop91
	saVolFM		$01
	dc.b sHold, $05
	saVolFM		$01
	dc.b sHold, $04
	saVolFM		$01
	dc.b sHold, nE6
	saVolFM		$01
	dc.b sHold, $08
	saVolFM		$01
	dc.b sHold, $05

MDNV2_Uranus_Loop92:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $04, MDNV2_Uranus_Loop92
	saVolFM		$01
	dc.b sHold, $05

MDNV2_Uranus_Loop93:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $03, MDNV2_Uranus_Loop93
	saVolFM		$01
	dc.b sHold, $02
	sPatFM		$01
	saVolFM		$F4
	dc.b nE2, $0D, nRst, $04, nE2, nRst, $05, nB2
	dc.b $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b nB2, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b $05, nA2, $04, nRst, nG2, nRst, nFs2, $0D
	dc.b nRst, $04, nG2, nRst, $05, nFs2, $04, nRst
	sPatFM		$00
	saVolFM		$FE
	sPan		spLeft
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, nRst
	dc.b $05, nE2, $04, nRst, nC3, nRst, nB2, $05
	dc.b nRst, $04, nA2, nRst, nE2, $0D, nRst, $04
	dc.b nE2, nRst, $05, nB2, $04, nRst, nE2, nRst
	dc.b nC3, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b $05, nE2, $0C, nRst, $04, nE2, $05, nRst
	dc.b $04, nB2, nRst, nE2, nRst, $05, nC3, $04
	dc.b nRst, nB2, nRst, $05, nA2, $04, nRst, nE2
	dc.b $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05
	dc.b nA2, $04, nRst, nB2, nRst, nA2, $05, nRst
	dc.b $04, nG2, nRst, nFs2, nRst, $03
	sPatFM		$03
	saVolFM		$F7
	sPan		spCenter
	dc.b nD5, $10, nB4, $09, nG5, $11, nFs5, $10
	dc.b nD5, $0A, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0F
	dc.b nD5, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$0E
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nD5, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0D
	dc.b nD5, sHold
	ssDetune	$FC
	dc.b $02, sHold
	ssDetune	$0D
	dc.b nCs5, $01, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F3
	dc.b nD5
	ssDetune	$00
	dc.b nB4, $10, nA4, $11, nB4, nD5, nB4, $08
	dc.b nG5, $11, nFs5, nD5, $0A, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0F
	dc.b nD5, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$0E
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nD5, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0D
	dc.b nD5, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F3
	dc.b nD5
	ssDetune	$00
	dc.b nB4, $11, nA4, nB4, nE5, $12, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01
	ssDetune	$00
	dc.b nB4, $12, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FE
	dc.b $02, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01
	ssDetune	$00
	dc.b nA4, $12, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $02, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01
	ssDetune	$00
	dc.b nB4, $12, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01
	ssDetune	$00
	dc.b nA4, $1A, nB4, $19
	ssDetune	$14
	dc.b nBb4, $01, sHold
	ssDetune	$E4
	dc.b nB4, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$20
	dc.b $01, sHold
	ssDetune	$EC
	dc.b nC5, sHold
	ssDetune	$00
	dc.b $1C, nB4, $10, nBb4, $11, nB4, nD5, nB4
	dc.b $08, nG5, $11, nFs5, nD5, $09, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0F
	dc.b nD5, $02, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$0E
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nD5, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0D
	dc.b nD5, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F3
	dc.b nD5
	ssDetune	$00
	dc.b nB4, $11, nA4, nB4, nD5, $10, nB4, $09
	dc.b nG5, $11, nFs5, nD5, $09, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0F
	dc.b nD5, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$0E
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F1
	dc.b nD5, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$EE
	dc.b nEb5, sHold
	ssDetune	$0D
	dc.b nD5, $02, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$0D
	dc.b nCs5, sHold
	ssDetune	$09
	dc.b $01, sHold
	ssDetune	$F3
	dc.b nD5
	ssDetune	$00
	dc.b nB4, $11, nA4, $10, nB4, $11, nG5, $0B
	dc.b nA5, $0C, nG5, $0B, nFs5, $0A, nG5, $0D
	dc.b nFs5, $0B, nE5, $0A, nFs5, $0D, nE5, $0A
	dc.b nD5, $0B, nB4, $0A, nD5, $0D
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$00
	dc.b nEb5, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$F8
	dc.b nE5, sHold
	ssDetune	$00
	dc.b $61, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$08
	dc.b nEb5, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$08
	dc.b nD5, sHold
	ssDetune	$F4
	dc.b $01, sHold
	ssDetune	$00
	dc.b nCs5, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$07
	dc.b nC5, $02, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$20
	dc.b nB4, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $02, sHold
	ssDetune	$14
	dc.b nBb4, $01, sHold
	ssDetune	$00
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$18
	dc.b nA4, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$F0
	dc.b $01, sHold
	ssDetune	$14
	dc.b nAb4, sHold
	ssDetune	$00
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$16
	dc.b nG4, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$11
	dc.b nFs4, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$14
	dc.b nF4, sHold
	ssDetune	$00
	dc.b $03, nG4, $11, nFs4, $09, nE4, $11, nFs4
	dc.b $08, nG4, $22, nFs4, $10, nE4, $11, nFs4
	dc.b nG4, nFs4, $08, nE4, $11, nFs4, $09, nG4
	dc.b $21, nD4, $11, nG4, nD5, nD5, $32, nC5
	dc.b $09, nB4, $08, nA4, $22, nC5, $19, nB4
	dc.b $32, nC5, $11, nB4, $09, nRst, $7F, nRst
	dc.b $4B
	sStop

MDNV2_Uranus_FM4:
	sPan		spCenter
	dc.b nRst, $02
	sPatFM		$01
	saVolFM		$14
	sPan		spRight
	dc.b nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b nB2, nRst, nE2, nRst, $05, nC3, $04, nRst
	dc.b nB2, nRst, nA2, $05, nRst, $04, nE2, $0D
	dc.b nRst, $04, nE2, nRst, nB2, nRst, $05, nE2
	dc.b $04, nRst, nC3, nRst, nB2, $05, nRst, $04
	dc.b nA2, nRst
	sPatFM		$00
	saVolFM		$FE
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, $05
	dc.b nRst, $04, nE2, nRst, nC3, nRst, $05, nB2
	dc.b $04, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b $04, nA2, $05, nRst, $04, nG2, nRst, nFs2
	dc.b $0D, nRst, $04, nG2, nRst, nFs2, $05, nRst
	dc.b $04
	sPatFM		$01
	saVolFM		$02
	dc.b nE2, $0C, nRst, $05, nE2, $04, nRst, nB2
	dc.b nRst, nE2, $05, nRst, $04, nC3, nRst, nB2
	dc.b $05, nRst, $04, nA2, nRst, nE2, $0D, nRst
	dc.b $04, nE2, nRst, nB2, $05, nRst, $04, nE2
	dc.b nRst, nC3, nRst, $05, nB2, $04, nRst, nA2
	dc.b nRst, nE2, $0D, nRst, $04, nE2, nRst, $05
	dc.b nB2, $04, nRst, nE2, nRst, $05, nC3, $04
	dc.b nRst, nB2, nRst, nA2, $05, nRst, $04, nE2
	dc.b $0C, nRst, $05, nFs2, $04, nRst, nG2, nRst
	dc.b nA2, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b $05, nG2, $04, nRst, nE2, $0D, nRst, $04
	dc.b nE2, nRst, nB2, $05, nRst, $04, nE2, nRst
	dc.b nC3, nRst, $05, nB2, $04, nRst, nA2, nRst
	dc.b nE2, $0D, nRst, $04, nE2, nRst, $05, nB2
	dc.b $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b nB2, nRst, nA2, nRst, $05, nE2, $0C, nRst
	dc.b $05, nE2, $04, nRst, nB2, nRst, nE2, $05
	dc.b nRst, $04, nC3, nRst, nB2, nRst, $05, nA2
	dc.b $04, nRst, nE2, $0D, nRst, $04, nFs2, nRst
	dc.b nG2, nRst, $05, nA2, $04, nRst, nB2, nRst
	dc.b nA2, $05, nRst, $04, nG2, nRst, nFs2, $05
	saVolFM		$21

MDNV2_Uranus_Loop94:
	dc.b sHold, $7F
	sLoop		$00, $10, MDNV2_Uranus_Loop94
	dc.b sHold, $5A
	sPatFM		$03
	saVolFM		$D4
	dc.b nFs4, $08, nA4, $09, nB4, $08, nG5, $0A
	dc.b sHold
	ssDetune	$0A
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$03
	dc.b $01, sHold
	ssDetune	$F8
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01
	ssDetune	$00
	dc.b nFs5, $11, nG5, $09, nA5, $10, nG5, $0E
	dc.b sHold
	ssDetune	$1A
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$18
	dc.b nG5, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$1B
	dc.b nFs5, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$E8
	dc.b nG5, sHold
	ssDetune	$04
	dc.b $01, sHold
	ssDetune	$1C
	dc.b $02, sHold
	ssDetune	$E6
	dc.b nAb5, $01, sHold
	ssDetune	$15
	dc.b nG5
	ssDetune	$00
	dc.b nFs5, $10, nG5, $09, nA5, $11, nG5, $19
	dc.b nFs5, $11, nG5, $08, nA5, $11, nG5, $0E
	dc.b sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$E3
	dc.b $01, sHold
	ssDetune	$15
	dc.b nG5, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$1B
	dc.b nFs5, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nG5
	ssDetune	$00
	dc.b nFs5, $11, nE5, nD5, $08, nC5, $0E, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$24
	dc.b $01, sHold
	ssDetune	$21
	dc.b $01, sHold
	ssDetune	$15
	dc.b $01, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$24
	dc.b nB4, sHold
	ssDetune	$DD
	dc.b nC5, $02, sHold
	ssDetune	$E6
	dc.b $01
	ssDetune	$00
	dc.b nB4, $10, nC5, $09, nG5, $11, nFs5, $0D
	dc.b sHold
	ssDetune	$1A
	dc.b $01, sHold
	ssDetune	$ED
	dc.b nG5, sHold
	ssDetune	$18
	dc.b nFs5, sHold
	ssDetune	$FD
	dc.b $02, sHold
	ssDetune	$0F
	dc.b nF5, $01, sHold
	ssDetune	$06
	dc.b $01, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$04
	dc.b nFs5, sHold
	ssDetune	$E5
	dc.b nG5, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$15
	dc.b nFs5
	ssDetune	$00
	dc.b nG5, $11, nA4, nG4, $10, $17, sHold
	ssDetune	$FB
	dc.b nFs4, $02, sHold
	ssDetune	$EA
	dc.b nF4, $01, sHold
	ssDetune	$16
	dc.b nEb4, sHold
	ssDetune	$02
	dc.b nD4, sHold
	ssDetune	$15
	dc.b nC4, $02, sHold
	ssDetune	$0C
	dc.b nB3, $01, sHold
	ssDetune	$14
	dc.b nBb3, $03
	ssDetune	$00
	dc.b nE5, $19, sHold
	ssDetune	$0C
	dc.b nEb5, $01, sHold
	ssDetune	$10
	dc.b nD5, sHold
	ssDetune	$0C
	dc.b nCs5, sHold
	ssDetune	$17
	dc.b nC5, $03, sHold
	ssDetune	$24
	dc.b nB4
	ssDetune	$00
	dc.b nFs5, $08, nFs5, nRst, $09, nG5, sHold
	ssDetune	$10
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $02, sHold
	ssDetune	$FE
	dc.b $01, sHold
	ssDetune	$EE
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F1
	dc.b $01, sHold
	ssDetune	$02
	dc.b $01, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$FC
	dc.b $01, sHold
	ssDetune	$ED
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01
	ssDetune	$00
	dc.b nD5, $11, nG5, $12, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$E3
	dc.b $01, sHold
	ssDetune	$15
	dc.b nG5, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$1B
	dc.b nFs5, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nG5, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$07
	dc.b $02, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$E4
	dc.b nAb5, sHold
	ssDetune	$E6
	dc.b $01, sHold
	ssDetune	$1D
	dc.b nG5, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$16
	dc.b nFs5, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$EC
	dc.b nG5, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$1D
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$17
	dc.b nG5, sHold
	ssDetune	$07
	dc.b $01
	ssDetune	$00
	dc.b nE5, $11, nD5, $1A, nE5, $19, nFs5, $11
	dc.b nE5, sHold
	ssDetune	$11
	dc.b $02, sHold
	ssDetune	$E6
	dc.b nF5, $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$E9
	dc.b $01, sHold
	ssDetune	$15
	dc.b nE5, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$14
	dc.b nEb5, sHold
	ssDetune	$0C
	dc.b $01, sHold
	ssDetune	$0D
	dc.b $01, sHold
	ssDetune	$16
	dc.b $01, sHold
	ssDetune	$F5
	dc.b nE5, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$EA
	dc.b nF5
	ssDetune	$00
	dc.b nFs5, $09, $10, nG5, $1B, sHold
	ssDetune	$11
	dc.b $01, sHold
	ssDetune	$1E
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$E3
	dc.b $01, sHold
	ssDetune	$15
	dc.b nG5, sHold
	ssDetune	$05
	dc.b $01, sHold
	ssDetune	$F3
	dc.b $01, sHold
	ssDetune	$1B
	dc.b nFs5, sHold
	ssDetune	$13
	dc.b $01, sHold
	ssDetune	$14
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nG5, sHold
	ssDetune	$F5
	dc.b $01, sHold
	ssDetune	$07
	dc.b $01, sHold
	ssDetune	$17
	dc.b $02, sHold
	ssDetune	$E4
	dc.b nAb5, $01, sHold
	ssDetune	$E6
	dc.b $01, sHold
	ssDetune	$1D
	dc.b nG5, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$EC
	dc.b $01, sHold
	ssDetune	$16
	dc.b nFs5, sHold
	ssDetune	$12
	dc.b $01, sHold
	ssDetune	$17
	dc.b $01, sHold
	ssDetune	$EC
	dc.b nG5, sHold
	ssDetune	$FD
	dc.b $01, sHold
	ssDetune	$0F
	dc.b $01, sHold
	ssDetune	$1D
	dc.b $01, sHold
	ssDetune	$E6
	dc.b nAb5, sHold
	ssDetune	$E4
	dc.b $01, sHold
	ssDetune	$17
	dc.b nG5, sHold
	ssDetune	$07
	dc.b $01
	ssDetune	$00
	dc.b nB4, $11, nC5, nB4, nC5, nE5, nD5, $10
	dc.b nE5, $11, nB4, nA4, $08, nB4, $7F, nB3
	dc.b $10, nC5, $11, nB4, nC5, nE5, nD5, $19
	dc.b nRst, $08, nA5, $09, $08, $09, nB5, $26

MDNV2_Uranus_Loop95:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $04, MDNV2_Uranus_Loop95
	saVolFM		$01
	dc.b sHold, $05

MDNV2_Uranus_Loop96:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $04, MDNV2_Uranus_Loop96
	saVolFM		$01
	dc.b sHold, $05
	saVolFM		$01
	dc.b sHold, $04
	saVolFM		$01
	dc.b sHold, nB5
	saVolFM		$01
	dc.b sHold, $08
	saVolFM		$01
	dc.b sHold, $05

MDNV2_Uranus_Loop97:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $04, MDNV2_Uranus_Loop97
	saVolFM		$01
	dc.b sHold, $05

MDNV2_Uranus_Loop98:
	saVolFM		$01
	dc.b sHold, $04
	sLoop		$00, $03, MDNV2_Uranus_Loop98
	saVolFM		$01
	dc.b sHold, $02
	sPatFM		$00
	saVolFM		$F2
	dc.b nE2, $0D, nRst, $04, nE2, nRst, $05, nB2
	dc.b $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b nB2, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b $05, nA2, $04, nRst, nG2, nRst, nFs2, $0D
	dc.b nRst, $04, nG2, nRst, $05, nFs2, $04, nRst
	sPatFM		$01
	saVolFM		$02
	dc.b nE2, $0D, nRst, $04, nE2, nRst, nB2, nRst
	dc.b $05, nE2, $04, nRst, nC3, nRst, nB2, $05
	dc.b nRst, $04, nA2, nRst, nE2, $0D, nRst, $04
	dc.b nE2, nRst, $05, nB2, $04, nRst, nE2, nRst
	dc.b nC3, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b $05, nE2, $0C, nRst, $04, nE2, $05, nRst
	dc.b $04, nB2, nRst, nE2, nRst, $05, nC3, $04
	dc.b nRst, nB2, nRst, $05, nA2, $04, nRst, nE2
	dc.b $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05
	dc.b nA2, $04, nRst, nB2, nRst, nA2, $05, nRst
	dc.b $04, nG2, nRst, nFs2
	saVolFM		$21

MDNV2_Uranus_Loop99:
	dc.b sHold, $7F
	sLoop		$00, $0D, MDNV2_Uranus_Loop99
	dc.b sHold, $66
	sStop

MDNV2_Uranus_FM5:
	sPatFM		$02
	saVolFM		$0F
	sPan		spCenter
	dc.b nE2, $10, $09, nB2, $08, nE2, $09, nC3
	dc.b $08, nB2, nA2, $09, nE2, $11, $08, nB2
	dc.b nE2, $09, nC3, $08, nB2, $09, nA2, $08
	dc.b nE2, $11, $08, nB2, $09, nE2, $08, nC3
	dc.b $09, nB2, $08, nA2, nG2, $11, nA2, $09
	dc.b nG2, $08, nFs2, $11, nG2, $08, nFs2, $09
	dc.b nE2, $11, $08, nB2, nE2, $09, nC3, $08
	dc.b nB2, $09, nA2, $08, nE2, $11, $08, nB2
	dc.b $09, nE2, $08, nC3, $09, nB2, $08, nA2
	dc.b nE2, $11, $09, nB2, $08, nE2, nC3, $09
	dc.b nB2, $08, nA2, $09, nE2, $10, nFs2, $09
	dc.b nG2, $08, nA2, $09, nB2, $08, nA2, $09
	dc.b nG2, $08, nE2, $11, $08, nB2, $09, nE2
	dc.b $08, nC3, nB2, $09, nA2, $08, nE2, $11
	dc.b $09, nB2, $08, nE2, nC3, $09, nB2, $08
	dc.b nA2, $09, nE2, $10, $09, nB2, $08, nE2
	dc.b $09, nC3, $08, nB2, nA2, $09, nE2, $11
	dc.b nFs2, $08, nG2, $09, nA2, $08, nB2, nA2
	dc.b $09, nG2, $08, nD2, $09, nE2, $10, $11
	dc.b nE2, nE2, nE2, nE2, nE2, $10, $11, nD2
	dc.b nD2, nD2, nD2, nD2, $10, $11, nD2, nD2
	dc.b nC2, nC2, nC2, $10, $11, nC2, nC2, nC2
	dc.b nC2, $10, nB1, $11, nB1, nB1, nB1, nB1
	dc.b nB1, $10, $11, nB1, nE2, nE2, nE2, nE2
	dc.b $10, $11, nE2, nE2, nE2, nD2, nD2, $10
	dc.b $11, nD2, nD2, nD2, nD2, $10, $11, nC2
	dc.b nC2, nC2, nC2, nD2, $10, $11, nD2, nD2
	dc.b nE2, nE2, nE2, $10, $11, nE2, nE2, nE2
	dc.b nE2, nC2, $10, $11, nC2, nC2, nC2, nC2
	dc.b nC2

MDNV2_Uranus_Loop100:
	dc.b $10, $11, nD2, nD2, nD2
	sLoop		$00, $02, MDNV2_Uranus_Loop100
	dc.b nE2, nE2, $10, $11, nE2, nE2, nE2, nE2
	dc.b nE2, $10, nB1, $11, nB1, nB1, nB1, nB1
	dc.b nB1, $10, $11, nB1, nC2, nC2, nC2, nC2
	dc.b $10, $11, nC2, nC2, nC2, nD2, $10, $11
	dc.b nD2, nD2, nD2, nD2, nD2, $10, $11, nB1
	dc.b nB1, nB1, nB1, nB1, $10, $11, nB1, nB1
	dc.b nB1, $08, nRst, $11, nB1, $09, nRst, $10
	dc.b nB1, $09, nRst, $08, nB1, $11, nB1, nB1
	dc.b nB1, nE2, $08, nE2, nE2, $09, $08, $09
	dc.b $08, nE2, nE2, $09, nD2, $08, $09, $08
	dc.b nD2, nD2, $09, $08, $09, $08, nC2, $11
	dc.b nC2, nC2, nC2, $10, nD2, $11, nD2, nD2
	dc.b nD2, nC2, nC2, $10, $11, nC2, nD2, nD2
	dc.b nD2, nD2, $10, nG2, $11, nG2, nFs2, nFs2
	dc.b nE2, $10, $11, nB1, nB1, nA1, nA1, nA1
	dc.b $10, $11, nB1, nB1, nB1, nB1, nE2, $10
	dc.b $11, nD2, nD2, nC2, nC2, nC2, $10, $11
	dc.b nC2, nC2, nC2, nC2, nD2, $10, $11, nD2
	dc.b nD2, nE2, $08, $09, $08, nE2, nE2, $09

MDNV2_Uranus_Loop101:
	dc.b $08, $09, $08, nD2, $09, $08
	sLoop		$00, $02, MDNV2_Uranus_Loop101
	dc.b nD2, nC2, $11, nC2, nC2, nC2, nD2, nD2
	dc.b $10, $11, $09, nE2, $10, $09, nB2, $08
	dc.b nE2, $09, nC3, $08, nB2, $09, nA2, $08
	dc.b nE2, $11, $08, nB2, $09, nE2, $08, nC3
	dc.b nB2, $09, nA2, $08, nE2, $11, $09, nB2
	dc.b $08, nE2, nC3, $09, nB2, $08, nA2, $09
	dc.b nG2, $10, nA2, $09, nG2, $08, nFs2, $11
	dc.b nG2, $08, nFs2, $09, nE2, $11, $08, nB2
	dc.b $09, nE2, $08, nC3, nB2, $09, nA2, $08
	dc.b nE2, $11, $08, nB2, $09, nE2, $08, nC3
	dc.b $09, nB2, $08, nA2, $09, nE2, $10, $09
	dc.b nB2, $08, nE2, $09, nC3, $08, nB2, nA2
	dc.b $09, nE2, $11, nFs2, $08, nG2, nA2, $09
	dc.b nB2, $08, nA2, $09, nG2, $08, nD2, $09
	dc.b nE2, $10, $11, nE2, nE2, nE2, nE2, $10
	dc.b $11, nE2, nD2, nD2, nD2, nD2, $10, $11
	dc.b nD2, nD2, nD2, nC2, nC2, $10, $11, nC2
	dc.b nC2, nC2, nC2, nC2, $10, nB1, $11, nB1
	dc.b nB1, nB1, nB1, nB1, $10, $11, nB1, nE2
	dc.b nE2, nE2, $10, $11, nE2, nE2, nE2, nE2
	dc.b nD2, $10, $11, nD2, nD2, nD2, nD2, nD2
	dc.b $10, $11, nC2, nC2, nC2, nC2, nD2, $10
	dc.b $11, nD2, nD2, nE2, nE2, nE2, $10, $11
	dc.b nE2, nE2, nE2, nE2

MDNV2_Uranus_Loop102:
	dc.b $7F, sHold
	sLoop		$00, $05, MDNV2_Uranus_Loop102
	dc.b $37
	sStop

MDNV2_Uranus_PSG1:
	dc.b nRst, $7F, nRst, $7F, nRst, $7F, nRst, $7F
	dc.b nRst, $7F, nRst, $7F, nRst, $36
	ssDetune	$02
	dc.b nE0, $01
	saVolPSG	$01
	ssDetune	$02
	dc.b $04
	saVolPSG	$01
	ssDetune	$02
	dc.b nE0
	saVolPSG	$01
	ssDetune	$02
	dc.b $02
	saVolPSG	$01
	ssDetune	$02
	dc.b nE0
	saVolPSG	$01
	ssDetune	$02
	dc.b $03
	saVolPSG	$FB
	ssDetune	$01
	dc.b nFs0, $01
	saVolPSG	$01
	ssDetune	$01
	dc.b $05
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nG0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nG0
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $03
	saVolPSG	$01
	dc.b nG0
	saVolPSG	$FB
	dc.b nA0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	ssDetune	$FB
	dc.b nB0
	saVolPSG	$01
	ssDetune	$01
	dc.b nB0
	ssDetune	$08
	dc.b nB0
	saVolPSG	$01
	ssDetune	$0A
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	ssDetune	$FD
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FF
	dc.b nB0
	ssDetune	$06
	dc.b nB0
	ssDetune	$0B
	dc.b nB0
	ssDetune	$06
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FF
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	ssDetune	$FD
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	saVolPSG	$01
	ssDetune	$0A
	dc.b nB0
	ssDetune	$08
	dc.b nB0
	ssDetune	$00
	dc.b $02
	ssDetune	$FB
	dc.b $01
	saVolPSG	$01
	ssDetune	$FC
	dc.b nB0
	ssDetune	$02
	dc.b nB0
	saVolPSG	$01
	ssDetune	$09
	dc.b nB0
	saVolPSG	$F6
	ssDetune	$01
	dc.b nA0
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b nA0
	saVolPSG	$01
	ssDetune	$01
	dc.b $02
	saVolPSG	$01
	ssDetune	$01
	dc.b nA0
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$FB
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	ssDetune	$00
	dc.b nFs1, $01
	saVolPSG	$01
	ssDetune	$00
	dc.b $05
	saVolPSG	$01
	ssDetune	$00
	dc.b $04
	saVolPSG	$01
	ssDetune	$00
	dc.b $02
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$01
	ssDetune	$00
	dc.b $03
	saVolPSG	$FB
	ssDetune	$00
	dc.b $01
	saVolPSG	$01
	ssDetune	$00
	dc.b $04
	saVolPSG	$01
	ssDetune	$00
	dc.b $05
	saVolPSG	$01
	ssDetune	$00
	dc.b $02
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$01
	ssDetune	$00
	dc.b $03
	saVolPSG	$FB
	dc.b nG1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nFs1, $02
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nFs1
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nFs1
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nE1, $01
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nD1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nD1
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nD1
	saVolPSG	$01
	dc.b $05

MDNV2_Uranus_Loop103:
	saVolPSG	$01
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop103
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $23
	saVolPSG	$F6
	ssDetune	$01
	dc.b nB0, $01
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b nB0
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$01
	ssDetune	$01
	dc.b $02
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$FB
	ssDetune	$FF
	dc.b nF1, $01
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1, $04
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$01
	ssDetune	$00
	dc.b $02
	saVolPSG	$01
	ssDetune	$00
	dc.b $03
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$FB
	ssDetune	$01
	dc.b nB0, $01
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$FE
	ssDetune	$01
	dc.b $01
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b $05
	saVolPSG	$01
	ssDetune	$01
	dc.b $02
	saVolPSG	$01
	ssDetune	$01
	dc.b nB0
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nA0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $01
	saVolPSG	$F6
	dc.b nA0
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nA0
	saVolPSG	$01
	dc.b $03
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $04
	saVolPSG	$FB
	dc.b nC1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nC1
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nC1
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nB0, $02
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nC1, $01
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $04
	saVolPSG	$FB
	dc.b nBb0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $03
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$FE
	dc.b $01
	ssDetune	$FC
	dc.b nB0
	ssDetune	$FB
	dc.b $02
	saVolPSG	$01
	ssDetune	$FD
	dc.b $01
	ssDetune	$01
	dc.b nB0
	ssDetune	$05
	dc.b nB0
	ssDetune	$08
	dc.b nB0
	saVolPSG	$01
	ssDetune	$0B
	dc.b nB0
	ssDetune	$07
	dc.b nB0
	ssDetune	$01
	dc.b nB0
	ssDetune	$FC
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FB
	dc.b $02
	ssDetune	$FD
	dc.b $01
	saVolPSG	$01
	ssDetune	$03
	dc.b nB0
	ssDetune	$09
	dc.b nB0
	ssDetune	$0A
	dc.b nB0
	ssDetune	$06
	dc.b nB0
	ssDetune	$00
	dc.b nB0
	ssDetune	$FC
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	ssDetune	$FE
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	ssDetune	$0A
	dc.b nB0
	ssDetune	$09
	dc.b nB0
	ssDetune	$02
	dc.b nB0
	ssDetune	$FC
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	ssDetune	$00
	dc.b nB0
	ssDetune	$08
	dc.b nB0
	ssDetune	$0A
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	ssDetune	$FD
	dc.b $02
	ssDetune	$FB
	dc.b $01
	ssDetune	$FE
	dc.b nB0
	ssDetune	$06
	dc.b nB0
	ssDetune	$0B
	dc.b nB0
	ssDetune	$07
	dc.b nB0
	ssDetune	$FF
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	ssDetune	$FD
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	ssDetune	$0A
	dc.b nB0
	ssDetune	$09
	dc.b nB0
	ssDetune	$01
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	ssDetune	$FC
	dc.b nB0
	ssDetune	$01
	dc.b nB0
	ssDetune	$09
	dc.b nB0
	ssDetune	$0A
	dc.b nB0
	ssDetune	$03
	dc.b nB0
	ssDetune	$06
	dc.b nBb0, $02
	ssDetune	$0C
	dc.b nA0, $01
	ssDetune	$F5
	dc.b nG0
	ssDetune	$FF
	dc.b nFs0
	ssDetune	$03
	dc.b nF0
	ssDetune	$FD
	dc.b nE0
	ssDetune	$F0
	dc.b nEb0
	ssDetune	$11
	dc.b nEb0
	ssDetune	$0D
	dc.b nD0
	ssDetune	$0B
	dc.b nCs0
	ssDetune	$10
	dc.b nCs0
	ssDetune	$0E
	dc.b nCs0
	saVolPSG	$F6
	ssDetune	$02
	dc.b nE0
	saVolPSG	$01
	ssDetune	$02
	dc.b $04
	saVolPSG	$01
	ssDetune	$02
	dc.b $05
	saVolPSG	$01
	ssDetune	$02
	dc.b $02
	saVolPSG	$01
	ssDetune	$02
	dc.b nE0
	saVolPSG	$01
	ssDetune	$02
	dc.b $03
	saVolPSG	$FB
	ssDetune	$01
	dc.b nFs0, $01
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nG0, $01
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nG0
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nA0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nA0
	saVolPSG	$FE
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	ssDetune	$FB
	dc.b nB0
	saVolPSG	$01
	ssDetune	$01
	dc.b nB0
	ssDetune	$08
	dc.b nB0
	saVolPSG	$01
	ssDetune	$0A
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	ssDetune	$FD
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FF
	dc.b $02
	ssDetune	$06
	dc.b $01
	ssDetune	$0B
	dc.b nB0
	ssDetune	$06
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FF
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	ssDetune	$FD
	dc.b nB0
	ssDetune	$04
	dc.b nB0
	saVolPSG	$01
	ssDetune	$0A
	dc.b nB0
	ssDetune	$08
	dc.b nB0
	ssDetune	$00
	dc.b nB0
	ssDetune	$FB
	dc.b nB0
	saVolPSG	$01
	ssDetune	$FC
	dc.b nB0
	ssDetune	$02
	dc.b nB0
	saVolPSG	$01
	ssDetune	$09
	dc.b nB0
	saVolPSG	$F6
	ssDetune	$01
	dc.b nA0
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b $05
	saVolPSG	$01
	ssDetune	$01
	dc.b $02
	saVolPSG	$01
	ssDetune	$01
	dc.b nA0
	saVolPSG	$01
	ssDetune	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nB0, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b nB0
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	ssDetune	$00
	dc.b nFs1, $01
	saVolPSG	$01
	ssDetune	$00
	dc.b $04
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$01
	ssDetune	$00
	dc.b $02
	saVolPSG	$01
	ssDetune	$00
	dc.b $03
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$FB
	ssDetune	$00
	dc.b $01
	saVolPSG	$01
	ssDetune	$00
	dc.b $04
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$01
	ssDetune	$00
	dc.b $02
	saVolPSG	$01
	ssDetune	$00
	dc.b nFs1
	saVolPSG	$01
	ssDetune	$00
	dc.b $04
	saVolPSG	$FB
	dc.b nG1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nFs1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b nFs1
	saVolPSG	$01
	dc.b $03
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FB
	dc.b nE1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $03
	saVolPSG	$FE
	dc.b nD1, $01
	saVolPSG	$01
	dc.b $04
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $02

MDNV2_Uranus_Loop104:
	saVolPSG	$01
	dc.b nD1
	saVolPSG	$01
	dc.b $04
	sLoop		$00, $02, MDNV2_Uranus_Loop104
	saVolPSG	$01
	dc.b $05
	saVolPSG	$01
	dc.b $02
	saVolPSG	$01
	dc.b $22
	saVolPSG	$F6
	ssDetune	$01
	dc.b nB0, $02
	saVolPSG	$01
	ssDetune	$01
	dc.b $04
	saVolPSG	$01
	ssDetune	$01
	dc.b nB0
	saVolPSG	$01
	ssDetune	$01
	dc.b $02
	saVolPSG	$01
	ssDetune	$01
	dc.b nB0
	saVolPSG	$01
	ssDetune	$01
	dc.b $03, nRst

MDNV2_Uranus_Loop105:
	dc.b $7F
	sLoop		$00, $26, MDNV2_Uranus_Loop105
	dc.b nRst, $15
	sStop

MDNV2_Uranus_PSG3:
	sNoisePSG	$E7
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05

MDNV2_Uranus_Loop106:
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $02, MDNV2_Uranus_Loop106
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02

MDNV2_Uranus_Loop107:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	sLoop		$00, $02, MDNV2_Uranus_Loop107
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$F8
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$F8
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop108:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop108

MDNV2_Uranus_Loop109:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	sLoop		$00, $03, MDNV2_Uranus_Loop109
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop110:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop110

MDNV2_Uranus_Loop111:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	sLoop		$00, $03, MDNV2_Uranus_Loop111
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02

MDNV2_Uranus_Loop112:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	sLoop		$00, $02, MDNV2_Uranus_Loop112
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop113:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop113
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03, nRst, $13
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop114:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop114
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $7F, nRst, $7F, nRst, $5D
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$FA
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop115:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop115

MDNV2_Uranus_Loop116:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	sLoop		$00, $03, MDNV2_Uranus_Loop116
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$F5
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05

MDNV2_Uranus_Loop117:
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $02, MDNV2_Uranus_Loop117
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $7F, nRst, $55
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop118:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop118
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$FA
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02

MDNV2_Uranus_Loop119:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	sLoop		$00, $02, MDNV2_Uranus_Loop119
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$F5
	ssDetune	$FC
	dc.b $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02

MDNV2_Uranus_Loop120:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	sLoop		$00, $02, MDNV2_Uranus_Loop120
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $0B
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop121:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop121
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst, $7F, nRst, $7F, nRst, $5D
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$FA
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop122:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop122

MDNV2_Uranus_Loop123:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	sLoop		$00, $03, MDNV2_Uranus_Loop123
	saVolPSG	$01
	ssDetune	$FC
	dc.b $01
	saVolPSG	$F5
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06

MDNV2_Uranus_Loop124:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	sLoop		$00, $03, MDNV2_Uranus_Loop124

MDNV2_Uranus_Loop125:
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	sLoop		$00, $03, MDNV2_Uranus_Loop125
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04, nRst, $0A
	saVolPSG	$F2
	ssDetune	$FC
	dc.b nAb5, $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5
	saVolPSG	$01
	ssDetune	$FC
	dc.b $05
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $02
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b $04
	saVolPSG	$01
	ssDetune	$FC
	dc.b $06
	saVolPSG	$01
	ssDetune	$FC
	dc.b $03
	saVolPSG	$01
	ssDetune	$FC
	dc.b nAb5, nRst

MDNV2_Uranus_Loop126:
	dc.b $7F
	sLoop		$00, $1F, MDNV2_Uranus_Loop126
	dc.b nRst, $2D
	sStop

MDNV2_Uranus_DAC:
	dc.b dEchoedClapHit2, $43, dEchoedClapHit2, dEchoedClapHit2, dEchoedClapHit2, $22, dEchoedClapHit2, dLowerEchoedClapHit2
	dc.b $19

MDNV2_Uranus_Loop127:
	dc.b dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2, $11, dEchoedClapHit2
	dc.b dLowerEchoedClapHit2
	sLoop		$00, $04, MDNV2_Uranus_Loop127
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, $09, dEchoedClapHit2
	dc.b $08, $09, $08, dEchoedClapHit2, dEchoedClapHit2, $09, $08, $09

MDNV2_Uranus_Loop128:
	dc.b dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2
	sLoop		$00, $03, MDNV2_Uranus_Loop128
	dc.b dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2
	dc.b $10, $11, dLowerEchoedClapHit2, $09, dEchoedClapHit2, $11, dLowerEchoedClapHit2, $08
	dc.b dEchoedClapHit2, $11, dLowerEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $09, $08
	dc.b $09, $08

MDNV2_Uranus_Loop129:
	dc.b dLowerEchoedClapHit2, $11, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2, $11
	dc.b dEchoedClapHit2
	sLoop		$00, $02, MDNV2_Uranus_Loop129

MDNV2_Uranus_Loop130:
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2
	sLoop		$00, $02, MDNV2_Uranus_Loop130
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, $08, dEchoedClapHit2, $11, dLowerEchoedClapHit2, $08, dEchoedClapHit2
	dc.b $11, dLowerEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $08, $09, $08, $09
	dc.b dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2
	dc.b dLowerEchoedClapHit2, $10

MDNV2_Uranus_Loop131:
	dc.b dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2
	dc.b $11
	sLoop		$00, $02, MDNV2_Uranus_Loop131
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, $11, dLowerEchoedClapHit2
	dc.b $09, dEchoedClapHit2, $10, dLowerEchoedClapHit2, $09, dEchoedClapHit2, $11, dLowerEchoedClapHit2
	dc.b dLowerEchoedClapHit2, $10, dEchoedClapHit2, $09, $08, $09, $08, dLowerEchoedClapHit2
	dc.b $11, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10

MDNV2_Uranus_Loop132:
	dc.b dLowerEchoedClapHit2, $11, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2
	dc.b $11
	sLoop		$00, $03, MDNV2_Uranus_Loop132
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, $08, dEchoedClapHit2, $11, dLowerEchoedClapHit2
	dc.b $08, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $08, $09
	dc.b $08, $09, dLowerEchoedClapHit2, $10

MDNV2_Uranus_Loop133:
	dc.b dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2
	dc.b $11
	sLoop		$00, $04, MDNV2_Uranus_Loop133

MDNV2_Uranus_Loop134:
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2
	sLoop		$00, $05, MDNV2_Uranus_Loop134
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2, $11, dEchoedClapHit2, dLowerEchoedClapHit2
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, $11, dLowerEchoedClapHit2, $09, dEchoedClapHit2
	dc.b $11, dLowerEchoedClapHit2, $08, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dLowerEchoedClapHit2, $10
	dc.b dEchoedClapHit2, $09, $08, $11

MDNV2_Uranus_Loop135:
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2, $11, dEchoedClapHit2
	sLoop		$00, $02, MDNV2_Uranus_Loop135

MDNV2_Uranus_Loop136:
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2
	sLoop		$00, $02, MDNV2_Uranus_Loop136
	dc.b dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2, $09
	dc.b dEchoedClapHit2, $08, dEchoedClapHit2, dEchoedClapHit2, $09, $08, $09, $08
	dc.b $09, dLowerEchoedClapHit2, $10

MDNV2_Uranus_Loop137:
	dc.b dEchoedClapHit2, $11, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, dLowerEchoedClapHit2
	dc.b $11
	sLoop		$00, $03, MDNV2_Uranus_Loop137
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $10, $11, dLowerEchoedClapHit2
	dc.b $09, dEchoedClapHit2, $10, dLowerEchoedClapHit2, $09, dEchoedClapHit2, $11, dLowerEchoedClapHit2
	dc.b dLowerEchoedClapHit2, $10, dEchoedClapHit2, $09, $08, $09, $08

MDNV2_Uranus_Loop138:
	dc.b dLowerEchoedClapHit2, $11, dEchoedClapHit2, dLowerEchoedClapHit2, $10, dEchoedClapHit2, $11, dLowerEchoedClapHit2
	dc.b dEchoedClapHit2
	sLoop		$00, $04, MDNV2_Uranus_Loop138
	dc.b dLowerEchoedClapHit2, dLowerEchoedClapHit2, $08, dEchoedClapHit2, $11, dLowerEchoedClapHit2, $08, dEchoedClapHit2
	dc.b $11, dLowerEchoedClapHit2, $09, dEchoedClapHit2, $08, dEchoedClapHit2, dEchoedClapHit2, $09
	dc.b $08, $09, $08, $76, $08, $09, $08, dLowerEchoedClapHit2
	dc.b $6D, dEchoedClapHit2, $09, $08, $09, dLowerEchoedClapHit2, $7F, nRst
	dc.b $7F, nRst, $7F, nRst, $17
	sStop

MDNV2_Uranus_Patches:

	; Patch $00
	; $28
	; $33, $53, $70, $30,	$DF, $DC, $1F, $1F
	; $13, $05, $06, $00,	$00, $01, $00, $1F
	; $11, $21, $10, $F8,	$0E, $1B, $12, $80
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$03, $07, $05, $03
	spMultiple	$03, $00, $03, $00
	spRateScale	$03, $00, $03, $00
	spAttackRt	$1F, $1F, $1C, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $06, $05, $00
	spSustainLv	$01, $01, $02, $0F
	spDecayRt	$00, $00, $01, $1F
	spReleaseRt	$01, $00, $01, $08
	spTotalLv	$0E, $12, $1B, $00

	; Patch $01
	; $38
	; $54, $51, $51, $54,	$DF, $DF, $1F, $1F
	; $07, $0E, $07, $04,	$08, $00, $03, $08
	; $87, $31, $71, $81,	$1B, $11, $10, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$05, $05, $05, $05
	spMultiple	$04, $01, $01, $04
	spRateScale	$03, $00, $03, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $07, $0E, $04
	spSustainLv	$08, $07, $03, $08
	spDecayRt	$08, $03, $00, $08
	spReleaseRt	$07, $01, $01, $01
	spTotalLv	$1B, $10, $11, $00

	; Patch $02
	; $3B
	; $34, $35, $10, $01,	$54, $14, $1B, $1F
	; $15, $0F, $07, $05,	$03, $02, $00, $00
	; $3F, $FF, $FF, $FF,	$1A, $28, $14, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $01, $03, $00
	spMultiple	$04, $00, $05, $01
	spRateScale	$01, $00, $00, $00
	spAttackRt	$14, $1B, $14, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$15, $07, $0F, $05
	spSustainLv	$03, $0F, $0F, $0F
	spDecayRt	$03, $00, $02, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $14, $28, $00

	; Patch $03
	; $38
	; $33, $71, $01, $71,	$56, $16, $1F, $1F
	; $13, $12, $04, $07,	$00, $00, $00, $00
	; $2C, $37, $16, $17,	$15, $16, $12, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$03, $00, $07, $07
	spMultiple	$03, $01, $01, $01
	spRateScale	$01, $00, $00, $00
	spAttackRt	$16, $1F, $16, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $04, $12, $07
	spSustainLv	$02, $01, $03, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0C, $06, $07, $07
	spTotalLv	$15, $12, $16, $00
	dc.b $66	; Unused
