SMB3_Cards3_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	SMB3_Cards3_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$03, $20
	sHeaderDAC	SMB3_Cards3_DAC
	sHeaderFM	SMB3_Cards3_FM1, $00, $0A
	sHeaderFM	SMB3_Cards3_FM2, $00, $0A
	sHeaderFM	SMB3_Cards3_FM3, $00, $0E
	sHeaderFM	SMB3_Cards3_FM4, $00, $0E
	sHeaderFM	SMB3_Cards3_FM5, $00, $0A
	sHeaderFM	SMB3_Cards3_FM6, $00, $0A
	sHeaderPSG	SMB3_Cards3_PSG1, $0C, $06, $00, v00
	sHeaderPSG	SMB3_Cards3_PSG2, $0C, $06, $00, v00
	sHeaderPSG	SMB3_Cards3_PSG3, $0C, $06, $00, v00

SMB3_Cards3_FM1:
	sPan		spLeft
	sPatFM		$00
	dc.b nA4, $03, nA4, $03, nRst, $03, nB4, $03
	dc.b nC5, $03, nRst, $03, nD5, $03
	ssModZ80	$01, $01, $06, $05
	dc.b sHold, $21
	sStop

SMB3_Cards3_FM2:
	sPan		spLeft
	sPatFM		$00
	dc.b nG2, $03, nG2, $03, nRst, $03, nG2, $03
	dc.b nG2, $03, nRst, $03, nC2, $03
	ssModZ80	$01, $01, $06, $05
	dc.b sHold, $21
	sStop

SMB3_Cards3_FM3:
	sPan		spCenter
	sPatFM		$00
	dc.b nD4, $03, nD4, $03, nRst, $03, nE4, $03
	dc.b nF4, $03, nRst, $03, nG4, $03
	ssModZ80	$01, $01, $03, $05
	dc.b sHold, $21
	sStop

SMB3_Cards3_FM4:
	sPatFM		$01
	sPan		spCenter
	dc.b nC4, $03, nC4, $03, nRst, $03, nD4, $03
	dc.b nE4, $03, nRst, $03, nE4, $03
	ssModZ80	$01, $01, $06, $05
	dc.b sHold, $21
	sStop

SMB3_Cards3_FM5:
	sPatFM		$01
	sPan		spRight
	dc.b nA5, $03, nA5, $03, nRst, $03, nB5, $03
	dc.b nC6, $03, nRst, $03, nD6, $03
	ssModZ80	$01, $01, $06, $05
	dc.b sHold, $21
	sStop

SMB3_Cards3_FM6:
	sPatFM		$01
	sPan		spRight
	dc.b nF4, $03, nF4, $03, nRst, $03, nG4, $03
	dc.b nA4, $03, nRst, $03, nB4, $03
	ssModZ80	$01, $01, $06, $05
	dc.b sHold, $21
	sStop

SMB3_Cards3_PSG1:
	dc.b nA1, $03, nA1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nRst, $03, nD2, $03
	ssModZ80	$01, $02, $03, $06
	dc.b sHold, $21
	sStop

SMB3_Cards3_PSG2:
	dc.b nD1, $03, nD1, $03, nRst, $03, nE1, $03
	dc.b nF1, $03, nRst, $03, nG1, $03
	ssModZ80	$01, $02, $01, $06
	dc.b sHold, $21
	sStop

SMB3_Cards3_PSG3:
	dc.b nC1, $03, nC1, $03, nRst, $03, nD1, $03
	dc.b nE1, $03, nRst, $03, nE1, $03
	ssModZ80	$01, $02, $03, $06
	dc.b sHold, $21
	sStop

SMB3_Cards3_DAC:
	sStop

SMB3_Cards3_Patches:

	; Patch $00
	; $3D
	; $01, $00, $01, $02,	$12, $1F, $1F, $14
	; $07, $02, $02, $0A,	$05, $05, $05, $05
	; $25, $27, $27, $A7,	$1C, $8C, $8E, $8C
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $1F, $1F, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $02, $02, $0A
	spSustainLv	$02, $02, $02, $0A
	spDecayRt	$05, $05, $05, $05
	spReleaseRt	$05, $07, $07, $07
	spTotalLv	$1C, $0E, $0C, $0C

	; Patch $01
	; $3A
	; $01, $02, $01, $01,	$14, $14, $17, $14
	; $0A, $0C, $03, $07,	$02, $08, $08, $03
	; $07, $E9, $A8, $18,	$1C, $2B, $28, $8C
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $17, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $03, $0C, $07
	spSustainLv	$00, $0A, $0E, $01
	spDecayRt	$02, $08, $08, $03
	spReleaseRt	$07, $08, $09, $08
	spTotalLv	$1C, $28, $2B, $0C
