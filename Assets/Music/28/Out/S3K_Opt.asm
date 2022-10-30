Nepu_DimTrip_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Nepu_DimTrip_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $06

	smpsHeaderDAC       Nepu_DimTrip_DAC
	smpsHeaderFM        Nepu_DimTrip_FM1,	$00, $1E
	smpsHeaderFM        Nepu_DimTrip_FM2,	$00, $1E
	smpsHeaderFM        Nepu_DimTrip_FM3,	$00, $1E
	smpsHeaderFM        Nepu_DimTrip_FM4,	$00, $1E
	smpsHeaderFM        Nepu_DimTrip_FM5,	$00, $1E
	smpsHeaderFM        Nepu_DimTrip_FM6,	$00, $1E
	smpsHeaderPSG       Nepu_DimTrip_PSG1,	$00, $08, $00, $00
	smpsHeaderPSG       Nepu_DimTrip_PSG2,	$00, $08, $00, $00
	smpsHeaderPSG       Nepu_DimTrip_PSG3,	$00, $08, $00, $00

; FM1 Data
Nepu_DimTrip_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $10, nB4, $08, nB3, $04, nB4, nB3, nBb4, nB4, nB3, nB3
	dc.b	nCs5, nB4, nB3, nBb4, nB3, nB4, nB3, nB4, $08, nB3, $04, nB4
	dc.b	nB3, nBb4, nB4, nB3, nB3, nCs5, nB4, nB3, nCs5, nB3, nEb5, nB3
	dc.b	nB4, $08, $04, nBb4, nB3, nAb4, nFs4, nB3, nE4, $08, nB3, $04
	dc.b	nEb4, nB3, nCs4, nEb4, nB3, nB4, $08, nB3, $04, nA4, nB3, nG4
	dc.b	nFs4, nB3, nA4, $08, nB3, $04, nB4, nB3, nCs5, nB3, nRst, nB4
	dc.b	$08, nB3, $04, nB4, nB3, nBb4, nB3, nB4, nB3, nCs5, nB4, nB3
	dc.b	nBb4, nB3, nB4, nB3, nB4, $08, nB3, $04, nB4, nB3, nBb4, nB3
	dc.b	nB4, nB3, nCs5, nB4, nB3, nCs5, nB3, nEb5, nB3, nB4, $08, $04
	dc.b	nBb4, nB3, nAb4, nFs4, nB3, nE4, $08, nB3, $04, nEb4, nB3, nCs4
	dc.b	nEb4, nB3, nB4, $08, nB3, $04, nA4, nB3, nG4, nFs4, nB3, nA4
	dc.b	$08, nB3, $04, nRst

Nepu_DimTrip_Jump05:
	dc.b	nB3, $04, nCs5, nE5, nRst, nEb5, $08, nRst, $04, nE5, nRst, nFs5
	dc.b	nE5, nEb5, nB4, $10, nRst, $7F, nRst, $79
	smpsSetvoice        $04
	dc.b	nRst, $04, nG5, $02, nRst, $0E, nA5, $02, nRst, $7F, nRst, $67
	dc.b	nFs5, $02, nRst, nFs5, nRst, $06, nFs5, $02, nRst, $06, nE5, $02
	dc.b	nRst, $7F, nRst, $6B, nFs5, $02, nRst, nFs5, nRst, nFs5, nRst, $7F
	dc.b	nRst, $5B
	smpsSetvoice        $00
	dc.b	nRst, $04, nFs4, nB4, nEb5, nE5, nFs5, nAb5, $08, nFs5, $04, nE5
	dc.b	nEb5, nCs5, nE5, nCs5, nEb5, $10, nRst, $70, nE4, $14, nB4, $0C
	dc.b	nFs4, $14, nCs5, $0C, nB4, $10, nRst, nEb5, $06, nRst, $02, nEb5
	dc.b	$04, nCs5, nCs5, nB4, nCs5, nRst, nEb5, $08, nB3, $04, nRst, nB3
	dc.b	nBb4, nB4, nB3, nB3, nCs5, nB4, nB3, nBb4, nB3, nB4, nB3, nB4
	dc.b	$08, nB3, $04, nB4, nB3, nBb4, nB4, nB3, nB3, nCs5, nB4, nB3
	dc.b	nCs5, nB3, nEb5, nB3, nB4, $08, $04, nBb4, nB3, nAb4, nFs4, nB3
	dc.b	nE4, $08, nB3, $04, nEb4, nB3, nCs4, nEb4, nB3, nB4, $08, nB3
	dc.b	$04, nA4, nB3, nG4, nFs4, nB3, nA4, $08, nB3, $04, nB4, nB3
	dc.b	nCs5, nB3, nRst, nB4, $08, nB3, $04, nB4, nB3, nBb4, nB3, nB4
	dc.b	nB3, nCs5, nB4, nB3, nBb4, nB3, nB4, nB3, nB4, $08, nB3, $04
	dc.b	nB4, nB3, nBb4, nB3, nB4, nB3, nCs5, nB4, nB3, nCs5, nB3, nEb5
	dc.b	nB3, nB4, $08, $04, nBb4, nB3, nAb4, nFs4, nB3, nE4, $08, nB3
	dc.b	$04, nEb4, nB3, nCs4, nEb4, nB3, nB4, $08, nB3, $04, nA4, nB3
	dc.b	nG4, nFs4, nB3, nA4, $08, nB3, $04, nB4
	smpsJump            Nepu_DimTrip_Jump05

; FM2 Data
Nepu_DimTrip_FM2:
	smpsSetvoice        $00
	dc.b	nRst

Nepu_DimTrip_Loop29:
	dc.b	$40
	smpsLoop            $00, $08, Nepu_DimTrip_Loop29

Nepu_DimTrip_Jump04:
	dc.b	nRst, $7F, nRst, $7F, nRst, $3A
	smpsSetvoice        $05
	dc.b	nRst, $04, nG5, $02, nRst, $0E, nA5, $02, nRst, $7F, nRst, $67
	dc.b	nFs5, $02, nRst, nFs5, nRst, $06, nFs5, $02, nRst, $06, nE5, $02
	dc.b	nRst, $7F, nRst, $6B, nFs5, $02, nRst, nFs5, nRst, nFs5, nRst, $7F
	dc.b	nRst, $43
	smpsSetvoice        $08
	dc.b	nRst, $18
	smpsSetvoice        $00
	dc.b	nRst, $04, nEb4, nFs4, nB4, nCs5, nEb5, nE5, $08, nEb5, $04, nCs5
	dc.b	nB4, nBb4, nCs5, nBb4, nB4, $10, nRst, $7F, nRst, $51, nB4, $06
	dc.b	nRst, $02, nB4, $04, nBb4, nBb4, nAb4, nBb4, nRst, nB4, $08, nB3
	dc.b	$04, nB4, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $63
	smpsJump            Nepu_DimTrip_Jump04

; FM3 Data
Nepu_DimTrip_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $10, nB2, $08, $04

Nepu_DimTrip_Loop20:
	dc.b	nRst, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop20
	dc.b	nRst, nF2, $08, $04

Nepu_DimTrip_Loop21:
	dc.b	nRst, nF2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop21
	dc.b	nRst, nE2, $08, $04, nRst, $14, nE2, $08, $04, nRst, $14, nD2
	dc.b	$08, $04, nRst, $14, nA2, $08, $04, nRst, $14, nB2, $08, $04

Nepu_DimTrip_Loop22:
	dc.b	nRst, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop22
	dc.b	nRst, nF2, $08, $04

Nepu_DimTrip_Loop23:
	dc.b	nRst, nF2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop23
	dc.b	nRst, nE2, $08, $04, nRst, $14, nE2, $08, $04, nRst, $14, nD2
	dc.b	$08, $04, nRst, $14, nA2, $08, $04, nRst

Nepu_DimTrip_Jump03:
	dc.b	nRst, $10, nB2, nRst, $08, nB2, $04, nRst, nB2, nRst, $14, nFs2
	dc.b	$0C, nRst, $7F, nRst, $49, nE2, $04, nRst, $1C, nG2, $02, nRst
	dc.b	$0E, nA2, $02, nRst, $0E, nB1, $02, nRst, $06, nB1, $02, nRst
	dc.b	$0A, nB1, $02, nRst, $06, nB1, $02, nRst, $2A, nB1, $02, nRst
	dc.b	$0A, nB1, $02, nRst, $06, nB1, $02, nRst, $0A, nE2, $04, nFs2
	dc.b	$02, nRst, $06, nAb2, $02, nRst, $1E, nFs2, $02, nRst, $1E, nE2
	dc.b	$02, nRst, $16, nE2, $02, nRst, $0A, nFs2, $02, nRst, nE2, nRst
	dc.b	nF2, nRst, nFs2, nRst, $06, nE2, $02, nRst, $0A, nEb3, $02, nRst
	dc.b	$06, nEb3, $02, nRst, $12, nEb3, $02, nRst, $06, nE3, $02, nRst
	dc.b	nE3, nRst, $12, nFs2, $02, nRst, $1E, nAb2, $02, nRst, $22, nEb2
	dc.b	$02, nRst, $0E, nEb2, $02, nRst, $0A, nEb2, $02, nRst, $06, nE2
	dc.b	$02, nRst, $0A, nE2, $02, nRst, $0A, nFs2, $02, nRst, $06

Nepu_DimTrip_Loop24:
	dc.b	nE2, $02, nRst, nF2, nRst, nFs2, nRst
	smpsLoop            $00, $02, Nepu_DimTrip_Loop24
	dc.b	nE2, nRst, nFs2, nRst, nFs2, nRst, nFs2, $08, nRst, $0C, nB2, $04
	dc.b	nRst, nB2, nB2, nB2, nB2, nB2, nB2, nE2, nRst, nE2, nE2, nE2
	dc.b	nE2, nE2, nE2, nEb2, nRst, nEb2, nEb2, nEb2, nEb2, nEb2, nEb2, nAb2
	dc.b	nRst, nAb2, nAb2, nAb2, nAb2, nAb2, nAb2, nCs3, nRst, nCs3, nCs3, nCs3
	dc.b	nCs3, nCs3, nCs3, nFs2, nRst, nFs2, nFs2, nFs2, nFs2, nFs2, nFs2, nB2
	dc.b	nRst, nB2, nB2, nB2, nB2, nB2, nB2, nBb2, nRst, nBb2, nBb2, nBb2
	dc.b	nEb3, nEb3, nEb3, nAb2, nRst, nAb2, nAb2, nAb2, nAb2, nAb2, nAb2, nG2
	dc.b	nRst, nG2, nG2, nG2, nG2, nG2, nG2, nFs2, nRst, nFs2, nFs2, nFs2
	dc.b	nFs2, nFs2, nFs2, nF2, nRst, nF2, nF2, nF2, nF2, nF2, nF2, nCs3
	dc.b	nRst, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nEb3, nRst, nEb3, nEb3, nEb3
	dc.b	nEb3, nEb3, nEb3, nE3, nRst, nE3, nE3, nE3, nE3, nE3, nE3, nFs2
	dc.b	$02, nRst, $1E, nB2, $08, $04

Nepu_DimTrip_Loop25:
	dc.b	nRst, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop25
	dc.b	nRst, nF2, $08, $04

Nepu_DimTrip_Loop26:
	dc.b	nRst, nF2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop26
	dc.b	nRst, nE2, $08, $04, nRst, $14, nE2, $08, $04, nRst, $14, nD2
	dc.b	$08, $04, nRst, $14, nA2, $08, $04, nRst, $14, nB2, $08, $04

Nepu_DimTrip_Loop27:
	dc.b	nRst, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop27
	dc.b	nRst, nF2, $08, $04

Nepu_DimTrip_Loop28:
	dc.b	nRst, nF2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop28
	dc.b	nRst, nE2, $08, $04, nRst, $14, nE2, $08, $04, nRst, $14, nD2
	dc.b	$08, $04, nRst, $14, nA2, $08, $04, nRst
	smpsJump            Nepu_DimTrip_Jump03

; FM4 Data
Nepu_DimTrip_FM4:
	smpsSetvoice        $02
	dc.b	nRst, $04, nA2, nA2, nA2, nRst, $08

Nepu_DimTrip_Loop0E:
	dc.b	nB3, $04, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop0E
	dc.b	nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop0F:
	dc.b	nF3, $04, nF2
	smpsLoop            $00, $07, Nepu_DimTrip_Loop0F

Nepu_DimTrip_Loop10:
	dc.b	nRst, $08, nE3, $04, nE2, nE2, nE2, nE3, nE2
	smpsLoop            $00, $02, Nepu_DimTrip_Loop10
	dc.b	nRst, $08, nD3, $04, nD2, nD2, nD2, nD3, nD2, nRst, $08, nA3
	dc.b	$04, nA2, nA2, nA2, nA3, nA2, nRst, $08

Nepu_DimTrip_Loop11:
	dc.b	nB3, $04, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop11
	dc.b	nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop12:
	dc.b	nF3, $04, nF2
	smpsLoop            $00, $07, Nepu_DimTrip_Loop12
	dc.b	nRst, $08, nE3, $04, nE2, nE2, nE2, nE3, nE2, nRst, $08, nE3
	dc.b	$04, nD2, nD2, nD2, nE3, nD2, nRst, $08, nD3, $04, nF2, nF2
	dc.b	nF2, nD3, nF2, nRst, $08, nA3, $04, nA2

Nepu_DimTrip_Jump02:
	dc.b	nA2, $04, $04, nA3, nA2, nRst, $38, nFs3, $0C

Nepu_DimTrip_Loop13:
	dc.b	nB2, $02, nRst
	smpsLoop            $00, $10, Nepu_DimTrip_Loop13

Nepu_DimTrip_Loop14:
	dc.b	nE3, nRst
	smpsLoop            $00, $10, Nepu_DimTrip_Loop14

Nepu_DimTrip_Loop15:
	dc.b	nB2, nRst
	smpsLoop            $00, $0F, Nepu_DimTrip_Loop15
	dc.b	nB2, nRst, $0A, nE3, $02, nRst, nE3, nRst, $12, nG2, $02, nRst
	dc.b	nG2, nRst, $0A, nA2, $02, nRst, nA2, nRst, $0A

Nepu_DimTrip_Loop16:
	dc.b	nB2, $02, nRst
	smpsLoop            $00, $10, Nepu_DimTrip_Loop16

Nepu_DimTrip_Loop17:
	dc.b	nE2, nRst
	smpsLoop            $00, $0B, Nepu_DimTrip_Loop17
	dc.b	nE2, nRst, $16, nAb2, $02, nRst, nAb2, nRst, nAb2, nRst, nB2, nRst
	dc.b	nBb2, nRst, nAb2, nRst, $0A, nFs2, $02, nRst, nFs2, nRst, nFs2, nRst
	dc.b	nBb2, nRst, nAb2, nRst, nFs2, nRst, $0A

Nepu_DimTrip_Loop18:
	dc.b	nE2, $02, nRst
	smpsLoop            $00, $07, Nepu_DimTrip_Loop18
	dc.b	nFs3, nRst, nE3, nRst, nF3, nRst, nFs3, nRst, $06, nE3, $02, nRst
	dc.b	$3A, nE2, $02, nRst, nE2, nRst, nE2, nRst, $0A

Nepu_DimTrip_Loop19:
	dc.b	nFs2, $02, nRst
	smpsLoop            $00, $05, Nepu_DimTrip_Loop19
	dc.b	nFs2, nRst, $0A

Nepu_DimTrip_Loop1A:
	dc.b	nAb2, $02, nRst
	smpsLoop            $00, $07, Nepu_DimTrip_Loop1A
	dc.b	nEb2, nRst, $06, nEb2, $02, nRst, nEb2, nRst, nEb2, nRst, $0A, nEb2
	dc.b	$02, nRst, $06, nE2, $02, nRst, nE2, nRst, nE2, nRst, nE2, nRst
	dc.b	$2A
	smpsSetvoice        $05
	dc.b	nRst, $04, nCs5, $02, nRst, nCs5, nRst, nCs5, nRst
	smpsSetvoice        $02
	dc.b	$04, nFs2, $02, nRst, nFs2, nRst, $0E, nB3, $04, nB2, nB2, nB2
	dc.b	nB2, nB2, nRst, $08, nE2, $04, $04, $04, $04, $04, $04, nRst
	dc.b	$08, nEb2, $04, $04, $04, $04, $04, $04, nRst, $08, nAb2, $04
	dc.b	$04, $04, $04, nBb2, nC3, nRst, $08, nCs3, $04, $04, $04, $04
	dc.b	$04, $04, nRst, $08, nFs2, $04, $04, $04, $04, $04, $04, nRst
	dc.b	$08, nB2, $04, $04, $04, $04, $04, $04, nRst, $08, nBb2, $04
	dc.b	$04, $04, $04, $04, $04, nRst, $08, nAb2, $04, $04, $04, $04
	dc.b	nAb3, nAb2, nRst, $08, nG2, $04, $04, $04, $04, nB3, nD4, nRst
	dc.b	$08, nFs2, $04, $04, $04, $04, $04, $04, nRst, $08, nF2, $04
	dc.b	$04, $04, $04, $04, $04, nRst, $08, nCs3, $04, $04, $04, $04
	dc.b	$04, $04, nRst, $08, nEb3, $04, $04, $04, $04, $04, $04, nRst
	dc.b	$08, nE3, $04, $04, $04, $04, $04, $04, nFs3, $02, nRst, $26

Nepu_DimTrip_Loop1B:
	dc.b	nB3, $04, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop1B
	dc.b	nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop1C:
	dc.b	nF3, $04, nF2
	smpsLoop            $00, $07, Nepu_DimTrip_Loop1C

Nepu_DimTrip_Loop1D:
	dc.b	nRst, $08, nE3, $04, nE2, nE2, nE2, nE3, nE2
	smpsLoop            $00, $02, Nepu_DimTrip_Loop1D
	dc.b	nRst, $08, nD3, $04, nD2, nD2, nD2, nD3, nD2, nRst, $08, nA3
	dc.b	$04, nA2, nA2, nA2, nA3, nA2, nRst, $08

Nepu_DimTrip_Loop1E:
	dc.b	nB3, $04, nB2
	smpsLoop            $00, $06, Nepu_DimTrip_Loop1E
	dc.b	nAb2, nFs2, nRst, $08

Nepu_DimTrip_Loop1F:
	dc.b	nF3, $04, nF2
	smpsLoop            $00, $07, Nepu_DimTrip_Loop1F
	dc.b	nRst, $08, nE3, $04, nE2, nE2, nE2, nE3, nE2, nRst, $08, nE3
	dc.b	$04, nD2, nD2, nD2, nE3, nD2, nRst, $08, nD3, $04, nF2, nF2
	dc.b	nF2, nD3, nF2, nRst, $08, nA3, $04, nA2
	smpsJump            Nepu_DimTrip_Jump02

; FM5 Data
Nepu_DimTrip_FM5:
	smpsSetvoice        $03
	dc.b	nRst, $7F, nRst, $25

Nepu_DimTrip_Loop03:
	dc.b	nE3, $04, $04, $04, nRst, $14
	smpsLoop            $00, $02, Nepu_DimTrip_Loop03
	dc.b	nD3, $04, $04, $04, nRst, $14, nA3, $04, $04, $04, nRst, $7F
	dc.b	nRst, $15

Nepu_DimTrip_Loop04:
	dc.b	nE3, $04, $04, $04, nRst, $14
	smpsLoop            $00, $02, Nepu_DimTrip_Loop04
	dc.b	nD3, $04, $04, $04, nRst, $10

Nepu_DimTrip_Jump01:
	dc.b	nRst, $04, nA3, nA3, nA3, nRst, $28, nE3, $04, nEb3, nE3, nE3
	dc.b	nRst, $0C

Nepu_DimTrip_Loop05:
	dc.b	nB3, $02, nRst
	smpsLoop            $00, $10, Nepu_DimTrip_Loop05

Nepu_DimTrip_Loop06:
	dc.b	nE4, nRst
	smpsLoop            $00, $10, Nepu_DimTrip_Loop06

Nepu_DimTrip_Loop07:
	dc.b	nB3, nRst
	smpsLoop            $00, $10, Nepu_DimTrip_Loop07
	dc.b	nE3, nRst, nE3, nE3, nRst, $08

Nepu_DimTrip_Loop08:
	dc.b	nE3, $02, nRst
	smpsLoop            $00, $04, Nepu_DimTrip_Loop08
	dc.b	nG3, nRst, nG3
	smpsSetvoice        $06
	dc.b	nRst, nG6, nRst
	smpsSetvoice        $03
	dc.b	$04, nA3, $02, nRst, nA3
	smpsSetvoice        $06
	dc.b	nRst, nA6, nRst
	smpsSetvoice        $03
	dc.b	$04

Nepu_DimTrip_Loop09:
	dc.b	nB3, $02, nRst, nB3, nRst, $06, nB3, $02, nRst, $06
	smpsLoop            $00, $02, Nepu_DimTrip_Loop09

Nepu_DimTrip_Loop0A:
	dc.b	nB3, $02, nRst
	smpsLoop            $00, $06, Nepu_DimTrip_Loop0A
	dc.b	nE3, nRst, nE3, nRst, nE3

Nepu_DimTrip_Loop0B:
	dc.b	nRst, nE3, nRst, $06, nE3, $02
	smpsLoop            $00, $02, Nepu_DimTrip_Loop0B
	dc.b	nRst, $06, nE3, $02, nRst, nE3, nRst, $16, nAb3, $02, nRst, nAb3
	dc.b	nRst, nAb3, nRst, nE4, nRst, nB3, nRst, nAb3, nRst, $0A, nFs3, $02
	dc.b	nRst, nFs3, nRst, nFs3, nRst, nBb3, nRst, nAb3, nRst, nFs3, nRst, $0A
	dc.b	nE3, $02, nRst, nE3, nRst, nE3, nRst, nE3, nRst, $06, nE3, $02
	dc.b	nRst, nE3
	smpsSetvoice        $07
	dc.b	nRst, nFs5, nRst, nFs5, nRst, $06, nFs5, $02, nRst, $06, nE5, $02
	dc.b	nRst, $36
	smpsSetvoice        $03
	dc.b	nRst, $04, nE3, $02, nRst, nE3, nRst, nE3, nRst, $0A

Nepu_DimTrip_Loop0C:
	dc.b	nFs3, $02, nRst
	smpsLoop            $00, $05, Nepu_DimTrip_Loop0C
	dc.b	nFs3, nRst, $0A, nAb3, $02, nRst, nFs3, nRst, nAb3, nRst, nB3, nRst
	dc.b	nBb3, nRst, nAb3, nRst, nFs3, nRst, $0A, nEb3, $02, nRst, nEb3, nRst
	dc.b	$0A, nEb3, $02, nRst, $06, nEb3, $02, nRst, $06, nE3, $02, nRst
	dc.b	nE3, nRst, $0A, nE3, $02, nRst, $22
	smpsSetvoice        $07
	dc.b	nRst, $04, nFs5, $02, nRst, nFs5, nRst, nFs5, nRst, $70, nRst, $70
	dc.b	nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $02
	smpsSetvoice        $03
	dc.b	nRst, $04, nE3, nE3, nE3, nRst, $14, nE3, $04, $04, $04, nRst
	dc.b	$14, nD3, $04, $04, $04, nRst, $14, nA3, $04, $04, $04, nRst
	dc.b	$7F, nRst, $15

Nepu_DimTrip_Loop0D:
	dc.b	nE3, $04, $04, $04, nRst, $14
	smpsLoop            $00, $02, Nepu_DimTrip_Loop0D
	dc.b	nD3, $04, $04, $04, nRst, $10
	smpsJump            Nepu_DimTrip_Jump01

; FM6 Data
Nepu_DimTrip_FM6:
	smpsSetvoice        $04
	dc.b	nRst

Nepu_DimTrip_Loop00:
	dc.b	$40
	smpsLoop            $00, $08, Nepu_DimTrip_Loop00

Nepu_DimTrip_Jump00:
	dc.b	nRst

Nepu_DimTrip_Loop01:
	dc.b	$52
	smpsLoop            $00, $0A, Nepu_DimTrip_Loop01
	dc.b	nCs5, $02, nRst, nCs5, nRst, nCs5, nRst

Nepu_DimTrip_Loop02:
	dc.b	$72
	smpsLoop            $00, $09, Nepu_DimTrip_Loop02
	smpsJump            Nepu_DimTrip_Jump00

; PSG1 Data
Nepu_DimTrip_PSG1:
	dc.b	nRst

Nepu_DimTrip_Loop2C:
	dc.b	$40
	smpsLoop            $00, $08, Nepu_DimTrip_Loop2C

Nepu_DimTrip_Jump08:
	dc.b	nRst, $5C, nFs1, $02, nRst, nFs1, nRst, nFs1, nRst, nAb1, $06, nRst
	dc.b	$02, nFs1, $08, nRst, $10

Nepu_DimTrip_Loop2D:
	dc.b	nFs1, $02, nRst
	smpsLoop            $00, $04, Nepu_DimTrip_Loop2D
	dc.b	nE1, $06, nRst, $02, nB0, $08, nRst, $34, nFs1, $06, nRst, $02
	dc.b	nB1, nRst, nBb1, $06, nRst, $02, nFs1, $06, nRst, $12, nFs1, $06
	dc.b	nRst, $02, nFs1, nRst, nFs1, nRst, nE1, $06, nRst, $02, nB1, $10
	dc.b	nRst, $2C, nFs1, $02, nRst, nFs1, nRst, nFs1, nRst, nAb1, $06, nRst
	dc.b	$02, nFs1, $08, nRst, $10, nFs1, $06, nRst, $02, nFs1, nRst, nFs1
	dc.b	nRst, nE1, $06, nRst, $02, nE1, $06, nRst, $02, nEb1, $06, nRst
	dc.b	$02, nE1, $06, nRst, $02, nEb1, nRst, nB0, $06, nRst, $02, nB0
	dc.b	nRst, nCs1, $06, nRst, $02, nEb1, $06, nRst, $02, nEb1, nRst, nEb1
	dc.b	nRst, nEb1, nRst, nE1, nRst, nEb1, $06, nRst, $02, nCs1, $06, nRst
	dc.b	$02, nCs1, nRst, nCs1, nRst, nCs1, nRst, nEb1, nRst, nCs1, $06, nRst
	dc.b	$02, nCs1, $06, nRst, $02, nB0, nRst, nB0, $14, nRst, $2C, nCs1
	dc.b	$06, nRst, $02, nFs1, $06, nRst, $02, nBb0, nRst, nBb0, $06, nRst
	dc.b	$02, nB0, nRst, nB0, $08, nRst, $04, nBb0, $02, nRst, nB0, nRst
	dc.b	nCs1, $06, nRst, $02, nCs1, nRst, nCs1, nRst, nCs1, nRst, nB0, nRst
	dc.b	nCs1, $06, nRst, $02, nEb1, $0E, nRst, $1E, nCs1, $06, nRst, $02
	dc.b	nFs1, $06, nRst, $02, nBb0, nRst, nBb0, $06, nRst, $02, nB0, nRst
	dc.b	nB0, $06, nRst, $02, nBb0, nRst, nB0, $06, nRst, $02, nFs1, $20
	smpsPSGvoice        fTone_0D
	dc.b	nRst, $04, nCs2, $02, nRst, nCs2, nRst, nCs2, nRst
	smpsPSGvoice        $00
	dc.b	$04, nBb0, $02, nRst, nCs1, $06

Nepu_DimTrip_Loop2E:
	dc.b	nRst, $02, nB1, $18, nRst, $04, nCs2, $02
	smpsLoop            $00, $02, Nepu_DimTrip_Loop2E
	dc.b	nRst, nB1, $0A, nRst, $02, nBb1, $06, nRst, $02, nB1, nRst, nCs2
	dc.b	nRst, $06, nCs2, nRst, $02, nEb2, nRst, nEb2, $08, nRst, $04, nEb2
	dc.b	$02, nRst, nCs2, nRst, nB1, $08, nBb1, $02, nRst, nB1, nRst, nBb1
	dc.b	nRst, nB1, nRst, nCs2, $06, nRst, $02, nB1, $06, nRst, $02, nB1
	dc.b	nRst, nBb1, nRst, nBb1, nRst, nAb1, nRst, nBb1, $06, nRst, $02, nFs1
	dc.b	$0E, nRst, $26, nEb1, $04, nFs1, $06, nRst, $02, nB1, $1A, nRst
	dc.b	$02, nCs2, nRst, nB1, $18, nRst, $04, nCs2, $02, nRst, nB1, $0A
	dc.b	nRst, $02, nBb1, $06, nRst, $02, nB1, nRst, nCs2, nRst, $06, nCs2
	dc.b	nRst, $02, nEb2, nRst, nEb2, $08, nRst, $04, nAb1, $02, nRst, nB1
	dc.b	nRst, nE2, $06, nRst, $02, nE2, nRst, nEb2, $04, nRst, nCs2, nB1
	dc.b	$06, nRst, $02, nB1, $10, nRst, $08, nAb1, $02, nRst, nB1, nRst
	dc.b	nE2, $0A, nRst, $02, nEb2, $06, nRst, $02, nB1, $0A, nRst, $02
	dc.b	nB1, $06, nRst, $02, nB1, $04, nBb1, nBb1, nAb1, nBb1, nRst, nB1
	dc.b	$10, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $63
	smpsJump            Nepu_DimTrip_Jump08

; PSG2 Data
Nepu_DimTrip_PSG2:
	dc.b	nRst, $10, nB1, $08, nB0, $04, nB1, nB0, nBb1, nB1, nB0, nB0
	dc.b	nCs2, nB1, nB0, nBb1, nB0, nB1, nB0, nB1, $08, nB0, $04, nB1
	dc.b	nB0, nBb1, nB1, nB0, nB0, nCs2, nB1, nB0, nCs2, nB0, nEb2, nB0
	dc.b	nB1, $08, $04, nBb1, nB0, nAb1, nFs1, nB0, nE1, $08, nB0, $04
	dc.b	nEb1, nB0, nCs1, nEb1, nB0, nB1, $08, nB0, $04, nA1, nB0, nG1
	dc.b	nFs1, nB0, nA1, $08, nB0, $04, nB1, nB0, nCs2, nB0, nRst, nB1
	dc.b	$08, nB0, $04, nB1, nB0, nBb1, nB0, nB1, nB0, nCs2, nB1, nB0
	dc.b	nBb1, nB0, nB1, nB0, nB1, $08, nB0, $04, nB1, nB0, nBb1, nB0
	dc.b	nB1, nB0, nCs2, nB1, nB0, nCs2, nB0, nEb2, nB0, nB1, $08, $04
	dc.b	nBb1, nB0, nAb1, nFs1, nB0, nE1, $08, nB0, $04, nEb1, nB0, nCs1
	dc.b	nEb1, nB0, nB1, $08, nB0, $04, nA1, nB0, nG1, nFs1, nB0, nA1
	dc.b	$08, nB0, $04, nB1

Nepu_DimTrip_Jump07:
	dc.b	nB0, $04, nCs2, nE2, nRst, nEb2, $08, nRst, $04, nE2, nRst, nFs2
	dc.b	nE2, nEb2, nB1, $10, nRst, $7F, nRst, $7D
	smpsPSGvoice        fTone_01
	dc.b	nG1, $02, nRst, $0E, nA1, $02, nRst, $2A, nC0, $02, nRst, nC0
	dc.b	nRst, nCs0, nRst, nEb0, nRst, nCs0, nRst, nC0, nRst, nC0, nRst, $7F
	dc.b	nRst, $23, nFs1, $02, nRst, nFs1, nRst, $06, nFs1, $02, nRst, $06
	dc.b	nE1, $02, nRst, $7F, nRst, $6B, nFs1, $02, nRst, nFs1, nRst, nFs1
	dc.b	nRst, $7F, nRst, $5B
	smpsPSGvoice        $00
	dc.b	nRst, $04, nFs1, nB1, nEb2, nE2, nFs2, nAb2, $08, nFs2, $04, nE2
	dc.b	nEb2, nCs2, nE2, nCs2, nEb2, $10, nRst, $70, nE1, $14, nB1, $0C
	dc.b	nFs1, $14, nCs2, $0C, nB1, $10, nRst, nEb2, $06, nRst, $02, nEb2
	dc.b	$04, nCs2, nCs2, nB1, nCs2, nRst, nEb2, $08, nB0, $04, nRst, nB0
	dc.b	nBb1, nB1, nB0, nB0, nCs2, nB1, nB0, nBb1, nB0, nB1, nB0, nB1
	dc.b	$08, nB0, $04, nB1, nB0, nBb1, nB1, nB0, nB0, nCs2, nB1, nB0
	dc.b	nCs2, nB0, nEb2, nB0, nB1, $08, $04, nBb1, nB0, nAb1, nFs1, nB0
	dc.b	nE1, $08, nB0, $04, nEb1, nB0, nCs1, nEb1, nB0, nB1, $08, nB0
	dc.b	$04, nA1, nB0, nG1, nFs1, nB0, nA1, $08, nB0, $04, nB1, nB0
	dc.b	nCs2, nB0, nRst, nB1, $08, nB0, $04, nB1, nB0, nBb1, nB0, nB1
	dc.b	nB0, nCs2, nB1, nB0, nBb1, nB0, nB1, nB0, nB1, $08, nB0, $04
	dc.b	nB1, nB0, nBb1, nB0, nB1, nB0, nCs2, nB1, nB0, nCs2, nB0, nEb2
	dc.b	nB0, nB1, $08, $04, nBb1, nB0, nAb1, nFs1, nB0, nE1, $08, nB0
	dc.b	$04, nEb1, nB0, nCs1, nEb1, nB0, nB1, $08, nB0, $04, nA1, nB0
	dc.b	nG1, nFs1, nB0, nA1, $08, nB0, $04, nB1
	smpsJump            Nepu_DimTrip_Jump07

; PSG3 Data
Nepu_DimTrip_PSG3:
	dc.b	nRst

Nepu_DimTrip_Loop2A:
	dc.b	$40
	smpsLoop            $00, $08, Nepu_DimTrip_Loop2A

Nepu_DimTrip_Jump06:
	dc.b	nRst

Nepu_DimTrip_Loop2B:
	dc.b	$60
	smpsLoop            $00, $08, Nepu_DimTrip_Loop2B
	smpsPSGvoice        $00
	dc.b	nRst, $10, nCs1, $20
	smpsPSGvoice        $00
	dc.b	nRst, $04, nCs1, $02, nRst, nCs1, nRst, nCs1, nRst, $7F, nRst, $5F
	dc.b	nEb1, $04, nFs1, nB1, nCs2, nEb2, nE2, $08, nEb2, $04, nCs2, nB1
	dc.b	nBb1, nCs2, nBb1, nB1, $10, nRst, $7F, nRst, $51, nB1, $06, nRst
	dc.b	$02, nB1, $04, nBb1, nBb1, nAb1, nBb1, nRst, nB1, $08, nB0, $04
	dc.b	nB1, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $63
	smpsJump            Nepu_DimTrip_Jump06

; DAC Data
Nepu_DimTrip_DAC:
	smpsStop

Nepu_DimTrip_Voices:
;	Voice $00
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$1F, $1E, $19, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $00, $19, $1E, $1F

;	Voice $01
;	$3A
;	$23, $72, $22, $32, 	$1F, $1F, $1F, $1F, 	$05, $05, $05, $0B
;	$05, $05, $05, $05, 	$11, $18, $11, $18, 	$1C, $15, $1E, $02
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $07, $02
	smpsVcCoarseFreq    $02, $02, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $01, $08, $01
	smpsVcTotalLevel    $02, $1E, $15, $1C

;	Voice $02
;	$2A
;	$50, $03, $11, $00, 	$90, $CE, $CD, $9B, 	$05, $0A, $09, $08
;	$00, $00, $12, $0C, 	$09, $FF, $50, $4A, 	$18, $27, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $05
	smpsVcCoarseFreq    $00, $01, $03, $00
	smpsVcRateScale     $02, $03, $03, $02
	smpsVcAttackRate    $1B, $0D, $0E, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $0A, $05
	smpsVcDecayRate2    $0C, $12, $00, $00
	smpsVcDecayLevel    $04, $05, $0F, $00
	smpsVcReleaseRate   $0A, $00, $0F, $09
	smpsVcTotalLevel    $00, $25, $27, $18

;	Voice $03
;	$10
;	$35, $76, $70, $30, 	$DF, $DF, $5F, $5F, 	$06, $08, $09, $09
;	$06, $03, $03, $01, 	$26, $16, $06, $26, 	$21, $34, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $00, $00, $06, $05
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $08, $06
	smpsVcDecayRate2    $01, $03, $03, $06
	smpsVcDecayLevel    $02, $00, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $19, $34, $21

;	Voice $04
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $05
;	$3A
;	$7F, $06, $22, $01, 	$9F, $9F, $8E, $5A, 	$0F, $00, $00, $00
;	$09, $00, $00, $00, 	$71, $83, $14, $05, 	$14, $23, $1E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $07
	smpsVcCoarseFreq    $01, $02, $06, $0F
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $1A, $0E, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0F
	smpsVcDecayRate2    $00, $00, $00, $09
	smpsVcDecayLevel    $00, $01, $08, $07
	smpsVcReleaseRate   $05, $04, $03, $01
	smpsVcTotalLevel    $00, $1E, $23, $14

;	Voice $06
;	$1C
;	$03, $01, $02, $00, 	$1F, $1F, $1F, $1F, 	$1F, $1F, $1F, $1F
;	$10, $0A, $0F, $0C, 	$47, $06, $08, $06, 	$00, $00, $0C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $02, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $1F
	smpsVcDecayRate2    $0C, $0F, $0A, $10
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $06, $08, $06, $07
	smpsVcTotalLevel    $00, $0C, $00, $00

;	Voice $07
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

;	Voice $08
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

