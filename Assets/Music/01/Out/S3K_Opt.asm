SOVA_SA_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SOVA_SA_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $03, $0F

	smpsHeaderDAC       SOVA_SA_DAC
	smpsHeaderFM        SOVA_SA_FM1,	$00, $10
	smpsHeaderFM        SOVA_SA_FM2,	$00, $20
	smpsHeaderFM        SOVA_SA_FM3,	$00, $0F
	smpsHeaderFM        SOVA_SA_FM4,	$00, $1D
	smpsHeaderFM        SOVA_SA_FM5,	$00, $0E
	smpsHeaderFM        SOVA_SA_FM6,	$00, $1B
	smpsHeaderPSG       SOVA_SA_PSG1,	$00, $05, $00, fTone_08
	smpsHeaderPSG       SOVA_SA_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       SOVA_SA_PSG3,	$00, $05, $00, $00

; FM1 Data
SOVA_SA_FM1:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nRst, $10

SOVA_SA_Loop07:
	dc.b	nE4, $02

SOVA_SA_Loop08:
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, $30
	smpsLoop            $00, $04, SOVA_SA_Loop07

SOVA_SA_Jump05:
	dc.b	nE4, $02
	smpsLoop            $01, $03, SOVA_SA_Loop08

SOVA_SA_Loop09:
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nA4, nRst, nE4, nG4
	dc.b	nRst, nA4, nRst, nE4
	smpsLoop            $00, $02, SOVA_SA_Loop09
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nG4, nRst, nE4, nD5
	dc.b	nRst, nB4, nRst, nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4, nG4
	dc.b	nFs4, nE4, nFs4, nE4, nRst, nD4, nRst, nE4
	smpsLoop            $01, $03, SOVA_SA_Loop09

SOVA_SA_Loop0A:
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nA4, nRst, nE4, nG4
	dc.b	nRst, nA4, nRst, nE4
	smpsLoop            $00, $02, SOVA_SA_Loop0A
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nG4, nRst, nE4, nD5
	dc.b	nRst, nB4, nRst, nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4, nG4
	dc.b	nFs4, nE4, nFs4, nE4, nRst, nD4
	smpsAlterNote       $00
	dc.b	nRst
	smpsJump            SOVA_SA_Jump05

; FM2 Data
SOVA_SA_FM2:
	smpsPan             panRight, $00
	smpsSetvoice        $00
	dc.b	nRst, $13

SOVA_SA_Loop03:
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, $30
	smpsLoop            $00, $03, SOVA_SA_Loop03
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, $2D

SOVA_SA_Jump04:
	dc.b	nRst, $03

SOVA_SA_Loop04:
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, $30
	smpsLoop            $00, $08, SOVA_SA_Loop04

SOVA_SA_Loop05:
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nA4, nRst
	dc.b	nE4, nG4, nRst, nA4, nRst
	smpsLoop            $00, $02, SOVA_SA_Loop05
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nG4, nRst, nE4
	dc.b	nD5, nRst, nB4, nRst, nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4
	dc.b	nG4, nFs4, nE4, nFs4, nE4, nRst, nD4, nRst
	smpsLoop            $01, $03, SOVA_SA_Loop05

SOVA_SA_Loop06:
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nA4, nRst, nE4
	dc.b	nG4, nRst, nA4, nRst
	smpsLoop            $00, $02, SOVA_SA_Loop06
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst, nG4, nRst, nE4
	dc.b	nD5, nRst, nB4, nRst, nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4
	dc.b	nG4, nFs4, nE4, nFs4, nE4, nRst
	smpsAlterNote       $00
	dc.b	$01
	smpsJump            SOVA_SA_Jump04

; FM3 Data
SOVA_SA_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	smpsModSet          $00, $01, $04, $04
	smpsModOn
	smpsModOn
	dc.b	nC5, $10, nRst, $55, nRst, $55, nRst, $26

SOVA_SA_Loop02:
	dc.b	nC5, $10, nRst, nC5

SOVA_SA_Jump03:
	smpsSetvoice        $02
	dc.b	nE5, $34, nA4, $08, nG4, $04, nB4, $20, nE4, $14, nG4, $04
	dc.b	nA4, nB4, nE5, $34, nA5, $08, nE5, $04, nB5, $20, nE5, $14
	dc.b	nG4, $04, nA4, nB4, nE5, $34, nA4, $08, nG4, $04, nB4, $20
	dc.b	nE4, $14, nG4, $04, nA4, nB4, nE5, $34, nA5, $08, nE5, $04
	dc.b	nB5, $0C, nRst, $04
	smpsSetvoice        $01
	smpsLoop            $00, $02, SOVA_SA_Loop02
	dc.b	nC5, $10
	smpsAlterNote       $00
	dc.b	nRst, nC5
	smpsJump            SOVA_SA_Jump03

; FM4 Data
SOVA_SA_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	smpsModSet          $00, $01, $04, $04
	smpsModOn
	smpsModOn
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $11

SOVA_SA_Jump02:
	dc.b	nRst, $03, nE5, $34, nA4, $08, nG4, $04, nB4, $20, nE4, $14
	dc.b	nG4, $04, nA4, nB4, nE5, $34, nA5, $08, nE5, $04, nB5, $20
	dc.b	nE5, $14, nG4, $04, nA4, nB4, nE5, $34, nA4, $08, nG4, $04
	dc.b	nB4, $20, nE4, $14, nG4, $04, nA4, nB4, nE5, $34, nA5, $08
	dc.b	nE5, $04, nB5, $20, nRst, nE5, $34, nA4, $08, nG4, $04, nB4
	dc.b	$20, nE4, $14, nG4, $04, nA4, nB4, nE5, $34, nA5, $08, nE5
	dc.b	$04, nB5, $20, nE5, $14, nG4, $04, nA4, nB4, nE5, $34, nA4
	dc.b	$08, nG4, $04, nB4, $20, nE4, $14, nG4, $04, nA4, nB4, nE5
	dc.b	$34, nA5, $08, nE5, $04, nB5, $20
	smpsAlterNote       $00
	dc.b	nRst, $1D
	smpsJump            SOVA_SA_Jump02

; FM5 Data
SOVA_SA_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	dc.b	nRst, $10, nE3, $20

SOVA_SA_Loop01:
	dc.b	$06, nD4, nA3, $14, nB3, $20, nE3, nE3, nE3, $06, nD4, nA3
	dc.b	$14, nB3, $20, nE3, $14, $04, nG3, nA3

SOVA_SA_Jump01:
	dc.b	nE3, $20
	smpsLoop            $00, $04, SOVA_SA_Loop01
	dc.b	$06, nD4, nA3, $14, nB3, $20, nE3, nE3, nE3, $06, nD4, nA3
	dc.b	$14, nB3, $20, nE3, $14, $04, nG3, nA3
	smpsJump            SOVA_SA_Jump01

; FM6 Data
SOVA_SA_FM6:
	smpsPan             panRight, $00
	smpsSetvoice        $03
	dc.b	nRst, $14

SOVA_SA_Loop00:
	dc.b	nE3, $20, $06, nD4, nA3, $14, nB3, $20, nE3, nE3, nE3, $06
	dc.b	nD4, nA3, $14, nB3, $20, nE3, $14, $04, nG3

SOVA_SA_Jump00:
	dc.b	nA3, $04
	smpsLoop            $00, $04, SOVA_SA_Loop00
	dc.b	nE3, $20, $06, nD4, nA3, $14, nB3, $20, nE3, nE3, nE3, $06
	dc.b	nD4, nA3, $14, nB3, $20, nE3, $14, $04, nG3
	smpsJump            SOVA_SA_Jump00

; PSG1 Data
SOVA_SA_PSG1:
	dc.b	nRst, $10, nC1, $20, nD1, nG0, nE0, nC1, nD1, nG0, nE0

SOVA_SA_Loop0F:
	dc.b	nC1, $04, nC2
	smpsLoop            $00, $04, SOVA_SA_Loop0F

SOVA_SA_Loop10:
	dc.b	nD1, nD2
	smpsLoop            $00, $04, SOVA_SA_Loop10

SOVA_SA_Loop11:
	dc.b	nG0, nG1
	smpsLoop            $00, $04, SOVA_SA_Loop11

SOVA_SA_Loop12:
	dc.b	nE0, nE1
	smpsLoop            $00, $04, SOVA_SA_Loop12
	smpsLoop            $01, $03, SOVA_SA_Loop0F

SOVA_SA_Loop13:
	dc.b	nC1, nC2
	smpsLoop            $00, $04, SOVA_SA_Loop13

SOVA_SA_Loop14:
	dc.b	nD1, nD2
	smpsLoop            $00, $04, SOVA_SA_Loop14

SOVA_SA_Loop15:
	dc.b	nG0, nG1
	smpsLoop            $00, $04, SOVA_SA_Loop15
	dc.b	nE0, $20
	smpsLoop            $02, $02, SOVA_SA_Loop0F
	smpsJump            SOVA_SA_Loop0F

; PSG2 Data
SOVA_SA_PSG2:
	dc.b	nRst, $10

SOVA_SA_Loop0B:
	dc.b	nE1, $02

SOVA_SA_Loop0C:
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst, $30
	smpsLoop            $00, $04, SOVA_SA_Loop0B

SOVA_SA_Jump07:
	dc.b	nE1, $02
	smpsLoop            $01, $03, SOVA_SA_Loop0C

SOVA_SA_Loop0D:
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst, nA1, nRst, nE1, nG1
	dc.b	nRst, nA1, nRst, nE1
	smpsLoop            $00, $02, SOVA_SA_Loop0D
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst, nG1, nRst, nE1, nD2
	dc.b	nRst, nB1, nRst, nA1, nRst, nG1, nA1, nRst, nG1, nRst, nFs1, nG1
	dc.b	nFs1, nE1, nFs1, nE1, nRst, nD1, nRst, nE1
	smpsLoop            $01, $03, SOVA_SA_Loop0D

SOVA_SA_Loop0E:
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst, nA1, nRst, nE1, nG1
	dc.b	nRst, nA1, nRst, nE1
	smpsLoop            $00, $02, SOVA_SA_Loop0E
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst, nG1, nRst, nE1, nD2
	dc.b	nRst, nB1, nRst, nA1, nRst, nG1, nA1, nRst, nG1, nRst, nFs1, nG1
	dc.b	nFs1, nE1, nFs1, nE1, nRst, nD1
	smpsAlterNote       $00
	dc.b	nRst
	smpsJump            SOVA_SA_Jump07

; PSG3 Data
SOVA_SA_PSG3:
	smpsModSet          $00, $02, $02, $02
	smpsModOn
	smpsModOn
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $11

SOVA_SA_Jump06:
	dc.b	nE2, $34, nA1, $08, nG1, $04, nB1, $20, nE1, $14, nG1, $04
	dc.b	nA1, nB1, nE2, $34, nA2, $08, nE2, $04, nB2, $20, nE2, $14
	dc.b	nG1, $04, nA1, nB1, nE2, $34, nA1, $08, nG1, $04, nB1, $20
	dc.b	nE1, $14, nG1, $04, nA1, nB1, nE2, $34, nA2, $08, nE2, $04
	dc.b	nB2, $0C, nRst, $34, nE2, nA1, $08, nG1, $04, nB1, $20, nE1
	dc.b	$14, nG1, $04, nA1, nB1, nE2, $34, nA2, $08, nE2, $04, nB2
	dc.b	$20, nE2, $14, nG1, $04, nA1, nB1, nE2, $34, nA1, $08, nG1
	dc.b	$04, nB1, $20, nE1, $14, nG1, $04, nA1, nB1, nE2, $34, nA2
	dc.b	$08, nE2, $04, nB2, $0C, nRst, $14
	smpsAlterNote       $00
	dc.b	nRst, $20
	smpsJump            SOVA_SA_Jump06

; DAC Data
SOVA_SA_DAC:
	smpsStop

SOVA_SA_Voices:
;	Voice $00
;	$2A
;	$01, $08, $06, $04, 	$53, $1F, $1F, $50, 	$12, $14, $11, $1F
;	$00, $00, $00, $00, 	$29, $15, $36, $0B, 	$17, $33, $1C, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $06, $08, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $10, $1F, $1F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $11, $14, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $03, $01, $02
	smpsVcReleaseRate   $0B, $06, $05, $09
	smpsVcTotalLevel    $00, $1C, $33, $17

;	Voice $01
;	$3D
;	$0F, $04, $00, $00, 	$08, $07, $46, $07, 	$00, $00, $12, $05
;	$00, $0F, $0F, $0F, 	$00, $0D, $47, $07, 	$00, $03, $03, $03
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $04, $0F
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $07, $06, $07, $08
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $00, $00
	smpsVcDecayRate2    $0F, $0F, $0F, $00
	smpsVcDecayLevel    $00, $04, $00, $00
	smpsVcReleaseRate   $07, $07, $0D, $00
	smpsVcTotalLevel    $03, $03, $03, $00

;	Voice $02
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $03
;	$39
;	$03, $22, $61, $21, 	$1F, $12, $1F, $1F, 	$05, $05, $05, $0B
;	$00, $00, $00, $08, 	$10, $18, $10, $18, 	$1E, $15, $1D, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $08, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $1D, $15, $1E

