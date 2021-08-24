SB_City_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SB_City_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $08

	smpsHeaderDAC       SB_City_DAC
	smpsHeaderFM        SB_City_FM1,	$00, $10
	smpsHeaderFM        SB_City_FM2,	$00, $10
	smpsHeaderFM        SB_City_FM3,	$00, $1D
	smpsHeaderFM        SB_City_FM4,	$00, $10
	smpsHeaderFM        SB_City_FM5,	$00, $10
	smpsHeaderFM        SB_City_FM6,	$00, $0F
	smpsHeaderPSG       SB_City_PSG1,	$00, $05, $00, fTone_04
	smpsHeaderPSG       SB_City_PSG2,	$00, $05, $00, fTone_04
	smpsHeaderPSG       SB_City_PSG3,	$00, $05, $00, fTone_06

; FM1 Data
SB_City_FM1:
	smpsSetvoice        $00

SB_City_Jump01:
	smpsPan             panRight, $00

SB_City_Loop05:
	dc.b	nC2, $06, nBb1, $09, nRst, $03, nC2, nRst, nG1, $06, nEb1, $09
	dc.b	nRst, $03, nEb1, nRst, nF1, $06, nFs1, $09, nRst, $03, nF1, nRst
	dc.b	nEb1, $06, nC1, $09, $03, $03, nRst
	smpsLoop            $00, $14, SB_City_Loop05
	smpsJump            SB_City_Jump01

; FM2 Data
SB_City_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03
	dc.b	nFs4, nF4, $09, nRst, nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst
	dc.b	$0C, nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $09, nRst, nEb4, nRst, $03, nG4, $09, nRst, $15, nC4, $03
	dc.b	nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst
	dc.b	nEb4, $0C, nRst, $12, nEb4, $03, nF4, $02, nEb4, $03, nRst, $04
	dc.b	nBb3, $06, nC4, nRst, nEb4, $09, nRst, $03, nF4, $06, nRst, $1E
	dc.b	nG4, $06, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $1B

SB_City_Loop04:
	dc.b	nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4
	dc.b	$09, nRst, nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst, $0C, nC4
	dc.b	$03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4, $09
	dc.b	nRst, nEb4, nRst, $03, nG4, $09, nRst, $15, nC4, $03, nRst, nC4
	dc.b	$06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst, nEb4, $0C
	dc.b	nRst, $12, nEb4, $03, nF4, $02, nEb4, $03, nRst, $04, nBb3, $06
	dc.b	nC4, nRst, nEb4, $09, nRst, $03, nF4, $06, nRst, $1E, nG4, $06
	dc.b	nRst, $18
	smpsLoop            $00, $02, SB_City_Loop04
	dc.b	nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b	$09, nBb4, $03, nRst, $06, nF4, $03, nFs4, nF4, $0C, nRst, $30
	dc.b	nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b	$09, nBb4, $03, nRst, $06, nF4, $03, nFs4, nF4, $0C, nRst, $24
	smpsJump            SB_City_FM2

; FM3 Data
SB_City_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nRst, $12, nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03
	dc.b	nFs4, nF4, $09, nRst, nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst
	dc.b	$0C, nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $09, nRst, nEb4, nRst, $03, nG4, $09, nRst, $15, nC4, $03
	dc.b	nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst
	dc.b	nEb4, $0C, nRst, $12, nEb4, $03, nF4, $02, nEb4, $03, nRst, $04
	dc.b	nBb3, $06, nC4, nRst, nEb4, $09, nRst, $03, nF4, $06, nRst, $1E
	dc.b	nG4, $06, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $1B

SB_City_Loop03:
	dc.b	nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4
	dc.b	$09, nRst, nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst, $0C, nC4
	dc.b	$03, nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4, $09
	dc.b	nRst, nEb4, nRst, $03, nG4, $09, nRst, $15, nC4, $03, nRst, nC4
	dc.b	$06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst, nEb4, $0C
	dc.b	nRst, $12, nEb4, $03, nF4, $02, nEb4, $03, nRst, $04, nBb3, $06
	dc.b	nC4, nRst, nEb4, $09, nRst, $03, nF4, $06, nRst, $1E, nG4, $06
	dc.b	nRst, $18
	smpsLoop            $00, $02, SB_City_Loop03
	dc.b	nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b	$09, nBb4, $03, nRst, $06, nF4, $03, nFs4, nF4, $0C, nRst, $30
	dc.b	nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b	$09, nBb4, $03, nRst, $06, nF4, $03, nFs4, nF4, $0C, nRst, $1E
	smpsJump            SB_City_FM3

; FM4 Data
SB_City_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03, nC3, $06, nRst, nBb2
	dc.b	nC3, nRst, nC3, nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst
	dc.b	nBb2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nBb2, nRst
	dc.b	nFs2, nRst, nFs2, nRst, nFs2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst
	dc.b	nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3, nRst, nBb2
	dc.b	nC3, nRst, nC3, nRst, nBb2, nC3, nBb2, nRst, nF3, nRst, nEb3, nRst
	dc.b	$0C, nC3, $06, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nRst
	dc.b	nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3, nRst, nBb2, nC3, nRst, nC3
	dc.b	nRst, nBb2, nC3, nBb2, nRst, nFs2, nRst, nFs2, nRst, nFs2, nC3, nRst
	dc.b	nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3
	dc.b	nRst, nBb2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nBb2
	dc.b	nRst, nFs2, nRst, nEb2, nRst, $0C, nC3, $06, nRst, nBb2, nC3, nRst
	dc.b	nC3, nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3
	dc.b	nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3, nBb2, nRst, nFs2, nRst
	dc.b	nFs2, nRst, nFs2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst, nBb2, nC3
	dc.b	nRst, nBb2, nEb3, nRst, nEb3, nRst, nBb2, nC3, nRst, nBb2, nC3, nRst
	dc.b	nC3, nRst, nBb2, nC3, nBb2, nRst, nF3, nRst, nEb3, nRst, $7F, nRst
	dc.b	$7F, nRst, $7F, nRst, $0F
	smpsJump            SB_City_FM4

; FM5 Data
SB_City_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03

SB_City_Loop02:
	dc.b	nC2, $06, nRst, nBb1, nC2, nRst, nC2, nRst, nBb1, nC2, nRst, nBb1
	dc.b	nEb2, nRst, nEb2, nRst, nBb1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b	nBb1, nC2, nBb1, nRst, nFs1, nRst, nFs1, nRst, nFs1, nC2, nRst, nBb1
	dc.b	nC2, nRst, nC2, nRst, nBb1, nC2, nRst, nBb1, nEb2, nRst, nEb2, nRst
	dc.b	nBb1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst, nBb1, nC2, nBb1, nRst
	dc.b	nF2, nRst, nEb2, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $0F
	smpsLoop            $00, $02, SB_City_Loop02
	smpsJump            SB_City_FM5

; FM6 Data
SB_City_FM6:
	smpsSetvoice        $04

SB_City_Jump00:
	smpsPan             panCenter, $00
	dc.b	nG4, $21, nRst, $0F, nF4, $21, nRst, $0F, nBb4, $15, nRst, $03
	dc.b	nG4, $15, nRst, $03, nEb4, $27, nRst, $09, nG4, $21, nRst, $0F
	dc.b	nF4, $21, nRst, $0F, nBb4, $15, nRst, $03, nG4, $15, nRst, $03
	dc.b	nEb4, $27, nRst, $57, nF3, $03, nG3, nBb3, nC4, nEb4, nRst, nEb4
	dc.b	$06, nF4, $2A, nRst, $1E, nF4, $03, nFs4, nF4, nEb4, nBb3, nRst
	dc.b	nBb3, $2A, nF4, $03, nE4, nEb4, $1E, nD4, $03, nEb4, nD4, nCs4
	dc.b	nG3, nRst, nC4, $27, nRst, $03, nG3, nFs3, nF3, $06, nG3, nBb3
	dc.b	nC4, nEb4, nF4, nRst, $0C

SB_City_Loop00:
	dc.b	nG4, $21, nRst, $0F, nF4, $21, nRst, $0F, nBb4, $15, nRst, $03
	dc.b	nG4, $15, nRst, $03, nEb4, $27, nRst, $09
	smpsLoop            $00, $04, SB_City_Loop00

SB_City_Loop01:
	dc.b	nG4, $03, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol        $04
	dc.b	nG4, $03, nRst
	smpsAlterVol        $05
	dc.b	nG4, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol        $04
	dc.b	nG4, $03, nRst, nG4, nRst, $06
	smpsAlterVol        $0A
	dc.b	nG4, $03, nRst, $06, nG4, $03, nRst
	smpsAlterVol        $14
	dc.b	nG4, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol        $15
	dc.b	nG4, $03, nRst
	smpsAlterVol        $C0
	dc.b	nG4, nRst, nG4, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol        $09
	dc.b	nG4, $03, nRst, $06
	smpsAlterVol        $0B
	dc.b	nG4, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nG4, $03, nRst, nG4, nRst
	smpsAlterVol        $0C
	dc.b	nG4, nRst, nG4, nRst, $06
	smpsAlterVol        $0B
	dc.b	nG4, $03, nRst, $06, nG4, $03, nRst, nG4, nRst, nG4, nRst
	smpsAlterVol        $CF
	smpsLoop            $00, $02, SB_City_Loop01
	smpsJump            SB_City_Jump00

; PSG1 Data
SB_City_PSG1:
	dc.b	nEb1, $27, nRst, $09, nEb1, $24, nRst, $0C, nG1, $12, nRst, $06
	dc.b	nD1, $15, nRst, $03, nCs1, $24, nRst, $0C, nEb1, $27, nRst, $09
	dc.b	nEb1, $24, nRst, $0C, nG1, $12, nRst, $06, nD1, $15, nRst, $03
	dc.b	nCs1, $24, nRst, $6C, nBb0, $06, nC1, $33, nRst, $27, nG0, $2D
	dc.b	nRst, $03, nC1, $21, nRst, $0F, nBb0, $2A, nRst, $24, nEb1, $06

SB_City_Loop09:
	dc.b	nRst, $0C, nEb1, $27, nRst, $09, nEb1, $24, nRst, $0C, nG1, $12
	dc.b	nRst, $06, nD1, $15, nRst, $03, nCs1, $24
	smpsLoop            $00, $04, SB_City_Loop09
	dc.b	nRst, $0C

SB_City_Loop0A:
	dc.b	nEb1, $03, nRst, $06, nEb1, $03, nRst, $06, nEb1, $03, nRst
	smpsPSGAlterVol     $03
	dc.b	nEb1, nRst, $06, nEb1, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nEb1, $03, nRst, nEb1, nRst, $06
	smpsPSGAlterVol     $04
	dc.b	nEb1, $03, nRst, $06, nEb1, $03, nRst
	smpsPSGAlterVol     $01
	dc.b	nEb1, nRst, $06, nEb1, $03, nRst, $0C
	smpsPSGAlterVol     $F6
	dc.b	nCs1, $03, nRst, nCs1, nRst, $06, nCs1, $03, nRst, $06
	smpsPSGAlterVol     $03
	dc.b	nCs1, $03, nRst, $06
	smpsPSGAlterVol     $05
	dc.b	nCs1, $03, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nCs1, $03, nRst, nCs1, nRst
	smpsPSGAlterVol     $01
	dc.b	nCs1, nRst, nRst, nRst, $15, nRst, $03, nRst, $03, nRst, $03, nRst
	dc.b	$03
	smpsPSGAlterVol     $F6
	smpsLoop            $00, $02, SB_City_Loop0A
	smpsJump            SB_City_PSG1

; PSG2 Data
SB_City_PSG2:
	dc.b	nAb0, $2A, nRst, $06, nBb0, $27, nRst, $09, nC1, $15, nRst, $03
	dc.b	nBb0, $12, nRst, $06, nBb0, $27, nRst, $09, nAb0, $2A, nRst, $06
	dc.b	nBb0, $27, nRst, $09, nC1, $15, nRst, $03, nBb0, $12, nRst, $06
	dc.b	nBb0, $27, nRst, $69, nG0, $24, nRst, $3C, nC1, $30, nG0, $24
	dc.b	nRst, $0C, nG0, $2A, nRst, $24, nC1, $06, nRst, $0C, nAb0, $2A
	dc.b	nRst, $06, nBb0, $27, nRst, $09, nC1, $15, nRst, $03, nBb0, $12
	dc.b	nRst, $06, nBb0, $27, nRst, $09, nAb0, $2A, nRst, $06, nBb0, $27
	dc.b	nRst, $09, nC1, $15, nRst, $03, nBb0, $12, nRst, $06, nBb0, $27
	dc.b	nRst, $7F, nRst, $1A, nBb0, $27, nRst, $7F, nRst, $1A, nBb0, $27
	dc.b	nRst, $09

SB_City_Loop08:
	dc.b	nAb0, $03, nRst, $06, nAb0, $03, nRst, $06, nAb0, $03, nRst
	smpsPSGAlterVol     $03
	dc.b	nAb0, nRst, $06, nAb0, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nAb0, $03, nRst, nAb0, nRst, $06
	smpsPSGAlterVol     $04
	dc.b	nAb0, $03, nRst, $06, nAb0, $03, nRst
	smpsPSGAlterVol     $01
	dc.b	nAb0, nRst, $06, nAb0, $03, nRst, $0C
	smpsPSGAlterVol     $F6
	dc.b	nAb0, $03, nRst, nAb0, nRst, $06, nAb0, $03, nRst, $06
	smpsPSGAlterVol     $03
	dc.b	nAb0, $03, nRst, $06
	smpsPSGAlterVol     $05
	dc.b	nAb0, $03, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nAb0, $03, nRst, nAb0, nRst
	smpsPSGAlterVol     $01
	dc.b	nAb0, nRst, nRst, nRst, $15, nRst, $03, nRst, $03, nRst, $03, nRst
	dc.b	$03
	smpsPSGAlterVol     $F6
	smpsLoop            $00, $02, SB_City_Loop08
	smpsJump            SB_City_PSG2

; PSG3 Data
SB_City_PSG3:
	dc.b	nC0, $06, $09, nRst

SB_City_Loop06:
	dc.b	$03, nC0, nRst
	smpsLoop            $00, $03, SB_City_PSG3

SB_City_Loop07:
	dc.b	nC0, $06, $09
	smpsLoop            $01, $02, SB_City_Loop06
	dc.b	nRst, $03, nC0, nRst
	smpsLoop            $02, $13, SB_City_Loop07
	dc.b	nC0, $06, $09, $03, $03, nRst
	smpsJump            SB_City_PSG3

; DAC Data
SB_City_DAC:
	smpsStop

SB_City_Voices:
;	Voice $00
;	$38
;	$72, $13, $71, $11, 	$D1, $52, $14, $14, 	$01, $07, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $02
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $01
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

;	Voice $02
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$14, $13, $0A, $00
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
	smpsVcTotalLevel    $00, $0A, $13, $14

;	Voice $03
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $04
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

