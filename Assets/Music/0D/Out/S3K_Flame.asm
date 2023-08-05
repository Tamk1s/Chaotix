GSX_Intro_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     GSX_Intro_Voices
	smpsHeaderChan      $07, $02
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       GSX_Intro_DAC
	smpsHeaderFM        GSX_Intro_FM1,	$00, $23
	smpsHeaderFM        GSX_Intro_FM2,	$00, $14
	smpsHeaderFM        GSX_Intro_FM3,	$00, $19
	smpsHeaderFM        GSX_Intro_FM4,	$00, $16
	smpsHeaderFM        GSX_Intro_FM5,	$00, $08
	smpsHeaderFM        GSX_Intro_FM6,	$00, $16
	smpsHeaderPSG       GSX_Intro_PSG1,	$00, $00, $00, fTone_06
	smpsHeaderPSG       GSX_Intro_PSG2,	$00, $05, $00, fTone_01

; FM1 Data
GSX_Intro_FM1:
	smpsAlterNote       $04
	dc.b	nRst, $7F, nRst, $7F, nRst, $22
	smpsAlterNote       $00
	smpsSetvoice        $02
	dc.b	nBb1, $48, nBb1, $48, nBb1, $48, nBb1, $47
	smpsSetvoice        $04
	smpsAlterVol        $EF
	dc.b	nBb1, $05, nG2, $04, nRst, $05, nG2, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04
	dc.b	nRst, $05, nBb1, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b	nRst, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05, nRst, $04
	dc.b	nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04, nG2, $05, nBb1, $04
	dc.b	nBb1, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nG2, $04
	dc.b	nRst, $05, nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04
	dc.b	nBb1, $05, nBb1, $04, nRst, $05, nBb1, $04, nG2, $05, nRst, $04
	dc.b	nBb1, $05, nG2, $04, nRst, $05, nG2, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04
	dc.b	nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b	nRst, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05, nBb1, $04
	dc.b	nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nG2, $04
	dc.b	nRst, $05, nBb1, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b	nBb1, $05, nBb1, $04, nG2, $05, nBb1, $04, nBb1, $04, nRst, $05
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nBb1, $05, nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05
	dc.b	nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b	nRst, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nBb1, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $02
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nBb1, $05
	smpsAlterVol        $02
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04
	smpsStop

; FM2 Data
GSX_Intro_FM2:
	smpsSetvoice        $00
	dc.b	nBb0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33, nRst, $7F, nRst, $10
	dc.b	nBb0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	smpsStop

; FM3 Data
GSX_Intro_FM3:
	smpsAlterNote       $02
	smpsSetvoice        $00
	dc.b	nEb1, $7F, smpsNoAttack, $11, nD1, $48, nEb1, $48, nD1, $7F, smpsNoAttack, $11
	dc.b	nRst, $7F, nRst, $10, nEb1, $7F, smpsNoAttack, $11, nD1, $48, nEb1, $48
	dc.b	nD1, $7F, smpsNoAttack, $11
	smpsStop

; FM4 Data
GSX_Intro_FM4:
	smpsAlterNote       $07
	smpsSetvoice        $00
	dc.b	nG0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33, nRst, $7F, nRst, $10
	dc.b	nG0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	smpsStop

; FM5 Data
GSX_Intro_FM5:
	smpsAlterNote       $04
	dc.b	nRst, $7F, nRst, $7F, nRst, $22
	smpsAlterNote       $00
	smpsSetvoice        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nBb1, $05, nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05
	dc.b	nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b	nRst, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04, nRst, $05, nBb1, $04, nG2, $05, nRst, $04, nG2, $05
	dc.b	nRst, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04, nG2, $05
	dc.b	nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04
	dc.b	nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b	nRst, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05, nBb1, $04
	dc.b	nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nG2, $04
	dc.b	nRst, $05, nBb1, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b	nBb1, $05, nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nRst, $04
	dc.b	nBb1, $05, nG2, $04, nRst, $05, nG2, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04
	dc.b	nRst, $05, nBb1, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b	nRst, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05, nRst, $04
	dc.b	nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04, nG2, $05, nBb1, $04
	dc.b	nBb1, $05, nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nG2, $04
	dc.b	nRst, $05, nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04
	dc.b	nBb1, $05, nBb1, $04, nRst, $05, nBb1, $04, nG2, $05, nRst, $04
	dc.b	nBb1, $05, nG2, $04, nRst, $05, nG2, $04, nRst, $05, nBb1, $04
	dc.b	nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04
	dc.b	nG2, $05, nBb1, $04, nBb1, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b	nRst, $04, nG2, $05, nRst, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05, nBb1, $04, nG2, $05, nRst, $04, nG2, $05
	dc.b	nRst, $04, nBb1, $05, nG2, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b	nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05, nBb1, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nBb1, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $02
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nBb1, $05
	smpsAlterVol        $02
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nRst, $04, nG2, $05, nRst, $04, nBb1, $05
	dc.b	nG2, $04, nRst, $05
	smpsAlterVol        $03
	dc.b	nBb1, $04, nG2, $05, nBb1, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b	nBb1, $04
	smpsStop

; FM6 Data
GSX_Intro_FM6:
	smpsSetvoice        $01
	dc.b	nG1, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33, nRst, $7F, nRst, $10
	dc.b	nG1, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	smpsStop

; PSG1 Data
GSX_Intro_PSG1:
	smpsAlterNote       $65
	dc.b	nRst, $7F, nRst, $7F, nRst, $22
	smpsAlterNote       $62
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nC0, $05, nC0, $04, nG0, $05, nC0, $04, nC0, $05
	dc.b	nRst, $04, nC0, $05, nG0, $04, nRst, $05, nC0, $04, nG0, $05
	dc.b	nRst, $04, nG0, $05, nRst, $04, nC0, $05, nG0, $04, nRst, $05
	dc.b	nC0, $04, nG0, $05, nC0, $04, nC0, $05, nG0, $04, nC0, $05
	dc.b	nC0, $04, nRst, $05, nC0, $04, nG0, $05, nRst, $04, nG0, $05
	dc.b	nRst, $04, nC0, $05, nG0, $04, nC0, $05, nC0, $04, nG0, $05
	dc.b	nC0, $04, nC0, $05, nRst, $04, nC0, $05, nG0, $04, nRst, $05
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $04, nRst, $05, nC0, $04
	dc.b	nG0, $05, nRst, $04, nC0, $05, nG0, $04, nC0, $05, nC0, $04
	dc.b	nG0, $05, nC0, $04, nC0, $05, nRst, $04, nC0, $05, nG0, $04
	dc.b	nRst, $05, nG0, $04, nRst, $05, nC0, $04, nG0, $05, nC0, $04
	dc.b	nC0, $05, nG0, $04, nC0, $05, nC0, $04, nRst, $05, nC0, $04
	dc.b	nG0, $05, nRst, $04, nC0, $05, nG0, $04, nRst, $05, nG0, $04
	dc.b	nRst, $05, nC0, $04, nG0, $05, nRst, $04, nC0, $05, nG0, $04
	dc.b	nC0, $05, nC0, $04, nG0, $05, nC0, $04, nC0, $05, nRst, $04
	dc.b	nC0, $05, nG0, $04, nRst, $05, nG0, $04, nRst, $05, nC0, $04
	dc.b	nG0, $05, nC0, $04, nC0, $05, nG0, $04, nC0, $05, nC0, $04
	dc.b	nRst, $05, nC0, $04, nG0, $05, nRst, $04, nC0, $05, nG0, $04
	dc.b	nRst, $05, nG0, $04, nRst, $05, nC0, $04, nG0, $05, nRst, $04
	dc.b	nC0, $05, nG0, $04, nC0, $05, nC0, $04, nG0, $05, nC0, $04
	dc.b	nC0, $05, nRst, $07
	smpsAlterNote       $65
	smpsPSGvoice        fTone_07
	smpsPSGAlterVol     $06
	dc.b	nC0, $05, nG0, $04, nRst, $05, nG0, $04, nRst, $05, nC0, $04
	dc.b	nG0, $05, nC0, $04, nC0, $05, nG0, $04, nC0, $05, nC0, $04
	dc.b	nRst, $05, nC0, $04, nG0, $05, nRst, $04, nC0, $05, nG0, $04
	dc.b	nRst, $05, nG0, $04, nRst, $05, nC0, $04, nG0, $05, nRst, $04
	dc.b	nC0, $05, nG0, $04, nC0, $05, nC0, $04, nG0, $05, nC0, $04
	dc.b	nC0, $04, nRst, $05, nC0, $04, nG0, $05, nRst, $04, nG0, $05
	dc.b	nRst, $04, nC0, $05, nG0, $04, nC0, $05, nC0, $04, nG0, $05
	dc.b	nC0, $04, nC0, $05, nRst, $04, nC0, $05, nG0, $04, nRst, $05
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nRst, $05, nC0, $04, nG0, $05, nC0, $04, nC0, $05
	dc.b	nG0, $04, nC0, $05, nC0, $04, nRst, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nC0, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nC0, $04, nC0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nRst, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nRst, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nC0, $04, nC0, $05, nG0, $04, nC0, $05
	dc.b	nC0, $04, nRst, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nC0, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nC0, $04, nC0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nRst, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nRst, $04, nG0, $05, nRst, $04, nC0, $05
	dc.b	nG0, $04, nRst, $05
	smpsPSGAlterVol     $01
	dc.b	nC0, $04, nG0, $05, nC0, $04, nC0, $05, nG0, $04, nC0, $05
	dc.b	nC0, $04
	smpsStop

; PSG2 Data
GSX_Intro_PSG2:
	smpsAlterNote       $7F
	dc.b	nC0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33, nRst, $7F, nRst, $10
	dc.b	nC0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	smpsStop

; DAC Data
GSX_Intro_DAC:
	smpsStop

GSX_Intro_Voices:
;	Voice $00
;	$2C
;	$48, $48, $08, $08, 	$01, $05, $01, $05, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$01, $02, $01, $02, 	$18, $00, $18, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $04, $04
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $05, $01, $05, $01
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $02, $01, $02, $01
	smpsVcTotalLevel    $00, $18, $00, $18

;	Voice $01
;	$3C
;	$41, $41, $04, $01, 	$04, $06, $04, $06, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$11, $12, $11, $12, 	$1C, $00, $1F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $04, $04
	smpsVcCoarseFreq    $01, $04, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $06, $04, $06, $04
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $02, $01, $02, $01
	smpsVcTotalLevel    $00, $1F, $00, $1C

;	Voice $02
;	$3D
;	$71, $72, $72, $72, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$06, $04, $04, $04, 	$0B, $0B, $0B, $0B, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $07, $07
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $04, $04, $04, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $03
;	$3D
;	$00, $42, $02, $40, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $0A, $07
;	$01, $01, $01, $01, 	$24, $24, $24, $24, 	$1E, $23, $23, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $04, $00
	smpsVcCoarseFreq    $00, $02, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0A, $0A, $0A
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $04, $04, $04, $04
	smpsVcTotalLevel    $00, $23, $23, $1E

;	Voice $04
;	$3B
;	$7D, $43, $70, $71, 	$1B, $1F, $1F, $1F, 	$0E, $0C, $13, $0C
;	$00, $00, $00, $06, 	$37, $37, $57, $08, 	$1C, $2D, $11, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $07
	smpsVcCoarseFreq    $01, $00, $03, $0D
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $13, $0C, $0E
	smpsVcDecayRate2    $06, $00, $00, $00
	smpsVcDecayLevel    $00, $05, $03, $03
	smpsVcReleaseRate   $08, $07, $07, $07
	smpsVcTotalLevel    $00, $11, $2D, $1C

