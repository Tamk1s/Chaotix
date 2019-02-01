Maniax_Header:
	sHeaderInit
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $08
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $F4, $11
	sHeaderFM	Maniax_FM2, $F4, $07
	sHeaderFM	Maniax_FM3, $E8, $0F
	sHeaderFM	Maniax_FM4, $E8, $0F
	sHeaderFM	Maniax_FM5, $F4, $11
	sHeaderPSG	Maniax_PSG1, $D0, $05, $00, v05
	sHeaderPSG	Maniax_PSG1, $DC, $05, $00, v05
	sHeaderPSG	Maniax_PSG2, $00, $03, $00, v04

Maniax_FM5:
	ssDetune	$03

Maniax_FM1:
	sPatFM		$00
	dc.b nRst, $30

Maniax_Jump1:
	dc.b nRst, $0C, nCs6, $15, nRst, $03, nCs6, $06
	dc.b nRst, nD6, $0F, nRst, $03, nB5, $18, nRst
	dc.b $06, nCs6, $06, nRst, nCs6, nRst, nCs6, nRst
	dc.b nA5, nRst, nG5, $0F, nRst, $03, nB5, $18
	dc.b nRst, $06, nRst, $0C, nCs6, $15, nRst, $03
	dc.b nCs6, $06, nRst, nD6, $0F, nRst, $03, nB5
	dc.b $18, nRst, $06, nCs6, $06, nRst, nCs6, nRst
	dc.b nCs6, nRst, nA5, nRst, nG5, $0F, nRst, $03
	dc.b nB5, $18, nRst, $06
	saVolFM		$FD
	dc.b nRst, $30, nRst, nA5, $04, nB5, nCs6, nD6
	dc.b nE6, nFs6, nB5, nCs6, nEb6, nE6, nFs6, nAb6
	dc.b nCs6, nEb6, nF6, nFs6, nAb6, nBb6, nF6, nFs6
	dc.b nAb6, nBb6, nC7, nCs7
	saVolFM		$03
	sJump		Maniax_Jump1

Maniax_FM2:
	sComm		$01
	sPatFM		$01
	dc.b nRst, $30

Maniax_Loop1:
	dc.b nA3, $06, nRst, nA3, nRst, nE3, nRst, nE3
	dc.b nRst, nG3, $12, nFs3, $0C, nG3, $06, nFs3
	dc.b $0C, nA3, $06, nRst, nA3, nRst, nE3, nRst
	dc.b nE3, nRst, nD4, $12, nCs4, $0C, nD4, $06
	dc.b nCs4, $0C
	sLoop		$00, $02, Maniax_Loop1

Maniax_Loop2:
	dc.b nB2, $06, nG2, $12, nA2, $06, nRst, nB2
	dc.b nRst
	sLoop		$00, $02, Maniax_Loop2
	dc.b nA2, $0C, nB2, nCs3, nEb3, nB2, $06, nCs3
	dc.b nEb3, nF3, nCs3, nEb3, nF3, nFs3
	sComm		$01
	sJump		Maniax_Loop1

Maniax_FM3:
	sPatFM		$00
	dc.b nRst, $30

Maniax_Loop3:
	dc.b nE6, $06, nRst, nE6, nRst, nCs6, nRst, nCs6
	dc.b nRst, nD6, $12, nD6, $1E, nE6, $06, nRst
	dc.b nE6, nRst, nCs6, nRst, nCs6, nRst, nG6, $12
	dc.b nG6, $1E
	sLoop		$00, $02, Maniax_Loop3

Maniax_Loop4:
	dc.b nRst, $06, nG5, $12, nA5, $06, nRst, $12
	sLoop		$00, $04, Maniax_Loop4
	sJump		Maniax_Loop3

Maniax_FM4:
	sPatFM		$00
	dc.b nRst, $30

Maniax_Loop5:
	dc.b nCs6, $06, nRst, nCs6, nRst, nA5, nRst, nA5
	dc.b nRst, nB5, $12, nB5, $1E, nCs6, $06, nRst
	dc.b nCs6, nRst, nA5, nRst, nA5, nRst, nD6, $12
	dc.b nD6, $1E
	sLoop		$00, $02, Maniax_Loop5

Maniax_Loop6:
	dc.b nRst, $06, nB5, $12, nCs6, $06, nRst, $12
	sLoop		$00, $04, Maniax_Loop6
	sJump		Maniax_Loop5

Maniax_PSG1:
	sStop

Maniax_PSG2:
	sNoisePSG	$E7
	dc.b nRst, $30

Maniax_Jump2:
	sNoteTimeOut	$03
	dc.b nA5, $0C
	sNoteTimeOut	$0C
	dc.b $0C
	sNoteTimeOut	$03
	dc.b $0C
	sNoteTimeOut	$0C
	dc.b $0C
	sJump		Maniax_Jump2

Maniax_DAC:
	dc.b dSnare, $06, dSnare, dSnare, dSnare, dSnare, $02, dSnare
	dc.b $04, dKick, $12

Maniax_Loop7:
	dc.b dKick, $0C, dSnare, dKick, dSnare, dKick, $0C, dSnare
	dc.b dKick, dSnare, dKick, $0C, dSnare, dKick, dSnare, dKick
	dc.b $0C, dSnare, dKick, $04, nRst, dSnare, dSnare, $0C
	sLoop		$00, $02, Maniax_Loop7
	dc.b dKick, $06, dSnare, $12, dKick, $0C, dSnare, dSnare
	dc.b $06, dKick, $12, dKick, $0C, dSnare, dSnare, $06
	dc.b dKick, $12, dKick, $0C, dSnare, dSnare, $04, dSnare
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	dc.b dSnare, dSnare
	sJump		Maniax_Loop7
	dc.b $F2	; Unused

Maniax_Patches:

	; Patch $00
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $01
	; $3A
	; $61, $3C, $14, $31,	$9C, $DB, $9C, $DA
	; $04, $09, $04, $03,	$03, $01, $03, $00
	; $1F, $0F, $0F, $AF,	$21, $47, $31, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$06, $01, $03, $03
	spMultiple	$01, $04, $0C, $01
	spRateScale	$02, $02, $03, $03
	spAttackRt	$1C, $1C, $1B, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $09, $03
	spSustainLv	$01, $00, $00, $0A
	spDecayRt	$03, $03, $01, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $31, $47, $00
