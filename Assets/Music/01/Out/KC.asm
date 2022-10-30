Target	EQU	$40000

FMPitch		EQU	$00
FMVoi0_SopSax	EQU	$00
FMVoi1_RevCymb	EQU	$01
FMVoi2_Lead2Saw	EQU	$02
FMVoi3_EGitCln	EQU	$03

PSGVol	EQU	$05
PSGVol2	EQU	$07				;!@
PSGMod	EQU	$00
PSGVoi1	EQU	$08	;!@ $2F
PSGVoi2	EQU	$00
PWMPitch	EQU	$00
PWMVol	EQU	$55

Mod1	EQU	$01010405
Mod2	EQU	$01020206

	smpsHeaderVoice	SOVA_SA_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$03, $11
	smpsHeaderFM	SOVA_SA_FM1, Target, FMPitch, $10
	smpsHeaderFM	SOVA_SA_FM2, Target, FMPitch, $20
	smpsHeaderFM	SOVA_SA_FM3, Target, FMPitch, $0F
	smpsHeaderFM	SOVA_SA_FM4, Target, FMPitch, $1D
	smpsHeaderFM	SOVA_SA_FM5, Target, FMPitch, $0E
	smpsHeaderFM	SOVA_SA_FM6, Target, FMPitch, $1B
	smpsHeaderPSG	SOVA_SA_PSG1, Target, PSGDelta, PSGVol, PSGMod, PSGVoi1
	smpsHeaderPSG	SOVA_SA_PSG2, Target, PSGDelta, PSGVol2, PSGMod, PSGVoi2
	smpsHeaderPSG	SOVA_SA_PSG3, Target, PSGDelta, PSGVol2, PSGMod, PSGVoi2
	smpsHeaderPWM	SOVA_SA_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SOVA_SA_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SOVA_SA_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SOVA_SA_PWM4, Target, PWMPitch, PWMVol

SOVA_SA_FM1:
	smpsPan		panLeft
	smpsFMvoice	FMVoi0_SopSax
	dc.b	nRst, $10

SOVA_SA_Loop1:
	dc.b	nE4, $02

SOVA_SA_Loop2:
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b	$30
	smpsLoop		$00, $04, SOVA_SA_Loop1, Target

SOVA_SA_Jump1:
	dc.b	nE4, $02
	smpsLoop		$01, $03, SOVA_SA_Loop2, Target

SOVA_SA_Loop3:
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b	nA4, nRst, nE4, nG4, nRst, nA4, nRst, nE4
	smpsLoop		$00, $02, SOVA_SA_Loop3, Target
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b	nG4, nRst, nE4, nD5, nRst, nB4, nRst, nA4
	dc.b	nRst, nG4, nA4, nRst, nG4, nRst, nFs4, nG4
	dc.b	nFs4, nE4, nFs4, nE4, nRst, nD4, nRst, nE4
	smpsLoop		$01, $03, SOVA_SA_Loop3, Target

SOVA_SA_Loop4:
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b	nA4, nRst, nE4, nG4, nRst, nA4, nRst, nE4
	smpsLoop		$00, $02, SOVA_SA_Loop4, Target
	dc.b	nRst, nA4, nRst, nG4, nRst, nB4, nA4, nRst
	dc.b	nG4, nRst, nE4, nD5, nRst, nB4, nRst, nA4
	dc.b	nRst, nG4, nA4, nRst, nG4, nRst, nFs4, nG4
	dc.b	nFs4, nE4, nFs4, nE4, nRst, nD4
	smpsAlterNote	$00
	dc.b	nRst
	smpsJump		SOVA_SA_Jump1, Target

SOVA_SA_FM2:
	smpsPan		panRight
	smpsFMvoice		FMVoi0_SopSax
	dc.b	nRst, $13

SOVA_SA_Loop5:
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b	nA4, nRst, $30
	smpsLoop		$00, $03, SOVA_SA_Loop5, Target
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b	nA4, nRst, $2D

SOVA_SA_Jump2:
	dc.b	nRst, $03

SOVA_SA_Loop6:
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b	nA4, nRst, $30
	smpsLoop		$00, $08, SOVA_SA_Loop6, Target

SOVA_SA_Loop7:
	dc.b	nE4, $02, nRst, nA4, nRst, nG4, nRst, nB4
	dc.b	nA4, nRst, nA4, nRst, nE4, nG4, nRst, nA4
	dc.b	nRst
	smpsLoop		$00, $02, SOVA_SA_Loop7, Target
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4
	dc.b	nRst, nG4, nRst, nE4, nD5, nRst, nB4, nRst
	dc.b	nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4
	dc.b	nG4, nFs4, nE4, nFs4, nE4, nRst, nD4, nRst
	smpsLoop		$01, $03, SOVA_SA_Loop7, Target

SOVA_SA_Loop8:
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4
	dc.b	nRst, nA4, nRst, nE4, nG4, nRst, nA4, nRst
	smpsLoop		$00, $02, SOVA_SA_Loop8, Target
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nB4, nA4
	dc.b	nRst, nG4, nRst, nE4, nD5, nRst, nB4, nRst
	dc.b	nA4, nRst, nG4, nA4, nRst, nG4, nRst, nFs4
	dc.b	nG4, nFs4, nE4, nFs4, nE4, nRst
	smpsAlterNote	$00
	dc.b	$01
	smpsJump		SOVA_SA_Jump2, Target

SOVA_SA_FM3:
	;!@ smpsPan		panLeft
	smpsPan			panCenter
	smpsFMvoice		FMVoi1_RevCymb
	smpsModSet2		Mod1
	;sModOn
	;sModOn
	dc.b	nC5, $10, nRst, $55, nRst, $55, nRst, $26

SOVA_SA_Loop9:
	;!@
	smpsPan			panCenter
	dc.b	nC5, $10, nRst, nC5

SOVA_SA_Jump3:
	;!@
	smpsPan			panLeft
	smpsFMvoice		FMVoi2_Lead2Saw
	dc.b	nE5, $34, nA4, $08, nG4, $04, nB4, $20
	dc.b	nE4, $14, nG4, $04, nA4, nB4, nE5, $34
	dc.b	nA5, $08, nE5, $04, nB5, $20, nE5, $14
	dc.b	nG4, $04, nA4, nB4, nE5, $34, nA4, $08
	dc.b	nG4, $04, nB4, $20, nE4, $14, nG4, $04
	dc.b	nA4, nB4, nE5, $34, nA5, $08, nE5, $04
	dc.b	nB5, $0C, nRst, $04
	
	smpsFMvoice		FMVoi1_RevCymb
	smpsLoop		$00, $02, SOVA_SA_Loop9, Target
	
	;!@
	smpsPan			panCenter
	dc.b	nC5, $10
	smpsAlterNote	$00
	dc.b	nRst, nC5
	smpsJump		SOVA_SA_Jump3, Target

SOVA_SA_FM4:
	smpsPan		panRight
	smpsFMvoice		FMVoi2_Lead2Saw
	smpsModSet2	Mod1
	;sModOn
	;sModOn
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $11

SOVA_SA_Jump4:
	dc.b	nRst, $03, nE5, $34, nA4, $08, nG4, $04
	dc.b	nB4, $20, nE4, $14, nG4, $04, nA4, nB4
	dc.b	nE5, $34, nA5, $08, nE5, $04, nB5, $20
	dc.b	nE5, $14, nG4, $04, nA4, nB4, nE5, $34
	dc.b	nA4, $08, nG4, $04, nB4, $20, nE4, $14
	dc.b	nG4, $04, nA4, nB4, nE5, $34, nA5, $08
	dc.b	nE5, $04, nB5, $20, nRst, nE5, $34, nA4
	dc.b	$08, nG4, $04, nB4, $20, nE4, $14, nG4
	dc.b	$04, nA4, nB4, nE5, $34, nA5, $08, nE5
	dc.b	$04, nB5, $20, nE5, $14, nG4, $04, nA4
	dc.b	nB4, nE5, $34, nA4, $08, nG4, $04, nB4
	dc.b	$20, nE4, $14, nG4, $04, nA4, nB4, nE5
	dc.b	$34, nA5, $08, nE5, $04, nB5, $20
	smpsAlterNote	$00
	dc.b	nRst, $1D
	smpsJump		SOVA_SA_Jump4, Target

SOVA_SA_FM5:
	smpsPan		panLeft
	smpsFMvoice		FMVoi3_EGitCln
	dc.b	nRst, $10, nE3, $20

SOVA_SA_Loop10:
	dc.b	$06, nD4, nA3, $14, nB3, $20, nE3, nE3
	dc.b	nE3, $06, nD4, nA3, $14, nB3, $20, nE3
	dc.b	$14, $04, nG3, nA3

SOVA_SA_Jump5:
	dc.b	nE3, $20
	smpsLoop		$00, $04, SOVA_SA_Loop10, Target
	dc.b	$06, nD4, nA3, $14, nB3, $20, nE3, nE3
	dc.b	nE3, $06, nD4, nA3, $14, nB3, $20, nE3
	dc.b	$14, $04, nG3, nA3
	smpsJump		SOVA_SA_Jump5, Target

SOVA_SA_FM6:
	smpsPan		panRight
	smpsFMvoice		FMVoi3_EGitCln
	dc.b	nRst, $14

SOVA_SA_Loop11:
	dc.b	nE3, $20, $06, nD4, nA3, $14, nB3, $20
	dc.b	nE3, nE3, nE3, $06, nD4, nA3, $14, nB3
	dc.b	$20, nE3, $14, $04, nG3

SOVA_SA_Jump6:
	dc.b	nA3, $04
	smpsLoop		$00, $04, SOVA_SA_Loop11, Target
	dc.b	nE3, $20, $06, nD4, nA3, $14, nB3, $20
	dc.b	nE3, nE3, nE3, $06, nD4, nA3, $14, nB3
	dc.b	$20, nE3, $14, $04, nG3
	smpsJump		SOVA_SA_Jump6, Target

SOVA_SA_PSG1:
	dc.b	nRst, $10, nC1, $20, nD1, nG0, nE0, nC1
	dc.b	nD1, nG0, nE0

SOVA_SA_Loop12:
	dc.b	nC1, $04, nC2
	smpsLoop		$00, $04, SOVA_SA_Loop12, Target

SOVA_SA_Loop13:
	dc.b	nD1, nD2
	smpsLoop		$00, $04, SOVA_SA_Loop13, Target

SOVA_SA_Loop14:
	dc.b	nG0, nG1
	smpsLoop		$00, $04, SOVA_SA_Loop14, Target

SOVA_SA_Loop15:
	dc.b	nE0, nE1
	smpsLoop		$00, $04, SOVA_SA_Loop15, Target
	smpsLoop		$01, $03, SOVA_SA_Loop12, Target

SOVA_SA_Loop16:
	dc.b	nC1, nC2
	smpsLoop		$00, $04, SOVA_SA_Loop16, Target

SOVA_SA_Loop17:
	dc.b	nD1, nD2
	smpsLoop		$00, $04, SOVA_SA_Loop17, Target

SOVA_SA_Loop18:
	dc.b	nG0, nG1
	smpsLoop		$00, $04, SOVA_SA_Loop18, Target
	dc.b	nE0, $20
	smpsLoop		$02, $02, SOVA_SA_Loop12, Target
	smpsJump		SOVA_SA_Loop12, Target

SOVA_SA_PSG2:
	dc.b	nRst, $10

SOVA_SA_Loop19:
	dc.b	nE1, $02

SOVA_SA_Loop20:
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b	$30
	smpsLoop		$00, $04, SOVA_SA_Loop19, Target

SOVA_SA_Jump7:
	dc.b	nE1, $02
	smpsLoop		$01, $03, SOVA_SA_Loop20, Target

SOVA_SA_Loop21:
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b	nA1, nRst, nE1, nG1, nRst, nA1, nRst, nE1
	smpsLoop		$00, $02, SOVA_SA_Loop21, Target
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b	nG1, nRst, nE1, nD2, nRst, nB1, nRst, nA1
	dc.b	nRst, nG1, nA1, nRst, nG1, nRst, nFs1, nG1
	dc.b	nFs1, nE1, nFs1, nE1, nRst, nD1, nRst, nE1
	smpsLoop		$01, $03, SOVA_SA_Loop21, Target

SOVA_SA_Loop22:
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b	nA1, nRst, nE1, nG1, nRst, nA1, nRst, nE1
	smpsLoop		$00, $02, SOVA_SA_Loop22, Target
	dc.b	nRst, nA1, nRst, nG1, nRst, nB1, nA1, nRst
	dc.b	nG1, nRst, nE1, nD2, nRst, nB1, nRst, nA1
	dc.b	nRst, nG1, nA1, nRst, nG1, nRst, nFs1, nG1
	dc.b	nFs1, nE1, nFs1, nE1, nRst, nD1
	smpsAlterNote	$00
	dc.b	nRst
	smpsJump		SOVA_SA_Jump7, Target

SOVA_SA_PSG3:
	smpsModSet2	Mod2
	;sModOn
	;sModOn
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $11

SOVA_SA_Jump8:
	dc.b	nE2, $34, nA1, $08, nG1, $04, nB1, $20
	dc.b	nE1, $14, nG1, $04, nA1, nB1, nE2, $34
	dc.b	nA2, $08, nE2, $04, nB2, $20, nE2, $14
	dc.b	nG1, $04, nA1, nB1, nE2, $34, nA1, $08
	dc.b	nG1, $04, nB1, $20, nE1, $14, nG1, $04
	dc.b	nA1, nB1, nE2, $34, nA2, $08, nE2, $04
	dc.b	nB2, $0C, nRst, $34, nE2, nA1, $08, nG1
	dc.b	$04, nB1, $20, nE1, $14, nG1, $04, nA1
	dc.b	nB1, nE2, $34, nA2, $08, nE2, $04, nB2
	dc.b	$20, nE2, $14, nG1, $04, nA1, nB1, nE2
	dc.b	$34, nA1, $08, nG1, $04, nB1, $20, nE1
	dc.b	$14, nG1, $04, nA1, nB1, nE2, $34, nA2
	dc.b	$08, nE2, $04, nB2, $0C, nRst, $14
	smpsAlterNote	$00
	dc.b	nRst, $20
	smpsJump		SOVA_SA_Jump8, Target
	
SOVA_SA_PWM1:
	smpsPan		panCenter
	dc.b	nRst, $10, pClosedHH, $02, $02, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo

SOVA_SA_PWM1_Loop1:
	dc.b	nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH
	smpsLoop		$00, $02, SOVA_SA_PWM1_Loop1, Target
	dc.b	nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, pCrashCymb, $02, pTomHi, $01, nRst
	dc.b	$03, pTomHi, $01, nRst, pTomHi, nRst, $05

SOVA_SA_PWM1_Loop2:
	dc.b	pTomHi, $01, nRst, $03
	smpsLoop		$00, $03, SOVA_SA_PWM1_Loop2, Target
	dc.b	pTomHi, $01, nRst, pTomHi, nRst, pTomHi, nRst

SOVA_SA_PWM1_Jump1:
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, $02, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01
	smpsAlterVol		$FD
	dc.b	pAKick, $02
	smpsAlterVol		$03
	dc.b	pTomHi, $01, nRst, $03, pTomHi, $01, nRst, pTomHi
	dc.b	nRst, $05

SOVA_SA_PWM1_Loop3:
	dc.b	pTomHi, $01, nRst, $03
	smpsLoop		$00, $03, SOVA_SA_PWM1_Loop3, Target
	dc.b	pTomHi, $01, nRst, pTomHi, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, $02, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo

SOVA_SA_PWM1_Loop4:
	dc.b	pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsLoop		$00, $02, SOVA_SA_PWM1_Loop4, Target
	dc.b	pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, $01, $01
	smpsAlterVol		$FD
	dc.b	pAKick, $02
	smpsAlterVol		$03
	dc.b	pTomHi, $01, nRst, $03, pTomHi, $01, nRst, pTomHi
	dc.b	nRst, $05

SOVA_SA_PWM1_Loop5:
	dc.b	pTomHi, $01, nRst, $03
	smpsLoop		$00, $03, SOVA_SA_PWM1_Loop5, Target
	dc.b	pTomHi, $01, nRst, pTomHi, nRst, pTomHi
	smpsAlterNote	$00
	dc.b	nRst
	smpsJump		SOVA_SA_PWM1_Jump1, Target
	
SOVA_SA_PWM2:
	dc.b	nRst, $10, pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06, pAKick
	dc.b	$02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06

SOVA_SA_PWM2_Loop1:
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop1, Target
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $06, pClosedHH, $02, nRst, pOpenHH
	dc.b	nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06, pAKick
	dc.b	$02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $06, pClosedHH, $02, nRst, pBongoLo
	dc.b	nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06, pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, nRst, $02, pSplashCymb, nRst, $1E

SOVA_SA_PWM2_Jump1:
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, pOpenHH, nRst, pClosedHH, nRst, pBongoLo
	dc.b	nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst
	dc.b	pClosedHH, nRst, $06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06, pClosedHH, $02, nRst
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH

SOVA_SA_PWM2_Loop2:
	dc.b	nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop2, Target
	dc.b	nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pClosedHH, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC

SOVA_SA_PWM2_Loop3:
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop3, Target
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst, pClosedHH, nRst
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, nRst, $02, pCrashCymb, nRst, $1E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B

