Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$04, $04
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $0E
	sHeaderFM	Maniax_FM2, $00, $1B
	sHeaderFM	Maniax_FM3, $00, $18
	sHeaderFM	Maniax_FM4, $00, $24
	sHeaderFM	Maniax_FM5, $00, $13
	sHeaderFM	Maniax_FM6, $00, $13
	sHeaderPSG	Maniax_PSG1, $00, $0A, $00, v00
	sHeaderPSG	Maniax_PSG2, $00, $0F, $00, v00
	sHeaderPSG	Maniax_PSG3, $00, $0A, $00, v01

Maniax_DAC:
	dc.b nRst, $20
	ssTempo		$04
	dc.b $3A, $3A, $3A, $3A, $3A, $3A, $3A, $3A
	dc.b $3A, $3A, $3A, $3A, $3A, $3A, $3A, $3A
	dc.b $3A, $3A, $3A, $3A, $3A, $3A
	sStop

Maniax_FM1:
	sPatFM		$00
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02

Maniax_Jump1:
	dc.b nC1, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nG1, $03, nRst, $01, nC2, $02, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	saVolFM		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	saVolFM		$06
	dc.b nBb1, $02
	saVolFM		$FA
	dc.b nEb1, $02, nRst, $02
	saVolFM		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02
	sJump		Maniax_Jump1

Maniax_FM2:
	sPatFM		$01
	dc.b nBb3, $0E

Maniax_Jump2:
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nRst, $0E
	sJump		Maniax_Jump2

Maniax_FM3:
	sPatFM		$01
	dc.b nG3, $0E

Maniax_Jump3:
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nRst, $0E
	sJump		Maniax_Jump3

Maniax_FM4:
	sPatFM		$02
	dc.b nRst, $0E

Maniax_Jump4:
	dc.b nRst, $3F, $3F, $3F, $35, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04
	saVolFM		$F2
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nC4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $04, nF3, $02
	dc.b nC4, $04
	saVolFM		$0E
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	saVolFM		$F7
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $04, nF3, $02
	dc.b nC4, $04, nRst, $1C
	saVolFM		$09
	sJump		Maniax_Jump4

Maniax_FM5:
	sPatFM		$03
	dc.b nRst, $0E

Maniax_Jump5:
	dc.b nRst, $3F, $29
	sPatFM		$04
	dc.b nD5, $01, nBb5, $01, nF5, $01, nBb4, $01
	dc.b nG4, $02, nF5, $01, nG5, $01, nBb5, $01
	dc.b nG6, $03
	saVolFM		$02
	dc.b nF5, $02
	saVolFM		$02
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nG6, $02
	saVolFM		$03
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$02
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nG6, $02
	saVolFM		$04
	dc.b nBb4, $01
	saVolFM		$02
	dc.b nF5, $01
	saVolFM		$02
	dc.b nG5, $01
	saVolFM		$02
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nG6, $03, nRst, $3F, $25
	saVolFM		$E4
	dc.b nF5, $02, nBb5, $01, nC6, $02, nF6, $01
	dc.b nG6, $01, nC7, $03
	saVolFM		$03
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nC6, $02
	saVolFM		$02
	dc.b nF6, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$02
	dc.b nC7, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$02
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nC6, $01
	saVolFM		$02
	dc.b nD6, $01
	saVolFM		$02
	dc.b nF6, $01
	saVolFM		$02
	dc.b nG6, $01
	saVolFM		$02
	dc.b nC7, $03, nRst, $3F, $1F
	saVolFM		$EB
	dc.b nD6, $04, nRst, $02
	saVolFM		$03
	dc.b nD6, $04, nRst, $02
	saVolFM		$05
	dc.b nD6, $01, nG6, $04, nRst, $3F, $30
	sPatFM		$03
	saVolFM		$F7
	dc.b nB4, $10
	sPatFM		$04
	dc.b nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b nC6, $04, nG5, $02, nF6, $01, nRst, $03
	dc.b nE6, $01, nRst, $03, nC6, $06, nG5, $04
	dc.b nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b nBb5, $04, nF5, $02, nEb6, $01, nRst, $03
	dc.b nD6, $01, nRst, $03, nBb5, $06, nC6, $04
	dc.b nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b nC6, $04, nG5, $02, nF6, $01, nRst, $03
	dc.b nE6, $01, nRst, $03, nC6, $04, nG5, $02
	dc.b nC6, $04, nEb6, $01, nRst, $03, nD6, $01
	dc.b nRst, $03, nBb5, $04, nF5, $02, nEb6, $01
	dc.b nRst, $03, nD6, $01, nRst, $03, nD5, $01
	dc.b nBb5, $01, nF5, $01, nBb4, $01, nF4, $01
	dc.b nBb4, $01, nC6, $01, nG5, $01, nBb5, $01
	dc.b nG6, $01, nF6, $01
	saVolFM		$01
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$FD
	saVolFM		$04
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$01
	dc.b nG4, $01
	saVolFM		$02
	dc.b nBb4, $01
	saVolFM		$F8
	saVolFM		$09
	saVolFM		$F7
	dc.b nC5, $01
	saVolFM		$0B
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nG6, $01
	saVolFM		$F2
	dc.b nG4, $01
	saVolFM		$12
	dc.b nBb4, $01
	saVolFM		$EE
	dc.b nF5, $01
	saVolFM		$16
	dc.b nG5, $01
	saVolFM		$02
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nG6, $01
	saVolFM		$E4
	dc.b nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b nBb5, $04, nF5, $02, nEb6, $01, nRst, $03
	dc.b nD6, $01, nRst, $03, nBb5, $04, nF5, $02
	dc.b nC6, $04, nF6, $01, nRst, $03, nE6, $01
	dc.b nRst, $03, nC6, $04, nG5, $02, nF6, $01
	dc.b nRst, $03, nE6, $01, nRst, $03, nC6, $04
	dc.b nG5, $02, nC6, $04, nEb6, $01, nRst, $03
	dc.b nD6, $01, nRst, $03, nBb5, $04, nF5, $02
	dc.b nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b nG6, $02
	saVolFM		$FB
	dc.b nF5, $01, nG5, $01
	saVolFM		$05
	dc.b nF6, $01
	saVolFM		$FB
	saVolFM		$05
	dc.b nG6, $01
	saVolFM		$FB
	saVolFM		$05
	dc.b nC7, $02
	saVolFM		$FB
	dc.b nG6, $01, nC7, $01
	saVolFM		$0D
	dc.b nF5, $01, nG5, $01
	saVolFM		$FB
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nC6, $01
	saVolFM		$04
	dc.b nD6, $01, nF6, $01
	saVolFM		$FF
	dc.b nG6, $01
	saVolFM		$01
	dc.b nC7, $01
	saVolFM		$02
	dc.b nF5, $01
	saVolFM		$FF
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nC6, $01
	saVolFM		$02
	dc.b nD6, $01
	saVolFM		$FD
	dc.b nF6, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$08
	dc.b nC7, $01
	saVolFM		$FB
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nC6, $01
	saVolFM		$01
	dc.b nD6, $01
	saVolFM		$02
	dc.b nF6, $01
	saVolFM		$02
	dc.b nG6, $01
	saVolFM		$02
	dc.b nC7, $04, nRst, $3F, $15
	saVolFM		$E5
	dc.b nBb5, $04, nRst, $02
	saVolFM		$03
	dc.b nBb5, $04, nRst, $02
	saVolFM		$05
	dc.b nBb5, $02, nG6, $04, nRst, $3F, $3C
	saVolFM		$F3
	dc.b nG4, $02, nC5, $02, nF6, $02, nRst, $02
	dc.b nE6, $02, nRst, $04, nC6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nF6, $02, nRst, $02
	dc.b nE6, $06, nC6, $02, nD6, $02, nEb6, $02
	dc.b nRst, $02, nD6, $02, nRst, $04, nBb5, $02
	dc.b nRst, $02, nC6, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nC6, $06, nG6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $02, nRst, $04
	dc.b nC6, $02, nRst, $02, nF6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $04, nC6, $02
	dc.b nD6, $02, nEb6, $04, nRst, $02, nD6, $02
	dc.b nRst, $04, nBb5, $02, nRst, $02, nC6, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nC5, $04
	saVolFM		$04
	dc.b nG4, $01
	saVolFM		$FC
	saVolFM		$04
	dc.b nBb4, $01
	saVolFM		$FC
	dc.b nG6, $01
	saVolFM		$04
	dc.b nG5, $01, nBb5, $01, nG6, $01
	saVolFM		$FC
	saVolFM		$04
	dc.b nG4, $01
	saVolFM		$01
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$F9
	saVolFM		$08
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$01
	dc.b nG4, $01
	saVolFM		$02
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$02
	dc.b nG5, $01
	saVolFM		$01
	saVolFM		$F0
	dc.b nC5, $01
	saVolFM		$12
	dc.b nG6, $01
	saVolFM		$02
	dc.b nG4, $01
	saVolFM		$02
	dc.b nBb4, $01
	saVolFM		$EA
	dc.b nF6, $01
	saVolFM		$1A
	dc.b nG5, $01
	saVolFM		$02
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nG6, $01
	saVolFM		$E0
	dc.b nF5, $02, nRst, $02, nE6, $06, nC5, $02
	dc.b nD5, $02, nEb6, $02, nRst, $02, nD6, $02
	dc.b nRst, $04, nBb5, $02, nRst, $02, nC6, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nC6, $04
	dc.b nG5, $01, nC6, $01, nG6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $02, nRst, $04
	dc.b nC6, $02, nRst, $02, nF6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $04, nC6, $02
	dc.b nD6, $02, nEb6, $04, nRst, $02, nD6, $02
	dc.b nEb6, $02, nF6, $02, nG6, $02, nRst, $02
	dc.b nG6, $02, nRst, $02, nC6, $02, nRst, $02
	dc.b nG6, $02
	saVolFM		$04
	dc.b nF5, $01, nG5, $01
	saVolFM		$FC
	saVolFM		$04
	saVolFM		$FC
	dc.b nF6, $01
	saVolFM		$04
	saVolFM		$FC
	dc.b nG5, $01
	saVolFM		$04
	saVolFM		$FC
	dc.b nF6, $01
	saVolFM		$04
	dc.b nF6, $01, nG6, $01, nC7, $01
	saVolFM		$08
	dc.b nF5, $01, nG5, $01
	saVolFM		$FB
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nC6, $01
	saVolFM		$04
	dc.b nD6, $01, nF6, $01
	saVolFM		$FF
	dc.b nG6, $01, nC7, $01
	saVolFM		$03
	dc.b nF5, $01
	saVolFM		$FF
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nC6, $01
	saVolFM		$02
	dc.b nD6, $01
	saVolFM		$FD
	dc.b nF6, $01
	saVolFM		$01
	dc.b nG6, $01, nC7, $01
	saVolFM		$03
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nC6, $01
	saVolFM		$01
	dc.b nD6, $01
	saVolFM		$02
	dc.b nF6, $01
	saVolFM		$02
	dc.b nG6, $01, nC7, $04, nRst, $01
	saVolFM		$E6
	sJump		Maniax_Jump5

Maniax_FM6:
	sPatFM		$04
	dc.b nRst, $0E

Maniax_Jump6:
	dc.b nRst, $3F, $2E, nBb4, $03, nRst, $02, nG4
	dc.b $01
	saVolFM		$01
	dc.b nBb4, $02
	saVolFM		$02
	dc.b nG5, $03
	saVolFM		$03
	dc.b nG4, $03, nRst, $03
	saVolFM		$0A
	dc.b nG4, $03
	saVolFM		$06
	dc.b nG5, $03, nRst, $3F, $28
	saVolFM		$EA
	dc.b nG5, $03, nD6, $03, nC7, $02
	saVolFM		$02
	dc.b nG5, $03
	saVolFM		$03
	dc.b nD6, $03, nRst, $02
	saVolFM		$07
	dc.b nG5, $03
	saVolFM		$04
	dc.b nD6, $03
	saVolFM		$06
	dc.b nC7, $03, nRst, $3F, $1E
	saVolFM		$EB
	dc.b nBb5, $04, nRst, $02
	saVolFM		$03
	dc.b nBb5, $04, nRst, $02
	saVolFM		$05
	dc.b nBb5, $02, nG6, $04, nRst, $3F, $3F, $01
	saVolFM		$F7
	dc.b nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b nC5, $04, nG4, $02, nF5, $01, nRst, $03
	dc.b nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b nBb4, $04, nF4, $02, nEb5, $01, nRst, $03
	dc.b nD5, $01, nRst, $03, nBb4, $06, nC5, $04
	dc.b nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b nC5, $04, nG4, $02, nF5, $01, nRst, $03
	dc.b nE5, $01, nRst, $03, nC5, $04, nG4, $02
	dc.b nC5, $04, nEb5, $01, nRst, $03, nD5, $01
	dc.b nRst, $03, nBb4, $04, nF4, $02, nEb5, $01
	dc.b nRst, $03, nD5, $01, nRst, $03, nD5, $01
	dc.b nBb5, $01, nF5, $01, nBb4, $01, nF4, $01
	dc.b nBb4, $01, nC6, $01, nG5, $01, nBb5, $01
	dc.b nG6, $01, nF6, $01
	saVolFM		$01
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$FD
	saVolFM		$04
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$01
	dc.b nG4, $01
	saVolFM		$02
	dc.b nBb4, $01
	saVolFM		$F8
	saVolFM		$09
	saVolFM		$F7
	dc.b nC5, $01
	saVolFM		$0B
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nG6, $01
	saVolFM		$F2
	dc.b nG4, $01
	saVolFM		$12
	dc.b nBb4, $01
	saVolFM		$EE
	dc.b nF5, $01
	saVolFM		$16
	dc.b nG5, $01
	saVolFM		$02
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nG6, $01
	saVolFM		$E4
	dc.b nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b nBb4, $04, nF4, $02, nEb5, $01, nRst, $03
	dc.b nD5, $01, nRst, $03, nBb4, $04, nF4, $02
	dc.b nC5, $04, nF5, $01, nRst, $03, nE5, $01
	dc.b nRst, $03, nC5, $04, nG4, $02, nF5, $01
	dc.b nRst, $03, nE5, $01, nRst, $03, nC5, $04
	dc.b nG4, $02, nC5, $04, nEb5, $01, nRst, $03
	dc.b nD5, $01, nRst, $03, nBb4, $04, nF4, $02
	dc.b nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b nG6, $02
	saVolFM		$FB
	dc.b nF5, $01, nG5, $01
	saVolFM		$05
	dc.b nF6, $01
	saVolFM		$FB
	saVolFM		$05
	dc.b nG6, $01
	saVolFM		$FB
	saVolFM		$05
	dc.b nC7, $01
	saVolFM		$FB
	dc.b nF6, $01, nG6, $01, nC7, $01
	saVolFM		$0D
	dc.b nF5, $01, nG5, $01
	saVolFM		$FB
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nC6, $01
	saVolFM		$04
	dc.b nD6, $01, nF6, $01
	saVolFM		$FF
	dc.b nG6, $01
	saVolFM		$01
	dc.b nC7, $01
	saVolFM		$02
	dc.b nF5, $01
	saVolFM		$FF
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nC6, $01
	saVolFM		$02
	dc.b nD6, $01
	saVolFM		$FD
	dc.b nF6, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$08
	dc.b nC7, $01
	saVolFM		$FB
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nC6, $01
	saVolFM		$01
	dc.b nD6, $01
	saVolFM		$02
	dc.b nF6, $01
	saVolFM		$02
	dc.b nG6, $01
	saVolFM		$02
	dc.b nC7, $04, nRst, $3F, $16
	saVolFM		$E5
	dc.b nD6, $04, nRst, $02
	saVolFM		$03
	dc.b nD6, $04, nRst, $02
	saVolFM		$05
	dc.b nD6, $01, nG6, $04, nRst, $3F, $3D
	saVolFM		$F3
	dc.b nA4, $02, nD5, $02, nRst, $03, nE5, $02
	dc.b nRst, $04, nC5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nE5, $06
	dc.b nC5, $02, nD5, $02, nEb5, $02, nRst, $02
	dc.b nD5, $02, nRst, $04, nBb4, $02, nRst, $02
	dc.b nC5, $02, nRst, $02, nF4, $02, nRst, $02
	dc.b nC5, $06, nG5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nE5, $02, nRst, $08, nF5, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nE5, $04
	dc.b nC5, $02, nD5, $02, nEb5, $04, nRst, $02
	dc.b nD5, $02, nRst, $04, nBb4, $02, nRst, $02
	dc.b nC5, $02, nRst, $02, nF4, $02, nRst, $02
	dc.b nC5, $04
	saVolFM		$04
	dc.b nG4, $01
	saVolFM		$FC
	saVolFM		$04
	dc.b nBb4, $01
	saVolFM		$FC
	dc.b nG6, $01
	saVolFM		$04
	dc.b nG5, $01, nBb5, $01, nG6, $01
	saVolFM		$FC
	saVolFM		$04
	dc.b nG4, $01
	saVolFM		$01
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$F9
	saVolFM		$08
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nG6, $01
	saVolFM		$01
	dc.b nG4, $01
	saVolFM		$02
	dc.b nBb4, $01
	saVolFM		$01
	dc.b nF5, $01
	saVolFM		$02
	dc.b nG5, $01
	saVolFM		$01
	saVolFM		$F0
	dc.b nC5, $01
	saVolFM		$12
	dc.b nG6, $01
	saVolFM		$02
	dc.b nG4, $01
	saVolFM		$02
	dc.b nBb4, $01
	saVolFM		$EA
	dc.b nF6, $01
	saVolFM		$1A
	dc.b nG5, $01
	saVolFM		$02
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nG6, $01
	saVolFM		$E0
	dc.b nF5, $02, nRst, $02, nE6, $06, nC5, $02
	dc.b nD5, $02, nEb5, $02, nRst, $02, nD5, $02
	dc.b nRst, $04, nBb4, $02, nRst, $02, nC5, $02
	dc.b nRst, $02, nF4, $02, nRst, $02, nC5, $04
	dc.b nC5, $02, nG5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nE5, $02, nRst, $04, nC5, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nE5, $04, nC5, $02, nD5, $02
	dc.b nEb5, $04, nRst, $02, nD5, $02, nEb5, $02
	dc.b nF5, $02, nG5, $02, nRst, $02, nG5, $02
	dc.b nRst, $06, nG6, $02
	saVolFM		$04
	dc.b nF5, $01, nG5, $01
	saVolFM		$FC
	saVolFM		$04
	saVolFM		$FC
	dc.b nF6, $01
	saVolFM		$04
	saVolFM		$FC
	dc.b nG5, $01
	saVolFM		$04
	saVolFM		$FC
	dc.b nF6, $01
	saVolFM		$04
	dc.b nF6, $01, nG6, $01, nC7, $01
	saVolFM		$08
	dc.b nF5, $01, nG5, $01
	saVolFM		$FB
	dc.b nBb5, $01
	saVolFM		$01
	dc.b nC6, $01
	saVolFM		$04
	dc.b nD6, $01, nF6, $01
	saVolFM		$FF
	dc.b nG6, $01, nC7, $01
	saVolFM		$03
	dc.b nF5, $01
	saVolFM		$FF
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$04
	dc.b nC6, $01
	saVolFM		$02
	dc.b nD6, $01
	saVolFM		$FD
	dc.b nF6, $01
	saVolFM		$01
	dc.b nG6, $01, nC7, $01
	saVolFM		$03
	dc.b nF5, $01
	saVolFM		$01
	dc.b nG5, $01
	saVolFM		$01
	dc.b nBb5, $01
	saVolFM		$02
	dc.b nC6, $01
	saVolFM		$01
	dc.b nD6, $01
	saVolFM		$02
	dc.b nF6, $01
	saVolFM		$02
	dc.b nG6, $01, nC7, $04, nRst, $01
	saVolFM		$E6
	sJump		Maniax_Jump6

Maniax_PSG1:
	dc.b nRst, $0E

Maniax_Jump7:
	dc.b nRst, $3F, $3F, $3F, $35, nC3, $01, nRst
	dc.b $03, nC3, $01, nC3, $01, nRst, $02, nC3
	dc.b $01, nC3, $01, nRst, $01, nG3, $01, nF3
	dc.b $01, nRst, $01, nE3, $01, nRst, $03, nC3
	dc.b $01, nRst, $03, nG2, $01, nRst, $09, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nEb3, $01, nRst, $01, nD3
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nF2
	dc.b $01, nRst, $09, nC3, $01, nRst, $03, nC3
	dc.b $01, nBb2, $01, nC3, $01, nRst, $01, nC3
	dc.b $01, nBb2, $01, nC3, $01, nF3, $01, nF3
	dc.b $01, nRst, $01, nE3, $01, nRst, $03, nC3
	dc.b $01, nRst, $03, nG2, $01, nRst, $09, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nEb3, $01, nRst, $01, nD3
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nF2
	dc.b $01, nRst, $09, nC3, $01, nRst, $03, nC3
	dc.b $01, nC3, $01, nRst, $02, nC3, $01, nC3
	dc.b $01, nRst, $01, nG3, $01, nF3, $01, nRst
	dc.b $01, nE3, $01, nRst, $03, nC3, $01, nRst
	dc.b $03, nG2, $01, nRst, $09, nBb2, $01, nRst
	dc.b $03, nBb2, $01, nRst, $03, nBb2, $01, nRst
	dc.b $03, nEb3, $01, nRst, $01, nD3, $01, nRst
	dc.b $03, nBb2, $01, nRst, $03, nF2, $01, nRst
	dc.b $09, nC3, $01, nRst, $03, nC3, $01, nBb2
	dc.b $01, nC3, $01, nRst, $01, nC3, $01, nBb2
	dc.b $01, nC3, $01, nF3, $01, nF3, $01, nRst
	dc.b $01, nE3, $01, nRst, $03, nC3, $01, nRst
	dc.b $03, nG2, $01, nRst, $09, nBb2, $01, nRst
	dc.b $03, nBb2, $01, nRst, $03, nBb2, $01, nRst
	dc.b $03, nEb3, $01, nRst, $01, nD3, $01, nRst
	dc.b $03, nBb2, $01, nBb2, $01, nC3, $01, nF3
	dc.b $01, nF2, $01, nRst, $35, $35, $35, $35
	dc.b $35, nC3, $01, nRst, $03, nG2, $01, nC3
	dc.b $01, nRst, $02, nC3, $01, nC3, $01, nRst
	dc.b $01, nG3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nF2, $01, nRst, $09, nC3
	dc.b $01, nRst, $03, nC3, $01, nBb2, $01, nC3
	dc.b $01, nRst, $01, nC3, $01, nBb2, $01, nC3
	dc.b $01, nF3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nF2, $01, nRst, $09, nC3
	dc.b $01, nRst, $03, nC3, $01, nC3, $01, nRst
	dc.b $01, nG3, $01, nC3, $01, nC3, $01, nRst
	dc.b $01, nG3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nF2, $01, nRst, $09, nC3
	dc.b $01, nRst, $03, nC3, $01, nBb2, $01, nC3
	dc.b $01, nRst, $01, nC3, $01, nBb2, $01, nC3
	dc.b $01, nF3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nBb2, $01, nC3, $01, nF3, $01, nF2
	dc.b $01, nRst, $3A, $3A, $3A, $3A, $3A, $03
	sJump		Maniax_Jump7

Maniax_PSG2:
	dc.b nRst, $0E

Maniax_Jump8:
	dc.b nRst, $3F, $3F, $3F, $35, nC2, $02, nG2
	dc.b $02, nF2, $02, nG2, $02, nC2, $02, nG2
	dc.b $02, nF2, $02, nG2, $02, nC2, $02, nG2
	dc.b $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02
	saVolPSG	$FF
	dc.b nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nRst, $36, nC3, $01, nC3, $01, nC3, $01
	dc.b nC3, $01, nC3, $01, nC3, $01, nC3, $01
	dc.b nC3, $01, nC3, $01, nC3, $01, nRst, $3F
	dc.b $37, nC3, $01, nC3, $01, nC3, $01, nC3
	dc.b $01, nC3, $01, nC3, $01, nC3, $01, nC3
	dc.b $01, nC3, $01, nC3, $01, nRst, $3F, $01
	saVolPSG	$05
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02
	saVolPSG	$FF
	dc.b nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	saVolPSG	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nRst, $2F, $2F, $2F, $2F, $2F, $2F, $02
	saVolPSG	$05
	sJump		Maniax_Jump8

Maniax_PSG3:
	dc.b nRst, $0E

Maniax_Jump9:
	dc.b nRst, $3F, $3F, $3F, $35, nC1, $01, nRst
	dc.b $03, nBb0, $01, nRst, $03, nBb0, $04, nRst
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nRst
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04
	saVolPSG	$FB
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nC1, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $04, nF0, $02
	dc.b nBb0, $04
	saVolPSG	$05
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nC1, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nBb0, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	saVolPSG	$FD
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nC1, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nC1, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $1C
	saVolPSG	$03
	sJump		Maniax_Jump9

Maniax_Patches:

	; Patch $00
	; $20
	; $60, $64, $60, $60,	$DF, $DF, $9F, $9F
	; $1F, $0A, $1F, $0A,	$1C, $0F, $09, $02
	; $25, $44, $15, $F5,	$2A, $29, $15, $02
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$06, $06, $06, $06
	spMultiple	$00, $00, $04, $00
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1F, $0A, $0A
	spSustainLv	$02, $01, $04, $0F
	spDecayRt	$1C, $09, $0F, $02
	spReleaseRt	$05, $05, $04, $05
	spTotalLv	$2A, $15, $29, $02

	; Patch $01
	; $3A
	; $71, $07, $33, $01,	$9C, $96, $5D, $92
	; $04, $07, $04, $06,	$00, $01, $03, $00
	; $15, $12, $16, $B5,	$25, $34, $25, $06
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $03, $07, $01
	spRateScale	$02, $01, $02, $02
	spAttackRt	$1C, $1D, $16, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $07, $06
	spSustainLv	$01, $01, $01, $0B
	spDecayRt	$00, $03, $01, $00
	spReleaseRt	$05, $06, $02, $05
	spTotalLv	$25, $25, $34, $06

	; Patch $02
	; $31
	; $30, $30, $30, $30,	$DF, $DF, $9F, $9F
	; $0C, $07, $0C, $09,	$09, $0A, $09, $08
	; $2F, $1F, $1F, $2F,	$0E, $48, $16, $00
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $07, $09
	spSustainLv	$02, $01, $01, $02
	spDecayRt	$09, $09, $0A, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $16, $48, $00

	; Patch $03
	; $3D
	; $0F, $0F, $00, $00,	$08, $05, $45, $05
	; $00, $00, $12, $05,	$00, $0F, $0F, $0F
	; $00, $0D, $47, $07,	$00, $0F, $0E, $0F
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $00, $0F, $00
	spRateScale	$00, $01, $00, $00
	spAttackRt	$08, $05, $05, $05
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $12, $00, $05
	spSustainLv	$00, $04, $00, $00
	spDecayRt	$00, $0F, $0F, $0F
	spReleaseRt	$00, $07, $0D, $07
	spTotalLv	$00, $0E, $0F, $0F

	; Patch $04
	; $05
	; $36, $32, $7C, $72,	$1F, $5F, $1F, $1F
	; $07, $0B, $0A, $0B,	$00, $07, $07, $07
	; $59, $4E, $59, $4E,	$23, $0D, $23, $0C
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
	spTotalLv	$23, $23, $0D, $0C
