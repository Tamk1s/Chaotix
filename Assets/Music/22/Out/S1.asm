Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $00
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $17
	sHeaderFM	Maniax_FM2, $00, $25
	sHeaderFM	Maniax_FM3, $00, $19
	sHeaderFM	Maniax_FM4, $00, $12
	sHeaderFM	Maniax_FM5, $00, $0E
	sHeaderFM	Maniax_FM6, $00, $1E
	sHeaderPSG	Maniax_PSG1, $00, $09, $00, v00
	sHeaderPSG	Maniax_PSG2, $00, $0B, $00, $0D
	sHeaderPSG	Maniax_PSG3, $00, $09, $00, $26

Maniax_DAC:
	dc.b nRst, $7E, $7E, $7E, $7E, $7E, $7E, $7E
	dc.b $7E, $7E, $7E, $7E, $7E, $7E, $7E, $02
	ssTempo		$96
	dc.b $07
	ssTempo		$4B
	dc.b $06
	ssTempo		$32
	dc.b $07
	ssTempo		$26
	dc.b $07
	ssTempo		$1E
	dc.b $07
	ssTempo		$19
	dc.b $01
	ssTempo		$11
	dc.b $02
	ssTempo		$0C
	dc.b $01
	ssTempo		$09
	dc.b $02
	ssTempo		$08
	dc.b $01
	ssTempo		$07
	dc.b $02
	ssTempo		$06
	dc.b $02
	ssTempo		$05
	dc.b $03
	ssTempo		$04
	dc.b $03
	ssTempo		$03
	dc.b $07
	ssTempo		$05
	sStop

Maniax_FM1:
	sPan		spCenter
	sPatFM		$00
	dc.b nRst, $0C, nF4, $04
	ssDetune	$06
	dc.b sHold, nE4, $01, sHold, nD4, $01
	ssDetune	$F7
	dc.b sHold, nC4, $01
	ssDetune	$F2
	dc.b sHold, nBb3, $01
	ssDetune	$F5
	dc.b sHold, nAb3, $01
	ssDetune	$F8
	dc.b sHold, nFs3, $01
	ssDetune	$15
	dc.b sHold, nEb3, $01
	ssDetune	$14
	dc.b sHold, nCs3, $01
	ssDetune	$00
	dc.b nF4, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $0C
	dc.b nF3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nBb2, $02, nRst, $04, nBb3, $12
	dc.b nBb2, $02, nRst, $04, nF4, $06, nF3, $02
	dc.b nRst, $04, nF4, $06, nBb3, $02, nRst, $04
	dc.b nBb3, $06, nBb3, $06, nF3, $02, nRst, $04
	dc.b nBb3, $06, nF3, $02, nRst, $04, nF3, $06
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nC4, $0C, nF3, $02
	dc.b nRst, $04, nAb3, $06, nAb3, $02, nRst, $04
	dc.b nEb3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nEb4, $0C, nAb3, $02, nRst, $04
	dc.b nEb4, $26
	ssDetune	$07
	dc.b sHold, nD4, $01
	ssDetune	$EF
	dc.b sHold, nCs4, $01
	ssDetune	$F3
	dc.b sHold, nB3, $01
	ssDetune	$02
	dc.b sHold, nA3, $01
	ssDetune	$18
	dc.b sHold, nG3, $01
	ssDetune	$E7
	dc.b sHold, nFs3, $01
	ssDetune	$FC
	dc.b sHold, nE3, $01
	ssDetune	$0C
	dc.b sHold, nD3, $01
	ssDetune	$0E
	dc.b sHold, nC3, $01, sHold, nB2, $01
	ssDetune	$00
	dc.b nAb2, $06, nC3, $06, nEb3, $06, nAb3, $18
	dc.b nBb2, $0C, nF3, $06, nBb3, $06, nEb4, $06
	dc.b nRst, $06, nD4, $0C, nRst, $06, nG3, $06
	dc.b nBb3, $06, nEb4, $06, nG4, $0C, nAb4, $12
	dc.b nC4, $30, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nEb3, $06, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nBb2, $06, nF2, $02
	dc.b nRst, $04, nF2, $02, nRst, $04, nAb2, $06
	dc.b nEb2, $02, nRst, $04, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nEb3, $06
	dc.b nBb2, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nEb3, $06, nBb2, $02, nRst, $04, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nF2, $02
	dc.b nRst, $04, nAb2, $06, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nAb2, $30
	dc.b nBb2, $36, nF4, $06, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $06, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $0C, nF3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nBb3, $12, nBb2, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nF4, $06, nBb3, $02
	dc.b nRst, $04, nBb3, $06, nBb3, $06, nF3, $02
	dc.b nRst, $04, nBb3, $06, nF3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF4, $06, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nC4, $0C
	dc.b nF3, $02, nRst, $04, nAb3, $06, nAb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nEb4, $0C, nAb3, $02
	dc.b nRst, $04, nEb4, $26
	ssDetune	$07
	dc.b sHold, nD4, $01
	ssDetune	$EF
	dc.b sHold, nCs4, $01
	ssDetune	$F3
	dc.b sHold, nB3, $01
	ssDetune	$02
	dc.b sHold, nA3, $01
	ssDetune	$18
	dc.b sHold, nG3, $01
	ssDetune	$E7
	dc.b sHold, nFs3, $01
	ssDetune	$FC
	dc.b sHold, nE3, $01
	ssDetune	$0C
	dc.b sHold, nD3, $01
	ssDetune	$0E
	dc.b sHold, nC3, $01, sHold, nB2, $01
	ssDetune	$00
	dc.b nRst, $7F, $41, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nEb3, $06, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nBb2, $06, nF2
	dc.b $02, nRst, $04, nF2, $02, nRst, $04, nAb2
	dc.b $06, nEb2, $02, nRst, $04, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nEb3
	dc.b $06, nBb2, $02, nRst, $04, nBb2, $02, nRst
	dc.b $04, nEb3, $06, nBb2, $02, nRst, $04, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nF2
	dc.b $02, nRst, $04, nAb2, $06, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nAb2
	dc.b $30, nBb2, $36, nF2, $06, nRst, $02, nG2
	dc.b $06, nRst, $02, nAb2, $06, nRst, $02, nBb2
	dc.b $06, nRst, $02, nC3, $06, nRst, $02, nD3
	dc.b $06, nRst, $02, nEb3, $06, nRst, $12, nEb3
	dc.b $48, nEb3, $04
	ssDetune	$07
	dc.b sHold, nD3, $01
	ssDetune	$0E
	dc.b sHold, nC3, $01
	ssDetune	$10
	dc.b sHold, nBb2, $01
	ssDetune	$1A
	dc.b sHold, nAb2, $01
	ssDetune	$EC
	dc.b sHold, nG2, $01
	ssDetune	$F9
	dc.b sHold, nF2, $01
	ssDetune	$F2
	dc.b sHold, nEb2, $01
	ssDetune	$FC
	dc.b sHold, nCs2, $01
	ssDetune	$00
	sStop

Maniax_FM2:
	sPan		spCenter
	sPatFM		$00
	dc.b nRst, $12, nF4, $04
	ssDetune	$06
	dc.b sHold, nE4, $01, sHold, nD4, $01
	ssDetune	$F7
	dc.b sHold, nC4, $01
	ssDetune	$F2
	dc.b sHold, nBb3, $01
	ssDetune	$F5
	dc.b sHold, nAb3, $01
	ssDetune	$F8
	dc.b sHold, nFs3, $01
	ssDetune	$15
	dc.b sHold, nEb3, $01
	ssDetune	$14
	dc.b sHold, nCs3, $01
	ssDetune	$00
	dc.b nF4, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $0C
	dc.b nF3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nBb2, $02, nRst, $04, nBb3, $12
	dc.b nBb2, $02, nRst, $04, nF4, $06, nF3, $02
	dc.b nRst, $04, nF4, $06, nBb3, $02, nRst, $04
	dc.b nBb3, $06, nBb3, $06, nF3, $02, nRst, $04
	dc.b nBb3, $06, nF3, $02, nRst, $04, nF3, $06
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nC4, $0C, nF3, $02
	dc.b nRst, $04, nAb3, $06, nAb3, $02, nRst, $04
	dc.b nEb3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nEb4, $0C, nAb3, $02, nRst, $04
	dc.b nEb4, $26
	ssDetune	$07
	dc.b sHold, nD4, $01
	ssDetune	$EF
	dc.b sHold, nCs4, $01
	ssDetune	$F3
	dc.b sHold, nB3, $01
	ssDetune	$02
	dc.b sHold, nA3, $01
	ssDetune	$18
	dc.b sHold, nG3, $01
	ssDetune	$E7
	dc.b sHold, nFs3, $01
	ssDetune	$FC
	dc.b sHold, nE3, $01
	ssDetune	$0C
	dc.b sHold, nD3, $01
	ssDetune	$0E
	dc.b sHold, nC3, $01, sHold, nB2, $01
	ssDetune	$00
	dc.b nAb2, $06, nC3, $06, nEb3, $06, nAb3, $18
	dc.b nBb2, $0C, nF3, $06, nBb3, $06, nEb4, $06
	dc.b nRst, $06, nD4, $0C, nRst, $06, nG3, $06
	dc.b nBb3, $06, nEb4, $06, nG4, $0C, nAb4, $12
	dc.b nC4, $30, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nEb3, $06, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nBb2, $06, nF2, $02
	dc.b nRst, $04, nF2, $02, nRst, $04, nAb2, $06
	dc.b nEb2, $02, nRst, $04, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nEb3, $06
	dc.b nBb2, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nEb3, $06, nBb2, $02, nRst, $04, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nF2, $02
	dc.b nRst, $04, nAb2, $06, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nAb2, $30
	dc.b nBb2, $36, nF4, $06, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $06, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $0C, nF3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nBb3, $12, nBb2, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nF4, $06, nBb3, $02
	dc.b nRst, $04, nBb3, $06, nBb3, $06, nF3, $02
	dc.b nRst, $04, nBb3, $06, nF3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF4, $06, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nC4, $0C
	dc.b nF3, $02, nRst, $04, nAb3, $06, nAb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nEb4, $0C, nAb3, $02
	dc.b nRst, $04, nEb4, $26
	ssDetune	$07
	dc.b sHold, nD4, $01
	ssDetune	$EF
	dc.b sHold, nCs4, $01
	ssDetune	$F3
	dc.b sHold, nB3, $01
	ssDetune	$02
	dc.b sHold, nA3, $01
	ssDetune	$18
	dc.b sHold, nG3, $01
	ssDetune	$E7
	dc.b sHold, nFs3, $01
	ssDetune	$FC
	dc.b sHold, nE3, $01
	ssDetune	$0C
	dc.b sHold, nD3, $01
	ssDetune	$0E
	dc.b sHold, nC3, $01, sHold, nB2, $01
	ssDetune	$00
	dc.b nRst, $7F, $41, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nEb3, $06, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nBb2, $06, nF2
	dc.b $02, nRst, $04, nF2, $02, nRst, $04, nAb2
	dc.b $06, nEb2, $02, nRst, $04, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nEb3
	dc.b $06, nBb2, $02, nRst, $04, nBb2, $02, nRst
	dc.b $04, nEb3, $06, nBb2, $02, nRst, $04, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nF2
	dc.b $02, nRst, $04, nAb2, $06, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nAb2
	dc.b $30, nBb2, $36, nF2, $06, nRst, $02, nG2
	dc.b $06, nRst, $02, nAb2, $06, nRst, $02, nBb2
	dc.b $06, nRst, $02, nC3, $06, nRst, $02, nD3
	dc.b $06, nRst, $02, nEb3, $06, nRst, $12, nEb3
	dc.b $48, nEb3, $04
	ssDetune	$07
	dc.b sHold, nD3, $01
	ssDetune	$0E
	dc.b sHold, nC3, $01
	ssDetune	$10
	dc.b sHold, nBb2, $01
	ssDetune	$1A
	dc.b sHold, nAb2, $01
	ssDetune	$EC
	dc.b sHold, nG2, $01
	ssDetune	$F9
	dc.b sHold, nF2, $01
	ssDetune	$F2
	dc.b sHold, nEb2, $01
	ssDetune	$FC
	dc.b sHold, nCs2, $01
	ssDetune	$00
	sStop

Maniax_FM3:
	sPan		spCenter
	sPatFM		$00
	dc.b nRst, $7F, $7F, $7F, $21
	ssDetune	$04
	dc.b nF5, $01
	ssDetune	$0C
	dc.b sHold, $01
	ssDetune	$16
	dc.b sHold, $01
	ssDetune	$EB
	dc.b sHold, nFs5, $01
	ssDetune	$F3
	dc.b sHold, $01
	ssDetune	$FD
	dc.b sHold, $01
	ssDetune	$05
	dc.b sHold, $01
	ssDetune	$0E
	dc.b sHold, $01
	ssDetune	$18
	dc.b sHold, $01
	ssDetune	$EA
	dc.b sHold, nG5, $01
	ssDetune	$F2
	dc.b sHold, $01
	ssDetune	$FD
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, $0E
	ssDetune	$EA
	dc.b sHold, $01
	ssDetune	$08
	dc.b sHold, nFs5, $01
	ssDetune	$EB
	dc.b sHold, $01
	ssDetune	$06
	dc.b sHold, nF5, $01
	ssDetune	$00
	dc.b nEb5, $06, nC5, $06, nEb5, $24, nBb4, $06
	dc.b nEb5, $06, nF5, $06, nG5, $1E, nAb5, $06
	dc.b nBb5, $0C, nBb5, $12, nAb5, $03, nG5, $03
	dc.b nAb5, $18, nG5, $06, nRst, $06, nG5, $06
	dc.b nAb5, $06, nRst, $06, nG5, $0C, nRst, $06
	dc.b nF5, $0C, nRst, $06, nEb5, $0C, nRst, $06
	dc.b nF5, $0C, nG5, $06, nRst, $06, nG5, $06
	dc.b nAb5, $06, nRst, $06, nG5, $0C, nAb5, $03
	dc.b nG5, $03, nF5, $12, nEb5, $12, nF5, $06
	dc.b nEb5, $30, nRst, $7F, $7F, $7F, $39
	ssDetune	$02
	dc.b nBb5, $01
	ssDetune	$0C
	dc.b sHold, $01
	ssDetune	$19
	dc.b sHold, $01
	ssDetune	$EF
	dc.b sHold, nB5, $01
	ssDetune	$F4
	dc.b sHold, $01
	ssDetune	$FB
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, $01
	ssDetune	$06
	dc.b sHold, $01
	ssDetune	$0D
	dc.b sHold, $01
	ssDetune	$EE
	dc.b sHold, nC6, $01
	ssDetune	$F4
	dc.b sHold, $01
	ssDetune	$FB
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, $0F
	ssDetune	$FA
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, nB5, $01
	ssDetune	$0C
	dc.b sHold, nBb5, $01
	ssDetune	$00
	dc.b nBb5, $06, nG5, $06, nBb5, $24
	ssDetune	$02
	dc.b nBb4, $01
	ssDetune	$0F
	dc.b sHold, nB4, $01
	ssDetune	$00
	dc.b sHold, nC5, $04, nEb5, $06, nF5, $06
	ssDetune	$01
	dc.b nF5, $01
	ssDetune	$F5
	dc.b sHold, nFs5, $01
	ssDetune	$E7
	dc.b sHold, nG5, $01
	ssDetune	$00
	dc.b sHold, $1B, nAb5, $06, nBb5, $0C, nEb5, $30
	dc.b nG5, $06, nRst, $06, nG5, $06, nAb5, $06
	dc.b nRst, $06, nG5, $0C, nAb5, $03, nG5, $03
	dc.b nF5, $0C, nRst, $06, nEb5, $0C, nF5, $06
	dc.b nG5, $06, nAb5, $06, nBb5, $06, nRst, $06
	dc.b nBb5, $06, nAb5, $06, nRst, $06, nG5, $0C
	dc.b nAb5, $03, nG5, $03, nF5, $12, nEb5, $0C
	dc.b nF5, $0C, nEb5, $30
	sStop

Maniax_FM4:
	sPatFM		$01
	dc.b nRst, $18, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nBb2, $0C, nBb2, $06, nBb2, $06, nBb2, $06
	dc.b nBb2, $06, nBb2, $06, nBb2, $06, nBb2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nEb2, $30, nAb1, $12, nAb1, $06, nAb1, $06
	dc.b nAb1, $0C, nBb1, $0C, nBb1, $0C, nBb1, $06
	dc.b nBb1, $0C, nBb1, $0C, nEb2, $18, nEb2, $06
	dc.b nF2, $06, nG2, $0C, nAb2, $0C, nAb2, $06
	dc.b nAb2, $0C, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nBb1, $06, nBb1, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nAb1, $06
	dc.b nAb1, $06, nBb1, $06, nBb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nBb1, $0C
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nBb2, $0C, nBb2, $06
	dc.b nBb2, $06, nBb2, $06, nBb2, $06, nBb2, $06
	dc.b nBb2, $06, nBb2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nEb2, $30, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nBb2, $0C, nBb2, $06
	dc.b nBb2, $06, nAb2, $0C, nAb2, $06, nBb2, $06
	dc.b nBb2, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b nC3, $0C, nC3, $06, nC3, $0C, nAb2, $0C
	dc.b nAb2, $06, nAb2, $0C, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nBb1, $06
	dc.b nBb1, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nAb1, $06, nAb1, $06, nBb1, $06, nBb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nAb1, $06
	dc.b nBb1, $0C, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nBb1, $06
	sStop

Maniax_FM5:
	sPan		spLeft
	sPatFM		$02
	dc.b nRst, $18, nF4, $06, nRst, $06, nC4, $05
	dc.b nRst, $01, nF4, $09, nRst, $03, nG4, $09
	dc.b nRst, $03, nBb4, $09, nRst, $03, nA4, $09
	dc.b nRst, $03, nG4, $09, nRst, $03, nA4, $05
	dc.b nRst, $01, nG4, $09, nRst, $03, nG4, $0F
	dc.b nRst, $03, nF4, $0F, nRst, $03, nG4, $05
	dc.b nRst, $01, nF4, $06, nRst, $30, nF4, $06
	dc.b nRst, $06, nC4, $05, nRst, $01, nF4, $09
	dc.b nRst, $03, nG4, $09, nRst, $03, nBb4, $09
	dc.b nRst, $03, nA4, $09, nRst, $03, nG4, $09
	dc.b nRst, $03, nA4, $05, nRst, $01, nG4, $09
	dc.b nRst, $03, nBb4, $0F, nRst, $03, nBb4, $09
	dc.b nRst, $03, nBb4, $09, nRst, $03, nBb4, $02
	dc.b nRst, $04, nBb4, $30, nRst, $7F, $41, nG4
	dc.b $06, nRst, $06, nG4, $05, nRst, $01, nAb4
	dc.b $09, nRst, $03, nG4, $09, nRst, $09, nF4
	dc.b $0F, nRst, $03, nEb4, $0F, nRst, $03, nF4
	dc.b $09, nRst, $03, nG4, $06, nRst, $06, nG4
	dc.b $05, nRst, $01, nAb4, $09, nRst, $09, nG4
	dc.b $09, nRst, $03, nF4, $0F, nRst, $03, nEb4
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nEb4
	dc.b $30, nRst, $36, nF4, $06, nRst, $06, nC4
	dc.b $05, nRst, $01, nF4, $09, nRst, $03, nG4
	dc.b $09, nRst, $03, nBb4, $09, nRst, $03, nA4
	dc.b $09, nRst, $03, nG4, $09, nRst, $03, nA4
	dc.b $05, nRst, $01, nG4, $09, nRst, $03, nG4
	dc.b $0F, nRst, $03, nF4, $0F, nRst, $03, nG4
	dc.b $05, nRst, $01, nF4, $06, nRst, $06, nBb4
	dc.b $03, nD4, $03, nF4, $03, nRst, $03, nBb4
	dc.b $03, nD4, $03, nF4, $12, nRst, $06, nF4
	dc.b $06, nRst, $06, nC4, $05, nRst, $01, nF4
	dc.b $09, nRst, $03, nG4, $09, nRst, $03, nBb4
	dc.b $09, nRst, $03, nA4, $09, nRst, $03, nG4
	dc.b $09, nRst, $03, nA4, $05, nRst, $01, nG4
	dc.b $09, nRst, $03, nBb4, $0F, nRst, $03, nBb4
	dc.b $09, nRst, $03, nBb4, $09, nRst, $03, nBb4
	dc.b $02, nRst, $04, nBb4, $30, nRst, $7F, $41
	dc.b nG4, $06, nRst, $06, nG4, $05, nRst, $01
	dc.b nAb4, $09, nRst, $03, nG4, $09, nRst, $09
	dc.b nF4, $0F, nRst, $03, nEb4, $0F, nRst, $03
	dc.b nF4, $09, nRst, $03, nG4, $06, nRst, $06
	dc.b nG4, $05, nRst, $01, nAb4, $09, nRst, $09
	dc.b nG4, $09, nRst, $03, nF4, $0F, nRst, $03
	dc.b nEb4, $09, nRst, $03, nF4, $09, nRst, $03
	dc.b nEb4, $30, nF4, $30, nRst, $06, nF4, $06
	dc.b nRst, $02, nG4, $06, nRst, $02, nAb4, $06
	dc.b nRst, $02, nBb4, $06, nRst, $02, nC5, $06
	dc.b nRst, $02, nD5, $06, nRst, $02, nEb5, $06
	dc.b nRst, $12, nEb5, $48
	sStop

Maniax_FM6:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $1E, nC4, $06, nRst, $06, nC3, $05
	dc.b nRst, $01, nF3, $09, nRst, $03, nG3, $09
	dc.b nRst, $03, nF4, $09, nRst, $03, nF4, $09
	dc.b nRst, $03, nF4, $09, nRst, $03, nA4, $05
	dc.b nRst, $01, nF4, $09, nRst, $03, nEb4, $0F
	dc.b nRst, $03, nEb4, $0F, nRst, $03, nEb4, $05
	dc.b nRst, $01, nD4, $06, nRst, $30, nC4, $06
	dc.b nRst, $06, nC3, $05, nRst, $01, nF3, $09
	dc.b nRst, $03, nG3, $09, nRst, $03, nF4, $09
	dc.b nRst, $03, nF4, $09, nRst, $03, nF4, $09
	dc.b nRst, $03, nF4, $05, nRst, $01, nF4, $09
	dc.b nRst, $03, nAb4, $0F, nRst, $03, nAb4, $09
	dc.b nRst, $03, nAb4, $09, nRst, $03, nAb4, $02
	dc.b nRst, $04, nG4, $30, nRst, $7F, $41, nEb4
	dc.b $06, nRst, $06, nEb4, $05, nRst, $01, nEb4
	dc.b $09, nRst, $03, nEb4, $09, nRst, $09, nD4
	dc.b $0F, nRst, $03, nC4, $0F, nRst, $03, nD4
	dc.b $09, nRst, $03, nEb4, $06, nRst, $06, nEb4
	dc.b $05, nRst, $01, nEb4, $09, nRst, $09, nEb4
	dc.b $09, nRst, $03, nD4, $0F, nRst, $03, nC4
	dc.b $09, nRst, $03, nD4, $09, nRst, $03, nC4
	dc.b $30, nRst, $36, nC4, $06, nRst, $06, nC3
	dc.b $05, nRst, $01, nF3, $09, nRst, $03, nG3
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nF4
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nF4
	dc.b $05, nRst, $01, nF4, $09, nRst, $03, nEb4
	dc.b $0F, nRst, $03, nEb4, $0F, nRst, $03, nEb4
	dc.b $05, nRst, $01, nD4, $06, nRst, $06, nBb3
	dc.b $03, nD4, $03, nF4, $03, nRst, $03, nBb3
	dc.b $03, nD4, $03, nF4, $12, nRst, $06, nC4
	dc.b $06, nRst, $06, nC3, $05, nRst, $01, nF3
	dc.b $09, nRst, $03, nG3, $09, nRst, $03, nF4
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nF4
	dc.b $09, nRst, $03, nF4, $05, nRst, $01, nF4
	dc.b $09, nRst, $03, nAb4, $0F, nRst, $03, nAb4
	dc.b $09, nRst, $03, nAb4, $09, nRst, $03, nAb4
	dc.b $02, nRst, $04, nG4, $30, nRst, $7F, $41
	dc.b nEb4, $06, nRst, $06, nEb4, $05, nRst, $01
	dc.b nEb4, $09, nRst, $03, nEb4, $09, nRst, $09
	dc.b nD4, $0F, nRst, $03, nC4, $0F, nRst, $03
	dc.b nD4, $09, nRst, $03, nEb4, $06, nRst, $06
	dc.b nEb4, $05, nRst, $01, nEb4, $09, nRst, $09
	dc.b nEb4, $09, nRst, $03, nD4, $0F, nRst, $03
	dc.b nC4, $09, nRst, $03, nD4, $09, nRst, $03
	dc.b nC4, $30, nD4, $30, nRst, $06, nF3, $06
	dc.b nRst, $02, nG3, $06, nRst, $02, nAb3, $06
	dc.b nRst, $02, nBb3, $06, nRst, $02, nC4, $06
	dc.b nRst, $02, nD4, $06, nRst, $02, nEb4, $06
	dc.b nRst, $12, nEb4, $48
	sStop

Maniax_PSG1:
	dc.b nRst, $7F, $7F, $7F, $1B
	ssDetune	$FF
	dc.b nF2, $01
	ssDetune	$FE
	dc.b sHold, $01
	ssDetune	$FC
	dc.b sHold, $01
	ssDetune	$04
	dc.b sHold, nFs2, $01
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$FF
	dc.b sHold, $01
	ssDetune	$FE
	dc.b sHold, $01
	ssDetune	$FC
	dc.b sHold, $01
	ssDetune	$03
	dc.b sHold, nG2, $01
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, $01, sHold, $0E
	ssDetune	$03
	dc.b sHold, $01
	ssDetune	$FF
	dc.b sHold, nFs2, $01
	ssDetune	$04
	dc.b sHold, $01
	ssDetune	$FF
	dc.b sHold, nF2, $01
	ssDetune	$00
	dc.b nEb2, $06, nC2, $06, nEb2, $24, nBb1, $06
	dc.b nEb2, $06, nF2, $06, nG2, $1E, nAb2, $06
	dc.b nBb2, $0C, nBb2, $12, nAb2, $03, nG2, $03
	dc.b nAb2, $18, nG2, $06, nRst, $06, nG2, $06
	dc.b nAb2, $06, nRst, $06, nG2, $0C, nRst, $06
	dc.b nF2, $0C, nRst, $06, nEb2, $0C, nRst, $06
	dc.b nF2, $0C, nG2, $06, nRst, $06, nG2, $06
	dc.b nAb2, $06, nRst, $06, nG2, $0C, nAb2, $03
	dc.b nG2, $03, nF2, $12, nEb2, $12, nF2, $06
	dc.b nEb2, $30, nRst, $7F, $7F, $7F, $39, nBb2
	dc.b $01
	ssDetune	$FF
	dc.b sHold, $01
	ssDetune	$FD
	dc.b sHold, $01
	ssDetune	$03
	dc.b sHold, nB2, $01
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, $01
	ssDetune	$FF
	dc.b sHold, $01
	ssDetune	$FE
	dc.b sHold, $01
	ssDetune	$03
	dc.b sHold, nC3, $01
	ssDetune	$02
	dc.b sHold, $01
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, $0F
	ssDetune	$01
	dc.b sHold, $01
	ssDetune	$00
	dc.b sHold, nB2, $01
	ssDetune	$FF
	dc.b sHold, nBb2, $01
	ssDetune	$00
	dc.b nBb2, $06, nG2, $06, nBb2, $24, nBb1, $01
	ssDetune	$FB
	dc.b sHold, nB1, $01
	ssDetune	$00
	dc.b sHold, nC2, $04, nEb2, $06, nF2, $06, nF2
	dc.b $01
	ssDetune	$02
	dc.b sHold, nFs2, $01
	ssDetune	$03
	dc.b sHold, nG2, $01
	ssDetune	$00
	dc.b sHold, $1B, nAb2, $06, nBb2, $0C, nEb2, $30
	dc.b nG2, $06, nRst, $06, nG2, $06, nAb2, $06
	dc.b nRst, $06, nG2, $0C, nAb2, $03, nG2, $03
	dc.b nF2, $0C, nRst, $06, nEb2, $0C, nF2, $06
	dc.b nG2, $06, nAb2, $06, nBb2, $06, nRst, $06
	dc.b nBb2, $06, nAb2, $06, nRst, $06, nG2, $0C
	dc.b nAb2, $03, nG2, $03, nF2, $12, nEb2, $0C
	dc.b nF2, $0C, nEb2, $30
	sStop

Maniax_PSG2:
	dc.b nRst, $18, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $30, nC0, $12, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $0C, nC0, $0C, nC0, $06
	dc.b nC0, $0C, nC0, $0C, nC0, $18, nC0, $06
	dc.b nC0, $06, nC0, $0C, nC0, $0C, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $0C
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $0C, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $30, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $0C, nC0, $06
	dc.b nC0, $06, nC0, $0C, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $0C, nC0, $0C
	dc.b nC0, $06, nC0, $0C, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $08, nC0, $08, nC0, $08, nC0, $08
	dc.b nC0, $08, nD0, $08, nEb0, $08, nRst, $10
	dc.b nC0, $48, nC0, $09
	sStop

Maniax_PSG3:
	dc.b nRst, $7F, $7F, $6A
	sVolEnvPSG	v00
	dc.b nAb0, $03, nBb0, $03, nEb1, $03, nBb0, $03
	dc.b nEb1, $03, nG1, $03, nBb1, $03, nG1, $03
	dc.b nBb1, $03, nEb2, $03, nG2, $03, nEb2, $03
	dc.b nG2, $03, nBb2, $03, nEb3, $03, nBb2, $03
	sVolEnvPSG	v00
	dc.b nC2, $30, nD2, $12, nEb2, $12, nF2, $0C
	dc.b nG2, $30, nC2, $30, nRst, $68, $68, $68
	dc.b $68, $68, $68
	sVolEnvPSG	v00
	dc.b nG0, $03, nBb0, $03, nEb1, $03, nBb0, $03
	dc.b nEb1, $03, nG1, $03, nBb1, $03, nG1, $03
	dc.b nBb1, $03, nEb2, $03, nG2, $03, nEb2, $03
	dc.b nG2, $03, nBb2, $03, nEb3, $03, nBb2, $03
	sVolEnvPSG	v00
	dc.b nAb2, $2A, nBb2, $18, nAb2, $12, nBb2, $0C
	dc.b nG2, $30, nC3, $30
	sStop

Maniax_Patches:

	; Patch $00
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1E, $15, $1D, $09
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
	spTotalLv	$1E, $1D, $15, $09

	; Patch $01
	; $3B
	; $0D, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0E, $0D, $09, $09,	$00, $00, $00, $00
	; $D6, $D6, $D6, $D7,	$33, $15, $17, $10
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
	spTotalLv	$33, $17, $15, $10

	; Patch $02
	; $3A
	; $32, $08, $72, $02,	$12, $4E, $14, $11
	; $04, $0E, $00, $04,	$02, $00, $02, $01
	; $18, $58, $08, $38,	$1B, $21, $24, $08
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $07, $00, $00
	spMultiple	$02, $02, $08, $02
	spRateScale	$00, $00, $01, $00
	spAttackRt	$12, $14, $0E, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $00, $0E, $04
	spSustainLv	$01, $00, $05, $03
	spDecayRt	$02, $02, $00, $01
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$1B, $24, $21, $08
