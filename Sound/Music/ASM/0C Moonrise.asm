Target	EQU	$43DDE
	smpsHeaderVoice     SOTH_OVA_Dark_Voices, Target
	smpsHeaderChan      $06, $03
	smpsHeaderTempoC    $02, $05
	smpsHeaderFM        SOTH_OVA_Dark_FM1, Target,	$00, $0B
	smpsHeaderFM        SOTH_OVA_Dark_FM2, Target,	$00, $13
	smpsHeaderFM        SOTH_OVA_Dark_FM3, Target,	$00, $13
	smpsHeaderFM        SOTH_OVA_Dark_FM4, Target,	$00, $18
	smpsHeaderFM        SOTH_OVA_Dark_FM5, Target,	$00, $13
	smpsHeaderFM        SOTH_OVA_Dark_FM6, Target,	$00, $13
	smpsHeaderPSG       SOTH_OVA_Dark_PSG1, Target,	$00, $06, $00, $00
	smpsHeaderPSG       SOTH_OVA_Dark_PSG2, Target,	$00, $06, $00, $00
	smpsHeaderPSG       SOTH_OVA_Dark_PSG3, Target,	$00, $06, $00, $00
	smpsHeaderPWM		PWM1, Target, $00, $7F
	smpsHeaderPWM		PWM2, Target, $00, $7F
	smpsHeaderPWM		PWM3, Target, $00, $7F
	smpsHeaderPWM		PWM4, Target, $00, $7F

; FM1 Data
SOTH_OVA_Dark_FM1:
	smpsPan             panCenter, $00
	smpsFMvoice        $00
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	;!@ dc.b	$01, $7F, $39
	dc.b	nRst, $01, nRst, $7F, nRst, $39
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
	dc.b	nC4, $09, nG3, nBb3, $06, nRst, $03, nC4, $09, nG3, $06, nBb3
	smpsLoop            $00, $18, SOTH_OVA_Dark_Loop23, Target

SOTH_OVA_Dark_Loop24:
	dc.b	nC4
	smpsAlterVol        $04
	dc.b	nC5
	smpsAlterVol        $04
	dc.b	nC4
	smpsAlterVol        $05
	dc.b	nC5
	smpsAlterVol        $07
	dc.b	nC4
	smpsAlterVol        $0A
	dc.b	nC5
	smpsAlterVol        $10
	dc.b	nC5, nRst
	smpsAlterVol        $D2
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop24, Target
	dc.b	nC4
	smpsAlterVol        $04
	dc.b	nC5
	smpsAlterVol        $04
	dc.b	nC4
	smpsAlterVol        $05
	dc.b	nC5
	smpsAlterVol        $07
	dc.b	nC4
	smpsAlterVol        $0A
	dc.b	nC5
	smpsAlterVol        $10
	dc.b	nC4, nRst
	smpsFMvoice        $04
	dc.b	$18
	smpsAlterVol        $D2
	dc.b	nC6
	smpsFMvoice        $00

SOTH_OVA_Dark_Loop25:
	dc.b	nC4, $09, nG3, nBb3, $06, nRst, $03, nC2, $09, nG1, $06, nBb3
	smpsLoop            $00, $10, SOTH_OVA_Dark_Loop25, Target
	dc.b	nRst, $01
	smpsJump            SOTH_OVA_Dark_Jump04, Target

; FM2 Data
SOTH_OVA_Dark_FM2:
	smpsPan             panCenter, $00
	smpsFMvoice        $01
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$0B, nD4, $30, nRst, nA4, $60

SOTH_OVA_Dark_Jump03:
	dc.b	nD5, $48, nC5, $0C, nF5, $06, nEb5, nD5, $60, $48, nC5, $0C
	;!@ dc.b	nF5, $06, nG5, nD5, $60, nRst, $7F, $7F, $7F, $03
	dc.b	nF5, $06, nG5, nD5, $60, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03
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
	smpsFMvoice        $02
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	;!@ dc.b	$01, $7F, $4B
	dc.b	nRst, $01, nRst, $7F, nRst, $4B

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
	;!@ dc.b	nBb5, nRst, $7F, $71
	dc.b	nBb5, $02, nRst, $7F, nRst, $71

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
	smpsFMvoice        $03
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	;!@ dc.b	$01, $7F, $4B
	dc.b	nRst, $01, nRst, $7F, nRst, $4B

SOTH_OVA_Dark_Jump02:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop04:
	dc.b	nF4, $06, nRst, $03, nF4, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop04, Target
	;!@ dc.b	nF4, $06, nRst, $03, nF4, $02, nRst
	dc.b	nF4, $06, nRst, $03, nF4, $02

SOTH_OVA_Dark_Loop05:
	;!@
	dc.b	nRst, $63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop05, Target
	;!@
	dc.b	nRst, $64
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
	smpsFMvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	$01, $3A, nC4, $7F, smpsNoAttack, $11

SOTH_OVA_Dark_Jump01:
	dc.b	nD4, $48, nC4, $0C, nF4, $06, nEb4, nD4, $60, $48, nC4, $0C
	;!@ dc.b	nF4, $06, nG4, nD4, $60, nRst, $7F, $7F, $7F, $03
	dc.b	nF4, $06, nG4, nD4, $60, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03
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
	smpsFMvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	;!@ dc.b	$0B, nA3, $7F, smpsNoAttack, $41
	dc.b	nRst, $0B, nA3, $7F, smpsNoAttack, $41

SOTH_OVA_Dark_Jump00:
	;!@ 
	;dc.b	nRst

SOTH_OVA_Dark_Loop00:
	;!@
	dc.b	nRst, $60
	smpsLoop            $00, $08, SOTH_OVA_Dark_Loop00, Target
	smpsAlterVol        $05
	dc.b	nBb4, $5D, nRst, $03, nAb4, $5D, nRst, $03, nBb4, $5D, nRst, $03
	;!@ dc.b	nAb4, $5D, nRst
	dc.b	nAb4, $5D

SOTH_OVA_Dark_Loop01:
	;!@
	dc.b	nRst, $5C
	smpsLoop            $00, $0B, SOTH_OVA_Dark_Loop01, Target
	smpsAlterVol        $FB
	smpsJump            SOTH_OVA_Dark_Jump00, Target

; PSG1 Data
SOTH_OVA_Dark_PSG1:
	;!@ dc.b	nRst, $02, $7F, $4B
	dc.b	nRst, $02, nRst, $7F, nRst, $4B

SOTH_OVA_Dark_Jump07:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop2E:
	dc.b	nD1, $06, nRst, $03, nD1, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2E, Target
	;!@ dc.b	nD1, $06, nRst, $03, nD1, $02
	dc.b	nD1, $06, nRst, $03, nD1, $02

SOTH_OVA_Dark_Loop2F:
	;!@
	dc.b	nRst, $63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2F, Target
	;!@
	dc.b	nRst, $64
	smpsSetVol     $FF
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsSetVol     $FE
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsSetVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nC1, nRst, $01
	smpsSetVol     $FE
	dc.b	nC1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsSetVol     $FE
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsSetVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nE1, nRst, $01
	smpsSetVol     $FE
	dc.b	nE1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsSetVol     $FE
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsSetVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nC1, nRst, $01
	smpsSetVol     $FE
	dc.b	nC1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $02
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $04
	smpsSetVol     $FE
	dc.b	nD1, $06
	smpsSetVol     $02
	dc.b	nF0, $02, nRst, $01
	smpsSetVol     $FE
	dc.b	nE1, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nE1, nRst, $01
	smpsSetVol     $FE
	dc.b	nE1, $04, nRst, $02, nD1, $04, nRst, $02, nE1, $04, nRst, $3E
	smpsSetVol     $01

SOTH_OVA_Dark_Loop30:
	dc.b	nD1, $06, nRst, $03, nD1, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop30, Target
	dc.b	nD1, $06, nRst, $03, nBb0, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump07, Target

; PSG2 Data
SOTH_OVA_Dark_PSG2:
	;!@
	;dc.b	nRst, $02, $7F, $4B
	dc.b	nRst, $02, nRst, $7F, nRst, $4B

SOTH_OVA_Dark_Jump06:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop2A:
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2A, Target
	;!@ dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst
	dc.b	nBb0, $06, nRst, $03, nBb0, $02

SOTH_OVA_Dark_Loop2B:
	;!@
	dc.b	nRst, $63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop2B, Target
	;!@
	dc.b	nRst, $64
	smpsSetVol     $FF

SOTH_OVA_Dark_Loop2C:
	dc.b	nBb0, $04, nRst, $08, nBb0, $04, nRst, $05, nC1, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nC1, nRst, $01
	smpsSetVol     $FE
	dc.b	nC1, $04, nRst, $02, nBb0, $04, nRst, $02, nC1, $04, nRst, $02
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop2C, Target
	dc.b	nBb0, $04, nRst, $08, nBb0, $04, nRst, $05, nC1, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nC1, nRst, $01
	smpsSetVol     $FE
	dc.b	nC1, $04, nRst, $02, nBb0, $04, nRst, $02, nC1, $04, nRst, $3E
	smpsSetVol     $01

SOTH_OVA_Dark_Loop2D:
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop2D, Target
	dc.b	nBb0, $06, nRst, $03, nBb0, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump06, Target

; PSG3 Data
SOTH_OVA_Dark_PSG3:
	;!@
	;dc.b	nRst, $02, $7F, $4B
	dc.b	nRst, $02, nRst, $7F, nRst, $4B

SOTH_OVA_Dark_Jump05:
	dc.b	nRst, $0C

SOTH_OVA_Dark_Loop26:
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst, $25
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop26, Target
	;!@
	;dc.b	nF0, $06, nRst, $03, nF0, $02, nRst
	dc.b	nF0, $06, nRst, $03, nF0, $02

SOTH_OVA_Dark_Loop27:
	;!@
	dc.b	nRst, $63
	smpsLoop            $00, $07, SOTH_OVA_Dark_Loop27, Target
	;!@
	dc.b	nRst, $64
	smpsSetVol     $FF

SOTH_OVA_Dark_Loop28:
	dc.b	nF0, $04, nRst, $08, nF0, $04, nRst, $05, nG0, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nG0, nRst, $01
	smpsSetVol     $FE
	dc.b	nG0, $04, nRst, $02, nF0, $04, nRst, $02, nG0, $04, nRst, $02
	smpsLoop            $00, $03, SOTH_OVA_Dark_Loop28, Target
	dc.b	nF0, $04, nRst, $11, nG0, $04, nRst, $02
	smpsSetVol     $02
	dc.b	nG0, nRst, $01
	smpsSetVol     $FE
	dc.b	nG0, $04, nRst, $02, nF0, $04, nRst, $02, nG0, $04, nRst, $3E
	smpsSetVol     $01

SOTH_OVA_Dark_Loop29:
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst, $25
	smpsLoop            $00, $0F, SOTH_OVA_Dark_Loop29, Target
	dc.b	nF0, $06, nRst, $03, nF0, $02, nRst, $1A
	smpsJump            SOTH_OVA_Dark_Jump05, Target


PWM1:
	smpsPan		panCenter
	dc.b	nRst, $01
	smpsPan		panCenter
	dc.b	$0B, pClosedHH, $04, $02

PWM1_Loop1:
	dc.b	pOpenHH, $06, pClap, $24, pAKick, $04, pClosedHH, $02
	smpsLoop		$00, $02, PWM1_Loop1, Target
	dc.b	pOpenHH, $06, pClap, $24, $04, $06, $02, $06
	dc.b	$04, $06, $02, $06, $06, $04

PWM1_Loop4:
	dc.b	pAKick, $02

PWM1_Jump1:
	dc.b	pAKick, $04, pClosedHH

PWM1_Loop2:
	dc.b	$02, pOpenHH, $06, pClosedHH, $04
	smpsLoop		$00, $03, PWM1_Loop2, Target
	dc.b	$02, pOpenHH, $04, pClap, $02

PWM1_Loop3:
	dc.b	pClosedHH, $04, $02, pOpenHH, $06
	smpsLoop		$00, $03, PWM1_Loop3, Target
	dc.b	pClosedHH, $04, $02, pOpenHH, $04
	smpsLoop		$01, $07, PWM1_Loop4, Target
	dc.b	pAKick, $02, $04, pClosedHH

PWM1_Loop5:
	dc.b	$02, pOpenHH, $06, pClosedHH, $04
	smpsLoop		$00, $03, PWM1_Loop5, Target

PWM1_Loop6:
	dc.b	$02, pOpenHH, $04, pClap, $02, pClosedHH, $04, $02
	dc.b	pOpenHH, $06, pClosedHH, $04
	smpsLoop		$00, $02, PWM1_Loop6, Target
	dc.b	$02, pClap, $04

PWM1_Loo$9:
	dc.b	pAKick, $02, $04, pClosedHH

PWM1_Loop7:
	dc.b	$02, pOpenHH, $06, pClosedHH, $04
	smpsLoop		$00, $03, PWM1_Loop7, Target
	dc.b	$02, pOpenHH, $04, pClap, $02

PWM1_Loo$8:
	dc.b	pClosedHH, $04, $02, pOpenHH, $06
	smpsLoop		$00, $03, PWM1_Loo$8, Target
	dc.b	pClosedHH, $04, $02, pOpenHH, $04
	smpsLoop		$01, $04, PWM1_Loo$9, Target
	dc.b	pAKick, $02

PWM1_Loop10:
	dc.b	pClosedHH, $04, $02, pOpenHH, $06
	smpsLoop		$00, $10, PWM1_Loop10, Target
	dc.b	pSplashCymb, $30

PWM1_Loop11:
	dc.b	pClosedHH, $04, $02

PWM1_Loop13:
	dc.b	pOpenHH, $06
	smpsLoop		$00, $03, PWM1_Loop11, Target
	dc.b	pClosedHH, $04, $02, pOpenHH, $04, pClap, $02

PWM1_Loop12:
	dc.b	pClosedHH, $04, $02, pOpenHH, $06
	smpsLoop		$00, $03, PWM1_Loop12, Target
	dc.b	pClosedHH, $04, $02, pOpenHH, $04, pAKick, $02, $04
	dc.b	pClosedHH, $02
	smpsLoop		$01, $03, PWM1_Loop13, Target

PWM1_Loop14:
	dc.b	pOpenHH, $06, pClosedHH, $04, $02
	smpsLoop		$00, $03, PWM1_Loop14, Target

PWM1_Loop15:
	dc.b	pOpenHH, $04, pClap, $02, pClosedHH, $04, $02, pOpenHH
	dc.b	$06, pClosedHH, $04, $02
	smpsLoop		$00, $02, PWM1_Loop15, Target
	dc.b	pClap, $04, pAKick, $02
	smpsLoop		$02, $02, PWM1_Loop11, Target
	dc.b	pSplashCymb, $01
	smpsJump		PWM1_Jump1, Target
	

PWM2:
	dc.b	nRst, $0C, pAKick, pClosedHH, $24, $0C, $24, $0C
	dc.b	$24, pAKick, $30

PWM2_Jump1:
	dc.b	pSplashCymb, $06

PWM2_Loop1:
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pClap, pClosedHH
	smpsLoop		$00, $03, PWM2_Loop1, Target
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pClap, pSplashCymb

PWM2_Loop2:
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pClap, pClosedHH
	smpsLoop		$00, $03, PWM2_Loop2, Target
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	$04, pClap, $02, pRideBell, $06, pClap, pRideBell, pAKick
	dc.b	$04, pClap, $02, pRideBell, $06, pClap, $04, pTomMid
	dc.b	$02, pRideBell, $04, pTimpaniLo, $02

PWM2_Loop3:
	dc.b	pSplashCymb, $06, pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap
	dc.b	pAKick, pAKick, pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap
	dc.b	pClap, pClosedHH, pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap
	dc.b	pAKick, pAKick, pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap
	dc.b	pClap
	smpsLoop		$00, $02, PWM2_Loop3, Target

PWM2_Loop4:
	dc.b	pAKick, pRideBell
	smpsLoop		$00, $0B, PWM2_Loop4, Target
	dc.b	pAKick, pRideBell, $04, pClap, $02, pAKick, $06, pRideBell
	dc.b	pAKick, pRideBell, pAKick, pRideBell, pAKick, pRideBell, $36, pSplashCymb
	dc.b	$06

PWM2_Loop5:
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pClap, pClosedHH
	smpsLoop		$00, $03, PWM2_Loop5, Target
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	$04, pClap, $02, pRideBell, $06, pClap, pRideBell, pAKick
	dc.b	$04, pClap, $02, pRideBell, $06, pClap, $04, pTomMid
	dc.b	$02, pRideBell, $04, pTimpaniLo, $02, pSplashCymb, $06

PWM2_Loop6:
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pClap, pClosedHH
	smpsLoop		$00, $03, PWM2_Loop6, Target
	dc.b	pRideBell, pClap, pRideBell, pAKick, pRideBell, pClap, pAKick, pAKick
	dc.b	$04, pClap, $02, pRideBell, $06, pClap, pRideBell, pAKick
	dc.b	$04, pClap, $02, pRideBell, $06, pClap, $04, pTomMid
	dc.b	$02, pRideBell, $04, pTimpaniLo, $03
	smpsJump		PWM2_Jump1, Target


PWM3:
	dc.b	nRst, $7F, $4D

PWM3_Jump1:
	dc.b	pClosedHH, $2A, pRideBell

PWM3_Loop1:
	dc.b	$30
	smpsLoop		$00, $07, PWM3_Loop1, Target
	dc.b	$06, pClosedHH, $2A, pRideBell, $30, $30, $30, $30
	dc.b	$30, $30, $0C, pClap, $18, $06, pTomHi, pOpenHH
	dc.b	pClosedHH, $2A, pRideBell, $30, $30, $30, $06, pClosedHH
	dc.b	$2A, pRideBell, $30, $30, $30, $30, pAKick, pAKick
	dc.b	pAKick, pAKick, $36, $2A, pRideBell, $30, $30, $30
	dc.b	$30, $30, $30, $0C, pClap, $18, $06, pTomHi
	dc.b	pOpenHH, pAKick, $2A, pRideBell, $30, $30, $30, $30
	dc.b	$30, $30, $0C, pClap, $18, $06, pTomHi, pOpenHH
	dc.b	$07
	smpsJump		PWM3_Jump1, Target


PWM4:
	dc.b	nRst, $7F, $4D

PWM4_Jump1:
	dc.b	nRst, $7F, $7F, $7F, $7F, $7F, $7F, pTomLow
	dc.b	nRst, nRst, nRst, $75, pClap, $18, $18, $18
	dc.b	$06, $7F, nRst, nRst, nRst, $33, pTomLow, $7F
	dc.b	nRst, nRst, nRst, $03, pTomLow, $07
	smpsJump		PWM4_Jump1, Target

SOTH_OVA_Dark_Voices:
	;dc.b		$3D
	;dc.b		$00, $00, $01, $05, $5F, $5E, $5B, $5B, $05, $0C, $0E, $0E
	;dc.b		$00, $04, $08, $07, $B0, $19, $39, $FC, $21, $0A, $09, $10

	;dc.b		$3C
	;dc.b		$33, $31, $51, $54, $1A, $0C, $1A, $0C, $05, $1F, $05, $1F
	;dc.b		$00, $00, $00, $00, $11, $06, $11, $06, $1C, $0C, $15, $0C

	;dc.b		$3C
	;dc.b		$35, $71, $7A, $31, $1F, $1F, $18, $1F, $0E, $00, $14, $00
	;dc.b		$08, $0C, $08, $0F, $28, $0A, $38, $0A, $19, $0A, $1E, $0A

	;dc.b		$2C
	;dc.b		$31, $31, $71, $71, $5F, $54, $5F, $5F, $05, $0A, $03, $0C
	;dc.b		$00, $03, $03, $03, $00, $87, $00, $A7, $17, $07, $19, $06

	;dc.b		$3D
	;dc.b		$0F, $04, $00, $00, $08, $07, $46, $07, $00, $00, $12, $05
	;dc.b		$00, $0F, $0F, $0F, $00, $0D, $47, $07, $00, $07, $07, $08
	
	dc.b		$3D
	dc.b		$00, $00, $01, $05, $5F, $5E, $5B, $5B, $05, $0C, $0E, $0E
	dc.b		$00, $04, $08, $07, $B0, $19, $39, $FC, $24, $07, $06, $12
	
	dc.b		$3F
	dc.b		$32, $31, $51, $52, $1A, $0C, $1A, $0C, $05, $1F, $05, $1F
	dc.b		$06, $06, $06, $06, $11, $06, $11, $06, $18, $10, $10, $10
	
	dc.b		$3D
	dc.b		$02, $01, $02, $01, $1F, $1F, $1F, $1F, $00, $00, $00, $01
	dc.b		$00, $00, $00, $00, $0F, $0F, $0F, $0F, $20, $18, $26, $24
	
	dc.b		$2C
	dc.b		$31, $31, $71, $71, $5F, $54, $5F, $5F, $05, $0A, $03, $0C
	dc.b		$00, $03, $03, $03, $00, $87, $00, $A7, $17, $0E, $19, $0F
	
	dc.b		$3D
	dc.b		$0F, $04, $00, $00, $08, $07, $46, $07, $00, $00, $12, $05
	dc.b		$00, $0F, $0F, $0F, $00, $0D, $47, $07, $00, $0F, $10, $0F
	even
