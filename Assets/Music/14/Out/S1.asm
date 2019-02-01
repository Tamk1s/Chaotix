Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $08
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $14
	sHeaderFM	Maniax_FM2, $00, $0B
	sHeaderFM	Maniax_FM3, $00, $0B
	sHeaderFM	Maniax_FM4, $00, $14
	sHeaderFM	Maniax_FM5, $00, $0F
	sHeaderFM	Maniax_FM6, $00, $29
	sHeaderPSG	Maniax_PSG1, $00, $07, $00, $1E
	sHeaderPSG	Maniax_PSG2, $00, $05, $00, $31
	sHeaderPSG	Maniax_PSG3, $00, $0E, $00, $1B

Maniax_FM1:
	sPatFM		$00
	sPan		spCenter
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06

Maniax_Jump1:
	dc.b nRst, $72, $72, $72, $72, $72, $72, $72
	dc.b $72, $72, $72
	saVolFM		$F4
	dc.b nBb2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nBb2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nG2, $09, nG2, $09, nBb2, $09, nG2, $09
	dc.b nBb2, $03, nRst, $03, nBb2, $03, nG2, $09
	dc.b nBb2, $09, nG2, $09, nBb2, $09, nF2, $09
	dc.b nFs2, $06, nG2, $09, nG2, $09, nBb2, $09
	dc.b nG2, $09, nBb2, $03, nRst, $03, nBb2, $03
	dc.b nG2, $09, nBb2, $09, nG2, $09, nBb2, $03
	dc.b nG2, $03, nBb2, $03, nF2, $09, nFs2, $06
	dc.b nG2, $09, nG2, $09, nBb2, $09, nG2, $09
	dc.b nBb2, $03, nRst, $03, nBb2, $03, nG2, $09
	dc.b nBb2, $09, nG2, $09, nBb2, $09, nF2, $09
	dc.b nFs2, $06, nG2, $09, nG2, $09, nBb2, $09
	dc.b nG2, $09, nBb2, $03, nRst, $03, nBb2, $03
	dc.b nG2, $09, nBb2, $09, nG2, $09, nBb2, $03
	dc.b nG2, $03, nBb2, $03, nF2, $09, nFs3, $06
	dc.b nG3, $09, nG3, $09, nBb3, $09, nG3, $09
	dc.b nBb3, $03, nRst, $03, nBb3, $03, nG3, $09
	dc.b nBb3, $09, nG3, $09, nBb3, $09, nF3, $09
	dc.b nFs3, $06, nG3, $09, nG3, $09, nBb3, $09
	dc.b nG3, $09, nBb3, $03, nRst, $03, nBb3, $03
	dc.b nG3, $09, nBb3, $09, nG3, $09, nBb3, $03
	dc.b nG3, $03, nBb3, $03, nF3, $09, nFs2, $06
	dc.b nG2, $09, nG2, $09, nBb2, $09, nG2, $09
	dc.b nBb2, $03, nRst, $03, nBb2, $03, nG2, $09
	dc.b nBb2, $09, nG2, $09, nBb2, $09, nF2, $09
	dc.b nFs2, $06, nG2, $09, nG2, $09, nBb2, $09
	dc.b nG2, $09, nBb2, $03, nRst, $03, nBb2, $03
	dc.b nG2, $09, nBb2, $09, nG2, $09, nBb2, $03
	dc.b nG2, $03, nBb2, $03, nF2, $09, nFs2, $06
	dc.b nRst, $60, $60, $60, $60, $60, $60
	saVolFM		$0C
	sJump		Maniax_Jump1

Maniax_FM2:
	sPatFM		$01
	sPan		spCenter
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54

Maniax_Jump2:
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54
	sJump		Maniax_Jump2

Maniax_FM3:
	sPatFM		$01
	sPan		spCenter
	dc.b nRst, $7F, $41, nC4, $02, nD4, $0A, nG3
	dc.b $06, nF4, $02, nG4, $04, nRst, $48, nC4
	dc.b $02, nD4, $0A, nG3, $06, nF4, $02, nG4
	dc.b $04, nRst, $18, nC4, $02, nD4, $0A, nG3
	dc.b $06, nF4, $02, nG4, $07, nD4, $09, nG3
	dc.b $06, nG4, $06

Maniax_Jump3:
	dc.b nC4, $02, nD4, $0A, nG3, $06, nF4, $02
	dc.b nG4, $04, nRst, $7F, $29, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $48, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nG3, $06, nRst, $06, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $48, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $48, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $48, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nG3, $06, nG4, $06, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $18, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $07, nD4, $09, nG3, $06, nG4
	dc.b $06, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nG3, $06, nG4, $06, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $18, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $07, nD4, $09, nG3, $06, nG4
	dc.b $06, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nRst, $61, $61, $61, $61, $61, $61
	dc.b $61, $61, $61, $61, $61, $61, nC4, $02
	dc.b nD4, $0A, nG3, $06, nF4, $02, nG4, $04
	dc.b nRst, $48, nC4, $02, nD4, $0A, nG3, $06
	dc.b nF4, $02, nG4, $04, nRst, $18, nC4, $02
	dc.b nD4, $0A, nG3, $06, nF4, $02, nG4, $07
	dc.b nD4, $09, nG3, $06, nG4, $06
	sJump		Maniax_Jump3

Maniax_FM4:
	sPatFM		$02
	sPan		spCenter
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump4:
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nBb3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nBb3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nBb3, $03, nBb3, $03, nBb3, $03
	dc.b nBb3, $03, nRst, $09, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nBb3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nBb3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nBb3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nRst, $09, nG3, $06, nG3, $09
	dc.b nG3, $09, nG3, $06, nG3, $03, nG3, $03
	dc.b nG3, $03, nRst, $09, nG3, $06, nG3, $09
	dc.b nG3, $09, nG3, $06, nF3, $03, nF3, $03
	dc.b nF3, $03, nRst, $09, nF3, $06, nF3, $09
	dc.b nF3, $09, nF3, $06, nF3, $03, nF3, $03
	dc.b nF3, $03, nRst, $09, nF3, $06, nF3, $09
	dc.b nF3, $09, nF3, $06, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03
	sJump		Maniax_Jump4

Maniax_FM5:
	sPatFM		$03
	sPan		spCenter
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump5:
	dc.b nRst, $7C, $7C, $7C, $7C, $7C, $7C, nAb4
	dc.b $18, nG4, $7F, sHold, $11, nAb4, $30, nG4
	dc.b $60, nBb4, $60, nRst, $70, $70, $70, $70
	dc.b $70, $70, $70, $70, $70, $70, $70, $70
	sJump		Maniax_Jump5

Maniax_FM6:
	sPatFM		$04
	sPan		spCenter
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump6:
	dc.b nRst, $76, $76, $76, $76, $76, $76, $76
	dc.b $76, $76, $76, $76, $01, nC5, $03
	saVolFM		$F8
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F9
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FB
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FE
	dc.b nC5, $03, nRst, $7F, $14
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F8
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F9
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FB
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FE
	dc.b nC5, $03, nRst, $7F, $14
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F8
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F9
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FB
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FE
	dc.b nC5, $03, nRst, $7F, $14
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F8
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F9
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FB
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FE
	dc.b nC5, $03, nRst, $6A, $6A, $6A, $6A, $6A
	dc.b $01
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F8
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$1E
	dc.b nC5, $03
	saVolFM		$F9
	dc.b nC5, $03
	saVolFM		$FA
	dc.b nC5, $03
	saVolFM		$FB
	dc.b nC5, $03
	saVolFM		$FC
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FD
	dc.b nC5, $03
	saVolFM		$FE
	dc.b nC5, $03
	saVolFM		$1E
	sJump		Maniax_Jump6

Maniax_PSG1:
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54

Maniax_Jump7:
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54
	sJump		Maniax_Jump7

Maniax_PSG2:
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump8:
	dc.b nRst, $7C, $7C, $7C, $7C, $7C, $7C, nEb1
	dc.b $18, nD1, $7F, sHold, $11, nEb1, $30, nD1
	dc.b $60, nF1, $60, nRst, $70, $70, $70, $70
	dc.b $70, $70, $70, $70, $70, $70, $70, $70
	sJump		Maniax_Jump8

Maniax_PSG3:
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump9:
	dc.b nRst, $76, $76, $76, $76, $76, $76, $76
	dc.b $76, $76, $76, $76, $01, nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FD
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$0A
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03, nRst, $7F, $14
	saVolPSG	$0B
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FD
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$0A
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03, nRst, $7F, $14
	saVolPSG	$0B
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FD
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$0A
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03, nRst, $7F, $14
	saVolPSG	$0B
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FD
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$0A
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03, nRst, $6A, $6A, $6A, $6A, $6A
	dc.b $01
	saVolPSG	$0B
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FD
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$0A
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$FE
	dc.b nG1, $03
	saVolPSG	$FF
	dc.b nG1, $03
	saVolPSG	$0B
	sJump		Maniax_Jump9

Maniax_DAC:
	sStop

Maniax_Patches:

	; Patch $00
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$0C, $0C, $0C, $0C
	; $10, $18, $10, $18,	$1E, $15, $1D, $02
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $06, $02, $02
	spMultiple	$03, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $0B
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$0C, $0C, $0C, $0C
	spReleaseRt	$00, $00, $08, $08
	spTotalLv	$1E, $1D, $15, $02

	; Patch $01
	; $38
	; $63, $31, $31, $31,	$10, $13, $1A, $1B
	; $0E, $00, $00, $00,	$00, $00, $00, $00
	; $33, $05, $03, $0B,	$28, $19, $1A, $00
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$06, $03, $03, $03
	spMultiple	$03, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $1A, $13, $1B
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $00, $00, $00
	spSustainLv	$03, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $03, $05, $0B
	spTotalLv	$28, $1A, $19, $00

	; Patch $02
	; $2D
	; $00, $02, $01, $01,	$5F, $1F, $19, $1F
	; $0F, $0A, $0A, $0A,	$00, $01, $01, $01
	; $2F, $1C, $1C, $1C,	$26, $04, $02, $0F
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $01, $02, $01
	spRateScale	$01, $00, $00, $00
	spAttackRt	$1F, $19, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0A, $0A, $0A
	spSustainLv	$02, $01, $01, $01
	spDecayRt	$00, $01, $01, $01
	spReleaseRt	$0F, $0C, $0C, $0C
	spTotalLv	$26, $02, $04, $0F

	; Patch $03
	; $2C
	; $72, $78, $34, $34,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$16, $13, $17, $08
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$02, $04, $08, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0A, $0A
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $17, $13, $08

	; Patch $04
	; $00
	; $0F, $31, $72, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $14, $0E,	$00, $00, $00, $07
	; $0F, $0F, $2F, $4F,	$37, $0B, $17, $09
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$00, $07, $03, $00
	spMultiple	$0F, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $14, $00, $0E
	spSustainLv	$00, $02, $00, $04
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$37, $17, $0B, $09
