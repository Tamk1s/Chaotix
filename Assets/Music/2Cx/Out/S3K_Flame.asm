Segapede_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Segapede_Voices
	smpsHeaderChan      $07, $01
	smpsHeaderTempo     $02, $0F

	smpsHeaderDAC       Segapede_DAC
	smpsHeaderFM        Segapede_FM1,	$00, $1F
	smpsHeaderFM        Segapede_FM2,	$00, $15
	smpsHeaderFM        Segapede_FM3,	$00, $1F
	smpsHeaderFM        Segapede_FM4,	$00, $1D
	smpsHeaderFM        Segapede_FM5,	$00, $27
	smpsHeaderFM        Segapede_FM6,	$00, $1F
	smpsHeaderPSG       Segapede_PSG1,	$00, $00, $00, $00

; FM1 Data
Segapede_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $04

Segapede_Jump05:
	dc.b	nB2, $04, $04, nRst, nB2, nRst, $1C, nB2, $04, nB3, $08, nB2
	dc.b	$04, nB3, nBb2, nBb2, nRst, nBb2, nRst, $30, nA2, $04, $04, nRst
	dc.b	nA2, nRst, $18, nA2, $04, nA3, $03, nRst, $05, nA3, $03, nRst
	dc.b	$01, nA2, $04, nA3, nG2, $03, nRst, $01, nG2, $03, nRst, $05
	dc.b	nG2, $03, nRst, $15, nE2, $04, nE3, nE2, nRst, $10, nCs3, $04
	dc.b	$04, nRst, nCs3, nRst, $1C, nCs3, $04, nCs4, $08, nCs3, $04, nCs4
	dc.b	nC3, nC3, nRst, nC3, nRst, $30, nB2, $04, $04, nRst, nB2, nRst
	dc.b	$18, nB2, $04, nB3, $03, nRst, $05, nB3, $03, nRst, $01, nB2
	dc.b	$04, nB3, nA2, $03, nRst, $01, nA2, $03, nRst, $05, nA2, $03
	dc.b	nRst, $15, nA2, $04, nA3, nA2, nRst, $10, nB2, $04, $04, nRst
	dc.b	nB2, nRst, $1C, nB2, $04, nB3, $08, nB2, $04, nB3, nBb2, nBb2
	dc.b	nRst, nBb2, nRst, $30, nA2, $04, $04, nRst, nA2, nRst, $18, nA2
	dc.b	$04, nA3, $03, nRst, $05, nA3, $03, nRst, $01, nA2, $04, nA3
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $05, nG2, $03, nRst, $15
	dc.b	nE2, $04, nE3, nE2, nRst, $08, nE2, $04, nFs2, nG2, $03, nRst
	dc.b	$01, nG2, $03, nRst, $05, nG2, $03, nRst, $1D, nG2, $04, nG3
	dc.b	$08, nG2, $04, nG3, nD3, $03, nRst, $01, nD3, $03, nRst, $05
	dc.b	nD3, $03, nRst, $31, nA2, $03, nRst, $01, nA2, $03, nRst, $05
	dc.b	nA2, $03, nRst, $19, nA2, $03, nRst, $01, nA3, $03, nRst, $05
	dc.b	nA3, $03, nRst, $01, nA2, $03, nRst, $01, nA3, $03, nRst, $01
	dc.b	nB2, $0C, nCs3, nD3, nCs3, nB2, $08, nA2, nG3, $04, nG2, $03
	dc.b	nRst, $05, nG2, $04, nRst, $14, nG2, $04, nG3, nG2, nG3
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nAb3, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nA3, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nG3, $05, nG2, $04, nD3, $03, nRst, $01, nD2, $03, nRst
	dc.b	$05, nD2, $03, nRst, $1D, nD2, $03, nRst, $11, nA2, $03, nRst
	dc.b	$01, nA2, $03, nRst, $05, nA2, $03, nRst, $19, nA2, $03, nRst
	dc.b	$01, nA3, $03, nRst, $05, nA3, $03, nRst, $01, nA2, $03, nRst
	dc.b	$01, nA3, $03, nRst, $01, nFs2, $03, nRst, $01, nFs2, $03, nRst
	dc.b	$05, nFs2, $08, nRst, nFs2, $04, nBb2, $03, nRst, $01, nBb2, $03
	dc.b	nRst, $05, nBb2, $07, nRst, $0D
	smpsJump            Segapede_Jump05

; FM2 Data
Segapede_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $04

Segapede_Jump04:
	dc.b	nRst, $04, nB3, nD4, nFs4, nB4, nFs4, nB4, nD5, nFs5, nD5, nFs5
	dc.b	nB5, nD6, nB5, nD6, nFs6, nRst, nBb3, nCs4, nFs4, nBb4, nFs4, nBb4
	dc.b	nCs5, nFs5, nCs5, nFs5, nBb5, nCs6, nBb5, nCs6, nFs6, nRst, nA3, nEb4
	dc.b	nFs4, nB4, nFs4, nB4, nEb5, nFs5, nEb5, nFs5, nB5, nEb6, nB5, nEb6
	dc.b	nFs6, nRst, nG3, nE4, nG4, nB4, nE5, nB5, nE6, nRst, nE3, nBb3
	dc.b	nE4, nBb4, nCs5, nE5, nG5
	smpsSetvoice        $06

Segapede_Loop00:
	dc.b	nCs6, nAb6, nE6
	smpsLoop            $00, $05, Segapede_Loop00
	dc.b	nCs6

Segapede_Loop01:
	dc.b	nC6, nAb6, nEb6
	smpsLoop            $00, $05, Segapede_Loop01
	dc.b	nC6

Segapede_Loop02:
	dc.b	nCs6, nAb6, nF6
	smpsLoop            $00, $05, Segapede_Loop02

Segapede_Loop03:
	dc.b	nCs6, nA5, nFs6
	smpsLoop            $00, $03, Segapede_Loop03
	dc.b	nA5, nFs6, nEb6, nC6, nA5, nFs5, nEb5, nC5
	smpsSetvoice        $01
	dc.b	nRst, nB2, nD3, nFs3, nB3, nFs3, nB3, nD4, nFs4, nD4, nFs4, nB4
	dc.b	nD5, nB4, nD5, nFs5, nRst, nBb2, nCs3, nFs3, nBb3, nFs3, nBb3, nCs4
	dc.b	nFs4, nCs4, nFs4, nBb4, nCs5, nBb4, nCs5, nFs5, nRst, nA2, nEb3, nFs3
	dc.b	nB3, nFs3, nB3, nEb4, nFs4, nEb4, nFs4, nB4, nEb5, nB4, nEb5, nFs5
	dc.b	nRst, nG2, nE3, nG3, nB3, nE4, nB4, nE5, nRst, nE2, nBb2, nE3
	dc.b	nBb3, nCs4, nE4, nG4, nRst
	smpsSetvoice        $07
	dc.b	nG3, nD4, nB3, nG4, nD4, nB4, nG4, nD5, nB4, nG5, nD5, nB5
	dc.b	nG5, nD6, nB5, nRst, nD3, nD4, nA3, nFs4, nD4, nA4, nFs4, nD5
	dc.b	nA4, nFs5, nD5, nA5, nFs5, nD6, nA5, nRst, nA3, nE4, nCs4, nA4
	dc.b	nE4, nCs5, nA4, nE5, nCs5, nA5, nE5, nCs6, nA5, nE6, nCs6

Segapede_Loop04:
	dc.b	nD5, $01, nRst, $03, nD5, $02, nRst, $06
	smpsLoop            $00, $03, Segapede_Loop04
	dc.b	nD5, $01, nRst, $03, nD5, $01, nRst, $07, nD5, $03, nRst, $05
	dc.b	nCs5, $02, nRst, $0A, nG3, $04, nD4, nB3, nG4, nD4, nB4, nG4
	dc.b	nD5, nB4, nG5, nD5, nB5, nG5, nD6, nB5, nRst, nD3, nD4, nA3
	dc.b	nFs4, nD4, nA4, nFs4, nD5, nA4, nFs5, nD5, nA5, nFs5, nD6, nA5
	dc.b	nRst, nA3, nE4, nCs4, nA4, nE4, nCs5, nA4, nE5, nCs5, nA5, nE5
	dc.b	nCs6, nA5, nE6, nCs6

Segapede_Loop05:
	dc.b	nFs5, $01, nRst, $03, nFs5, $02, nRst, $06
	smpsLoop            $00, $03, Segapede_Loop05
	dc.b	nE5, $01, nRst, $03, nE5, $01, nRst, $07, nD5, $03, nRst, $05
	dc.b	nCs5, $02, nRst
	smpsSetvoice        $01
	dc.b	$04
	smpsJump            Segapede_Jump04

; FM3 Data
Segapede_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $04

Segapede_Jump03:
	dc.b	nRst, $70, nBb3, $10, nRst, $70, nE3, $10, nRst, $70, nC4, $10
	dc.b	nRst, $70, nA3, $10, nRst, $70, nBb3, $10, nRst, $70, nE3, $08
	dc.b	nRst, $78, nD4, $10, nRst, $7F, nRst, $71, nD3, $10, nRst, $7F
	dc.b	nRst, $01
	smpsJump            Segapede_Jump03

; FM4 Data
Segapede_FM4:
	smpsSetvoice        $03
	dc.b	nRst, $04

Segapede_Jump02:
	dc.b	nB2, $04, $04, nRst, nB2, nRst, $1C, nB2, $04, nB3, $08, nB2
	dc.b	$04, nB3, nBb2, nBb2, nRst, nBb2, nRst, $30, nA2, $04, $04, nRst
	dc.b	nA2, nRst, $18, nA2, $04, nA3, $03, nRst, $05, nA3, $03, nRst
	dc.b	$01, nA2, $04, nA3, nG2, $03, nRst, $01, nG2, $03, nRst, $05
	dc.b	nG2, $03, nRst, $15, nE2, $04, nE3, nE2, nRst, $10, nCs3, $04
	dc.b	$04, nRst, nCs3, nRst, $1C, nCs3, $04, nCs4, $08, nCs3, $04, nCs4
	dc.b	nC3, nC3, nRst, nC3, nRst, $30, nB2, $04, $04, nRst, nB2, nRst
	dc.b	$18, nB2, $04, nB3, $03, nRst, $05, nB3, $03, nRst, $01, nB2
	dc.b	$04, nB3, nA2, $03, nRst, $01, nA2, $03, nRst, $05, nA2, $03
	dc.b	nRst, $15, nA2, $04, nA3, nA2, nRst, $10, nB2, $04, $04, nRst
	dc.b	nB2, nRst, $1C, nB2, $04, nB3, $08, nB2, $04, nB3, nBb2, nBb2
	dc.b	nRst, nBb2, nRst, $30, nA2, $04, $04, nRst, nA2, nRst, $18, nA2
	dc.b	$04, nA3, $03, nRst, $05, nA3, $03, nRst, $01, nA2, $04, nA3
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $05, nG2, $03, nRst, $15
	dc.b	nE2, $04, nE3, nE2, nRst, $08, nE2, $04, nFs2, nG2, $03, nRst
	dc.b	$01, nG2, $03, nRst, $05, nG2, $03, nRst, $1D, nG2, $04, nG3
	dc.b	$08, nG2, $04, nG3, nD3, $03, nRst, $01, nD3, $03, nRst, $05
	dc.b	nD3, $03, nRst, $31, nA2, $03, nRst, $01, nA2, $03, nRst, $05
	dc.b	nA2, $03, nRst, $19, nA2, $03, nRst, $01, nA3, $03, nRst, $05
	dc.b	nA3, $03, nRst, $01, nA2, $03, nRst, $01, nA3, $03, nRst, $01
	dc.b	nB2, $0C, nCs3, nD3, nCs3, nB2, $08, nA2, nG3, $04, nG2, $03
	dc.b	nRst, $05, nG2, $04, nRst, $14, nG2, $04, nG3, nG2, nG3
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nAb3, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nA3, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nG3, $05, nG2, $04, nD3, $03, nRst, $01, nD2, $03, nRst
	dc.b	$05, nD2, $03, nRst, $1D, nD2, $03, nRst, $11, nA2, $03, nRst
	dc.b	$01, nA2, $03, nRst, $05, nA2, $03, nRst, $19, nA2, $03, nRst
	dc.b	$01, nA3, $03, nRst, $05, nA3, $03, nRst, $01, nA2, $03, nRst
	dc.b	$01, nA3, $03, nRst, $01, nFs2, $03, nRst, $01, nFs2, $03, nRst
	dc.b	$05, nFs2, $08, nRst, nFs2, $04, nBb2, $03, nRst, $01, nBb2, $03
	dc.b	nRst, $05, nBb2, $07, nRst, $0D
	smpsJump            Segapede_Jump02

; FM5 Data
Segapede_FM5:
	smpsSetvoice        $04
	dc.b	nRst, $04

Segapede_Jump01:
	dc.b	nRst, $7F, nRst, $7F, nRst, $02, nAb4, $38, nFs4, $04, nE4, nEb4
	dc.b	$38, nE4, $04, nFs4, nAb4, $38, nA4, $04, nAb4, nAb4, $18, nFs4
	dc.b	$20, nE4, $08, nD4, $2C, nFs3, $04, nD4, nFs3, nCs4, $05
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nD4
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $3E, nFs4, $38, nG4, $04, nFs4, nFs4, $18, nE4, $24, nRst
	dc.b	$04, nG4, $33, nRst, $01, nB4, $04, nA4, nG4, nFs4, $0C, nD4
	dc.b	nA3, $1C, nA4, $04, nG4, nFs4, nE4, $0C, nCs4, nA3, $1C, nG4
	dc.b	$04, nFs4, nE4, nD4, $0C, nE4, nFs4, nE4, nD4, $08, nCs4, nB3
	dc.b	$0C, nD4, nG4, $1B, nRst, $01, nB4, $04, nA4, nG4, nFs4, $0C
	dc.b	nD4, nA3, $1C, nA4, $04, nG4, nFs4, nE4, $0C, nCs4, nA3, $18
	dc.b	nE4, $04, nFs4, nG4, $08, nFs4, $40
	smpsJump            Segapede_Jump01

; FM6 Data
Segapede_FM6:
	smpsSetvoice        $05
	dc.b	nRst, $04

Segapede_Jump00:
	dc.b	nRst, $70, nBb3, $10, nRst, $70, nE3, $10, nRst, $70, nC4, $10
	dc.b	nRst, $70, nA3, $10, nRst, $70, nBb3, $10, nRst, $70, nE3, $08
	dc.b	nRst, $78, nD4, $10, nRst, $7F, nRst, $71, nD3, $10, nRst, $7F
	dc.b	nRst, $01
	smpsJump            Segapede_Jump00

; PSG1 Data
Segapede_PSG1:
	dc.b	nRst

Segapede_Loop06:
	dc.b	$6B
	smpsLoop            $00, $09, Segapede_Loop06
	dc.b	nRst, $01

Segapede_Loop07:
	dc.b	nB1, $01, nRst, $03, nB1, $02, nRst, $06
	smpsLoop            $00, $03, Segapede_Loop07
	dc.b	nB1, $01, nRst, $03, nB1, $01, nRst, $07, nB1, $03, nRst, $05
	dc.b	nBb1, $02, nRst, $7F, nRst, $47

Segapede_Loop08:
	dc.b	nEb2, $01, nRst, $03, nEb2, $02, nRst, $06
	smpsLoop            $00, $03, Segapede_Loop08
	dc.b	nCs2, $01, nRst, $03, nCs2, $01, nRst, $07, nB1, $03, nRst, $05
	dc.b	nBb1, $02, nRst

Segapede_Loop09:
	dc.b	$45
	smpsLoop            $00, $0E, Segapede_Loop09
	smpsJump            Segapede_Loop07

; DAC Data
Segapede_DAC:
	smpsStop

Segapede_Voices:
;	Voice $00
;	$35
;	$21, $31, $20, $14, 	$8F, $9B, $95, $94, 	$07, $05, $00, $00
;	$0A, $02, $02, $02, 	$45, $36, $17, $08, 	$10, $00, $08, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $03, $02
	smpsVcCoarseFreq    $04, $00, $01, $01
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $14, $15, $1B, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $05, $07
	smpsVcDecayRate2    $02, $02, $02, $0A
	smpsVcDecayLevel    $00, $01, $03, $04
	smpsVcReleaseRate   $08, $07, $06, $05
	smpsVcTotalLevel    $00, $08, $00, $10

;	Voice $01
;	$37
;	$53, $04, $31, $01, 	$54, $58, $5B, $14, 	$17, $17, $1B, $12
;	$08, $05, $06, $16, 	$8A, $BB, $AB, $6C, 	$1C, $05, $00, $06
	smpsVcAlgorithm     $07
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $05
	smpsVcCoarseFreq    $01, $01, $04, $03
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $14, $1B, $18, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $1B, $17, $17
	smpsVcDecayRate2    $16, $06, $05, $08
	smpsVcDecayLevel    $06, $0A, $0B, $08
	smpsVcReleaseRate   $0C, $0B, $0B, $0A
	smpsVcTotalLevel    $06, $00, $05, $1C

;	Voice $02
;	$35
;	$21, $31, $20, $14, 	$8F, $9B, $95, $94, 	$07, $05, $00, $00
;	$0A, $02, $02, $02, 	$45, $36, $17, $08, 	$10, $00, $08, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $03, $02
	smpsVcCoarseFreq    $04, $00, $01, $01
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $14, $15, $1B, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $05, $07
	smpsVcDecayRate2    $02, $02, $02, $0A
	smpsVcDecayLevel    $00, $01, $03, $04
	smpsVcReleaseRate   $08, $07, $06, $05
	smpsVcTotalLevel    $00, $08, $00, $10

;	Voice $03
;	$02
;	$00, $05, $02, $00, 	$D3, $DF, $DF, $9F, 	$05, $0A, $06, $07
;	$00, $00, $12, $00, 	$2A, $8F, $5A, $0A, 	$1D, $14, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $02, $05, $00
	smpsVcRateScale     $02, $03, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $06, $0A, $05
	smpsVcDecayRate2    $00, $12, $00, $00
	smpsVcDecayLevel    $00, $05, $08, $02
	smpsVcReleaseRate   $0A, $0A, $0F, $0A
	smpsVcTotalLevel    $00, $27, $14, $1D

;	Voice $04
;	$05
;	$00, $0F, $04, $00, 	$1F, $1D, $14, $1B, 	$08, $07, $04, $04
;	$07, $08, $06, $1F, 	$04, $58, $05, $77, 	$00, $05, $05, $05
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $04, $0F, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $14, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $07, $08
	smpsVcDecayRate2    $1F, $06, $08, $07
	smpsVcDecayLevel    $07, $00, $05, $00
	smpsVcReleaseRate   $07, $05, $08, $04
	smpsVcTotalLevel    $05, $05, $05, $00

;	Voice $05
;	$02
;	$00, $05, $02, $00, 	$D3, $DF, $DF, $9F, 	$05, $0A, $06, $07
;	$00, $00, $12, $00, 	$2A, $8F, $5A, $0A, 	$1D, $14, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $02, $05, $00
	smpsVcRateScale     $02, $03, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $06, $0A, $05
	smpsVcDecayRate2    $00, $12, $00, $00
	smpsVcDecayLevel    $00, $05, $08, $02
	smpsVcReleaseRate   $0A, $0A, $0F, $0A
	smpsVcTotalLevel    $00, $27, $14, $1D

;	Voice $06
;	$00
;	$13, $71, $3B, $71, 	$53, $5B, $1D, $1F, 	$01, $03, $0F, $00
;	$1B, $1D, $1F, $0D, 	$30, $03, $E3, $0F, 	$06, $0C, $1F, $0F
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $01
	smpsVcCoarseFreq    $01, $0B, $01, $03
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $1F, $1D, $1B, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $03, $01
	smpsVcDecayRate2    $0D, $1F, $1D, $1B
	smpsVcDecayLevel    $00, $0E, $00, $03
	smpsVcReleaseRate   $0F, $03, $03, $00
	smpsVcTotalLevel    $0F, $1F, $0C, $06

;	Voice $07
;	$3D
;	$3B, $72, $66, $21, 	$DC, $9F, $5E, $9D, 	$12, $0B, $18, $08
;	$0D, $0C, $17, $11, 	$4F, $1B, $1B, $1B, 	$11, $10, $0C, $0F
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $07, $03
	smpsVcCoarseFreq    $01, $06, $02, $0B
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1D, $1E, $1F, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $18, $0B, $12
	smpsVcDecayRate2    $11, $17, $0C, $0D
	smpsVcDecayLevel    $01, $01, $01, $04
	smpsVcReleaseRate   $0B, $0B, $0B, $0F
	smpsVcTotalLevel    $0F, $0C, $10, $11

