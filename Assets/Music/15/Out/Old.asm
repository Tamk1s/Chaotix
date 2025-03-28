Target	EQU	$40000

PWMPitch	EQU	$00
PWMVol		EQU	$9F

;!@ PSGVol1	EQU	$05
;!@ PSGVol2	EQU	$0B
;!@ PSGVol3	EQU	$0A
PSGVoi	EQU $00
PSGVol1	EQU	$01
PSGVol2	EQU	PSGVol1+$02
PSGVol3	EQU	PSGVol2-$01
;!@ PSGTone	EQU	$00
PSGTone	EQU	$0C

	smpsHeaderVoice		HDNR1S_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$03, $08
	smpsHeaderFM		HDNR1S_FM1, Target, $00, $17
	smpsHeaderFM		HDNR1S_FM2, Target, $00, $13
	smpsHeaderFM		HDNR1S_FM3, Target, $00, $0E
	smpsHeaderFM		HDNR1S_FM4, Target, $00, $19
	smpsHeaderFM		HDNR1S_FM5, Target, $00, $16
	smpsHeaderFM		HDNR1S_FM6, Target, $00, $1B
	smpsHeaderPSG		HDNR1S_PSG1, Target, PSGTone, PSGVol1, $00, PSGVoi
	smpsHeaderPSG		HDNR1S_PSG2, Target, PSGTone, PSGVol2, $00, PSGVoi
	smpsHeaderPSG		HDNR1S_PSG3, Target, PSGTone, PSGVol3, $00, PSGVoi
	smpsHeaderPWM		HDNR1S_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM		HDNR1S_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM		HDNR1S_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM		HDNR1S_PWM4, Target, PWMPitch, PWMVol

HDNR1S_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00
	;!@ sModOff
	;!@ sModOff
	dc.b	nRst, $06

HDNR1S_Loop1:
	dc.b	nBb5, $02, nG5, $01, nE5, $02, nCs5, $01
	dc.b	nBb4, $02, nG4, $01, nBb4, $02, nCs5, $01
	dc.b	nE5, $02, nCs5, $01, nBb4, $02, nG4, $01
	dc.b	nE4, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b	nCs5, $02, nBb4, $01, nG4, $02, nE4, $01
	dc.b	nCs4, $02, nBb3, $01, nCs4, $02, nE4, $01
	dc.b	nBb4, $02, nG4, $01, nE4, $02, nCs4, $01
	dc.b	nBb3, $02, nG3, $01, nBb3, $02, nCs4, $01
	smpsLoop		$00, $02, HDNR1S_Loop1, Target
	dc.b	nCs6, $02, nBb5, $01, nG5, $02, nE5, $01
	dc.b	nCs5, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b	nBb5, $02, nG5, $01, nE5, $02, nCs5, $01
	dc.b	nBb4, $02, nG4, $01, nBb4, $02, nCs5, $01
	dc.b	nG5, $02, nE5, $01, nCs5, $02, nBb4, $01
	dc.b	nG4, $02, nE4, $01, nG4, $02, nBb4, $01
	dc.b	nE5, $02, nCs5, $01, nBb4, $02, nG4, $01
	dc.b	nE4, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b	nBb3, $02, nCs4, $01, nE4, $02, nG4, $01
	dc.b	nBb4, $02, nCs5, $01, nE5, $02, nG5, $01
	dc.b	nCs4, $02, nE4, $01, nG4, $02, nBb4, $01
	dc.b	nCs5, $02, nE5, $01, nG5, $02, nBb5, $01
	dc.b	nCs5, nRst, nBb5, nRst, $02, nBb6, $01, nRst
	dc.b	$02, nBb5, $01, nRst, nE5, nBb4, nRst, $05
	;!@ Questionable
	; smpsAlterNote	$03
	; dc.b	$01
	; smpsAlterNote	$05
	; dc.b	$01
	; smpsAlterNote	$07
	; dc.b	$01
	; smpsAlterNote	$08
	; dc.b	$01
	; smpsAlterNote	$13
	; dc.b	$01
	; smpsAlterNote	$14
	; dc.b	$01
	; smpsAlterNote	$00
	
	smpsAlterNote	$03
	dc.b	nRst, $01
	smpsAlterNote	$05
	dc.b	nRst, $01
	smpsAlterNote	$07
	dc.b	nRst, $01
	smpsAlterNote	$08
	dc.b	nRst, $01
	smpsAlterNote	$13
	dc.b	nRst, $01
	smpsAlterNote	$14
	dc.b	nRst, $01
	
	;!@ dc.b	$01, $55, $3B
	dc.b	nRst, $01, nRst, $55, nRst, $3B
	smpsAlterVol		$02
	dc.b	nG3, $02, nBb3, $01, nCs4, $02, nE4, $01
	dc.b	nG4, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b	nCs5, $02, nBb4, $01, nG4, $02, nE4, $01
	dc.b	nG4, $02, nBb4, $01, nCs5, $02, nE5, $01
	dc.b	nRst, $05
	smpsAlterVol		$01
	dc.b	nCs6, $01, nRst, $02, nBb5, $01, nRst, $02
	dc.b	nBb6, $01

HDNR1S_Jump1:
	;!@ dc.b	nRst, $54, $54, $54, $54, $54
	dc.b	nRst, $54, nRst, $54, nRst, $54, nRst, $54, nRst, $54
	smpsAlterVol		$FA
	dc.b	nD4, $02, nF4, $01, nA4, $02, nD5, $01
	dc.b	nF5, $02, nA5, $01, nD6, $02, nF6, $01
	dc.b	nA6, $02, nF6, $01, nD6, $02, nA5, $01
	dc.b	nF5, $02, nD5, $01, nA4, $02, nD4, $01
	dc.b	nRst, $18
	smpsAlterVol		$FF
	dc.b	nF4, $02, nA4, $01, nD5, $02, nF5, $01
	dc.b	nA5, $02, nD6, $01, nF6, $02, nA6, $01
	dc.b	nD7, $02, nA6, $01, nF6, $02, nD6, $01
	dc.b	nA5, $02, nF5, $01, nA4, $02, nF4, $01
	dc.b	nRst, $18
	smpsAlterVol		$FF
	dc.b	nC4, $02, nE4, $01, nG4, $02, nC5, $01
	dc.b	nE5, $02, nG5, $01, nC6, $02
	smpsAlterVol		$01
	dc.b	nE6, $01, nG6, $02, nE6, $01, nC6, $02
	dc.b	nG5, $01, nE5, $02, nC5, $01, nG4, $02
	dc.b	nC4, $01, nRst, $30
	smpsAlterNote	$00
	smpsAlterVol		$FE
	dc.b	nE5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b	nD5, $02, nRst, $04, nAb4, $03, nAb5, nA4
	dc.b	nA5, nB4, nB5, nE5, nE4, nF5, $02, nRst
	dc.b	$07, nFs5, $02, nRst, $07, nD5, $02, nRst
	dc.b	$04, nE5, $02, nFs5, $01, nAb5, $02, nA5
	dc.b	$01, nFs5, $02, nAb5, $01, nA5, $02, nB5
	dc.b	$01, nAb5, $02, nA5, $01, nB5, $02, nD6
	dc.b	$01, nE6, $03
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, nD6, $01
	smpsAlterNote	$0A
	dc.b	smpsNoAttack, nBb5
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote	$FF
	dc.b	nE5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b	nD5, $02, nRst, $01, nAb4, $03, nAb5, nA5
	dc.b	nA4, nB5, nA5, nA4, nE5
	smpsAlterNote	$13
	dc.b	smpsNoAttack, nD5, $01
	smpsAlterNote	$15
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$0A
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$01
	dc.b	nF5, $02, nRst, $07, nFs5, $02, nRst, $07
	dc.b	nD5, $02, nRst, $04, nF6, $02, nD6, $01
	dc.b	nB5, $02, nA5, $01, nD6, $02, nB5, $01
	dc.b	nA5, $02, nAb5, $01, nA5, $02, nAb5, $01
	dc.b	nFs5, $02, nF5, $01, nD5, $03
	smpsAlterNote	$09
	dc.b	smpsNoAttack, nC5, $01
	smpsAlterNote	$0A
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nE4
	smpsAlterNote	$FF
	dc.b	nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b	nFs5, $02, nRst, $04, nB4, $03, nB5, nC5
	dc.b	nC6, nD5, nD6, nG5, nG4, nAb5, $02, nRst
	dc.b	$07, nA5, $02, nRst, $07, nFs5, $02, nRst
	dc.b	$04, nG5, $02, nAb5, $01, nB5, $02, nC6
	dc.b	$01, nAb5, $02, nB5, $01, nC6, $02, nD6
	dc.b	$01, nB5, $02, nC6, $01, nD6, $02, nF6
	dc.b	$01, nG6, $03
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nF6, $01
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote	$F4
	dc.b	smpsNoAttack, nA5
	smpsAlterNote	$01
	dc.b	nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b	nFs5, $02, nRst, $01, nB4, $03, nB5, nC6
	dc.b	nC5, nD6, nC6, nC5, nG5
	smpsAlterNote	$EF
	dc.b	smpsNoAttack, nFs5, $01
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$FF
	dc.b	nAb5, $02, nRst, $07, nA5, $02, nRst, $07
	dc.b	nFs5, $02, nRst, $04, nAb6, $02, nFs6, $01
	dc.b	nF6, $02, nD6, $01, nF6, $02, nD6, $01
	dc.b	nC6, $02, nB5, $01, nC6, $02, nB5, $01
	dc.b	nAb5, $02, nFs5, $01, nE5, $03
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nD5, $01
	smpsAlterNote	$FA
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$F0
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$FF
	;!@ dc.b	nRst, $55, $55, $54, $3E, $3E, $3E, $3E
	dc.b	nRst, $55, nRst, $55, nRst, $54, nRst, $3E, nRst, $3E, nRst, $3E, nRst, $3E
	;!@ dc.b	$3E
	dc.b	nRst, $3E
	smpsAlterVol		$07
	dc.b	nC4, $02, nD4, $01, nEb4, $02, nF4, $01
	dc.b	nG4, $02, nBb4, $01, nC5, $02, nD5, $01
	;!@ dc.b	nEb5, $18, nD5, $0C, nBb4, nC5, nG5
	dc.b	nEb5, $18, nD5, $0C, nBb4, nC5

HDNR1S_Loop2:
	smpsAlterVol		$01
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsLoop		$00, $03, HDNR1S_Loop2, Target
	smpsAlterVol		$02
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$01

HDNR1S_Loop3:
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$01
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$02
	smpsLoop		$00, $02, HDNR1S_Loop3, Target
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$02
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$01
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$02

HDNR1S_Loop4:
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$02
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$03
	smpsLoop		$00, $02, HDNR1S_Loop4, Target
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$04
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$03
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$06
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$05
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$0A
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$10
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nG5, smpsNoAttack, $01
	smpsAlterVol		$20
	;!@ dc.b	smpsNoAttack, $02, nRst
	;!@ dc.b	smpsNoAttack, $02
	dc.b	nG5, smpsNoAttack, $02

HDNR1S_Loop5:
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsLoop		$00, $18, HDNR1S_Loop5, Target
	smpsAlterVol		$BA
	;!@dc.b	nC5

HDNR1S_Loop6:
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nC5, smpsNoAttack, $01
	smpsAlterVol		$FF
	smpsLoop		$00, $04, HDNR1S_Loop6, Target
	;!@ dc.b	smpsNoAttack, $02
	dc.b	nC5, smpsNoAttack, $02
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nC5, smpsNoAttack, $01
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nC5, smpsNoAttack, $01
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $03
	dc.b	nC5, smpsNoAttack, $03
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nC5, smpsNoAttack, $01
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $01
	dc.b	nC5, smpsNoAttack, $01

HDNR1S_Loop7:
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $02
	dc.b	nC5, smpsNoAttack, $02
	smpsLoop		$00, $05, HDNR1S_Loop7, Target
	smpsAlterVol		$F1
	dc.b	nB4, $01
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $05
	dc.b	nB4, smpsNoAttack, $05
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $05
	dc.b	nB4, smpsNoAttack, $05
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $06
	dc.b	nB4, smpsNoAttack, $06
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $06
	dc.b	nB4, smpsNoAttack, $06
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $05
	dc.b	nB4, smpsNoAttack, $05
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $06
	dc.b	nB4, smpsNoAttack, $06
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $07
	dc.b	nB4, smpsNoAttack, $07
	smpsAlterVol		$FF
	;!@ dc.b	smpsNoAttack, $07, nC5, $18, nCs5, $0C
	dc.b	nB4, smpsNoAttack, $07, nC5, $18, nCs5, $0C
	smpsAlterVol		$06
	smpsJump		HDNR1S_Jump1, Target

HDNR1S_FM2:
	smpsFMvoice		$00
	;!@ sModOff
	smpsPan		panCenter
	;!@ sModOff
	smpsAlterNote	$FF
	dc.b	nRst, $06
	smpsAlterNote	$00
	;!@ dc.b	$30, $55, $24, nE5, $01, nBb5, nRst, nE6
	dc.b	nRst, $30, nRst, $55, nRst, $24, nRst, nE5, nRst, $01, nBb5, nRst, nE6
	dc.b	nRst, nG6, nE6, nRst, nG5, nRst, nRst, nG4
	dc.b	$05
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nF4, $01
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$07
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$08
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$13
	dc.b	smpsNoAttack, nA3
	smpsAlterNote	$14
	dc.b	smpsNoAttack, nG3
	smpsAlterNote	$00
	;!@ dc.b	smpsNoAttack, $01, nRst, $55, $53
	dc.b	smpsNoAttack, $01, nRst, $55, nRst, $53
	smpsAlterVol		$07
	dc.b	nE4, $01, nG4, nRst, $04, nCs5, $01, nRst
	dc.b	nBb5, nRst, nE6, nRst

HDNR1S_Loop8:
	dc.b	nRst, $54
	smpsLoop		$00, $07, HDNR1S_Loop8, Target
	smpsAlterNote	$00

HDNR1S_Loop9:
	;!@ dc.b	$55, $0A, $01, $2F, $01, $2F, $01
	dc.b	nRst, $55, nRst, $0A, nRst, $01, nRst, $2F, nRst, $01, nRst, $2F, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop9, Target

HDNR1S_Loop10:
	;!@ dc.b	$4E
	dc.b	nRst, $4E
	smpsLoop		$00, $07, HDNR1S_Loop10, Target
	;!@ dc.b	$55, $55, $55, $03
	dc.b	nRst, $55, $55, $55, $03
	smpsJump		HDNR1S_Loop8, Target

HDNR1S_FM3:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nRst, $09

HDNR1S_Loop11:
	dc.b	nBb3, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nE3, $02, nRst, $04, nE3, $02, nRst, $01
	dc.b	nE2, $02, nRst, $01, nBb2, $02, nRst, $04
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	dc.b	nE2, $02, nRst, $04, nE2, $02, nRst, $01
	dc.b	nE1, $02, nRst, $01, nBb1, $02, nRst, $04
	smpsLoop		$00, $02, HDNR1S_Loop11, Target
	dc.b	nCs4, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b	nCs4, $02, nRst, $04, nG3, $02, nRst, $01
	dc.b	nG2, $02, nRst, $01, nG3, $02, nRst, $04
	dc.b	nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	dc.b	nCs3, $02, nRst, $04, nBb2, $02, nRst, $01
	dc.b	nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nBb1, $03
	smpsAlterVol		$0A
	dc.b	nBb2, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b	nCs2, $03
	smpsAlterVol		$0A
	dc.b	nCs3, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b	nG2, $03
	smpsAlterVol		$0A
	dc.b	nG3, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b	nCs3, $03
	smpsAlterVol		$0A
	dc.b	nCs4, $02, nRst, $01
	smpsAlterVol		$F6
	dc.b	nE3, $03, nRst, nCs3, nRst, nBb2, $06, nRst

HDNR1S_Loop12:
	dc.b	nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $18, HDNR1S_Loop12, Target

HDNR1S_Loop13:
	dc.b	nCs2, $02, nRst, $01, nCs3, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop13, Target
	dc.b	nCs2, $02, nRst, $01, nCs3, $02, nRst, $0D

HDNR1S_Jump2:
	dc.b	nRst, $0C
	smpsAlterVol		$01

HDNR1S_Loop14:
	dc.b	nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $06, HDNR1S_Loop14, Target

HDNR1S_Loop15:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop15, Target

HDNR1S_Loop16:
	dc.b	nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop16, Target

HDNR1S_Loop17:
	dc.b	nC2, $02, nRst, $01, nC3, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop17, Target

HDNR1S_Loop18:
	dc.b	nG1, $02, nRst, $01, nG2, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop18, Target

HDNR1S_Loop19:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop19, Target

HDNR1S_Loop20:
	dc.b	nE2, $02, nRst, $01, nE3, $02, nRst, $01
	smpsLoop		$00, $08, HDNR1S_Loop20, Target

HDNR1S_Loop21:
	dc.b	nD2, $02, nRst, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $06, HDNR1S_Loop21, Target

HDNR1S_Loop22:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop22, Target

HDNR1S_Loop23:
	dc.b	nBb1, $02, nRst, $01, nBb2, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop23, Target

HDNR1S_Loop24:
	dc.b	nC2, $02, nRst, $01, nC3, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop24, Target

HDNR1S_Loop25:
	dc.b	nG1, $02, nRst, $01, nG2, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop25, Target

HDNR1S_Loop26:
	dc.b	nF2, $02, nRst, $01, nF3, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop26, Target

HDNR1S_Loop27:
	dc.b	nE2, $02, nRst, $01, nE3, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop27, Target

HDNR1S_Loop28:
	dc.b	nD2, $02, nRst, $01

HDNR1S_Loop29:
	dc.b	nD3, $02, nRst, $01
	smpsLoop		$00, $04, HDNR1S_Loop28, Target
	dc.b	nD2, $03
	smpsLoop		$01, $02, HDNR1S_Loop29, Target

HDNR1S_Loop30:
	dc.b	nD3, $02, nRst, $01, nD2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop30, Target
	dc.b	nD3, $02

HDNR1S_Loop32:
	dc.b	nRst, $01, nBb1, $03

HDNR1S_Loop31:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop31, Target
	dc.b	nBb2, $02
	smpsLoop		$01, $02, HDNR1S_Loop32, Target

HDNR1S_Loop34:
	dc.b	nRst, $01, nC2, $03

HDNR1S_Loop33:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop33, Target
	dc.b	nC3, $02
	smpsLoop		$01, $02, HDNR1S_Loop34, Target
	dc.b	nRst, $01, nCs2, $03

HDNR1S_Loop35:
	dc.b	nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop35, Target
	dc.b	nCs3, $02, nRst, $01, nD2, $03, nRst, $02
	dc.b	nD2, $03, nRst, $01, nD2, $09, nRst, $06
	smpsAlterVol		$FF

HDNR1S_Loop37:
	dc.b	nA1, $03

HDNR1S_Loop36:
	dc.b	nA2, $02, nRst, $01, nA1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop36, Target
	dc.b	nA2, $02, nRst, $01
	smpsLoop		$01, $08, HDNR1S_Loop37, Target

HDNR1S_Loop39:
	dc.b	nC2, $03

HDNR1S_Loop38:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop38, Target
	dc.b	nC3, $02, nRst, $01
	smpsLoop		$01, $08, HDNR1S_Loop39, Target
	smpsAlterVol		$01

HDNR1S_Loop41:
	dc.b	nD2, $03

HDNR1S_Loop40:
	dc.b	nD3, $02, nRst, $01, nD2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop40, Target
	dc.b	nD3, $02, nRst, $01
	smpsLoop		$01, $02, HDNR1S_Loop41, Target

HDNR1S_Loop43:
	dc.b	nBb1, $03

HDNR1S_Loop42:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop42, Target
	dc.b	nBb2, $02, nRst, $01
	smpsLoop		$01, $02, HDNR1S_Loop43, Target

HDNR1S_Loop45:
	dc.b	nC2, $03

HDNR1S_Loop44:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop44, Target
	dc.b	nC3, $02, nRst, $01
	smpsLoop		$01, $02, HDNR1S_Loop45, Target
	dc.b	nCs2, $03

HDNR1S_Loop46:
	dc.b	nCs3, $02, nRst, $01, nCs2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop46, Target
	dc.b	nCs3, $02, nRst, $01, nD2, $03, nRst, $02
	dc.b	nD2, $03, nRst, $01, nD2, $09, nRst, $06
	dc.b	nG1, $03

HDNR1S_Loop47:
	dc.b	nG2, $02, nRst, $01, nG1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop47, Target
	dc.b	nG2, $02, nRst, $01, nAb1, $03

HDNR1S_Loop48:
	dc.b	nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop48, Target
	dc.b	nAb2, $02, nRst, $01, nBb1, $03

HDNR1S_Loop49:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop49, Target
	dc.b	nBb2, $02, nRst, $01, nC2, $03

HDNR1S_Loop50:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop50, Target
	dc.b	nC3, $02, nRst, $01, nEb2, $03

HDNR1S_Loop51:
	dc.b	nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop51, Target
	dc.b	nEb3, $02, nRst, $01, nF2, $03

HDNR1S_Loop52:
	dc.b	nF3, $02, nRst, $01, nF2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop52, Target
	dc.b	nF3, $02

HDNR1S_Loop54:
	dc.b	nRst, $01, nBb1, $03

HDNR1S_Loop53:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop53, Target
	dc.b	nBb2, $02
	smpsLoop		$01, $02, HDNR1S_Loop54, Target
	dc.b	nRst, $01, nG1, $03

HDNR1S_Loop55:
	dc.b	nG2, $02, nRst, $01, nG1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop55, Target
	dc.b	nG2, $02, nRst, $01, nAb1, $03

HDNR1S_Loop56:
	dc.b	nAb2, $02, nRst, $01, nAb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop56, Target
	dc.b	nAb2, $02, nRst, $01, nBb1, $03

HDNR1S_Loop57:
	dc.b	nBb2, $02, nRst, $01, nBb1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop57, Target
	dc.b	nBb2, $02, nRst, $01, nC2, $03

HDNR1S_Loop58:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop58, Target
	dc.b	nC3, $02, nRst, $01, nEb2, $03

HDNR1S_Loop59:
	dc.b	nEb3, $02, nRst, $01, nEb2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop59, Target
	dc.b	nEb3, $02, nRst, $01, nF1, $03

HDNR1S_Loop60:
	dc.b	nF2, $02, nRst, $01, nF1, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop60, Target
	dc.b	nF2, $02, nRst, $01, nAb1, $03, nAb2, $02
	dc.b	nRst, $01, nAb1, $02, nRst, $01, nAb2, $02
	dc.b	nRst, $01, nBb1, $03, nBb2, $02, nRst, $01
	dc.b	nBb1, $02, nRst, $01, nBb2, $02

HDNR1S_Loop62:
	dc.b	nRst, $01, nC2, $03

HDNR1S_Loop61:
	dc.b	nC3, $02, nRst, $01, nC2, $02, nRst, $01
	smpsLoop		$00, $03, HDNR1S_Loop61, Target
	dc.b	nC3, $02
	smpsLoop		$01, $07, HDNR1S_Loop62, Target
	smpsAlterNote	$00
	dc.b	nRst, $55
	smpsAlterVol		$FF
	smpsJump		HDNR1S_Jump2, Target

HDNR1S_FM4:
	;!@ sModOff
	smpsPan		panCenter
	;!@ sModOff
	smpsFMvoice		$02
	;!@ sModOff
	;!@ sModOff
	;!@ sModOff
	;!@ sModOff
	dc.b	nRst, $06

HDNR1S_Loop63:
	dc.b	nBb4, $09, nRst, $03, nE4, $09, nRst, $03
	dc.b	nCs4, $09, nRst, $03, nBb3, $09, nRst, $03
	smpsLoop		$00, $02, HDNR1S_Loop63, Target
	dc.b	nCs5, $09, nRst, $03, nBb4, $09, nRst, $03
	dc.b	nG4, $09, nRst, $03, nE4, $09, nRst, $03
	dc.b	nBb3, $06, nCs4, nEb4, nCs4, $07, nRst, $11
	smpsFMvoice		$04
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterVol		$0C
	dc.b	nD4

HDNR1S_Loop64:
	dc.b	$03
	smpsAlterVol		$F5
	dc.b	$03
	smpsAlterVol		$0B
	smpsLoop		$00, $18, HDNR1S_Loop64, Target
	dc.b	nE4
	smpsAlterVol		$F5
	dc.b	$03
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	$03
	smpsAlterVol		$0B
	dc.b	$03
	smpsAlterVol		$F5
	dc.b	$03
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	$03
	smpsAlterVol		$FE
	dc.b	$03, nRst, $02, nE4, $03, nRst, $01, nE4
	dc.b	$03

HDNR1S_Jump3:
	dc.b	nRst, $06
	smpsFMvoice		$05
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterVol		$09

HDNR1S_Loop65:
	;!@ dc.b	nA3, $03, $02, nRst, $01, nA3, $02, nRst
	dc.b	nA3, $03, nA3, $02, nRst, $01, nA3, $02, nRst
	dc.b	$01
	smpsLoop		$00, $02, HDNR1S_Loop65, Target
	;!@ dc.b	nA3, $03, $02, nRst, $01, nA3, $03, $02
	dc.b	nA3, $03, nA3, $02, nRst, $01, nA3, $03, nA3, $02
	dc.b	nRst, $01, nA3, $02, nRst, $01, nC4, $03
	dc.b	$02, nRst, $01, nC4, $02, nRst, $01, nEb4
	;!@ dc.b	$03, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b	$03, nEb4, $02, nRst, $01, nD4, $03, nD4, $02, nRst
	;!@ dc.b	$01, nD4, $03, $02, nRst, $01, nD4, $02
	dc.b	$01, nD4, $03, nD4, $02, nRst, $01, nD4, $02
	;!@ dc.b	$01, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b	nD4, $01, nD4, $02, nRst, $01, nD4, $03, nD4, $02, nRst
	;!@ dc.b	$01, nE4, $03, $02, nRst, $01, nE4, $03
	dc.b	$01, nE4, $03, nE4, $02, nRst, $01, nE4, $03
	;!@ dc.b	$02, nRst, $01, nE4, $02, nRst, $01, nE4
	dc.b	nE4, $02, nRst, $01, nE4, $02, nRst, $01, nE4
	;!@ dc.b	$02, nRst, $01, nE4, $03, $02
	dc.b	$02, nRst, $01, nE4, $03, nE4, $02

HDNR1S_Loop66:
	;!@ dc.b	nRst, $01, nD4, $03, $02, nRst, $01, nD4
	dc.b	nRst, $01, nD4, $03, nD4, $02, nRst, $01, nD4
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop66, Target
	;!@ dc.b	nRst, $01, nD4, $03, $02
	dc.b	nRst, $01, nD4, $03, nD4, $02

HDNR1S_Loop67:
	;!@ dc.b	nRst, $01, nC4, $03, $02, nRst, $01, nC4
	dc.b	nRst, $01, nC4, $03, nC4, $02, nRst, $01, nC4
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop67, Target
	;!@ dc.b	nRst, $01, nC4, $03, $02
	dc.b	nRst, $01, nC4, $03, nC4, $02

HDNR1S_Loop68:
	;!@ dc.b	nRst, $01, nBb3, $03, $02, nRst, $01, nBb3	
	dc.b	nRst, $01, nBb3, $03, nBb3, $02, nRst, $01, nBb3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop68, Target
	;!@ dc.b	nRst, $01, nBb3, $03, $02
	dc.b	nRst, $01, nBb3, $03, nBb3, $02

HDNR1S_Loop69:
	;!@ dc.b	nRst, $01, nE4, $03, $02, nRst, $01, nE4
	dc.b	nRst, $01, nE4, $03, nE4, $02, nRst, $01, nE4
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop69, Target
	;!@ dc.b	nRst, $01, nE4, $03, $02, nRst, $01
	dc.b	nRst, $01, nE4, $03, nE4, $02, nRst, $01
	smpsAlterVol		$01

HDNR1S_Loop70:
	;!@ dc.b	nA3, $03, $02, nRst, $01, nA3, $02, nRst
	dc.b	nA3, $03, nA3, $02, nRst, $01, nA3, $02, nRst
	dc.b	$01
	smpsLoop		$00, $02, HDNR1S_Loop70, Target
	;!@ dc.b	nA3, $03, $02, nRst, $01, nA3, $03, $02
	dc.b	nA3, $03, nA3, $02, nRst, $01, nA3, $03, nA3, $02
	dc.b	nRst, $01, nA3, $02, nRst, $01, nC4, $03
	dc.b	$02, nRst, $01, nC4, $02, nRst, $01, nEb4
	;!@ dc.b	$03, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b	$03, nEb4, $02, nRst, $01, nD4, $03, nD4, $02, nRst
	;!@ dc.b	$01, nD4, $03, $02, nRst, $01, nD4, $02
	dc.b	$01, nD4, $03, nD4, $02, nRst, $01, nD4, $02
	;!@ dc.b	$01, $02, nRst, $01, nD4, $03, $02, nRst
	dc.b	nD4, $01, nD4, $02, nRst, $01, nD4, $03, nD4, $02, nRst
	;!@ dc.b	$01, nE4, $03, $02, nRst, $01, nE4, $03
	dc.b	$01, nE4, $03, nE4, $02, nRst, $01, nE4, $03
	;!@ dc.b	$02, nRst, $01, nE4, $02, nRst, $01, nE4
	dc.b	nE4, $02, nRst, $01, nE4, $02, nRst, $01, nE4
	;!@ dc.b	$02, nRst, $01, nE4, $03, $02
	dc.b	$02, nRst, $01, nE4, $03, nE4, $02

HDNR1S_Loop71:
	;!@ dc.b	nRst, $01, nD4, $03, $02, nRst, $01, nD4
	dc.b	nRst, $01, nD4, $03, nD4, $02, nRst, $01, nD4
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop71, Target
	;!@ dc.b	nRst, $01, nD4, $03, $02
	dc.b	nRst, $01, nD4, $03, nD4, $02

HDNR1S_Loop72:
	;!@ dc.b	nRst, $01, nC4, $03, $02, nRst, $01, nC4
	dc.b	nRst, $01, nC4, $03, nC4, $02, nRst, $01, nC4
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop72, Target
	;!@ dc.b	nRst, $01, nC4, $03, $02
	dc.b	nRst, $01, nC4, $03, nC4, $02

HDNR1S_Loop73:
	;!@ dc.b	nRst, $01, nBb3, $03, $02, nRst, $01, nBb3
	dc.b	nRst, $01, nBb3, $03, nBb3, $02, nRst, $01, nBb3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop73, Target
	;!@ dc.b	nRst, $01, nBb3, $03, $02
	dc.b	nRst, $01, nBb3, $03, nBb3, $02

HDNR1S_Loop74:
	;!@ dc.b	nRst, $01, nD4, $03, $02, nRst, $01, nD4
	dc.b	nRst, $01, nD4, $03, nD4, $02, nRst, $01, nD4
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop74, Target
	;!@ dc.b	nRst, $01, nD4, $03, $02, nRst, $01
	dc.b	nRst, $01, nD4, $03, nD4, $02, nRst, $01
	smpsAlterVol		$FC
	;!@ dc.b	nD4, $02, $01, $02, nRst, $04
	dc.b	nD4, $02, nD4, $01, nD4, $02, nRst, $04
	smpsAlterVol		$06
	dc.b	nD4, $03, nRst, nD4, nRst
	smpsAlterVol		$FA
	dc.b	nD4, $02, nRst, $04, nD4

HDNR1S_Loop75:
	;!@ dc.b	$02, nRst, $07, nD4, $02, $01
	dc.b	$02, nRst, $07, nD4, $02, nD4, $01
	smpsLoop		$00, $02, HDNR1S_Loop75, Target
	dc.b	$02, nRst, $01
	smpsAlterVol		$06
	dc.b	nD4, $03, nRst, nD4, nRst, $06
	smpsAlterVol		$FA
	dc.b	nD4, $02, nRst, $04, nD4, $02, nRst, $07

HDNR1S_Loop76:
	;!@ dc.b	nD4, $02, $01, $02, nRst, $01
	dc.b	nD4, $02, nD4, $01, nD4, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop76, Target
	;!@ dc.b	nC4, $02, $01, $02, nRst, $01
	dc.b	nC4, $02, nC4, $01, nC4, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nC4, $03, nRst, nC4, nRst, $06
	smpsAlterVol		$FA
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $07

HDNR1S_Loop77:
	;!@ dc.b	nC4, $02, $01, $02, nRst, $01
	dc.b	nC4, $02, nC4, $01, nC4, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop77, Target
	;!@ dc.b	nCs4, $02, $01, $02, nRst, $01
	dc.b	nCs4, $02, nCs4, $01, nCs4, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nCs4, $03, nRst, nCs4, nRst
	smpsAlterVol		$FA
	dc.b	nCs4, $02, nRst, $01, nCs4, $02, nRst, $01
	dc.b	nD4, $02, nRst, $03, nD4, $01, nRst, $03
	dc.b	nD4, $06, nRst, $09
	smpsAlterVol		$FD

HDNR1S_Loop78:
	;!@ dc.b	nA1, $03, $02, nRst, $01, nA1
	dc.b	nA1, $03, nA1, $02, nRst, $01, nA1

HDNR1S_Loop79:
	dc.b	$02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop78, Target

HDNR1S_Loop80:
	dc.b	nA1, $03
	smpsLoop		$01, $02, HDNR1S_Loop79, Target
	;!@ dc.b	$02, nRst, $01, nA1, $02, nRst, $01
	dc.b	nA1, $02, nRst, $01, nA1, $02, nRst, $01
	smpsLoop		$02, $07, HDNR1S_Loop80, Target
	dc.b	nA1, $03

HDNR1S_Loop82:
	dc.b	$02		;!@! Questionable!

HDNR1S_Loop81:
	;!@ dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3
	dc.b	nRst, $01, nC3, $03, nC3, $02, nRst, $01, nC3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop81, Target
	dc.b	nRst, $01, nC3, $03
	smpsLoop		$01, $08, HDNR1S_Loop82, Target
	;!@ dc.b	$02, nRst, $01
	dc.b	nC3, $02, nRst, $01
	smpsAlterVol		$03
	;!@ dc.b	nD4, $02, $01, $02, nRst, $04
	dc.b	nD4, $02, nD4, $01, nD4, $02, nRst, $04
	smpsAlterVol		$06
	dc.b	nD4, $03, nRst, nD4, nRst
	smpsAlterVol		$FA
	dc.b	nD4, $02, nRst, $04, nD4

HDNR1S_Loop83:
	;!@ dc.b	$02, nRst, $07, nD4, $02, $01
	dc.b	$02, nRst, $07, nD4, $02, nD4, $01
	smpsLoop		$00, $02, HDNR1S_Loop83, Target
	dc.b	$02, nRst, $01
	smpsAlterVol		$06
	dc.b	nD4, $03, nRst, nD4, nRst, $06
	smpsAlterVol		$FA
	dc.b	nD4, $02, nRst, $04, nD4, $02, nRst, $07

HDNR1S_Loop84:
	;!@ dc.b	nD4, $02, $01, $02, nRst, $01
	dc.b	nD4, $02, nD4, $01, nD4, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop84, Target
	;!@ dc.b	nC4, $02, $01, $02, nRst, $01
	dc.b	nC4, $02, nC4, $01, nC4, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nC4, $03, nRst, nC4, nRst, $06
	smpsAlterVol		$FA
	dc.b	nC4, $02, nRst, $04, nC4, $02, nRst, $07

HDNR1S_Loop85:
	;!@ dc.b	nC4, $02, $01, $02, nRst, $01
	dc.b	nC4, $02, nC4, $01, nC4, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop85, Target
	;!@ dc.b	nCs4, $02, $01, $02, nRst, $01
	dc.b	nCs4, $02, nCs4, $01, nCs4, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nCs4, $03, nRst, nCs4, nRst
	smpsAlterVol		$FA
	dc.b	nCs4, $02, nRst, $01, nCs4, $02, nRst, $01
	dc.b	nD4, $02, nRst, $03, nD4, $01, nRst, $03
	;!@ dc.b	nD4, $06, nRst
	dc.b	nD4, $06

HDNR1S_Loop86:
	;!@ dc.b	$4F
	dc.b	nRst, $4F
	smpsLoop		$00, $07, HDNR1S_Loop86, Target
	;!@ dc.b	$02
	dc.b	nRst, $02
	smpsFMvoice		$02
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterVol		$FD
	;!@ dc.b	nB2, $05, $04, $09, nRst, $06, nC3, $05
	dc.b	nB2, $05, nB2, $04, nB2, $09, nRst, $06, nC3, $05
	;!@ dc.b	$04, $09, nRst, $06, nCs3, $05, $04, $03
	dc.b	nC3, $04, nC3, $09, nRst, $06, nCs3, $05, nCs3, $04, nCs3, $03
	smpsAlterVol		$FD
	smpsJump		HDNR1S_Jump3, Target

HDNR1S_FM5:
	;!@ sModOff
	smpsPan		panCenter
	;!@ sModOff
	;!@ sModOff
	;!@ sModOff
	;!@ sModOff
	;!@ sModOff
	smpsFMvoice		$02
	;!@ sModOff
	;!@ sModOff
	dc.b	nRst, $06

HDNR1S_Loop87:
	dc.b	nBb5, $09, nRst, $03, nE5, $09, nRst, $03
	dc.b	nCs5, $09, nRst, $03, nBb4, $09, nRst, $03
	smpsLoop		$00, $02, HDNR1S_Loop87, Target
	dc.b	nCs6, $09, nRst, $03, nBb5, $09, nRst, $03
	dc.b	nG5, $09, nRst, $03, nE5, $09, nRst, $03
	dc.b	nBb4, $06, nCs5, nEb4, nCs5, $07, nRst, $11
	smpsFMvoice		$04
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterVol		$0C
	;!@ dc.b	nD3	Questionable

HDNR1S_Loop88:
	;!@ dc.b	$03
	dc.b	nD3, $03
	smpsAlterVol		$F5
	;!@ dc.b	$03
	dc.b	nD3, $03
	smpsAlterVol		$0B
	smpsLoop		$00, $18, HDNR1S_Loop88, Target
	dc.b	nE3
	smpsAlterVol		$F5
	dc.b	$03
	smpsAlterVol		$0A
	;!@ dc.b	$03
	dc.b	nE3, $03
	smpsAlterVol		$F6
	;!@ dc.b	$03
	dc.b	nE3, $03
	smpsAlterVol		$0B
	;!@ dc.b	$03
	dc.b	nE3, $03
	smpsAlterVol		$F5
	;!@ dc.b	$03
	dc.b	nE3, $03
	smpsAlterVol		$0A
	;!@ dc.b	$03
	dc.b	nE3, $03
	smpsAlterVol		$F6
	;!@ dc.b	$03
	dc.b	nE3, $03
	smpsAlterVol		$FE
	;!@ dc.b	$03, nRst, $02, nE3, $03, nRst, $01, nE3
	dc.b	nE3, $03, nRst, $02, nE3, $03, nRst, $01, nE3
	dc.b	$03

HDNR1S_Jump4:
	dc.b	nRst, $06
	smpsFMvoice		$05
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterVol		$09

HDNR1S_Loop89:
	;!@ dc.b	nA2, $03, $02, nRst, $01, nA2, $02, nRst
	dc.b	nA2, $03, nA2, $02, nRst, $01, nA2, $02, nRst
	dc.b	$01
	smpsLoop		$00, $02, HDNR1S_Loop89, Target
	;!@ dc.b	nA2, $03, $02, nRst, $01, nA2, $03, $02
	dc.b	nA2, $03, nA2, $02, nRst, $01, nA2, $03, nA2, $02
	dc.b	nRst, $01, nA2, $02, nRst, $01, nC3, $03
	;!@ dc.b	$02, nRst, $01, nC3, $02, nRst, $01, nEb3
	dc.b	nC3, $02, nRst, $01, nC3, $02, nRst, $01, nEb3
	;!@ dc.b	$03, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b	$03, nEb3, $02, nRst, $01, nD3, $03, nD3, $02, nRst
	;!@ dc.b	$01, nD3, $03, $02, nRst, $01, nD3, $02
	dc.b	$01, nD3, $03, nD3, $02, nRst, $01, nD3, $02
	;!@ dc.b	$01, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b	nD3, $01, nD3, $02, nRst, $01, nD3, $03, nD3, $02, nRst
	;!@ dc.b	$01, nE3, $03, $02, nRst, $01, nE3, $03
	dc.b	$01, nE3, $03, nE3, $02, nRst, $01, nE3, $03
	;!@ dc.b	$02, nRst, $01, nE3, $02, nRst, $01, nE3
	dc.b	nE3, $02, nRst, $01, nE3, $02, nRst, $01, nE3
	;!@ dc.b	$02, nRst, $01, nE3, $03, $02
	dc.b	$02, nRst, $01, nE3, $03, nE3, $02

HDNR1S_Loop90:
	;!@ dc.b	nRst, $01, nD3, $03, $02, nRst, $01, nD3
	dc.b	nRst, $01, nD3, $03, nD3, $02, nRst, $01, nD3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop90, Target
	;!@ dc.b	nRst, $01, nD3, $03, $02
	dc.b	nRst, $01, nD3, $03, nD3, $02

HDNR1S_Loop91:
	;!@ dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3
	dc.b	nRst, $01, nC3, $03, nC3, $02, nRst, $01, nC3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop91, Target
	;!@ dc.b	nRst, $01, nC3, $03, $02
	dc.b	nRst, $01, nC3, $03, nC3, $02

HDNR1S_Loop92:
	;!@ dc.b	nRst, $01, nBb2, $03, $02, nRst, $01, nBb2
	dc.b	nRst, $01, nBb2, $03, nBb2, $02, nRst, $01, nBb2
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop92, Target
	;!@ dc.b	nRst, $01, nBb2, $03, $02
	dc.b	nRst, $01, nBb2, $03, nBb2, $02

HDNR1S_Loop93:
	;!@ dc.b	nRst, $01, nE3, $03, $02, nRst, $01, nE3
	dc.b	nRst, $01, nE3, $03, nE3, $02, nRst, $01, nE3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop93, Target
	;!@ dc.b	nRst, $01, nE3, $03, $02, nRst, $01
	dc.b	nRst, $01, nE3, $03, nE3, $02, nRst, $01
	smpsAlterVol		$01

HDNR1S_Loop94:
	;!@ dc.b	nA2, $03, $02, nRst, $01, nA2, $02, nRst
	dc.b	nA2, $03, nA2, $02, nRst, $01, nA2, $02, nRst
	dc.b	$01
	smpsLoop		$00, $02, HDNR1S_Loop94, Target
	;!@ dc.b	nA2, $03, $02, nRst, $01, nA2, $03, $02
	dc.b	nA2, $03, nA2, $02, nRst, $01, nA2, $03, nA2, $02
	dc.b	nRst, $01, nA2, $02, nRst, $01, nC3, $03
	;!@ dc.b	$02, nRst, $01, nC3, $02, nRst, $01, nEb3
	dc.b	nC3, $02, nRst, $01, nC3, $02, nRst, $01, nEb3
	;!@ dc.b	$03, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b	$03, nEb3, $02, nRst, $01, nD3, $03, nD3, $02, nRst
	;!@ dc.b	$01, nD3, $03, $02, nRst, $01, nD3, $02
	dc.b	$01, nD3, $03, nD3, $02, nRst, $01, nD3, $02
	;!@ dc.b	$01, $02, nRst, $01, nD3, $03, $02, nRst
	dc.b	nD3, $01, nD3, $02, nRst, $01, nD3, $03, nD3, $02, nRst
	;!@ dc.b	$01, nE3, $03, $02, nRst, $01, nE3, $03
	dc.b	$01, nE3, $03, nE3, $02, nRst, $01, nE3, $03
	;!@ dc.b	$02, nRst, $01, nE3, $02, nRst, $01, nE3
	dc.b	nE3, $02, nRst, $01, nE3, $02, nRst, $01, nE3
	;!@ dc.b	$02, nRst, $01, nE3, $03, $02
	dc.b	$02, nRst, $01, nE3, $03, nE3, $02

HDNR1S_Loop95:
	;!@ dc.b	nRst, $01, nD3, $03, $02, nRst, $01, nD3
	dc.b	nRst, $01, nD3, $03, nD3, $02, nRst, $01, nD3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop95, Target
	;!@ dc.b	nRst, $01, nD3, $03, $02
	dc.b	nRst, $01, nD3, $03, nD3, $02

HDNR1S_Loop96:
	;!@ dc.b	nRst, $01, nC3, $03, $02, nRst, $01, nC3
	dc.b	nRst, $01, nC3, $03, nC3, $02, nRst, $01, nC3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop96, Target
	;!@ dc.b	nRst, $01, nC3, $03, $02
	dc.b	nRst, $01, nC3, $03, nC3, $02

HDNR1S_Loop97:
	;!@ dc.b	nRst, $01, nBb2, $03, $02, nRst, $01, nBb2
	dc.b	nRst, $01, nBb2, $03, nBb2, $02, nRst, $01, nBb2
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop97, Target
	;!@ dc.b	nRst, $01, nBb2, $03, $02
	dc.b	nRst, $01, nBb2, $03, nBb2, $02

HDNR1S_Loop98:
	;!@ dc.b	nRst, $01, nD3, $03, $02, nRst, $01, nD3
	dc.b	nRst, $01, nD3, $03, nD3, $02, nRst, $01, nD3
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop98, Target
	;!@ dc.b	nRst, $01, nD3, $03, $02, nRst, $01
	dc.b	nRst, $01, nD3, $03, nD3, $02, nRst, $01
	smpsAlterVol		$FC
	;!@ dc.b	nD3, $02, $01, $02, nRst, $04
	dc.b	nD3, $02, nD3, $01, nD3, $02, nRst, $04
	smpsAlterVol		$06
	dc.b	nD3, $03, nRst, nD3, nRst
	smpsAlterVol		$FA
	;!@ dc.b	nD3, $02, nRst, $04, nD3
	dc.b	nD3, $02, nRst, $04

HDNR1S_Loop99:
	;!@ dc.b	$02, nRst, $07, nD3, $02, $01 Questionable
	dc.b	nD3, $02, nRst, $07, nD3, $02, nD3, $01
	smpsLoop		$00, $02, HDNR1S_Loop99, Target
	;!@ dc.b	$02, nRst, $01
	dc.b	nD3, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nD3, $03, nRst, nD3, nRst, $06
	smpsAlterVol		$FA
	dc.b	nD3, $02, nRst, $04, nD3, $02, nRst, $07

HDNR1S_Loop100:
	;!@ dc.b	nD3, $02, $01, $02, nRst, $01
	dc.b	nD3, $02, nD3, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop100, Target
	;!@ dc.b	nC3, $02, $01, $02, nRst, $01
	dc.b	nC3, $02, nC3, $01, nC3, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nC3, $03, nRst, nC3, nRst, $06
	smpsAlterVol		$FA
	dc.b	nC3, $02, nRst, $04, nC3, $02, nRst, $07

HDNR1S_Loop101:
	;!@ dc.b	nC3, $02, $01, $02, nRst, $01
	dc.b	nC3, $02, nC3, $01, nC3, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop101, Target
	;!@ dc.b	nCs3, $02, $01, $02, nRst, $01
	dc.b	nCs3, $02, nCs3, $01, nCs3, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nCs3, $03, nRst, nCs3, nRst
	smpsAlterVol		$FA
	dc.b	nCs3, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b	nD3, $02, nRst, $03, nD3, $01, nRst, $03
	dc.b	nD3, $06, nRst, $09
	smpsAlterVol		$FD

HDNR1S_Loop102:
	;!@ dc.b	nA2, $03, $02, nRst, $01, nA2
	dc.b	nA2, $03, nA2, $02, nRst, $01

HDNR1S_Loop103:
	dc.b	nA2, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop102, Target

HDNR1S_Loop104:
	dc.b	nA2, $03
	smpsLoop		$01, $02, HDNR1S_Loop103, Target
	;!@ dc.b	$02, nRst, $01, nA2, $02, nRst, $01
	dc.b	nA2, $02, nRst, $01, nA2, $02, nRst, $01
	smpsLoop		$02, $07, HDNR1S_Loop104, Target
	;!@ dc.b	nA2, $03
	dc.b	nA2, $03, nA2, $02

;!@ HDNR1S_Loop106:
	;!@ dc.b	$02

HDNR1S_Loop105:
	;!@ dc.b	nRst, $01, nC2, $03, $02, nRst, $01, nC2
	dc.b	nRst, $01, nC2, $03, nC2, $02, nRst, $01, nC2
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_Loop105, Target
	;!@ dc.b	nRst, $01, nC2, $03
	dc.b	nRst, $01, nC2, $03, nC2, $02
	;!@ smpsLoop		$01, $08, HDNR1S_Loop106, Target
	smpsLoop		$01, $08, HDNR1S_Loop105, Target
	;!@ dc.b	$02, nRst, $01
	dc.b	nC2, $02, nRst, $01
	smpsAlterVol		$03
	;!@ dc.b	nD3, $02, $01, $02, nRst, $04
	dc.b	nD3, $02, nD3, $01, nD3, $02, nRst, $04
	smpsAlterVol		$06
	dc.b	nD3, $03, nRst, nD3, nRst
	smpsAlterVol		$FA
	;!@ dc.b	nD3, $02, nRst, $04, nD3
	dc.b	nD3, $02, nRst, $04

HDNR1S_Loop107:
	;!@ dc.b	$02, nRst, $07, nD3, $02, $01
	dc.b	nD3, $02, nRst, $07, nD3, $02, nD3, $01
	smpsLoop		$00, $02, HDNR1S_Loop107, Target
	;!@ dc.b	$02, nRst, $01
	dc.b	nD3, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nD3, $03, nRst, nD3, nRst, $06
	smpsAlterVol		$FA
	dc.b	nD3, $02, nRst, $04, nD3, $02, nRst, $07

HDNR1S_Loop108:
	;!@ dc.b	nD3, $02, $01, $02, nRst, $01
	dc.b	nD3, $02, nD3, $01, nD3, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop108, Target
	;!@ dc.b	nC3, $02, $01, $02, nRst, $01
	dc.b	nC3, $02, nC3, $01, nC3, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nC3, $03, nRst, nC3, nRst, $06
	smpsAlterVol		$FA
	dc.b	nC3, $02, nRst, $04, nC3, $02, nRst, $07

HDNR1S_Loop109:
	;!@ dc.b	nC3, $02, $01, $02, nRst, $01
	dc.b	nC3, $02, nC3, $01, nC3, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop109, Target
	;!@ dc.b	nCs3, $02, $01, $02, nRst, $01
	dc.b	nCs3, $02, nCs3, $01, nCs3, $02, nRst, $01
	smpsAlterVol		$06
	dc.b	nCs3, $03, nRst, nCs3, nRst
	smpsAlterVol		$FA
	dc.b	nCs3, $02, nRst, $01, nCs3, $02, nRst, $01
	dc.b	nD3, $02, nRst, $03, nD3, $01, nRst, $03
	;!@ dc.b	nD3, $06, nRst
	dc.b	nD3, $06

HDNR1S_Loop110:
	;!@ dc.b	$4F
	dc.b	nRst, $4F	
	smpsLoop		$00, $07, HDNR1S_Loop110, Target
	;!@ dc.b	$02
	dc.b	nRst, $02
	smpsFMvoice		$02
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterVol		$FD
	;!@ dc.b	nB3, $05, $04, $09, nRst, $06, nC4, $05
	dc.b	nB3, $05, nB3, $04, nB3, $09, nRst, $06, nC4, $05
	;!@ dc.b	$04, $09, nRst, $06, nCs4, $05, $04, $03
	dc.b	nC4, $04, nC4, $09, nRst, $06, nCs4, $05, nCs4, $04, nCs4, $03
	smpsAlterVol		$FD
	smpsJump		HDNR1S_Jump4, Target

HDNR1S_FM6:
	smpsFMvoice		$03
	;!@ ssMod68k	$00, $01, $01, $04
	smpsPan		panCenter
	;!@ sModOn
	;!@ dc.b	nRst, $3F, $3F, $3F, $3F, $3F, $3F
	dc.b	nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F

HDNR1S_Jump5:
	;!@ Questionable
	; smpsAlterNote	$00
	; dc.b	nRst, $40, $40, $40, $40, $40, $40
	; smpsAlterNote	$E5
	; dc.b	$01
	; smpsAlterNote	$E8
	; dc.b	$01
	; smpsAlterNote	$E9
	; dc.b	$01
	; smpsAlterNote	$EA
	; dc.b	$01
	; smpsAlterNote	$EB
	; dc.b	$01
	; smpsAlterNote	$ED
	; dc.b	$01
	; smpsAlterNote	$EE
	; dc.b	$01
	; smpsAlterNote	$F0
	; dc.b	$01
	; smpsAlterNote	$F1
	; dc.b	$01
	; smpsAlterNote	$E4
	; dc.b	$01
	; smpsAlterNote	$E6
	; dc.b	$01
	; smpsAlterNote	$E7
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$30, $30, $55, $0B, $55, $08
	; smpsAlterNote	$12
	; dc.b	$01
	; smpsAlterNote	$06
	; dc.b	$01
	; smpsAlterNote	$FC
	; dc.b	$01
	; smpsAlterNote	$FF
	; dc.b	$2D
	; smpsAlterNote	$18
	; dc.b	$01
	; smpsAlterNote	$0D
	; dc.b	$01
	; smpsAlterNote	$0A
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$2D
	; smpsAlterNote	$0C
	; dc.b	$01
	; smpsAlterNote	$07
	; dc.b	$01
	; smpsAlterNote	$05
	; dc.b	$01
	; smpsAlterNote	$FF
	; dc.b	$55, $08
	; smpsAlterNote	$06
	; dc.b	$01
	; smpsAlterNote	$FF
	; dc.b	$01
	; smpsAlterNote	$F4
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$2D
	; smpsAlterNote	$EF
	; dc.b	$01
	; smpsAlterNote	$0C
	; dc.b	$01
	; smpsAlterNote	$FD
	; dc.b	$01
	; smpsAlterNote	$FF
	; dc.b	$2D
	; smpsAlterNote	$07
	; dc.b	$01
	; smpsAlterNote	$FD
	; dc.b	$01
	; smpsAlterNote	$EC
	; dc.b	$01
	; smpsAlterNote	$FF	
	; dc.b	$55, $55, $1C, nG3, $02, nRst, $0A, nG3
	
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsAlterNote	$E5
	dc.b	nRst, $01
	smpsAlterNote	$E8
	dc.b	nRst, $01
	smpsAlterNote	$E9
	dc.b	nRst, $01
	smpsAlterNote	$EA
	dc.b	nRst, $01
	smpsAlterNote	$EB
	dc.b	nRst, $01
	smpsAlterNote	$ED
	dc.b	nRst, $01
	smpsAlterNote	$EE
	dc.b	nRst, $01
	smpsAlterNote	$F0
	dc.b	nRst, $01
	smpsAlterNote	$F1
	dc.b	nRst, $01
	smpsAlterNote	$E4
	dc.b	nRst, $01
	smpsAlterNote	$E6
	dc.b	nRst, $01
	smpsAlterNote	$E7
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $30, nRst, $30, nRst, $55, nRst, $0B, nRst, $55, nRst, $08
	smpsAlterNote	$12
	dc.b	nRst, $01
	smpsAlterNote	$06
	dc.b	nRst, $01
	smpsAlterNote	$FC
	dc.b	nRst, $01
	smpsAlterNote	$FF
	dc.b	nRst, $2D
	smpsAlterNote	$18
	dc.b	nRst, $01
	smpsAlterNote	$0D
	dc.b	nRst, $01
	smpsAlterNote	$0A
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $2D
	smpsAlterNote	$0C
	dc.b	nRst, $01
	smpsAlterNote	$07
	dc.b	nRst, $01
	smpsAlterNote	$05
	dc.b	nRst, $01
	smpsAlterNote	$FF
	dc.b	nRst, $55, nRst, $08
	smpsAlterNote	$06
	dc.b	nRst, $01
	smpsAlterNote	$FF
	dc.b	nRst, $01
	smpsAlterNote	$F4
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $2D
	smpsAlterNote	$EF
	dc.b	nRst, $01
	smpsAlterNote	$0C
	dc.b	nRst, $01
	smpsAlterNote	$FD
	dc.b	nRst, $01
	smpsAlterNote	$FF
	dc.b	nRst, $2D
	smpsAlterNote	$07
	dc.b	nRst, $01
	smpsAlterNote	$FD
	dc.b	nRst, $01
	smpsAlterNote	$EC
	dc.b	nRst, $01
	smpsAlterNote	$FF	
	dc.b	nRst, $55, nRst, $55, nRst, $1C, nG3, $02, nRst, $0A, nG3
	
	dc.b	$03, nRst, nAb3, nRst, $06, nAb3, $03, nRst
	dc.b	$06, nAb3, $03, nRst, $09, nBb3, $02, nRst
	dc.b	$0A, nBb3, $03, nRst, nC4, nRst, $06, nBb3
	dc.b	$03, nRst, nBb3, $02, nRst, $01, nBb3, $03
	;!@ dc.b	$02, nRst, $07, nC4, $02, nRst, $0A, nC4
	dc.b	nBb3, $02, nRst, $07, nC4, $02, nRst, $0A, nC4
	dc.b	$03, nRst, nEb4, nRst, nEb4, $02, nRst, $0A
	dc.b	nEb4, $03, nRst, nF4, nRst, $0F, nF4, $03
	dc.b	nRst, nF4, nRst, $0F, nF4, $02, nRst, $0A
	dc.b	nG3, $02, nRst, $0A, nG3, $03, nRst, nAb3
	dc.b	nRst, $06, nAb3, $03, nRst, $06, nAb3, $03
	dc.b	nRst, $09, nBb3, $02, nRst, $0A, nBb3, $03
	;!@ dc.b	nRst, nC4, nRst, $0F, nBb3, $03, $02, nRst
	dc.b	nRst, nC4, nRst, $0F, nBb3, $03, nBb3, $02, nRst
	dc.b	$07, nC4, $02, nRst, $0A, nC4, $03, nRst
	dc.b	nBb3, nRst, $06, nBb3, $03, nRst, $06, nBb3
	dc.b	$02, nRst, $04, nCs4, $03, nRst, nCs4, $02
	dc.b	nRst, $04, nBb3, $03, nRst, nBb3, $02, nRst
	;!@ dc.b	$04, nC4, $03, nRst, $55, $55, $4F
	dc.b	$04, nC4, $03, nRst, $55, nRst, $55, nRst, $4F
	smpsJump		HDNR1S_Jump5, Target

HDNR1S_PSG1:
	;!@ ssMod68k	$00, $02, $00, $02
	;!@ sModOn
	smpsPSGvoice	PSGVoi
	smpsAlterNote	$01
	;!@ dc.b	nRst, $55, $55, $1C, nF1, $18, nE1, $0C
	dc.b	nRst, $55, nRst, $55, nRst, $1C, nF1, $18, nE1, $0C
	dc.b	nC1, nD1, nA1, nD2, nE2, nF2, $18, nG2
	dc.b	nE2
	smpsSetVol	$02
	dc.b	$03, nRst, $02, nE2, $01, nRst, $03, nE2
	dc.b	$02, nRst, $01

HDNR1S_Jump6:
	smpsAlterNote	$00
	smpsSetVol	$FE
	dc.b	nF1, $03, nA1, nC2, nF2, nE2, $18, nF2
	dc.b	$0C, nC2, $03, nA1, nC2, nD2, $0C, nA2
	dc.b	$06, nG2, $03, nRst, nG2, $0F, nE2, $03
	dc.b	nRst, $02, nD2, $03, nRst, $01, nC2, $03
	dc.b	nBb1, $0C, nD2, $03, nRst, $02, nF2, $03
	dc.b	nRst, $01, nG2, $03, nC2, $12, nD2, $03
	dc.b	nE2

HDNR1S_Loop111:
	dc.b	nG2, nRst, $02, nE2, $03, nRst, $01, nD2
	dc.b	$03
	smpsLoop		$00, $02, HDNR1S_Loop111, Target
	dc.b	nE2, $0C, nC1, $03, nE1, nG1, nC2, nE2
	dc.b	$18, nF2, $0C, nC2, $03, nA1, nC2, nD2
	dc.b	$0C, nA2, $06, nG2, $03, nRst, nG2, $0F
	dc.b	nCs2, $03, nRst, $02, nD2, $03, nRst, $01
	dc.b	nE2, $03, nF2, $0F, nD2, $03, nE2, nF2
	dc.b	nG2, $0C, $03, nRst, $02, nG2, $03, nRst
	dc.b	$01, nA2, $03, nBb2, $06, nG2, nE2, $09
	dc.b	nCs2, $03, nD2, $0C
	smpsAlterNote	$06
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nC2
	smpsAlterNote	$07
	dc.b	smpsNoAttack, nB1
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote	$07
	dc.b	smpsNoAttack, nA1, smpsNoAttack, nAb1
	smpsAlterNote	$08
	dc.b	smpsNoAttack, nG1, smpsNoAttack, nFs1, smpsNoAttack, nF1
	smpsAlterNote	$09
	dc.b	smpsNoAttack, nE1
	smpsAlterNote	$08
	dc.b	smpsNoAttack, nEb1
	smpsAlterNote	$00
	smpsSetVol	$01

HDNR1S_Loop112:
	dc.b	nD2, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b	nD2, $02, nRst, $01, nE2, $06, nF2, $02
	dc.b	nRst, $01, nE2, $02, nRst, $01, nD2, $02
	dc.b	nRst, $19
	smpsLoop		$00, $03, HDNR1S_Loop112, Target
	dc.b	nCs2, $02, nRst, $01, nA1, $02, nRst, $01
	dc.b	nCs2, $02, nRst, $01, nE2, $06, nG2, $02
	dc.b	nRst, $01, nE2, $02, nRst, $01, nCs2, $02
	dc.b	nRst, $01, nD2, $02, nRst, $03, nD2, $01
	dc.b	nRst, $03, nD2, nD2, $06, nRst, nE2, $02
	dc.b	nRst, $07, nFs2, $02, nRst, $07, nD2, $02
	dc.b	nRst, $04, nAb1, $03, nAb2, nA1, nA2, nB1
	dc.b	nB2, nE2, nE1, nF2, $02, nRst, $07, nFs2
	dc.b	$02, nRst, $07, nD2, $02, nRst, $04, nE2
	dc.b	$02, nFs2, $01, nAb2, $02, nA2, $01, nFs2
	dc.b	$02, nAb2, $01, nA2, $02, nB2, $01, nAb2
	dc.b	$02, nA2, $01, nB2, $02, nD3, $01, nE3
	dc.b	$03
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nD3, $01
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote	$00
	dc.b	nE2, $02, nRst, $07, nFs2, $02, nRst, $07
	dc.b	nD2, $02, nRst, $01, nAb1, $03, nAb2, nA2
	dc.b	nA1, nB2, nA2, nA1, nE2
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nD2, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote	$00
	dc.b	nF2, $02, nRst, $07, nFs2, $02, nRst, $07
	dc.b	nD2, $02, nRst, $04, nF3, $02, nD3, $01
	dc.b	nB2, $02, nA2, $01, nD3, $02, nB2, $01
	dc.b	nA2, $02, nAb2, $01, nA2, $02, nAb2, $01
	dc.b	nFs2, $02, nF2, $01, nD2, $03
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nC2, $01
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nAb1
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nE1
	smpsAlterNote	$01
	dc.b	nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b	nFs2, $02, nRst, $04, nB1, $03, nB2, nC2
	dc.b	nC3, nD2, nD3, nG2, nG1, nAb2, $02, nRst
	dc.b	$07, nA2, $02, nRst, $07, nFs2, $02, nRst
	dc.b	$04, nG2, $02, nAb2, $01, nB2, $02, nC3
	dc.b	$01, nAb2, $02, nB2, $01, nC3, $02, nD3
	dc.b	$01, nB2, $02, nC3, $01, nD3, $02, nF3
	dc.b	$01, nG3, $03
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nF3, $01, smpsNoAttack, nCs3
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nA2
	smpsAlterNote	$00
	dc.b	nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b	nFs2, $02, nRst, $01, nB1, $03, nB2, nC3
	dc.b	nC2, nD3, nC3, nC2, nG2
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nFs2, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nA1
	smpsAlterNote	$00
	dc.b	nAb2, $02, nRst, $07, nA2, $02, nRst, $07
	dc.b	nFs2, $02, nRst, $04, nAb3, $02, nFs3, $01
	dc.b	nF3, $02, nD3, $01, nF3, $02, nD3, $01
	dc.b	nC3, $02, nB2, $01, nC3, $02, nB2, $01
	dc.b	nAb2, $02, nFs2, $01, nE2, $03
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nD2, $01
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote	$00
	smpsSetVol	$01
	dc.b	nD1, $0C, nE1, nF1, nG1, $06, nA1, nD1
	dc.b	$0C, nE1, nF1, nBb1, $06, nA1, nD1, $0C
	dc.b	nE1, nF1, nG1, $06, nA1, nG1, $0C, nE1
	;!@ dc.b	nD1, nRst
	dc.b	nD1

HDNR1S_Loop113:
	;! dc.b	$4E
	dc.b	nRst, $4E
	smpsLoop		$00, $08, HDNR1S_Loop113, Target
	smpsJump		HDNR1S_Jump6, Target

HDNR1S_PSG2:
	;!@ ssMod68k	$00, $02, $00, $02
	;!@ sModOn
	smpsPSGvoice	PSGVoi
	;!@ dc.b	nRst, $55, $55, $1C, nD1, $02, $01
	;!@ dc.b	nRst, $55, nRst, $55, nRst, $1C, nD1, $02, nD1
	dc.b	nRst, $55, nRst, $55, nRst, $1C, nD1, $02

;!@! Questionable
HDNR1S_Loop115:
	;!@ dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	nD1, $02, nRst, $10, nD1, $02, nRst, $04, nD1

;!@! Questionable
HDNR1S_Loop114:
	;!@ dc.b	$02, nRst, $07, nD1, $02, $01
	dc.b	nD1, $02, nRst, $07, nD1, $02, nD1, $01
	smpsLoop		$00, $02, HDNR1S_Loop114, Target
	smpsLoop		$01, $02, HDNR1S_Loop115, Target
	;!@ dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	nD1, $02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	nD1, $02, nRst, $07, nD1, $02, nD1, $01, nD1, $02, nRst
	dc.b	$1F
	smpsSetVol	$FC
	dc.b	nG2, $03, nRst, $02, nG2, $01, nRst, $03
	dc.b	nG2, $02, nRst, $01

HDNR1S_Jump7:
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsSetVol	$03

HDNR1S_Loop116:
	;!@ dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	dc.b	nC0, $01, nRst, $01, nRst, $01, nC0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop116, Target
	dc.b	nC0, $02, nRst, $04
	smpsLoop		$01, $02, HDNR1S_Loop116, Target

HDNR1S_Loop117:
	;!@ dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	dc.b	nD0, $01, nRst, $01, nRst, $01, nD0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop117, Target
	dc.b	nD0, $02, nRst, $04

HDNR1S_Loop118:
	;!@ dc.b	nE0, $01, nRst, nRst, nE0, nRst, $05
	dc.b	nE0, $01, nRst, $01, nRst, $01, nE0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop118, Target
	dc.b	nE0, $02, nRst, $04

HDNR1S_Loop119:
	;!@ dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	dc.b	nD0, $01, nRst, $01, nRst, $01, nD0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop119, Target
	dc.b	nD0, $02

HDNR1S_Loop121:
	dc.b	nRst, $04

HDNR1S_Loop120:
	;!@ dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	dc.b	nC0, $01, nRst, $01, nRst, $01, nC0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop120, Target
	dc.b	nC0, $02
	smpsLoop		$01, $02, HDNR1S_Loop121, Target
	dc.b	nRst, $04

HDNR1S_Loop122:
	;!@ dc.b	nE0, $01, nRst, nRst, nE0, nRst, $05
	dc.b	nE0, $01, nRst, $01, nRst, $01, nE0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop122, Target
	dc.b	nE0, $02

HDNR1S_Loop124:
	dc.b	nRst, $04

HDNR1S_Loop123:
	;!@ dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	dc.b	nC0, $01, nRst, $01, nRst, $01, nC0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop123, Target
	dc.b	nC0, $02
	smpsLoop		$01, $02, HDNR1S_Loop124, Target
	dc.b	nRst, $04

HDNR1S_Loop125:
	;!@ dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	dc.b	nD0, $01, nRst, $01, nRst, $01, nD0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop125, Target
	dc.b	nD0, $02, nRst, $04

HDNR1S_Loop126:
	;!@ dc.b	nE0, $01, nRst, nRst, nE0, nRst, $05
	dc.b	nE0, $01, nRst, $01, nRst, $01, nE0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop126, Target
	dc.b	nE0, $02, nRst, $04

HDNR1S_Loop127:
	;!@ dc.b	nD0, $01, nRst, nRst, nD0, nRst, $05
	dc.b	nD0, $01, nRst, $01, nRst, $01, nD0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop127, Target
	dc.b	nD0, $02

HDNR1S_Loop129:
	dc.b	nRst, $04

HDNR1S_Loop128:
	;!@ dc.b	nC0, $01, nRst, nRst, nC0, nRst, $05
	dc.b	nC0, $01, nRst, $01, nRst, $01, nC0, $01, nRst, $05
	smpsLoop		$00, $02, HDNR1S_Loop128, Target
	dc.b	nC0, $02
	smpsLoop		$01, $02, HDNR1S_Loop129, Target
	;!@ dc.b	nRst, $04, nC0, $01, nRst, nRst, nC0, nRst
	dc.b	nRst, $04, nC0, $01, nRst, $01, nRst, $01, nC0, $01, nRst
	dc.b	$05
	smpsAlterNote	$7F
	;!@ dc.b	nC0, $01, nRst, nRst, nC0, nRst, $01, $01
	dc.b	nC0, $01, nRst, $01, nRst, $01, nC0, $01, nRst, $01, nRst, $01
	;!@ dc.b	$01, $01, $01, nC0, smpsNoAttack, $01
	dc.b	nRst, $01, nRst, $01, nRst, $01, nC0, smpsNoAttack, $01
	smpsAlterNote	$12
	dc.b	nRst
	smpsAlterNote	$00
	smpsSetVol	$FE
	;!@ dc.b	nD1, $02, $01, $02, nRst, $10, nD1, $02
	dc.b	nD1, $02, nD1, $01, nD1, $02, nRst, $10, nD1, $02
	;!@ dc.b	nRst, $04, nD1
	dc.b	nRst, $04

HDNR1S_Loop130:
	;!@ dc.b	$02, nRst, $07, nD1, $02, $01
	dc.b	nD1, $02, nRst, $07, nD1, $02, nD1, $01
	smpsLoop		$00, $02, HDNR1S_Loop130, Target
	;!@ dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	nD1, $02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	$02, nRst, $07

HDNR1S_Loop131:
	;!@ dc.b	nD1, $02, $01, $02, nRst, $01
	dc.b	nD1, $02, nD1, $01, nD1, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop131, Target
	;!@ dc.b	nC1, $02, $01, $02, nRst, $10, nC1, $02
	dc.b	nC1, $02, nC1, $01, nC1, $02, nRst, $10, nC1, $02
	dc.b	nRst, $04, nC1, $02, nRst, $07

HDNR1S_Loop132:
	;!@ dc.b	nC1, $02, $01, $02, nRst, $01
	dc.b	nC1, $02, nC1, $01, nC1, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop132, Target
	;!@ dc.b	nCs1, $02, $01, $02, nRst, $0D, nCs1, $02
	dc.b	nCs1, $02, nCs1, $01, nCs1, $02, nRst, $0D, nCs1, $02
	dc.b	nRst, $01, nCs1, $02, nRst, $01, nD1, $02
	dc.b	nRst, $03, nD1, $01, nRst, $03, nD1, $06
	;!@ dc.b	nRst, $09, $55, $08
	dc.b	nRst, $09, nRst, $55, nRst, $08
	
	;!@ Questionable
	; smpsAlterNote	$F7
	; dc.b	$01
	; smpsAlterNote	$FB
	; dc.b	$01
	; smpsAlterNote	$02
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$2D
	; smpsAlterNote	$F4
	; dc.b	$01
	; smpsAlterNote	$F6
	; dc.b	$01
	; smpsAlterNote	$F9
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$2D
	; smpsAlterNote	$FA
	; dc.b	$01
	; smpsAlterNote	$FB
	; dc.b	$01
	; smpsAlterNote	$FD
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$55, $08
	; smpsAlterNote	$FD
	; dc.b	$01
	; smpsAlterNote	$01
	; dc.b	$01
	; smpsAlterNote	$07
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$2D
	; smpsAlterNote	$07
	; dc.b	$01
	; smpsAlterNote	$F6
	; dc.b	$01
	; smpsAlterNote	$02
	; dc.b	$01
	; smpsAlterNote	$00
	; dc.b	$2D
	; smpsAlterNote	$FC
	; dc.b	$01
	; smpsAlterNote	$02
	; dc.b	$01
	; smpsAlterNote	$0C
	; dc.b	$01
	
	smpsAlterNote	$F7
	dc.b	nRst, $01
	smpsAlterNote	$FB
	dc.b	nRst, $01
	smpsAlterNote	$02
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $2D
	smpsAlterNote	$F4
	dc.b	nRst, $01
	smpsAlterNote	$F6
	dc.b	nRst, $01
	smpsAlterNote	$F9
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $2D
	smpsAlterNote	$FA
	dc.b	nRst, $01
	smpsAlterNote	$FB
	dc.b	nRst, $01
	smpsAlterNote	$FD
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	$55, $08
	smpsAlterNote	$FD
	dc.b	nRst, $01
	smpsAlterNote	$01
	dc.b	nRst, $01
	smpsAlterNote	$07
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $2D
	smpsAlterNote	$07
	dc.b	nRst, $01
	smpsAlterNote	$F6
	dc.b	nRst, $01
	smpsAlterNote	$02
	dc.b	nRst, $01
	smpsAlterNote	$00
	dc.b	nRst, $2D
	smpsAlterNote	$FC
	dc.b	nRst, $01
	smpsAlterNote	$02
	dc.b	nRst, $01
	smpsAlterNote	$0C
	dc.b	nRst, $01
	
	smpsAlterNote	$00
	;!@ dc.b	nD1, $02, $01, $02, nRst, $10, nD1, $02
	dc.b	nD1, $02, nD1, $01, nD1, $02, nRst, $10, nD1, $02
	;!@ dc.b	nRst, $04, nD1
	dc.b	nRst, $04

HDNR1S_Loop133:
	;!@ dc.b	$02, nRst, $07, nD1, $02, $01
	dc.b	nD1, $02, nRst, $07, nD1, $02, nD1, $01
	smpsLoop		$00, $02, HDNR1S_Loop133, Target
	;!@ dc.b	$02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	nD1, $02, nRst, $10, nD1, $02, nRst, $04, nD1
	dc.b	$02, nRst, $07

HDNR1S_Loop134:
	;!@ dc.b	nD1, $02, $01, $02, nRst, $01
	dc.b	nD1, $02, nD1, $01, nD1, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop134, Target
	;!@ dc.b	nC1, $02, $01, $02, nRst, $10, nC1, $02
	dc.b	nC1, $02, nC1, $01, nC1, $02, nRst, $10, nC1, $02
	dc.b	nRst, $04, nC1, $02, nRst, $07

HDNR1S_Loop135:
	;!@ dc.b	nC1, $02, $01, $02, nRst, $01
	dc.b	nC1, $02, nC1, $01, nC1, $02, nRst, $01
	smpsLoop		$00, $02, HDNR1S_Loop135, Target
	;!@ dc.b	nCs1, $02, $01, $02, nRst, $0D, nCs1, $02
	dc.b	nCs1, $02, nCs1, $01, nCs1, $02, nRst, $0D, nCs1, $02
	dc.b	nRst, $01, nCs1, $02, nRst, $01, nD1, $02
	dc.b	nRst, $03, nD1, $01, nRst, $03, nD1, $06
	dc.b	nRst, $09
	smpsSetVol	$02
	dc.b	nD1, $03, nRst
	smpsSetVol	$FD
	dc.b	nG1, $06, nAb1, nBb1, nC2
	smpsSetVol	$03
	dc.b	nEb1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b	nC2, $0F
	smpsSetVol	$03
	dc.b	nF1, $03, nRst
	smpsSetVol	$FD
	dc.b	nD2, $06, nC2, nBb1, nC2, $18
	smpsSetVol	$03
	dc.b	nG1, $03, nRst
	smpsSetVol	$FD
	dc.b	nEb2, $06, nD2, nBb1, nC2, $0F
	smpsSetVol	$03
	dc.b	nAb1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b	nC2, $03, nD2, nEb2, $18, nD2
	smpsSetVol	$03
	dc.b	nD1, $03, nRst
	smpsSetVol	$FD
	dc.b	nD2, $06, nEb2, nD2, nC2
	smpsSetVol	$03
	dc.b	nEb1, $02, nRst, $01
	smpsSetVol	$FD
	dc.b	nAb1, $0F
	smpsSetVol	$03
	dc.b	nF1, $03, nRst
	smpsSetVol	$FD
	dc.b	nBb1, $06, nC2, nD2, nC2, $18
	smpsSetVol	$03
	dc.b	nG1, $03, nRst
	smpsSetVol	$FD
	dc.b	nEb2, $06, nD2, nBb1, nC2
	smpsSetVol	$03
	dc.b	nF1, $02, nRst, $01
	smpsSetVol	$FD
	;!@ dc.b	nF2, $09, $06, nAb2, nEb2, nD2, nF2, nC2
	dc.b	nF2, $09, nF2, $06, nAb2, nEb2, nD2, nF2, nC2
	dc.b	$0C, nRst, $03
	smpsSetVol	$03
	dc.b	nG1, $02, nRst, $01, nG1, $02, nRst, $04

HDNR1S_Loop136:
	;!@ dc.b	nC2, $03, $02, nRst, $10, nC2, $02, nRst
	dc.b	nC2, $03, nC2, $02, nRst, $10, nC2, $02, nRst
	;!@ dc.b	$04, nC2, $02, nRst, $07, nC2, $02, $01
	dc.b	$04, nC2, $02, nRst, $07, nC2, $02, nC2, $01
	;!@ dc.b	$02, nRst, $07
	dc.b	nC2, $02, nRst, $07
	smpsLoop		$00, $02, HDNR1S_Loop136, Target
	;!@ dc.b	nC2, $03, $02, nRst, $10, nC2, $02, nRst
	dc.b	nC2, $03, nC2, $02, nRst, $10, nC2, $02, nRst
	;!@ dc.b	$04, nC2, $02, nRst, $07, nC2, $02, $01
	dc.b	$04, nC2, $02, nRst, $07, nC2, $02, nC2, $01
	;!@ dc.b	$02, nRst, $55, $06
	dc.b	nC2, $02, nRst, $55, nRst, $06
	smpsSetVol	$FD
	smpsJump		HDNR1S_Jump7, Target

HDNR1S_PSG3:
	;!@ ssMod68k	$00, $02, $00, $02
	;!@ sModOn
	smpsPSGvoice	PSGVoi
	;!@ dc.b	nRst, $3F, $3F, $3F, $3F, $3F, $3F
	dc.b	nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F, nRst, $3F

HDNR1S_Jump8:
	;!@ Questionable
	smpsAlterNote	$00
	;!@ dc.b	nRst, $40, $40, $40, $40, $40, $40
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsAlterNote	$10
	dc.b	$01
	smpsAlterNote	$11
	dc.b	$01, $01
	smpsAlterNote	$12
	dc.b	$01
	smpsAlterNote	$13
	dc.b	$01
	smpsAlterNote	$14
	dc.b	$01
	smpsAlterNote	$16
	dc.b	$01, $01
	smpsAlterNote	$4A
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01, $01, $01
	smpsAlterNote	$00
	dc.b	$30, $30, $55, $0B, $55, $08
	smpsAlterNote	$F2
	dc.b	$01
	smpsAlterNote	$F9
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01
	smpsAlterNote	$00
	dc.b	$2D
	smpsAlterNote	$EF
	dc.b	$01
	smpsAlterNote	$F1
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01
	smpsAlterNote	$FF
	dc.b	$2D
	smpsAlterNote	$F7
	dc.b	$01
	smpsAlterNote	$F9
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01
	smpsAlterNote	$00
	dc.b	$55, $08
	smpsAlterNote	$FB
	dc.b	$01
	smpsAlterNote	$02
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01
	smpsAlterNote	$FF
	dc.b	$2D
	smpsAlterNote	$0C
	dc.b	$01
	smpsAlterNote	$F2
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01
	smpsAlterNote	$00
	dc.b	$2D
	smpsAlterNote	$FA
	dc.b	$01
	smpsAlterNote	$04
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$01
	smpsAlterNote	$00
	dc.b	$55, $55, $16, nG0, $03, nRst, nD1, $02
	dc.b	nRst, $01, nG0, $03, nRst, nG0, $02, nRst
	dc.b	$01, nD1, $03, nRst, nEb1

HDNR1S_Loop137:
	dc.b	nRst, nAb0, $02, nRst, $01, nEb1, $03
	smpsLoop		$00, $02, HDNR1S_Loop137, Target
	dc.b	nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0
	dc.b	$03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b	nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b	$03, nRst, nBb0, $02, nRst, $01, nF1, $03
	;!@ dc.b	$02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b	nF1, $02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b	nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b	$01, nG1, $03, nRst, nAb1, nRst, nAb1, $02
	dc.b	nRst, $01, nEb1, $03, nRst, nEb1, $02, nRst
	dc.b	$01, nAb1, $03, nRst, nBb1, nRst, nF1, $02
	dc.b	nRst, $01, nF1, $03, nRst, nF1, $02, nRst
	dc.b	$01, nBb1, $03, nRst, nBb1, nRst, nF1, $02
	dc.b	nRst, $01, nF1, $03, nRst, nF1, $02, nRst
	dc.b	$01, nBb1, $02, nRst, $01, nF1, $02, nRst
	dc.b	$01, nG0, $03, nRst, nD1, $02, nRst, $01
	dc.b	nG0, $03, nRst, nG0, $02, nRst, $01, nD1
	dc.b	$03, nRst, nEb1

HDNR1S_Loop138:
	dc.b	nRst, nAb0, $02, nRst, $01, nEb1, $03
	smpsLoop		$00, $02, HDNR1S_Loop138, Target
	dc.b	nRst, nBb0, nRst, nF1, $02, nRst, $01, nBb0
	dc.b	$03, nRst, nBb0, $02, nRst, $01, nF1, $03
	dc.b	nRst, nG1, nRst, nC1, $02, nRst, $01, nBb0
	dc.b	$03, nRst, nBb0, $02, nRst, $01, nF1, $03
	;!@ dc.b	$02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b	nF1, $02, nRst, $01, nC1, $03, nRst, nG1, $02
	dc.b	nRst, $01, nC1, $03, nRst, nC1, $02, nRst
	dc.b	$01, nG1, $03, nRst, nF1, nRst, nBb0, $02
	dc.b	nRst, $01, nF1, $03, nRst, nBb0, $02, nRst
	dc.b	$01, nF1, $02, nRst, $01, nBb0, $02, nRst
	dc.b	$01, nAb1, $03, nRst, nAb1, $02, nRst, $01
	dc.b	nCs1, $02, nRst, $01, nF1, $03, nRst, nF1
	dc.b	$02, nRst, $01, nBb0, $02, nRst, $01, nG1
	dc.b	$03, nRst

HDNR1S_Loop139:
	dc.b	nC1, $02, nRst, $01, nC1, $02, nRst, $04
	smpsLoop		$00, $02, HDNR1S_Loop139, Target

HDNR1S_Loop140:
	;!@ dc.b	nG1, $03, $02, nRst, $10, nG1, $02, nRst
	dc.b	nG1, $03, nG1, $02, nRst, $10, nG1, $02, nRst
	;!@ dc.b	$04, nG1, $02, nRst, $07, nG1, $02, $01
	dc.b	$04, nG1, $02, nRst, $07, nG1, $02, nG1, $01
	dc.b	nG1, $02, nRst, $07
	smpsLoop		$00, $02, HDNR1S_Loop140, Target
	;!@ dc.b	nG1, $03, $02, nRst, $10, nG1, $02, nRst
	dc.b	nG1, $03, nG1, $02, nRst, $10, nG1, $02, nRst
	;!@ dc.b	$04, nG1, $02, nRst, $07, nG1, $02, $01
	dc.b	$04, nG1, $02, nRst, $07, nG1, $02, nG1, $01
	;!@ dc.b	$02, nRst, $55, $06
	dc.b	nG1, $02, nRst, $55, nRst, $06
	smpsJump		HDNR1S_Jump8, Target
	
HDNR1S_PWM1:
	smpsPan		panCenter
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$EF
	dc.b	pESnare, nRst, nRst
	smpsAlterVol		$0D
	dc.b	pClosedHH

HDNR1S_PWM1_Loop1:
	dc.b	nRst, $02, pClosedHH, $01
	smpsLoop		$00, $07, HDNR1S_PWM1_Loop1, Target
	dc.b	nRst, $02
	smpsAlterVol		$F0
	dc.b	pAKick, $0C
	smpsAlterVol		$10
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $02
	smpsAlterVol		$F0
	dc.b	pAKick, $06
	smpsAlterVol		$10

HDNR1S_PWM1_Loop2:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $04, HDNR1S_PWM1_Loop2, Target
	smpsAlterVol		$F0
	dc.b	pAKick, $0C, $0C, $06, $06, $0C, $0C, $0C
	dc.b	$0C
	smpsAlterVol		$07
	dc.b	pCrashCymb, $12
	smpsAlterVol		$F9
	dc.b	pAKick, $06, $06
	smpsAlterVol		$1A
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$F6
	dc.b	pAKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pSplashCymb, $0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop3:
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pASnare
	smpsAlterVol		$FB
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pASnare
	smpsAlterVol		$FA
	smpsLoop		$00, $05, HDNR1S_PWM1_Loop3, Target
	dc.b	pAKick
	smpsAlterVol		$05
	dc.b	pASnare
	smpsAlterVol		$0B
	dc.b	pESnare, $01, nRst, nRst, $04, pESnare, $01, nRst
	dc.b	$02, pESnare, $01, nRst, nRst
	smpsAlterVol		$F7
	dc.b	pAKick, $06
	smpsAlterVol		$09
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst, pESnare
	dc.b	nRst, $08, pESnare, $01, nRst, $02

HDNR1S_PWM1_Jump1:
	dc.b	nRst, $0C
	smpsAlterVol		$F0

HDNR1S_PWM1_Loop4:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0D, HDNR1S_PWM1_Loop4, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, nRst, $04, pESnare, $01, nRst, $02
	dc.b	pESnare, $01, nRst, nRst
	smpsAlterVol		$FB
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop5:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0D, HDNR1S_PWM1_Loop5, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, nRst, $04, pESnare, $01, nRst, $02
	dc.b	pESnare, $01, nRst, nRst
	smpsAlterVol		$FB
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst, pSplashCymb
	dc.b	$0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop6:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0A, HDNR1S_PWM1_Loop6, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, nRst, $04, pESnare, $01, nRst, $02
	dc.b	pESnare, $01, nRst, nRst
	smpsAlterVol		$FB
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst, pESnare
	dc.b	nRst, $08, pCrashCymb, $09
	smpsAlterVol		$13
	dc.b	$02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop7:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $1C, HDNR1S_PWM1_Loop7, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01

HDNR1S_PWM1_Loop8:
	dc.b	nRst, nRst, pESnare
	smpsLoop		$00, $07, HDNR1S_PWM1_Loop8, Target
	dc.b	nRst, nRst
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop9:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0D, HDNR1S_PWM1_Loop9, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, $08, pESnare, $01, nRst, $08
	smpsAlterVol		$13
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop10:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $2A, HDNR1S_PWM1_Loop10, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01

HDNR1S_PWM1_Loop11:
	dc.b	nRst, nRst, pESnare
	smpsLoop		$00, $07, HDNR1S_PWM1_Loop11, Target
	dc.b	nRst, nRst, pSplashCymb, $0C, nRst, pSplashCymb, nRst, pESnare
	dc.b	$01, nRst, $08, pESnare, $01, nRst, $02
	smpsAlterVol		$09
	smpsJump		HDNR1S_PWM1_Jump1, Target
	
HDNR1S_PWM2:
	dc.b	pAKick, $02, $01
	smpsAlterVol		$0F
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F1
	dc.b	pAKick, $01
	smpsAlterVol		$03
	dc.b	pESnare, nRst, $0B
	smpsAlterVol		$FD
	dc.b	pAKick, $0C
	smpsAlterVol		$11

HDNR1S_PWM2_Loop1:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $04, HDNR1S_PWM2_Loop1, Target
	smpsAlterVol		$EF
	dc.b	pAKick, $06
	smpsAlterVol		$1B
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	pClosedHH, nRst
	smpsAlterVol		$F9
	dc.b	pCrashCymb
	smpsAlterVol		$FD
	dc.b	$12
	smpsAlterVol		$0A

HDNR1S_PWM2_Loop2:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $08, HDNR1S_PWM2_Loop2, Target
	smpsAlterVol		$0A
	dc.b	pCrashCymb
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$12
	smpsAlterVol		$0A

HDNR1S_PWM2_Loop3:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $08, HDNR1S_PWM2_Loop3, Target
	smpsAlterVol		$0A
	dc.b	pCrashCymb
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	pClosedHH, nRst
	smpsAlterVol		$F9
	dc.b	pCrashCymb
	smpsAlterVol		$F6
	dc.b	pAKick, $06, $06, $06
	smpsAlterVol		$11

HDNR1S_PWM2_Loop4:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $04, HDNR1S_PWM2_Loop4, Target
	smpsAlterVol		$EF
	dc.b	pAKick, $06
	smpsAlterVol		$07
	dc.b	pCrashCymb, $0C, $0C, nRst, $03

HDNR1S_PWM2_Loop5:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$04
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$FC
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$06
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$FA
	smpsLoop		$00, $05, HDNR1S_PWM2_Loop5, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$04
	dc.b	pFingSnap, $06
	smpsAlterVol		$FC
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$09
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$F7
	dc.b	pAKick, $06, $03, nRst, $02, pAKick, $03, nRst
	dc.b	$01, pAKick, $03

HDNR1S_PWM2_Jump1:
	dc.b	nRst, $0C, pSplashCymb, nRst, $03

HDNR1S_PWM2_Loop6:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0C, HDNR1S_PWM2_Loop6, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$04
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$FC
	dc.b	pAKick, $06
	smpsAlterVol		$04
	dc.b	pSplashCymb, $0C, nRst, $03

HDNR1S_PWM2_Loop7:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0C, HDNR1S_PWM2_Loop7, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$04
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$FC
	dc.b	pAKick, $06
	smpsAlterVol		$04
	dc.b	pCrashCymb, $0C, nRst, $03

HDNR1S_PWM2_Loop8:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0A, HDNR1S_PWM2_Loop8, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$04
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$FC
	dc.b	pAKick, $06
	smpsAlterVol		$FD
	dc.b	$03, nRst, $02
	smpsAlterVol		$03
	dc.b	pAKick, $01, nRst, $03
	smpsAlterVol		$04
	dc.b	pESnare, $01, nRst, $08
	smpsAlterVol		$F9
	dc.b	pAKick, $06, $06
	smpsAlterVol		$06
	dc.b	pESnare, nRst, $03
	smpsAlterVol		$01

HDNR1S_PWM2_Loop9:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $1C, HDNR1S_PWM2_Loop9, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F7
	dc.b	pAKick, pAKick, pAKick, pAKick, pSplashCymb, $0C, nRst, $03

HDNR1S_PWM2_Loop10:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0C, HDNR1S_PWM2_Loop10, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, $03, nRst, $02, pAKick, $03, nRst, $01
	dc.b	pAKick, $03, nRst, $06
	smpsAlterVol		$FD
	dc.b	pAKick, pAKick
	smpsAlterVol		$06
	dc.b	pESnare, nRst, $03
	smpsAlterVol		$01

HDNR1S_PWM2_Loop11:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $2A, HDNR1S_PWM2_Loop11, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F7
	dc.b	pAKick, pAKick, pAKick, pAKick, pCrashCymb, $0C, nRst, pCrashCymb
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	pAKick, $03, nRst, $02, pAKick, $03, nRst, $01
	dc.b	pAKick, $03
	smpsAlterVol		$04
	smpsJump		HDNR1S_PWM2_Jump1, Target
	
HDNR1S_PWM3:
	dc.b	nRst, $03, pAKick, $02
	smpsAlterVol		$0A
	dc.b	pCrashCymb, $01
	smpsAlterVol		$F6
	dc.b	pAKick, $0C, nRst, $1E
	smpsAlterVol		$11
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$FE
	dc.b	pCrashCymb, nRst, $01
	smpsAlterVol		$F1
	dc.b	pAKick, $0C
	smpsAlterVol		$11
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $1A

HDNR1S_PWM3_Loop1:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $07, HDNR1S_PWM3_Loop1, Target
	dc.b	pClosedHH, $01, nRst, $1A, pClosedHH, $01, nRst, $02
	smpsAlterVol		$FE
	dc.b	pCrashCymb, nRst, $01
	smpsAlterVol		$02
	dc.b	pClosedHH

HDNR1S_PWM3_Loop2:
	dc.b	nRst, $02, pClosedHH, $01
	smpsLoop		$00, $05, HDNR1S_PWM3_Loop2, Target
	dc.b	nRst, $0E, pClosedHH, $01, nRst, $02, pClosedHH, $01
	dc.b	nRst, $0E
	smpsAlterVol		$EF
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pASnare, nRst
	smpsAlterVol		$FA

HDNR1S_PWM3_Loop3:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0A, HDNR1S_PWM3_Loop3, Target
	dc.b	pAKick
	smpsAlterVol		$07

HDNR1S_PWM3_Loop4:
	dc.b	pASnare, $01, nRst, nRst, $04, pASnare, $01, nRst
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_PWM3_Loop4, Target
	dc.b	pASnare, $01, nRst, nRst, pASnare, nRst, nRst, pASnare
	dc.b	nRst, $08, pASnare, $01, nRst, $02

HDNR1S_PWM3_Jump1:
	dc.b	nRst, $0C, pCrashCymb, nRst, $06
	smpsAlterVol		$F9

HDNR1S_PWM3_Loop5:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0C, HDNR1S_PWM3_Loop5, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07
	dc.b	pCrashCymb, $0C, nRst, $06
	smpsAlterVol		$F9

HDNR1S_PWM3_Loop6:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0C, HDNR1S_PWM3_Loop6, Target
	dc.b	pAKick, nRst, $18, pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare, nRst
	smpsAlterVol		$FA

HDNR1S_PWM3_Loop7:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0A, HDNR1S_PWM3_Loop7, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07
	dc.b	pCrashCymb, $09
	smpsAlterVol		$FC
	dc.b	pAKick, $03, nRst, $06
	smpsAlterVol		$0E
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $05
	smpsAlterVol		$F6
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst
	smpsAlterVol		$F0

HDNR1S_PWM3_Loop8:
	dc.b	pAKick, nRst
	smpsLoop		$00, $1C, HDNR1S_PWM3_Loop8, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07
	dc.b	pCrashCymb, $0C, nRst, $06
	smpsAlterVol		$F9

HDNR1S_PWM3_Loop9:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0C, HDNR1S_PWM3_Loop9, Target
	dc.b	pAKick, nRst, $12
	smpsAlterVol		$11
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $05
	smpsAlterVol		$F6
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst
	smpsAlterVol		$F0

HDNR1S_PWM3_Loop10:
	dc.b	pAKick, nRst
	smpsLoop		$00, $2A, HDNR1S_PWM3_Loop10, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07

HDNR1S_PWM3_Loop11:
	dc.b	pESnare, $01, nRst, $08, pESnare, $01, nRst, $0E
	smpsLoop		$00, $02, HDNR1S_PWM3_Loop11, Target
	dc.b	pSplashCymb, $0C
	smpsJump		HDNR1S_PWM3_Jump1, Target
	
HDNR1S_PWM4:
	dc.b	nRst, $06, pCrashCymb, $12, nRst, $55, $55, $07
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$06
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$FA

HDNR1S_PWM4_Loop1:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0A, HDNR1S_PWM4_Loop1, Target
	dc.b	pClosedHH, $01, nRst, $1A, pSplashCymb, $09, $03

HDNR1S_PWM4_Jump1:
	dc.b	nRst, $0F

HDNR1S_PWM4_Loop3:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$F7

HDNR1S_PWM4_Loop2:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0C, HDNR1S_PWM4_Loop2, Target
	dc.b	pClosedHH, $01, nRst, $1D
	smpsLoop		$01, $02, HDNR1S_PWM4_Loop3, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$F7

HDNR1S_PWM4_Loop4:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0A, HDNR1S_PWM4_Loop4, Target
	dc.b	pClosedHH, $01, nRst, $38
	smpsAlterVol		$F9
	dc.b	pAKick, $06, nRst, $09
	smpsAlterVol		$07

HDNR1S_PWM4_Loop5:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $1C, HDNR1S_PWM4_Loop5, Target
	dc.b	pClosedHH, $01, nRst, $1D, pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$F7

HDNR1S_PWM4_Loop6:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0C, HDNR1S_PWM4_Loop6, Target
	dc.b	pClosedHH, $01, nRst, $20
	smpsAlterVol		$F9
	dc.b	pAKick, $06, nRst, $09
	smpsAlterVol		$07

HDNR1S_PWM4_Loop7:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $2A, HDNR1S_PWM4_Loop7, Target
	dc.b	pClosedHH, $01, nRst, $1A
	smpsAlterVol		$FC

HDNR1S_PWM4_Loop8:
	dc.b	pAKick, $03, nRst, $02, pAKick, $03, nRst, $01
	dc.b	pAKick, $03, nRst, $0C
	smpsLoop		$00, $02, HDNR1S_PWM4_Loop8, Target
	smpsAlterVol		$04
	dc.b	pCrashCymb
	smpsJump		HDNR1S_PWM4_Jump1, Target

HDNR1S_Patches:	
	dc.b	$3F
	dc.b	$00, $32, $00, $76,	$1F, $1F, $1F, $1F
	dc.b	$0E, $0E, $0E, $10,	$03, $03, $03, $03
	dc.b	$08, $58, $38, $38,	$19, $0B, $0A, $0A
	 
	dc.b	$39
	dc.b	$06, $01, $01, $01,	$9F, $1F, $1F, $5F
	dc.b	$0A, $09, $09, $04,	$08, $07, $07, $07
	dc.b	$24, $24, $24, $28,	$22, $24, $26, $0A
	 
	dc.b	$3A
	dc.b	$64, $60, $60, $30,	$9D, $9D, $50, $4C
	dc.b	$04, $06, $04, $05,	$1F, $05, $01, $01
	dc.b	$A8, $25, $25, $55,	$7F, $06, $14, $0E
	 
	dc.b	$3D
	dc.b	$72, $31, $31, $71,	$1A, $1C, $1A, $1C
	dc.b	$0E, $0A, $0E, $0C,	$00, $00, $00, $01
	dc.b	$38, $08, $28, $38,	$1C, $08, $0E, $08
	 
	dc.b	$39
	dc.b	$03, $22, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$00, $00, $00, $00
	dc.b	$10, $18, $10, $18,	$1C, $12, $1A, $0C

	dc.b	$39
	dc.b	$33, $01, $51, $01,	$5F, $5F, $5F, $5F
	dc.b	$0F, $00, $00, $0D,	$01, $01, $01, $01
	dc.b	$33, $1A, $1A, $17,	$1E, $19, $16, $04