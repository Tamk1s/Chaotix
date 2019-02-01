Maniax_Header:
	sHeaderInit						; Z80 offset is $C0C6
	sHeaderPatchUniv
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	Maniax_DAC
	sHeaderFM	Maniax_FM1, $18, $0F
	sHeaderFM	Maniax_FM2, $18, $0A
	sHeaderFM	Maniax_FM3, $18, $13
	sHeaderFM	Maniax_FM4, $0C, $0F
	sHeaderFM	Maniax_FM5, $0C, $0C
	sHeaderPSG	Maniax_PSG1, $F4, $04, $00, v0C
	sHeaderPSG	Maniax_PSG2, $F4, $04, $00, v0C
	sHeaderPSG	Maniax_PSG3, $00, $03, $00, v0C
	dc.b $F2, $F2	; Unused

Maniax_DAC:
	dc.b dKick, $06
	sPan		spLeft
	dc.b dHighTom, $02, dHighTom, $04, dHighTom, $06, dHighTom, dHighTom
	dc.b dHighTom
	sPan		spCenter
	dc.b dMidTom, dMidTom, dMidTom, dMidTom, dMidTom, dLowTom
	sPan		spRight
	dc.b dLowTom, $02, dLowTom, $04, dLowTom, $06, dFloorTom, dFloorTom
	sPan		spCenter
	dc.b dKick, $0C, dSnare, $1E, dKick, $0C, dKick, $12
	dc.b dKick, $0C, dSnare
	sLoop		$00, $02, Maniax_DAC

Maniax_Loop4:
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, dKick
	dc.b $12, dSnare, $0C, dKick
	sLoop		$00, $03, Maniax_Loop4
	dc.b dKick, $24, dSnare, $06, dKick, $0C, dKick, $12
	dc.b dKick, $0C, dSnare

Maniax_Loop5:
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, dKick
	dc.b $12, dSnare, $0C, dKick
	sLoop		$00, $02, Maniax_Loop5
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, dKick
	dc.b $12, dSnare, $0C, dKick, $06, dSnare, $0C, dKick
	dc.b dKick, $06, dHighTom, dMidTom, dLowTom, dSnare, $18, $0C
	dc.b $02, $04, $06, dSnare
	sCall		Maniax_Call4
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E
	dc.b dSnare, $0C, dKick, $12, dSnare, dSnare, $0C, dSnare
	dc.b $06, dSnare, $0C, dSnare, $12, dSnare, $06, dSnare
	dc.b dSnare, dSnare
	sCall		Maniax_Call4
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E
	dc.b dSnare, $0C, dKick, $06, dKick, $0C, dKick, dKick
	dc.b $06, dSnare, dKick, dKick, dSnare, dKick, dKick, $0C
	dc.b dSnare, dSnare, $06, dSnare, dSnare

Maniax_Loop6:
	sCall		Maniax_Call5
	sLoop		$00, $02, Maniax_Loop6
	sCall		Maniax_Call5
	dc.b dKick, $0C, dSnare, dKick, $06, dSnare, $0C, $06
	dc.b dKick, dSnare, $12, $04, dSnare, dSnare, dSnare, $06
	dc.b dSnare

Maniax_Loop7:
	sCall		Maniax_Call5
	sLoop		$00, $02, Maniax_Loop7
	dc.b dKick, $12, $06, dSnare, $1E, dKick, $06, $0C
	dc.b dSnare, $1E, $0C, $0C, $06, $0C, $18, $02
	dc.b $02, $02, $06, $06, $06
	sJump		Maniax_DAC
	dc.b $F2	; Unused

Maniax_Call4:
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E
	dc.b dSnare, $0C, dKick, dKick, $18, dSnare, $06, dKick
	dc.b $0C, dKick, $1E, dSnare, $0C, dKick
	sRet

Maniax_Call5:
	dc.b dKick, $12, dKick, $06, dSnare, $1E, dKick, $06
	dc.b dKick, $0C, dSnare, $18
	sRet

Maniax_FM1:
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	sCall		Maniax_Call1
	sPatFM		$0E
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	sCall		Maniax_Call2
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	sCall		Maniax_Call3
	sJump		Maniax_FM1

Maniax_Call1:
	dc.b nRst, $7F, nRst, nRst, $76, nG4, $06, nBb4
	dc.b nC5, nG4, nF4, $02, nEb4, nD4, nC4, nBb3
	dc.b nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3
	dc.b nF3, $02, nFs3, $04, nF3, $06, nEb3, nC3
	dc.b nG3, $02, nA3, nBb3, $08, nBb3, $02, nBb3
	dc.b $04, nA3, $12, nG3, $02, nFs3, nF3, nEb3
	dc.b nD3, nC3, nBb2, nA2, nG2, nRst, $36, nBb3
	dc.b $06, nB3, nC4, nFs3, $02, nG3, $04, nF3
	dc.b $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2
	dc.b $04, nF3, $02, nFs3, $04, nF3, $06, nEb3
	dc.b nF3, nEb3, nC3, nBb2, nG3, $0C, nG3, $06
	dc.b nC4, $12, nA3, $02, nG3, nF3, nEb3, nD3
	dc.b nC3, nRst, $3C, nG4, $06, nBb4, nC5, nG4
	dc.b nF4, $02, nEb4, nD4, nC4, nBb3, nA3, nG3
	dc.b nRst, $04, nBb3, $06, nC4, nG3, nF3, $02
	dc.b nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02
	dc.b nA3, nBb3, $08, nBb3, $02, nBb3, $04, nA3
	dc.b $12, nG3, $02, nF3, nEb3, nD3, nC3, nBb2
	dc.b nA2, nG2, nF2, nRst, $36, nBb3, $06, nB3
	dc.b nC4, nFs3, $02, nG3, $04, nF3, $02, nEb3
	dc.b nC3, nBb2, nA2, nG2, nF2, nEb2, $04, nF3
	dc.b $02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3
	dc.b nC3, nBb2, nG3, $0C, nG3, $06, nEb3, $12
	dc.b nD3, $02, nC3, nBb2, nA2, nG2, nF2, nRst
	dc.b $1E
	sRet

Maniax_Call2:
	saTranspose	$F4
	dc.b nF3, $06, nFs3, $02, nG3, $04, nBb3, $06
	dc.b nEb4, nF4, nG4, nBb4, nD5, $02, nEb5, $08
	dc.b nRst, $02, nF5, $04, nRst, $02, nFs5, nG5
	dc.b $08, nRst, $02, nC5, $0A, nRst, $02, nFs5
	dc.b nG5, $26, nRst, $02, nF5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $02, nCs5, nD5, $26, nRst
	dc.b $02, nBb4, $34, nRst, $02, nCs5, nD5, $08
	dc.b nRst, $02, nEb5, $04, nRst, $02, nE5, nF5
	dc.b $08, nRst, $02, nBb4, $0A, nRst, $02, nF5
	dc.b nF5, $26, nRst, $02, nEb5, $04, nRst, $02
	dc.b nD5, $04, nRst, $02, nC5, $2E, nRst, $08
	dc.b nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b nF5, $0A, nRst, $02, nD5, nEb5, $08, nRst
	dc.b $02, nF5, $04, nRst, $02, nFs5, nG5, $08
	dc.b nRst, $02, nC5, $0A, nRst, $02, nG5, $28
	dc.b nRst, $02, nF5, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nCs5, nD5, $26, nRst, $02, nEb5
	dc.b $1C, nRst, $0E, nEb5, $04, nRst, $02, nF5
	dc.b $04, nRst, $02, nFs5, nG5, $08, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG5, $0A, nRst, $02
	dc.b nBb4, $0A, nRst, $02, nC5, $28, nRst, $02
	dc.b nEb5, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b nG5, $2E, nRst, $02, nF5, $12, nEb5, $02
	dc.b nD5, nC5, nBb4, nAb4, nG4, nF4, nEb4, nD4
	sRet

Maniax_Call3:
	saTranspose	$0C
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b $04, nRst, $02, nEb4, $0C, nD4, $02, nC4
	dc.b nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02
	dc.b nEb4, $04, nRst, $02, nE4, nF4, nRst, $08
	dc.b nD4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nB3, $04, nRst, $08, nC4, $10, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $0A, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nEb4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b $04, nRst, $02, nEb4, $10, nRst, $02, nEb4
	dc.b $04, nRst, $08, nD4, $04, nRst, $02, nEb4
	dc.b $10, nRst, $02, nEb4, $04, nRst, $02, nF4
	dc.b $0A, nRst, $02, nEb4, $04, nRst, $08, nAb4
	dc.b $04, nRst, $0E, nC5, $04, nRst, $08, nC5
	dc.b $04, nRst, $08, nC5, $04, nRst, $02, nC5
	dc.b $0A, nRst, $02, nB4, $04, nRst, $2C
	sRet
	dc.b $F2	; Unused

Maniax_FM2:
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1
	dc.b $10, nRst, $02, nEb1, nRst, $04, nF1, nRst
	dc.b $08, nEb1, $10, nRst, $02, nF1, $16, nRst
	dc.b $02, nC1, $0A, nRst, $02, nA0, nRst, $04
	dc.b nC1, $12, nA0, $04, nRst, $02, nBb0, $04
	dc.b nRst, $08, nG0, $10, nRst, $02, nBb0, $16
	dc.b nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst
	dc.b $04, nC1, $10, nRst, $02, nEb1, nRst, $04
	dc.b nF1, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b $16, nRst, $02, nC1, $0A, nRst, $02, nA0
	dc.b nRst, $04, nC1, $12, nA0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nG0, $10, nRst, $02
	dc.b nBb0, $16, nRst, $02, nC1, $0A, nRst, $02
	dc.b nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b nRst, $04, nF1, nRst, $08, nEb1, $10, nRst
	dc.b $02, nF1, $16, nRst, $02, nC1, $0A, nRst
	dc.b $02, nA0, nRst, $04, nC1, $12, nA0, $04
	dc.b nRst, $02, nBb0, $04, nRst, $08, nG0, $10
	dc.b nRst, $02, nBb0, $16, nRst, $02, nC1, $0A
	dc.b nRst, $02, nEb1, nRst, $04, nC1, $10, nRst
	dc.b $02, nEb1, nRst, $04, nF1, nRst, $08, nEb1
	dc.b $10, nRst, $02, nF1, $16, nRst, $02, nC1
	dc.b $0A, nRst, $02, nA0, nRst, $04, nC1, $12
	dc.b nA0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b nG0, $10, nRst, $02, nBb0, $16, nRst, $02
	dc.b nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1
	dc.b $10, nRst, $02, nEb1, $04, nRst, $02, nF1
	dc.b $04, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b $16, nRst, $02, nC1, $0A, nRst, $02, nA0
	dc.b nRst, $04, nC1, $12, nA0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nG0, $10, nRst, $02
	dc.b nBb0, $16, nRst, $02, nC1, $0A, nRst, $02
	dc.b nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b $04, nRst, $02, nF1, $04, nRst, $08, nEb1
	dc.b $10, nRst, $02, nF1, $10, nRst, $02, nEb1
	dc.b $04, nRst, $08, nC2, $04, nRst, $02, nBb1
	dc.b $04, nRst, $02, nG1, $04, nRst, $02, nF1
	dc.b $04, nFs1, nF1, nEb1, $06, nC1, $04, nRst
	dc.b $14, nG0, $1C, nRst, $02, nAb0, $0A, nRst
	dc.b $02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0
	dc.b $04, nRst, $08, nAb0, $04, nRst, $08, nAb1
	dc.b $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b $04, nRst, $08, nG0, $0A, nRst, $02, nG0
	dc.b nRst, $04, nG1, nRst, $08, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b $02, nG0, $16, nRst, $02, nG0, $04, nRst
	dc.b $08, nBb0, $0A, nRst, $02, nBb0, nRst, $04
	dc.b nBb1, nRst, $08, nBb0, $04, nRst, $08, nBb0
	dc.b $04, nRst, $08, nBb1, $04, nRst, $02, nBb0
	dc.b $10, nRst, $02, nBb0, nRst, $04, nBb0, nRst
	dc.b $0E, nC1, $04, nRst, $0E, nC1, $04, nRst
	dc.b $08, nC2, $04, nRst, $02, nC1, $04, nRst
	dc.b $08, nC2, $10, nRst, $02, nC1, $0A, nRst
	dc.b $02, nC2, $0A, nRst, $02, nAb0, $0A, nRst
	dc.b $02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0
	dc.b $04, nRst, $08, nAb0, $04, nRst, $08, nAb1
	dc.b $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b $04, nRst, $08, nG0, $0A, nRst, $02, nG0
	dc.b nRst, $04, nG1, nRst, $08, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b $02, nG0, $16, nRst, $02, nG0, $04, nRst
	dc.b $08, nF0, $0A, nRst, $02, nF0, nRst, $04
	dc.b nF1, nRst, $08, nF0, $04, nRst, $08, nF0
	dc.b $04, nRst, $08, nF1, $04, nRst, $02, nF0
	dc.b $16, nRst, $02, nF0, nRst, $04, nAb0, nRst
	dc.b $08, nAb0, $04, nRst, $08, nAb0, $04, nRst
	dc.b $08, nAb0, $04, nRst, $02, nAb0, $0A, nRst
	dc.b $02, nG0, $04, nRst, $02, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b $02, nG0, $04, nRst, $02, nG0, $04, nRst
	dc.b $02, nF0, $10, nRst, $02, nF0, nRst, $22
	dc.b nG0, $02, nRst, $04, nG1, $0A, nRst, $02
	dc.b nG0, $16, nRst, $02, nAb0, $10, nRst, $02
	dc.b nAb0, nRst, $22, nBb0, $02, nRst, $04, nBb1
	dc.b $0A, nRst, $02, nBb0, $0A, nRst, $02, nBb1
	dc.b $0A, nRst, $02, nF0, $10, nRst, $02, nF0
	dc.b nRst, $22, nG0, $02, nRst, $04, nG1, $0A
	dc.b nRst, $02, nG0, $16, nRst, $02, nC1, $10
	dc.b nRst, $02, nC2, nRst, $04, nBb0, $10, nRst
	dc.b $02, nBb1, nRst, $0A, nAb0, $02, nRst, $04
	dc.b nAb1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG1, $0A, nRst, $02, nF0, $10, nRst, $02
	dc.b nF0, nRst, $22, nG0, $02, nRst, $04, nG1
	dc.b $0A, nRst, $02, nG0, $16, nRst, $02, nAb0
	dc.b $10, nRst, $02, nAb0, nRst, $22, nBb0, $02
	dc.b nRst, $04, nBb1, $0A, nRst, $02, nBb0, $0A
	dc.b nRst, $02, nBb1, $0A, nRst, $02, nAb0, $10
	dc.b nRst, $02, nAb0, nRst, $22, nF0, $02, nRst
	dc.b $04, nF0, $0A, nRst, $02, nEb0, $0A, nRst
	dc.b $02, nF0, $0A, nRst, $08, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG0, $04, nRst
	dc.b $02, nG0, $0A, nRst, $02, nG0, $04, nRst
	dc.b $14, nF0, $04, nRst, $02, nFs0, $04, nRst
	dc.b $02, nG0, $04, nRst, $02, nBb0, $04, nRst
	dc.b $02
	sJump		Maniax_FM2
	dc.b $F2	; Unused

Maniax_FM3:
	dc.b nRst, $07

Maniax_Jump1:
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	sCall		Maniax_Call1
	sPatFM		$0E
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	sCall		Maniax_Call2
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	sCall		Maniax_Call3
	sJump		Maniax_Jump1
	dc.b $F2	; Unused

Maniax_FM4:
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $0E
	dc.b nF3, $04, nRst, $02, nF3, nRst, $04, nF3
	dc.b $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2
	dc.b $04, nRst, $02, nF3, $04, nRst, $08, nF3
	dc.b $04, nRst, $08, nEb3, $04, nRst, $08, nEb3
	dc.b $04, nRst, $0E, nEb3, $04, nRst, $02, nEb3
	dc.b nRst, $04, nE3, nRst, $08, nE3, $10, nRst
	dc.b $02, nE3, $04, nRst, $08, nE3, $04, nRst
	dc.b $08, nF3, $04, nRst, $08, nF3, $04, nRst
	dc.b $0E, nF3, $04, nRst, $02, nF3, nRst, $04
	dc.b nF3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b nBb2, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $0E, nEb3, $04, nRst, $02
	dc.b nEb3, nRst, $04, nE3, nRst, $08, nE3, $10
	dc.b nRst, $02, nE3, $04, nRst, $08, nE3, $04
	dc.b nRst, $08, nF3, $04, nRst, $08, nF3, $04
	dc.b nRst, $0E, nF3, $04, nRst, $02, nF3, nRst
	dc.b $04, nF3, $0A, nRst, $02, nF3, $0A, nRst
	dc.b $02, nBb2, $04, nRst, $02, nF3, $04, nRst
	dc.b $08, nF3, $04, nRst, $08, nEb3, $04, nRst
	dc.b $08, nEb3, $04, nRst, $0E, nEb3, $04, nRst
	dc.b $02, nEb3, nRst, $04, nE3, nRst, $08, nE3
	dc.b $10, nRst, $02, nE3, $04, nRst, $08, nE3
	dc.b $04, nRst, $08, nF3, $04, nRst, $08, nF3
	dc.b $04, nRst, $0E, nF3, $04, nRst, $02, nF3
	dc.b nRst, $04, nF3, $0A, nRst, $02, nF3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $02, nF3, $04
	dc.b nRst, $08, nF3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $08, nEb3, $04, nRst, $0E, nEb3, $04
	dc.b nRst, $02, nEb3, nRst, $04, nE3, nRst, $08
	dc.b nE3, $10, nRst, $02, nE3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $0E, nF3, $04, nRst, $02
	dc.b nF3, nRst, $04, nF3, $0A, nRst, $02, nF3
	dc.b $0A, nRst, $02, nBb2, $04, nRst, $02, nF3
	dc.b $04, nRst, $08, nF3, $04, nRst, $08, nEb3
	dc.b $04, nRst, $08, nEb3, $04, nRst, $0E, nEb3
	dc.b $04, nRst, $02, nEb3, nRst, $04, nE3, nRst
	dc.b $08, nE3, $10, nRst, $02, nE3, $04, nRst
	dc.b $08, nE3, $04, nRst, $08, nF3, $04, nRst
	dc.b $08, nF3, $04, nRst, $0E, nF3, $04, nRst
	dc.b $02, nF3, nRst, $04, nF3, $0A, nRst, $02
	dc.b nF3, $0A, nRst, $02, nBb2, $04, nRst, $02
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nC4, $06, nBb3, nG3
	dc.b nF3, $04, nFs3, nF3, nEb3, $06, nC3, nRst
	dc.b $12, nF3, $1E, nEb3, $0A, nRst, $02, nD3
	dc.b $04, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nEb3, $04, nRst, $0E, nC4
	dc.b $04, nRst, $02, nC4, $04, nRst, $08, nD4
	dc.b $02, nRst, $04, nEb4, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $04, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $0A, nRst, $02, nD3
	dc.b $04, nRst, $0E, nBb3, $04, nRst, $02, nBb3
	dc.b $04, nRst, $08, nC4, $02, nRst, $04, nD4
	dc.b $0A, nRst, $02, nD3, $0A, nRst, $02, nC3
	dc.b $04, nRst, $02, nD3, $0A, nRst, $02, nC3
	dc.b $0A, nRst, $02, nD3, $04, nRst, $0E, nD4
	dc.b $04, nRst, $02, nD4, $04, nRst, $08, nEb4
	dc.b $02, nRst, $04, nF4, $0A, nRst, $08, nBb3
	dc.b $04, nRst, $0E, nBb3, $0A, nRst, $02, nBb3
	dc.b $04, nRst, $02, nBb3, $04, nRst, $08, nBb3
	dc.b $10, nRst, $02, nEb3, $0A, nRst, $02, nF3
	dc.b $0A, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b $04, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nEb3, $04, nRst, $0E, nC4
	dc.b $04, nRst, $02, nC4, $04, nRst, $08, nD4
	dc.b $02, nRst, $04, nEb4, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $04, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2
	dc.b $04, nRst, $0E, nBb3, $04, nRst, $02, nBb3
	dc.b $04, nRst, $08, nEb4, $02, nRst, $04, nG4
	dc.b $0A, nRst, $02, nEb3, $0A, nRst, $02, nBb2
	dc.b $04, nRst, $02, nEb3, $0A, nRst, $02, nBb2
	dc.b $0A, nRst, $02, nC3, $04, nRst, $0E, nA3
	dc.b $04, nRst, $02, nA3, $04, nRst, $08, nC4
	dc.b $02, nRst, $04, nEb4, $0A, nRst, $08, nEb4
	dc.b $04, nRst, $08, nEb4, $04, nRst, $08, nEb4
	dc.b $04, nRst, $02, nEb4, $0A, nRst, $02, nB3
	dc.b $04, nRst, $02, nB3, $04, nRst, $08, nB3
	dc.b $04, nRst, $0E, nEb3, $04, nRst, $02, nF3
	dc.b $04, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nBb3, $10, nRst, $02, nG3
	dc.b $04, nRst, $08, nF3, $04, nRst, $0E, nD4
	dc.b $04, nRst, $02, nBb3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nEb3, $10, nRst, $02, nD3
	dc.b $34, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nB3, $10, nRst, $02, nG3
	dc.b $04, nRst, $08, nF3, $04, nRst, $08, nG3
	dc.b $16, nRst, $02, nBb3, $10, nRst, $02, nBb3
	dc.b $04, nRst, $08, nAb3, $10, nRst, $02, nG3
	dc.b $16, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nBb3, $10, nRst, $02, nG3
	dc.b $04, nRst, $08, nF3, $04, nRst, $0E, nD4
	dc.b $04, nRst, $02, nBb3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nEb3, $10, nRst, $02, nD3
	dc.b $34, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nEb2, $04, nRst, $02, nAb2
	dc.b $04, nRst, $02, nEb2, $04, nRst, $02, nEb3
	dc.b $0A, nRst, $02, nAb3, $0A, nRst, $08, nG3
	dc.b $04, nRst, $08, nG3, $04, nRst, $08, nG3
	dc.b $04, nRst, $02, nG3, $0A, nRst, $02, nG3
	dc.b $04, nRst, $2C
	sJump		Maniax_FM4
	dc.b $F2	; Unused

Maniax_FM5:
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E
	dc.b nBb2, $04, nRst, $02, nBb2, nRst, $04, nBb2
	dc.b $0A, nRst, $02, nBb2, $0A, nRst, $08, nBb2
	dc.b $04, nRst, $08, nBb2, $04, nRst, $08, nA2
	dc.b $04, nRst, $08, nA2, $04, nRst, $0E, nA2
	dc.b $04, nRst, $02, nA2, nRst, $04, nBb2, nRst
	dc.b $08, nBb2, $10, nRst, $02, nBb2, $04, nRst
	dc.b $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $08, nBb2, $04, nRst, $0E, nBb2, $04, nRst
	dc.b $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02
	dc.b nBb2, $0A, nRst, $08, nBb2, $04, nRst, $08
	dc.b nBb2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $0E, nA2, $04, nRst, $02
	dc.b nA2, nRst, $04, nBb2, nRst, $08, nBb2, $10
	dc.b nRst, $02, nBb2, $04, nRst, $08, nBb2, $04
	dc.b nRst, $08, nBb2, $04, nRst, $08, nBb2, $04
	dc.b nRst, $0E, nBb2, $04, nRst, $02, nBb2, nRst
	dc.b $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst
	dc.b $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $08, nA2, $04, nRst, $08, nA2, $04, nRst
	dc.b $0E, nA2, $04, nRst, $02, nA2, nRst, $04
	dc.b nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2
	dc.b $04, nRst, $08, nBb2, $04, nRst, $08, nBb2
	dc.b $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2
	dc.b $04, nRst, $02, nBb2, nRst, $04, nBb2, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $08, nBb2, $04
	dc.b nRst, $08, nBb2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $0E, nA2, $04
	dc.b nRst, $02, nA2, nRst, $04, nBb2, nRst, $08
	dc.b nBb2, $10, nRst, $02, nBb2, $04, nRst, $08
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $08
	dc.b nBb2, $04, nRst, $0E, nBb2, $04, nRst, $02
	dc.b nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2
	dc.b $0A, nRst, $08, nBb2, $04, nRst, $08, nBb2
	dc.b $04, nRst, $08, nA2, $04, nRst, $08, nA2
	dc.b $04, nRst, $0E, nA2, $04, nRst, $02, nA2
	dc.b nRst, $04, nBb2, nRst, $08, nBb2, $10, nRst
	dc.b $02, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $0E, nBb2, $04, nRst, $02, nBb2, nRst, $04
	dc.b nBb2, $0A, nRst, $02, nBb2, $0A, nRst, $08
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b nBb2, $04, nRst, $44, nB2, $1E, nC3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $02, nC3, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nC3, $04
	dc.b nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $08, nBb3, $02, nRst, $04, nC4, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $04
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $0E, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $08, nAb3, $02
	dc.b nRst, $04, nBb3, $0A, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nAb2, $04, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nAb2, $0A, nRst, $02, nBb2, $04
	dc.b nRst, $0E, nBb3, $04, nRst, $02, nBb3, $04
	dc.b nRst, $08, nC4, $02, nRst, $04, nD4, $0A
	dc.b nRst, $08, nG3, $04, nRst, $0E, nF3, $0A
	dc.b nRst, $02, nF3, $04, nRst, $02, nG3, $04
	dc.b nRst, $08, nD3, $10, nRst, $02, nC3, $0A
	dc.b nRst, $02, nD3, $0A, nRst, $02, nC3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $02, nC3, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nC3, $04
	dc.b nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $08, nBb3, $02, nRst, $04, nC4, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $04
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A
	dc.b nRst, $02, nG2, $04, nRst, $0E, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $08, nBb3, $02
	dc.b nRst, $04, nEb4, $0A, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nG2, $04, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nG2, $0A, nRst, $02, nA2, $04
	dc.b nRst, $0E, nF3, $04, nRst, $02, nF3, $04
	dc.b nRst, $08, nA3, $02, nRst, $04, nC4, $0A
	dc.b nRst, $08, nG3, $04, nRst, $08, nG3, $04
	dc.b nRst, $08, nG3, $04, nRst, $02, nG3, $0A
	dc.b nRst, $02, nF3, $04, nRst, $02, nF3, $04
	dc.b nRst, $08, nF3, $04, nRst, $0E, nC3, $04
	dc.b nRst, $02, nD3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b nRst, $0E, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nC3, $10
	dc.b nRst, $02, nF2, $34, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b nRst, $08, nEb3, $16, nRst, $02, nF3, $10
	dc.b nRst, $02, nF3, $04, nRst, $08, nEb3, $10
	dc.b nRst, $02, nD3, $16, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b nRst, $0E, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nC3, $10
	dc.b nRst, $02, nF2, $34, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $1A, nC3, $0A
	dc.b nRst, $02, nEb3, $0A, nRst, $08, nD3, $04
	dc.b nRst, $08, nD3, $04, nRst, $08, nD3, $04
	dc.b nRst, $02, nD3, $0A, nRst, $02, nD3, $04
	dc.b nRst, $2C
	sJump		Maniax_FM5
	dc.b $F2	; Unused

Maniax_PSG1:
	sVolEnvPSG	v0A

Maniax_Jump2:
	dc.b nC4, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $08
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $60, nRst, $1A, nC4, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nBb3, $04
	dc.b nRst, $02, nG3, $04, nRst, $08, nG3, $04
	dc.b nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $60, nRst, nRst, $38, nF4, $06, nFs4
	dc.b nG4, nBb5, nRst, nC5, nFs5, $02, nG5, $12
	dc.b nRst, $70, nC4, $04, nRst, $02, nA4, $04
	dc.b nRst, $02, nG4, $04, nRst, $08, nF4, $04
	dc.b nRst, $02, nFs4, nG4, $04, nE4, nRst, $7F
	dc.b nRst, $31, nF4, $06, nFs4, nG4, nBb5, nRst
	dc.b nC5, nFs5, $02, nG5, $12, nRst, $70, nC5
	dc.b $06, nBb4, nG4, nF4, $04, nFs4, nF4, nEb4
	dc.b $06, nC4, nRst, $12, nBb3, $1E, nRst, $3C
	dc.b nC4, $04, nRst, $02, nC4, $04, nRst, $08
	dc.b nD4, $02, nRst, $04, nEb4, $0A, nRst, $3E
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b nC4, $02, nRst, $04, nD4, $0A, nRst, $3E
	dc.b nD4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nEb4, $02, nRst, $04, nF4, $0A, nRst, $08
	dc.b nEb5, $04, nRst, $0E, nD5, $0A, nRst, $02
	dc.b nD5, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b nF5, $0A, nRst, $3E, nC4, $04, nRst, $02
	dc.b nC4, $04, nRst, $08, nD4, $02, nRst, $04
	dc.b nEb4, $0A, nRst, $3E, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $08, nEb4, $02, nRst, $04
	dc.b nG4, $0A, nRst, $3E, nA3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nC4, $02, nRst, $04
	dc.b nEb4, $0A, nRst, $08, nEb4, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nD4, $04, nRst, $50, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $38
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $38, nB3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nB3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $38, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b nEb5, $0A, nRst, $02, nD5, $04, nRst, $2C
	sJump		Maniax_Jump2
	dc.b $F2	; Unused

Maniax_PSG2:
	sVolEnvPSG	v08
	dc.b nRst, $01
	ssDetune	$01
	sJump		Maniax_Jump2
	dc.b $F6, $0A, $D1, $F2	; Unused

Maniax_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7

Maniax_Jump3:
	dc.b nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b nRst, $18
	sVolEnvPSG	v01
	dc.b nBb6, $04, nBb6, $04, nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $0C, sHold, $18, sHold, $18, sHold, $18
	dc.b sHold, $18, sHold, $18, sHold, $18, nBb6, $04
	dc.b nBb6, $04, nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $0C, sHold, $18

Maniax_Loop1:
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sLoop		$01, $03, Maniax_Loop1
	dc.b nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, sHold, $18, sHold, $18
	dc.b sHold, $18, sHold, $18

Maniax_Loop2:
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $03, Maniax_Loop2
	dc.b sHold, $18, sHold, $18, sHold, $18, sHold, $18

Maniax_Loop3:
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $03, Maniax_Loop3
	dc.b sHold, $18, sHold, $18, sHold, $18, sHold, $18
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, sHold, $18, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, nBb6, $06, nBb6, $06, nBb6, $06
	dc.b nBb6, $06, nBb6, $06, nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $18, sHold, $18, sHold, $18
	dc.b sHold, $18
	sJump		Maniax_Jump3
	dc.b $F2	; Unused
