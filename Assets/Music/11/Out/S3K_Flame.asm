KSSU_HelperRest_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     KSSU_HelperRest_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $04, $08

	smpsHeaderDAC       KSSU_HelperRest_DAC
	smpsHeaderFM        KSSU_HelperRest_FM1,	$00, $0F
	smpsHeaderFM        KSSU_HelperRest_FM2,	$00, $1F
	smpsHeaderFM        KSSU_HelperRest_FM3,	$00, $0F
	smpsHeaderFM        KSSU_HelperRest_FM4,	$00, $1F
	smpsHeaderFM        KSSU_HelperRest_FM5,	$00, $0F
	smpsHeaderFM        KSSU_HelperRest_FM6,	$00, $1F
	smpsHeaderPSG       KSSU_HelperRest_PSG1,	$00, $07, $00, $00
	smpsHeaderPSG       KSSU_HelperRest_PSG2,	$00, $07, $00, $00
	smpsHeaderPSG       KSSU_HelperRest_PSG3,	$00, $07, $00, $00

; FM1 Data
KSSU_HelperRest_FM1:
	smpsSetvoice        $00

KSSU_HelperRest_Jump03:
	smpsPan             panRight, $00
	dc.b	nF4, $04, nA4, $04, nC5, $04, nE5, $04, nF5, $04, nE5, $04
	dc.b	nC5, $04, nA4, $04, nE4, $04, nG4, $04, nB4, $04, nD5, $04
	dc.b	nE5, $04, nD5, $04, nB4, $04, nG4, $04, nD4, $04, nF4, $04
	dc.b	nA4, $04, nC5, $04, nD5, $04, nC5, $04, nA4, $04, nF4, $04
	dc.b	nE4, $04, nFs4, $04, nA4, $04, nCs5, $04, nE5, $04, nCs5, $04
	dc.b	nA4, $04, nFs4, $04, nF4, $04, nA4, $04, nC5, $04, nE5, $04
	dc.b	nF5, $04, nE5, $04, nC5, $04, nA4, $04, nE4, $04, nG4, $04
	dc.b	nB4, $04, nD5, $04, nE5, $04, nD5, $04, nB4, $04, nG4, $04
	dc.b	nF4, $04, nA4, $04, nC5, $04, nD5, $04, nD4, $04, nF4, $04
	dc.b	nA4, $04, nC5, $04, nA3, $04, nC4, $04, nE4, $04, nG4, $04
	dc.b	nG3, $04, nC4, $04, nE4, $04, nG4, $04, nRst, $04
	smpsJump            KSSU_HelperRest_Jump03

; FM2 Data
KSSU_HelperRest_FM2:
	smpsSetvoice        $00

KSSU_HelperRest_Jump02:
	smpsPan             panLeft, $00
	dc.b	nRst, $04, nF4, $04, nA4, $04, nC5, $04, nE5, $04, nF5, $04
	dc.b	nE5, $04, nC5, $04, nA4, $04, nE4, $04, nG4, $04, nB4, $04
	dc.b	nD5, $04, nE5, $04, nD5, $04, nB4, $04, nG4, $04, nD4, $04
	dc.b	nF4, $04, nA4, $04, nC5, $04, nD5, $04, nC5, $04, nA4, $04
	dc.b	nF4, $04, nE4, $04, nFs4, $04, nA4, $04, nCs5, $04, nE5, $04
	dc.b	nCs5, $04, nA4, $04, nFs4, $04, nF4, $04, nA4, $04, nC5, $04
	dc.b	nE5, $04, nF5, $04, nE5, $04, nC5, $04, nA4, $04, nE4, $04
	dc.b	nG4, $04, nB4, $04, nD5, $04, nE5, $04, nD5, $04, nB4, $04
	dc.b	nG4, $04, nF4, $04, nA4, $04, nC5, $04, nD5, $04, nD4, $04
	dc.b	nF4, $04, nA4, $04, nC5, $04, nA3, $04, nC4, $04, nE4, $04
	dc.b	nG4, $04, nG3, $04, nC4, $04, nE4, $04, nG4, $04
	smpsJump            KSSU_HelperRest_Jump02

; FM3 Data
KSSU_HelperRest_FM3:
	smpsSetvoice        $01

KSSU_HelperRest_Jump01:
	smpsPan             panRight, $00
	dc.b	nA4, $0C, nB4, $04, nC5, $08, nA5, $08, nG5, $08, nE5, $04
	dc.b	nD5, $04, nE5, $08, nA4, $08, nD5, $08, nF5, $08, nG5, $08
	dc.b	nF5, $08, nE5, $08, nA5, $08, nAb5, $08, nE5, $08, nC5, $04
	dc.b	nB4, $04, nA4, $04, nB4, $04, nC5, $08, nA5, $08, nG5, $08
	dc.b	nE5, $04, nD5, $04, nE5, $08, nA4, $08, nD5, $08, nF5, $08
	dc.b	nG5, $08, nF5, $08, nE5, $08, nC5, $04, nB4, $04, nC5, $08
	dc.b	nB4, $08, nRst, $04
	smpsJump            KSSU_HelperRest_Jump01

; FM4 Data
KSSU_HelperRest_FM4:
	smpsSetvoice        $01

KSSU_HelperRest_Jump00:
	smpsPan             panLeft, $00
	dc.b	nRst, $04, nA4, $0C, nB4, $04, nC5, $08, nA5, $08, nG5, $08
	dc.b	nE5, $04, nD5, $04, nE5, $08, nA4, $08, nD5, $08, nF5, $08
	dc.b	nG5, $08, nF5, $08, nE5, $08, nA5, $08, nAb5, $08, nE5, $08
	dc.b	nC5, $04, nB4, $04, nA4, $04, nB4, $04, nC5, $08, nA5, $08
	dc.b	nG5, $08, nE5, $04, nD5, $04, nE5, $08, nA4, $08, nD5, $08
	dc.b	nF5, $08, nG5, $08, nF5, $08, nE5, $08, nC5, $04, nB4, $04
	dc.b	nC5, $08, nB4, $08
	smpsJump            KSSU_HelperRest_Jump00

; FM5 Data
KSSU_HelperRest_FM5:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nF3, $20, nE3, $20, nD3, $20, nFs3, $20, nF3, $20, nE3, $20
	dc.b	nD3, $20, nA2, $10, nG2, $10, nRst, $04
	smpsJump            KSSU_HelperRest_FM5

; FM6 Data
KSSU_HelperRest_FM6:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	dc.b	nRst, $04, nF3, $20, nE3, $20, nD3, $20, nFs3, $20, nF3, $20
	dc.b	nE3, $20, nD3, $20, nA2, $10, nG2, $10
	smpsJump            KSSU_HelperRest_FM6

; PSG1 Data
KSSU_HelperRest_PSG1:
	dc.b	nF1, $04, nA1, $04, nC2, $04, nE2, $04, nF2, $04, nE2, $04
	dc.b	nC2, $04, nA1, $04, nE1, $04, nG1, $04, nB1, $04, nD2, $04
	dc.b	nE2, $04, nD2, $04, nB1, $04, nG1, $04, nD1, $04, nF1, $04
	dc.b	nA1, $04, nC2, $04, nD2, $04, nC2, $04, nA1, $04, nF1, $04
	dc.b	nE1, $04, nFs1, $04, nA1, $04, nCs2, $04, nE2, $04, nCs2, $04
	dc.b	nA1, $04, nFs1, $04, nF1, $04, nA1, $04, nC2, $04, nE2, $04
	dc.b	nF2, $04, nE2, $04, nC2, $04, nA1, $04, nE1, $04, nG1, $04
	dc.b	nB1, $04, nD2, $04, nE2, $04, nD2, $04, nB1, $04, nG1, $04
	dc.b	nF1, $04, nA1, $04, nC2, $04, nD2, $04, nD1, $04, nF1, $04
	dc.b	nA1, $04, nC2, $04, nA0, $04, nC1, $04, nE1, $04, nG1, $04
	dc.b	nG0, $04, nC1, $04, nE1, $04, nG1, $04, nRst, $04
	smpsStop

; PSG2 Data
KSSU_HelperRest_PSG2:
	smpsPSGvoice        $00
	dc.b	nA1, $0C, nB1, $04, nC2, $08, nA2, $08, nG2, $08, nE2, $04
	dc.b	nD2, $04, nE2, $08, nA1, $08, nD2, $08, nF2, $08, nG2, $08
	dc.b	nF2, $08, nE2, $08, nA2, $08, nAb2, $08, nE2, $08, nC2, $04
	dc.b	nB1, $04, nA1, $04, nB1, $04, nC2, $08, nA2, $08, nG2, $08
	dc.b	nE2, $04, nD2, $04, nE2, $08, nA1, $08, nD2, $08, nF2, $08
	dc.b	nG2, $08, nF2, $08, nE2, $08, nC2, $04, nB1, $04, nC2, $08
	dc.b	nB1, $08, nRst, $04
	smpsJump            KSSU_HelperRest_PSG2

; PSG3 Data
KSSU_HelperRest_PSG3:
	smpsPSGvoice        fTone_01
	dc.b	nF0, $20, nE0, $20, nD0, $20, nFs0, $20, nF0, $20, nE0, $20
	dc.b	nD0, $20, nC0, $10, nC0, $10, nRst, $04
	smpsJump            KSSU_HelperRest_PSG3

; DAC Data
KSSU_HelperRest_DAC:
	smpsStop

KSSU_HelperRest_Voices:
;	Voice $00
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

;	Voice $01
;	$3A
;	$01, $05, $31, $01, 	$59, $59, $5C, $4E, 	$0A, $0B, $0D, $04
;	$03, $02, $03, $06, 	$15, $58, $27, $06, 	$1D, $0F, $30, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $0E, $1C, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0D, $0B, $0A
	smpsVcDecayRate2    $06, $03, $02, $03
	smpsVcDecayLevel    $00, $02, $05, $01
	smpsVcReleaseRate   $06, $07, $08, $05
	smpsVcTotalLevel    $00, $30, $0F, $1D

;	Voice $02
;	$34
;	$73, $02, $01, $31, 	$52, $5F, $5F, $1F, 	$05, $05, $05, $0A
;	$03, $04, $04, $04, 	$21, $11, $23, $45, 	$1E, $10, $23, $06
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $07
	smpsVcCoarseFreq    $01, $01, $02, $03
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $05, $05, $05
	smpsVcDecayRate2    $04, $04, $04, $03
	smpsVcDecayLevel    $04, $02, $01, $02
	smpsVcReleaseRate   $05, $03, $01, $01
	smpsVcTotalLevel    $06, $23, $10, $1E

