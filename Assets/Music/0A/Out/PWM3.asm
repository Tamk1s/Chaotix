Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$04, $04
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $04, $84, $08, $84, $04

Maniax_Jump1:
	dc.b nRst, $04, $84, $08, $84, $04
	ssTempo		$04
	dc.b nRst, $04, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, $84, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, dHiTimpani, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, dHiTimpani, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, dHiTimpani, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b dSnare, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, $84, $01, $8E, $01, dFloorTimpani, $01
	dc.b $84, $01, dFloorTimpani, $02, $8E, $04, $84, $04
	dc.b dHiTimpani, $02, $84, $02, $84, $04, $84, $02
	dc.b $84, $04, dKick, $02, $84, $02, dKick, $02
	dc.b $84, $02, $84, $02, dSnare, $04, $84, $04
	dc.b $84, $02, dKick, $02, dKick, $02, $84, $02
	dc.b dHiTimpani, $02, dKick, $04, $84, $02, dHiTimpani, $02
	dc.b dKick, $01, dSnare, $01, $8E, $01, $84, $03
	dc.b dFloorTimpani, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b dSnare, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, $84, $01, $8E, $01, dFloorTimpani, $01
	dc.b $84, $01, dFloorTimpani, $02, $8E, $04, $84, $04
	dc.b dHiTimpani, $02, $84, $02, $84, $04, $84, $02
	dc.b $84, $04, dKick, $02, $84, $02, dKick, $02
	dc.b $84, $02, $84, $02, dSnare, $02, $84, $02
	dc.b $84, $04, $84, $02, dKick, $02, dKick, $02
	dc.b $84, $02, dHiTimpani, $02, dKick, $04, $84, $02
	dc.b dHiTimpani, $02, dKick, $01, dSnare, $01, $8E, $01
	dc.b $84, $03, dFloorTimpani, $04, $84, $04, $84, $02
	dc.b $84, $02, $84, $04, $84, $02, $84, $04
	dc.b dKick, $02, $84, $02, dKick, $02, dKick, $04
	dc.b $84, $04, dKick, $04, dHiTimpani, $02, dKick, $02
	dc.b dKick, $04, dSnare, $02, $84, $04, dKick, $02
	dc.b dHiTimpani, $02, $84, $02, dKick, $04, $84, $04
	dc.b dKick, $04, dHiTimpani, $02, dKick, $02, dKick, $04
	dc.b dSnare, $02, $84, $04, dKick, $02, dHiTimpani, $02
	dc.b $84, $02, dKick, $04, $84, $04, dKick, $04
	dc.b dHiTimpani, $02, dKick, $02, dKick, $04, dSnare, $02
	dc.b $84, $04, dKick, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, dFloorTimpani, $04
	dc.b $84, $04, $84, $02, $84, $02, $84, $04
	dc.b $84, $02, $84, $04, dKick, $02, $84, $02
	dc.b dKick, $02, $84, $04, $84, $04, dKick, $04
	dc.b dHiTimpani, $02, dKick, $02, dKick, $04, dSnare, $02
	dc.b $84, $04, dKick, $02, dHiTimpani, $02, $84, $02
	dc.b dKick, $04, $84, $04, dKick, $04, dHiTimpani, $02
	dc.b dKick, $02, dKick, $04, dSnare, $02, $84, $04
	dc.b dKick, $02, dHiTimpani, $02, $84, $02, dKick, $04
	dc.b $84, $04, dKick, $04, dHiTimpani, $02, dKick, $02
	dc.b dKick, $04, dSnare, $02, $84, $04, dKick, $02
	dc.b dHiTimpani, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, dFloorTimpani, $08, $84, $08, $84, $08
	dc.b $84, $08
	sJump		Maniax_Jump1

Maniax_Patches:
