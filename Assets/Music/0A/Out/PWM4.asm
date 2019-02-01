Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$04, $04
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $10

Maniax_Jump1:
	dc.b nRst, $10
	ssTempo		$04
	dc.b $25, $25, $25, $25, $25, $25, $25, $25
	dc.b $25, $25, $25, $25, $25, $25, $25, $25
	dc.b $25, $25, $25, $25, $84, $08, $84, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, $84, $08
	dc.b dHiTimpani, $02, dKick, $02, dKick, $04, dSnare, $08
	dc.b $84, $08, $84, $08, dHiTimpani, $08, $84, $08
	dc.b dSnare, $08, $8E, $08, $8E, $02, dFloorTimpani, $02
	dc.b $84, $02, $84, $02, $84, $08, $84, $08
	dc.b $84, $08, dHiTimpani, $08, $84, $08, $84, $08
	dc.b $84, $08, dHiTimpani, $02, dKick, $02, dKick, $04
	dc.b dSnare, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b $84, $08, dSnare, $08, $8E, $08, $8E, $02
	dc.b dFloorTimpani, $02, $84, $02, $84, $02, $84, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, $84, $08
	dc.b dSnare, $08, dHiTimpani, $08, $84, $04, $84, $04
	dc.b $84, $08, dSnare, $08, dHiTimpani, $08, $84, $04
	dc.b $84, $04, $84, $08, dSnare, $08, dHiTimpani, $08
	dc.b $84, $02, $84, $02, dKick, $02, $84, $02
	dc.b dSnare, $08, dHiTimpani, $08, $84, $08, $84, $04
	dc.b dKick, $04, $84, $08, dSnare, $08, dHiTimpani, $08
	dc.b $84, $04, $84, $04, $84, $08, dSnare, $08
	dc.b dHiTimpani, $08, $84, $04, $84, $04, $84, $08
	dc.b dSnare, $08, dHiTimpani, $08, $84, $02, $84, $02
	dc.b dKick, $02, $84, $02, dSnare, $20
	sJump		Maniax_Jump1

Maniax_Patches:
