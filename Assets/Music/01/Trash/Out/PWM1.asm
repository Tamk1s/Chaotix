Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $1E
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	sPan		spCenter
	dc.b nRst, $03, $93, $02, $93, $01, $92, $09
	dc.b $92, $09, $92, $03, $93, $02, $93, $01

Maniax_Jump1:
	dc.b $92, $06, $8E, $03, dKick, $09, $8E, $0C
	dc.b $8E, $06, $8C, $06, $8E, $06, dKick, $06
	dc.b $8E, $03, dKick, $09, $8E, $0C, $8E, $06
	dc.b $8C, $06, $8E, $06, dKick, $06, $8E, $03
	dc.b dKick, $09, $8E, $0C, $8E, $06, $8C, $06
	dc.b $8E, $06, dKick, $06, $8E, $03, dKick, $09
	dc.b $8E, $0C, $8E, $03, dKick, $03, $8C, $06
	dc.b $8E, $03, dKick, $03, dKick, $06, $8E, $03
	dc.b dKick, $09, $8E, $0C, $8E, $06, $8C, $06
	dc.b $8E, $06, dKick, $06, $8E, $03, dKick, $09
	dc.b $8E, $0C, $8E, $06, $8C, $06, $8E, $06
	dc.b dKick, $06, $8E, $03, dKick, $09, $8E, $0C
	dc.b $8E, $06, $8C, $06, $8E, $06, dKick, $06
	dc.b $8E, $03, dKick, $09, dKick, $03, dKick, $09
	dc.b dHiTimpani, $03, dHiTimpani, $03, dHiTimpani, $03, dHiTimpani, $03
	dc.b dKick, $03, dKick, $03, dMidTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, $8C, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, $8C, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, $8C, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b $85, $03, $85, $03, dKick, $06, $87, $03
	dc.b $87, $03, $86, $03, $86, $03, $86, $03
	dc.b $85, $03, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, $8C, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, $8C, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, $8C, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, $8C, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b $8C, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, $8C, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $03, dKick, $03, $8C, $06, dHiTimpani, $03
	dc.b dKick, $03, $8C, $06, dMidTimpani, $09, dMidTimpani, $09
	dc.b dMidTimpani, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, dLowTimpani, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $86, $06, $87, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, dKick, $03, dKick, $06, dKick, $06
	dc.b dKick, $03, dKick, $03, $86, $06, $86, $03
	dc.b dMidTimpani, $06, dKick, $03, dKick, $03, dMidTimpani, $06
	dc.b $8F, $03, $8F, $03, $8C, $06, $8F, $03
	dc.b $8F, $03, dKick, $03, dLowTimpani, $03, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $03, dLowTimpani, $03
	dc.b $8F, $03, $8F, $03, $8C, $06, $8F, $03
	dc.b $8F, $03, dKick, $06, $8F, $03, $8F, $03
	dc.b $8C, $06, $8F, $03, $8F, $03, dKick, $06
	dc.b $8F, $03, $8F, $03, $8C, $06, $8F, $03
	dc.b $8F, $03, dKick, $06, $8F, $03, $8F, $03
	dc.b $8C, $06, $8F, $03, $8F, $03, dKick, $03
	dc.b dLowTimpani, $03, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dHiTimpani, $06, dHiTimpani, $03, $8F, $03
	dc.b dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03, dHiTimpani, $06
	dc.b dHiTimpani, $03, $8F, $03, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dHiTimpani, $06, dHiTimpani, $03, $8F, $03
	dc.b dHiTimpani, $03, dLowTimpani, $03, $8F, $03, $8F, $03
	dc.b $8C, $06, $8F, $03, $8F, $03, dHiTimpani, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, dKick, $03, $86, $03, $8F, $03
	dc.b $8F, $03, dHiTimpani, $06, dKick, $06, dKick, $06
	dc.b $8F, $03, $8F, $03, $8C, $06, $8F, $03
	dc.b $8F, $03, dKick, $03, dLowTimpani, $03, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $03, dLowTimpani, $03
	dc.b $8F, $03, $8F, $03, $8C, $06, $8F, $03
	dc.b $8F, $03, dKick, $06, $8F, $03, $8F, $03
	dc.b $8C, $06, $8F, $03, $8F, $03, dKick, $06
	dc.b $8F, $03, $8F, $03, $8C, $06, $8F, $03
	dc.b $8F, $03, dKick, $06, $8F, $03, $8F, $03
	dc.b $8C, $06, $8F, $03, $8F, $03, dKick, $03
	dc.b dLowTimpani, $03, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $03, $8F, $03, $8C, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, $8F, $03
	dc.b $8F, $03, $8C, $06, $8F, $03, $8F, $03
	dc.b dKick, $03, dLowTimpani, $03, $8F, $03, $8F, $03
	dc.b $8C, $06, $8F, $03, $8F, $03, dKick, $06
	dc.b $8F, $03, $8F, $03, dKick, $06, dHiTimpani, $03
	dc.b $8F, $03, dKick, $06, $8F, $03, $8F, $03
	dc.b dKick, $06, $8F, $06, dMidTimpani, $06, $8E, $03
	dc.b dKick, $09, $8E, $0C, $8E, $06, $8C, $06
	dc.b $8E, $06, dKick, $06, $8E, $03, dKick, $09
	dc.b $8E, $0C, $8E, $06, $8C, $06, $8E, $06
	dc.b dKick, $06, $8E, $03, dKick, $09, $8E, $0C
	dc.b $8E, $06, $8C, $06, $8E, $06, dKick, $06
	dc.b $8E, $03, dKick, $09, $8E, $0C, $8E, $06
	dc.b $8C, $06, $8E, $06, dMidTimpani, $06, $8E, $03
	dc.b dKick, $09, $8E, $0C, $8E, $06, $8C, $06
	dc.b $8E, $06, dKick, $06, $8E, $03, dKick, $09
	sJump		Maniax_Jump1

Maniax_Patches: