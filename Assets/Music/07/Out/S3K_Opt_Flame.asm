MDNV2_BlueMoon_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MDNV2_BlueMoon_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $03, $0A

	smpsHeaderDAC       MDNV2_BlueMoon_DAC
	smpsHeaderFM        MDNV2_BlueMoon_FM1,	$00, $14
	smpsHeaderFM        MDNV2_BlueMoon_FM2,	$00, $0F
	smpsHeaderFM        MDNV2_BlueMoon_FM3,	$00, $18
	smpsHeaderFM        MDNV2_BlueMoon_FM4,	$00, $18
	smpsHeaderFM        MDNV2_BlueMoon_FM5,	$00, $14
	smpsHeaderFM        MDNV2_BlueMoon_FM6,	$00, $14
	smpsHeaderPSG       MDNV2_BlueMoon_PSG1,	$00, $07, $00, $00
	smpsHeaderPSG       MDNV2_BlueMoon_PSG2,	$00, $07, $00, $00
	smpsHeaderPSG       MDNV2_BlueMoon_PSG3,	$00, $07, $00, $00

; FM1 Data
MDNV2_BlueMoon_FM1:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nC4, $17, nRst, $01, nB3, $12, nRst, $06, nD4, $17, nRst, $19
	dc.b	nC4, $17, nRst, $01, nC4, $0B, nRst, $01, nB3, $06, nRst, nB3
	dc.b	$0B, nRst, $01, nA3, $06, nE3, nRst, $0C, nB3, $06, nC4, nF4
	dc.b	$17, nRst, $01, nE4, $17, nRst, $01, nF4, $12, nRst, $18, nF4
	dc.b	$03, nAb4

MDNV2_BlueMoon_Loop01:
	dc.b	nA4, $0B, nRst, $01, nE4, $06, nRst
	smpsLoop            $00, $02, MDNV2_BlueMoon_Loop01
	dc.b	nAb4, $17, nRst, $0D, nAb3, $03, nB3, nC4, nD4, nE4, $0B, nRst
	dc.b	$01, nA3, $06, nRst, nB3, $12, nRst, $06, nD4, $17, nRst, $0D
	dc.b	nB3, $03, nD4, nF4, nAb4, nA4, $0B, nRst, $01, nB4, $0B, nRst
	dc.b	$01, nC5, $17, nRst, $01, nD5, $17, nRst, $0D, nD4, $06, nE4
	dc.b	nF4, $0B, nRst, $01, nB4, $06, nA4, nE4, $11, nRst, $01, nE4
	dc.b	$06, nA4, $0B, nRst, $01, nD5, $0B, nRst, $13, nF4, $03, nAb4
	dc.b	nA4, $06, nB4, nA4, nB4, nA4, nE4, nD5, $0B, nRst, $01, nE5
	dc.b	$17, nRst
	smpsJump            MDNV2_BlueMoon_FM1

; FM2 Data
MDNV2_BlueMoon_FM2:
	smpsPan             panRight, $00
	smpsSetvoice        $00
	dc.b	nRst, $06, nA2, nE3, nA3, nRst, nA2, nE3, nB3, nRst, nAb2, nF3
	dc.b	nB3, nRst, $1E, nF2, $06, nC3, nA3, nRst, nF2, nC3, nA3, nRst
	dc.b	nE2, nE3, nA3, nRst, $1E, nD3, $06, nA3, nC4, nRst, nE3, nG3
	dc.b	nC4, nRst, nF3, nB3, nF4, nRst, $1E, nE3, $06, nB3, nE4, nRst
	dc.b	nE3, nB3, nE4, nRst, nE3, nB3, nE4, nRst, $1E, nA2, $06, nE3
	dc.b	nA3, nRst, nA2, nE3, nB3, nRst, nA2, nE3, nB3, nRst, $1E, nF3
	dc.b	$06, nC4, nA4, nRst, nF3, nC4, nA4, nRst, nE3, nE4, nA4, nRst
	dc.b	$1E, nD3, $06, nA3, nC4, nRst, nE3, nG3, nC4, nRst, nF3, nB3
	dc.b	nF4, nRst, $1E, nE3, $06, nB3, nE4, nRst, nE3, nB3, nE4, nRst
	dc.b	nE3, nB3, nE4, nRst, $16
	smpsJump            MDNV2_BlueMoon_FM2

; FM3 Data
MDNV2_BlueMoon_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nA2, $03, nE3, nA3, nC4, nE3, nA3, nC4, nE4, nB4, nA4, nE4
	dc.b	nB3, nA4, nE4, nB3, nA3, nF3, nA3, nB3, nD4, nA3, nB3, nD4
	dc.b	nF4, nRst, $18, nA2, $03, nF3, nA3, nC4, nF3, nA3, nC4, nF4
	dc.b	nB4, nA4, nE4, nC4, nA4, nE4, nC4, nA3, nB2, nE3, nA3, nB3
	dc.b	nE3, nA3, nB3, nD4, nRst, $18, nA2, $03, nD3, nA3, nC4, nD3
	dc.b	nA3, nC4, nD4, nC5, nG4, nE4, nC4, nG4, nE4, nC4, nG3, nA2
	dc.b	nF3, nA3, nB3, nF3, nA3, nB3, nD4, nRst, $18, nB2, $03, nE3
	dc.b	nA3, nB3, nE3, nA3, nB3, nE4, nA4, nE4, nB3, nA3, nE4, nB3
	dc.b	nA3, nE3, nB2, nE3, nAb3, nB3, nE3, nAb3, nB3, nE4, nRst, $18
	smpsSetvoice        $00
	dc.b	nC4, $0B, nRst, $55, nRst, $30, nB4, $17, nRst, $49, nD4, $0B
	dc.b	nRst, $55, nAb4, $17, nRst
	smpsJump            MDNV2_BlueMoon_FM3

; FM4 Data
MDNV2_BlueMoon_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $55, nRst, $55, nRst, $16
	smpsSetvoice        $00
	dc.b	nD4, $17, nRst, $19, nD4, $17, nRst, $49, nD4, $17, nRst, $19
	smpsSetvoice        $02
	dc.b	nA3, $17, nRst, $01, nB3, $17, nRst, $01, nB3, $22, nRst, $0E
	dc.b	nC4, $17, nRst, $01, nA3, $17, nRst, $01, nB3, $22, nRst, $0E
	dc.b	nA3, $17, nRst, $01, nG3, $17, nRst, $01, nB3, $22, nRst, $0E
	dc.b	nA3, $2E, nRst, $02, nAb3, $2E
	smpsJump            MDNV2_BlueMoon_FM4

; FM5 Data
MDNV2_BlueMoon_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nRst

MDNV2_BlueMoon_Loop00:
	dc.b	$33
	smpsLoop            $00, $07, MDNV2_BlueMoon_Loop00
	dc.b	nRst, $01
	smpsSetvoice        $00
	dc.b	nRst, $1A
	smpsSetvoice        $02
	dc.b	nE3, $17, nRst, $01, nA3, $17, nRst, $01, nAb3, $22, nRst, $0E
	dc.b	nA3, $17, nRst, $01, nF3, $17, nRst, $01, nE3, $22, nRst, $0E
	dc.b	nF3, $17, nRst, $01, nE3, $17, nRst, $01, nF3, $22, nRst, $0E
	dc.b	nE3, $2E, nRst, $02, nE3, $2E
	smpsJump            MDNV2_BlueMoon_FM5

; FM6 Data
MDNV2_BlueMoon_FM6:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nRst, $45, nRst, $45, nRst, $45, nRst, $45, nRst, $45, nRst, $02
	smpsSetvoice        $00
	dc.b	nRst, $25
	smpsSetvoice        $02
	dc.b	nC3, $17, nRst, $01, nE3, $17, nRst, $01, nD3, $22, nRst, $0E
	dc.b	nF3, $17, nRst, $01, nC3, $17, nRst, $01, nD3, $22, nRst, $0E
	dc.b	nD3, $17, nRst, $01, nC3, $17, nRst, $01, nD3, $22, nRst, $0E
	dc.b	nB2, $2E, nRst, $02, nB2, $2E
	smpsJump            MDNV2_BlueMoon_FM6

; PSG1 Data
MDNV2_BlueMoon_PSG1:
	smpsPSGvoice        fTone_0A
	dc.b	nC1, $17, nRst, $01, nB0, $12, nRst, $06, nD1, $17, nRst, $19
	dc.b	nC1, $17, nRst, $01, nC1, $0B, nRst, $01, nB0, $06, nA0, nB0
	dc.b	$0B, nRst, $01, nA0, $06, nE0, nRst, $0C, nB0, $06, nC1, nF1
	dc.b	$17, nRst, $01, nE1, $17, nRst, $01, nF1, $12, nRst, $18, nF1
	dc.b	$03, nAb1

MDNV2_BlueMoon_Loop02:
	dc.b	nA1, $0B, nRst, $01, nE1, $06, nRst
	smpsLoop            $00, $02, MDNV2_BlueMoon_Loop02
	dc.b	nAb1, $17, nRst, $0D, nAb0, $03, nB0, nC1, nD1, nE1, $0B, nRst
	dc.b	$01, nA0, $06, nRst, nB0, $12, nRst, $06, nD1, $17, nRst, $0D
	dc.b	nB0, $03, nD1, nF1, nAb1, nA1, $0B, nRst, $01, nB1, $0B, nRst
	dc.b	$01, nC2, $17, nRst, $01, nD2, $17, nRst, $0D, nD1, $06, nE1
	dc.b	nF1, $0B, nRst, $01, nB1, $06, nA1, nE1, $11, nRst, $01, nE1
	dc.b	$06, nA1, $0B, nRst, $01, nD2, $0B, nRst, $13, nF1, $03, nAb1
	dc.b	nA1, $06, nB1, nA1, nB1, nA1, nE1, nD2, $0B, nRst, $01, nE2
	dc.b	$17, nRst
	smpsJump            MDNV2_BlueMoon_PSG1

; PSG2 Data
MDNV2_BlueMoon_PSG2:
	smpsPSGvoice        fTone_0A
	dc.b	nRst, $06, nC0, nE0, nA0, nRst, nC0, nE0, nB0, nRst, nC0, nF0
	dc.b	nB0, nRst, $1E, nC0, $06, $06, nA0, nRst, nC0, nC0, nA0, nRst
	dc.b	nC0, nE0, nA0, nRst, $1E, nD0, $06, nA0, nC1, nRst, nE0, nG0
	dc.b	nC1, nRst, nF0, nB0, nF1, nRst, $1E, nE0, $06, nB0, nE1, nRst
	dc.b	nE0, nB0, nE1, nRst, nE0, nB0, nE1, nRst, $1E, nC0, $06, nE0
	dc.b	nA0, nRst, nC0, nE0, nB0, nRst, nC0, nE0, nB0, nRst, $1E, nF0
	dc.b	$06, nC1, nA1, nRst, nF0, nC1, nA1, nRst, nE0, nE1, nA1, nRst
	dc.b	$1E, nD0, $06, nA0, nC1, nRst, nE0, nG0, nC1, nRst, nF0, nB0
	dc.b	nF1, nRst, $1E, nE0, $06, nB0, nE1, nRst, nE0, nB0, nE1, nRst
	dc.b	nE0, nB0, nE1, nRst, $16
	smpsJump            MDNV2_BlueMoon_PSG2

; PSG3 Data
MDNV2_BlueMoon_PSG3:
	smpsPSGvoice        fTone_0A
	dc.b	nRst, $55, nRst, $55, nRst, $16, nD1, $17, nRst, $19, nD1, $17
	dc.b	nRst, $49, nD1, $17, nRst, $19, nC1, $0B, nRst, $55, nRst, $30
	dc.b	nB1, $17, nRst, $49, nD1, $0B, nRst, $55, nAb1, $17, nRst
	smpsJump            MDNV2_BlueMoon_PSG3

; DAC Data
MDNV2_BlueMoon_DAC:
	smpsStop

MDNV2_BlueMoon_Voices:
;	Voice $00
;	$36
;	$73, $72, $35, $30, 	$17, $16, $16, $0E, 	$08, $08, $09, $08
;	$00, $08, $08, $05, 	$D5, $35, $07, $55, 	$1C, $06, $10, $06
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $00, $05, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $16, $16, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $08, $08
	smpsVcDecayRate2    $05, $08, $08, $00
	smpsVcDecayLevel    $05, $00, $03, $0D
	smpsVcReleaseRate   $05, $07, $05, $05
	smpsVcTotalLevel    $06, $10, $06, $1C

;	Voice $01
;	$3B
;	$00, $71, $71, $01, 	$1F, $16, $0F, $12, 	$10, $10, $10, $10
;	$06, $06, $06, $06, 	$00, $01, $01, $16, 	$19, $19, $19, $04
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $07, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $10, $10
	smpsVcDecayRate2    $06, $06, $06, $06
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $06, $01, $01, $00
	smpsVcTotalLevel    $04, $19, $19, $19

;	Voice $02
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $08
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $08, $15, $22, $1C

