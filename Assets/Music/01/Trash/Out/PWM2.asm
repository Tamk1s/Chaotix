Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $1E
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $06, $8C, $09, dKick, $09, dKick, $06

Maniax_Jump1:
	dc.b dKick, $12, dKick, $12, dSnare, $1E, dKick, $12
	dc.b dSnare, $1E, dKick, $12, dSnare, $1E, dKick, $12
	dc.b dSnare, $1E, dKick, $12, dSnare, $1E, dKick, $12
	dc.b dSnare, $1E, dKick, $12, dSnare, $1E, $8E, $12
	dc.b dSnare, $06, dHiTimpani, $03, dHiTimpani, $03, dHiTimpani, $0C
	dc.b dHiTimpani, $0C, dHiTimpani, $0C, dHiTimpani, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dHiTimpani, $06, dHiTimpani, $06, dMidTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $0C
	dc.b dSnare, $0C, dHiTimpani, $0C, dSnare, $0C, dHiTimpani, $09
	dc.b dHiTimpani, $03, dSnare, $0C, dSnare, $06, dKick, $09
	dc.b dKick, $09, dKick, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dLowTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b $8F, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, $86, $03, $86, $03, dHiTimpani, $06
	dc.b $8F, $06, dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dLowTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dLowTimpani, $03, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $09, dKick, $03, dSnare, $0C, dKick, $06
	dc.b dLowTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dLowTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dLowTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dLowTimpani, $03, $8F, $03
	dc.b dSnare, $06, $8F, $06, dKick, $06, $8F, $03
	dc.b $8F, $03, dSnare, $06, $8F, $06, dKick, $06
	dc.b dLowTimpani, $03, $8F, $03, dSnare, $06, $8F, $06
	dc.b dKick, $06, dHiTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dLowTimpani, $03, dHiTimpani, $03
	dc.b dHiTimpani, $06, dHiTimpani, $03, $86, $03, dHiTimpani, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, dKick, $06, $8F, $06
	dc.b dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03
	dc.b dHiTimpani, $03, dSnare, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $03, dHiTimpani, $03, dSnare, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dLowTimpani, $03, dHiTimpani, $03, dSnare, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $03, dHiTimpani, $03
	dc.b dSnare, $06, dHiTimpani, $06, dHiTimpani, $06, dLowTimpani, $03
	dc.b dHiTimpani, $03, dHiTimpani, $0C, dHiTimpani, $06, dHiTimpani, $03
	dc.b dHiTimpani, $03, dHiTimpani, $06, dKick, $06, dKick, $12
	dc.b dKick, $12, dSnare, $1E, dKick, $12, dSnare, $1E
	dc.b dKick, $12, dSnare, $1E, dKick, $12, dSnare, $0C
	dc.b dKick, $12, dKick, $12, dSnare, $1E, dKick, $12
	dc.b dSnare, $1E, dKick, $12, dSnare, $36, dKick, $06
	sJump		Maniax_Jump1

Maniax_Patches:
