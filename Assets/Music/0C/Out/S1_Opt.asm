
Target	EQU	$40000
	smpsHeaderVoice     SOTH_OVA_Dark_Voices, Target
	smpsHeaderChan      $07, $03
	smpsHeaderTempoC    $02, $05

	smpsHeaderFM        SOTH_OVA_Dark_FM1, Target,	$00, $0B
	smpsHeaderFM        SOTH_OVA_Dark_FM2, Target,	$00, $13
	smpsHeaderFM        SOTH_OVA_Dark_FM3, Target,	$00, $13
	smpsHeaderFM        SOTH_OVA_Dark_FM4, Target,	$00, $18
	smpsHeaderFM        SOTH_OVA_Dark_FM5, Target,	$00, $13
	smpsHeaderFM        SOTH_OVA_Dark_FM6, Target,	$00, $13
	smpsHeaderPSG       SOTH_OVA_Dark_PSG1, Target,	$00, $06, $00, $02
	smpsHeaderPSG       SOTH_OVA_Dark_PSG2, Target,	$00, $06, $00, $02
	smpsHeaderPSG       SOTH_OVA_Dark_PSG3, Target,	$00, $06, $00, $02

; FM1 Data
SOTH_OVA_Dark_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$01, $7F, $39
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $1F
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nB2
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $11
	dc.b	smpsNoAttack, nF2
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote       $03
	dc.b	smpsNoAttack, nB1
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nA1
	smpsAlterNote       $19
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, nF1
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, nEb1
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nC1
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nB0
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nAb0

SOTH_OVA_Dark_Jump04:
	smpsAlterNote       $00

SOTH_OVA_Dark_Loop23:
	dc.b	nC2, $09, nG1, nBb1, $06, nRst, $03, nC2, $09, nG1, $06, nBb1
	smpsLoop            $00, $18, SOTH_OVA_Dark_Loop23, Target

SOTH_OVA_Dark_Loop24:
	dc.b	nC2
	smpsAlterVol        $04
	dc.b	nC3
	smpsAlterVol        $04
	dc.b	nC2
	smpsAlterVol        $05
	dc.b	nC3
	smpsAlterVol        $07
	dc.b	nC2
	smpsAlterVol        $0A
	dc.b	nC3
	smpsAlterVol        $10
	dc.b	nC2, nRst
	smpsAlterVol        $D2
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop24, Target
	dc.b	nC2
	smpsAlterVol        $04
	dc.b	nC3
	smpsAlterVol        $04
	dc.b	nC2
	smpsAlterVol        $05
	dc.b	nC3
	smpsAlterVol        $07
	dc.b	nC2
	smpsAlterVol        $0A
	dc.b	nC3
	smpsAlterVol        $10
	dc.b	nC2, nRst
	smpsSetvoice        $04
	dc.b	$18
	smpsAlterVol        $D2
	dc.b	nC6
	smpsSetvoice        $00

SOTH_OVA_Dark_Loop25:
	dc.b	nC2, $09, nG1, nBb1, $06, nRst, $03, nC2, $09, nG1, $06, nBb1
	smpsLoop            $00, $10, SOTH_OVA_Dark_Loop25, Target
	dc.b	nRst, $01
	smpsJump            SOTH_OVA_Dark_Jump04, Target

; FM2 Data
SOTH_OVA_Dark_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$0B, nD4, $30, nRst, nA4, $60

SOTH_OVA_Dark_Jump03:
	dc.b	nD5, $48, nC5, $0C, nF5, $06, nEb5, nD5, $60, $48, nC5, $0C
	dc.b	nF5, $06, nG5, nD5, $60, nRst, $7F, $7F, $7F, $03
	smpsAlterVol        $05

SOTH_OVA_Dark_Loop21:
	dc.b	nF5, $5D, nRst, $03, nEb5, $5D, nRst, $03
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop21, Target
	smpsAlterVol        $07
	dc.b	nD6, $7F, smpsNoAttack, $41, nRst, $30
	smpsAlterVol        $F4
	dc.b	nD5

SOTH_OVA_Dark_Loop22:
	dc.b	$48, nC5, $0C, nF5, $06, nEb5, nD5, $60, $48, nC5, $0C, nF5
	dc.b	$06, nG5, nD5, $60
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop22, Target
	dc.b	nRst, $01
	smpsJump            SOTH_OVA_Dark_Jump03, Target

; FM3 Data
SOTH_OVA_Dark_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$01, $7F, $4B

SOTH_OVA_Dark_Loop08:
	dc.b	nC6, $02, nRst
	smpsAlterVol        $0C
	dc.b	nC6
	smpsAlterVol        $F4
	dc.b	nC7, nRst
	smpsAlterVol        $16
	dc.b	nC7
	smpsAlterVol        $EA
	smpsLoop            $00, $20, SOTH_OVA_Dark_Loop08, Target

SOTH_OVA_Dark_Loop09:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop09, Target

SOTH_OVA_Dark_Loop0A:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop0A, Target

SOTH_OVA_Dark_Loop0B:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop0B, Target

SOTH_OVA_Dark_Loop0C:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop0C, Target

SOTH_OVA_Dark_Loop0D:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop0D, Target

SOTH_OVA_Dark_Loop0E:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop0E, Target

SOTH_OVA_Dark_Loop0F:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop0F, Target

SOTH_OVA_Dark_Loop10:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop10, Target

SOTH_OVA_Dark_Loop11:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop11, Target

SOTH_OVA_Dark_Loop12:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop12, Target

SOTH_OVA_Dark_Loop13:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop13, Target

SOTH_OVA_Dark_Loop14:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop14, Target

SOTH_OVA_Dark_Loop15:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop15, Target

SOTH_OVA_Dark_Loop16:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop16, Target

SOTH_OVA_Dark_Loop17:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop17, Target

SOTH_OVA_Dark_Loop18:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop18, Target

SOTH_OVA_Dark_Loop19:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop19, Target

SOTH_OVA_Dark_Loop1A:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop1A, Target

SOTH_OVA_Dark_Loop1B:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop1B, Target

SOTH_OVA_Dark_Loop1C:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop1C, Target

SOTH_OVA_Dark_Loop1D:
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop1D, Target

SOTH_OVA_Dark_Loop1E:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop1E, Target

SOTH_OVA_Dark_Loop1F:
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop1F, Target
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5
	smpsAlterVol        $EA
	dc.b	nG5, nRst
	smpsAlterVol        $16
	dc.b	nG5
	smpsAlterVol        $EA
	dc.b	nC6, nRst
	smpsAlterVol        $16
	dc.b	nC6
	smpsAlterVol        $EA
	dc.b	nBb5, nRst
	smpsAlterVol        $16
	dc.b	nBb5, nRst, $7F, $71

SOTH_OVA_Dark_Loop20:
	smpsAlterVol        $EA
	dc.b	nC6, $02, nRst
	smpsAlterVol        $0C
	dc.b	nC6
	smpsAlterVol        $F4
	dc.b	nC7, nRst
	smpsAlterVol        $16
	dc.b	nC7
	smpsLoop            $00, $40, SOTH_OVA_Dark_Loop20, Target
	dc.b	nRst, $01
	smpsAlterVol        $EA
	smpsJump            SOTH_OVA_Dark_Loop08, Target

; FM4 Data
SOTH_OVA_Dark_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$01, $7F, $4B

SOTH_OVA_Dark_Jump02:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop04:
	dc.b	nF4, $06, nRst, $03, nF4, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop04, Target
	dc.b	nF4, $06, nRst, $03, nF4, $02, nRst

SOTH_OVA_Dark_Loop05:
	dc.b	$63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop05, Target
	dc.b	$64
	smpsAlterVol        $FD

SOTH_OVA_Dark_Loop06:
	dc.b	nF4, $06
	smpsAlterVol        $06
	dc.b	nBb3, $02, nRst, $04
	smpsAlterVol        $FA
	dc.b	nF4, $06
	smpsAlterVol        $06
	dc.b	nBb3, $02, nRst, $01
	smpsAlterVol        $FA
	dc.b	nG4, $04, nRst, $02
	smpsAlterVol        $06
	dc.b	nG4, nRst, $01
	smpsAlterVol        $FA
	dc.b	nG4, $04, nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $02
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop06, Target
	dc.b	nF4, $06
	smpsAlterVol        $06
	dc.b	nBb3, $02, nRst, $04
	smpsAlterVol        $FA
	dc.b	nF4, $06
	smpsAlterVol        $06
	dc.b	nBb3, $02, nRst, $01
	smpsAlterVol        $FA
	dc.b	nG4, $04, nRst, $02
	smpsAlterVol        $06
	dc.b	nG4, nRst, $01
	smpsAlterVol        $FA
	dc.b	nG4, $04, nRst, $02, nF4, $04, nRst, $02, nG4, $04, nRst, $3E
	smpsAlterVol        $03

SOTH_OVA_Dark_Loop07:
	dc.b	nF4, $06, nRst, $03, nF4, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop07, Target
	dc.b	nF4, $06, nRst, $03, nF4, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump02, Target

; FM5 Data
SOTH_OVA_Dark_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$01, $3A, nC4, $7F, smpsNoAttack, $11

SOTH_OVA_Dark_Jump01:
	dc.b	nD4, $48, nC4, $0C, nF4, $06, nEb4, nD4, $60, $48, nC4, $0C
	dc.b	nF4, $06, nG4, nD4, $60, nRst, $7F, $7F, $7F, $03
	smpsAlterVol        $05

SOTH_OVA_Dark_Loop02:
	dc.b	nD5, $5D, nRst, $03, nC5, $5D, nRst, $03
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop02, Target
	smpsAlterVol        $0B
	dc.b	nD7, $7F, smpsNoAttack, $41, nRst, $30
	smpsAlterVol        $F0
	dc.b	nD4

SOTH_OVA_Dark_Loop03:
	dc.b	$48, nC4, $0C, nF4, $06, nEb4, nD4, $60, $48, nC4, $0C, nF4
	dc.b	$06, nG4, nD4, $60
	smpsLoop            $00, $02, SOTH_OVA_Dark_Loop03, Target
	dc.b	nRst, $01
	smpsJump            SOTH_OVA_Dark_Jump01, Target

; FM6 Data
SOTH_OVA_Dark_FM6:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$0B, nA3, $7F, smpsNoAttack, $41

SOTH_OVA_Dark_Jump00:
	dc.b	nRst

SOTH_OVA_Dark_Loop00:
	dc.b	$60
	smpsLoop            $00, $08, SOTH_OVA_Dark_Loop00, Target
	smpsAlterVol        $05
	dc.b	nBb4, $5D, nRst, $03, nAb4, $5D, nRst, $03, nBb4, $5D, nRst, $03
	dc.b	nAb4, $5D, nRst

SOTH_OVA_Dark_Loop01:
	dc.b	$5C
	smpsLoop            $00, $0B, SOTH_OVA_Dark_Loop01, Target
	smpsAlterVol        $FB
	smpsJump            SOTH_OVA_Dark_Jump00, Target

; PSG1 Data
SOTH_OVA_Dark_PSG1:
	dc.b	nRst, $02, $7F, $4B

SOTH_OVA_Dark_Jump07:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop2E:
	dc.b	nD1, $06, nRst, $03, nD1, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2E, Target
	dc.b	nD1, $06, nRst, $03, nD1, $02, nRst

SOTH_OVA_Dark_Loop2F:
	dc.b	$63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2F, Target
	dc.b	$64
	smpsPSGAlterVol     $FF
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nC1, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nC1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nE1, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nC1, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nC1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nD1, $06
	smpsPSGAlterVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nE1, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $3E
	smpsPSGAlterVol     $01

SOTH_OVA_Dark_Loop30:
	dc.b	nD1, $06, nRst, $03, nD1, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop30, Target
	dc.b	nD1, $06, nRst, $03, nBb0, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump07, Target

; PSG2 Data
SOTH_OVA_Dark_PSG2:
	dc.b	nRst, $02, $7F, $4B

SOTH_OVA_Dark_Jump06:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop2A:
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2A, Target
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst

SOTH_OVA_Dark_Loop2B:
	dc.b	$63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2B, Target
	dc.b	$64
	smpsPSGAlterVol     $FF

SOTH_OVA_Dark_Loop2C:
	dc.b	nBb0, $04, nRst, $08, nBb0, $04, nRst, $05, nC1, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nC1, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nC1, $04, nRst, $02, nBb0, $04, nRst, $02, nC1, $04, nRst, $02
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop2C, Target
	dc.b	nBb0, $04, nRst, $08, nBb0, $04, nRst, $05, nC1, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nC1, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nC1, $04, nRst, $02, nBb0, $04, nRst, $02, nC1, $04, nRst, $3E
	smpsPSGAlterVol     $01

SOTH_OVA_Dark_Loop2D:
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop2D, Target
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump06, Target

; PSG3 Data
SOTH_OVA_Dark_PSG3:
	dc.b	nRst, $02, $7F, $4B

SOTH_OVA_Dark_Jump05:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop26:
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop26, Target
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst

SOTH_OVA_Dark_Loop27:
	dc.b	$63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop27, Target
	dc.b	$64
	smpsPSGAlterVol     $FF

SOTH_OVA_Dark_Loop28:
	dc.b	nF0, $04, nRst, $08, nF0, $04, nRst, $05, nG0, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nG0, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nG0, $04, nRst, $02, nF0, $04, nRst, $02, nG0, $04, nRst, $02
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop28, Target
	dc.b	nF0, $04, nRst, $11, nG0, $04, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nG0, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nG0, $04, nRst, $02, nF0, $04, nRst, $02, nG0, $04, nRst, $3E
	smpsPSGAlterVol     $01

SOTH_OVA_Dark_Loop29:
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop29, Target
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump05, Target


SOTH_OVA_Dark_Voices:
dc.b		$3D
dc.b		$00, $00, $01, $05, 	$5F, $5E, $5B, $5B, 	$05, $0C, $0E, $0E
dc.b		$00, $04, $08, $07, 	$B0, $19, $39, $FC, 	$21, $0A, $09, $10

dc.b		$3C
dc.b		$33, $31, $51, $54, 	$1A, $0C, $1A, $0C, 	$05, $1F, $05, $1F
dc.b		$00, $00, $00, $00, 	$11, $06, $11, $06, 	$1C, $0C, $15, $0C

dc.b		$3C
dc.b		$35, $71, $7A, $31, 	$1F, $1F, $18, $1F, 	$0E, $00, $14, $00
dc.b		$08, $0C, $08, $0F, 	$28, $0A, $38, $0A, 	$19, $0A, $1E, $0A

dc.b		$2C
dc.b		$31, $31, $71, $71, 	$5F, $54, $5F, $5F, 	$05, $0A, $03, $0C
dc.b		$00, $03, $03, $03, 	$00, $87, $00, $A7, 	$17, $07, $19, $06

dc.b		$3D
dc.b		$0F, $04, $00, $00, 	$08, $07, $46, $07, 	$00, $00, $12, $05
dc.b		$00, $0F, $0F, $0F, 	$00, $0D, $47, $07, 	$00, $07, $07, $08