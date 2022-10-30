SRB2_INV_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SRB2_INV_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $03, $05

	smpsHeaderDAC       SRB2_INV_DAC
	smpsHeaderFM        SRB2_INV_FM1,	$00, $10
	smpsHeaderFM        SRB2_INV_FM2,	$00, $0F
	smpsHeaderFM        SRB2_INV_FM3,	$00, $0B
	smpsHeaderFM        SRB2_INV_FM4,	$00, $0B
	smpsHeaderFM        SRB2_INV_FM5,	$00, $0B
	smpsHeaderFM        SRB2_INV_FM6,	$00, $0B
	smpsHeaderPSG       SRB2_INV_PSG1,	$00, $05, $00, $00
	smpsHeaderPSG       SRB2_INV_PSG2,	$00, $03, $00, fTone_04
	smpsHeaderPSG       SRB2_INV_PSG3,	$00, $03, $00, fTone_06

; FM1 Data
SRB2_INV_FM1:
	smpsSetvoice        $00

SRB2_INV_Loop07:
	smpsPan             panRight, $00
	dc.b	nCs5, $01, nRst
	smpsPan             panLeft, $00
	dc.b	nCs6, nAb5, nRst
	smpsPan             panRight, $00
	dc.b	nE5
	smpsPan             panLeft, $00
	dc.b	nCs5, nRst
	smpsPan             panRight, $00
	dc.b	nFs5, nE5, nRst
	smpsPan             panLeft, $00
	dc.b	nAb5
	smpsPan             panRight, $00
	dc.b	nB5, nRst
	smpsPan             panLeft, $00
	dc.b	nCs6, nAb5, nRst
	smpsPan             panRight, $00
	dc.b	nCs5
	smpsPan             panLeft, $00
	dc.b	nAb4, nRst
	smpsPan             panRight, $00
	dc.b	nFs5, nE5, nRst
	smpsPan             panLeft, $00
	dc.b	nB4
	smpsLoop            $00, $0D, SRB2_INV_Loop07
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nCs5, $03
	smpsStop

; FM2 Data
SRB2_INV_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $18

SRB2_INV_Loop06:
	dc.b	nCs3, $01, nRst, $02

SRB2_INV_Loop05:
	dc.b	nCs3, $05, nRst, $01
	smpsLoop            $00, $03, SRB2_INV_Loop05
	dc.b	nFs3, $06, $05, nRst, $01, nE3, $05, nRst, $01, nE3, $05, nRst
	dc.b	$01, nE3, $03
	smpsLoop            $01, $05, SRB2_INV_Loop06
	dc.b	nCs3, $01, nRst, $02, nCs3, $05, nRst, $01, nCs3, $05, nRst, $01
	dc.b	nCs3, $03, nE3, nFs3, $06, $03, nAb3, nA3, $05, nRst, $01, nAb3
	dc.b	$08, nRst, $01, nCs3, $05
	smpsStop

; FM3 Data
SRB2_INV_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nB5, $17, nRst, $01, nCs5, $55, smpsNoAttack, $0A, nRst, $01, nAb5, $55
	dc.b	smpsNoAttack, $0A, nRst, $01, nB5, $45, nFs5, $0B, nRst, $01, nE5, $0E
	dc.b	nRst, $01, nCs5, $05
	smpsStop

; FM4 Data
SRB2_INV_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $00
	dc.b	nE5, $17, nRst, $55, nRst, $0C, nCs5, $55, smpsNoAttack, $0A, nRst, $01
	dc.b	nAb5, $45, nCs5, $0B, nRst, $01, nB4, $0E
	smpsStop

; FM5 Data
SRB2_INV_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nRst, $18

SRB2_INV_Loop04:
	dc.b	nCs3, $01, nRst, $02

SRB2_INV_Loop03:
	dc.b	nCs3, $05, nRst, $01
	smpsLoop            $00, $03, SRB2_INV_Loop03
	dc.b	nCs3, $06, $05, nRst, $01, nB2, $05, nRst, $01, nB2, $05, nRst
	dc.b	$01, nB2, $03
	smpsLoop            $01, $06, SRB2_INV_Loop04
	dc.b	nCs3, $05
	smpsStop

; FM6 Data
SRB2_INV_FM6:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nRst, $18

SRB2_INV_Loop01:
	dc.b	nAb2, $01, nRst, $02

SRB2_INV_Loop00:
	dc.b	nAb2, $05, nRst, $01
	smpsLoop            $00, $03, SRB2_INV_Loop00
	dc.b	nAb2, $06, $05, nRst, $01, nFs2, $05, nRst, $01, nFs2, $05, nRst
	dc.b	$01, nFs2, $03
	smpsLoop            $01, $05, SRB2_INV_Loop01
	dc.b	nAb2, $01, nRst, $02

SRB2_INV_Loop02:
	dc.b	nAb2, $05, nRst, $01
	smpsLoop            $00, $03, SRB2_INV_Loop02
	dc.b	nFs2, $06, $05, nRst, $01, nE2, $05, nRst, $01, nE2, $05, nRst
	dc.b	$01, nE2, $03, nAb2, $05
	smpsStop

; PSG1 Data
SRB2_INV_PSG1:
	dc.b	nCs2, $01, nRst, nCs3, nAb2, nRst, nE2, nCs2, nRst, nFs2, nE2, nRst
	dc.b	nAb2, nB2, nRst, nCs3, nAb2, nRst, nCs2, nAb1, nRst, nFs2, nE2, nRst
	dc.b	nB1
	smpsLoop            $00, $0D, SRB2_INV_PSG1
	dc.b	nCs2, $03
	smpsStop

; PSG2 Data
SRB2_INV_PSG2:
	dc.b	nB2, $17, nRst, $01, nCs2, $55, smpsNoAttack, $0A, nRst, $01, nAb2, $55
	dc.b	smpsNoAttack, $0A, nRst, $01, nB2, $45, nFs2, $0B, nRst, $01, nE2, $0E
	smpsStop

; PSG3 Data
SRB2_INV_PSG3:
	dc.b	nRst, $18

SRB2_INV_Loop09:
	dc.b	nCs0, $01, nRst, $02

SRB2_INV_Loop08:
	dc.b	nCs0, $05, nRst, $01
	smpsLoop            $00, $03, SRB2_INV_Loop08
	dc.b	nCs0, $06, $05, nRst, $01, nC0, $05, nRst, $01, nC0, $05, nRst
	dc.b	$01, nC0, $03
	smpsLoop            $01, $06, SRB2_INV_Loop09
	dc.b	nCs0, $05
	smpsStop

; DAC Data
SRB2_INV_DAC:
	smpsStop

SRB2_INV_Voices:
;	Voice $00
;	$2E
;	$02, $01, $71, $31, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $0A, $0A, $0A, 	$1C, $04, $04, $04
	smpsVcAlgorithm     $06
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0A, $0A, $0A, $00
	smpsVcTotalLevel    $04, $04, $04, $1C

;	Voice $01
;	$3D
;	$00, $30, $70, $00, 	$1F, $1F, $1F, $11, 	$0B, $09, $00, $1F
;	$00, $00, $00, $00, 	$FF, $F9, $0F, $07, 	$1A, $00, $10, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $00, $09, $0B
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $0F
	smpsVcReleaseRate   $07, $0F, $09, $0F
	smpsVcTotalLevel    $00, $10, $00, $1A

;	Voice $02
;	$39
;	$03, $22, $61, $21, 	$1F, $12, $1F, $1F, 	$05, $05, $05, $0B
;	$00, $00, $00, $00, 	$10, $18, $10, $18, 	$1E, $12, $1D, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $05, $05, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $1D, $12, $1E

