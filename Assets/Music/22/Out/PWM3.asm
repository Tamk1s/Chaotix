Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $00
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $12
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12, dMidTimpani, $0C
	dc.b dHiTimpani, $0C, dHiTimpani, $1E, dHiTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $12, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12
	dc.b dHiTimpani, $06, dMidTimpani, $30, dFloorTimpani, $60, dHiTimpani, $30
	dc.b dHiTimpani, $24, dHiTimpani, $0C, dFloorTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $0C, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $0C, dMidTimpani, $18, dFloorTimpani, $06, dFloorTimpani, $12
	dc.b dFloorTimpani, $12, dSnare, $0C, dSnare, $0C, dSnare, $0C
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $12
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $12
	dc.b dHiTimpani, $06, dHiTimpani, $12, dMidTimpani, $0C, dHiTimpani, $0C
	dc.b dHiTimpani, $1E, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $12
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $06
	dc.b dMidTimpani, $30, dFloorTimpani, $60, dHiTimpani, $30, dHiTimpani, $24
	dc.b dHiTimpani, $0C, dFloorTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $0C
	dc.b dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $0C
	dc.b dMidTimpani, $18, dFloorTimpani, $06, dFloorTimpani, $12, dFloorTimpani, $0C
	dc.b dHiTimpani, $12, dHiTimpani, $18, dHiTimpani, $08, dHiTimpani, $06
	ssTempo		$96
	dc.b nRst, $02, dHiTimpani, $05
	ssTempo		$4B
	dc.b nRst, $03, dHiTimpani, $03
	ssTempo		$32
	dc.b nRst, $05, dHiTimpani, $02
	ssTempo		$26
	dc.b nRst, $06, dHiTimpani, $01
	ssTempo		$1E
	dc.b nRst, $07
	ssTempo		$19
	dc.b dSnare, $01
	ssTempo		$11
	dc.b nRst, $02
	ssTempo		$0C
	dc.b nRst, $01
	ssTempo		$09
	dc.b nRst, $02
	ssTempo		$08
	dc.b nRst, $01
	ssTempo		$07
	dc.b nRst, $02
	ssTempo		$06
	dc.b nRst, $02
	ssTempo		$05
	dc.b nRst, $03
	ssTempo		$04
	dc.b nRst, $03
	ssTempo		$03
	dc.b nRst, $07
	ssTempo		$05
	dc.b dMidTimpani, $48, dMidTimpani, $03
	sStop

Maniax_Patches:
