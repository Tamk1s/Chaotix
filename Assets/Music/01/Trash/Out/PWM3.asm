Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $1E
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $06, dSnare, $18

Maniax_Jump1:
	dc.b nRst, $7F, nRst, $7F, nRst, $76, $8C, $0C
	dc.b dKick, $0C, $8C, $18, $8C, $18, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18
	dc.b dKick, $06, dKick, $06, dHiTimpani, $0C, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18, dHiTimpani, $18
	dc.b dHiTimpani, $18, dHiTimpani, $0C, dHiTimpani, $18, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $03
	dc.b dHiTimpani, $03, dKick, $06, dHiTimpani, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $0C
	dc.b $90, $06, dHiTimpani, $03, $90, $06, $90, $06
	dc.b $90, $03, $90, $0C, $8C, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $06, $8D, $0C
	dc.b dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $06, $8D, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $06, $8D, $0C, $8F, $06, $8C, $18
	dc.b $8C, $12, $8F, $06, $8C, $18, dHiTimpani, $06
	dc.b $8D, $0C, dHiTimpani, $24, dHiTimpani, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $06, $8D, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $06, $8D, $0C, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $06
	dc.b $8D, $0C, dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $12
	dc.b dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $06, $8D, $0C
	dc.b dHiTimpani, $24, dHiTimpani, $7F, nRst, $7F, nRst, $7F
	dc.b nRst, $09
	sJump		Maniax_Jump1

Maniax_Patches:
