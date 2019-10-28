Title_Header:
	sHeaderInit
	sHeaderPatch	Title_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$02, $15
	sHeaderDAC	Title_DAC
	sHeaderFM	Title_FM1, $00, $0D
	sHeaderFM	Title_FM2, $00, $0A
	sHeaderFM	Title_FM3, $00, $19
	sHeaderFM	Title_FM4, $00, $0D
	sHeaderFM	Title_FM5, $00, $17
	sHeaderFM	Title_FM6, $00, $09
	sHeaderPSG	Title_PSG1, $00, $02, $00, v05
	sHeaderPSG	Title_PSG2, $00, $08, $00, v05
	sHeaderPSG	Title_PSG3, $00, $02, $00, v00

Title_FM1:
	sPatFM		$01
	dc.b nRst, $7F, $41
	sPatFM		$00
	dc.b nD2, $24, $06, $12, $06, $12, $06, $36
	dc.b $06, nC2, nD2, nF2, $0C, nG2, $06, nF2
	dc.b nD2
	sPatFM		$01
	dc.b $06

Title_Loop1:
	dc.b $06, nRst, $24, nD2, $06
	sLoop		$00, $03, Title_Loop1
	dc.b $06, $06, nD3, $0C, $06, nC3, nD3, nD2
	dc.b nD2, nRst, $24, nD2, $06, $06, nRst, nG2
	dc.b $1E, nD2, $06, $06, nRst, $24, nD2, $06
	dc.b $06

Title_Loop2:
	dc.b $06, $06, nRst, $18, nD2, $0C
	sLoop		$00, $08, Title_Loop2
	dc.b $06, $06, nRst, $18, nC3, $24, $06, nB2
	dc.b $12, $06, nBb2, $12, $06, nA2, $12, nD3
	dc.b $18, nD2, $3C

Title_Loop3:
	dc.b $0C, nRst, $06, nD2, $1E
	sLoop		$00, $03, Title_Loop3
	dc.b $06, nF2, nG2, nF2, nG2, nA2, nG2, $0C
	dc.b nD2, nRst, $06, nD2, $1E, $0C, nRst, $06
	dc.b nD2, $1E, $0C, nRst, $06, nD2, $1E, $06
	dc.b nG3, nF3, nD3, nF3, nD3, nC3, nA2, nF2
	dc.b nG2, nRst, nG2, $1E, nAb2, $06, nG2, nF2
	dc.b nD2, $1E, nF2, $06, nG2, nRst, nG2, $12
	dc.b nF2, $0C, nD2, nD3, $24, nF2, $06, nG2
	dc.b nRst, nG2, $12, nF2, $06, nG2, nAb2, nG2
	dc.b nF2, nD2, $12, $0C, nF2, $06, $06, nRst
	dc.b nF2, $12, $06, nA2, $36, nRst, $30, nG2
	dc.b $06, nF2, nG2, nAb2, $0C, nG2, $06, nD2
	dc.b nC2

Title_Loop4:
	dc.b nD2
	sLoop		$00, $08, Title_Loop4
	dc.b nF2, nF2, nF3, nF2, $0C, $06, $06, $06
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nA2, nA2
	dc.b nD2, nD2, nD3, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF3, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA3, nA3, nG3, nF3, nG3, nA3
	dc.b nD2, nD2, nD2, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nC3, nD3
	dc.b nRst, $0C
	sPatFM		$00
	dc.b nF3, $06, nE3, $12, nC3, $06, nD3, nRst
	dc.b $0C
	sPatFM		$01
	dc.b nA2, $24, nD2, $5A, nD3, $12, nD2, $3C
	dc.b nA2, $06, nBb2, nB2, nC3, $12, nD2, $4E
	dc.b nD3, $36, nD2, $06, nC2, nD2, nF2, $0C
	dc.b nG2, $06, nF2, nD2

Title_Loop5:
	dc.b nD2, $0C, $06, $06, nRst, $18
	sLoop		$00, $08, Title_Loop5
	dc.b nD2

Title_Loop6:
	dc.b $0C, nRst, $06, nD2, $1E
	sLoop		$00, $03, Title_Loop6
	dc.b $06, nF2, nG2, nF2, nG2, nA2, nG2, $0C
	dc.b nD2, nRst, $06, nD2, $1E, $0C, nRst, $06
	dc.b nD2, $1E, $0C, nRst, $06, nD2, $1E, $06
	dc.b nG3, nF3, nD3, nF3, nD3, nC3, nA2, nF2
	dc.b nG2, nRst, nG2, $1E, nAb2, $06, nG2, nF2
	dc.b nD2, $1E, nF2, $06, nG2, nRst, nG2, $12
	dc.b nF2, $0C, nD2, nD3, $24, nF2, $06, nG2
	dc.b nRst, nG2, $12, nF2, $06, nG2, nAb2, nG2
	dc.b nF2, nD2, $12, $0C, nF2, $06, $06, nRst
	dc.b nF2, $12, $06, nA2, $36, nG2, $06, nF2
	dc.b nG2, nAb2, $0C, nG2, $06, nD2, nC2

Title_Loop7:
	dc.b nD2
	sLoop		$00, $08, Title_Loop7
	dc.b nF2, nF2, nF3, nF2, $0C, $06, $06, $06
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nA2, nA2
	dc.b nD2, nD2, nD3, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF3, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA3, nA3, nG3, nF3, nG3, nA3
	dc.b nD2, nD2, nD2, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nC3, nD3
	dc.b nRst, $0C
	sPatFM		$00
	dc.b nF3, $06, nE3, $12, nC3, $06, nD3, nRst
	dc.b $30
	sPatFM		$01
	dc.b nG2, $06, nF2, nG2, nAb2, $0C, nG2, $06
	dc.b nD2, nC2

Title_Loop8:
	dc.b nD2
	sLoop		$00, $08, Title_Loop8
	dc.b nF2, nF2, nF3, nF2, $0C, $06, $06, $06
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nA2, nA2

Title_Loop9:
	dc.b nD3
	sLoop		$00, $08, Title_Loop9

Title_Loop10:
	dc.b nC3
	sLoop		$00, $08, Title_Loop10

Title_Loop11:
	dc.b nB2
	sLoop		$00, $08, Title_Loop11

Title_Loop12:
	dc.b nCs3
	sLoop		$00, $08, Title_Loop12
	dc.b nD2, nD2, nD2, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nC2, nD2
	dc.b nRst, $0C, nF2, $06, nE2, nRst, $0C, nC2
	dc.b $06, nD2, nRst, $7F, $7F, $22
	sJump		Title_FM1

Title_FM2:
	sPan		spLeft
	sPatFM		$02
	dc.b nC3, $24, $06, nB2, $12, $06, nBb2, $12
	dc.b $06, nA2, $4E, $06, nBb2, nB2, nC3, $2A
	dc.b $06, nB2, $12, $06, nBb2, $12, $06, nA2
	dc.b $66, nD3, $0C, nRst, $06, nF3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nG3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nAb3, $0C, nG3
	dc.b $06, nF3, nD3, nD2, $2D, nRst, $03, nD3
	dc.b $0C, nRst, $06, nF3, $1B, nRst, $03, nD3
	dc.b $0C, nRst, $06, nG3, $1B, nRst, $03, nD3
	dc.b $0C, nRst, $06, nAb3, $0C, nG3, $06, nF3
	dc.b nD3, nD2, $2D, nRst, $7F, $7F, $7F, $06
	dc.b nC4, $24, $06, nB3, $12, $06, nBb3, $12
	dc.b $06, nA3, $12, nD3, $54, $0C, nRst, $06
	dc.b nF3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nG3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nAb3, $0C, nG3, $06, nF3, nD3, nD2, $2D
	dc.b nRst, $03, nD3, $0C, nRst, $06, nF3, $1B
	dc.b nRst, $03, nD3, $0C, nRst, $06, nG3, $1B
	dc.b nRst, $03, nD3, $0C, nRst, $06, nAb3, $0C
	dc.b nG3, $06, nF3, nD3, nD2, $2D, nRst, $03
	dc.b nF3, $06, nG3, nRst, nG3, $0C, $06, nF3
	dc.b nG3, nAb3, nG3, nF3, nD3, $0C, nD4, $09
	dc.b nRst, nF3, $06, nG3, nRst, nG3, $12, nF3
	dc.b $0C, nD3, nA3, nD4, nD3, nF3, $06, nG3
	dc.b nRst, nG3, $0C, $06, nF3, nG3, nAb3, nG3
	dc.b nF3, nD3, $0C, nD4, $06, nD3, $03, nRst
	dc.b nD3, nRst, nF3, $06, nF4, nRst, nF4, $0C
	dc.b $06, nF3, nA3, $12, $06, $06, $06, $06
	dc.b $0C
	saVolFM		$05
	dc.b nG3, $06, nF3, nG3, nAb3, $0C, nG3, $06
	dc.b nD3, nF3
	saVolFM		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3

Title_Loop13:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	sLoop		$00, $02, Title_Loop13
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3, nRst, $0C, nA2, $24, nC4, nC4
	dc.b $06, nB3, $12, $06, nBb3, $12, $06, nA3
	dc.b $4E, $06, nBb3, nB3, nC4, $2A, $06, nB3
	dc.b $12, $06, nBb3, $12, $06, nA3, $66
	sPatFM		$08

Title_Loop14:
	dc.b nD2, $12, nRst, $1E
	sLoop		$00, $08, Title_Loop14
	sPatFM		$02

Title_Loop15:
	dc.b nD3, $0C, nRst, $06, nF3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nG3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nAb3, $0C, nG3, $06
	dc.b nF3, nD3, nD2, $2D, nRst, $03
	sLoop		$00, $02, Title_Loop15
	dc.b nF3, $06, nG3, nRst, nG3, $0C, $06, nF3
	dc.b nG3, nAb3, nG3, nF3, nD3, $0C, nD4, $09
	dc.b nRst, nF3, $06, nG3, nRst, nG3, $12, nF3
	dc.b $0C, nD3, nA3, nD4, nD3, nF3, $06, nG3
	dc.b nRst, nG3, $0C, $06, nF3, nG3, nAb3, nG3
	dc.b nF3, nD3, $0C, nD4, $06, nD3, $03, nRst
	dc.b nD3, nRst, nF3, $06, $06, nRst, nF3, $0C
	dc.b $06, $06, nA3, $12, $06, $06, $06, $06
	dc.b $0C, nG3, $06, nF3, nG3, nAb3, $0C, nG3
	dc.b $06, nD3, nC3

Title_Loop16:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	sLoop		$00, $02, Title_Loop16
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3
	saVolFM		$05
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nF3
	saVolFM		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3, nD3, $30, nF3, nG3, nA3, $24, nG3
	dc.b $03, nA3, $09, nD3, $30, nC3, nB2, nCs3
	dc.b nD3, nF3, nG3, nA3, $24, nC3, $06, nD3
	dc.b nRst, $0C, nF3, $06, nE3, $12, nC3, $06
	dc.b nD3, nRst, $7F, $7F, $22
	sJump		Title_FM2

Title_FM3:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $06, nC3, $24, $06, nB2, $12, $06
	dc.b nBb2, $12, $06, nA2, $4E, $06, nBb2, nB2
	dc.b nC3, $2A, $06, nB2, $12, $06, nBb2, $12
	dc.b $06, nA2, $66, nD3, $0C, nRst, $06, nF3
	dc.b $1B, nRst, $03, nD3, $0C, nRst, $06, nG3
	dc.b $1B, nRst, $03, nD3, $0C, nRst, $06, nAb3
	dc.b $0C, nG3, $06, nF3, nD3, nD2, $2D, nRst
	dc.b $03, nD3, $0C, nRst, $06, nF3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nG3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nAb3, $0C, nG3
	dc.b $06, nF3, nD3, nD2, $2D, nRst, $7F, $7F
	dc.b $7F, $06, nC4, $24, $06, nB3, $12, $06
	dc.b nBb3, $12, $06, nA3, $12, nD3, $54, $0C
	dc.b nRst, $06, nF3, $1B, nRst, $03, nD3, $0C
	dc.b nRst, $06, nG3, $1B, nRst, $03, nD3, $0C
	dc.b nRst, $06, nAb3, $0C, nG3, $06, nF3, nD3
	dc.b nD2, $2D, nRst, $03, nD3, $0C, nRst, $06
	dc.b nF3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nG3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nAb3, $0C, nG3, $06, nF3, nD3, nD2, $2D
	dc.b nRst, $03, nF3, $06, nG3, nRst, nG3, $0C
	dc.b $06, nF3, nG3, nAb3, nG3, nF3, nD3, $0C
	dc.b nD4, $09, nRst, nF3, $06, nG3, nRst, nG3
	dc.b $12, nF3, $0C, nD3, nA3, nD4, nD3, nF3
	dc.b $06, nG3, nRst, nG3, $0C, $06, nF3, nG3
	dc.b nAb3, nG3, nF3, nD3, $0C, nD4, $06, nD3
	dc.b $03, nRst, nD3, nRst, nF3, $06, nF4, nRst
	dc.b nF4, $0C, $06, nF3, nA3, $12, $06, $06
	dc.b $06, $06, $0C
	saVolFM		$05
	dc.b nG3, $06, nF3, nG3, nAb3, $0C, nG3, $06
	dc.b nD3, nF3
	saVolFM		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3

Title_Loop17:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	sLoop		$00, $02, Title_Loop17
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3, nRst, $0C, nA2, $24, nC4, nC4
	dc.b $06, nB3, $12, $06, nBb3, $12, $06, nA3
	dc.b $4E, $06, nBb3, nB3, nC4, $2A, $06, nB3
	dc.b $12, $06, nBb3, $12, $06, nA3, $60
	sPatFM		$08
	dc.b sHold, $06, nRst, $2A

Title_Loop18:
	dc.b nD3, $12, nRst, $1E
	sLoop		$00, $06, Title_Loop18
	dc.b nD3, $12, nRst, $24
	sPatFM		$02

Title_Loop19:
	dc.b nD3, $0C, nRst, $06, nF3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nG3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nAb3, $0C, nG3, $06
	dc.b nF3, nD3, nD2, $2D, nRst, $03
	sLoop		$00, $02, Title_Loop19
	dc.b nF3, $06, nG3, nRst, nG3, $0C, $06, nF3
	dc.b nG3, nAb3, nG3, nF3, nD3, $0C, nD4, $09
	dc.b nRst, nF3, $06, nG3, nRst, nG3, $12, nF3
	dc.b $0C, nD3, nA3, nD4, nD3, nF3, $06, nG3
	dc.b nRst, nG3, $0C, $06, nF3, nG3, nAb3, nG3
	dc.b nF3, nD3, $0C, nD4, $06, nD3, $03, nRst
	dc.b nD3, nRst, nF3, $06, $06, nRst, nF3, $0C
	dc.b $06, $06, nA3, $12, $06, $06, $06, $06
	dc.b $0C, nG3, $06, nF3, nG3, nAb3, $0C, nG3
	dc.b $06, nD3, nC3

Title_Loop20:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	sLoop		$00, $02, Title_Loop20
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3
	saVolFM		$05
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nF3
	saVolFM		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3, nD3, $30, nF3, nG3, nA3, $24, nG3
	dc.b $03, nA3, $09, nD3, $30, nC3, nB2, nCs3
	dc.b nD3, nF3, nG3, nA3, $24, nC3, $06, nD3
	dc.b nRst, $0C, nF3, $06, nE3, $12, nC3, $06
	dc.b nD3, nRst, $7F, $7F, $1C
	sJump		Title_FM3

Title_FM4:
	sPan		spCenter
	sPatFM		$05
	dc.b nRst, $7F, $11
	sPatFM		$04
	dc.b nD6, $0C, nA5, nG6, nFs6, $7F, sHold, $1D
	dc.b nG6, $0C, nFs6, nD6, nA5, nRst, $7F, $7F
	dc.b $7F, $15

Title_Loop21:
	dc.b nD5, $06, nD6, nD5, nRst, $1E
	sLoop		$00, $07, Title_Loop21
	dc.b nD5, $06, nD6, nD5, nRst, $7F, $41
	sPatFM		$05
	saVolFM		$FE
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b $0C, $06, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, $1E, nRst, $06, nA4
	dc.b nA4, nA4, nA4, $09, $09, $09, nRst, $03
	dc.b nD4, $06, nC4, nD4, $09, nC4, $03, nD4
	dc.b $09, $09, nRst, $0C, nA4, $06, $0C, nD4
	dc.b $06, $06, nC4, nA4, $0C, nD4, $12, $1E
	dc.b nG4, $0C, $0C, $06, $12, nF4, $06, nG4
	dc.b nAb4, nAb4, nA4, $0C, $0C, nD4, $06, $06
	dc.b nF4, nG4, $0C, $0C, nF4, nA4, $1E, nRst
	dc.b $12, nD4, $06, nF4, nG4, nG4, nG4, $0C
	dc.b $06, nF4, nG4, nAb4, nAb4, nAb4, nA4, $0C
	dc.b nD4, $06, $06, $06, nG4, $0C, $06, $0C
	dc.b nF4, nA4, $36, nRst, $60
	sPatFM		$07
	saVolFM		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $36
	sPatFM		$07
	saVolFM		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4, $1E
	dc.b nRst, $18, nD4, $0C, $06, nA4, $0C, $06
	dc.b nF4, $0C, nE4, $24, nC4, $06, nD4, nRst
	dc.b $0C, nF4, $06, nE4, $12, nC4, $06, nD4
	dc.b nRst, $0C, nA4, $24, nRst, $7F, $11
	sPatFM		$04
	saVolFM		$02
	dc.b nD4, $0C, nA3, nG4, nFs4, $7F, sHold, $1D
	dc.b nG4, $0C, nFs4, nD4, nA3
	sPatFM		$03
	dc.b nD3, $03, nRst, nD3, nRst, nD3

Title_Loop22:
	dc.b nRst, nF4
	sLoop		$00, $05, Title_Loop22
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop23:
	dc.b nRst, nG4
	sLoop		$00, $05, Title_Loop23
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nAb4
	dc.b nRst, nAb4, nRst, nG4, nRst, nF4, nRst, nD4
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop24:
	dc.b nRst, nD4
	sLoop		$00, $05, Title_Loop24
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop25:
	dc.b nRst, nF4
	sLoop		$00, $05, Title_Loop25
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop26:
	dc.b nRst, nG4
	sLoop		$00, $05, Title_Loop26
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nAb4
	dc.b nRst, nAb4, nRst, nG4, nRst, nF4, nRst, nD4
	dc.b nRst
	sPatFM		$04
	dc.b nD4, $0C, nA3, nG4
	sPatFM		$05
	saVolFM		$FE
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b nC4, nD4, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, nRst, $06
	sPatFM		$04
	saVolFM		$02
	dc.b nG4, $0C, nFs4, nD4, nA3
	sPatFM		$05
	saVolFM		$FE
	dc.b nA4, $09, $09, $0C, nD4, $06, nC4, nD4
	dc.b nC4, nD4, nD4, $0C, nRst, nA4, $06, $0C
	dc.b nD4, $06, $06, nC4, nA4, $0C, nD4, nD4
	dc.b $24, nG4, $0C, nF4, $06, nG4, nRst, nG4
	dc.b $0C, $06, nF4, nG4, nAb4, $0C, nA4, nA4
	dc.b nD4, $06, $06, nF4, nG4, nRst, nG4, $0C
	dc.b nF4, nA4, $36, nG4, $0C, $06, $0C, $06
	dc.b nF4, nG4, nA3, nAb3, nF3, nD4, $12, $0C
	dc.b nF4, $06, $06, nRst, nC5, $0C, nG4, nA4
	dc.b $36, nRst, $30
	sPatFM		$07
	saVolFM		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $36
	sPatFM		$07
	saVolFM		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4, $1E
	dc.b nRst, $18, nD4, $0C, $06, nA4, $0C, $06
	dc.b nF4, $0C, nE4, $24, nC4, $06, nD4, nRst
	dc.b $0C, nF4, $06, nE4, $12, nC4, $06, nD4
	dc.b nRst, $60
	sPatFM		$07
	saVolFM		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nG4, $06, nA4, $0C, nG4, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $1E, nRst
	dc.b $18
	sPatFM		$07
	saVolFM		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nG4, $09, nA4, nG4, $0C, nF4, $12, nG4
	dc.b $09, nF4, nG4, $0C, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4
	sPatFM		$07
	saVolFM		$02
	dc.b nD6, $0C, $0C, $0C, $0C
	sPatFM		$05
	saVolFM		$FE
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, $0C
	dc.b nE4, $24, nC4, $06, nD4, nRst, $0C, nF4
	dc.b $06, nE4, nRst, $0C, nC4, $06, nRst
	sPatFM		$07
	saVolFM		$02
	dc.b nD3, $30, nD5, $08, $07, $08, $07, nRst
	dc.b $12, $7F, $41
	sJump		Title_FM4

Title_FM5:
	sPan		spLeft
	sPatFM		$05
	dc.b nRst

Title_Loop27:
	dc.b $59
	sLoop		$00, $0F, Title_Loop27
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b $0C, $06, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, $1E, nRst, $06, nA4
	dc.b nA4, nA4, nA4, $09, $09, $09, nRst, $03
	dc.b nD4, $06, nC4, nD4, $09, nC4, $03, nD4
	dc.b $09, $09, nRst, $0C, nA4, $06, $0C, nD4
	dc.b $06, $06, nC4, nA4, $0C, nD4, $12, $1E
	dc.b nG4, $0C, $0C, $06, $12, nF4, $06, nG4
	dc.b nAb4, nAb4, nA4, $0C, $0C, nD4, $06, $06
	dc.b nF4, nG4, $0C, $0C, nF4, nA4, $1E, nRst
	dc.b $12, nD4, $06, nF4, nG4, nG4, nG4, $0C
	dc.b $06, nF4, nG4, nAb4, nAb4, nAb4, nA4, $0C
	dc.b nD4, $06, $06, $06, nG4, $0C, $06, $0C
	dc.b nF4, nA4, $36, nRst, $5D
	sPatFM		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nA4, $33
	sPatFM		$07
	dc.b $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nE4, $36
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, nD4
	dc.b $1E, nRst, $18, nD4, $0C, $06, nA4, $0C
	dc.b $06, nF4, $0C, nE4, $24, nC4, $06, nD4
	dc.b nRst, $0C, nF4, $06, nE4, $12, nC4, $06
	dc.b nD4, nRst, $0C, nA4, $24, nRst, $7F, $7F
	dc.b $7F
	sPatFM		$03
	dc.b nD3, $03, nRst, nD3, nRst, nD3

Title_Loop28:
	dc.b nRst, nC4
	sLoop		$00, $05, Title_Loop28
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop29:
	dc.b nRst, nD4
	sLoop		$00, $05, Title_Loop29
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nEb4
	dc.b nRst, nEb4, nRst, nD4, nRst, nC4, nRst, nA3
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop30:
	dc.b nRst, nA3
	sLoop		$00, $05, Title_Loop30
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop31:
	dc.b nRst, nC4
	sLoop		$00, $05, Title_Loop31
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop32:
	dc.b nRst, nD4
	sLoop		$00, $05, Title_Loop32
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nEb4
	dc.b nRst, nEb4, nRst, nD4, nRst, nC4, nRst, nA3
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop33:
	dc.b nRst, nD4
	sLoop		$00, $04, Title_Loop33
	sPatFM		$05
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b nC4, nD4, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, $12, nRst, nAb4, $06
	dc.b $0C, nA4, $09, $09, $0C, nD4, $06, nC4
	dc.b nD4, nC4, nD4, nD4, $0C, nRst, nA4, $06
	dc.b $0C, nD4, $06, $06, nC4, nA4, $0C, nD4
	dc.b nD4, $24, nG4, $0C, nF4, $06, nG4, nRst
	dc.b nG4, $0C, $06, nF4, nG4, nAb4, $0C, nA4
	dc.b nA4, nD4, $06, $06, nF4, nG4, nRst, nG4
	dc.b $0C, nF4, nA4, $36, nG4, $0C, $06, $0C
	dc.b $06, nF4, nG4, nA3, nAb3, nF3, nD4, $12
	dc.b $0C, nF4, $06, $06, nRst, nC5, $0C, nG4
	dc.b nA4, $36, nRst, $2D
	sPatFM		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nA4, $33
	sPatFM		$07
	dc.b $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nE4, $36
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, nD4
	dc.b $1E, nRst, $18, nD4, $0C, $06, nA4, $0C
	dc.b $06, nF4, $0C, nE4, $24, nC4, $06, nD4
	dc.b nRst, $0C, nF4, $06, nE4, $12, nC4, $06
	dc.b nD4, nRst, $5D
	sPatFM		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nG4, $06, nA4, $0C, nG4, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $1E, nRst
	dc.b $15
	sPatFM		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nG4, $09, nA4, nG4, $0C, nF4, $12, nG4
	dc.b $09, nF4, nG4, $0C, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4, $03
	sPatFM		$07
	dc.b nA5, $0C, $0C, $0C, $0C, nRst, $03
	sPatFM		$05
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, $0C
	dc.b nE4, $24, nC4, $06, nD4, nRst, $0C, nF4
	dc.b $06, nE4, nRst, $0C, nC4, $06, nRst, $03
	sPatFM		$07
	dc.b nD3, $30, nA4, $08, $07, $08, $07, nRst
	dc.b $12, $7F, $41
	sJump		Title_FM5

Title_FM6:
	sPatFM		$06
	sPan		spRight
	dc.b nRst

Title_Loop34:
	dc.b $5E
	sLoop		$00, $0F, Title_Loop34
	dc.b nG4, $1E, nRst, $12, nAb4, $0C, nG4, $06
	dc.b nF4, nD4, nRst, $42, nF4, $1E, nRst, $12
	dc.b nG4, $06, nD4, $18, nRst, $12, nAb4, $0C
	dc.b nG4, $06, nF4, nD4, nRst, $7F, $7F, $7F
	dc.b $63, nG5, $06, nF5, nG5, nAb5, $0C, nG5
	dc.b $06, nD5, nC5

Title_Loop35:
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $60
	sLoop		$00, $02, Title_Loop35
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst

Title_Loop36:
	dc.b $7A
	sLoop		$00, $07, Title_Loop36
	dc.b $7C, nF4, $1E, nRst, $12, nG4, $1E, nRst
	dc.b $12, nAb4, $0C, nG4, $06, nF4, nD4, nRst
	dc.b $42, nF4, $1E, nRst, $12, nG4, $1E, nRst
	dc.b $12, nAb4, $0C, nG4, $06, nF4, nD4, nRst
	dc.b $7F, $7F, $7F, $33, nG5, $06, nF5, nG5
	dc.b nAb5, $0C, nG5, $06, nD5, nC5

Title_Loop37:
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $60
	sLoop		$00, $02, Title_Loop37
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $7F, $41, nG5
	dc.b $06, nF5, nG5, nAb5, $0C, nG5, $06, nD5
	dc.b nC5

Title_Loop38:
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $60
	sLoop		$00, $02, Title_Loop38
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $7F, $7F, $7F
	dc.b $33
	sJump		Title_FM6

Title_PSG1:
	dc.b nRst, $7F, $05, nD1, $3C, nRst, $7F, $05
	dc.b nD1, $3C

Title_Loop39:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	sLoop		$00, $02, Title_Loop39
	dc.b nRst, $7F, $7F, $7F, $03, nG0, $24, $06
	dc.b nFs0, $12, $06, nF0, $12, $06, nE0, $12
	dc.b nRst, $18, nD1, $3C

Title_Loop40:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	sLoop		$00, $02, Title_Loop40
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C
	saVolPSG	$02
	dc.b nD0, $06, nC0, nD0, nEb0, $0C, nD0, $06
	dc.b nC0, nC0
	saVolPSG	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nD0, nE0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $0C, nC0, $24, nD0, $7F, sHold
	dc.b $41, $7F, sHold, $05, nD1, $3C, nRst, $7F
	dc.b $7F, $7F, $03

Title_Loop41:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	sLoop		$00, $02, Title_Loop41
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C, nD0, $06, nC0, nD0, nEb0, $0C, nD0
	dc.b $06, nC0, nC0, nC0, $30, $30, nD0, nE0
	dc.b nC0, nC0, nD0, nE0, nC0, nC0, nD0, nE0
	dc.b $24, nC0, $06, $06, nRst, $0C, nC0, $06
	dc.b $12, $06, $06
	saVolPSG	$02
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0
	saVolPSG	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nC0, nC0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $7F, $7F, $22
	sJump		Title_PSG1

Title_PSG2:
	dc.b nRst, $7F, $05, nD1, $3C, nRst, $7F, $05
	dc.b nD1, $3C

Title_Loop42:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	sLoop		$00, $02, Title_Loop42
	dc.b nRst, $7F, $7F, $7F, $03, nG0, $24, $06
	dc.b nFs0, $12, $06, nF0, $12, $06, nE0, $12
	dc.b nRst, $18, nD1, $3C

Title_Loop43:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	sLoop		$00, $02, Title_Loop43
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C
	saVolPSG	$02
	dc.b nD0, $06, nC0, nD0, nEb0, $0C, nD0, $06
	dc.b nC0, nC0
	saVolPSG	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nD0, nE0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $0C, nC0, $24, nD0, $7F, sHold
	dc.b $41, $7F, sHold, $05, nD1, $3C, nRst, $7F
	dc.b $7F, $7F, $03

Title_Loop44:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	sLoop		$00, $02, Title_Loop44
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C, nD0, $06, nC0, nD0, nEb0, $0C, nD0
	dc.b $06, nC0, nC0, nC0, $30, $30, nD0, nE0
	dc.b nC0, nC0, nD0, nE0, nC0, nC0, nD0, nE0
	dc.b $24, nC0, $06, $06, nRst, $0C, nC0, $06
	dc.b $12, $06, $06
	saVolPSG	$02
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0
	saVolPSG	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nC0, nC0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $7F, $7F, $22
	sJump		Title_PSG2

Title_PSG3:
	dc.b nRst

Title_Loop45:
	dc.b $5E
	sLoop		$00, $0F, Title_Loop45
	dc.b nD1, $1E, nRst, $12, nEb1, $0C, nRst, $54
	dc.b nC1, $1E, nRst, $12, nD1, $1E, nRst, $12
	dc.b nEb1, $0C, nRst, $7F, $7F, $7F, $75, nD2
	dc.b $06, nC2, nD2, nEb2, $0C, nD2, $06, nA1
	dc.b nG1, nRst

Title_Loop46:
	dc.b $51
	sLoop		$00, $12, Title_Loop46
	dc.b nC1, $1E, nRst, $12, nD1, $1E, nRst, $12
	dc.b nEb1, $0C, nRst, $54, nC1, $1E, nRst, $12
	dc.b nD1, $1E, nRst, $12, nEb1, $0C, nRst, $7F
	dc.b $7F, $7F, $45, nD2, $06, nC2, nD2, nEb2
	dc.b $0C, nD2, $06, nA1, nG1, nRst, $70, $70
	dc.b $70, $70, $70, $70, nD2, $06, nC2, nD2
	dc.b nEb2, $0C, nD2, $06, nA1, nG1, nRst

Title_Loop47:
	dc.b $72
	sLoop		$00, $08, Title_Loop47
	sJump		Title_PSG3

Title_DAC:
	sStop

Title_Patches:

	; Patch $00
	; $28
	; $39, $35, $30, $31,	$1F, $1F, $1F, $1F
	; $0C, $0A, $07, $0A,	$07, $07, $07, $09
	; $26, $16, $16, $F6,	$17, $32, $14, $00
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$03, $03, $03, $03
	spMultiple	$09, $00, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $07, $0A, $0A
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $07, $07, $09
	spReleaseRt	$06, $06, $06, $06
	spTotalLv	$17, $14, $32, $00

	; Patch $01
	; $2A
	; $30, $70, $08, $01,	$1F, $1F, $1F, $1F
	; $08, $10, $0E, $0C,	$00, $03, $06, $05
	; $30, $20, $29, $28,	$22, $14, $2A, $00
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$03, $00, $07, $00
	spMultiple	$00, $08, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0E, $10, $0C
	spSustainLv	$03, $02, $02, $02
	spDecayRt	$00, $06, $03, $05
	spReleaseRt	$00, $09, $00, $08
	spTotalLv	$22, $2A, $14, $00

	; Patch $02
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1E, $15, $1D, $01
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $06, $02, $02
	spMultiple	$03, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $05, $0B
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $08, $08
	spTotalLv	$1E, $1D, $15, $01

	; Patch $03
	; $10
	; $35, $76, $70, $30,	$DF, $DF, $5F, $5F
	; $06, $08, $09, $09,	$06, $03, $03, $01
	; $26, $16, $06, $26,	$21, $34, $19, $00
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$03, $07, $07, $03
	spMultiple	$05, $00, $06, $00
	spRateScale	$03, $01, $03, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $09, $08, $09
	spSustainLv	$02, $00, $01, $02
	spDecayRt	$06, $03, $03, $01
	spReleaseRt	$06, $06, $06, $06
	spTotalLv	$21, $19, $34, $00

	; Patch $04
	; $3A
	; $32, $01, $52, $31,	$1F, $1F, $1F, $18
	; $01, $1F, $00, $00,	$00, $0F, $00, $00
	; $5A, $0F, $03, $1A,	$3B, $30, $4F, $00
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $00, $03
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $00, $1F, $00
	spSustainLv	$05, $00, $00, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0A, $03, $0F, $0A
	spTotalLv	$3B, $4F, $30, $00

	; Patch $05
	; $2A
	; $01, $08, $06, $04,	$53, $1F, $1F, $50
	; $12, $14, $11, $1F,	$00, $00, $00, $00
	; $29, $15, $36, $0B,	$17, $33, $1C, $00
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $06, $08, $04
	spRateScale	$01, $00, $00, $01
	spAttackRt	$13, $1F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $11, $14, $1F
	spSustainLv	$02, $03, $01, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$09, $06, $05, $0B
	spTotalLv	$17, $1C, $33, $00

	; Patch $06
	; $3B
	; $3E, $42, $41, $33,	$DE, $14, $1E, $14
	; $14, $0F, $0F, $00,	$01, $00, $00, $00
	; $36, $25, $26, $29,	$1F, $1E, $19, $00
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $04, $04, $03
	spMultiple	$0E, $01, $02, $03
	spRateScale	$03, $00, $00, $00
	spAttackRt	$1E, $1E, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$14, $0F, $0F, $00
	spSustainLv	$03, $02, $02, $02
	spDecayRt	$01, $00, $00, $00
	spReleaseRt	$06, $06, $05, $09
	spTotalLv	$1F, $19, $1E, $00

	; Patch $07
	; $3B
	; $00, $71, $71, $01,	$1F, $16, $0F, $12
	; $00, $00, $00, $88,	$00, $00, $00, $00
	; $00, $01, $01, $16,	$19, $17, $19, $00
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $07, $07, $00
	spMultiple	$00, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0F, $16, $12
	spAmpMod	$00, $00, $00, $01
	spSustainRt	$00, $00, $00, $08
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $01, $01, $06
	spTotalLv	$19, $19, $17, $00

	; Patch $08
	; $2C
	; $70, $40, $21, $60,	$9F, $1F, $1F, $5F
	; $0C, $09, $0C, $15,	$04, $04, $06, $06
	; $56, $46, $46, $4F,	$0C, $00, $10, $00
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $02, $04, $06
	spMultiple	$00, $01, $00, $00
	spRateScale	$02, $00, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $09, $15
	spSustainLv	$05, $04, $04, $04
	spDecayRt	$04, $06, $04, $06
	spReleaseRt	$06, $06, $06, $0F
	spTotalLv	$0C, $10, $00, $00
