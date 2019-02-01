Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $1E
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $00, $13
	sHeaderFM	Maniax_FM2, $00, $17
	sHeaderFM	Maniax_FM3, $00, $1A
	sHeaderFM	Maniax_FM4, $00, $14
	sHeaderFM	Maniax_FM5, $00, $18
	sHeaderFM	Maniax_FM6, $00, $12
	sHeaderPSG	Maniax_PSG1, $00, $0A, $00, v00
	sHeaderPSG	Maniax_PSG2, $00, $00, $00, v00
	sHeaderPSG	Maniax_PSG3, $00, $09, $00, v00

Maniax_FM1:
	sPan		spCenter
	sPatFM		$01
	dc.b nRst, $06, nD4, $06, nRst, $03, nC4, $06
	dc.b nRst, $03, nD4, $03, nRst, $03

Maniax_Jump1:
	dc.b nB3, $12, nA3, $12, nB3, $12, nA3, $12
	dc.b nB3, $0C, nA3, $0C, nC4, $12, nB3, $12
	dc.b nA3, $3C, nA3, $12, nB3, $12, nC4, $0C
	dc.b nA3, $12, nB3, $12, nC4, $0C, nC4, $12
	dc.b nB3, $1E, nRst, $12
	sPatFM		$00
	dc.b $1E, nC4, $09, nC4, $0C, nB3, $06, nB3
	dc.b $09, nB3, $0C, nB3, $09, nB3, $03, nB3
	dc.b $09, nA3, $06, nA3, $09, nA3, $0C, nC4
	dc.b $09, nC4, $03, nC4, $09, nB3, $06, nB3
	dc.b $09, nB3, $0C, nB3, $06, nB3, $06, nB3
	dc.b $03, nB3, $06, nA3, $06, nA3, $09, nA3
	dc.b $06, nA3, $03, nA3, $03, nC4, $0F, nC4
	dc.b $06, nB3, $09, nB3, $03, nB3, $03, nB3
	dc.b $0C, nB3, $09, nB3, $03, nB3, $03, nB3
	dc.b $06, nA3, $06, nA3, $09, nA3, $0C, nC4
	dc.b $09, nC4, $06, nC4, $06, nD4, $0C, nB3
	dc.b $03, nB3, $0C, nB3, $09, nB3, $03, nB3
	dc.b $06, nB3, $0C, nB3, $06, nE4, $06, nEb4
	dc.b $06, nC4, $09, nC4, $0C, nB3, $06, nB3
	dc.b $09, nB3, $0C, nB3, $09, nB3, $03, nB3
	dc.b $09, nA3, $06, nA3, $09, nA3, $0C, nC4
	dc.b $09, nC4, $03, nC4, $09, nB3, $06, nB3
	dc.b $09, nB3, $0C, nB3, $06, nB3, $06, nB3
	dc.b $03, nB3, $06, nA3, $06, nA3, $09, nA3
	dc.b $06, nA3, $03, nA3, $03, nC4, $0F, nC4
	dc.b $06, nB3, $09, nB3, $03, nB3, $03, nB3
	dc.b $0C, nB3, $09, nB3, $03, nB3, $03, nB3
	dc.b $06, nA3, $06, nA3, $09, nA3, $0C, nC4
	dc.b $09, nC4, $03, nC4, $03, nC4, $06, nB3
	dc.b $0C, nB3, $03, nB3, $0C, nC4, $0C, nC4
	dc.b $06, nC4, $0C, nE4, $09, nEb4, $09, nD4
	dc.b $0C, nD4, $09, nD4, $09, nD4, $09, nD4
	dc.b $09, nE4, $06, nE4, $09, nE4, $06, nE4
	dc.b $06, nE4, $06, nE4, $09, nE4, $03, nE4
	dc.b $03, nE4, $09, nE4, $06, nE4, $06, nE4
	dc.b $09, nE4, $06, nE4, $03, nE4, $09, nFs4
	dc.b $18, nFs4, $18, nAb4, $09, nAb4, $06, nAb4
	dc.b $06, nAb4, $09, nAb4, $03, nAb4, $0F, nG4
	dc.b $09, nG4, $06, nG4, $06, nG4, $1B, nG4
	dc.b $06, nG4, $03, nG4, $06, nG4, $06, nG4
	dc.b $06, nG4, $09, nG4, $06, nG4, $06, nF4
	dc.b $06, nF4, $03, nF4, $06, nF4, $06, nF4
	dc.b $03, nF4, $0C, nE4, $0C, nC4, $06, nC4
	dc.b $03, nC4, $06, nC4, $06, nB3, $06, nB3
	dc.b $06, nB3, $03, nB3, $06, nB3, $06, nB3
	dc.b $06, nB3, $03, nB3, $06, nB3, $06, nA3
	dc.b $06, nA3, $06, nA3, $03, nA3, $06, nA3
	dc.b $06, nC4, $06, nC4, $03, nC4, $06, nC4
	dc.b $06, nB3, $06, nB3, $06, nB3, $03, nB3
	dc.b $06, nB3, $06, nB3, $06, nB3, $03, nB3
	dc.b $06, nB3, $06, nA3, $06, nA3, $06, nA3
	dc.b $03, nA3, $06, nA3, $06, nC4, $06, nC4
	dc.b $03, nC4, $06, nC4, $06, nB3, $06, nB3
	dc.b $06, nB3, $03, nB3, $06, nB3, $06, nB3
	dc.b $06, nB3, $03, nB3, $06, nB3, $06, nA3
	dc.b $06, nA3, $06, nA3, $03, nA3, $06, nA3
	dc.b $06, nC4, $06, nC4, $03, nC4, $06, nC4
	dc.b $06, nB3, $06, nB3, $06, nB3, $03, nB3
	dc.b $06, nB3, $06, nC4, $0C, nC4, $06, nC4
	dc.b $0C, nC4, $12, nC4, $06, nC4, $03, nC4
	dc.b $06, nC4, $06, nB3, $06, nB3, $06, nB3
	dc.b $03, nB3, $06, nB3, $06, nB3, $06, nB3
	dc.b $03, nB3, $06, nB3, $06, nA3, $06, nA3
	dc.b $06, nA3, $03, nA3, $06, nA3, $06, nC4
	dc.b $06, nC4, $03, nC4, $06, nC4, $06, nB3
	dc.b $06, nB3, $06, nB3, $03, nB3, $06, nB3
	dc.b $06, nB3, $06, nB3, $03, nB3, $06, nB3
	dc.b $06, nA3, $06, nA3, $06, nA3, $03, nA3
	dc.b $06, nA3, $06, nC4, $06, nC4, $03, nC4
	dc.b $06, nC4, $06, nB3, $06, nB3, $06, nB3
	dc.b $03, nB3, $06, nB3, $06, nB3, $06, nB3
	dc.b $03, nB3, $06, nB3, $06, nA3, $06, nA3
	dc.b $06, nA3, $03, nA3, $06, nA3, $06, nC4
	dc.b $06, nC4, $03, nC4, $06, nC4, $06, nB3
	dc.b $06, nB3, $06, nB3, $03, nB3, $06, nB3
	dc.b $06, nB3, $12, nB3, $0C, nB3, $12, nBb3
	dc.b $60, nC4, $60, nC4, $60, nC4, $12, nC4
	dc.b $4E
	sJump		Maniax_Jump1

Maniax_FM2:
	sPan		spCenter
	sPatFM		$03
	dc.b nRst, $06, nB4, $03, nRst, $06, nA4, $03
	dc.b nRst, $06, nB4, $03, nRst, $03

Maniax_Jump2:
	dc.b nRst, $7F, $7F, $4C
	sPatFM		$02
	dc.b $06, nG3, $03, nA3, $03, nB3, $03, nC4
	dc.b $03, nA3, $03, nB3, $03, nC4, $03, nD4
	dc.b $03, nB3, $03, nC4, $03, nD4, $03, nE4
	dc.b $03, nC4, $03, nD4, $03, nE4, $03, nF4
	dc.b $03, nG4, $06, nRst, $5C, $5C, $5C, $5C
	dc.b $5C, $5C, $5C, $5C, $5C
	sPatFM		$02
	dc.b $7F, $7F, $0A
	sPatFM		$03
	dc.b $06, nG4, $03, nRst, $03, nF4, $03, nE4
	dc.b $03, nRst, $03, nF4, $03, nRst, $03, nG4
	dc.b $03, nG4, $03, nRst, $15
	saVolFM		$04
	dc.b nE4, $06, nD4, $03, nC4, $06, nE4, $06
	dc.b nD4, $06, nRst, $06, nG3, $03, nB3, $06
	dc.b nC4, $06, nD4, $06, nC4, $03, nB3, $06
	dc.b nD4, $06, nC4, $06, nRst, $06, nG3, $03
	dc.b nC4, $06, nD4, $06, nE4, $06, nD4, $03
	dc.b nC4, $06, nE4, $06, nD4, $06, nRst, $06
	dc.b nG3, $03, nB3, $06, nC4, $06, nD4, $06
	dc.b nC4, $03, nB3, $06, nD4, $06, nC4, $06
	dc.b nRst, $06, nG3, $03, nC4, $06, nD4, $06
	dc.b nE4, $06, nD4, $03, nC4, $06, nE4, $06
	dc.b nD4, $06, nRst, $06, nG3, $03, nB3, $06
	dc.b nC4, $06, nD4, $06, nC4, $03, nB3, $06
	dc.b nD4, $06, nC4, $06, nRst, $06, nG3, $03
	dc.b nC4, $06, nD4, $06, nE4, $06, nD4, $03
	dc.b nC4, $06, nE4, $06, nD4, $06, nRst, $06
	dc.b nG3, $03, nB3, $06, nD4, $06, nC4, $0C
	dc.b nC4, $06, nC4, $0C, nC4, $12, nE4, $06
	dc.b nD4, $03, nC4, $06, nE4, $06, nD4, $06
	dc.b nRst, $06, nG3, $03, nB3, $06, nC4, $06
	dc.b nD4, $06, nC4, $03, nB3, $06, nD4, $06
	dc.b nC4, $06, nRst, $06, nG3, $03, nC4, $06
	dc.b nD4, $06, nE4, $06, nD4, $03, nC4, $06
	dc.b nE4, $06, nD4, $06, nRst, $06, nG3, $03
	dc.b nB3, $06, nC4, $06, nD4, $06, nC4, $03
	dc.b nB3, $06, nD4, $06, nC4, $06, nRst, $06
	dc.b nG3, $03, nC4, $06, nD4, $06, nE4, $06
	dc.b nD4, $03, nC4, $06, nE4, $06, nD4, $06
	dc.b nRst, $06, nG3, $03, nB3, $06, nC4, $06
	dc.b nD4, $06, nC4, $03, nB3, $06, nD4, $06
	dc.b nC4, $06, nRst, $06, nG3, $03, nC4, $06
	dc.b nD4, $06, nE4, $06, nD4, $03, nC4, $06
	dc.b nE4, $06, nD4, $06, nRst, $06, nG3, $03
	dc.b nB3, $06, nC4, $06, nD4, $09
	ssDetune	$00
	dc.b nRst, $7F, $7F, $7F, $2A
	saVolFM		$FC
	sJump		Maniax_Jump2

Maniax_FM3:
	sPan		spLeft
	sPatFM		$05
	dc.b nRst, $1E

Maniax_Jump3:
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	saVolFM		$FC
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $02, nRst, $04, nG6, $02, nRst, $04
	saVolFM		$FA
	dc.b nG5, $03, nA5, $03, nB5, $03, nC6, $03
	dc.b nA5, $03, nB5, $03, nC6, $03, nD6, $03
	dc.b nB5, $03, nC6, $03, nD6, $03, nE6, $03
	dc.b nC6, $03, nD6, $03, nE6, $03, nF6, $03
	dc.b nG6, $06, nRst, $7F, $7F, $5E
	sPatFM		$04
	dc.b $1E
	saVolFM		$02
	dc.b nB4, $02, nC5, $39, nCs5, $01, nD5, $0B
	dc.b nC5, $01, nB4, $0B, nA4, $01, nG4, $0B
	dc.b nRst, $01, nC5, $3C, nB4, $0B, nA4, $01
	dc.b nG4, $0B, nFs4, $01, nE4, $0B, nG4, $01
	dc.b nA4, $39, nB4, $02, nC5, $01, nD5, $0B
	dc.b nC5, $01, nB4, $0B, nA4, $01, nG4, $0B
	dc.b nFs4, $01, nF4, $2F, nFs4, $01, nG4, $1E
	dc.b nG4, $09, nFs4, $09, nF4, $09, nG4, $02
	saVolFM		$FF
	dc.b nA4, $01
	saVolFM		$FF
	dc.b nBb4, $03, nRst, $03, nC5, $03, nRst, $03
	dc.b nD5, $06, nE5, $03, nF5, $03, nRst, $03
	dc.b nF5, $02, nG5, $07, nRst, $05, nAb5, $01
	dc.b nA5, $06, nE5, $06, nA5, $03, nAb5, $06
	dc.b nE5, $05, nEb5, $01, nE5, $05, nEb5, $01
	dc.b nE5, $05, nF5, $01, nG5, $0B, nRst, $01
	dc.b nC5, $03, nRst, $03, nG5, $03, nRst, $03
	dc.b nE5, $09, nG5, $03, nRst, $03, nE5, $03
	dc.b nG5, $03, nRst, $03, nC5, $02, nD5, $01
	dc.b nE5, $03, nEb5, $03, nD5, $03, nCs5, $03
	dc.b nEb5, $03, nD5, $03, nCs5, $03, nC5, $03
	dc.b nCs5, $03, nD5, $03, nE5, $03, nD5, $03
	dc.b nF5, $03, nG5, $03, nAb5, $03, nB5, $03
	dc.b nC6, $06, nRst, $03, nBb5, $03, nRst, $03
	dc.b nC6, $03, nRst, $03, nF5, $0C, nC5, $02
	dc.b nRst, $01, nEb5, $03, nF5, $03, nG5, $03
	dc.b nBb5, $03, nB5, $02, nC6, $07, nG5, $03
	dc.b nRst, $03, nC6, $03, nRst, $03, nB5, $06
	dc.b nFs5, $02, nG5, $01, nFs5, $03, nG5, $03
	dc.b nAb5, $03, nG5, $03, nAb5, $03, nA5, $03
	dc.b nBb5, $08, nFs5, $01, nRst, $06, nBb5, $03
	dc.b nRst, $03, nG5, $06, nEb5, $08, nRst, $01
	dc.b nF5, $03, nRst, $03, nFs5, $03, nRst, $03
	dc.b nG5, $03, nRst, $03, nF5, $03, nE5, $03
	dc.b nRst, $03, nF5, $03, nRst, $03, nG5, $03
	dc.b nG5, $03, nRst, $7F, $7F, $7F, $18
	saVolFM		$02
	dc.b nB4, $02, nC5, $39, nCs5, $01, nD5, $0B
	dc.b nC5, $01, nB4, $0B, nA4, $01, nG4, $0B
	dc.b nA4, $01, nC5, $3C, nB4, $0B, nA4, $01
	dc.b nG4, $0B, nFs4, $01, nE4, $0B, nRst, $01
	dc.b nA4, $39, nB4, $02, nC5, $01, nD5, $0B
	dc.b nC5, $01, nB4, $0B, nA4, $01, nG4, $0B
	dc.b nFs4, $01, nF4, $2F, nRst, $01, nG4, $1E
	dc.b nRst, $7F, $7F, $46
	sPatFM		$05
	dc.b $12
	saVolFM		$FE
	dc.b nG5, $06, nE6, $09, nRst, $03, nE6, $06
	dc.b nF6, $06, nE6, $06, nG6, $06, nE6, $05
	dc.b nRst, $01, nE6, $06, nC6, $06
	saVolFM		$0A
	sJump		Maniax_Jump3

Maniax_FM4:
	sPan		spCenter
	sPatFM		$06
	dc.b nRst, $1E

Maniax_Jump4:
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b nA3, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $04
	dc.b nC4, $02, nRst, $04, nA3, $02, nRst, $01
	dc.b nG3, $02, nRst, $04, nC4, $02, nRst, $01
	dc.b nD4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b nA3, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $04
	dc.b nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b nC4, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $01
	dc.b nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b nD4, $02, nRst, $01, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $04
	dc.b nC4, $02, nRst, $04, nA3, $02, nRst, $01
	dc.b nG3, $02, nRst, $04, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b nA3, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b nC4, $02, nRst, $01, nD4, $02, nRst, $01
	dc.b nE4, $02, nRst, $01, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $07, nC4, $02, nRst, $04
	dc.b nC4, $02, nRst, $04, nA3, $02, nRst, $01
	dc.b nG3, $02, nRst, $04, nC4, $02, nRst, $07
	dc.b nC4, $02, nRst, $04, nC4, $02, nRst, $01
	dc.b nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b nC4, $02, nRst, $01, nC4, $02, nRst, $04
	dc.b nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b nC4, $02, nRst, $01, nD4, $02
	ssDetune	$00
	dc.b nRst, $60, $60, $60, $60, $60, $60, $60
	dc.b $60, $60, $60, $60, $60, $60, $60, $60
	dc.b $60, $60, $60, $60, $60, $60, $60, $60
	dc.b $60, $01
	sJump		Maniax_Jump4

Maniax_FM5:
	sPan		spCenter
	sPatFM		$07
	dc.b nRst, $1E

Maniax_Jump5:
	dc.b nB3, $12, nA3, $12, nB3, $12, nA3, $12
	dc.b nB3, $0C, nA3, $0C, nC4, $12, nB3, $12
	dc.b nA3, $3C, nA3, $12, nC4, $12, nC4, $0C
	dc.b nA3, $12, nB3, $12, nC4, $0C, nC4, $12
	dc.b nB3, $4E, nRst, $60, $60, $60, $60, $60
	dc.b $60, $60, $60, nD4, $30, nE4, $30, nE4
	dc.b $30, nFs4, $30, nF4, $30, nEb4, $30, nEb4
	dc.b $30, nF4, $06, nF4, $03, nF4, $06, nF4
	dc.b $06, nF4, $03, nF4, $06
	ssDetune	$00
	dc.b nRst, $75, $75, $75, $75, $75, $75, $75
	dc.b $75, $75, $75
	sJump		Maniax_Jump5

Maniax_FM6:
	sPan		spCenter
	sPatFM		$08
	dc.b nRst, $1E

Maniax_Jump6:
	dc.b nRst, $7F, $1D, nA3, $03, nRst, $03, nG3
	dc.b $03, nRst, $03, nC4, $03, nRst, $03, nB3
	dc.b $03, nC4, $03, nRst, $06, nG3, $03, nA3
	dc.b $03, nC4, $30, nRst, $30, nC4, $06, nRst
	dc.b $0C, nD4, $4E, nRst, $4E, nG3, $03, nA3
	dc.b $03, nC4, $06, nA3, $02, nRst, $52, nG3
	dc.b $03, nA3, $03, nC4, $02, nRst, $01, nC4
	dc.b $02, nRst, $01, nA3, $03, nG3, $03, nRst
	dc.b $48, nC4, $03, nRst, $03, nA3, $03, nRst
	dc.b $03, nD4, $03, nE4, $03, nRst, $03, nE4
	dc.b $03, nRst, $36, nE4, $03, nRst, $09, nC4
	dc.b $03, nRst, $09, nG3, $02, nRst, $01, nG3
	dc.b $02, nRst, $01, nB3, $03, nC4, $03, nFs3
	dc.b $03, nG3, $03, nRst, $4E, nG3, $03, nA3
	dc.b $03, nC4, $06, nA3, $02, nRst, $52, nG3
	dc.b $02, nRst, $01, nG3, $02, nRst, $01, nC4
	dc.b $02, nRst, $01, nC4, $02, nRst, $01, nD4
	dc.b $03, nE4, $03, nRst, $47, nD5, $01, nRst
	dc.b $03, nD4, $02, nRst, $01, nA3, $03, nC4
	dc.b $03, nRst, $03, nC4, $03, nA3, $06, nRst
	dc.b $36, nG3, $02, nRst, $01, nG3, $02, nRst
	dc.b $01, nC4, $02, nRst, $01, nC4, $02, nRst
	dc.b $01, nG3, $02, nRst, $01, nG3, $02, nRst
	dc.b $01, nC4, $03, nRst, $03, nC4, $03, nRst
	dc.b $06, nB3, $03, nRst, $06, nBb3, $06, nRst
	dc.b $7F, $1A, nD5, $03, nRst, $03, nD5, $03
	dc.b nRst, $27, nF4, $03, nRst, $03, nCs4, $03
	dc.b nRst, $27, nG4, $03, nRst, $03, nG4, $03
	dc.b nRst, $27, nG4, $03, nRst, $03, nEb4, $03
	dc.b nRst, $18, nG4, $03, nRst, $03, nF4, $03
	dc.b nE4, $03, nRst, $03, nF4, $03, nRst, $03
	dc.b nG4, $03, nG4, $03, nRst, $63, nG3, $03
	dc.b nA3, $03, nC4, $06, nA3, $02, nRst, $52
	dc.b nG3, $03, nA3, $03, nC4, $02, nRst, $01
	dc.b nC4, $02, nRst, $01, nA3, $03, nG3, $03
	dc.b nRst, $45, nA3, $02, nC5, $01, nRst, $03
	dc.b nC4, $03, nG3, $03, nC4, $03, nRst, $03
	dc.b nC4, $03, nA3, $06, nRst, $36, nC4, $03
	dc.b nRst, $03, nD4, $03, nRst, $03, nE4, $03
	dc.b nRst, $03, nF4, $03, nRst, $03, nE4, $03
	dc.b nD4, $03, nRst, $03, nE4, $03, nRst, $03
	dc.b nC4, $33, nRst, $1E, nG3, $03, nA3, $03
	dc.b nC4, $06, nA3, $02, nRst, $52, nG3, $02
	dc.b nRst, $01, nG3, $02, nRst, $01, nC4, $02
	dc.b nRst, $01, nC4, $02, nRst, $01, nD4, $03
	dc.b nE4, $03, nRst, $47, nD5, $01, nRst, $03
	dc.b nC5, $02, nRst, $01, nG3, $03, nC4, $03
	dc.b nRst, $03, nG3, $03, nA3, $06, nRst, $2A
	dc.b nE4, $05, nRst, $07, nC4, $05, nRst, $07
	dc.b nA3, $05, nRst, $07, nG3, $0C, nA3, $03
	dc.b nRst, $03, nBb3, $0F, nRst, $03, nA3, $0F
	dc.b nRst, $03, nG3, $0F, nRst, $03, nF3, $0F
	dc.b nRst, $03, nE4, $03, nRst, $09, nD4, $03
	dc.b nRst, $09, nA3, $0F, nRst, $03, nB3, $0F
	dc.b nRst, $03, nC4, $0F, nRst, $03, nD4, $0F
	dc.b nRst, $03, nE4, $03, nRst, $09, nA4, $03
	dc.b nRst, $09, nAb4, $0F, nRst, $03, nG4, $0F
	dc.b nRst, $03, nF4, $0F, nRst, $03, nEb4, $0F
	dc.b nRst, $03, nD4, $03, nRst, $09, nC4, $03
	dc.b nRst, $0F, nG3, $06, nA3, $06, nG3, $0C
	dc.b nRst, $06, nG3, $06, nE4, $09, nRst, $03
	dc.b nE4, $06, nF4, $06, nE4, $06, nG4, $06
	dc.b nE4, $03, nRst, $03, nE4, $06, nC4, $06
	sJump		Maniax_Jump6

Maniax_PSG1:
	dc.b nRst, $1E

Maniax_Jump7:
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01
	saVolPSG	$01
	dc.b nD3, $02, nRst, $01, nE3, $02, nRst, $01
	dc.b nD3, $02, nRst, $01, nE3, $02, nRst, $01
	saVolPSG	$01
	dc.b nD3, $02, nRst, $01, nE3, $02, nRst, $01
	saVolPSG	$01
	dc.b nD3, $02, nRst, $01, nE3, $02, nRst, $01
	dc.b nD3, $02, nRst, $01
	saVolPSG	$01
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	saVolPSG	$01
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nRst, $02, nRst, $01
	dc.b nRst, $02, nRst, $01, nRst, $02, nRst, $01
	dc.b nRst, $02, nRst, $01, nRst, $02, nRst, $01
	dc.b nRst, $02, nRst, $01, nRst, $02, nRst, $60
	dc.b $60, $60, $60, $60, $60, $60, $60, $60
	dc.b $60, $60, $60, $60, $60, $60, $60, $60
	dc.b $60, $60, $60, $60, $60, $60, $01
	saVolPSG	$F7
	dc.b nD2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nD3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nD2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nD3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nD2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nD3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nD2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nD3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nA2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b nE2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nE2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nE2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nE2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nE3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nB2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nEb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nEb3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nEb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nEb3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nEb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nEb3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nEb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nEb3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b nAb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b nE3, $03, nRst, $03, nE3, $03
	ssDetune	$00
	dc.b nRst, $03
	saVolPSG	$04
	sJump		Maniax_Jump7

Maniax_PSG2:
	ssMod68k	$00, $02, $00, $02
	dc.b nRst, $1E

Maniax_Jump8:
	dc.b nRst, $7F, $7F, $7F, $1B, nC3, $06, nA2
	dc.b $0C, nC3, $06, nB2, $0C, nC3, $06, nB2
	dc.b $0C, nG2, $24, nA2, $06, nE3, $06, nD3
	dc.b $0C, nC3, $06, nB2, $0C, nC3, $06, nB2
	dc.b $0C, nG2, $2A, nC3, $06, nA2, $0C, nC3
	dc.b $06, nB2, $0C, nC3, $06, nB2, $0C, nG2
	dc.b $24, nA2, $06, nA2, $06, nF2, $0C, nA2
	dc.b $06, nG2, $0C, nA2, $06, nG2, $0C, nC2
	dc.b $2A, nC3, $06, nA2, $0C, nC3, $06, nB2
	dc.b $0C, nC3, $06, nB2, $0C, nG2, $24, nA2
	dc.b $06, nA2, $06, nG2, $0C, nC3, $06, nB2
	dc.b $0C, nC3, $06, nB2, $0C, nG2, $2A, nC3
	dc.b $06, nA2, $0C, nC3, $06, nB2, $0C, nC3
	dc.b $06, nB2, $0C, nG2, $24, nA2, $06, nA2
	dc.b $06, nF2, $0C, nA2, $06, nG2, $0C, nA2
	dc.b $06, nG2, $0C, nC2, $09, nE2, $09, nD2
	dc.b $0C, nRst, $7F, $7F, $7F, $0F, nC3, $06
	dc.b nA2, $0C, nC3, $06, nB2, $0C, nC3, $06
	dc.b nB2, $0C, nG2, $24, nA2, $06, nE3, $06
	dc.b nD3, $0C, nC3, $06, nB2, $0C, nC3, $06
	dc.b nB2, $0C, nG2, $2A, nC3, $06, nA2, $0C
	dc.b nC3, $06, nB2, $0C, nC3, $06, nB2, $0C
	dc.b nG2, $24, nA2, $06, nA2, $06, nF2, $0C
	dc.b nA2, $06, nG2, $0C, nA2, $06, nG2, $0C
	dc.b nC2, $2A, nC3, $06, nA2, $0C, nC3, $06
	dc.b nB2, $0C, nC3, $06, nB2, $0C, nG2, $24
	dc.b nA2, $06, nA2, $06, nG2, $0C, nC3, $06
	dc.b nB2, $0C, nC3, $06, nB2, $0C, nG2, $2A
	dc.b nC3, $06, nA2, $0C, nC3, $06, nB2, $0C
	dc.b nC3, $06, nB2, $0C, nG2, $24, nA2, $06
	dc.b nA2, $06, nF2, $0C, nA2, $06, nG2, $0C
	dc.b nA2, $06, nG2, $0C, nC2, $0C, nE2, $06
	dc.b nD2, $47, nRst, $07, nC2, $06, nD2, $06
	dc.b nE2, $4E, nRst, $06, nC2, $06, nA2, $06
	dc.b nE2, $06, nEb2, $48, nRst, $06, nC2, $06
	dc.b nEb2, $06, nD2, $66
	sJump		Maniax_Jump8

Maniax_PSG3:
	ssDetune	$00
	sVolEnvPSG	$0C
	dc.b nRst, $1E

Maniax_Jump9:
	dc.b nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b nA1, $03, nRst, $06, nA1, $03, nRst, $06
	dc.b nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b nA1, $03, nRst, $06, nA1, $03, nRst, $06
	dc.b nB1, $03, nRst, $09, nA1, $03, nRst, $09
	dc.b nC2, $03, nRst, $06, nC2, $03, nRst, $06
	dc.b nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b nA1, $03, nRst, $06, nA1, $03, nRst, $06
	saVolPSG	$01
	dc.b nA1, $03, nRst, $06
	saVolPSG	$02
	dc.b nA1, $03, nRst, $06
	saVolPSG	$02
	dc.b nA1, $03, nRst, $06, nA1, $03, nRst, $06
	saVolPSG	$01
	dc.b nA1, $03, nRst, $03
	saVolPSG	$FA
	dc.b nA1, $03, nRst, $06, nA1, $03, nRst, $06
	dc.b nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b nC2, $03, nRst, $09, nA1, $03, nRst, $06
	dc.b nA1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b nB1, $03, nRst, $06, nC2, $03, nRst, $09
	dc.b nC2, $03, nRst, $06, nC2, $03, nRst, $06
	dc.b nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b nB1, $03, nB1, $03, nRst, $03, nB1, $03
	dc.b nRst, $06
	saVolPSG	$01
	dc.b nB1, $03, nRst, $06
	saVolPSG	$02
	dc.b nB1, $03, nRst, $06
	saVolPSG	$02
	dc.b nB1, $03, nRst, $06
	saVolPSG	$01
	dc.b nB1, $03, nRst, $06, nB1, $03, nRst, $6B
	dc.b $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B
	dc.b $6B, $6B, $6B, $6B, $6B, $6B, $6B, $6B
	dc.b $6B, $03
	saVolPSG	$FA
	dc.b nBb1, $03, nRst, $03, nBb1, $03, nRst, $09
	dc.b nBb1, $03, nRst, $06, nBb1, $03, nRst, $06
	dc.b nBb1, $03, nRst, $03, nBb1, $03, nRst, $03
	dc.b nBb1, $03, nRst, $03, nBb1, $03, nBb1, $03
	dc.b nRst, $03, nBb1, $03, nRst, $06, nBb1, $03
	dc.b nRst, $09, nBb1, $03, nRst, $09, nC2, $03
	dc.b nRst, $03, nC2, $03, nRst, $09, nC2, $03
	dc.b nRst, $06, nC2, $03, nRst, $06, nC2, $03
	dc.b nRst, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b nRst, $03, nC2, $03, nC2, $03, nRst, $03
	dc.b nC2, $03, nRst, $06, nC2, $03, nRst, $09
	dc.b nC2, $03, nRst, $09, nC2, $03, nRst, $03
	dc.b nC2, $03, nRst, $09, nC2, $03, nRst, $06
	dc.b nC2, $03, nRst, $06, nC2, $03, nRst, $03
	dc.b nC2, $03, nRst, $03, nC2, $03, nRst, $03
	dc.b nC2, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b nRst, $06, nC2, $03, nRst, $09, nC2, $03
	dc.b nRst, $09, nC2, $03, nRst, $03, nC2, $03
	dc.b nRst, $09, nC2, $03, nRst, $06, nC2, $03
	dc.b nRst, $06, nC2, $03, nRst, $09, nC2, $03
	dc.b nRst, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b nRst, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b nRst, $03, nC2, $03, nRst, $03, nC2, $03
	ssDetune	$00
	dc.b nRst, $03
	sJump		Maniax_Jump9

Maniax_DAC:
	sStop

Maniax_Patches:

	; Patch $00
	; $2C
	; $31, $31, $71, $71,	$5F, $54, $5F, $5F
	; $05, $0A, $03, $0C,	$00, $03, $03, $03
	; $00, $87, $00, $A7,	$17, $06, $19, $06
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$03, $07, $03, $07
	spMultiple	$01, $01, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $14, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $03, $0A, $0C
	spSustainLv	$00, $00, $08, $0A
	spDecayRt	$00, $03, $03, $03
	spReleaseRt	$00, $00, $07, $07
	spTotalLv	$17, $19, $06, $06

	; Patch $01
	; $2C
	; $31, $31, $71, $71,	$5F, $54, $5F, $5F
	; $05, $0A, $03, $0C,	$00, $03, $03, $03
	; $00, $87, $00, $A7,	$17, $06, $19, $06
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$03, $07, $03, $07
	spMultiple	$01, $01, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $14, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $03, $0A, $0C
	spSustainLv	$00, $00, $08, $0A
	spDecayRt	$00, $03, $03, $03
	spReleaseRt	$00, $00, $07, $07
	spTotalLv	$17, $19, $06, $06

	; Patch $02
	; $36
	; $0F, $01, $01, $01,	$1F, $1F, $1F, $1F
	; $12, $11, $0E, $00,	$00, $0A, $07, $09
	; $FF, $0F, $1F, $0F,	$18, $12, $12, $12
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0E, $11, $00
	spSustainLv	$0F, $01, $00, $00
	spDecayRt	$00, $07, $0A, $09
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $12, $12, $12

	; Patch $03
	; $3F
	; $00, $32, $00, $76,	$1F, $1F, $1F, $1F
	; $0E, $0E, $0E, $10,	$0A, $0A, $0A, $0A
	; $03, $58, $38, $38,	$16, $0B, $0A, $0B
	spAlgorithm	$07
	spFeedback	$07
	spDetune	$00, $00, $03, $07
	spMultiple	$00, $00, $02, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $10
	spSustainLv	$00, $03, $05, $03
	spDecayRt	$0A, $0A, $0A, $0A
	spReleaseRt	$03, $08, $08, $08
	spTotalLv	$16, $0A, $0B, $0B

	; Patch $04
	; $2C
	; $72, $78, $34, $34,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$17, $08, $17, $12
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$02, $04, $08, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0A, $0A
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $17, $08, $12

	; Patch $05
	; $2B
	; $32, $32, $04, $72,	$14, $0E, $12, $4E
	; $00, $10, $12, $0C,	$00, $00, $00, $00
	; $0A, $5A, $3A, $1A,	$1C, $28, $22, $00
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$03, $00, $03, $07
	spMultiple	$02, $04, $02, $02
	spRateScale	$00, $00, $00, $01
	spAttackRt	$14, $12, $0E, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $12, $10, $0C
	spSustainLv	$00, $03, $05, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0A, $0A, $0A, $0A
	spTotalLv	$1C, $22, $28, $00

	; Patch $06
	; $08
	; $0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$24, $2D, $13, $06
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$0A, $00, $00, $00
	spRateScale	$00, $01, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0A, $0E, $0A
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$00, $04, $04, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $13, $2D, $06

	; Patch $07
	; $2C
	; $74, $74, $34, $34,	$1F, $12, $1F, $1F
	; $00, $07, $00, $07,	$00, $07, $00, $07
	; $00, $38, $00, $38,	$16, $12, $17, $00
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$04, $04, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $07, $07
	spSustainLv	$00, $00, $03, $03
	spDecayRt	$00, $00, $07, $07
	spReleaseRt	$00, $00, $08, $08
	spTotalLv	$16, $17, $12, $00

	; Patch $08
	; $3A
	; $32, $08, $72, $02,	$12, $4E, $14, $11
	; $04, $0E, $00, $04,	$06, $04, $08, $07
	; $18, $58, $08, $3F,	$1B, $21, $24, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $07, $00, $00
	spMultiple	$02, $02, $08, $02
	spRateScale	$00, $00, $01, $00
	spAttackRt	$12, $14, $0E, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $00, $0E, $04
	spSustainLv	$01, $00, $05, $03
	spDecayRt	$06, $08, $04, $07
	spReleaseRt	$08, $08, $08, $0F
	spTotalLv	$1B, $24, $21, $00
