		cpu 68000
SonicDriverVer			=  5
use_s2_samples			=  1
use_s3_samples			=  1
use_sk_samples			=  0
use_s3d_samples		 	=  1
		include "_smps2asm_inc.asm"

Maniax_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Maniax_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $1E
	
	smpsHeaderFM        Maniax_FM1,	$00, $13
	smpsHeaderFM        Maniax_FM2,	$00, $17
	smpsHeaderFM        Maniax_FM3,	$00, $1A
	smpsHeaderFM        Maniax_FM4,	$00, $14
	smpsHeaderFM        Maniax_FM5,	$00, $18
	smpsHeaderFM        Maniax_FM6,	$00, $12
	smpsHeaderPSG       Maniax_PSG1,	$00, $0A, $00, $00
	smpsHeaderPSG       Maniax_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Maniax_PSG3,	$00, $09, $00, $00
	smpsHeaderDAC       Maniax_DAC,$00,$AA
	smpsHeaderDAC       Maniax_DAC,$00,$AA
	smpsHeaderDAC       Maniax_DAC,$00,$AA
	smpsHeaderDAC       Maniax_DAC,$00,$AA

; FM1 Data
Maniax_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $06, nD4, $06, nRst, $03, nC4, $06, nRst, $03, nD4, $03
	dc.b	nRst, $03

Maniax_Jump05:
	dc.b	nB3, $12, nA3, $12, nB3, $12, nA3, $12, nB3, $0C, nA3, $0C
	dc.b	nC4, $12, nB3, $12, nA3, $3C, nA3, $12, nB3, $12, nC4, $0C
	dc.b	nA3, $12, nB3, $12, nC4, $0C, nC4, $12, nB3, $1E, nRst, $12
	smpsSetvoice        $00
	dc.b	nRst, $1E, nC4, $09, nC4, $0C, nB3, $06, nB3, $09, nB3, $0C
	dc.b	nB3, $09, nB3, $03, nB3, $09, nA3, $06, nA3, $09, nA3, $0C
	dc.b	nC4, $09, nC4, $03, nC4, $09, nB3, $06, nB3, $09, nB3, $0C
	dc.b	nB3, $06, nB3, $06, nB3, $03, nB3, $06, nA3, $06, nA3, $09
	dc.b	nA3, $06, nA3, $03, nA3, $03, nC4, $0F, nC4, $06, nB3, $09
	dc.b	nB3, $03, nB3, $03, nB3, $0C, nB3, $09, nB3, $03, nB3, $03
	dc.b	nB3, $06, nA3, $06, nA3, $09, nA3, $0C, nC4, $09, nC4, $06
	dc.b	nC4, $06, nD4, $0C, nB3, $03, nB3, $0C, nB3, $09, nB3, $03
	dc.b	nB3, $06, nB3, $0C, nB3, $06, nE4, $06, nEb4, $06, nC4, $09
	dc.b	nC4, $0C, nB3, $06, nB3, $09, nB3, $0C, nB3, $09, nB3, $03
	dc.b	nB3, $09, nA3, $06, nA3, $09, nA3, $0C, nC4, $09, nC4, $03
	dc.b	nC4, $09, nB3, $06, nB3, $09, nB3, $0C, nB3, $06, nB3, $06
	dc.b	nB3, $03, nB3, $06, nA3, $06, nA3, $09, nA3, $06, nA3, $03
	dc.b	nA3, $03, nC4, $0F, nC4, $06, nB3, $09, nB3, $03, nB3, $03
	dc.b	nB3, $0C, nB3, $09, nB3, $03, nB3, $03, nB3, $06, nA3, $06
	dc.b	nA3, $09, nA3, $0C, nC4, $09, nC4, $03, nC4, $03, nC4, $06
	dc.b	nB3, $0C, nB3, $03, nB3, $0C, nC4, $0C, nC4, $06, nC4, $0C
	dc.b	nE4, $09, nEb4, $09, nD4, $0C, nD4, $09, nD4, $09, nD4, $09
	dc.b	nD4, $09, nE4, $06, nE4, $09, nE4, $06, nE4, $06, nE4, $06
	dc.b	nE4, $09, nE4, $03, nE4, $03, nE4, $09, nE4, $06, nE4, $06
	dc.b	nE4, $09, nE4, $06, nE4, $03, nE4, $09, nFs4, $18, nFs4, $18
	dc.b	nAb4, $09, nAb4, $06, nAb4, $06, nAb4, $09, nAb4, $03, nAb4, $0F
	dc.b	nG4, $09, nG4, $06, nG4, $06, nG4, $1B, nG4, $06, nG4, $03
	dc.b	nG4, $06, nG4, $06, nG4, $06, nG4, $09, nG4, $06, nG4, $06
	dc.b	nF4, $06, nF4, $03, nF4, $06, nF4, $06, nF4, $03, nF4, $0C
	dc.b	nE4, $0C, nC4, $06, nC4, $03, nC4, $06, nC4, $06, nB3, $06
	dc.b	nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $06, nB3, $03
	dc.b	nB3, $06, nB3, $06, nA3, $06, nA3, $06, nA3, $03, nA3, $06
	dc.b	nA3, $06, nC4, $06, nC4, $03, nC4, $06, nC4, $06, nB3, $06
	dc.b	nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $06, nB3, $03
	dc.b	nB3, $06, nB3, $06, nA3, $06, nA3, $06, nA3, $03, nA3, $06
	dc.b	nA3, $06, nC4, $06, nC4, $03, nC4, $06, nC4, $06, nB3, $06
	dc.b	nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $06, nB3, $03
	dc.b	nB3, $06, nB3, $06, nA3, $06, nA3, $06, nA3, $03, nA3, $06
	dc.b	nA3, $06, nC4, $06, nC4, $03, nC4, $06, nC4, $06, nB3, $06
	dc.b	nB3, $06, nB3, $03, nB3, $06, nB3, $06, nC4, $0C, nC4, $06
	dc.b	nC4, $0C, nC4, $12, nC4, $06, nC4, $03, nC4, $06, nC4, $06
	dc.b	nB3, $06, nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $06
	dc.b	nB3, $03, nB3, $06, nB3, $06, nA3, $06, nA3, $06, nA3, $03
	dc.b	nA3, $06, nA3, $06, nC4, $06, nC4, $03, nC4, $06, nC4, $06
	dc.b	nB3, $06, nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $06
	dc.b	nB3, $03, nB3, $06, nB3, $06, nA3, $06, nA3, $06, nA3, $03
	dc.b	nA3, $06, nA3, $06, nC4, $06, nC4, $03, nC4, $06, nC4, $06
	dc.b	nB3, $06, nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $06
	dc.b	nB3, $03, nB3, $06, nB3, $06, nA3, $06, nA3, $06, nA3, $03
	dc.b	nA3, $06, nA3, $06, nC4, $06, nC4, $03, nC4, $06, nC4, $06
	dc.b	nB3, $06, nB3, $06, nB3, $03, nB3, $06, nB3, $06, nB3, $12
	dc.b	nB3, $0C, nB3, $12, nBb3, $60, nC4, $60, nC4, $60, nC4, $12
	dc.b	nC4, $4E
	smpsJump            Maniax_Jump05

; FM2 Data
Maniax_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst, $06, nB4, $03, nRst, $06, nA4, $03, nRst, $06, nB4, $03
	dc.b	nRst, $03

Maniax_Jump04:
	dc.b	nRst, $7F, nRst, $7F, nRst, $4C
	smpsSetvoice        $02
	dc.b	nRst, $06, nG3, $03, nA3, $03, nB3, $03, nC4, $03, nA3, $03
	dc.b	nB3, $03, nC4, $03, nD4, $03, nB3, $03, nC4, $03, nD4, $03
	dc.b	nE4, $03, nC4, $03, nD4, $03, nE4, $03, nF4, $03, nG4, $06
	dc.b	nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C
	dc.b	nRst, $5C, nRst, $5C, nRst, $5C
	smpsSetvoice        $02
	dc.b	nRst, $7F, nRst, $7F, nRst, $0A
	smpsSetvoice        $03
	dc.b	nRst, $06, nG4, $03, nRst, $03, nF4, $03, nE4, $03, nRst, $03
	dc.b	nF4, $03, nRst, $03, nG4, $03, nG4, $03, nRst, $15
	smpsAlterVol        $04
	dc.b	nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06, nRst, $06
	dc.b	nG3, $03, nB3, $06, nC4, $06, nD4, $06, nC4, $03, nB3, $06
	dc.b	nD4, $06, nC4, $06, nRst, $06, nG3, $03, nC4, $06, nD4, $06
	dc.b	nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06, nRst, $06
	dc.b	nG3, $03, nB3, $06, nC4, $06, nD4, $06, nC4, $03, nB3, $06
	dc.b	nD4, $06, nC4, $06, nRst, $06, nG3, $03, nC4, $06, nD4, $06
	dc.b	nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06, nRst, $06
	dc.b	nG3, $03, nB3, $06, nC4, $06, nD4, $06, nC4, $03, nB3, $06
	dc.b	nD4, $06, nC4, $06, nRst, $06, nG3, $03, nC4, $06, nD4, $06
	dc.b	nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06, nRst, $06
	dc.b	nG3, $03, nB3, $06, nD4, $06, nC4, $0C, nC4, $06, nC4, $0C
	dc.b	nC4, $12, nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06
	dc.b	nRst, $06, nG3, $03, nB3, $06, nC4, $06, nD4, $06, nC4, $03
	dc.b	nB3, $06, nD4, $06, nC4, $06, nRst, $06, nG3, $03, nC4, $06
	dc.b	nD4, $06, nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06
	dc.b	nRst, $06, nG3, $03, nB3, $06, nC4, $06, nD4, $06, nC4, $03
	dc.b	nB3, $06, nD4, $06, nC4, $06, nRst, $06, nG3, $03, nC4, $06
	dc.b	nD4, $06, nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06
	dc.b	nRst, $06, nG3, $03, nB3, $06, nC4, $06, nD4, $06, nC4, $03
	dc.b	nB3, $06, nD4, $06, nC4, $06, nRst, $06, nG3, $03, nC4, $06
	dc.b	nD4, $06, nE4, $06, nD4, $03, nC4, $06, nE4, $06, nD4, $06
	dc.b	nRst, $06, nG3, $03, nB3, $06, nC4, $06, nD4, $09
	smpsAlterNote       $00
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $2A
	smpsAlterVol        $FC
	smpsJump            Maniax_Jump04

; FM3 Data
Maniax_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	dc.b	nRst, $1E

Maniax_Jump03:
	dc.b	nC7, $02, nRst, $04, nB6, $02, nRst, $04, nA6, $02, nRst, $04
	dc.b	nG6, $02, nRst, $04, nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b	nA6, $02, nRst, $04, nG6, $02, nRst, $04, nC7, $02, nRst, $04
	dc.b	nB6, $02, nRst, $04, nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b	nC7, $02, nRst, $04, nB6, $02, nRst, $04, nA6, $02, nRst, $04
	dc.b	nG6, $02, nRst, $04, nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b	nA6, $02, nRst, $04, nG6, $02, nRst, $04, nC7, $02, nRst, $04
	dc.b	nB6, $02, nRst, $04, nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b	nC7, $02, nRst, $04, nB6, $02, nRst, $04, nA6, $02, nRst, $04
	dc.b	nG6, $02, nRst, $04, nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b	nA6, $02, nRst, $04, nG6, $02, nRst, $04
	smpsAlterVol        $FC
	dc.b	nC7, $02, nRst, $04, nB6, $02, nRst, $04, nA6, $02, nRst, $04
	dc.b	nG6, $02, nRst, $04, nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b	nA6, $02, nRst, $04, nG6, $02, nRst, $04, nC7, $02, nRst, $04
	dc.b	nB6, $02, nRst, $04, nA6, $02, nRst, $04, nG6, $02, nRst, $04
	dc.b	nC7, $02, nRst, $04, nB6, $02, nRst, $04, nA6, $02, nRst, $04
	dc.b	nG6, $02, nRst, $04, nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b	nA6, $02, nRst, $04, nG6, $02, nRst, $04, nC7, $02, nRst, $04
	dc.b	nB6, $02, nRst, $04, nA6, $02, nRst, $04, nG6, $02, nRst, $04
	smpsAlterVol        $FA
	dc.b	nG5, $03, nA5, $03, nB5, $03, nC6, $03, nA5, $03, nB5, $03
	dc.b	nC6, $03, nD6, $03, nB5, $03, nC6, $03, nD6, $03, nE6, $03
	dc.b	nC6, $03, nD6, $03, nE6, $03, nF6, $03, nG6, $06, nRst, $7F
	dc.b	nRst, $7F, nRst, $5E
	smpsSetvoice        $04
	dc.b	nRst, $1E
	smpsAlterVol        $02
	dc.b	nB4, $02, nC5, $39, nCs5, $01, nD5, $0B, nC5, $01, nB4, $0B
	dc.b	nA4, $01, nG4, $0B, nRst, $01, nC5, $3C, nB4, $0B, nA4, $01
	dc.b	nG4, $0B, nFs4, $01, nE4, $0B, nG4, $01, nA4, $39, nB4, $02
	dc.b	nC5, $01, nD5, $0B, nC5, $01, nB4, $0B, nA4, $01, nG4, $0B
	dc.b	nFs4, $01, nF4, $2F, nFs4, $01, nG4, $1E, nG4, $09, nFs4, $09
	dc.b	nF4, $09, nG4, $02
	smpsAlterVol        $FF
	dc.b	nA4, $01
	smpsAlterVol        $FF
	dc.b	nBb4, $03, nRst, $03, nC5, $03, nRst, $03, nD5, $06, nE5, $03
	dc.b	nF5, $03, nRst, $03, nF5, $02, nG5, $07, nRst, $05, nAb5, $01
	dc.b	nA5, $06, nE5, $06, nA5, $03, nAb5, $06, nE5, $05, nEb5, $01
	dc.b	nE5, $05, nEb5, $01, nE5, $05, nF5, $01, nG5, $0B, nRst, $01
	dc.b	nC5, $03, nRst, $03, nG5, $03, nRst, $03, nE5, $09, nG5, $03
	dc.b	nRst, $03, nE5, $03, nG5, $03, nRst, $03, nC5, $02, nD5, $01
	dc.b	nE5, $03, nEb5, $03, nD5, $03, nCs5, $03, nEb5, $03, nD5, $03
	dc.b	nCs5, $03, nC5, $03, nCs5, $03, nD5, $03, nE5, $03, nD5, $03
	dc.b	nF5, $03, nG5, $03, nAb5, $03, nB5, $03, nC6, $06, nRst, $03
	dc.b	nBb5, $03, nRst, $03, nC6, $03, nRst, $03, nF5, $0C, nC5, $02
	dc.b	nRst, $01, nEb5, $03, nF5, $03, nG5, $03, nBb5, $03, nB5, $02
	dc.b	nC6, $07, nG5, $03, nRst, $03, nC6, $03, nRst, $03, nB5, $06
	dc.b	nFs5, $02, nG5, $01, nFs5, $03, nG5, $03, nAb5, $03, nG5, $03
	dc.b	nAb5, $03, nA5, $03, nBb5, $08, nFs5, $01, nRst, $06, nBb5, $03
	dc.b	nRst, $03, nG5, $06, nEb5, $08, nRst, $01, nF5, $03, nRst, $03
	dc.b	nFs5, $03, nRst, $03, nG5, $03, nRst, $03, nF5, $03, nE5, $03
	dc.b	nRst, $03, nF5, $03, nRst, $03, nG5, $03, nG5, $03, nRst, $7F
	dc.b	nRst, $7F, nRst, $7F, nRst, $18
	smpsAlterVol        $02
	dc.b	nB4, $02, nC5, $39, nCs5, $01, nD5, $0B, nC5, $01, nB4, $0B
	dc.b	nA4, $01, nG4, $0B, nA4, $01, nC5, $3C, nB4, $0B, nA4, $01
	dc.b	nG4, $0B, nFs4, $01, nE4, $0B, nRst, $01, nA4, $39, nB4, $02
	dc.b	nC5, $01, nD5, $0B, nC5, $01, nB4, $0B, nA4, $01, nG4, $0B
	dc.b	nFs4, $01, nF4, $2F, nRst, $01, nG4, $1E, nRst, $7F, nRst, $7F
	dc.b	nRst, $46
	smpsSetvoice        $05
	dc.b	nRst, $12
	smpsAlterVol        $FE
	dc.b	nG5, $06, nE6, $09, nRst, $03, nE6, $06, nF6, $06, nE6, $06
	dc.b	nG6, $06, nE6, $05, nRst, $01, nE6, $06, nC6, $06
	smpsAlterVol        $0A
	smpsJump            Maniax_Jump03

; FM4 Data
Maniax_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	dc.b	nRst, $1E

Maniax_Jump02:
	dc.b	nC4, $02, nRst, $07, nC4, $02, nRst, $07, nC4, $02, nRst, $04
	dc.b	nC4, $02, nRst, $04, nA3, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b	nC4, $02, nRst, $07, nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $04, nA3, $02, nRst, $01
	dc.b	nG3, $02, nRst, $04, nC4, $02, nRst, $01, nD4, $02, nRst, $01
	dc.b	nE4, $02, nRst, $01, nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $04, nA3, $02, nRst, $01
	dc.b	nG3, $02, nRst, $04, nC4, $02, nRst, $07, nC4, $02, nRst, $04
	dc.b	nC4, $02, nRst, $01, nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nA3, $02, nRst, $01, nC4, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b	nC4, $02, nRst, $01, nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nD4, $02, nRst, $01, nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $04, nA3, $02, nRst, $01
	dc.b	nG3, $02, nRst, $04, nC4, $02, nRst, $07, nC4, $02, nRst, $07
	dc.b	nC4, $02, nRst, $07, nC4, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b	nA3, $02, nRst, $01, nG3, $02, nRst, $04, nC4, $02, nRst, $01
	dc.b	nD4, $02, nRst, $01, nE4, $02, nRst, $01, nC4, $02, nRst, $07
	dc.b	nC4, $02, nRst, $07, nC4, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b	nA3, $02, nRst, $01, nG3, $02, nRst, $04, nC4, $02, nRst, $07
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b	nC4, $02, nRst, $01, nA3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nC4, $02, nRst, $01, nC4, $02, nRst, $04, nC4, $02, nRst, $01
	dc.b	nA3, $02, nRst, $01, nC4, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b	nC4, $02, nRst, $01, nD4, $02
	smpsAlterNote       $00
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $01
	smpsJump            Maniax_Jump02

; FM5 Data
Maniax_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $07
	dc.b	nRst, $1E

Maniax_Jump01:
	dc.b	nB3, $12, nA3, $12, nB3, $12, nA3, $12, nB3, $0C, nA3, $0C
	dc.b	nC4, $12, nB3, $12, nA3, $3C, nA3, $12, nC4, $12, nC4, $0C
	dc.b	nA3, $12, nB3, $12, nC4, $0C, nC4, $12, nB3, $4E, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nD4, $30, nE4, $30, nE4, $30, nFs4, $30, nF4, $30
	dc.b	nEb4, $30, nEb4, $30, nF4, $06, nF4, $03, nF4, $06, nF4, $06
	dc.b	nF4, $03, nF4, $06
	smpsAlterNote       $00
	dc.b	nRst, $75, nRst, $75, nRst, $75, nRst, $75, nRst, $75, nRst, $75
	dc.b	nRst, $75, nRst, $75, nRst, $75, nRst, $75
	smpsJump            Maniax_Jump01

; FM6 Data
Maniax_FM6:
	smpsPan             panCenter, $00
	smpsSetvoice        $08
	dc.b	nRst, $1E

Maniax_Jump00:
	dc.b	nRst, $7F, nRst, $1D, nA3, $03, nRst, $03, nG3, $03, nRst, $03
	dc.b	nC4, $03, nRst, $03, nB3, $03, nC4, $03, nRst, $06, nG3, $03
	dc.b	nA3, $03, nC4, $30, nRst, $30, nC4, $06, nRst, $0C, nD4, $4E
	dc.b	nRst, $4E, nG3, $03, nA3, $03, nC4, $06, nA3, $02, nRst, $52
	dc.b	nG3, $03, nA3, $03, nC4, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nA3, $03, nG3, $03, nRst, $48, nC4, $03, nRst, $03, nA3, $03
	dc.b	nRst, $03, nD4, $03, nE4, $03, nRst, $03, nE4, $03, nRst, $36
	dc.b	nE4, $03, nRst, $09, nC4, $03, nRst, $09, nG3, $02, nRst, $01
	dc.b	nG3, $02, nRst, $01, nB3, $03, nC4, $03, nFs3, $03, nG3, $03
	dc.b	nRst, $4E, nG3, $03, nA3, $03, nC4, $06, nA3, $02, nRst, $52
	dc.b	nG3, $02, nRst, $01, nG3, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nC4, $02, nRst, $01, nD4, $03, nE4, $03, nRst, $47, nD5, $01
	dc.b	nRst, $03, nD4, $02, nRst, $01, nA3, $03, nC4, $03, nRst, $03
	dc.b	nC4, $03, nA3, $06, nRst, $36, nG3, $02, nRst, $01, nG3, $02
	dc.b	nRst, $01, nC4, $02, nRst, $01, nC4, $02, nRst, $01, nG3, $02
	dc.b	nRst, $01, nG3, $02, nRst, $01, nC4, $03, nRst, $03, nC4, $03
	dc.b	nRst, $06, nB3, $03, nRst, $06, nBb3, $06, nRst, $7F, nRst, $1A
	dc.b	nD5, $03, nRst, $03, nD5, $03, nRst, $27, nF4, $03, nRst, $03
	dc.b	nCs4, $03, nRst, $27, nG4, $03, nRst, $03, nG4, $03, nRst, $27
	dc.b	nG4, $03, nRst, $03, nEb4, $03, nRst, $18, nG4, $03, nRst, $03
	dc.b	nF4, $03, nE4, $03, nRst, $03, nF4, $03, nRst, $03, nG4, $03
	dc.b	nG4, $03, nRst, $63, nG3, $03, nA3, $03, nC4, $06, nA3, $02
	dc.b	nRst, $52, nG3, $03, nA3, $03, nC4, $02, nRst, $01, nC4, $02
	dc.b	nRst, $01, nA3, $03, nG3, $03, nRst, $45, nA3, $02, nC5, $01
	dc.b	nRst, $03, nC4, $03, nG3, $03, nC4, $03, nRst, $03, nC4, $03
	dc.b	nA3, $06, nRst, $36, nC4, $03, nRst, $03, nD4, $03, nRst, $03
	dc.b	nE4, $03, nRst, $03, nF4, $03, nRst, $03, nE4, $03, nD4, $03
	dc.b	nRst, $03, nE4, $03, nRst, $03, nC4, $33, nRst, $1E, nG3, $03
	dc.b	nA3, $03, nC4, $06, nA3, $02, nRst, $52, nG3, $02, nRst, $01
	dc.b	nG3, $02, nRst, $01, nC4, $02, nRst, $01, nC4, $02, nRst, $01
	dc.b	nD4, $03, nE4, $03, nRst, $47, nD5, $01, nRst, $03, nC5, $02
	dc.b	nRst, $01, nG3, $03, nC4, $03, nRst, $03, nG3, $03, nA3, $06
	dc.b	nRst, $2A, nE4, $05, nRst, $07, nC4, $05, nRst, $07, nA3, $05
	dc.b	nRst, $07, nG3, $0C, nA3, $03, nRst, $03, nBb3, $0F, nRst, $03
	dc.b	nA3, $0F, nRst, $03, nG3, $0F, nRst, $03, nF3, $0F, nRst, $03
	dc.b	nE4, $03, nRst, $09, nD4, $03, nRst, $09, nA3, $0F, nRst, $03
	dc.b	nB3, $0F, nRst, $03, nC4, $0F, nRst, $03, nD4, $0F, nRst, $03
	dc.b	nE4, $03, nRst, $09, nA4, $03, nRst, $09, nAb4, $0F, nRst, $03
	dc.b	nG4, $0F, nRst, $03, nF4, $0F, nRst, $03, nEb4, $0F, nRst, $03
	dc.b	nD4, $03, nRst, $09, nC4, $03, nRst, $0F, nG3, $06, nA3, $06
	dc.b	nG3, $0C, nRst, $06, nG3, $06, nE4, $09, nRst, $03, nE4, $06
	dc.b	nF4, $06, nE4, $06, nG4, $06, nE4, $03, nRst, $03, nE4, $06
	dc.b	nC4, $06
	smpsJump            Maniax_Jump00

; PSG1 Data
Maniax_PSG1:
	dc.b	nRst, $1E

Maniax_Jump08:
	dc.b	nE3, $02, nRst, $01, nD3, $02, nRst, $01, nE3, $02, nRst, $01
	smpsPSGAlterVol     $01
	dc.b	nD3, $02, nRst, $01, nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b	nE3, $02, nRst, $01
	smpsPSGAlterVol     $01
	dc.b	nD3, $02, nRst, $01, nE3, $02, nRst, $01
	smpsPSGAlterVol     $01
	dc.b	nD3, $02, nRst, $01, nE3, $02, nRst, $01, nD3, $02, nRst, $01
	smpsPSGAlterVol     $01
	dc.b	nE3, $02, nRst, $01, nD3, $02, nRst, $01, nE3, $02, nRst, $01
	dc.b	nD3, $02, nRst, $01, nE3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b	nE3, $02, nRst, $01, nD3, $02, nRst, $01
	smpsPSGAlterVol     $01
	dc.b	nE3, $02, nRst, $01, nD3, $02, nRst, $01, nE3, $02, nRst, $01
	dc.b	nD3, $02, nRst, $01, nE3, $02, nRst, $01, nRst, $02, nRst, $01
	dc.b	nRst, $02, nRst, $01, nRst, $02, nRst, $01, nRst, $02, nRst, $01
	dc.b	nRst, $02, nRst, $01, nRst, $02, nRst, $01, nRst, $02, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $01
	smpsPSGAlterVol     $F7
	dc.b	nD2, $02, nRst, $01, nF2, $02, nRst, $01, nA2, $02, nRst, $01
	dc.b	nBb2, $02, nRst, $01, nD3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nA2, $02, nRst, $01, nF2, $02, nRst, $01, nD2, $02, nRst, $01
	dc.b	nF2, $02, nRst, $01, nA2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nD3, $02, nRst, $01, nBb2, $02, nRst, $01, nA2, $02, nRst, $01
	dc.b	nF2, $02, nRst, $01, nD2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b	nA2, $02, nRst, $01, nBb2, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b	nBb2, $02, nRst, $01, nA2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b	nD2, $02, nRst, $01, nF2, $02, nRst, $01, nA2, $02, nRst, $01
	dc.b	nBb2, $02, nRst, $01, nD3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nA2, $02, nRst, $01, nF2, $02, nRst, $01, nE2, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nB2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b	nE3, $02, nRst, $01, nC3, $02, nRst, $01, nB2, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nE2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b	nB2, $02, nRst, $01, nC3, $02, nRst, $01, nE3, $02, nRst, $01
	dc.b	nC3, $02, nRst, $01, nB2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b	nE2, $02, nRst, $01, nG2, $02, nRst, $01, nB2, $02, nRst, $01
	dc.b	nC3, $02, nRst, $01, nE3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b	nB2, $02, nRst, $01, nG2, $02, nRst, $01, nE2, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nB2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b	nE3, $02, nRst, $01, nC3, $02, nRst, $01, nB2, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nEb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b	nAb2, $02, nRst, $01, nC3, $02, nRst, $01, nEb3, $02, nRst, $01
	dc.b	nC3, $02, nRst, $01, nAb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b	nEb2, $02, nRst, $01, nG2, $02, nRst, $01, nAb2, $02, nRst, $01
	dc.b	nC3, $02, nRst, $01, nEb3, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b	nAb2, $02, nRst, $01, nG2, $02, nRst, $01, nEb2, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nAb2, $02, nRst, $01, nC3, $02, nRst, $01
	dc.b	nEb3, $02, nRst, $01, nC3, $02, nRst, $01, nAb2, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nEb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b	nAb2, $02, nRst, $01, nC3, $02, nRst, $01, nEb3, $02, nRst, $01
	dc.b	nC3, $02, nRst, $01, nAb2, $02, nRst, $01, nG2, $02, nRst, $01
	dc.b	nE3, $03, nRst, $03, nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b	nE3, $03, nRst, $03, nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b	nE3, $03, nRst, $03, nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b	nE3, $03, nRst, $03, nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b	nE3, $03, nRst, $03, nE3, $03, nRst, $03, nE3, $03, nRst, $03
	dc.b	nE3, $03
	smpsAlterNote       $00
	dc.b	nRst, $03
	smpsPSGAlterVol     $04
	smpsJump            Maniax_Jump08

; PSG2 Data
Maniax_PSG2:
	smpsModSet          $00, $02, $00, $02
	dc.b	nRst, $1E

Maniax_Jump07:
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $1B, nC3, $06, nA2, $0C
	dc.b	nC3, $06, nB2, $0C, nC3, $06, nB2, $0C, nG2, $24, nA2, $06
	dc.b	nE3, $06, nD3, $0C, nC3, $06, nB2, $0C, nC3, $06, nB2, $0C
	dc.b	nG2, $2A, nC3, $06, nA2, $0C, nC3, $06, nB2, $0C, nC3, $06
	dc.b	nB2, $0C, nG2, $24, nA2, $06, nA2, $06, nF2, $0C, nA2, $06
	dc.b	nG2, $0C, nA2, $06, nG2, $0C, nC2, $2A, nC3, $06, nA2, $0C
	dc.b	nC3, $06, nB2, $0C, nC3, $06, nB2, $0C, nG2, $24, nA2, $06
	dc.b	nA2, $06, nG2, $0C, nC3, $06, nB2, $0C, nC3, $06, nB2, $0C
	dc.b	nG2, $2A, nC3, $06, nA2, $0C, nC3, $06, nB2, $0C, nC3, $06
	dc.b	nB2, $0C, nG2, $24, nA2, $06, nA2, $06, nF2, $0C, nA2, $06
	dc.b	nG2, $0C, nA2, $06, nG2, $0C, nC2, $09, nE2, $09, nD2, $0C
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $0F, nC3, $06, nA2, $0C
	dc.b	nC3, $06, nB2, $0C, nC3, $06, nB2, $0C, nG2, $24, nA2, $06
	dc.b	nE3, $06, nD3, $0C, nC3, $06, nB2, $0C, nC3, $06, nB2, $0C
	dc.b	nG2, $2A, nC3, $06, nA2, $0C, nC3, $06, nB2, $0C, nC3, $06
	dc.b	nB2, $0C, nG2, $24, nA2, $06, nA2, $06, nF2, $0C, nA2, $06
	dc.b	nG2, $0C, nA2, $06, nG2, $0C, nC2, $2A, nC3, $06, nA2, $0C
	dc.b	nC3, $06, nB2, $0C, nC3, $06, nB2, $0C, nG2, $24, nA2, $06
	dc.b	nA2, $06, nG2, $0C, nC3, $06, nB2, $0C, nC3, $06, nB2, $0C
	dc.b	nG2, $2A, nC3, $06, nA2, $0C, nC3, $06, nB2, $0C, nC3, $06
	dc.b	nB2, $0C, nG2, $24, nA2, $06, nA2, $06, nF2, $0C, nA2, $06
	dc.b	nG2, $0C, nA2, $06, nG2, $0C, nC2, $0C, nE2, $06, nD2, $47
	dc.b	nRst, $07, nC2, $06, nD2, $06, nE2, $4E, nRst, $06, nC2, $06
	dc.b	nA2, $06, nE2, $06, nEb2, $48, nRst, $06, nC2, $06, nEb2, $06
	dc.b	nD2, $66
	smpsJump            Maniax_Jump07

; PSG3 Data
Maniax_PSG3:
	smpsAlterNote       $00
	smpsPSGvoice        $0C
	dc.b	nRst, $1E

Maniax_Jump06:
	dc.b	nB1, $03, nRst, $06, nB1, $03, nRst, $06, nA1, $03, nRst, $06
	dc.b	nA1, $03, nRst, $06, nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b	nA1, $03, nRst, $06, nA1, $03, nRst, $06, nB1, $03, nRst, $09
	dc.b	nA1, $03, nRst, $09, nC2, $03, nRst, $06, nC2, $03, nRst, $06
	dc.b	nB1, $03, nRst, $06, nB1, $03, nRst, $06, nA1, $03, nRst, $06
	dc.b	nA1, $03, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nA1, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nA1, $03, nRst, $06, nA1, $03, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $03, nRst, $03
	smpsPSGAlterVol     $FA
	dc.b	nA1, $03, nRst, $06, nA1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b	nB1, $03, nRst, $06, nC2, $03, nRst, $09, nA1, $03, nRst, $06
	dc.b	nA1, $03, nRst, $06, nB1, $03, nRst, $06, nB1, $03, nRst, $06
	dc.b	nC2, $03, nRst, $09, nC2, $03, nRst, $06, nC2, $03, nRst, $06
	dc.b	nB1, $03, nRst, $06, nB1, $03, nRst, $06, nB1, $03, nB1, $03
	dc.b	nRst, $03, nB1, $03, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nB1, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nB1, $03, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nB1, $03, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nB1, $03, nRst, $06, nB1, $03, nRst, $6B, nRst, $6B, nRst, $6B
	dc.b	nRst, $6B, nRst, $6B, nRst, $6B, nRst, $6B, nRst, $6B, nRst, $6B
	dc.b	nRst, $6B, nRst, $6B, nRst, $6B, nRst, $6B, nRst, $6B, nRst, $6B
	dc.b	nRst, $6B, nRst, $6B, nRst, $6B, nRst, $03
	smpsPSGAlterVol     $FA
	dc.b	nBb1, $03, nRst, $03, nBb1, $03, nRst, $09, nBb1, $03, nRst, $06
	dc.b	nBb1, $03, nRst, $06, nBb1, $03, nRst, $03, nBb1, $03, nRst, $03
	dc.b	nBb1, $03, nRst, $03, nBb1, $03, nBb1, $03, nRst, $03, nBb1, $03
	dc.b	nRst, $06, nBb1, $03, nRst, $09, nBb1, $03, nRst, $09, nC2, $03
	dc.b	nRst, $03, nC2, $03, nRst, $09, nC2, $03, nRst, $06, nC2, $03
	dc.b	nRst, $06, nC2, $03, nRst, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b	nRst, $03, nC2, $03, nC2, $03, nRst, $03, nC2, $03, nRst, $06
	dc.b	nC2, $03, nRst, $09, nC2, $03, nRst, $09, nC2, $03, nRst, $03
	dc.b	nC2, $03, nRst, $09, nC2, $03, nRst, $06, nC2, $03, nRst, $06
	dc.b	nC2, $03, nRst, $03, nC2, $03, nRst, $03, nC2, $03, nRst, $03
	dc.b	nC2, $03, nC2, $03, nRst, $03, nC2, $03, nRst, $06, nC2, $03
	dc.b	nRst, $09, nC2, $03, nRst, $09, nC2, $03, nRst, $03, nC2, $03
	dc.b	nRst, $09, nC2, $03, nRst, $06, nC2, $03, nRst, $06, nC2, $03
	dc.b	nRst, $09, nC2, $03, nRst, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b	nRst, $03, nC2, $03, nRst, $03, nC2, $03, nRst, $03, nC2, $03
	dc.b	nRst, $03, nC2, $03
	smpsAlterNote       $00
	dc.b	nRst, $03
	smpsJump            Maniax_Jump06

; DAC Data
Maniax_DAC:
	smpsStop

Maniax_Voices:
;	Voice $00
;	$2C
;	$31, $31, $71, $71, 	$5F, $54, $5F, $5F, 	$05, $0A, $03, $0C
;	$00, $03, $03, $03, 	$00, $87, $00, $A7, 	$17, $06, $19, $06
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $03, $0A, $05
	smpsVcDecayRate2    $03, $03, $03, $00
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $06, $19, $06, $17

;	Voice $01
;	$2C
;	$31, $31, $71, $71, 	$5F, $54, $5F, $5F, 	$05, $0A, $03, $0C
;	$00, $03, $03, $03, 	$00, $87, $00, $A7, 	$17, $06, $19, $06
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $03, $0A, $05
	smpsVcDecayRate2    $03, $03, $03, $00
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $06, $19, $06, $17

;	Voice $02
;	$36
;	$0F, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$12, $11, $0E, $00
;	$00, $0A, $07, $09, 	$FF, $0F, $1F, $0F, 	$18, $12, $12, $12
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $11, $12
	smpsVcDecayRate2    $09, $07, $0A, $00
	smpsVcDecayLevel    $00, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $12, $12, $12, $18

;	Voice $03
;	$3F
;	$00, $32, $00, $76, 	$1F, $1F, $1F, $1F, 	$0E, $0E, $0E, $10
;	$0A, $0A, $0A, $0A, 	$03, $58, $38, $38, 	$16, $0B, $0A, $0B
	smpsVcAlgorithm     $07
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $03, $00
	smpsVcCoarseFreq    $06, $00, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $0E, $0E, $0E
	smpsVcDecayRate2    $0A, $0A, $0A, $0A
	smpsVcDecayLevel    $03, $03, $05, $00
	smpsVcReleaseRate   $08, $08, $08, $03
	smpsVcTotalLevel    $0B, $0A, $0B, $16

;	Voice $04
;	$2C
;	$72, $78, $34, $34, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$17, $08, $17, $12
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $12, $17, $08, $17

;	Voice $05
;	$2B
;	$32, $32, $04, $72, 	$14, $0E, $12, $4E, 	$00, $10, $12, $0C
;	$00, $00, $00, $00, 	$0A, $5A, $3A, $1A, 	$1C, $28, $22, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $03, $03
	smpsVcCoarseFreq    $02, $04, $02, $02
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0E, $12, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $12, $10, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $03, $05, $00
	smpsVcReleaseRate   $0A, $0A, $0A, $0A
	smpsVcTotalLevel    $00, $22, $28, $1C

;	Voice $06
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $06
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
	smpsVcTotalLevel    $06, $13, $2D, $24

;	Voice $07
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $07, $00, $07
;	$00, $07, $00, $07, 	$00, $38, $00, $38, 	$16, $12, $17, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $00, $07, $00
	smpsVcDecayRate2    $07, $00, $07, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $17, $12, $16

;	Voice $08
;	$3A
;	$32, $08, $72, $02, 	$12, $4E, $14, $11, 	$04, $0E, $00, $04
;	$06, $04, $08, $07, 	$18, $58, $08, $3F, 	$1B, $21, $24, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $00, $03
	smpsVcCoarseFreq    $02, $02, $08, $02
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $11, $14, $0E, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $00, $0E, $04
	smpsVcDecayRate2    $07, $08, $04, $06
	smpsVcDecayLevel    $03, $00, $05, $01
	smpsVcReleaseRate   $0F, $08, $08, $08
	smpsVcTotalLevel    $00, $24, $21, $1B