SOVA_SA_PWM2_Loop4:
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop4, Target
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06, pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pBongoLo, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B

SOVA_SA_PWM2_Loop5:
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop5, Target
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B

SOVA_SA_PWM2_Loop6:
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop6, Target
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pBongoLo, nRst, pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pCrashCymb, nRst, $1E
	smpsJump		SOVA_SA_PWM2_Jump1, Target
	
SOVA_SA_PWM3:
	dc.b	nRst, $10, pCrashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM3_Loop1:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $07, SOVA_SA_PWM3_Loop1, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F

SOVA_SA_PWM3_Loop2:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $03, SOVA_SA_PWM3_Loop2, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $01, nRst, $1F

SOVA_SA_PWM3_Jump1:
	dc.b	pCrashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM3_Loop3:
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $02, SOVA_SA_PWM3_Loop3, Target
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E, pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02

SOVA_SA_PWM3_Loop4:
	dc.b	nRst, $0E, pClosedHH, $02, nRst, $0E, pClosedHH, $02
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02
	smpsLoop		$00, $02, SOVA_SA_PWM3_Loop4, Target
	dc.b	nRst, $0E, pClosedHH, $02, nRst, $0E, pClosedHH, $02
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $06
	smpsAlterVol		$04
	dc.b	pSplashCymb, $02, nRst, $1E, pCrashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM3_Loop5:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $05, SOVA_SA_PWM3_Loop5, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02

SOVA_SA_PWM3_Loop6:
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E, pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02
	smpsLoop		$00, $02, SOVA_SA_PWM3_Loop6, Target
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02

SOVA_SA_PWM3_Loop7:
	dc.b	nRst, $0E, pClosedHH, $02
	smpsLoop		$00, $04, SOVA_SA_PWM3_Loop7, Target
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F

SOVA_SA_PWM3_Loo$8:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $03, SOVA_SA_PWM3_Loo$8, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E, pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $06
	smpsAlterVol		$04
	dc.b	pSplashCymb, $02, nRst, $1E
	smpsJump		SOVA_SA_PWM3_Jump1, Target
	
SOVA_SA_PWM4:
	dc.b	nRst, $10, pSplashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM4_Loop1:
	dc.b	pBongoLo, $02, nRst, $1E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $1E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $1E
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop1, Target
	dc.b	pBongoLo, $02, nRst, $36

SOVA_SA_PWM4_Jump1:
	smpsAlterVol		$F5
	dc.b	pSplashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM4_Loop2:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop2, Target

SOVA_SA_PWM4_Loop3:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop3, Target
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $16
	smpsAlterVol		$04
	dc.b	pTomHi, $01, nRst, $1F, pSplashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM4_Loop4:
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop4, Target
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F

SOVA_SA_PWM4_Loop5:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop5, Target
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02

SOVA_SA_PWM4_Loop6:
	dc.b	nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pBongoLo, $02
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop6, Target
	dc.b	nRst, $0E, pClosedHH, $02, nRst, $0E, pBongoLo, $02
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $16
	smpsAlterVol		$04
	dc.b	pTomHi, $01, nRst, $1F
	smpsAlterVol		$0B
	smpsJump		SOVA_SA_PWM4_Jump1, Target

SOVA_SA_Patches:
	;Voice $00 Soprano Sax
	dc.b	$2A
	dc.b	$01, $08, $06, $04,	$53, $1F, $1F, $50
	dc.b	$12, $14, $11, $1F,	$00, $00, $00, $00
	dc.b	$29, $15, $36, $0B,	$17, $33, $1C, $80
	 
	;Voice $01 Reverse Cymbal
	dc.b	$3D
	dc.b	$0F, $04, $00, $00,	$08, $07, $46, $07
	dc.b	$00, $00, $12, $05,	$00, $0F, $0F, $0F
	dc.b	$00, $0D, $47, $07,	$00, $83, $83, $83
	 
	;Voice $02 Lead 2 Sawtooth
	dc.b	$38
	dc.b	$75, $13, $71, $11,	$D1, $52, $14, $14
	dc.b	$0A, $07, $01, $01,	$00, $00, $00, $00
	dc.b	$F0, $F0, $F0, $FC,	$1E, $1E, $1E, $80
	 
	;Voice $03 Electric Guitar (Clean)
	dc.b	$39
	dc.b	$03, $22, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$00, $00, $00, $08
	dc.b	$10, $18, $10, $18,	$1E, $15, $1D, $80