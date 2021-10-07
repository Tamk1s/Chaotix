HDN1R_Splash_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     HDN1R_Splash_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $03, $08

	smpsHeaderDAC       HDN1R_Splash_DAC
	smpsHeaderFM        HDN1R_Splash_FM1,	$00, $17
	smpsHeaderFM        HDN1R_Splash_FM2,	$00, $13
	smpsHeaderFM        HDN1R_Splash_FM3,	$00, $0E
	smpsHeaderFM        HDN1R_Splash_FM4,	$00, $19
	smpsHeaderFM        HDN1R_Splash_FM5,	$00, $16
	smpsHeaderFM        HDN1R_Splash_FM6,	$00, $1B
	smpsHeaderPSG       HDN1R_Splash_PSG1,	$00, $05, $00, $00
	smpsHeaderPSG       HDN1R_Splash_PSG2,	$00, $0B, $00, $00
	smpsHeaderPSG       HDN1R_Splash_PSG3,	$00, $0A, $00, $00

; FM1 Data
HDN1R_Splash_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsModOff
	smpsModOff
	dc.b	nRst, $06

HDN1R_Splash_Loop67:
	dc.b	nBb5, $02, nG5, $01, nE5, $02, nCs5, $01, nBb4, $02, nG4, $01
	dc.b	nBb4, $02, nCs5, $01, nE5, $02, nCs5, $01, nBb4, $02, nG4, $01
	dc.b	nE4, $02, nCs4, $01, nE4, $02, nG4, $01, nCs5, $02, nBb4, $01
	dc.b	nG4, $02, nE4, $01, nCs4, $02, nBb3, $01, nCs4, $02, nE4, $01
	dc.b	nBb4, $02, nG4, $01, nE4, $02, nCs4, $01, nBb3, $02, nG3, $01
	dc.b	nBb3, $02, nCs4, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop67
	dc.b	nCs6, $02, nBb5, $01, nG5, $02, nE5, $01, nCs5, $02, nBb4, $01
	dc.b	nCs5, $02, nE5, $01, nBb5, $02, nG5, $01, nE5, $02, nCs5, $01
	dc.b	nBb4, $02, nG4, $01, nBb4, $02, nCs5, $01, nG5, $02, nE5, $01
	dc.b	nCs5, $02, nBb4, $01, nG4, $02, nE4, $01, nG4, $02, nBb4, $01
	dc.b	nE5, $02, nCs5, $01, nBb4, $02, nG4, $01, nE4, $02, nCs4, $01
	dc.b	nE4, $02, nG4, $01, nBb3, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b	nBb4, $02, nCs5, $01, nE5, $02, nG5, $01, nCs4, $02, nE4, $01
	dc.b	nG4, $02, nBb4, $01, nCs5, $02, nE5, $01, nG5, $02, nBb5, $01
	dc.b	nCs5, nRst, nBb5, nRst, $02, nBb6, $01, nRst, $02, nBb5, $01, nRst
	dc.b	nE5, nBb4, nRst, $05
	smpsAlterNote       $03
	dc.b	nRst, $01
	smpsAlterNote       $05
	dc.b	nRst, $01
	smpsAlterNote       $07
	dc.b	nRst, $01
	smpsAlterNote       $08
	dc.b	nRst, $01
	smpsAlterNote       $13
	dc.b	nRst, $01
	smpsAlterNote       $14
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $01, nRst, $55, nRst, $3B
	smpsAlterVol        $02
	dc.b	nG3, $02, nBb3, $01, nCs4, $02, nE4, $01, nG4, $02, nBb4, $01
	dc.b	nCs5, $02, nE5, $01, nCs5, $02, nBb4, $01, nG4, $02, nE4, $01
	dc.b	nG4, $02, nBb4, $01, nCs5, $02, nE5, $01, nRst, $05
	smpsAlterVol        $01
	dc.b	nCs6, $01, nRst, $02, nBb5, $01, nRst, $02, nBb6, $01

HDN1R_Splash_Jump04:
	dc.b	nRst, $54, nRst, $54, nRst, $54, nRst, $54, nRst, $54
	smpsAlterVol        $FA
	dc.b	nD4, $02, nF4, $01, nA4, $02, nD5, $01, nF5, $02, nA5, $01
	dc.b	nD6, $02, nF6, $01, nA6, $02, nF6, $01, nD6, $02, nA5, $01
	dc.b	nF5, $02, nD5, $01, nA4, $02, nD4, $01, nRst, $18
	smpsAlterVol        $FF
	dc.b	nF4, $02, nA4, $01, nD5, $02, nF5, $01, nA5, $02, nD6, $01
	dc.b	nF6, $02, nA6, $01, nD7, $02, nA6, $01, nF6, $02, nD6, $01
	dc.b	nA5, $02, nF5, $01, nA4, $02, nF4, $01, nRst, $18
	smpsAlterVol        $FF
	dc.b	nC4, $02, nE4, $01, nG4, $02, nC5, $01, nE5, $02, nG5, $01
	dc.b	nC6, $02
	smpsAlterVol        $01
	dc.b	nE6, $01, nG6, $02, nE6, $01, nC6, $02, nG5, $01, nE5, $02
	dc.b	nC5, $01, nG4, $02, nC4, $01, nRst, $30
	smpsAlterNote       $00
	smpsAlterVol        $FE
	dc.b	nE5, $02, nRst, $07, nFs5, $02, nRst, $07, nD5, $02, nRst, $04
	dc.b	nAb4, $03, nAb5, nA4, nA5, nB4, nB5, nE5, nE4, nF5, $02, nRst
	dc.b	$07, nFs5, $02, nRst, $07, nD5, $02, nRst, $04, nE5, $02, nFs5
	dc.b	$01, nAb5, $02, nA5, $01, nFs5, $02, nAb5, $01, nA5, $02, nB5
	dc.b	$01, nAb5, $02, nA5, $01, nB5, $02, nD6, $01, nE6, $03
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nD6, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nBb5
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $FF
	dc.b	nE5, $02, nRst, $07, nFs5, $02, nRst, $07, nD5, $02, nRst, $01
	dc.b	nAb4, $03, nAb5, nA5, nA4, nB5, nA5, nA4, nE5
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nD5, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote       $01
	dc.b	nF5, $02, nRst, $07, nFs5, $02, nRst, $07, nD5, $02, nRst, $04
	dc.b	nF6, $02, nD6, $01, nB5, $02, nA5, $01, nD6, $02, nB5, $01
	dc.b	nA5, $02, nAb5, $01, nA5, $02, nAb5, $01, nFs5, $02, nF5, $01
	dc.b	nD5, $03
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nC5, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote       $04
	dc.b	smpsNoAttack, nE4
	smpsAlterNote       $FF
	dc.b	nAb5, $02, nRst, $07, nA5, $02, nRst, $07, nFs5, $02, nRst, $04
	dc.b	nB4, $03, nB5, nC5, nC6, nD5, nD6, nG5, nG4, nAb5, $02, nRst
	dc.b	$07, nA5, $02, nRst, $07, nFs5, $02, nRst, $04, nG5, $02, nAb5
	dc.b	$01, nB5, $02, nC6, $01, nAb5, $02, nB5, $01, nC6, $02, nD6
	dc.b	$01, nB5, $02, nC6, $01, nD6, $02, nF6, $01, nG6, $03
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nF6, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nA5
	smpsAlterNote       $01
	dc.b	nAb5, $02, nRst, $07, nA5, $02, nRst, $07, nFs5, $02, nRst, $01
	dc.b	nB4, $03, nB5, nC6, nC5, nD6, nC6, nC5, nG5
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs5, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nA4
	smpsAlterNote       $FF
	dc.b	nAb5, $02, nRst, $07, nA5, $02, nRst, $07, nFs5, $02, nRst, $04
	dc.b	nAb6, $02, nFs6, $01, nF6, $02, nD6, $01, nF6, $02, nD6, $01
	dc.b	nC6, $02, nB5, $01, nC6, $02, nB5, $01, nAb5, $02, nFs5, $01
	dc.b	nE5, $03
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nD5, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote       $FF
	dc.b	nRst, $55, nRst, $55, nRst, $54, nRst, $3E, nRst, $3E, nRst, $3E
	dc.b	nRst, $3E, nRst, $3E
	smpsAlterVol        $07
	dc.b	nC4, $02, nD4, $01, nEb4, $02, nF4, $01, nG4, $02, nBb4, $01
	dc.b	nC5, $02, nD5, $01, nEb5, $18, nD5, $0C, nBb4, nC5, nG5

HDN1R_Splash_Loop68:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop68
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01

HDN1R_Splash_Loop69:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop69
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02

HDN1R_Splash_Loop6A:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	smpsLoop            $00, $02, HDN1R_Splash_Loop6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $10
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $20
	dc.b	smpsNoAttack, $02, nRst

HDN1R_Splash_Loop6B:
	dc.b	$01
	smpsLoop            $00, $18, HDN1R_Splash_Loop6B
	smpsAlterVol        $BA
	dc.b	nC5

HDN1R_Splash_Loop6C:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $04, HDN1R_Splash_Loop6C
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01

HDN1R_Splash_Loop6D:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $05, HDN1R_Splash_Loop6D
	smpsAlterVol        $F1
	dc.b	nB4, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07, nC5, $18, nCs5, $0C
	smpsAlterVol        $06
	smpsJump            HDN1R_Splash_Jump04

; FM2 Data
HDN1R_Splash_FM2:
	smpsSetvoice        $00
	smpsModOff
	smpsPan             panCenter, $00
	smpsModOff
	smpsAlterNote       $FF
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nRst, $30, nRst, $55, nRst, $24, nE5, $01, nBb5, nRst, nE6, nRst
	dc.b	nG6, nE6, nRst, nG5, nRst, nRst, nG4, $05
	smpsAlterNote       $03
	dc.b	smpsNoAttack, nF4, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nB3
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nA3
	smpsAlterNote       $14
	dc.b	smpsNoAttack, nG3
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01, nRst, $55, nRst, $53
	smpsAlterVol        $07
	dc.b	nE4, $01, nG4, nRst, $04, nCs5, $01, nRst, nBb5, nRst, nE6, nRst

HDN1R_Splash_Loop64:
	dc.b	nRst, $54
	smpsLoop            $00, $07, HDN1R_Splash_Loop64
	smpsAlterNote       $00

HDN1R_Splash_Loop65:
	dc.b	nRst, $55, nRst, $0A, nRst, $01, nRst, $2F, nRst, $01, nRst, $2F
	dc.b	nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop65

HDN1R_Splash_Loop66:
	dc.b	nRst, $4E
	smpsLoop            $00, $07, HDN1R_Splash_Loop66
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $03
	smpsJump            HDN1R_Splash_Loop64

; FM3 Data
HDN1R_Splash_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $09

HDN1R_Splash_Loop30:
	dc.b	nBb3, $02, nRst, $01, nBb2, $02, nRst, $01, nE3, $02, nRst, $04
	dc.b	nE3, $02, nRst, $01, nE2, $02, nRst, $01, nBb2, $02, nRst, $04
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01, nE2, $02, nRst, $04
	dc.b	nE2, $02, nRst, $01, nE1, $02, nRst, $01, nBb1, $02, nRst, $04
	smpsLoop            $00, $02, HDN1R_Splash_Loop30
	dc.b	nCs4, $02, nRst, $01, nCs3, $02, nRst, $01, nCs4, $02, nRst, $04
	dc.b	nG3, $02, nRst, $01, nG2, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b	nCs3, $02, nRst, $01, nCs2, $02, nRst, $01, nCs3, $02, nRst, $04
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nBb1, $03
	smpsAlterVol        $0A
	dc.b	nBb2, $02, nRst, $01
	smpsAlterVol        $F6
	dc.b	nCs2, $03
	smpsAlterVol        $0A
	dc.b	nCs3, $02, nRst, $01
	smpsAlterVol        $F6
	dc.b	nG2, $03
	smpsAlterVol        $0A
	dc.b	nG3, $02, nRst, $01
	smpsAlterVol        $F6
	dc.b	nCs3, $03
	smpsAlterVol        $0A
	dc.b	nCs4, $02, nRst, $01
	smpsAlterVol        $F6
	dc.b	nE3, $03, nRst, nCs3, nRst, nBb2, $06, nRst

HDN1R_Splash_Loop31:
	dc.b	nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop            $00, $18, HDN1R_Splash_Loop31

HDN1R_Splash_Loop32:
	dc.b	nCs2, $02, nRst, $01, nCs3, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop32
	dc.b	nCs2, $02, nRst, $01, nCs3, $02, nRst, $0D

HDN1R_Splash_Jump03:
	dc.b	nRst, $0C
	smpsAlterVol        $01

HDN1R_Splash_Loop33:
	dc.b	nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop            $00, $06, HDN1R_Splash_Loop33

HDN1R_Splash_Loop34:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop34

HDN1R_Splash_Loop35:
	dc.b	nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop35

HDN1R_Splash_Loop36:
	dc.b	nC2, $02, nRst, $01, nC3, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop36

HDN1R_Splash_Loop37:
	dc.b	nG1, $02, nRst, $01, nG2, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop37

HDN1R_Splash_Loop38:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop38

HDN1R_Splash_Loop39:
	dc.b	nE2, $02, nRst, $01, nE3, $02, nRst, $01
	smpsLoop            $00, $08, HDN1R_Splash_Loop39

HDN1R_Splash_Loop3A:
	dc.b	nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop            $00, $06, HDN1R_Splash_Loop3A

HDN1R_Splash_Loop3B:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop3B

HDN1R_Splash_Loop3C:
	dc.b	nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop3C

HDN1R_Splash_Loop3D:
	dc.b	nC2, $02, nRst, $01, nC3, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop3D

HDN1R_Splash_Loop3E:
	dc.b	nG1, $02, nRst, $01, nG2, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop3E

HDN1R_Splash_Loop3F:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop3F

HDN1R_Splash_Loop40:
	dc.b	nE2, $02, nRst, $01, nE3, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop40

HDN1R_Splash_Loop41:
	dc.b	nD2, $02, nRst, $01

HDN1R_Splash_Loop42:
	dc.b	nD3, $02, nRst, $01
	smpsLoop            $00, $04, HDN1R_Splash_Loop41
	dc.b	nD2, $03
	smpsLoop            $01, $02, HDN1R_Splash_Loop42

HDN1R_Splash_Loop43:
	dc.b	nD3, $02, nRst, $01, nD2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop43
	dc.b	nD3, $02

HDN1R_Splash_Loop45:
	dc.b	nRst, $01, nBb1, $03

HDN1R_Splash_Loop44:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop44
	dc.b	nBb2, $02
	smpsLoop            $01, $02, HDN1R_Splash_Loop45

HDN1R_Splash_Loop47:
	dc.b	nRst, $01, nC2, $03

HDN1R_Splash_Loop46:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop46
	dc.b	nC3, $02
	smpsLoop            $01, $02, HDN1R_Splash_Loop47
	dc.b	nRst, $01, nCs2, $03

HDN1R_Splash_Loop48:
	dc.b	nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop48
	dc.b	nCs3, $02, nRst, $01, nD2, $03, nRst, $02, nD2, $03, nRst, $01
	dc.b	nD2, $09, nRst, $06
	smpsAlterVol        $FF

HDN1R_Splash_Loop4A:
	dc.b	nA1, $03

HDN1R_Splash_Loop49:
	dc.b	nA2, $02, nRst, $01, nA1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop49
	dc.b	nA2, $02, nRst, $01
	smpsLoop            $01, $08, HDN1R_Splash_Loop4A

HDN1R_Splash_Loop4C:
	dc.b	nC2, $03

HDN1R_Splash_Loop4B:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop4B
	dc.b	nC3, $02, nRst, $01
	smpsLoop            $01, $08, HDN1R_Splash_Loop4C
	smpsAlterVol        $01

HDN1R_Splash_Loop4E:
	dc.b	nD2, $03

HDN1R_Splash_Loop4D:
	dc.b	nD3, $02, nRst, $01, nD2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop4D
	dc.b	nD3, $02, nRst, $01
	smpsLoop            $01, $02, HDN1R_Splash_Loop4E

HDN1R_Splash_Loop50:
	dc.b	nBb1, $03

HDN1R_Splash_Loop4F:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop4F
	dc.b	nBb2, $02, nRst, $01
	smpsLoop            $01, $02, HDN1R_Splash_Loop50

HDN1R_Splash_Loop52:
	dc.b	nC2, $03

HDN1R_Splash_Loop51:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop51
	dc.b	nC3, $02, nRst, $01
	smpsLoop            $01, $02, HDN1R_Splash_Loop52
	dc.b	nCs2, $03

HDN1R_Splash_Loop53:
	dc.b	nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop53
	dc.b	nCs3, $02, nRst, $01, nD2, $03, nRst, $02, nD2, $03, nRst, $01
	dc.b	nD2, $09, nRst, $06, nG1, $03

HDN1R_Splash_Loop54:
	dc.b	nG2, $02, nRst, $01, nG1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop54
	dc.b	nG2, $02, nRst, $01, nAb1, $03

HDN1R_Splash_Loop55:
	dc.b	nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop55
	dc.b	nAb2, $02, nRst, $01, nBb1, $03

HDN1R_Splash_Loop56:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop56
	dc.b	nBb2, $02, nRst, $01, nC2, $03

HDN1R_Splash_Loop57:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop57
	dc.b	nC3, $02, nRst, $01, nEb2, $03

HDN1R_Splash_Loop58:
	dc.b	nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop58
	dc.b	nEb3, $02, nRst, $01, nF2, $03

HDN1R_Splash_Loop59:
	dc.b	nF3, $02, nRst, $01, nF2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop59
	dc.b	nF3, $02

HDN1R_Splash_Loop5B:
	dc.b	nRst, $01, nBb1, $03

HDN1R_Splash_Loop5A:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop5A
	dc.b	nBb2, $02
	smpsLoop            $01, $02, HDN1R_Splash_Loop5B
	dc.b	nRst, $01, nG1, $03

HDN1R_Splash_Loop5C:
	dc.b	nG2, $02, nRst, $01, nG1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop5C
	dc.b	nG2, $02, nRst, $01, nAb1, $03

HDN1R_Splash_Loop5D:
	dc.b	nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop5D
	dc.b	nAb2, $02, nRst, $01, nBb1, $03

HDN1R_Splash_Loop5E:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop5E
	dc.b	nBb2, $02, nRst, $01, nC2, $03

HDN1R_Splash_Loop5F:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop5F
	dc.b	nC3, $02, nRst, $01, nEb2, $03

HDN1R_Splash_Loop60:
	dc.b	nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop60
	dc.b	nEb3, $02, nRst, $01, nF1, $03

HDN1R_Splash_Loop61:
	dc.b	nF2, $02, nRst, $01, nF1, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop61
	dc.b	nF2, $02, nRst, $01, nAb1, $03, nAb2, $02, nRst, $01, nAb1, $02
	dc.b	nRst, $01, nAb2, $02, nRst, $01, nBb1, $03, nBb2, $02, nRst, $01
	dc.b	nBb1, $02, nRst, $01, nBb2, $02

HDN1R_Splash_Loop63:
	dc.b	nRst, $01, nC2, $03

HDN1R_Splash_Loop62:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop            $00, $03, HDN1R_Splash_Loop62
	dc.b	nC3, $02
	smpsLoop            $01, $07, HDN1R_Splash_Loop63
	smpsAlterNote       $00
	dc.b	nRst, $55
	smpsAlterVol        $FF
	smpsJump            HDN1R_Splash_Jump03

; FM4 Data
HDN1R_Splash_FM4:
	smpsModOff
	smpsPan             panCenter, $00
	smpsModOff
	smpsSetvoice        $02
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	nRst, $06

HDN1R_Splash_Loop18:
	dc.b	nBb4, $09, nRst, $03, nE4, $09, nRst, $03, nCs4, $09, nRst, $03
	dc.b	nBb3, $09, nRst, $03
	smpsLoop            $00, $02, HDN1R_Splash_Loop18
	dc.b	nCs5, $09, nRst, $03, nBb4, $09, nRst, $03, nG4, $09, nRst, $03
	dc.b	nE4, $09, nRst, $03, nBb3, $06, nCs4, nEb4, nCs4, $07, nRst, $11
	smpsSetvoice        $04
	dc.b	nRst, $06
	smpsAlterVol        $0C
	dc.b	nD4

HDN1R_Splash_Loop19:
	dc.b	$03
	smpsAlterVol        $F5
	dc.b	$03
	smpsAlterVol        $0B
	smpsLoop            $00, $18, HDN1R_Splash_Loop19
	dc.b	nE4
	smpsAlterVol        $F5
	dc.b	$03
	smpsAlterVol        $0A
	dc.b	$03
	smpsAlterVol        $F6
	dc.b	$03
	smpsAlterVol        $0B
	dc.b	$03
	smpsAlterVol        $F5
	dc.b	$03
	smpsAlterVol        $0A
	dc.b	$03
	smpsAlterVol        $F6
	dc.b	$03
	smpsAlterVol        $FE
	dc.b	$03, nRst, $02, nE4, $03, nRst, $01, nE4, $03

HDN1R_Splash_Jump02:
	dc.b	nRst, $06
	smpsSetvoice        $05
	dc.b	nRst, $06
	smpsAlterVol        $09

HDN1R_Splash_Loop1A:
	dc.b	nA3, $03, $02, nRst, $01, nA3, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop1A
	dc.b	nA3, $03, $02, nRst, $01, nA3, $03, $02, nRst, $01, nA3, $02
	dc.b	nRst, $01, nC4, $03, $02, nRst, $01, nC4, $02, nRst, $01, nEb4
	dc.b	$03, $02, nRst, $01, nD4, $03, $02, nRst, $01, nD4, $03, $02
	dc.b	nRst, $01, nD4, $02, $01, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b	$01, nE4, $03, $02, nRst, $01, nE4, $03, $02, nRst, $01, nE4
	dc.b	$02, nRst, $01, nE4, $02, nRst, $01, nE4, $03, $02

HDN1R_Splash_Loop1B:
	dc.b	nRst, $01, nD4, $03, $02, nRst, $01, nD4, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop1B
	dc.b	nRst, $01, nD4, $03, $02

HDN1R_Splash_Loop1C:
	dc.b	nRst, $01, nC4, $03, $02, nRst, $01, nC4, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop1C
	dc.b	nRst, $01, nC4, $03, $02

HDN1R_Splash_Loop1D:
	dc.b	nRst, $01, nBb3, $03, $02, nRst, $01, nBb3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop1D
	dc.b	nRst, $01, nBb3, $03, $02

HDN1R_Splash_Loop1E:
	dc.b	nRst, $01, nE4, $03, $02, nRst, $01, nE4, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop1E
	dc.b	nRst, $01, nE4, $03, $02, nRst, $01
	smpsAlterVol        $01

HDN1R_Splash_Loop1F:
	dc.b	nA3, $03, $02, nRst, $01, nA3, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop1F
	dc.b	nA3, $03, $02, nRst, $01, nA3, $03, $02, nRst, $01, nA3, $02
	dc.b	nRst, $01, nC4, $03, $02, nRst, $01, nC4, $02, nRst, $01, nEb4
	dc.b	$03, $02, nRst, $01, nD4, $03, $02, nRst, $01, nD4, $03, $02
	dc.b	nRst, $01, nD4, $02, $01, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b	$01, nE4, $03, $02, nRst, $01, nE4, $03, $02, nRst, $01, nE4
	dc.b	$02, nRst, $01, nE4, $02, nRst, $01, nE4, $03, $02

HDN1R_Splash_Loop20:
	dc.b	nRst, $01, nD4, $03, $02, nRst, $01, nD4, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop20
	dc.b	nRst, $01, nD4, $03, $02

HDN1R_Splash_Loop21:
	dc.b	nRst, $01, nC4, $03, $02, nRst, $01, nC4, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop21
	dc.b	nRst, $01, nC4, $03, $02

HDN1R_Splash_Loop22:
	dc.b	nRst, $01, nBb3, $03, $02, nRst, $01, nBb3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop22
	dc.b	nRst, $01, nBb3, $03, $02

HDN1R_Splash_Loop23:
	dc.b	nRst, $01, nD4, $03, $02, nRst, $01, nD4, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop23
	dc.b	nRst, $01, nD4, $03, $02, nRst, $01
	smpsAlterVol        $FC
	dc.b	nD4, $02, $01, $02, nRst, $04
	smpsAlterVol        $06
	dc.b	nD4, $03, nRst, nD4, nRst
	smpsAlterVol        $FA
	dc.b	nD4, $02, nRst, $04, nD4

HDN1R_Splash_Loop24:
	dc.b	$02, nRst, $07, nD4, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop24
	dc.b	$02, nRst, $01
	smpsAlterVol        $06
	dc.b	nD4, $03, nRst, nD4, nRst, $06
	smpsAlterVol        $FA
	dc.b	nD4, $02, nRst, $04, nD4, $02, nRst, $07

HDN1R_Splash_Loop25:
	dc.b	nD4, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop25
	dc.b	nC4, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nC4, $03, nRst, nC4, nRst, $06
	smpsAlterVol        $FA
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $07

HDN1R_Splash_Loop26:
	dc.b	nC4, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop26
	dc.b	nCs4, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nCs4, $03, nRst, nCs4, nRst
	smpsAlterVol        $FA
	dc.b	nCs4, $02, nRst, $01, nCs4, $02, nRst, $01, nD4, $02, nRst, $03
	dc.b	nD4, $01, nRst, $03, nD4, $06, nRst, $09
	smpsAlterVol        $FD

HDN1R_Splash_Loop27:
	dc.b	nA1, $03, $02, nRst, $01, nA1

HDN1R_Splash_Loop28:
	dc.b	$02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop27

HDN1R_Splash_Loop29:
	dc.b	nA1, $03
	smpsLoop            $01, $02, HDN1R_Splash_Loop28
	dc.b	$02, nRst, $01, nA1, $02, nRst, $01
	smpsLoop            $02, $07, HDN1R_Splash_Loop29
	dc.b	nA1, $03

HDN1R_Splash_Loop2B:
	dc.b	$02

HDN1R_Splash_Loop2A:
	dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop2A
	dc.b	nRst, $01, nC3, $03
	smpsLoop            $01, $08, HDN1R_Splash_Loop2B
	dc.b	$02, nRst, $01
	smpsAlterVol        $03
	dc.b	nD4, $02, $01, $02, nRst, $04
	smpsAlterVol        $06
	dc.b	nD4, $03, nRst, nD4, nRst
	smpsAlterVol        $FA
	dc.b	nD4, $02, nRst, $04, nD4

HDN1R_Splash_Loop2C:
	dc.b	$02, nRst, $07, nD4, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop2C
	dc.b	$02, nRst, $01
	smpsAlterVol        $06
	dc.b	nD4, $03, nRst, nD4, nRst, $06
	smpsAlterVol        $FA
	dc.b	nD4, $02, nRst, $04, nD4, $02, nRst, $07

HDN1R_Splash_Loop2D:
	dc.b	nD4, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop2D
	dc.b	nC4, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nC4, $03, nRst, nC4, nRst, $06
	smpsAlterVol        $FA
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $07

HDN1R_Splash_Loop2E:
	dc.b	nC4, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop2E
	dc.b	nCs4, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nCs4, $03, nRst, nCs4, nRst
	smpsAlterVol        $FA
	dc.b	nCs4, $02, nRst, $01, nCs4, $02, nRst, $01, nD4, $02, nRst, $03
	dc.b	nD4, $01, nRst, $03, nD4, $06, nRst

HDN1R_Splash_Loop2F:
	dc.b	$4F
	smpsLoop            $00, $07, HDN1R_Splash_Loop2F
	dc.b	nRst, $02
	smpsSetvoice        $02
	dc.b	nRst, $06
	smpsAlterVol        $FD
	dc.b	nB2, $05, $04, $09, nRst, $06, nC3, $05, $04, $09, nRst, $06
	dc.b	nCs3, $05, $04, $03
	smpsAlterVol        $FD
	smpsJump            HDN1R_Splash_Jump02

; FM5 Data
HDN1R_Splash_FM5:
	smpsModOff
	smpsPan             panCenter, $00
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	smpsSetvoice        $02
	smpsModOff
	smpsModOff
	dc.b	nRst, $06

HDN1R_Splash_Loop00:
	dc.b	nBb5, $09, nRst, $03, nE5, $09, nRst, $03, nCs5, $09, nRst, $03
	dc.b	nBb4, $09, nRst, $03
	smpsLoop            $00, $02, HDN1R_Splash_Loop00
	dc.b	nCs6, $09, nRst, $03, nBb5, $09, nRst, $03, nG5, $09, nRst, $03
	dc.b	nE5, $09, nRst, $03, nBb4, $06, nCs5, nEb4, nCs5, $07, nRst, $11
	smpsSetvoice        $04
	dc.b	nRst, $06
	smpsAlterVol        $0C
	dc.b	nD3

HDN1R_Splash_Loop01:
	dc.b	$03
	smpsAlterVol        $F5
	dc.b	$03
	smpsAlterVol        $0B
	smpsLoop            $00, $18, HDN1R_Splash_Loop01
	dc.b	nE3
	smpsAlterVol        $F5
	dc.b	$03
	smpsAlterVol        $0A
	dc.b	$03
	smpsAlterVol        $F6
	dc.b	$03
	smpsAlterVol        $0B
	dc.b	$03
	smpsAlterVol        $F5
	dc.b	$03
	smpsAlterVol        $0A
	dc.b	$03
	smpsAlterVol        $F6
	dc.b	$03
	smpsAlterVol        $FE
	dc.b	$03, nRst, $02, nE3, $03, nRst, $01, nE3, $03

HDN1R_Splash_Jump01:
	dc.b	nRst, $06
	smpsSetvoice        $05
	dc.b	nRst, $06
	smpsAlterVol        $09

HDN1R_Splash_Loop02:
	dc.b	nA2, $03, $02, nRst, $01, nA2, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop02
	dc.b	nA2, $03, $02, nRst, $01, nA2, $03, $02, nRst, $01, nA2, $02
	dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3, $02, nRst, $01, nEb3
	dc.b	$03, $02, nRst, $01, nD3, $03, $02, nRst, $01, nD3, $03, $02
	dc.b	nRst, $01, nD3, $02, $01, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b	$01, nE3, $03, $02, nRst, $01, nE3, $03, $02, nRst, $01, nE3
	dc.b	$02, nRst, $01, nE3, $02, nRst, $01, nE3, $03, $02

HDN1R_Splash_Loop03:
	dc.b	nRst, $01, nD3, $03, $02, nRst, $01, nD3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop03
	dc.b	nRst, $01, nD3, $03, $02

HDN1R_Splash_Loop04:
	dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop04
	dc.b	nRst, $01, nC3, $03, $02

HDN1R_Splash_Loop05:
	dc.b	nRst, $01, nBb2, $03, $02, nRst, $01, nBb2, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop05
	dc.b	nRst, $01, nBb2, $03, $02

HDN1R_Splash_Loop06:
	dc.b	nRst, $01, nE3, $03, $02, nRst, $01, nE3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop06
	dc.b	nRst, $01, nE3, $03, $02, nRst, $01
	smpsAlterVol        $01

HDN1R_Splash_Loop07:
	dc.b	nA2, $03, $02, nRst, $01, nA2, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop07
	dc.b	nA2, $03, $02, nRst, $01, nA2, $03, $02, nRst, $01, nA2, $02
	dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3, $02, nRst, $01, nEb3
	dc.b	$03, $02, nRst, $01, nD3, $03, $02, nRst, $01, nD3, $03, $02
	dc.b	nRst, $01, nD3, $02, $01, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b	$01, nE3, $03, $02, nRst, $01, nE3, $03, $02, nRst, $01, nE3
	dc.b	$02, nRst, $01, nE3, $02, nRst, $01, nE3, $03, $02

HDN1R_Splash_Loop08:
	dc.b	nRst, $01, nD3, $03, $02, nRst, $01, nD3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop08
	dc.b	nRst, $01, nD3, $03, $02

HDN1R_Splash_Loop09:
	dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop09
	dc.b	nRst, $01, nC3, $03, $02

HDN1R_Splash_Loop0A:
	dc.b	nRst, $01, nBb2, $03, $02, nRst, $01, nBb2, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop0A
	dc.b	nRst, $01, nBb2, $03, $02

HDN1R_Splash_Loop0B:
	dc.b	nRst, $01, nD3, $03, $02, nRst, $01, nD3, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop0B
	dc.b	nRst, $01, nD3, $03, $02, nRst, $01
	smpsAlterVol        $FC
	dc.b	nD3, $02, $01, $02, nRst, $04
	smpsAlterVol        $06
	dc.b	nD3, $03, nRst, nD3, nRst
	smpsAlterVol        $FA
	dc.b	nD3, $02, nRst, $04, nD3

HDN1R_Splash_Loop0C:
	dc.b	$02, nRst, $07, nD3, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop0C
	dc.b	$02, nRst, $01
	smpsAlterVol        $06
	dc.b	nD3, $03, nRst, nD3, nRst, $06
	smpsAlterVol        $FA
	dc.b	nD3, $02, nRst, $04, nD3, $02, nRst, $07

HDN1R_Splash_Loop0D:
	dc.b	nD3, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop0D
	dc.b	nC3, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nC3, $03, nRst, nC3, nRst, $06
	smpsAlterVol        $FA
	dc.b	nC3, $02, nRst, $04, nC3, $02, nRst, $07

HDN1R_Splash_Loop0E:
	dc.b	nC3, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop0E
	dc.b	nCs3, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nCs3, $03, nRst, nCs3, nRst
	smpsAlterVol        $FA
	dc.b	nCs3, $02, nRst, $01, nCs3, $02, nRst, $01, nD3, $02, nRst, $03
	dc.b	nD3, $01, nRst, $03, nD3, $06, nRst, $09
	smpsAlterVol        $FD

HDN1R_Splash_Loop0F:
	dc.b	nA2, $03, $02, nRst, $01, nA2

HDN1R_Splash_Loop10:
	dc.b	$02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop0F

HDN1R_Splash_Loop11:
	dc.b	nA2, $03
	smpsLoop            $01, $02, HDN1R_Splash_Loop10
	dc.b	$02, nRst, $01, nA2, $02, nRst, $01
	smpsLoop            $02, $07, HDN1R_Splash_Loop11
	dc.b	nA2, $03

HDN1R_Splash_Loop13:
	dc.b	$02

HDN1R_Splash_Loop12:
	dc.b	nRst, $01, nC2, $03, $02, nRst, $01, nC2, $02
	smpsLoop            $00, $02, HDN1R_Splash_Loop12
	dc.b	nRst, $01, nC2, $03
	smpsLoop            $01, $08, HDN1R_Splash_Loop13
	dc.b	$02, nRst, $01
	smpsAlterVol        $03
	dc.b	nD3, $02, $01, $02, nRst, $04
	smpsAlterVol        $06
	dc.b	nD3, $03, nRst, nD3, nRst
	smpsAlterVol        $FA
	dc.b	nD3, $02, nRst, $04, nD3

HDN1R_Splash_Loop14:
	dc.b	$02, nRst, $07, nD3, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop14
	dc.b	$02, nRst, $01
	smpsAlterVol        $06
	dc.b	nD3, $03, nRst, nD3, nRst, $06
	smpsAlterVol        $FA
	dc.b	nD3, $02, nRst, $04, nD3, $02, nRst, $07

HDN1R_Splash_Loop15:
	dc.b	nD3, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop15
	dc.b	nC3, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nC3, $03, nRst, nC3, nRst, $06
	smpsAlterVol        $FA
	dc.b	nC3, $02, nRst, $04, nC3, $02, nRst, $07

HDN1R_Splash_Loop16:
	dc.b	nC3, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop16
	dc.b	nCs3, $02, $01, $02, nRst, $01
	smpsAlterVol        $06
	dc.b	nCs3, $03, nRst, nCs3, nRst
	smpsAlterVol        $FA
	dc.b	nCs3, $02, nRst, $01, nCs3, $02, nRst, $01, nD3, $02, nRst, $03
	dc.b	nD3, $01, nRst, $03, nD3, $06, nRst

HDN1R_Splash_Loop17:
	dc.b	$4F
	smpsLoop            $00, $07, HDN1R_Splash_Loop17
	dc.b	nRst, $02
	smpsSetvoice        $02
	dc.b	nRst, $06
	smpsAlterVol        $FD
	dc.b	nB3, $05, $04, $09, nRst, $06, nC4, $05, $04, $09, nRst, $06
	dc.b	nCs4, $05, $04, $03
	smpsAlterVol        $FD
	smpsJump            HDN1R_Splash_Jump01

; FM6 Data
HDN1R_Splash_FM6:
	smpsSetvoice        $03
	smpsModSet          $00, $01, $01, $04
	smpsPan             panCenter, $00
	smpsModOn
	dc.b	nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F

HDN1R_Splash_Jump00:
	smpsAlterNote       $00
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsAlterNote       $E5
	dc.b	nRst, $01
	smpsAlterNote       $E8
	dc.b	nRst, $01
	smpsAlterNote       $E9
	dc.b	nRst, $01
	smpsAlterNote       $EA
	dc.b	nRst, $01
	smpsAlterNote       $EB
	dc.b	nRst, $01
	smpsAlterNote       $ED
	dc.b	nRst, $01
	smpsAlterNote       $EE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nRst, $01
	smpsAlterNote       $F1
	dc.b	nRst, $01
	smpsAlterNote       $E4
	dc.b	nRst, $01
	smpsAlterNote       $E6
	dc.b	nRst, $01
	smpsAlterNote       $E7
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $30, nRst, $30, nRst, $55, nRst, $0B, nRst, $55, nRst, $08
	smpsAlterNote       $12
	dc.b	nRst, $01
	smpsAlterNote       $06
	dc.b	nRst, $01
	smpsAlterNote       $FC
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $2D
	smpsAlterNote       $18
	dc.b	nRst, $01
	smpsAlterNote       $0D
	dc.b	nRst, $01
	smpsAlterNote       $0A
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $0C
	dc.b	nRst, $01
	smpsAlterNote       $07
	dc.b	nRst, $01
	smpsAlterNote       $05
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $55, nRst, $08
	smpsAlterNote       $06
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $01
	smpsAlterNote       $F4
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $EF
	dc.b	nRst, $01
	smpsAlterNote       $0C
	dc.b	nRst, $01
	smpsAlterNote       $FD
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $2D
	smpsAlterNote       $07
	dc.b	nRst, $01
	smpsAlterNote       $FD
	dc.b	nRst, $01
	smpsAlterNote       $EC
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $55, nRst, $55, nRst, $1C, nG3, $02, nRst, $0A, nG3, $03
	dc.b	nRst, nAb3, nRst, $06, nAb3, $03, nRst, $06, nAb3, $03, nRst, $09
	dc.b	nBb3, $02, nRst, $0A, nBb3, $03, nRst, nC4, nRst, $06, nBb3, $03
	dc.b	nRst, nBb3, $02, nRst, $01, nBb3, $03, $02, nRst, $07, nC4, $02
	dc.b	nRst, $0A, nC4, $03, nRst, nEb4, nRst, nEb4, $02, nRst, $0A, nEb4
	dc.b	$03, nRst, nF4, nRst, $0F, nF4, $03, nRst, nF4, nRst, $0F, nF4
	dc.b	$02, nRst, $0A, nG3, $02, nRst, $0A, nG3, $03, nRst, nAb3, nRst
	dc.b	$06, nAb3, $03, nRst, $06, nAb3, $03, nRst, $09, nBb3, $02, nRst
	dc.b	$0A, nBb3, $03, nRst, nC4, nRst, $0F, nBb3, $03, $02, nRst, $07
	dc.b	nC4, $02, nRst, $0A, nC4, $03, nRst, nBb3, nRst, $06, nBb3, $03
	dc.b	nRst, $06, nBb3, $02, nRst, $04, nCs4, $03, nRst, nCs4, $02, nRst
	dc.b	$04, nBb3, $03, nRst, nBb3, $02, nRst, $04, nC4, $03, nRst, $55
	dc.b	nRst, $55, nRst, $4F
	smpsJump            HDN1R_Splash_Jump00

; PSG1 Data
HDN1R_Splash_PSG1:
	smpsModSet          $00, $02, $00, $02
	smpsModOn
	smpsAlterNote       $01
	dc.b	nRst, $55, nRst, $55, nRst, $1C, nF1, $18, nE1, $0C, nC1, nD1
	dc.b	nA1, nD2, nE2, nF2, $18, nG2, nE2
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $02, nE2, $01, nRst, $03, nE2, $02, nRst, $01

HDN1R_Splash_Jump07:
	smpsAlterNote       $00
	smpsPSGAlterVol     $FE
	dc.b	nF1, $03, nA1, nC2, nF2, nE2, $18, nF2, $0C, nC2, $03, nA1
	dc.b	nC2, nD2, $0C, nA2, $06, nG2, $03, nRst, nG2, $0F, nE2, $03
	dc.b	nRst, $02, nD2, $03, nRst, $01, nC2, $03, nBb1, $0C, nD2, $03
	dc.b	nRst, $02, nF2, $03, nRst, $01, nG2, $03, nC2, $12, nD2, $03
	dc.b	nE2

HDN1R_Splash_Loop89:
	dc.b	nG2, nRst, $02, nE2, $03, nRst, $01, nD2, $03
	smpsLoop            $00, $02, HDN1R_Splash_Loop89
	dc.b	nE2, $0C, nC1, $03, nE1, nG1, nC2, nE2, $18, nF2, $0C, nC2
	dc.b	$03, nA1, nC2, nD2, $0C, nA2, $06, nG2, $03, nRst, nG2, $0F
	dc.b	nCs2, $03, nRst, $02, nD2, $03, nRst, $01, nE2, $03, nF2, $0F
	dc.b	nD2, $03, nE2, nF2, nG2, $0C, $03, nRst, $02, nG2, $03, nRst
	dc.b	$01, nA2, $03, nBb2, $06, nG2, nE2, $09, nCs2, $03, nD2, $0C
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nC2
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nB1
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nA1, smpsNoAttack, nAb1
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nG1, smpsNoAttack, nFs1, smpsNoAttack, nF1
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nE1
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nEb1
	smpsAlterNote       $00
	smpsPSGAlterVol     $01

HDN1R_Splash_Loop8A:
	dc.b	nD2, $02, nRst, $01, nA1, $02, nRst, $01, nD2, $02, nRst, $01
	dc.b	nE2, $06, nF2, $02, nRst, $01, nE2, $02, nRst, $01, nD2, $02
	dc.b	nRst, $19
	smpsLoop            $00, $03, HDN1R_Splash_Loop8A
	dc.b	nCs2, $02, nRst, $01, nA1, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b	nE2, $06, nG2, $02, nRst, $01, nE2, $02, nRst, $01, nCs2, $02
	dc.b	nRst, $01, nD2, $02, nRst, $03, nD2, $01, nRst, $03, nD2, nD2
	dc.b	$06, nRst, nE2, $02, nRst, $07, nFs2, $02, nRst, $07, nD2, $02
	dc.b	nRst, $04, nAb1, $03, nAb2, nA1, nA2, nB1, nB2, nE2, nE1, nF2
	dc.b	$02, nRst, $07, nFs2, $02, nRst, $07, nD2, $02, nRst, $04, nE2
	dc.b	$02, nFs2, $01, nAb2, $02, nA2, $01, nFs2, $02, nAb2, $01, nA2
	dc.b	$02, nB2, $01, nAb2, $02, nA2, $01, nB2, $02, nD3, $01, nE3
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, nD3, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $07, nFs2, $02, nRst, $07, nD2, $02, nRst, $01
	dc.b	nAb1, $03, nAb2, nA2, nA1, nB2, nA2, nA1, nE2
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nD2, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $07, nFs2, $02, nRst, $07, nD2, $02, nRst, $04
	dc.b	nF3, $02, nD3, $01, nB2, $02, nA2, $01, nD3, $02, nB2, $01
	dc.b	nA2, $02, nAb2, $01, nA2, $02, nAb2, $01, nFs2, $02, nF2, $01
	dc.b	nD2, $03
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nC2, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, nAb1
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nE1
	smpsAlterNote       $01
	dc.b	nAb2, $02, nRst, $07, nA2, $02, nRst, $07, nFs2, $02, nRst, $04
	dc.b	nB1, $03, nB2, nC2, nC3, nD2, nD3, nG2, nG1, nAb2, $02, nRst
	dc.b	$07, nA2, $02, nRst, $07, nFs2, $02, nRst, $04, nG2, $02, nAb2
	dc.b	$01, nB2, $02, nC3, $01, nAb2, $02, nB2, $01, nC3, $02, nD3
	dc.b	$01, nB2, $02, nC3, $01, nD3, $02, nF3, $01, nG3, $03
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF3, $01, smpsNoAttack, nCs3
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $00
	dc.b	nAb2, $02, nRst, $07, nA2, $02, nRst, $07, nFs2, $02, nRst, $01
	dc.b	nB1, $03, nB2, nC3, nC2, nD3, nC3, nC2, nG2
	smpsAlterNote       $03
	dc.b	smpsNoAttack, nFs2, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nA1
	smpsAlterNote       $00
	dc.b	nAb2, $02, nRst, $07, nA2, $02, nRst, $07, nFs2, $02, nRst, $04
	dc.b	nAb3, $02, nFs3, $01, nF3, $02, nD3, $01, nF3, $02, nD3, $01
	dc.b	nC3, $02, nB2, $01, nC3, $02, nB2, $01, nAb2, $02, nFs2, $01
	dc.b	nE2, $03
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nD2, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $00
	smpsPSGAlterVol     $01
	dc.b	nD1, $0C, nE1, nF1, nG1, $06, nA1, nD1, $0C, nE1, nF1, nBb1
	dc.b	$06, nA1, nD1, $0C, nE1, nF1, nG1, $06, nA1, nG1, $0C, nE1
	dc.b	nD1, nRst

HDN1R_Splash_Loop8B:
	dc.b	$4E
	smpsLoop            $00, $08, HDN1R_Splash_Loop8B
	smpsJump            HDN1R_Splash_Jump07

; PSG2 Data
HDN1R_Splash_PSG2:
	smpsModSet          $00, $02, $00, $02
	smpsModOn
	dc.b	nRst, $55, nRst, $55, nRst, $1C, nD1, $02, $01

HDN1R_Splash_Loop73:
	dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1

HDN1R_Splash_Loop72:
	dc.b	$02, nRst, $07, nD1, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop72
	smpsLoop            $01, $02, HDN1R_Splash_Loop73
	dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1, $02, nRst, $07, nD1
	dc.b	$02, $01, $02, nRst, $1F
	smpsPSGAlterVol     $FC
	dc.b	nG2, $03, nRst, $02, nG2, $01, nRst, $03, nG2, $02, nRst, $01

HDN1R_Splash_Jump06:
	smpsAlterNote       $00
	dc.b	nRst, $0F
	smpsPSGAlterVol     $03

HDN1R_Splash_Loop74:
	dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop74
	dc.b	nC0, $02, nRst, $04
	smpsLoop            $01, $02, HDN1R_Splash_Loop74

HDN1R_Splash_Loop75:
	dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop75
	dc.b	nD0, $02, nRst, $04

HDN1R_Splash_Loop76:
	dc.b	nE0, $01, nRst, nRst, nE0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop76
	dc.b	nE0, $02, nRst, $04

HDN1R_Splash_Loop77:
	dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop77
	dc.b	nD0, $02

HDN1R_Splash_Loop79:
	dc.b	nRst, $04

HDN1R_Splash_Loop78:
	dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop78
	dc.b	nC0, $02
	smpsLoop            $01, $02, HDN1R_Splash_Loop79
	dc.b	nRst, $04

HDN1R_Splash_Loop7A:
	dc.b	nE0, $01, nRst, nRst, nE0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop7A
	dc.b	nE0, $02

HDN1R_Splash_Loop7C:
	dc.b	nRst, $04

HDN1R_Splash_Loop7B:
	dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop7B
	dc.b	nC0, $02
	smpsLoop            $01, $02, HDN1R_Splash_Loop7C
	dc.b	nRst, $04

HDN1R_Splash_Loop7D:
	dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop7D
	dc.b	nD0, $02, nRst, $04

HDN1R_Splash_Loop7E:
	dc.b	nE0, $01, nRst, nRst, nE0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop7E
	dc.b	nE0, $02, nRst, $04

HDN1R_Splash_Loop7F:
	dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop7F
	dc.b	nD0, $02

HDN1R_Splash_Loop81:
	dc.b	nRst, $04

HDN1R_Splash_Loop80:
	dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	smpsLoop            $00, $02, HDN1R_Splash_Loop80
	dc.b	nC0, $02
	smpsLoop            $01, $02, HDN1R_Splash_Loop81
	dc.b	nRst, $04, nC0, $01, nRst, nRst, nC0, nRst, $05
	smpsAlterNote       $7F
	dc.b	nC0, $01, nRst, nRst, nC0, nRst, $01, nRst, $01, nRst, $01, nRst
	dc.b	$01, nRst, $01, nC0, smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	nRst
	smpsAlterNote       $00
	smpsPSGAlterVol     $FE
	dc.b	nD1, $02, $01, $02, nRst, $10, nD1, $02, nRst, $04, nD1

HDN1R_Splash_Loop82:
	dc.b	$02, nRst, $07, nD1, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop82
	dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1, $02, nRst, $07

HDN1R_Splash_Loop83:
	dc.b	nD1, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop83
	dc.b	nC1, $02, $01, $02, nRst, $10, nC1, $02, nRst, $04, nC1, $02
	dc.b	nRst, $07

HDN1R_Splash_Loop84:
	dc.b	nC1, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop84
	dc.b	nCs1, $02, $01, $02, nRst, $0D, nCs1, $02, nRst, $01, nCs1, $02
	dc.b	nRst, $01, nD1, $02, nRst, $03, nD1, $01, nRst, $03, nD1, $06
	dc.b	nRst, $09, nRst, $55, nRst, $08
	smpsAlterNote       $F7
	dc.b	nRst, $01
	smpsAlterNote       $FB
	dc.b	nRst, $01
	smpsAlterNote       $02
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $F4
	dc.b	nRst, $01
	smpsAlterNote       $F6
	dc.b	nRst, $01
	smpsAlterNote       $F9
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $FA
	dc.b	nRst, $01
	smpsAlterNote       $FB
	dc.b	nRst, $01
	smpsAlterNote       $FD
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $55, nRst, $08
	smpsAlterNote       $FD
	dc.b	nRst, $01
	smpsAlterNote       $01
	dc.b	nRst, $01
	smpsAlterNote       $07
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $07
	dc.b	nRst, $01
	smpsAlterNote       $F6
	dc.b	nRst, $01
	smpsAlterNote       $02
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $FC
	dc.b	nRst, $01
	smpsAlterNote       $02
	dc.b	nRst, $01
	smpsAlterNote       $0C
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nD1, $02, $01, $02, nRst, $10, nD1, $02, nRst, $04, nD1

HDN1R_Splash_Loop85:
	dc.b	$02, nRst, $07, nD1, $02, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop85
	dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1, $02, nRst, $07

HDN1R_Splash_Loop86:
	dc.b	nD1, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop86
	dc.b	nC1, $02, $01, $02, nRst, $10, nC1, $02, nRst, $04, nC1, $02
	dc.b	nRst, $07

HDN1R_Splash_Loop87:
	dc.b	nC1, $02, $01, $02, nRst, $01
	smpsLoop            $00, $02, HDN1R_Splash_Loop87
	dc.b	nCs1, $02, $01, $02, nRst, $0D, nCs1, $02, nRst, $01, nCs1, $02
	dc.b	nRst, $01, nD1, $02, nRst, $03, nD1, $01, nRst, $03, nD1, $06
	dc.b	nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD1, $03, nRst
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06, nAb1, nBb1, nC2
	smpsPSGAlterVol     $03
	dc.b	nEb1, $02, nRst, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2, $0F
	smpsPSGAlterVol     $03
	dc.b	nF1, $03, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $06, nC2, nBb1, nC2, $18
	smpsPSGAlterVol     $03
	dc.b	nG1, $03, nRst
	smpsPSGAlterVol     $FD
	dc.b	nEb2, $06, nD2, nBb1, nC2, $0F
	smpsPSGAlterVol     $03
	dc.b	nAb1, $02, nRst, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2, $03, nD2, nEb2, $18, nD2
	smpsPSGAlterVol     $03
	dc.b	nD1, $03, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $06, nEb2, nD2, nC2
	smpsPSGAlterVol     $03
	dc.b	nEb1, $02, nRst, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb1, $0F
	smpsPSGAlterVol     $03
	dc.b	nF1, $03, nRst
	smpsPSGAlterVol     $FD
	dc.b	nBb1, $06, nC2, nD2, nC2, $18
	smpsPSGAlterVol     $03
	dc.b	nG1, $03, nRst
	smpsPSGAlterVol     $FD
	dc.b	nEb2, $06, nD2, nBb1, nC2
	smpsPSGAlterVol     $03
	dc.b	nF1, $02, nRst, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2, $09, $06, nAb2, nEb2, nD2, nF2, nC2, $0C, nRst, $03
	smpsPSGAlterVol     $03
	dc.b	nG1, $02, nRst, $01, nG1, $02, nRst, $04

HDN1R_Splash_Loop88:
	dc.b	nC2, $03, $02, nRst, $10, nC2, $02, nRst, $04, nC2, $02, nRst
	dc.b	$07, nC2, $02, $01, $02, nRst, $07
	smpsLoop            $00, $02, HDN1R_Splash_Loop88
	dc.b	nC2, $03, $02, nRst, $10, nC2, $02, nRst, $04, nC2, $02, nRst
	dc.b	$07, nC2, $02, $01, $02, nRst, $55, nRst, $06
	smpsPSGAlterVol     $FD
	smpsJump            HDN1R_Splash_Jump06

; PSG3 Data
HDN1R_Splash_PSG3:
	smpsModSet          $00, $02, $00, $02
	smpsModOn
	dc.b	nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F

HDN1R_Splash_Jump05:
	smpsAlterNote       $00
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsAlterNote       $10
	dc.b	nRst, $01
	smpsAlterNote       $11
	dc.b	nRst, $01, nRst, $01
	smpsAlterNote       $12
	dc.b	nRst, $01
	smpsAlterNote       $13
	dc.b	nRst, $01
	smpsAlterNote       $14
	dc.b	nRst, $01
	smpsAlterNote       $16
	dc.b	nRst, $01, nRst, $01
	smpsAlterNote       $4A
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01, nRst, $01, nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $30, nRst, $30, nRst, $55, nRst, $0B, nRst, $55, nRst, $08
	smpsAlterNote       $F2
	dc.b	nRst, $01
	smpsAlterNote       $F9
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $EF
	dc.b	nRst, $01
	smpsAlterNote       $F1
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $2D
	smpsAlterNote       $F7
	dc.b	nRst, $01
	smpsAlterNote       $F9
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $55, nRst, $08
	smpsAlterNote       $FB
	dc.b	nRst, $01
	smpsAlterNote       $02
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01
	smpsAlterNote       $FF
	dc.b	nRst, $2D
	smpsAlterNote       $0C
	dc.b	nRst, $01
	smpsAlterNote       $F2
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $2D
	smpsAlterNote       $FA
	dc.b	nRst, $01
	smpsAlterNote       $04
	dc.b	nRst, $01
	smpsAlterNote       $7F
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $55, nRst, $55, nRst, $16, nG0, $03, nRst, nD1, $02, nRst
	dc.b	$01, nG0, $03, nRst, nG0, $02, nRst, $01, nD1, $03, nRst, nEb1

HDN1R_Splash_Loop6E:
	dc.b	nRst, nAb0, $02, nRst, $01, nEb1, $03
	smpsLoop            $00, $02, HDN1R_Splash_Loop6E
	dc.b	nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0, $03, nRst, nBb0, $02
	dc.b	nRst, $01, nF1, $03, nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b	$03, nRst, nBb0, $02, nRst, $01, nF1, $03, $02, nRst, $01, nC1
	dc.b	$03, nRst, nG1, $02, nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b	$01, nG1, $03, nRst, nAb1, nRst, nAb1, $02, nRst, $01, nEb1, $03
	dc.b	nRst, nEb1, $02, nRst, $01, nAb1, $03, nRst, nBb1, nRst, nF1, $02
	dc.b	nRst, $01, nF1, $03, nRst, nF1, $02, nRst, $01, nBb1, $03, nRst
	dc.b	nBb1, nRst, nF1, $02, nRst, $01, nF1, $03, nRst, nF1, $02, nRst
	dc.b	$01, nBb1, $02, nRst, $01, nF1, $02, nRst, $01, nG0, $03, nRst
	dc.b	nD1, $02, nRst, $01, nG0, $03, nRst, nG0, $02, nRst, $01, nD1
	dc.b	$03, nRst, nEb1

HDN1R_Splash_Loop6F:
	dc.b	nRst, nAb0, $02, nRst, $01, nEb1, $03
	smpsLoop            $00, $02, HDN1R_Splash_Loop6F
	dc.b	nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0, $03, nRst, nBb0, $02
	dc.b	nRst, $01, nF1, $03, nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b	$03, nRst, nBb0, $02, nRst, $01, nF1, $03, $02, nRst, $01, nC1
	dc.b	$03, nRst, nG1, $02, nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b	$01, nG1, $03, nRst, nF1, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b	nRst, nBb0, $02, nRst, $01, nF1, $02, nRst, $01, nBb0, $02, nRst
	dc.b	$01, nAb1, $03, nRst, nAb1, $02, nRst, $01, nCs1, $02, nRst, $01
	dc.b	nF1, $03, nRst, nF1, $02, nRst, $01, nBb0, $02, nRst, $01, nG1
	dc.b	$03, nRst

HDN1R_Splash_Loop70:
	dc.b	nC1, $02, nRst, $01, nC1, $02, nRst, $04
	smpsLoop            $00, $02, HDN1R_Splash_Loop70

HDN1R_Splash_Loop71:
	dc.b	nG1, $03, $02, nRst, $10, nG1, $02, nRst, $04, nG1, $02, nRst
	dc.b	$07, nG1, $02, $01, $02, nRst, $07
	smpsLoop            $00, $02, HDN1R_Splash_Loop71
	dc.b	nG1, $03, $02, nRst, $10, nG1, $02, nRst, $04, nG1, $02, nRst
	dc.b	$07, nG1, $02, $01, $02, nRst, $55, nRst, $06
	smpsJump            HDN1R_Splash_Jump05

; DAC Data
HDN1R_Splash_DAC:
	smpsStop

HDN1R_Splash_Voices:
;	Voice $00
;	$3F
;	$00, $32, $00, $76, 	$1F, $1F, $1F, $1F, 	$0E, $0E, $0E, $10
;	$03, $03, $03, $03, 	$08, $58, $38, $38, 	$19, $0B, $0A, $0A
	smpsVcAlgorithm     $07
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $03, $00
	smpsVcCoarseFreq    $06, $00, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $0E, $0E, $0E
	smpsVcDecayRate2    $03, $03, $03, $03
	smpsVcDecayLevel    $03, $03, $05, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $0A, $0A, $0B, $19

;	Voice $01
;	$39
;	$06, $01, $01, $01, 	$9F, $1F, $1F, $5F, 	$0A, $09, $09, $04
;	$08, $07, $07, $07, 	$24, $24, $24, $28, 	$22, $24, $26, $0A
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $06
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $09, $09, $0A
	smpsVcDecayRate2    $07, $07, $07, $08
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $08, $04, $04, $04
	smpsVcTotalLevel    $0A, $26, $24, $22

;	Voice $02
;	$3A
;	$64, $60, $60, $30, 	$9D, $9D, $50, $4C, 	$04, $06, $04, $05
;	$1F, $05, $01, $01, 	$A8, $25, $25, $55, 	$7F, $06, $14, $0E
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
	smpsVcTotalLevel    $0E, $14, $06, $7F

;	Voice $03
;	$3D
;	$72, $31, $31, $71, 	$1A, $1C, $1A, $1C, 	$0E, $0A, $0E, $0C
;	$00, $00, $00, $01, 	$38, $08, $28, $38, 	$1C, $08, $0E, $08
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $07
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1A, $1C, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $0A, $0E
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $03, $02, $00, $03
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $08, $0E, $08, $1C

;	Voice $04
;	$39
;	$03, $22, $61, $21, 	$1F, $12, $1F, $1F, 	$05, $05, $05, $0B
;	$00, $00, $00, $00, 	$10, $18, $10, $18, 	$1C, $12, $1A, $0C
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
	smpsVcTotalLevel    $0C, $1A, $12, $1C

;	Voice $05
;	$39
;	$33, $01, $51, $01, 	$5F, $5F, $5F, $5F, 	$0F, $00, $00, $0D
;	$01, $01, $01, $01, 	$33, $1A, $1A, $17, 	$1E, $19, $16, $04
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $0F
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $07, $0A, $0A, $03
	smpsVcTotalLevel    $04, $16, $19, $1E

