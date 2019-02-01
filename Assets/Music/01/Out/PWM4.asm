Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $1E
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $1E

Maniax_Jump1:
	dc.b nRst, $7F, $7F, $7F, $0F, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $30, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $24, dKick
	dc.b $24, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $30, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $12, $90, $09, dMidTimpani, $06, dMidTimpani
	dc.b $03, dMidTimpani, $0C, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $48, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $18, dKick, $18, dKick
	dc.b $18, dKick, $18, dKick, $7F, nRst, $7F, nRst
	dc.b $7F, nRst, $3F
	sJump		Maniax_Jump1

Maniax_Patches:
