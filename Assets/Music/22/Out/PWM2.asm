Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $00
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $18, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $0C, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $18, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b $86, $03, $86, $03, $86, $06, $87, $03
	dc.b $87, $03, $87, $06, $94, $03, $94, $03
	dc.b $95, $03, $95, $09, dKick, $12, dFloorTimpani, $06
	dc.b dSnare, $06, dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $0C
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dFloorTimpani, $12
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dFloorTimpani, $12
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dKick, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dSnare, $06
	dc.b dKick, $06, dKick, $0C, dSnare, $06, dKick, $12
	dc.b dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $0C
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $06, dHiTimpani, $18
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C
	dc.b dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $0C, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, $86, $03, $86, $03
	dc.b $86, $06, $87, $03, $87, $03, $87, $06
	dc.b $94, $03, $94, $03, $95, $03, $95, $09
	dc.b dKick, $12, dFloorTimpani, $06, dSnare, $06, dFloorTimpani, $0C
	dc.b dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dFloorTimpani, $12, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dFloorTimpani, $12, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dKick, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dSnare, $06, dKick, $06, dKick, $0C
	dc.b dSnare, $06, dKick, $0C, dFloorTimpani, $06, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0E
	ssTempo		$96
	dc.b nRst, $02, dFloorTimpani, $05
	ssTempo		$4B
	dc.b nRst, $03, dFloorTimpani, $03
	ssTempo		$32
	dc.b nRst, $07
	ssTempo		$26
	dc.b nRst, $06, dFloorTimpani, $01
	ssTempo		$1E
	dc.b nRst, $07
	ssTempo		$19
	dc.b dFloorTimpani, $01
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
	dc.b dFloorTimpani, $48, dFloorTimpani, $03
	sStop

Maniax_Patches:
