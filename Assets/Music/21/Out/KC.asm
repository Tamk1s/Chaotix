Target	EQU	$40000

FMPitch	EQU	$00
FMVol1	EQU	$1F
FMVol2	EQU	FMVol1-$0A
FMVol3	EQU	FMVol1-$02
FMVol4	EQU	FMVol1+$08

PSGPitch	EQU	PSGDelta
;!@ PSGVol		EQU	$00
PSGVol		EQU	$03
PSGNull		EQU	$00
PSGVoi		EQU	$00

PWMPitch	EQU	$00
PWMVol1		EQU	$22
PWMVol2		EQU	$55

	smpsHeaderVoice	Segapede_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $11
	smpsHeaderFM	Segapede_FM1, Target, FMPitch, FMVol1
	smpsHeaderFM	Segapede_FM2, Target, FMPitch, FMVol2
	smpsHeaderFM	Segapede_FM3, Target, FMPitch, FMVol1
	smpsHeaderFM	Segapede_FM4, Target, FMPitch, FMVol3
	smpsHeaderFM	Segapede_FM5, Target, FMPitch, FMVol4
	smpsHeaderFM	Segapede_FM6, Target, FMPitch, FMVol1
	smpsHeaderPSG	Segapede_PSG1, Target, PSGPitch, PSGVol, PSGNull, PSGVoi
	smpsHeaderPSG	Segapede_NOP, Target, PSGPitch, PSGVol, PSGNull, PSGVoi
	smpsHeaderPSG	Segapede_NOP, Target, PSGPitch, PSGVol, PSGNull, PSGVoi
	smpsHeaderPWM	Segapede_PWM1, Target, PWMPitch, PWMVol1
	smpsHeaderPWM	Segapede_PWM2, Target, PWMPitch, PWMVol2
	smpsHeaderPWM	Segapede_NOP, Target, PWMPitch, PWMVol1
	smpsHeaderPWM	Segapede_NOP, Target, PWMPitch, PWMVol1

Segapede_FM1:
	smpsFMvoice		$00
	dc.b nRst, $04

Segapede_Jump1:
	dc.b nB2, $04, $04, nRst, nB2, nRst, $1C, nB2
	dc.b $04, nB3, $08, nB2, $04, nB3, nBb2, nBb2
	dc.b nRst, nBb2, nRst, $30, nA2, $04, $04, nRst
	dc.b nA2, nRst, $18, nA2, $04, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $04, nA3
	dc.b nG2, $03, nRst, $01, nG2, $03, nRst, $05
	dc.b nG2, $03, nRst, $15, nE2, $04, nE3, nE2
	dc.b nRst, $10, nCs3, $04, $04, nRst, nCs3, nRst
	dc.b $1C, nCs3, $04, nCs4, $08, nCs3, $04, nCs4
	dc.b nC3, nC3, nRst, nC3, nRst, $30, nB2, $04
	dc.b $04, nRst, nB2, nRst, $18, nB2, $04, nB3
	dc.b $03, nRst, $05, nB3, $03, nRst, $01, nB2
	dc.b $04, nB3, nA2, $03, nRst, $01, nA2, $03
	dc.b nRst, $05, nA2, $03, nRst, $15, nA2, $04
	dc.b nA3, nA2, nRst, $10, nB2, $04, $04, nRst
	dc.b nB2, nRst, $1C, nB2, $04, nB3, $08, nB2
	dc.b $04, nB3, nBb2, nBb2, nRst, nBb2, nRst, $30
	dc.b nA2, $04, $04, nRst, nA2, nRst, $18, nA2
	dc.b $04, nA3, $03, nRst, $05, nA3, $03, nRst
	dc.b $01, nA2, $04, nA3, nG2, $03, nRst, $01
	dc.b nG2, $03, nRst, $05, nG2, $03, nRst, $15
	dc.b nE2, $04, nE3, nE2, nRst, $08, nE2, $04
	dc.b nFs2, nG2, $03, nRst, $01, nG2, $03, nRst
	dc.b $05, nG2, $03, nRst, $1D, nG2, $04, nG3
	dc.b $08, nG2, $04, nG3, nD3, $03, nRst, $01
	dc.b nD3, $03, nRst, $05, nD3, $03, nRst, $31
	dc.b nA2, $03, nRst, $01, nA2, $03, nRst, $05
	dc.b nA2, $03, nRst, $19, nA2, $03, nRst, $01
	dc.b nA3, $03, nRst, $05, nA3, $03, nRst, $01
	dc.b nA2, $03, nRst, $01, nA3, $03, nRst, $01
	dc.b nB2, $0C, nCs3, nD3, nCs3, nB2, $08, nA2
	dc.b nG3, $04, nG2, $03, nRst, $05, nG2, $04
	dc.b nRst, $14, nG2, $04, nG3, nG2, nG3
	smpsAlterNote	$F1
	dc.b smpsNoAttack, nAb3, $01
	smpsAlterNote	$FD
	dc.b smpsNoAttack, nA3, $02
	smpsAlterNote	$00
	dc.b smpsNoAttack, nG3, $05, nG2, $04, nD3, $03, nRst
	dc.b $01, nD2, $03, nRst, $05, nD2, $03, nRst
	dc.b $1D, nD2, $03, nRst, $11, nA2, $03, nRst
	dc.b $01, nA2, $03, nRst, $05, nA2, $03, nRst
	dc.b $19, nA2, $03, nRst, $01, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $03, nRst
	dc.b $01, nA3, $03, nRst, $01, nFs2, $03, nRst
	dc.b $01, nFs2, $03, nRst, $05, nFs2, $08, nRst
	dc.b nFs2, $04, nBb2, $03, nRst, $01, nBb2, $03
	dc.b nRst, $05, nBb2, $07, nRst, $0D
	smpsJump		Segapede_Jump1, Target

Segapede_FM2:
	smpsFMvoice		$01
	dc.b nRst, $04

Segapede_Jump2:
	dc.b nRst, $04, nB3, nD4, nFs4, nB4, nFs4, nB4
	dc.b nD5, nFs5, nD5, nFs5, nB5, nD6, nB5, nD6
	dc.b nFs6, nRst, nBb3, nCs4, nFs4, nBb4, nFs4, nBb4
	dc.b nCs5, nFs5, nCs5, nFs5, nBb5, nCs6, nBb5, nCs6
	dc.b nFs6, nRst, nA3, nEb4, nFs4, nB4, nFs4, nB4
	dc.b nEb5, nFs5, nEb5, nFs5, nB5, nEb6, nB5, nEb6
	dc.b nFs6, nRst, nG3, nE4, nG4, nB4, nE5, nB5
	dc.b nE6, nRst, nE3, nBb3, nE4, nBb4, nCs5, nE5
	dc.b nG5
	smpsFMvoice		$06

Segapede_Loop1:
	dc.b nCs6, nAb6, nE6
	smpsLoop		$00, $05, Segapede_Loop1, Target
	dc.b nCs6

Segapede_Loop2:
	dc.b nC6, nAb6, nEb6
	smpsLoop		$00, $05, Segapede_Loop2, Target
	dc.b nC6

Segapede_Loop3:
	dc.b nCs6, nAb6, nF6
	smpsLoop		$00, $05, Segapede_Loop3, Target

Segapede_Loop4:
	dc.b nCs6, nA5, nFs6
	smpsLoop		$00, $03, Segapede_Loop4, Target
	dc.b nA5, nFs6, nEb6, nC6, nA5, nFs5, nEb5, nC5
	smpsFMvoice		$01
	dc.b nRst, nB2, nD3, nFs3, nB3, nFs3, nB3, nD4
	dc.b nFs4, nD4, nFs4, nB4, nD5, nB4, nD5, nFs5
	dc.b nRst, nBb2, nCs3, nFs3, nBb3, nFs3, nBb3, nCs4
	dc.b nFs4, nCs4, nFs4, nBb4, nCs5, nBb4, nCs5, nFs5
	dc.b nRst, nA2, nEb3, nFs3, nB3, nFs3, nB3, nEb4
	dc.b nFs4, nEb4, nFs4, nB4, nEb5, nB4, nEb5, nFs5
	dc.b nRst, nG2, nE3, nG3, nB3, nE4, nB4, nE5
	dc.b nRst, nE2, nBb2, nE3, nBb3, nCs4, nE4, nG4
	dc.b nRst
	smpsFMvoice		$07
	dc.b nG3, nD4, nB3, nG4, nD4, nB4, nG4, nD5
	dc.b nB4, nG5, nD5, nB5, nG5, nD6, nB5, nRst
	dc.b nD3, nD4, nA3, nFs4, nD4, nA4, nFs4, nD5
	dc.b nA4, nFs5, nD5, nA5, nFs5, nD6, nA5, nRst
	dc.b nA3, nE4, nCs4, nA4, nE4, nCs5, nA4, nE5
	dc.b nCs5, nA5, nE5, nCs6, nA5, nE6, nCs6

Segapede_Loop5:
	dc.b nD5, $01, nRst, $03, nD5, $02, nRst, $06
	smpsLoop		$00, $03, Segapede_Loop5, Target
	dc.b nD5, $01, nRst, $03, nD5, $01, nRst, $07
	dc.b nD5, $03, nRst, $05, nCs5, $02, nRst, $0A
	dc.b nG3, $04, nD4, nB3, nG4, nD4, nB4, nG4
	dc.b nD5, nB4, nG5, nD5, nB5, nG5, nD6, nB5
	dc.b nRst, nD3, nD4, nA3, nFs4, nD4, nA4, nFs4
	dc.b nD5, nA4, nFs5, nD5, nA5, nFs5, nD6, nA5
	dc.b nRst, nA3, nE4, nCs4, nA4, nE4, nCs5, nA4
	dc.b nE5, nCs5, nA5, nE5, nCs6, nA5, nE6, nCs6

Segapede_Loop6:
	dc.b nFs5, $01, nRst, $03, nFs5, $02, nRst, $06
	smpsLoop		$00, $03, Segapede_Loop6, Target
	dc.b nE5, $01, nRst, $03, nE5, $01, nRst, $07
	dc.b nD5, $03, nRst, $05, nCs5, $02, nRst
	smpsFMvoice		$01
	dc.b $04
	smpsJump		Segapede_Jump2, Target

Segapede_FM3:
	smpsFMvoice		$02
	dc.b nRst, $04

Segapede_Jump3:
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $10
	dc.b nRst, $70, nC4, $10, nRst, $70, nA3, $10
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $08
	dc.b nRst, $78, nD4, $10, nRst, $7F, nRst, $71
	dc.b nD3, $10, nRst, $7F, nRst, $01
	smpsJump		Segapede_Jump3, Target

Segapede_FM4:
	smpsFMvoice		$03
	dc.b nRst, $04

Segapede_Jump4:
	dc.b nB2, $04, $04, nRst, nB2, nRst, $1C, nB2
	dc.b $04, nB3, $08, nB2, $04, nB3, nBb2, nBb2
	dc.b nRst, nBb2, nRst, $30, nA2, $04, $04, nRst
	dc.b nA2, nRst, $18, nA2, $04, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $04, nA3
	dc.b nG2, $03, nRst, $01, nG2, $03, nRst, $05
	dc.b nG2, $03, nRst, $15, nE2, $04, nE3, nE2
	dc.b nRst, $10, nCs3, $04, $04, nRst, nCs3, nRst
	dc.b $1C, nCs3, $04, nCs4, $08, nCs3, $04, nCs4
	dc.b nC3, nC3, nRst, nC3, nRst, $30, nB2, $04
	dc.b $04, nRst, nB2, nRst, $18, nB2, $04, nB3
	dc.b $03, nRst, $05, nB3, $03, nRst, $01, nB2
	dc.b $04, nB3, nA2, $03, nRst, $01, nA2, $03
	dc.b nRst, $05, nA2, $03, nRst, $15, nA2, $04
	dc.b nA3, nA2, nRst, $10, nB2, $04, $04, nRst
	dc.b nB2, nRst, $1C, nB2, $04, nB3, $08, nB2
	dc.b $04, nB3, nBb2, nBb2, nRst, nBb2, nRst, $30
	dc.b nA2, $04, $04, nRst, nA2, nRst, $18, nA2
	dc.b $04, nA3, $03, nRst, $05, nA3, $03, nRst
	dc.b $01, nA2, $04, nA3, nG2, $03, nRst, $01
	dc.b nG2, $03, nRst, $05, nG2, $03, nRst, $15
	dc.b nE2, $04, nE3, nE2, nRst, $08, nE2, $04
	dc.b nFs2, nG2, $03, nRst, $01, nG2, $03, nRst
	dc.b $05, nG2, $03, nRst, $1D, nG2, $04, nG3
	dc.b $08, nG2, $04, nG3, nD3, $03, nRst, $01
	dc.b nD3, $03, nRst, $05, nD3, $03, nRst, $31
	dc.b nA2, $03, nRst, $01, nA2, $03, nRst, $05
	dc.b nA2, $03, nRst, $19, nA2, $03, nRst, $01
	dc.b nA3, $03, nRst, $05, nA3, $03, nRst, $01
	dc.b nA2, $03, nRst, $01, nA3, $03, nRst, $01
	dc.b nB2, $0C, nCs3, nD3, nCs3, nB2, $08, nA2
	dc.b nG3, $04, nG2, $03, nRst, $05, nG2, $04
	dc.b nRst, $14, nG2, $04, nG3, nG2, nG3
	smpsAlterNote	$F1
	dc.b smpsNoAttack, nAb3, $01
	smpsAlterNote	$FD
	dc.b smpsNoAttack, nA3, $02
	smpsAlterNote	$00
	dc.b smpsNoAttack, nG3, $05, nG2, $04, nD3, $03, nRst
	dc.b $01, nD2, $03, nRst, $05, nD2, $03, nRst
	dc.b $1D, nD2, $03, nRst, $11, nA2, $03, nRst
	dc.b $01, nA2, $03, nRst, $05, nA2, $03, nRst
	dc.b $19, nA2, $03, nRst, $01, nA3, $03, nRst
	dc.b $05, nA3, $03, nRst, $01, nA2, $03, nRst
	dc.b $01, nA3, $03, nRst, $01, nFs2, $03, nRst
	dc.b $01, nFs2, $03, nRst, $05, nFs2, $08, nRst
	dc.b nFs2, $04, nBb2, $03, nRst, $01, nBb2, $03
	dc.b nRst, $05, nBb2, $07, nRst, $0D
	smpsJump		Segapede_Jump4, Target

Segapede_FM5:
	smpsFMvoice		$04
	dc.b nRst, $04

Segapede_Jump5:
	dc.b nRst, $7F, nRst, $7F, nRst, $02, nAb4, $38
	dc.b nFs4, $04, nE4, nEb4, $38, nE4, $04, nFs4
	dc.b nAb4, $38, nA4, $04, nAb4, nAb4, $18, nFs4
	dc.b $20, nE4, $08, nD4, $2C, nFs3, $04, nD4
	dc.b nFs3, nCs4, $05
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterNote	$EB
	dc.b smpsNoAttack, nD4
	smpsAlterNote	$F4
	dc.b smpsNoAttack, $01
	smpsAlterNote	$F5
	dc.b smpsNoAttack, $01
	smpsAlterNote	$04
	dc.b smpsNoAttack, nCs4
	smpsAlterNote	$00
	dc.b smpsNoAttack, $3E, nFs4, $38, nG4, $04, nFs4, nFs4
	dc.b $18, nE4, $24, nRst, $04, nG4, $33, nRst
	dc.b $01, nB4, $04, nA4, nG4, nFs4, $0C, nD4
	dc.b nA3, $1C, nA4, $04, nG4, nFs4, nE4, $0C
	dc.b nCs4, nA3, $1C, nG4, $04, nFs4, nE4, nD4
	dc.b $0C, nE4, nFs4, nE4, nD4, $08, nCs4, nB3
	dc.b $0C, nD4, nG4, $1B, nRst, $01, nB4, $04
	dc.b nA4, nG4, nFs4, $0C, nD4, nA3, $1C, nA4
	dc.b $04, nG4, nFs4, nE4, $0C, nCs4, nA3, $18
	dc.b nE4, $04, nFs4, nG4, $08, nFs4, $40
	smpsJump		Segapede_Jump5, Target

Segapede_FM6:
	smpsFMvoice		$05
	dc.b nRst, $04

Segapede_Jump6:
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $10
	dc.b nRst, $70, nC4, $10, nRst, $70, nA3, $10
	dc.b nRst, $70, nBb3, $10, nRst, $70, nE3, $08
	dc.b nRst, $78, nD4, $10, nRst, $7F, nRst, $71
	dc.b nD3, $10, nRst, $7F, nRst, $01
	smpsJump		Segapede_Jump6, Target

Segapede_PSG1:
	;!@ 
	; dc.b nRst

Segapede_Loop7:
	;!@ 
	;dc.b $6B
	dc.b nRst, $6B
	smpsLoop		$00, $09, Segapede_Loop7, Target
	dc.b nRst, $01

Segapede_Loop8:
	dc.b nB1, $01, nRst, $03, nB1, $02, nRst, $06
	smpsLoop		$00, $03, Segapede_Loop8, Target
	dc.b nB1, $01, nRst, $03, nB1, $01, nRst, $07
	dc.b nB1, $03, nRst, $05, nBb1, $02, nRst, $7F
	dc.b nRst, $47

Segapede_Loop9:
	dc.b nEb2, $01, nRst, $03, nEb2, $02, nRst, $06
	smpsLoop		$00, $03, Segapede_Loop9, Target
	dc.b nCs2, $01, nRst, $03, nCs2, $01, nRst, $07
	;!@ dc.b nB1, $03, nRst, $05, nBb1, $02, nRst
	dc.b nB1, $03, nRst, $05, nBb1, $02

Segapede_Loop10:
	;!@ dc.b $45
	dc.b nRst, $45
	smpsLoop		$00, $0E, Segapede_Loop10, Target
	smpsJump		Segapede_Loop8, Target
	
Segapede_PWM1:
	dc.b nRst, $04

Segapede_PWM1_Jump1:
	dc.b pOpenHH, $10, $14, $04, $08, $0C, $04, $10
	dc.b $18, $08, $08, $04, $04, $08, $08, $14
	dc.b $04, $04, $04, $0C, $04, $10, $14, $04
	dc.b $08, $04, $04, $04, $04, $10, $14, $04
	dc.b $08, $0C, $04, $10, $14, $04, $04, $04
	dc.b $04, $08, $04, $08, $08, $14, $04, $04
	dc.b $04, $0C, $04, $10, $14

Segapede_PWM1_Loop1:
	dc.b $04
	smpsLoop		$00, $07, Segapede_PWM1_Loop1, Target
	dc.b $10, $14, $04, $08, $0C, $04, $10, $18
	dc.b $08, $08, $04, $04, $08, $08, $14, $04
	dc.b $04, $04, $0C, $04, $10, $14

Segapede_PWM1_Loop2:
	dc.b $04
	smpsLoop		$00, $07, Segapede_PWM1_Loop2, Target
	dc.b $10, $14, $04, $08, $04, $08, $04, $08
	dc.b $08, $14, $04, $04, $04, $0C, $04, $10
	dc.b $14, $04, $04, $04, $08, $04, $04, $10
	dc.b $10

Segapede_PWM1_Loop3:
	dc.b $04
	smpsLoop		$00, $08, Segapede_PWM1_Loop3, Target
	dc.b $10, $14, $04, $08, $0C, $04, $10, $14
	dc.b $04, $04, $04, $04, $08, $04, $08, $08
	dc.b $14, $04, $04, $04, $0C, $04, $10, $0C
	dc.b $04, $08, $04, $04, $04, $04, $04, $04
	smpsJump		Segapede_PWM1_Jump1, Target

Segapede_PWM2:
	dc.b nRst, $04

Segapede_PWM2_Jump1:
	dc.b nRst, $04, pAKick, pASnare, pAKick, $08, $04, pASnare
	dc.b pESnare, pASnare, $08, pAKick, $04, pESnare, $08, $04
	dc.b pAKick, $0C, pASnare, $04, pAKick, pASnare, $08, $04
	dc.b pAKick, pESnare, pESnare, $08, pAKick, $04, pASnare, $08
	dc.b $04, pAKick, $0C, pASnare, $04, pAKick, pASnare, $08
	dc.b $04, pESnare, pESnare, pESnare, $08, pAKick, $04, pASnare
	dc.b $08, $04, pAKick, $0C, pASnare, $04, pAKick, pASnare
	dc.b $08, $04, $01, $02, $01, $01, $02, $05
	dc.b $04, pAKick, pASnare, $08, $04, pAKick, $10, pASnare
	dc.b $04, pAKick, $08, $04, pASnare, pESnare, pASnare, $08
	dc.b pAKick, $04, pESnare, $08, $04, pAKick, $0C, $04
	dc.b pASnare, pAKick, $08, $04, pASnare, pESnare, pASnare, $08
	dc.b pAKick, $04, pESnare, $08, $04, pAKick, $0C, pASnare
	dc.b $04, pAKick, pASnare, $08, $04, pAKick, pESnare, pESnare
	dc.b $08, pAKick, $04, pASnare, $08, $04, pAKick, $0C
	dc.b pASnare, $04, pAKick, pASnare, $08, $04, pESnare, pESnare
	dc.b pESnare, $08, pAKick, $1C

Segapede_PWM2_Loop1:
	dc.b $04, pASnare, pAKick, $08, $04, pASnare, pESnare, pASnare
	dc.b $08, pAKick, $04, pESnare, $08, $04, pAKick, $0C
	smpsLoop		$00, $02, Segapede_PWM2_Loop1, Target
	dc.b pASnare, $04, pAKick, pASnare, $08, $04, pAKick, pESnare
	dc.b pESnare, $08, pAKick, $04, pASnare, $08, $04, pAKick
	dc.b $0C, pASnare, $04, pAKick, pASnare, $08, $04, pESnare
	dc.b pESnare, pESnare, $08, pAKick, $04, pASnare, $08, $04
	dc.b pAKick, $10, pASnare, $04, pAKick, $08, $04, pASnare
	dc.b pESnare, pASnare, $08, pAKick, $04, pESnare, $08, $04
	dc.b pAKick, $0C, $04, pASnare, pAKick, $08, $04, pASnare
	dc.b pESnare, pASnare, $08, pAKick, $04, pESnare, $08, $04
	dc.b pAKick, $0C, pASnare, $04, pAKick, pASnare, $08, $04
	dc.b pAKick, pESnare, pESnare, $08, pAKick, $04, pASnare, $08
	dc.b $04, pAKick, $50, pASnare, $04, pAKick, $08, $04
	dc.b pASnare, pESnare, pASnare, $08, pAKick, $04, pESnare, $08
	dc.b $04, pAKick, $0C, $04, pASnare, pAKick, $08, $04
	dc.b pASnare, pESnare, pASnare, $08, pAKick, $04, pESnare, $08
	dc.b $04, pAKick, $0C, pASnare, $04, pAKick, pASnare, $08
	dc.b $04, pAKick, pESnare, pESnare, $08, pAKick, $04, pASnare
	dc.b $08, $04, pAKick, $0C, pASnare, $04, pAKick, pASnare
	dc.b $08, $04, pESnare, pESnare, pESnare, $08, pAKick, $18
	smpsJump		Segapede_PWM2_Jump1, Target

Segapede_NOP:
	smpsStop

Segapede_Patches:
	; Patch $00
	dc.b	$35
	dc.b	$21, $31, $20, $14,	$8F, $9B, $95, $94
	dc.b	$07, $05, $00, $00,	$0A, $02, $02, $02
	dc.b	$45, $36, $17, $08,	$10, $80, $88, $80
	;smpsVcAlgorithm	$05
	;smpsVcFeedback	$06
	;smpsVcDetune	$02, $02, $03, $01
	;smpsVcCoarseFreq	$01, $00, $01, $04
	;smpsVcRateScale	$02, $02, $02, $02
	;smpsVcAttackRate	$0F, $15, $1B, $14
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$07, $00, $05, $00
	;smpsVcDecayRate2	$04, $01, $03, $00
	;smpsVcDecayLevel	$0A, $02, $02, $02
	;smpsVcReleaseRate	$05, $07, $06, $08
	;smpsVcTotalLevel	$10, $08, $00, $00

	; Patch $01
	dc.b	$37
	dc.b	$53, $04, $31, $01,	$54, $58, $5B, $14
	dc.b	$17, $17, $1B, $12,	$08, $05, $06, $16
	dc.b	$8A, $BB, $AB, $6C,	$9C, $85, $80, $86
	;smpsVcAlgorithm	$07
	;smpsVcFeedback	$06
	;smpsVcDetune	$05, $03, $00, $00
	;smpsVcCoarseFreq	$03, $01, $04, $01
	;smpsVcRateScale	$01, $01, $01, $00
	;smpsVcAttackRate	$14, $1B, $18, $14
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$17, $1B, $17, $12
	;smpsVcDecayRate2	$08, $0A, $0B, $06
	;smpsVcDecayLevel	$08, $06, $05, $16
	;smpsVcReleaseRate	$0A, $0B, $0B, $0C
	;smpsVcTotalLevel	$1C, $00, $05, $06

	; Patch $02
	dc.b	$35
	dc.b	$21, $31, $20, $14,	$8F, $9B, $95, $94
	dc.b	$07, $05, $00, $00,	$0A, $02, $02, $02
	dc.b	$45, $36, $17, $08,	$10, $80, $88, $80
	;smpsVcAlgorithm	$05
	;smpsVcFeedback	$06
	;smpsVcDetune	$02, $02, $03, $01
	;smpsVcCoarseFreq	$01, $00, $01, $04
	;smpsVcRateScale	$02, $02, $02, $02
	;smpsVcAttackRate	$0F, $15, $1B, $14
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$07, $00, $05, $00
	;smpsVcDecayRate2	$04, $01, $03, $00
	;smpsVcDecayLevel	$0A, $02, $02, $02
	;smpsVcReleaseRate	$05, $07, $06, $08
	;smpsVcTotalLevel	$10, $08, $00, $00

	; Patch $03
	dc.b	$02
	dc.b	$00, $05, $02, $00,	$D3, $DF, $DF, $9F
	dc.b	$05, $0A, $06, $07,	$00, $00, $12, $00
	dc.b	$2A, $8F, $5A, $0A,	$1D, $14, $27, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$00
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$00, $02, $05, $00
	;smpsVcRateScale	$03, $03, $03, $02
	;smpsVcAttackRate	$13, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$05, $06, $0A, $07
	;smpsVcDecayRate2	$02, $05, $08, $00
	;smpsVcDecayLevel	$00, $12, $00, $00
	;smpsVcReleaseRate	$0A, $0A, $0F, $0A
	;smpsVcTotalLevel	$1D, $27, $14, $00

	; Patch $04
	dc.b	$05
	dc.b	$00, $0F, $04, $00,	$1F, $1D, $14, $1B
	dc.b	$08, $07, $04, $04,	$07, $08, $06, $1F
	dc.b	$04, $58, $05, $77,	$00, $85, $85, $85
	;smpsVcAlgorithm	$05
	;smpsVcFeedback	$00
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$00, $04, $0F, $00
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1F, $14, $1D, $1B
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$08, $04, $07, $04
	;smpsVcDecayRate2	$00, $00, $05, $07
	;smpsVcDecayLevel	$07, $06, $08, $1F
	;smpsVcReleaseRate	$04, $05, $08, $07
	;smpsVcTotalLevel	$00, $05, $05, $05

	; Patch $05
	dc.b	$02
	dc.b	$00, $05, $02, $00,	$D3, $DF, $DF, $9F
	dc.b	$05, $0A, $06, $07,	$00, $00, $12, $00
	dc.b	$2A, $8F, $5A, $0A,	$1D, $14, $27, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$00
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$00, $02, $05, $00
	;smpsVcRateScale	$03, $03, $03, $02
	;smpsVcAttackRate	$13, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$05, $06, $0A, $07
	;smpsVcDecayRate2	$02, $05, $08, $00
	;smpsVcDecayLevel	$00, $12, $00, $00
	;smpsVcReleaseRate	$0A, $0A, $0F, $0A
	;smpsVcTotalLevel	$1D, $27, $14, $00

	; Patch $06
	dc.b	$00
	dc.b	$13, $71, $3B, $71,	$53, $5B, $1D, $1F
	dc.b	$01, $03, $0F, $00,	$1B, $1D, $1F, $0D
	dc.b	$30, $03, $E3, $0F,	$06, $0C, $1F, $8F
	;smpsVcAlgorithm	$00
	;smpsVcFeedback	$00
	;smpsVcDetune	$01, $03, $07, $07
	;smpsVcCoarseFreq	$03, $0B, $01, $01
	;smpsVcRateScale	$01, $00, $01, $00
	;smpsVcAttackRate	$13, $1D, $1B, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$01, $0F, $03, $00
	;smpsVcDecayRate2	$03, $0E, $00, $00
	;smpsVcDecayLevel	$1B, $1F, $1D, $0D
	;smpsVcReleaseRate	$00, $03, $03, $0F
	;smpsVcTotalLevel	$06, $1F, $0C, $0F

	; Patch $07
	dc.b	$3D
	dc.b	$3B, $72, $66, $21,	$DC, $9F, $5E, $9D
	dc.b	$12, $0B, $18, $08,	$0D, $0C, $17, $11
	dc.b	$4F, $1B, $1B, $1B,	$11, $90, $8C, $8F
	;smpsVcAlgorithm	$05
	;smpsVcFeedback	$07
	;smpsVcDetune	$03, $06, $07, $02
	;smpsVcCoarseFreq	$0B, $06, $02, $01
	;smpsVcRateScale	$03, $01, $02, $02
	;smpsVcAttackRate	$1C, $1E, $1F, $1D
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$12, $18, $0B, $08
	;smpsVcDecayRate2	$04, $01, $01, $01
	;smpsVcDecayLevel	$0D, $17, $0C, $11
	;smpsVcReleaseRate	$0F, $0B, $0B, $0B
	;smpsVcTotalLevel	$11, $0C, $10, $0F
