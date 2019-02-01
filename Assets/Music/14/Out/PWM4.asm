Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$02, $00
	sHeaderTempo	$02, $08
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $0B

Maniax_FM1:
	sPatFM		$00
	sPan		spCenter
	dc.b nRst, $7F, $47, nB3, $03, nRst, $21, nB3
	dc.b $03, nRst, $09, nB3, $03, nRst, $21, nB3
	dc.b $03, nRst, $09, nB3, $03, nRst, $21, nB3
	dc.b $03, nRst, $03, $30

Maniax_Jump1:
	saVolFM		$FD
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nRst, $03
	dc.b nB1, $03, nD2, $03, nB1, $03, nC2, $03
	dc.b nB1, $03, nD2, $03, nB1, $03, nC2, $03
	dc.b nB1, $03, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nRst, $03, nB1, $03, nD2, $03, nB1, $03
	dc.b nC2, $03, nB1, $03, nD2, $03, nRst, $09
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $36, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06
	saVolFM		$44
	dc.b nD2, $01, sHold, $01
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$F1
	dc.b nD2, $01, sHold, $01
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$F7
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$F9
	dc.b nD2, $01, sHold, $01
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$FB
	dc.b nD2, $01
	saVolFM		$FF
	dc.b sHold, $01, sHold, $01
	saVolFM		$FB
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$FC
	dc.b nD2, $01, sHold, $01
	saVolFM		$FF
	dc.b sHold, $01
	saVolFM		$FD
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$FF
	saVolFM		$FD
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$FD
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$FD
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$FE
	saVolFM		$FF
	dc.b nD2, $01, sHold, $01, sHold, $01
	saVolFM		$FE
	dc.b nD2, $02
	saVolFM		$77
	dc.b nD2, $01
	saVolFM		$89
	dc.b nD2, $02
	saVolFM		$77
	dc.b nD2, $01
	saVolFM		$89
	dc.b nD2, $02
	saVolFM		$77
	dc.b nD2, $01
	saVolFM		$89
	dc.b nD2, $02
	saVolFM		$77
	dc.b nD2, $01
	saVolFM		$89
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $03, nRst, $03, nD2, $06
	dc.b nC2, $03, nD2, $06, nRst, $09, nD2, $06
	dc.b nRst, $06, nC2, $06, nC2, $03, nRst, $03
	dc.b nD2, $06, nC2, $03, nD2, $06, nRst, $09
	dc.b nD2, $06, nRst, $06, nC2, $06, nC2, $03
	dc.b nRst, $03, nD2, $06, nC2, $03, nD2, $06
	dc.b nRst, $09, nD2, $06, nRst, $06, nC2, $06
	dc.b nC2, $03, nRst, $03, nD2, $06, nC2, $03
	dc.b nD2, $06, nRst, $09, nD2, $06, nRst, $06
	dc.b nC2, $06, nC2, $06, nC2, $03, nC2, $03
	dc.b nE2, $03, nRst, $09, nC2, $06, nE2, $06
	dc.b nC2, $03, nE2, $03, nC2, $06, nC2, $06
	dc.b nC2, $03, nC2, $03, nE2, $03, nRst, $09
	dc.b nC2, $06, nE2, $06, nC2, $03, nE2, $03
	dc.b nC2, $06, nC2, $06, nC2, $03, nB1, $03
	dc.b nC2, $03, nRst, $09, nC2, $06, nC2, $03
	dc.b nB1, $03, nC2, $03, nE2, $03, nC2, $06
	dc.b nC2, $06, nC2, $03, nB1, $03, nC2, $03
	dc.b nRst, $03, nE2, $03, nB1, $03, nC2, $03
	dc.b nB1, $03, nE2, $03, nB1, $03, nC2, $03
	dc.b nB1, $03, nC2, $03, nB1, $03, nC2, $03
	dc.b nRst, $24, nE2, $03, nB1, $03, nC2, $03
	dc.b nB1, $03, nRst, $27, nC2, $03, nB1, $03
	dc.b nC2, $03, nRst, $45, nE2, $03, nE2, $03
	dc.b nC2, $03, nC2, $03, nE2, $03, nE2, $03
	dc.b nC2, $06, nC2, $06, nC2, $03, nC2, $03
	dc.b nE2, $03, nRst, $09, nC2, $06, nE2, $06
	dc.b nC2, $03, nE2, $03, nC2, $06, nC2, $06
	dc.b nC2, $03, nC2, $03, nE2, $03, nRst, $09
	dc.b nC2, $06, nE2, $06, nC2, $03, nE2, $03
	dc.b nC2, $06, nC2, $06, nC2, $03, nB1, $03
	dc.b nC2, $03, nRst, $09, nC2, $06, nC2, $03
	dc.b nB1, $03, nC2, $03, nE2, $03, nRst, $30
	saVolFM		$03
	sJump		Maniax_Jump1

Maniax_DAC:
	sStop

Maniax_Patches:
