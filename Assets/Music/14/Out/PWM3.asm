Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$02, $00
	sHeaderTempo	$02, $08
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $0B

Maniax_FM1:
	sPatFM		$00
	dc.b nRst, $06, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $21, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $09, nAb2, $03, nRst, $09, nAb2, $03
	dc.b nRst, $33

Maniax_Jump1:
	dc.b nCs3, $03, nRst, $7F, $3E, nCs3, $03, nRst
	dc.b $7F, $3E, nCs3, $03, nRst, $03, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $03, nCs3, $03
	dc.b nRst, $03, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $33, nCs3, $03
	dc.b nRst, $03, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $03, nCs3, $03, nRst, $03, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $03, nB3, $03, nRst, $09, nB3, $03
	dc.b nRst, $09, nB3, $03, nRst, $03, nB3, $03
	dc.b nRst, $27
	saVolFM		$FD
	dc.b nE2, $02
	saVolFM		$3B
	dc.b nE2, $01
	saVolFM		$C5
	dc.b nE2, $02
	saVolFM		$3B
	dc.b nE2, $01
	saVolFM		$C5
	dc.b nE2, $02
	saVolFM		$3B
	dc.b nE2, $01
	saVolFM		$C5
	dc.b nE2, $02
	saVolFM		$3B
	dc.b nE2, $01
	saVolFM		$C8
	dc.b nCs3, $03, nRst, $7F, $3E, nCs3, $03, nRst
	dc.b $7F, $3E, nCs3, $03, nRst, $7F, $3E, nCs3
	dc.b $03, nRst, $7F, $3E, nCs3, $03, nRst, $7F
	dc.b $3E, nCs3, $0C, nRst, $7F, $35, nCs3, $03
	dc.b nRst, $7F, $3E
	sJump		Maniax_Jump1

Maniax_DAC:
	sStop

Maniax_Patches:
