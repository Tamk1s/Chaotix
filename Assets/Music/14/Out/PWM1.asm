Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$02, $00
	sHeaderTempo	$02, $08
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $08

Maniax_FM1:
	sPatFM		$00
	sPan		spCenter
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	saVolFM		$11
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$9A
	dc.b nE2, $02
	saVolFM		$66
	dc.b nE2, $01
	saVolFM		$89
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nRst, $30

Maniax_Jump1:
	dc.b nRst, $09
	saVolFM		$0C
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $2D, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $2D, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $39, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $39
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $09
	dc.b nC2, $03, nRst, $0C, nC2, $03, nD2, $03
	dc.b nC2, $03, nB1, $03, nRst, $06, nD2, $06
	dc.b nRst, $09, nC2, $03, nRst, $0C, nC2, $03
	dc.b nD2, $03, nC2, $03, nB1, $03, nRst, $06
	dc.b nD2, $06, nRst, $09, nC2, $03, nRst, $0C
	dc.b nC2, $03, nD2, $03, nC2, $03, nB1, $03
	dc.b nRst, $06, nD2, $06, nRst, $09, nC2, $03
	dc.b nRst, $0C, nC2, $03, nD2, $03, nC2, $03
	dc.b nB1, $03, nRst, $06, nD2, $06, nRst, $60
	dc.b $60, $60, $60, $60, $60
	saVolFM		$F4
	sJump		Maniax_Jump1

Maniax_DAC:
	sStop

Maniax_Patches:
