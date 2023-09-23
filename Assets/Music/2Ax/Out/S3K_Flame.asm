SCD_MMZA_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SCD_MMZA_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       SCD_MMZA_DAC
	smpsHeaderFM        SCD_MMZA_FM1,	$00, $10
	smpsHeaderFM        SCD_MMZA_FM2,	$00, $10
	smpsHeaderFM        SCD_MMZA_FM3,	$00, $10
	smpsHeaderFM        SCD_MMZA_FM4,	$00, $10
	smpsHeaderFM        SCD_MMZA_FM5,	$00, $1A
	smpsHeaderPSG       SCD_MMZA_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       SCD_MMZA_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       SCD_MMZA_PSG3,	$23, $00, $00, $00

; FM1 Data
SCD_MMZA_FM1:
	dc.b	nRst, $40, nRst, $40
	smpsSetvoice        $01

SCD_MMZA_Loop1C:
	dc.b	nD3, $04, nF3, nD3, nC3, nA2, nG2, nF2, nD2
	smpsLoop            $00, $20, SCD_MMZA_Loop1C

SCD_MMZA_Loop1D:
	smpsSetvoice        $03
	dc.b	nD3, $02, nRst, nC3, nRst, nD3, nRst, $0A, nC3, $02, nRst, nD3
	dc.b	nRst, $06
	smpsSetvoice        $01
	dc.b	nD3, $04, nF3, nG3, nAb3, nG3, nF3, nD3, nC3
	smpsSetvoice        $03
	dc.b	nA2, $02, nRst, nG2, nRst, nA2, nRst, $0A, nG2, $02, nRst, nA2
	dc.b	nRst, $06
	smpsSetvoice        $01
	dc.b	nA2, $04, nC3, nA2, nG2, nA2, $06, $02, nRst, nA2, nC3, $04
	smpsLoop            $00, $02, SCD_MMZA_Loop1D
	smpsJump            SCD_MMZA_FM1

; FM2 Data
SCD_MMZA_FM2:
	dc.b	nRst, $40
	smpsPan             panCenter, $00
	smpsSetvoice        $03

SCD_MMZA_Loop12:
	dc.b	nA4, $02, nRst, $04, nAb4, $02, nRst, $04, nG4, $02, nRst, $06
	dc.b	nF4, $02, nRst, nD4, nRst, $06
	smpsLoop            $00, $02, SCD_MMZA_Loop12
	dc.b	nD4, $19, nRst, $6B
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nA4, $02, nRst, $04, nD5, $02, nRst, $04, nA4, $02, nRst, $04
	dc.b	nB4, $02, nRst, $04, nA4, $02, nRst, $06

SCD_MMZA_Loop13:
	dc.b	nAb4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop13
	dc.b	nD4, $02, nRst, $04, nAb4, $02, nRst, $06, nA4, $02, nRst, $04
	dc.b	nD5, $02, nRst, $04, nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b	nA4, $02, nRst, $06

SCD_MMZA_Loop14:
	dc.b	nAb4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop14
	dc.b	nD4, $02, nRst, $04, nAb4, $02, nRst
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nD4, $04
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nA4, $02, nRst, $04, nD5, $02, nRst, $04, nA4, $02, nRst, $04
	dc.b	nB4, $02, nRst, $04, nA4, $02, nRst, $06

SCD_MMZA_Loop15:
	dc.b	nAb4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop15
	dc.b	nD4, $02, nRst, $04, nAb4, $02, nRst, $06, nA4, $02, nRst, $04
	dc.b	nD5, $02, nRst, $04, nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b	nA4, $02, nRst, $06

SCD_MMZA_Loop16:
	dc.b	nAb4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop16
	dc.b	nD4, $02, nRst, $04, nAb4, $02, nRst
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	dc.b	nD4, nA4, nA4, nF4, nF4, nG4, nA4, nC4, $04, nAb4, $02, nG4
	dc.b	nG4, nF4, nC4, $04, nCs4, $02, nD4, nF4, nG4, nD4, nA3, nC4
	dc.b	nD4, nG3, nRst, nF3, nRst, nF3, nF4, nD4, nC4, nA3, nAb3, nG3
	dc.b	nF3, nD3, nG3, nAb3, nA3, nC4, nD4, nF4, nG4, nF4, nRst, nD4
	dc.b	nF4, nG4, nRst, nC3, nD3, nC3, nD3, nF3, $04, nA3, nBb3, nCs4
	dc.b	nF4, nAb4, $02, nA4, nBb4, nA4, nG4, nE4, nF4, nG4, nC4, nC4
	dc.b	nD4, nRst, nF4, nG4, nAb4, nF4, nC4, nD4, nF4, nD4, $04, nA3
	dc.b	nC4, $02, nD4, nD3, nF4, nF4, nF4, $04, nAb3, $02, nG3, nF3
	dc.b	nG3, $04, $02

SCD_MMZA_Loop17:
	dc.b	nAb3, nG3, nF3, nD3, nC3, nG3
	smpsLoop            $00, $02, SCD_MMZA_Loop17
	dc.b	nAb3, nG3, nF3, nD3, nC3, nD3, $04, nF3, $02, nG3, $04, nAb3
	dc.b	$02, nA3, nC4, nCs4, nD4, nF4, nG4
	smpsSetvoice        $03
	dc.b	nA4

SCD_MMZA_Loop18:
	dc.b	nRst, $04, nAb4, $02, nRst, $04, nG4, $02, nRst, $06, nF4, $02
	dc.b	nRst, nD4, nRst, $06, nA4, $02
	smpsLoop            $00, $03, SCD_MMZA_Loop18
	dc.b	nRst, $04, nAb4, $02, nRst, $04, nG4, $02, nRst, $06, nF4, $02
	dc.b	nRst, nD4, nRst, $06, nD4, $04
	smpsPan             panLeft, $00
	smpsSetvoice        $00

SCD_MMZA_Loop1A:
	dc.b	nA4, $02, nRst, $04, nD5, $02, nRst, $04, nA4, $02, nRst, $04
	dc.b	nB4, $02, nRst, $04, nA4, $02, nRst, $06

SCD_MMZA_Loop19:
	dc.b	nAb4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop19
	dc.b	nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	smpsLoop            $01, $03, SCD_MMZA_Loop1A
	dc.b	nA4, $02, nRst, $04, nD5, $02, nRst, $04, nA4, $02, nRst, $04
	dc.b	nB4, $02, nRst, $04, nA4, $02, nRst, $06

SCD_MMZA_Loop1B:
	dc.b	nAb4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop1B
	dc.b	nD4, $02, nRst, $04, nAb4, $02, nRst, nD3, $04, nC3, nD3, nRst
	dc.b	$08, nC3, $04, nD3, nRst
	smpsSetvoice        $02
	dc.b	nA4, nC5, nD5, nEb5, nD5, nC5, nA4, nG4
	smpsSetvoice        $00
	dc.b	nA2, nG2, nA2, nRst, $08, nG2, $04, nA2, nRst
	smpsSetvoice        $02
	dc.b	nE4, nG4, nE4, nD4, nE4, $06, $02, nRst, nE4, nG4, $04
	smpsSetvoice        $00
	dc.b	nD3, nC3, nD3, nRst, $08, nC3, $04, nD3, nRst
	smpsSetvoice        $02
	dc.b	nA4, nC5, nD5, nEb5, nD5, nC5, nA4, nG4
	smpsSetvoice        $00
	dc.b	nA2, nG2, nA2, nRst, $08, nG2, $04, nA2, nRst
	smpsSetvoice        $02
	dc.b	nE4, nG4, nE4, nD4, nE4, $06, $02, nRst, nE4, nG4, $04
	smpsJump            SCD_MMZA_FM2

; FM3 Data
SCD_MMZA_FM3:
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $44
	smpsPan             panRight, $00
	smpsSetvoice        $00

SCD_MMZA_Loop0D:
	dc.b	nF4, $02, nRst, $04, nBb4, $02, nRst, $04, nF4, $02, nRst, $04
	dc.b	nG4, $02, nRst, $04, nF4, $02, nRst, $06

SCD_MMZA_Loop0C:
	dc.b	nF4, $02, nRst, $04
	smpsLoop            $00, $04, SCD_MMZA_Loop0C
	dc.b	nF4, $02, nRst, $06
	smpsLoop            $01, $03, SCD_MMZA_Loop0D
	dc.b	nF4, $02, nRst, $04, nBb4, $02, nRst, $04, nF4, $02, nRst, $04
	dc.b	nG4, $02, nRst, $04, nF4, $02, nRst, $06

SCD_MMZA_Loop0E:
	dc.b	nF4, $02, nRst, $04
	smpsLoop            $00, $04, SCD_MMZA_Loop0E
	dc.b	nF4, $02, nRst, nRst, $40, nRst, $40
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nD4, $19, nRst, $67, nRst, $40, nRst, $44
	smpsPan             panRight, $00
	smpsSetvoice        $00

SCD_MMZA_Loop10:
	dc.b	nF4, $02, nRst, $04, nBb4, $02, nRst, $04, nF4, $02, nRst, $04
	dc.b	nG4, $02, nRst, $04, nF4, $02, nRst, $06

SCD_MMZA_Loop0F:
	dc.b	nF4, $02, nRst, $04
	smpsLoop            $00, $04, SCD_MMZA_Loop0F
	dc.b	nF4, $02, nRst, $06
	smpsLoop            $01, $03, SCD_MMZA_Loop10
	dc.b	nF4, $02, nRst, $04, nBb4, $02, nRst, $04, nF4, $02, nRst, $04
	dc.b	nG4, $02, nRst, $04, nF4, $02, nRst, $06

SCD_MMZA_Loop11:
	dc.b	nF4, $02, nRst, $04
	smpsLoop            $00, $04, SCD_MMZA_Loop11
	dc.b	nF4, $02, nRst, nD2, $04, nC2, nD2, nRst, $08, nC2, $04, nD2
	dc.b	nRst
	smpsSetvoice        $02
	dc.b	nD4, nF4, nG4, nAb4, nG4, nF4, nD4, nC4
	smpsSetvoice        $00
	dc.b	nA1, nG1, nA1, nRst, $08, nG1, $04, nA1, nRst
	smpsSetvoice        $02
	dc.b	nA3, nC4, nA3, nG3, nA3, $06, $02, nRst, nA3, nC4, $04
	smpsSetvoice        $00
	dc.b	nD2, nC2, nD2, nRst, $08, nC2, $04, nD2, nRst
	smpsSetvoice        $02
	dc.b	nD4, nF4, nG4, nAb4, nG4, nF4, nD4, nC4
	smpsSetvoice        $00
	dc.b	nA1, nG1, nA1, nRst, $08, nG1, $04, nA1, nRst
	smpsSetvoice        $02
	dc.b	nA3, nC4, nA3, nG3, nA3, $06, $02, nRst, nA3, nC4, $04
	smpsJump            SCD_MMZA_FM3

; FM4 Data
SCD_MMZA_FM4:
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $44
	smpsSetvoice        $00

SCD_MMZA_Loop07:
	dc.b	nD4, $02, nRst, $04, nG4, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nE4, $02, nRst, $04, nD4, $02, nRst, $06

SCD_MMZA_Loop06:
	dc.b	nD4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop06
	dc.b	nAb4, $02, nRst, $04, nD4, $02, nRst, $06
	smpsLoop            $01, $03, SCD_MMZA_Loop07
	dc.b	nD4, $02, nRst, $04, nG4, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nE4, $02, nRst, $04, nD4, $02, nRst, $06

SCD_MMZA_Loop08:
	dc.b	nD4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop08
	dc.b	nAb4, $02, nRst, $04, nD4, $02, nRst, nRst, $40, nRst, $40, nRst
	dc.b	$40, nRst, $40, nRst, $40, nRst, $44

SCD_MMZA_Loop0A:
	dc.b	nD4, $02, nRst, $04, nG4, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nE4, $02, nRst, $04, nD4, $02, nRst, $06

SCD_MMZA_Loop09:
	dc.b	nD4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop09
	dc.b	nAb4, $02, nRst, $04, nD4, $02, nRst, $06
	smpsLoop            $01, $03, SCD_MMZA_Loop0A
	dc.b	nD4, $02, nRst, $04, nG4, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nE4, $02, nRst, $04, nD4, $02, nRst, $06

SCD_MMZA_Loop0B:
	dc.b	nD4, $02, nRst, $04
	smpsLoop            $00, $03, SCD_MMZA_Loop0B
	dc.b	nAb4, $02, nRst, $04, nD4, $02, nRst, $22
	smpsSetvoice        $02
	dc.b	nA3, $04, nC4, nD4, nEb4, nD4, nC4, nA3, nG3, nRst, $20, nE3
	dc.b	$04, nG3, nE3, nD3, nE3, $06, $02, nRst, nE3, nG3, $04, nRst
	dc.b	$20, nA3, $04, nC4, nD4, nEb4, nD4, nC4, nA3, nG3, nRst, $20
	dc.b	nE3, $04, nG3, nE3, nD3, nE3, $06, $02, nRst, nE3, nG3, $04
	smpsJump            SCD_MMZA_FM4

; FM5 Data
SCD_MMZA_FM5:
	dc.b	nRst, $46
	smpsSetvoice        $03

SCD_MMZA_Loop03:
	dc.b	nA4, $02, nRst, $04, nAb4, $02, nRst, $04, nG4, $02, nRst, $06
	dc.b	nF4, $02, nRst, nD4, nRst, $06
	smpsLoop            $00, $02, SCD_MMZA_Loop03
	dc.b	nD4, $19, nRst, $61, nRst, $40, nRst, $40, nRst, $06, nD4, $19
	dc.b	nRst, $65
	smpsSetvoice        $04
	dc.b	nD4, $02, nA4, nA4, nF4, nF4, nG4, nA4, nC4, $04, nAb4, $02
	dc.b	nG4, nG4, nF4, nC4, $04, nCs4, $02, nD4, nF4, nG4, nD4, nA3
	dc.b	nC4, nD4, nG3, nRst, nF3, nRst, nF3, nF4, nD4, nC4, nA3, nAb3
	dc.b	nG3, nF3, nD3, nG3, nAb3, nA3, nC4, nD4, nF4, nG4, nF4, nRst
	dc.b	nD4, nF4, nG4, nRst, nC3, nD3, nC3, nD3, nF3, $04, nA3, nBb3
	dc.b	nCs4, nF4, nAb4, $02, nA4, nBb4, nA4, nG4, nE4, nF4, nG4, nC4
	dc.b	nC4, nD4, nRst, nF4, nG4, nAb4, nF4, nC4, nD4, nF4, nD4, $04
	dc.b	nA3, nC4, $02, nD4, nD3, nF4, nF4, nF4, $04, nAb3, $02, nG3
	dc.b	nF3, nG3, $04, $02

SCD_MMZA_Loop04:
	dc.b	nAb3, nG3, nF3, nD3, nC3, nG3
	smpsLoop            $00, $02, SCD_MMZA_Loop04
	dc.b	nAb3, nG3, nF3, nD3, nC3, nD3, $04, nF3, $02, nG3, $04, nAb3
	dc.b	$02, nA3, nC4, nCs4, nD4, nF4, nG4, nRst
	smpsSetvoice        $03
	dc.b	nA4

SCD_MMZA_Loop05:
	dc.b	nRst, $04, nAb4, $02, nRst, $04, nG4, $02, nRst, $06, nF4, $02
	dc.b	nRst, nD4, nRst, $06, nA4, $02
	smpsLoop            $00, $03, SCD_MMZA_Loop05
	dc.b	nRst, $04, nAb4, $02, nRst, $04, nG4, $02, nRst, $06, nF4, $02
	dc.b	nRst, nD4, nRst, $06, nD4, $19, nRst, $61, nRst, $40, nRst, $40
	dc.b	nRst, $06, nD3, $02, nRst, nC3, nRst, nD3, nRst, $0A, nC3, $02
	dc.b	nRst, nD3, nRst, $26, nA2, $02, nRst, nG2, nRst, nA2, nRst, $0A
	dc.b	nG2, $02, nRst, nA2, nRst, $26, nD3, $02, nRst, nC3, nRst, nD3
	dc.b	nRst, $0A, nC3, $02, nRst, nD3, nRst, $26, nA2, $02, nRst, nG2
	dc.b	nRst, nA2, nRst, $0A, nG2, $02, nRst, nA2, nRst, $20
	smpsJump            SCD_MMZA_FM5

; PSG1 Data
SCD_MMZA_PSG1:
	smpsPSGvoice        fTone_04

SCD_MMZA_Loop25:
	dc.b	nD4, $02, nE4, nF4, nC5, nE5, nF5, nA5, nG5, nE4, nF4, nC5
	dc.b	nE4, nF4, nG4, nA4, nF5, nAb4, nD4, nF4, nAb4, nD5, nAb4, nF4
	dc.b	nD5, nF5, nAb5, nD5, nF5, nAb5, nD6, nF6, nAb6
	smpsLoop            $00, $12, SCD_MMZA_Loop25
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsJump            SCD_MMZA_PSG1

; PSG2 Data
SCD_MMZA_PSG2:
	smpsPSGvoice        fTone_04

SCD_MMZA_Loop24:
	dc.b	nD5, $02, nE5, nF5, nC6, nE6, nF6, nA6, nG6, nE5, nF5, nC6
	dc.b	nE5, nF5, nG5, nA5, nF4, nAb3, nD3, nF3, nAb3, nD4, nAb3, nF3
	dc.b	nD4, nF4, nAb4, nD6, nF6, nAb6, nD5, nF5, nAb5
	smpsLoop            $00, $12, SCD_MMZA_Loop24
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsJump            SCD_MMZA_PSG2

; PSG3 Data
SCD_MMZA_PSG3:
	smpsPSGform         $E7

SCD_MMZA_Jump00:
	dc.b	nRst, $40
	smpsPSGvoice        fTone_02
	dc.b	nAb6

SCD_MMZA_Loop1E:
	dc.b	$08
	smpsLoop            $00, $07, SCD_MMZA_Loop1E
	dc.b	$02, $02, $02, $02, $02, nRst, nAb6, nAb6

SCD_MMZA_Loop21:
	dc.b	nAb6, nRst, nAb6, nAb6, nAb6, nAb6, nRst, nAb6, nAb6, nRst

SCD_MMZA_Loop1F:
	dc.b	nAb6, nAb6

SCD_MMZA_Loop20:
	dc.b	nAb6, nRst, nAb6, nAb6
	smpsLoop            $00, $02, SCD_MMZA_Loop1F
	smpsLoop            $01, $02, SCD_MMZA_Loop20
	smpsLoop            $02, $10, SCD_MMZA_Loop21

SCD_MMZA_Loop22:
	dc.b	nAb6, nRst, nAb6
	smpsLoop            $00, $03, SCD_MMZA_Loop22
	dc.b	nRst, nAb6, nAb6, nAb6, nRst, nAb6, nAb6
	smpsLoop            $01, $07, SCD_MMZA_Loop22

SCD_MMZA_Loop23:
	dc.b	nAb6, nRst, nAb6
	smpsLoop            $00, $03, SCD_MMZA_Loop23
	dc.b	nRst, nAb6, nAb6
	smpsJump            SCD_MMZA_Jump00

; DAC Data
SCD_MMZA_DAC:
	dc.b	nRst, $40, dKick, $08, $08, $08, $08, $08, $08, dSnare, $01, $01
	dc.b	$01, $01, $02, $02, dKick, dSnare, dSnare, nRst

SCD_MMZA_Loop01:
	dc.b	$85, $08, dSnare, $06, $02, dKick, $06, $02, dSnare, $08, dKick, dSnare
	dc.b	$04, dKick, $02, dSnare, $04, $02, dKick, $04, dSnare, dSnare, dKick, $08
	dc.b	dSnare, $06, $02, dKick, $06, $02, dSnare, $08, dKick, dSnare, $04, dKick
	dc.b	$02, dSnare, $04, $02, dKick, $04, dSnare, dSnare, $85, $08, dSnare, $06
	dc.b	$02, dKick, $06, $02, dSnare, $08, dKick, dSnare, $04, dKick, $02, dSnare
	dc.b	$04, $02, dKick, $04, dSnare, dSnare, dKick, $08, dSnare, $06, $02, dKick
	dc.b	$06, $02, dSnare, $08

SCD_MMZA_Loop00:
	dc.b	$02
	smpsLoop            $00, $10, SCD_MMZA_Loop00
	smpsLoop            $01, $04, SCD_MMZA_Loop01

SCD_MMZA_Loop02:
	dc.b	$85, $04, dKick, dSnare, dKick, $02, dSnare, nRst, dSnare, dKick, nRst, dSnare
	dc.b	nRst, dKick, nRst, dKick, nRst, dKick, nRst, dSnare, nRst, dKick, dSnare, nRst
	dc.b	dSnare, dKick, nRst, dSnare, nRst, dSnare, dSnare, dKick, $04, $04, dSnare, dKick
	dc.b	$02, dSnare, $04, $02, dKick, $04, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b	$02, dSnare, $04, $02, dKick, $06, dSnare, $01, $01, $02, $02
	smpsLoop            $00, $02, SCD_MMZA_Loop02
	smpsJump            SCD_MMZA_DAC

SCD_MMZA_Voices:
;	Voice $00
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $7F
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
	smpsVcTotalLevel    $7F, $25, $2F, $25

;	Voice $01
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $02
;	$38
;	$0A, $08, $01, $02, 	$14, $14, $10, $0E, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$99, $09, $09, $19, 	$28, $23, $24, $7F
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $08, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $10, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $09
	smpsVcReleaseRate   $09, $09, $09, $09
	smpsVcTotalLevel    $7F, $24, $23, $28

;	Voice $03
;	$3A
;	$64, $60, $60, $30, 	$9D, $9D, $50, $4C, 	$04, $06, $04, $05
;	$1F, $05, $01, $01, 	$A8, $25, $25, $55, 	$7F, $06, $14, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $06, $06, $06
	smpsVcCoarseFreq    $00, $00, $00, $04
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0C, $10, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $06, $04
	smpsVcDecayRate2    $01, $01, $05, $1F
	smpsVcDecayLevel    $05, $02, $02, $0A
	smpsVcReleaseRate   $05, $05, $05, $08
	smpsVcTotalLevel    $00, $14, $06, $7F

;	Voice $04
;	$3A
;	$7F, $06, $22, $01, 	$9F, $9F, $8E, $5A, 	$0F, $00, $00, $00
;	$09, $00, $00, $00, 	$71, $83, $14, $05, 	$14, $23, $1E, $7F
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
	smpsVcTotalLevel    $7F, $1E, $23, $14

