Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $00
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $18, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $06, dKick, $06, dKick, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $0C, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $06, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dSnare, $03, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dKick, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b $85, $03, $85, $03, $85, $06, $86, $03
	dc.b $86, $03, $86, $06, $87, $03, $87, $03
	dc.b $94, $03, $94, $03, $95, $06, dMidTimpani, $0C
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dHiTimpani, $0C, dKick, $0C, dHiTimpani, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dHiTimpani, $0C, dKick, $0C
	dc.b dHiTimpani, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $01, dSnare, $0B, dMidTimpani, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b dSnare, $06, dKick, $0C, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dMidTimpani, $0C, dHiTimpani, $06, dKick, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $0C, dKick, $06, dSnare, $06
	dc.b dKick, $06, dSnare, $06, dSnare, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, dKick, $06, dSnare, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, $85, $03, $85, $03, $85, $06
	dc.b $86, $03, $86, $03, $86, $06, $87, $03
	dc.b $87, $03, $94, $03, $94, $03, $95, $06
	dc.b dMidTimpani, $0C, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dKick, $06, dSnare, $06
	dc.b dKick, $06, dHiTimpani, $0C, dKick, $0C, dHiTimpani, $06
	dc.b dKick, $06, dSnare, $06, dKick, $06, dHiTimpani, $0C
	dc.b dKick, $0C, dHiTimpani, $06, dKick, $06, dSnare, $06
	dc.b dKick, $06, dSnare, $01, dSnare, $0B, dMidTimpani, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dKick, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dKick, $06, dSnare, $06, dKick, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dMidTimpani, $0C, dKick, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $08, dSnare, $01, dSnare, $05
	ssTempo		$96
	dc.b nRst, $02, dKick, $05
	ssTempo		$4B
	dc.b nRst, $03, dKick, $03
	ssTempo		$32
	dc.b nRst, $05, dSnare, $01, dSnare, $01
	ssTempo		$26
	dc.b nRst, $06, dKick, $01
	ssTempo		$1E
	dc.b nRst, $07
	ssTempo		$19
	dc.b dKick, $01
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
	dc.b dKick, $48, dKick, $03
	sStop

Maniax_Patches:
