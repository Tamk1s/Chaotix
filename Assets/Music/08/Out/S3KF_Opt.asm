MTPO_ThemeR_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MTPO_ThemeR_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $03, $0A

	smpsHeaderDAC       MTPO_ThemeR_DAC
	smpsHeaderFM        MTPO_ThemeR_FM1,	$00, $08
	smpsHeaderFM        MTPO_ThemeR_FM2,	$00, $08
	smpsHeaderFM        MTPO_ThemeR_FM3,	$00, $08
	smpsHeaderFM        MTPO_ThemeR_FM4,	$00, $08
	smpsHeaderFM        MTPO_ThemeR_FM5,	$00, $08
	smpsHeaderFM        MTPO_ThemeR_FM6,	$00, $0E
	smpsHeaderPSG       MTPO_ThemeR_PSG1,	$00, $07, $00, fTone_1E
	smpsHeaderPSG       MTPO_ThemeR_PSG2,	$00, $04, $00, fTone_1D
	smpsHeaderPSG       MTPO_ThemeR_PSG3,	$00, $04, $00, fTone_1D

; FM1 Data
MTPO_ThemeR_FM1:
	smpsPan             panLeft, $00

MTPO_ThemeR_Jump04:
	smpsSetvoice        $00
	dc.b	nE3, $03, nE2, nE2, nE2, nE2, nE3, nE3, nD3, $06, nD2

MTPO_ThemeR_Loop2D:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop2D
	dc.b	nC3, nC2, nC2, nC2, nC2, nC3, nC3, nD3, $06, nD2, $03, $03
	dc.b	$03, $03, $03, $03, nD3, nE3, nE2, nE2, nE3, nE2, nE2, nE3

MTPO_ThemeR_Loop2E:
	dc.b	nE2, nE3, nE2, nE3, nE2, nE2
	smpsLoop            $00, $02, MTPO_ThemeR_Loop2E
	dc.b	nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3, nE2, nE2, nE2, nE3
	dc.b	nE2, nD3, nD2, nD2, nD3, nD2, nD2, nD3, nD2, nD3, nD2, nD3
	dc.b	nD2, nG3, $06, nD3, nE3, $03, nE2, nE2, nE3, nE2, nE2, nE3
	dc.b	nE2, nE3, nE2, nE3, nE2, nE2, nE2, nE3, nE2, nB2, nB1, nB1
	dc.b	nB2, nB1, nB1, nB2, nB1, nB2, nB1, nB2, nB1, nB2, $06, nD3
	dc.b	nE3, $03, nE2, nE2, nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3
	dc.b	nE2, nE2, nE2, nE3, nE2, nD3, nD2, nD2, nD3, nD2, nD2, nD3
	dc.b	nD2, nD3, nD2, nD3, nD2, nD2, nD2, nD3, nD2, nC3, nC2, nC2
	dc.b	nC3, nC2, nC2, nC3, nC2, nC3, nC2, nC3, nC2, nC2, nC2, nC3
	dc.b	nC2

MTPO_ThemeR_Loop2F:
	dc.b	nB2, nB1, nB1
	smpsLoop            $00, $04, MTPO_ThemeR_Loop2F
	dc.b	nB2, $02, $01, nB1, $03, nB2, $02, $01, nB1

MTPO_ThemeR_Loop30:
	dc.b	$03, nE3, nE2
	smpsLoop            $00, $03, MTPO_ThemeR_Loop30
	dc.b	nE3, nE2, nE3, nE2, nE2, nE2, nE3, nE2, nD3, nD2, nD2, nD3
	dc.b	nD2, nD2, nD3, nD2, nD3, nD2, nD3, nD2, nG3, $06, nD3, nE3
	dc.b	$03, nE2, nE2, nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3, nE2
	dc.b	nE2, nE2, nE3, nE2, nB2, nB1, nB1, nB2, nB1, nB1, nB2, nB1
	dc.b	nB2, nB1, nB2, nB1, nB2, $06, nD3, nE3, $03, nE2, nE2, nE3
	dc.b	nE2, nE2, nE3, nE2, nE3, nE2, nE3, nE2, nE2, nE2, nE3, nE2
	dc.b	nD3, nD2, nD2, nD3, nD2, nD2, nD3, nD2, nD3, nD2, nD3, nD2
	dc.b	nD2, nD2, nD3, nD2, nC3, nC2, nC2, nC3, nC2, nC2, nC3, nC2
	dc.b	nC3, nC2, nC3, nC2, nC2, nC2, nC3, nC2

MTPO_ThemeR_Loop31:
	dc.b	nB2, nB1, nB1
	smpsLoop            $00, $04, MTPO_ThemeR_Loop31
	dc.b	nB2, $02, $01, nB1, $03, nB2, $02, $01, nB1, $03
	smpsJump            MTPO_ThemeR_Jump04

; FM2 Data
MTPO_ThemeR_FM2:
	smpsSetvoice        $01

MTPO_ThemeR_Jump03:
	smpsPan             panRight, $00
	dc.b	nA3, $03, nA2, nA2, nA2, nA2, nA3, nA3, nG3, $06, nG2

MTPO_ThemeR_Loop28:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop28
	dc.b	nF3, nF2, nF2, nF2, nF2, nF3, nF3, nG3, $06, nG2, $03, $03
	dc.b	$03, $03, $03, $03, nG3, nA3, nA2, nA2, nA3, nA2, nA2, nA3

MTPO_ThemeR_Loop29:
	dc.b	nA2, nA3, nA2, nA3, nA2, nA2
	smpsLoop            $00, $02, MTPO_ThemeR_Loop29
	dc.b	nA3, nA2, nA2, nA3, nA2, nA3, nA2, nA3, nA2, nA2, nA2, nA3
	dc.b	nA2, nG3, nG2, nG2, nG3, nG2, nG2, nG3, nG2, nG3, nG2, nG3
	dc.b	nG2, nC4, $06, nG3, nA3, $03, nA2, nA2, nA3, nA2, nA2, nA3
	dc.b	nA2, nA3, nA2, nA3, nA2, nA2, nA2, nA3, nA2, nE3, nE2, nE2
	dc.b	nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3, nE2, nE3, $06, nG3
	dc.b	nA3, $03, nA2, nA2, nA3, nA2, nA2, nA3, nA2, nA3, nA2, nA3
	dc.b	nA2, nA2, nA2, nA3, nA2, nG3, nG2, nG2, nG3, nG2, nG2, nG3
	dc.b	nG2, nG3, nG2, nG3, nG2, nG2, nG2, nG3, nG2, nF3, nF2, nF2
	dc.b	nF3, nF2, nF2, nF3, nF2, nF3, nF2, nF3, nF2, nF2, nF2, nF3
	dc.b	nF2

MTPO_ThemeR_Loop2A:
	dc.b	nE3, nE2, nE2
	smpsLoop            $00, $04, MTPO_ThemeR_Loop2A
	dc.b	nE3, $02, $01, nE2, $03, nE3, $02, $01, nE2

MTPO_ThemeR_Loop2B:
	dc.b	$03, nA3, nA2
	smpsLoop            $00, $03, MTPO_ThemeR_Loop2B
	dc.b	nA3, nA2, nA3, nA2, nA2, nA2, nA3, nA2, nG3, nG2, nG2, nG3
	dc.b	nG2, nG2, nG3, nG2, nG3, nG2, nG3, nG2, nC4, $06, nG3, nA3
	dc.b	$03, nA2, nA2, nA3, nA2, nA2, nA3, nA2, nA3, nA2, nA3, nA2
	dc.b	nA2, nA2, nA3, nA2, nE3, nE2, nE2, nE3, nE2, nE2, nE3, nE2
	dc.b	nE3, nE2, nE3, nE2, nE3, $06, nG3, nA3, $03, nA2, nA2, nA3
	dc.b	nA2, nA2, nA3, nA2, nA3, nA2, nA3, nA2, nA2, nA2, nA3, nA2
	dc.b	nG3, nG2, nG2, nG3, nG2, nG2, nG3, nG2, nG3, nG2, nG3, nG2
	dc.b	nG2, nG2, nG3, nG2, nF3, nF2, nF2, nF3, nF2, nF2, nF3, nF2
	dc.b	nF3, nF2, nF3, nF2, nF2, nF2, nF3, nF2

MTPO_ThemeR_Loop2C:
	dc.b	nE3, nE2, nE2
	smpsLoop            $00, $04, MTPO_ThemeR_Loop2C
	dc.b	nE3, $02, $01, nE2, $03, nE3, $02, $01, nE2, $03
	smpsJump            MTPO_ThemeR_Jump03

; FM3 Data
MTPO_ThemeR_FM3:
	smpsPan             panLeft, $00

MTPO_ThemeR_Jump02:
	smpsSetvoice        $02
	dc.b	nA3

MTPO_ThemeR_Loop14:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop14
	dc.b	nG3, $06

MTPO_ThemeR_Loop15:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop15

MTPO_ThemeR_Loop16:
	dc.b	nF3
	smpsLoop            $00, $07, MTPO_ThemeR_Loop16
	dc.b	nG3, $06

MTPO_ThemeR_Loop17:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop17
	dc.b	nA3
	smpsLoop            $01, $04, MTPO_ThemeR_Loop17

MTPO_ThemeR_Loop18:
	dc.b	nA3
	smpsLoop            $00, $07, MTPO_ThemeR_Loop18

MTPO_ThemeR_Loop19:
	dc.b	nG3
	smpsLoop            $00, $0C, MTPO_ThemeR_Loop19
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop1A:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop1A

MTPO_ThemeR_Loop1B:
	dc.b	nE3
	smpsLoop            $00, $0E, MTPO_ThemeR_Loop1B
	dc.b	nG3, nG3

MTPO_ThemeR_Loop1C:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop1C

MTPO_ThemeR_Loop1D:
	dc.b	nG3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop1D

MTPO_ThemeR_Loop1E:
	dc.b	nF3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop1E

MTPO_ThemeR_Loop1F:
	dc.b	nE3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop1F

MTPO_ThemeR_Loop20:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop20

MTPO_ThemeR_Loop21:
	dc.b	nG3
	smpsLoop            $00, $0C, MTPO_ThemeR_Loop21
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop22:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop22

MTPO_ThemeR_Loop23:
	dc.b	nE3
	smpsLoop            $00, $0E, MTPO_ThemeR_Loop23
	dc.b	nG3, nG3

MTPO_ThemeR_Loop24:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop24

MTPO_ThemeR_Loop25:
	dc.b	nG3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop25

MTPO_ThemeR_Loop26:
	dc.b	nF3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop26

MTPO_ThemeR_Loop27:
	dc.b	nE3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop27
	smpsJump            MTPO_ThemeR_Jump02

; FM4 Data
MTPO_ThemeR_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	dc.b	nE4, $03, nRst, $0C, nE4, $03, $03, nD4, $06, nRst, $15, nC4
	dc.b	$03, nRst, $0C, nC4, $03, $03, nD4, $06, nRst, $12, nD4, $03
	dc.b	nE4, nRst, $2D, nA4, $12, nB4, $06, $02, nC5, $04, $06, nB4
	dc.b	$03, nA4, $09, nG4, $02, nA4, $07, nG4, $09, $02, nA4, $07
	dc.b	nG4, $09, nB4, $02, nC5, $04, nB4, $06, nA4, $12, nB4, $06
	dc.b	$02, nC5, $04, $06, nB4, $03, nC5, $09, nD5, $02, nE5, $07
	dc.b	nD5, $09, $02, nE5, $07, nD5, $09, $02, nE5, $01, nD5, $03
	dc.b	$02, nE5, $01, nD5, $03, nA4, $12, nB4, $03, nC5, $06, nA5
	dc.b	nB5, $02, nC6, $04, nB5, $06, nG5, $15, nA5, $03, nB5, $06
	dc.b	$02, nC6, $04, nB5, $06, $02, nC6, $01, nB5, $03, nF5, $15
	dc.b	nG5, $03, nA5, $06, $06, $03, nB5, $02, nC6, $01, nB5, $09
	dc.b	nE5, $30, nA4, $12, nB4, $06, $02, nC5, $04, $06, nB4, $03
	dc.b	nA4, $09, nG4, $02, nA4, $07, nG4, $09, $02, nA4, $07, nG4
	dc.b	$09, nB4, $02, nC5, $04, nB4, $06, nA4, $12, nB4, $06, $02
	dc.b	nC5, $04, $06, nB4, $03, nC5, $09, nD5, $02, nE5, $07, nD5
	dc.b	$09, $02, nE5, $07, nD5, $09, $02, nE5, $01, nD5, $03, $02
	dc.b	nE5, $01, nD5, $03, nA4, $12, nB4, $03, nC5, $06, nA5, nB5
	dc.b	$02, nC6, $04, nB5, $06, nG5, $15, nA5, $03, nB5, $06, $02
	dc.b	nC6, $04, nB5, $06, $02, nC6, $01, nB5, $03, nF5, $15, nG5
	dc.b	$03, nA5, $06, $06, $03, nB5, $02, nC6, $01, nB5, $09, nE6
	dc.b	$30
	smpsJump            MTPO_ThemeR_FM4

; FM5 Data
MTPO_ThemeR_FM5:
	smpsSetvoice        $04

MTPO_ThemeR_Jump01:
	smpsPan             panRight, $00
	dc.b	nC4, $03, nRst, $0C, nC4, $03, $03, nB3, $06, nRst, $15, nA3
	dc.b	$03, nRst, $0C, nA3, $03, $03, nB3, $06, nRst, $12, nB3, $03
	dc.b	nC4, nRst, $2D, nE4, $12, $06, nG4, $02, nA4, $04, $06, nE4
	dc.b	$03, $09, nD4, $02, nE4, $07, nD4, $09, $02, nE4, $07, nD4
	dc.b	$09, nF4, $02, nG4, $04, nD4, $06, nE4, $12, $06, nG4, $02
	dc.b	nA4, $04, $06, nE4, $03, nA4, $09, nB4, $02, nC5, $07, nB4
	dc.b	$09, $02, nC5, $07, nB4, $09, $02, nC5, $01, nB4, $03, $02
	dc.b	nC5, $01, nB4, $03, nE4, $12, $03, nA4, $06, nE5, nG5, $02
	dc.b	nA5, $04, nG5, $06, nD5, $15, $03, nG5, $06, $02, nA5, $04
	dc.b	nG5, $06, $02, nA5, $01, nG5, $03, nC5, $15, $03, nF5, $06
	dc.b	$06, $03, nG5, $02, nA5, $01, nG5, $09, nB4, $30, nE4, $12
	dc.b	$06, nG4, $02, nA4, $04, $06, nE4, $03, $09, nD4, $02, nE4
	dc.b	$07, nD4, $09, $02, nE4, $07, nD4, $09, nF4, $02, nG4, $04
	dc.b	nD4, $06, nE4, $12, $06, nG4, $02, nA4, $04, $06, nE4, $03
	dc.b	nA4, $09, nB4, $02, nC5, $07, nB4, $09, $02, nC5, $07, nB4
	dc.b	$09, $02, nC5, $01, nB4, $03, $02, nC5, $01, nB4, $03, nE4
	dc.b	$12, $03, nA4, $06, nE5, nG5, $02, nA5, $04, nG5, $06, nD5
	dc.b	$15, $03, nG5, $06, $02, nA5, $04, nG5, $06, $02, nA5, $01
	dc.b	nG5, $03, nC5, $15, $03, nF5, $06, $06, $03, nG5, $02, nA5
	dc.b	$01, nG5, $09, nB5, $30
	smpsJump            MTPO_ThemeR_Jump01

; FM6 Data
MTPO_ThemeR_FM6:
	smpsPan             panRight, $00
	smpsSetvoice        $05

MTPO_ThemeR_Jump00:
	dc.b	nA3

MTPO_ThemeR_Loop00:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop00
	dc.b	nG3, $06

MTPO_ThemeR_Loop01:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop01

MTPO_ThemeR_Loop02:
	dc.b	nF3
	smpsLoop            $00, $07, MTPO_ThemeR_Loop02
	dc.b	nG3, $06

MTPO_ThemeR_Loop03:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop03
	dc.b	nA3
	smpsLoop            $01, $04, MTPO_ThemeR_Loop03

MTPO_ThemeR_Loop04:
	dc.b	nA3
	smpsLoop            $00, $07, MTPO_ThemeR_Loop04

MTPO_ThemeR_Loop05:
	dc.b	nG3
	smpsLoop            $00, $0C, MTPO_ThemeR_Loop05
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop06:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop06

MTPO_ThemeR_Loop07:
	dc.b	nE3
	smpsLoop            $00, $0E, MTPO_ThemeR_Loop07
	dc.b	nG3, nG3

MTPO_ThemeR_Loop08:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop08

MTPO_ThemeR_Loop09:
	dc.b	nG3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop09

MTPO_ThemeR_Loop0A:
	dc.b	nF3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop0A

MTPO_ThemeR_Loop0B:
	dc.b	nE3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop0B

MTPO_ThemeR_Loop0C:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop0C

MTPO_ThemeR_Loop0D:
	dc.b	nG3
	smpsLoop            $00, $0C, MTPO_ThemeR_Loop0D
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop0E:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop0E

MTPO_ThemeR_Loop0F:
	dc.b	nE3
	smpsLoop            $00, $0E, MTPO_ThemeR_Loop0F
	dc.b	nG3, nG3

MTPO_ThemeR_Loop10:
	dc.b	nA3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop10

MTPO_ThemeR_Loop11:
	dc.b	nG3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop11

MTPO_ThemeR_Loop12:
	dc.b	nF3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop12

MTPO_ThemeR_Loop13:
	dc.b	nE3
	smpsLoop            $00, $10, MTPO_ThemeR_Loop13
	smpsJump            MTPO_ThemeR_Jump00

; PSG1 Data
MTPO_ThemeR_PSG1:
	dc.b	nA1, $03, nA0, nA0, nA0, nA0, nA1, nA1, nG1, $06, nG0

MTPO_ThemeR_Loop32:
	dc.b	$03
	smpsLoop            $00, $07, MTPO_ThemeR_Loop32
	dc.b	nF1, nF0, nF0, nF0, nF0, nF1, nF1, nG1, $06, nG0, $03, $03
	dc.b	$03, $03, $03, $03, nG1, nA1, nA0, nA0, nA1, nA0, nA0, nA1

MTPO_ThemeR_Loop33:
	dc.b	nA0, nA1, nA0, nA1, nA0, nA0
	smpsLoop            $00, $02, MTPO_ThemeR_Loop33
	dc.b	nA1, nA0, nA0, nA1, nA0, nA1, nA0, nA1, nA0, nA0, nA0, nA1
	dc.b	nA0, nG1, nG0, nG0, nG1, nG0, nG0, nG1, nG0, nG1, nG0, nG1
	dc.b	nG0, nC2, $06, nG1, nA1, $03, nA0, nA0, nA1, nA0, nA0, nA1
	dc.b	nA0, nA1, nA0, nA1, nA0, nA0, nA0, nA1, nA0, nE1, nE0, nE0
	dc.b	nE1, nE0, nE0, nE1, nE0, nE1, nE0, nE1, nE0, nE1, $06, nG1
	dc.b	nA1, $03, nA0, nA0, nA1, nA0, nA0, nA1, nA0, nA1, nA0, nA1
	dc.b	nA0, nA0, nA0, nA1, nA0, nG1, nG0, nG0, nG1, nG0, nG0, nG1
	dc.b	nG0, nG1, nG0, nG1, nG0, nG0, nG0, nG1, nG0, nF1, nF0, nF0
	dc.b	nF1, nF0, nF0, nF1, nF0, nF1, nF0, nF1, nF0, nF0, nF0, nF1
	dc.b	nF0

MTPO_ThemeR_Loop34:
	dc.b	nE1, nE0, nE0
	smpsLoop            $00, $04, MTPO_ThemeR_Loop34
	dc.b	nE1, $02, $01, nE0, $03, nE1, $02, $01, nE0

MTPO_ThemeR_Loop35:
	dc.b	$03, nA1, nA0
	smpsLoop            $00, $03, MTPO_ThemeR_Loop35
	dc.b	nA1, nA0, nA1, nA0, nA0, nA0, nA1, nA0, nG1, nG0, nG0, nG1
	dc.b	nG0, nG0, nG1, nG0, nG1, nG0, nG1, nG0, nC2, $06, nG1, nA1
	dc.b	$03, nA0, nA0, nA1, nA0, nA0, nA1, nA0, nA1, nA0, nA1, nA0
	dc.b	nA0, nA0, nA1, nA0, nE1, nE0, nE0, nE1, nE0, nE0, nE1, nE0
	dc.b	nE1, nE0, nE1, nE0, nE1, $06, nG1, nA1, $03, nA0, nA0, nA1
	dc.b	nA0, nA0, nA1, nA0, nA1, nA0, nA1, nA0, nA0, nA0, nA1, nA0
	dc.b	nG1, nG0, nG0, nG1, nG0, nG0, nG1, nG0, nG1, nG0, nG1, nG0
	dc.b	nG0, nG0, nG1, nG0, nF1, nF0, nF0, nF1, nF0, nF0, nF1, nF0
	dc.b	nF1, nF0, nF1, nF0, nF0, nF0, nF1, nF0

MTPO_ThemeR_Loop36:
	dc.b	nE1, nE0, nE0
	smpsLoop            $00, $04, MTPO_ThemeR_Loop36
	dc.b	nE1, $02, $01, nE0, $03, nE1, $02, $01, nE0, $03
	smpsJump            MTPO_ThemeR_PSG1

; PSG2 Data
MTPO_ThemeR_PSG2:
	dc.b	nE1, $03, nRst, $0C, nE1, $03, $03, nD1, $06, nRst, $15, nC1
	dc.b	$03, nRst, $0C, nC1, $03, $03, nD1, $06, nRst, $12, nD1, $03
	dc.b	nE1, nRst, $2D, nA1, $12, nB1, $06, $02, nC2, $04, $06, nB1
	dc.b	$03, nA1, $09, nG1, $02, nA1, $07, nG1, $09, $02, nA1, $07
	dc.b	nG1, $09, nB1, $02, nC2, $04, nB1, $06, nA1, $12, nB1, $06
	dc.b	$02, nC2, $04, $06, nB1, $03, nC2, $09, nD2, $02, nE2, $07
	dc.b	nD2, $09, $02, nE2, $07, nD2, $09, $02, nE2, $01, nD2, $03
	dc.b	$02, nE2, $01, nD2, $03, nA1, $12, nB1, $03, nC2, $06, nA2
	dc.b	nB2, $02, nC3, $04, nB2, $06, nG2, $15, nA2, $03, nB2, $06
	dc.b	$02, nC3, $04, nB2, $06, $02, nC3, $01, nB2, $03, nF2, $15
	dc.b	nG2, $03, nA2, $06, $06, $03, nB2, $02, nC3, $01, nB2, $09
	dc.b	nE2, $30, nA1, $12, nB1, $06, $02, nC2, $04, $06, nB1, $03
	dc.b	nA1, $09, nG1, $02, nA1, $07, nG1, $09, $02, nA1, $07, nG1
	dc.b	$09, nB1, $02, nC2, $04, nB1, $06, nA1, $12, nB1, $06, $02
	dc.b	nC2, $04, $06, nB1, $03, nC2, $09, nD2, $02, nE2, $07, nD2
	dc.b	$09, $02, nE2, $07, nD2, $09, $02, nE2, $01, nD2, $03, $02
	dc.b	nE2, $01, nD2, $03, nA1, $12, nB1, $03, nC2, $06, nA2, nB2
	dc.b	$02, nC3, $04, nB2, $06, nG2, $15, nA2, $03, nB2, $06, $02
	dc.b	nC3, $04, nB2, $06, $02, nC3, $01, nB2, $03, nF2, $15, nG2
	dc.b	$03, nA2, $06, $06, $03, nB2, $02, nC3, $01, nB2, $09, nE3
	dc.b	$30
	smpsJump            MTPO_ThemeR_PSG2

; PSG3 Data
MTPO_ThemeR_PSG3:
	dc.b	nC1, $03, nRst, $0C, nC1, $03, $03, nB0, $06, nRst, $15, nA0
	dc.b	$03, nRst, $0C, nA0, $03, $03, nB0, $06, nRst, $12, nB0, $03
	dc.b	nC1, nRst, $2D, nE1, $12, $06, nG1, $02, nA1, $04, $06, nE1
	dc.b	$03, $09, nD1, $02, nE1, $07, nD1, $09, $02, nE1, $07, nD1
	dc.b	$09, nF1, $02, nG1, $04, nD1, $06, nE1, $12, $06, nG1, $02
	dc.b	nA1, $04, $06, nE1, $03, nA1, $09, nB1, $02, nC2, $07, nB1
	dc.b	$09, $02, nC2, $07, nB1, $09, $02, nC2, $01, nB1, $03, $02
	dc.b	nC2, $01, nB1, $03, nE1, $12, $03, nA1, $06, nE2, nG2, $02
	dc.b	nA2, $04, nG2, $06, nD2, $15, $03, nG2, $06, $02, nA2, $04
	dc.b	nG2, $06, $02, nA2, $01, nG2, $03, nC2, $15, $03, nF2, $06
	dc.b	$06, $03, nG2, $02, nA2, $01, nG2, $09, nB1, $30, nE1, $12
	dc.b	$06, nG1, $02, nA1, $04, $06, nE1, $03, $09, nD1, $02, nE1
	dc.b	$07, nD1, $09, $02, nE1, $07, nD1, $09, nF1, $02, nG1, $04
	dc.b	nD1, $06, nE1, $12, $06, nG1, $02, nA1, $04, $06, nE1, $03
	dc.b	nA1, $09, nB1, $02, nC2, $07, nB1, $09, $02, nC2, $07, nB1
	dc.b	$09, $02, nC2, $01, nB1, $03, $02, nC2, $01, nB1, $03, nE1
	dc.b	$12, $03, nA1, $06, nE2, nG2, $02, nA2, $04, nG2, $06, nD2
	dc.b	$15, $03, nG2, $06, $02, nA2, $04, nG2, $06, $02, nA2, $01
	dc.b	nG2, $03, nC2, $15, $03, nF2, $06, $06, $03, nG2, $02, nA2
	dc.b	$01, nG2, $09, nB2, $30
	smpsJump            MTPO_ThemeR_PSG3

; DAC Data
MTPO_ThemeR_DAC:
	smpsStop

MTPO_ThemeR_Voices:
;	Voice $00
;	$39
;	$33, $01, $51, $01, 	$5F, $5F, $5F, $5F, 	$0F, $00, $00, $1F
;	$01, $01, $01, $01, 	$33, $1A, $1A, $17, 	$1E, $19, $18, $08
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $00, $00, $0F
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $07, $0A, $0A, $03
	smpsVcTotalLevel    $08, $18, $19, $1E

;	Voice $01
;	$02
;	$00, $00, $00, $00, 	$0C, $0C, $16, $16, 	$17, $17, $00, $00
;	$09, $09, $09, $09, 	$02, $02, $02, $02, 	$21, $10, $12, $0C
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $16, $0C, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $17, $17
	smpsVcDecayRate2    $09, $09, $09, $09
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $02, $02, $02, $02
	smpsVcTotalLevel    $0C, $12, $10, $21

;	Voice $02
;	$3D
;	$00, $00, $01, $05, 	$5F, $5E, $5B, $5B, 	$05, $0C, $0E, $0E
;	$00, $04, $08, $07, 	$B0, $19, $39, $FC, 	$21, $0A, $0A, $08
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $05, $01, $00, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1B, $1B, $1E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $0E, $0C, $05
	smpsVcDecayRate2    $07, $08, $04, $00
	smpsVcDecayLevel    $0F, $03, $01, $0B
	smpsVcReleaseRate   $0C, $09, $09, $00
	smpsVcTotalLevel    $08, $0A, $0A, $21

;	Voice $03
;	$39
;	$03, $22, $61, $21, 	$1F, $12, $1F, $1F, 	$05, $05, $05, $0B
;	$04, $04, $04, $04, 	$10, $18, $10, $18, 	$1E, $15, $1D, $08
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $08, $1D, $15, $1E

;	Voice $04
;	$02
;	$01, $24, $61, $21, 	$1F, $12, $1F, $1F, 	$05, $05, $05, $0B
;	$04, $04, $04, $04, 	$10, $18, $10, $18, 	$1C, $1C, $1C, $08
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $02, $00
	smpsVcCoarseFreq    $01, $01, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $08, $1C, $1C, $1C

;	Voice $05
;	$1D
;	$00, $10, $21, $31, 	$9F, $5F, $5F, $5F, 	$00, $0F, $0F, $0F
;	$09, $06, $06, $00, 	$0F, $18, $18, $27, 	$19, $08, $08, $08
	smpsVcAlgorithm     $05
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $01, $00
	smpsVcCoarseFreq    $01, $01, $00, $00
	smpsVcRateScale     $01, $01, $01, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $00
	smpsVcDecayRate2    $00, $06, $06, $09
	smpsVcDecayLevel    $02, $01, $01, $00
	smpsVcReleaseRate   $07, $08, $08, $0F
	smpsVcTotalLevel    $08, $08, $08, $19

