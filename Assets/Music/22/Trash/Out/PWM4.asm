Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $00
	sHeaderDAC	Maniax_DAC

Maniax_DAC:
	dc.b nRst, $18, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F
	dc.b nRst, $41, dHiTimpani, $7F, nRst, $41, dHiTimpani, $7F
	dc.b nRst, $7F, nRst, $22, dMidTimpani, $7F, nRst, $41
	dc.b dMidTimpani, $7F, nRst, $41, dHiTimpani, $7F, nRst, $41
	dc.b dHiTimpani, $7F, nRst, $7F, nRst, $30
	ssTempo		$96
	dc.b nRst, $07
	ssTempo		$4B
	dc.b nRst, $06
	ssTempo		$32
	dc.b nRst, $07
	ssTempo		$26
	dc.b nRst, $07
	ssTempo		$1E
	dc.b nRst, $07
	ssTempo		$19
	dc.b dHiTimpani, $01
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
	sStop

Maniax_Patches:
