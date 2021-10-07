Target	EQU	$41A4C

FMDelta			EQU	$00
FMVol1			EQU	$08
FMVol2			EQU	$08-$04
FMVol4			EQU	FMVol1+$02
FMVol3			EQU	FMVol1+$02
FMVol5			EQU	FMVol1+$04
FMVoi1_Bells	EQU	$00
FMVoi2_ElecFX	EQU	$01
FMVoi3_Strings	EQU	$02


PSGVoi			EQU	$0A
PSGVol			EQU	$07-$02
PSGModCtrl		EQU	$00

PWMPitch		EQU	$00
PWMVolL			EQU	$0B
PWMVolR			EQU PWMVolL
	smpsHeaderVoice	MDNV2_BlueMoon_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$03, $1A
	smpsHeaderFM	MDNV2_BlueMoon_FM1, Target, FMDelta, FMVol1
	smpsHeaderFM	MDNV2_BlueMoon_FM2, Target, FMDelta, FMVol2
	smpsHeaderFM	MDNV2_BlueMoon_FM3, Target, FMDelta, FMVol4
	smpsHeaderFM	MDNV2_BlueMoon_FM4, Target, FMDelta, FMVol3
	smpsHeaderFM	MDNV2_BlueMoon_FM5, Target, FMDelta, FMVol5
	smpsHeaderFM	MDNV2_BlueMoon_FM6, Target, FMDelta, FMVol5
	smpsHeaderPSG	MDNV2_BlueMoon_PSG1, Target, PSGDelta, PSGVol, PSGModCtrl, PSGVoi
	smpsHeaderPSG	MDNV2_BlueMoon_PSG2, Target, PSGDelta, PSGVol, PSGModCtrl, PSGVoi
	smpsHeaderPSG	MDNV2_BlueMoon_PSG3, Target, PSGDelta, PSGVol, PSGModCtrl, PSGVoi
	smpsHeaderPWM	MDNV2_BlueMoon_PWM1, Target, PWMPitch, PWMVolL, PWMVolR
	smpsHeaderPWM	MDNV2_BlueMoon_PWM2, Target, PWMPitch, PWMVolL, PWMVolR
	smpsHeaderPWM	MDNV2_BlueMoon_PWM3, Target, PWMPitch, PWMVolL, PWMVolR
	smpsHeaderPWM	MDNV2_BlueMoon_PWM4, Target, PWMPitch, PWMVolL, PWMVolR

MDNV2_BlueMoon_FM1:
	smpsPan		panLeft
	smpsFMvoice		FMVoi1_Bells
	dc.b	nC4, $17, nRst, $01, nB3, $12, nRst, $06
	dc.b	nD4, $17, nRst, $19, nC4, $17, nRst, $01
	dc.b	nC4, $0B, nRst, $01, nB3, $06, nRst, nB3
	dc.b	$0B, nRst, $01, nA3, $06, nE3, nRst, $0C
	dc.b	nB3, $06, nC4, nF4, $17, nRst, $01, nE4
	dc.b	$17, nRst, $01, nF4, $12, nRst, $18, nF4
	dc.b	$03, nAb4

MDNV2_BlueMoon_Loop1:
	dc.b	nA4, $0B, nRst, $01, nE4, $06, nRst
	smpsLoop		$00, $02, MDNV2_BlueMoon_Loop1, Target
	dc.b	nAb4, $17, nRst, $0D, nAb3, $03, nB3, nC4
	dc.b	nD4, nE4, $0B, nRst, $01, nA3, $06, nRst
	dc.b	nB3, $12, nRst, $06, nD4, $17, nRst, $0D
	dc.b	nB3, $03, nD4, nF4, nAb4, nA4, $0B, nRst
	dc.b	$01, nB4, $0B, nRst, $01, nC5, $17, nRst
	dc.b	$01, nD5, $17, nRst, $0D, nD4, $06, nE4
	dc.b	nF4, $0B, nRst, $01, nB4, $06, nA4, nE4
	dc.b	$11, nRst, $01, nE4, $06, nA4, $0B, nRst
	dc.b	$01, nD5, $0B, nRst, $13, nF4, $03, nAb4
	dc.b	nA4, $06, nB4, nA4, nB4, nA4, nE4, nD5
	;!@ dc.b	$0B, nRst, $01, nE5, $17, nRst
	dc.b	$0B, nRst, $01, nE5, $17, nRst, $17
	smpsJump		MDNV2_BlueMoon_FM1, Target

MDNV2_BlueMoon_FM2:
	smpsPan		panRight
	smpsFMvoice		FMVoi1_Bells
	dc.b	nRst, $06, nA2, nE3, nA3, nRst, nA2, nE3
	dc.b	nB3, nRst, nAb2, nF3, nB3, nRst, $1E, nF2
	dc.b	$06, nC3, nA3, nRst, nF2, nC3, nA3, nRst
	dc.b	nE2, nE3, nA3, nRst, $1E, nD3, $06, nA3
	dc.b	nC4, nRst, nE3, nG3, nC4, nRst, nF3, nB3
	dc.b	nF4, nRst, $1E, nE3, $06, nB3, nE4, nRst
	dc.b	nE3, nB3, nE4, nRst, nE3, nB3, nE4, nRst
	dc.b	$1E, nA2, $06, nE3, nA3, nRst, nA2, nE3
	dc.b	nB3, nRst, nA2, nE3, nB3, nRst, $1E, nF3
	dc.b	$06, nC4, nA4, nRst, nF3, nC4, nA4, nRst
	dc.b	nE3, nE4, nA4, nRst, $1E, nD3, $06, nA3
	dc.b	nC4, nRst, nE3, nG3, nC4, nRst, nF3, nB3
	dc.b	nF4, nRst, $1E, nE3, $06, nB3, nE4, nRst
	dc.b	nE3, nB3, nE4, nRst, nE3, nB3, nE4, nRst
	dc.b	$16
	smpsJump		MDNV2_BlueMoon_FM2, Target

MDNV2_BlueMoon_FM3:
	smpsFMvoice		FMVoi2_ElecFX
	smpsPan		panCenter
	dc.b	nA2, $03, nE3, nA3, nC4, nE3, nA3, nC4
	dc.b	nE4, nB4, nA4, nE4, nB3, nA4, nE4, nB3
	dc.b	nA3, nF3, nA3, nB3, nD4, nA3, nB3, nD4
	dc.b	nF4, nRst, $18, nA2, $03, nF3, nA3, nC4
	dc.b	nF3, nA3, nC4, nF4, nB4, nA4, nE4, nC4
	dc.b	nA4, nE4, nC4, nA3, nB2, nE3, nA3, nB3
	dc.b	nE3, nA3, nB3, nD4, nRst, $18, nA2, $03
	dc.b	nD3, nA3, nC4, nD3, nA3, nC4, nD4, nC5
	dc.b	nG4, nE4, nC4, nG4, nE4, nC4, nG3, nA2
	dc.b	nF3, nA3, nB3, nF3, nA3, nB3, nD4, nRst
	dc.b	$18, nB2, $03, nE3, nA3, nB3, nE3, nA3
	dc.b	nB3, nE4, nA4, nE4, nB3, nA3, nE4, nB3
	dc.b	nA3, nE3, nB2, nE3, nAb3, nB3, nE3, nAb3
	dc.b	nB3, nE4, nRst, $18
	smpsFMvoice		FMVoi1_Bells
	dc.b	nC4, $0B, nRst, $55, nRst, $30, nB4, $17
	dc.b	nRst, $49, nD4, $0B, nRst, $55, nAb4, $17
	;!@ dc.b	nRst
	dc.b	nRst, $17
	smpsJump		MDNV2_BlueMoon_FM3, Target

MDNV2_BlueMoon_FM4:
	smpsPan		panCenter
	;!@ smpsFMvoice		FMVoi3_Strings
	dc.b	nRst, $55, nRst, $55, nRst, $16
	smpsFMvoice		FMVoi1_Bells
	dc.b	nD4, $17, nRst, $19, nD4, $17, nRst, $49
	dc.b	nD4, $17, nRst, $19
	smpsFMvoice		FMVoi3_Strings
	dc.b	nA3, $17, nRst, $01, nB3, $17, nRst, $01
	dc.b	nB3, $22, nRst, $0E, nC4, $17, nRst, $01
	dc.b	nA3, $17, nRst, $01, nB3, $22, nRst, $0E
	dc.b	nA3, $17, nRst, $01, nG3, $17, nRst, $01
	dc.b	nB3, $22, nRst, $0E, nA3, $2E, nRst, $02
	dc.b	nAb3, $2E
	smpsJump		MDNV2_BlueMoon_FM4, Target

MDNV2_BlueMoon_FM5:
	smpsPan		panLeft
	smpsFMvoice		FMVoi3_Strings
	;!@ dc.b	nRst

MDNV2_BlueMoon_Loop2:
	;!@ dc.b	$33
	dc.b	nRst, $33
	smpsLoop		$00, $07, MDNV2_BlueMoon_Loop2, Target
	dc.b	nRst, $01
	;!@ smpsFMvoice		FMVoi1_Bells
	dc.b	nRst, $1A
	;!@ smpsFMvoice		FMVoi3_Strings
	dc.b	nE3, $17, nRst, $01, nA3, $17, nRst, $01
	dc.b	nAb3, $22, nRst, $0E, nA3, $17, nRst, $01
	dc.b	nF3, $17, nRst, $01, nE3, $22, nRst, $0E
	dc.b	nF3, $17, nRst, $01, nE3, $17, nRst, $01
	dc.b	nF3, $22, nRst, $0E, nE3, $2E, nRst, $02
	dc.b	nE3, $2E
	smpsJump		MDNV2_BlueMoon_FM5, Target

MDNV2_BlueMoon_FM6:
	smpsPan		panRight
	smpsFMvoice		FMVoi3_Strings
	dc.b	nRst, $45, nRst, $45, nRst, $45, nRst, $45
	dc.b	nRst, $45, nRst, $02
	;!@ smpsFMvoice		FMVoi1_Bells
	dc.b	nRst, $25
	smpsFMvoice		FMVoi3_Strings
	dc.b	nC3, $17, nRst, $01, nE3, $17, nRst, $01
	dc.b	nD3, $22, nRst, $0E, nF3, $17, nRst, $01
	dc.b	nC3, $17, nRst, $01, nD3, $22, nRst, $0E
	dc.b	nD3, $17, nRst, $01, nC3, $17, nRst, $01
	dc.b	nD3, $22, nRst, $0E, nB2, $2E, nRst, $02
	dc.b	nB2, $2E
	smpsJump		MDNV2_BlueMoon_FM6, Target

MDNV2_BlueMoon_PSG1:
	smpsPSGvoice	PSGVoi
	dc.b	nC1, $17, nRst, $01, nB0, $12, nRst, $06
	dc.b	nD1, $17, nRst, $19, nC1, $17, nRst, $01
	dc.b	nC1, $0B, nRst, $01, nB0, $06, nA0, nB0
	dc.b	$0B, nRst, $01, nA0, $06, nE0, nRst, $0C
	dc.b	nB0, $06, nC1, nF1, $17, nRst, $01, nE1
	dc.b	$17, nRst, $01, nF1, $12, nRst, $18, nF1
	;!@ dc.b	$03, nAb1
	dc.b	$03, nAb1, $03

MDNV2_BlueMoon_Loop3:
	;! dc.b	nA1, $0B, nRst, $01, nE1, $06, nRst
	dc.b	nA1, $0B, nRst, $01, nE1, $06, nRst, $06
	smpsLoop		$00, $02, MDNV2_BlueMoon_Loop3, Target
	dc.b	nAb1, $17, nRst, $0D, nAb0, $03, nB0, nC1
	dc.b	nD1, nE1, $0B, nRst, $01, nA0, $06, nRst
	dc.b	nB0, $12, nRst, $06, nD1, $17, nRst, $0D
	dc.b	nB0, $03, nD1, nF1, nAb1, nA1, $0B, nRst
	dc.b	$01, nB1, $0B, nRst, $01, nC2, $17, nRst
	dc.b	$01, nD2, $17, nRst, $0D, nD1, $06, nE1
	dc.b	nF1, $0B, nRst, $01, nB1, $06, nA1, nE1
	dc.b	$11, nRst, $01, nE1, $06, nA1, $0B, nRst
	dc.b	$01, nD2, $0B, nRst, $13, nF1, $03, nAb1
	dc.b	nA1, $06, nB1, nA1, nB1, nA1, nE1, nD2
	;!@ dc.b	$0B, nRst, $01, nE2, $17, nRst
	dc.b	$0B, nRst, $01, nE2, $17, nRst, $17
	smpsJump		MDNV2_BlueMoon_PSG1, Target

MDNV2_BlueMoon_PSG2:
	smpsPSGvoice	PSGVoi
	dc.b	nRst, $06, nC0, nE0, nA0, nRst, nC0, nE0
	dc.b	nB0, nRst, nC0, nF0, nB0, nRst, $1E, nC0
	dc.b	$06, $06, nA0, nRst, nC0, nC0, nA0, nRst
	dc.b	nC0, nE0, nA0, nRst, $1E, nD0, $06, nA0
	dc.b	nC1, nRst, nE0, nG0, nC1, nRst, nF0, nB0
	dc.b	nF1, nRst, $1E, nE0, $06, nB0, nE1, nRst
	dc.b	nE0, nB0, nE1, nRst, nE0, nB0, nE1, nRst
	dc.b	$1E, nC0, $06, nE0, nA0, nRst, nC0, nE0
	dc.b	nB0, nRst, nC0, nE0, nB0, nRst, $1E, nF0
	dc.b	$06, nC1, nA1, nRst, nF0, nC1, nA1, nRst
	dc.b	nE0, nE1, nA1, nRst, $1E, nD0, $06, nA0
	dc.b	nC1, nRst, nE0, nG0, nC1, nRst, nF0, nB0
	dc.b	nF1, nRst, $1E, nE0, $06, nB0, nE1, nRst
	dc.b	nE0, nB0, nE1, nRst, nE0, nB0, nE1, nRst
	dc.b	$16
	smpsJump		MDNV2_BlueMoon_PSG2, Target

MDNV2_BlueMoon_PSG3:
	smpsPSGvoice	PSGVoi
	dc.b	nRst, $55, nRst, $55, nRst, $16, nD1, $17
	dc.b	nRst, $19, nD1, $17, nRst, $49, nD1, $17
	dc.b	nRst, $19, nC1, $0B, nRst, $55, nRst, $30
	dc.b	nB1, $17, nRst, $49, nD1, $0B, nRst, $55
	;!@ dc.b	nAb1, $17, nRst
	dc.b	nAb1, $17, nRst, $17
	smpsJump		MDNV2_BlueMoon_PSG3, Target
	
MDNV2_BlueMoon_PWM1:
	dc.b	pClosedHH

MDNV2_BlueMoon_PWM1_Loop1:
	dc.b	$03
	smpsLoop		$00, $10, MDNV2_BlueMoon_PWM1_Loop1, Target
	dc.b	pASnare, $06, $06, $06, $1E
	smpsLoop		$01, $07, MDNV2_BlueMoon_PWM1, Target
	dc.b	pClosedHH

MDNV2_BlueMoon_PWM1_Loop2:
	dc.b	$03
	smpsLoop		$00, $10, MDNV2_BlueMoon_PWM1_Loop2, Target
	dc.b	pASnare, $06, $06, $06, $1C
	smpsJump		MDNV2_BlueMoon_PWM1, Target
	
MDNV2_BlueMoon_PWM2:
	dc.b	pEKick, $0C, $0C, $0C, $0C, pESnare, $06, $06
	dc.b	$06, $1E
	smpsLoop		$00, $07, MDNV2_BlueMoon_PWM2, Target
	dc.b	pEKick, $0C, $0C, $0C, $0C, pESnare, $06, $06
	dc.b	$06, $1C
	smpsJump		MDNV2_BlueMoon_PWM2, Target
	
MDNV2_BlueMoon_PWM3:
	dc.b	pAKick, $0C, $0C, $0C, $0C, pCrashCymb, $06, $06
	dc.b	$06, $1E
	smpsLoop		$00, $07, MDNV2_BlueMoon_PWM3, Target
	dc.b	pAKick, $0C, $0C, $0C, $0C, pCrashCymb, $06, $06
	dc.b	$06, $1C
	smpsJump		MDNV2_BlueMoon_PWM3, Target
	
MDNV2_BlueMoon_PWM4:
	dc.b	nRst, $30, pSplashCymb

MDNV2_BlueMoon_PWM4_Loop1:
	dc.b	$06, $06, $06, $4E
	smpsLoop		$00, $03, MDNV2_BlueMoon_PWM4_Loop1, Target
	dc.b	$06, $06, $06, $1E

MDNV2_BlueMoon_PWM4_Loop2:
	dc.b	pRideBell, $0C, $0C, $0C, $0C, pTomHi, $06, pTomMid
	dc.b	pTomLow, pTomLower, pClosedHH, $03, $03, pOpenHH, pOpenHH, pClosedHH
	dc.b	pClosedHH, pOpenHH, pOpenHH
	smpsLoop		$00, $03, MDNV2_BlueMoon_PWM4_Loop2, Target
	dc.b	pRideBell, $0C, $0C, $0C, $0C, pSega, $2E
	smpsJump		MDNV2_BlueMoon_PWM4, Target

MDNV2_BlueMoon_Patches:	
	;$00 Music Box bells
	dc.b	$36
	dc.b	$73, $72, $35, $30,	$17, $16, $16, $0E
	dc.b	$08, $08, $09, $08,	$00, $08, $08, $05
	dc.b	$D5, $35, $07, $55,	$1C, $86-$04, $90-$0C, $86-$04

	;$01 Electric FX
	dc.b	$3B
	dc.b	$00, $71, $71, $01,	$1F, $16, $0F, $12
	dc.b	$10, $10, $10, $10,	$06, $06, $06, $06
	dc.b	$00, $01, $01, $16,	$19, $19, $19, $84-$02

	;$02 Strings
	dc.b	$3B
	dc.b	$51, $71, $61, $41,	$51, $16, $18, $1A
	dc.b	$05, $01, $01, $00,	$09, $01, $01, $01
	dc.b	$17, $97, $27, $47,	$1C, $22, $15, $88-$05
