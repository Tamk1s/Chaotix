Target	EQU	$44BA6

PWMVol	EQU	$7F
	smpsHeaderVoice	BMODC_FrontEnd_Patches, Target
	smpsHeaderChan      $06, $03
	smpsHeaderTempoC	$02, $0F
	smpsHeaderFM	BMODC_FrontEnd_FM1, Target, $00, $0E+$08
	smpsHeaderFM	BMODC_FrontEnd_FM2, Target, $00, $12+$08
	smpsHeaderFM	BMODC_FrontEnd_FM3, Target, $00, $0E+$08
	smpsHeaderFM	BMODC_FrontEnd_FM4, Target, $00, $0F
	smpsHeaderFM	BMODC_FrontEnd_FM5, Target, $00, $13
	smpsHeaderFM	BMODC_FrontEnd_FM6, Target, $00, $0F
	smpsHeaderPSG	BMODC_FrontEnd_PSG1, Target, PSGDelta, $07, $00, $00
	smpsHeaderPSG	BMODC_FrontEnd_PSG2, Target, PSGDelta, $06, $00, $00
	smpsHeaderPSG	BMODC_FrontEnd_PSG3, Target, PSGDelta, $06, $00, $05
	smpsHeaderPWM	BMODC_FrontEnd_PWM1, Target, PSGDelta, PWMVol
	smpsHeaderPWM	BMODC_FrontEnd_PWM2, Target, PSGDelta, PWMVol
	smpsHeaderPWM	BMODC_FrontEnd_PWM3, Target, PSGDelta, PWMVol
	smpsHeaderPWM	BMODC_FrontEnd_PWM4, Target, PSGDelta, PWMVol

BMODC_FrontEnd_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00

BMODC_FrontEnd_Loop1:
	dc.b	nC4, $03, nRst, nC4, nRst, nC4, nRst, nC4
	dc.b	nC4, nC4, nC4, nC4, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop1, Target
	smpsFMvoice		$03
	dc.b	nE4, $06, $03, $0F, $0C, $0C, $06, $03
	dc.b	nD4, $06, nE4, nF4, nE4, nD4, nE4, $09
	dc.b	nD4, $03, nRst, nD4, nD4, $0C, $0C, $0C
	dc.b	$03, $0F, $06, $06, $03, $06, $06, nE4
	dc.b	nE4, nE4, $03, $0F, $0C, $0C, $06, $03
	dc.b	nD4, $06, nE4, nF4, nE4, nD4, nE4, $09
	dc.b	nF4, nF4, $03, $09, $06, $06, $06, $03
	dc.b	$06, nE4, nE4, nE4, nE4, nC4, nC4, $09
	dc.b	$09, $03, $09, $09, $03, nRst, $78

BMODC_FrontEnd_Jump1:
	smpsFMvoice		$00
	smpsAlterVol		$FD

BMODC_FrontEnd_Loop2:
	dc.b	nC4, $03, nRst, nC4, nRst, $09, nC4, $03
	dc.b	$03, $03, nRst, nC4, nRst, $0F
	smpsLoop		$00, $06, BMODC_FrontEnd_Loop2, Target
	dc.b	nD4, $03, nRst, nD4, nRst, $09, nD4, $03
	dc.b	$03, $03, nRst, nD4, nRst, $0F, nF4, $03
	dc.b	nRst, nF4, nRst, $09, nF4, $03, $03, $03
	dc.b	nRst, nF4
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsAlterVol		$03
	smpsJump		BMODC_FrontEnd_Jump1, Target

BMODC_FrontEnd_FM2:
	smpsFMvoice		$00
	smpsPan		panCenter

BMODC_FrontEnd_Loop3:
	dc.b	nBb3, $03, nRst, nBb3, nRst, nBb3, nRst, nBb3
	dc.b	nBb3, nBb3, nBb3, nBb3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop3, Target
	smpsFMvoice		$03
	dc.b	nC4, $06, $03, $0F, $0C, $0C, $06, $06
	dc.b	nG3, $03, nE4, $06, nF4, $03, nG3, nC4
	dc.b	$09, nG3, $03, nC4, $06, nG3, $03, nBb3
	dc.b	nF3, nF3, nBb3, $0C, $0C, $0C, nF3, $03
	dc.b	nBb3, nRst, $06, nF3, $09, nBb3, $06, $03
	dc.b	nF3, $0C, nBb3, $03, nC4, $06, $06, $03
	dc.b	$0F, $0C, $0C, $06, $06, $0C, nG3, $03
	dc.b	$06, nD4, $03, nG3, $09, $03, $03, nC4
	dc.b	$09, $03, nG3, nG3, $06, nC4, $09, $09
	dc.b	$06, $06, nG3, $03, nC4, $09, $06, nG3
	dc.b	$09, $03, $09, $03, $12, $06, nRst, $78

BMODC_FrontEnd_Jump2:
	smpsFMvoice		$00
	smpsAlterVol		$FD

BMODC_FrontEnd_Loop4:
	dc.b	nBb3, $03, nRst, nBb3, nRst, $09, nBb3, $03
	dc.b	$03, $03, nRst, nBb3, nRst, $0F
	smpsLoop		$00, $04, BMODC_FrontEnd_Loop4, Target

BMODC_FrontEnd_Loop5:
	dc.b	nA3, $03, nRst, nA3, nRst, $09, nA3, $03
	dc.b	$03, $03, nRst, nA3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop5, Target
	dc.b	nC4, $03, nRst, nC4, nRst, $09, nC4, $03
	dc.b	$03, $03, nRst, nC4, nRst, $0F, nD4, $03
	dc.b	nRst, nD4, nRst, $09, nD4, $03, $03, $03
	dc.b	nRst, nD4
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsAlterVol		$03
	smpsJump		BMODC_FrontEnd_Jump2, Target

BMODC_FrontEnd_FM3:
	smpsPan		panRight
	smpsFMvoice		$00

BMODC_FrontEnd_Loop6:
	dc.b	nC3, $03, nRst, nC3, nRst, nC3, nRst, nC3
	dc.b	nC3, nC3, nC3, nC3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop6, Target
	smpsFMvoice		$03
	dc.b	nG3, $06, $03, $0F, $0C, $0C, $0C, $0C
	dc.b	nRst, $03, nG3, $09, nRst, $0C, nF3, $03
	dc.b	nRst, nF3, nF3, $0C, $06, $06, $03, nRst
	dc.b	$0C, nF3, $09, $09, $06, nRst, $0F, nF3
	dc.b	$03, nG3, $06, $06, $03, $0F, $0C, $0C
	dc.b	$0C, nRst, $0F, nG3, $09, nRst, $0C, nG3
	dc.b	nG3, $03, nRst, $09, nG3, nG3, nG3, $06
	dc.b	$06, $03, $09, $06, nE3, $03, $09, nRst
	dc.b	$03, nC3, $09, nE3, nRst, $03, nC3, $0C
	dc.b	nRst, $78

BMODC_FrontEnd_Jump3:
	smpsFMvoice		$00
	smpsAlterVol		$FD

BMODC_FrontEnd_Loop7:
	dc.b	nC3, $03, nRst, nC3, nRst, $09, nC3, $03
	dc.b	$03, $03, nRst, nC3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop7, Target

BMODC_FrontEnd_Loop8:
	dc.b	nG3, $03, nRst, nG3, nRst, $09, nG3, $03
	dc.b	$03, $03, nRst, nG3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop8, Target

BMODC_FrontEnd_Loop9:
	dc.b	nF3, $03, nRst, nF3, nRst, $09, nF3, $03
	dc.b	$03, $03, nRst, nF3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop9, Target
	dc.b	nG3, $03, nRst, nG3, nRst, $09, nG3, $03
	dc.b	$03, $03, nRst, nG3, nRst, $0F, nC4, $03
	dc.b	nRst, nC4, nRst, $09, nC4, $03, $03, $03
	dc.b	nRst, nC4
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsAlterVol		$03
	smpsJump		BMODC_FrontEnd_Jump3, Target

BMODC_FrontEnd_FM4:
	smpsPan		panLeft
	smpsFMvoice		$01
	dc.b	nC4, $03, nRst, nC4, nRst, nC4, nRst, nC4
	dc.b	nC4, nC4, nC4, nC4, nRst, $15, nC4, $03
	dc.b	nRst, nC4, nRst, nC4, nC4, nC4, nC4, nC4
	;!@ dc.b	nRst, $7F, $7F, $7F, $42
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $42
	smpsFMvoice		$02
	;!@ dc.b	$60
	dc.b	nRst, $60

BMODC_FrontEnd_Jump4:
	smpsFMvoice		$01
	smpsAlterVol		$FD
	dc.b	nC4, $03, nRst, nC4, nRst, $09, nC4, $03
	dc.b	$03, $03, nRst, nC4, nRst, $15

BMODC_FrontEnd_Loop10:
	dc.b	nC4, $03, nRst, $09, nC4, $03, $03, $03
	dc.b	nRst, nC4, nRst, $0F, nC4, $03, nRst
	smpsLoop		$00, $04, BMODC_FrontEnd_Loop10, Target
	dc.b	nC4, nRst, $09, nC4, $03, $03, $03, nRst
	dc.b	nC4, nRst, $0F, nD4, $03, nRst, nD4, nRst
	dc.b	$09, nD4, $03, $03, $03, nRst, nD4, nRst
	dc.b	$0F, nF4, $03, nRst, nF4, nRst, $09, nF4
	dc.b	$03, $03, $03, nRst, nF4
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsAlterVol		$03
	smpsJump		BMODC_FrontEnd_Jump4, Target

BMODC_FrontEnd_FM5:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nBb3, $03, nRst, nBb3, nRst, nBb3, nRst, nBb3
	dc.b	nBb3, nBb3, nBb3, nBb3, nRst, $0F, nBb3, $03
	dc.b	nRst, nBb3, nRst, nBb3, nRst, nBb3, nBb3, nBb3
	dc.b	nBb3, nBb3, nRst, $09
	smpsFMvoice		$02
	dc.b	nG5, $01, nRst, nRst, $0A, nG5, $03, nE5
	dc.b	$06, nG5, nF5, $03, nRst, nF5, nE5, $06
	dc.b	nD5, nC5, nD5, $09, nE5, nG4, $15, nRst
	dc.b	$03, nG4, nRst, nC6, nRst, nC6, nG5, $06
	dc.b	nC6, nBb5, $03, nRst, nBb5, nA5, $06, nG5
	dc.b	nF5, nG5, $0C, nE5, nA5, $09, nG5, $06
	dc.b	nRst, $03, nG4, nRst, nG4, nRst, nG4, nE4
	dc.b	$06, nG4, nF4, nF4, $03, nE4, $06, nD4
	dc.b	nC4, nD4, $09, nE4, nG3, $12, nRst, $06
	dc.b	nG3, nF4, $03, nRst, nF4, nE4, $06, nF4
	dc.b	nE4, nE4, $03, nD4, $06, nC4, nB3, nC4
	dc.b	$18, nC5, nC4, nRst, $0C, nC5, $03, nRst
	dc.b	$69
	smpsFMvoice		$01

BMODC_FrontEnd_Jump5:
	smpsAlterVol		$FD

BMODC_FrontEnd_Loop11:
	dc.b	nBb3, $03, nRst, nBb3, nRst, $09, nBb3, $03
	dc.b	$03, $03, nRst, nBb3, nRst, $0F
	smpsLoop		$00, $04, BMODC_FrontEnd_Loop11, Target

BMODC_FrontEnd_Loop12:
	dc.b	nA3, $03, nRst, nA3, nRst, $09, nA3, $03
	dc.b	$03, $03, nRst, nA3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop12, Target
	dc.b	nC4, $03, nRst, nC4, nRst, $09, nC4, $03
	dc.b	$03, $03, nRst, nC4, nRst, $0F, nD4, $03
	dc.b	nRst, nD4, nRst, $09, nD4, $03, $03, $03
	dc.b	nRst, nD4
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsAlterVol		$03
	smpsJump		BMODC_FrontEnd_Jump5, Target

BMODC_FrontEnd_FM6:
	smpsPan		panRight
	smpsFMvoice		$01
	dc.b	nC3, $03, nRst, nC3, nRst, nC3, nRst, nC3
	dc.b	nC3, nC3, nC3, nC3, nRst, $0F, nC3, $03
	dc.b	nRst, nC3, nRst, nC3, nRst, nC3, nC3, nC3
	;!@ dc.b	nC3, nC3, nRst, $6C, $6C, $6C, $6C, $6C
	dc.b	nC3, nC3, nRst, $6C, nRst, $6C, nRst, $6C, nRst, $6C, nRst, $6C
	;!@ dc.b	$03
	dc.b	nRst, $03

BMODC_FrontEnd_Jump6:
	smpsAlterVol		$FD

BMODC_FrontEnd_Loop13:
	dc.b	nC3, $03, nRst, nC3, nRst, $09, nC3, $03
	dc.b	$03, $03, nRst, nC3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop13, Target

BMODC_FrontEnd_Loop14:
	dc.b	nG3, $03, nRst, nG3, nRst, $09, nG3, $03
	dc.b	$03, $03, nRst, nG3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop14, Target

BMODC_FrontEnd_Loop15:
	dc.b	nF3, $03, nRst, nF3, nRst, $09, nF3, $03
	dc.b	$03, $03, nRst, nF3, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop15, Target
	dc.b	nG3, $03, nRst, nG3, nRst, $09, nG3, $03
	dc.b	$03, $03, nRst, nG3, nRst, $0F, nC4, $03
	dc.b	nRst, nC4, nRst, $09, nC4, $03, $03, $03
	dc.b	nRst, nC4
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsAlterVol		$03
	smpsJump		BMODC_FrontEnd_Jump6, Target

BMODC_FrontEnd_PSG1:
	dc.b	nRst, $5A
	smpsPSGvoice	$00
	dc.b	$01, nA1, nCs2, nRst, $02, nG2, $01, nRst
	dc.b	$06, nG2, $03, nE2, $06, nG2, nF2, $03
	dc.b	nRst, nF2, nE2, $06, nD2, nC2, nD2, $09
	dc.b	nE2, nG1, $15, nRst, $03, nG1, nRst, nC3
	dc.b	nRst, nC3, nG2, $06, nC3, nBb2, $03, nRst
	dc.b	nBb2, nA2, $06, nG2, nF2, nG2, $0C, nE2
	dc.b	nA2, $09, nG2, $06, nRst, $03, nG1, nRst
	dc.b	nG1, nRst, nG1, nE1, $06, nG1, nF1, nF1
	dc.b	$03, nE1, $06, nD1, nC1, nD1, $09, nE1
	dc.b	nG0, $12, nRst, $06, nG0, nF1, $03, nRst
	dc.b	nF1, nE1, $06, nF1, nE1, nE1, $03, nD1
	dc.b	$06, nC1, nB0, nC1, $18, nC2, nC1, nRst
	dc.b	$0C, nC2, $03, nRst, $69

BMODC_FrontEnd_Jump7:
	smpsPSGvoice	$00
	smpsSetVol	$FF

BMODC_FrontEnd_Loop16:
	dc.b	nC0, $03, nRst, nC0, nRst, $09, nC0, $03
	dc.b	$03, $03, nRst, nC0, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop16, Target

BMODC_FrontEnd_Loop17:
	dc.b	nBb0, $03, nRst, nBb0, nRst, $09, nBb0, $03
	dc.b	$03, $03, nRst, nBb0, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop17, Target

BMODC_FrontEnd_Loop18:
	dc.b	nA0, $03, nRst, nA0, nRst, $09, nA0, $03
	dc.b	$03, $03, nRst, nA0, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop18, Target
	dc.b	nG0, $03, nRst, nG0, nRst, $09, nG0, $03
	dc.b	$03, $03, nRst, nG0, nRst, $0F, nG1, $03
	dc.b	nRst, nG1, nRst, $09, nG1, $03, $03, $03
	dc.b	nRst, nG1
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsSetVol	$01
	smpsJump		BMODC_FrontEnd_Jump7, Target

BMODC_FrontEnd_PSG2:
	;!@ dc.b	nRst, $68, $68, $68, $68, $68, $68
	dc.b	nRst, $68, nRst, $68, nRst, $68, nRst, $68, nRst, $68, nRst, $68


BMODC_FrontEnd_Loop19:
	dc.b	nC0, $03, nRst, nC0, nRst, $09, nC0, $03
	dc.b	$03, $03, nRst, nC0, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop19, Target

BMODC_FrontEnd_Loop20:
	dc.b	nBb0, $03, nRst, nBb0, nRst, $09, nBb0, $03
	dc.b	$03, $03, nRst, nBb0, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop20, Target

BMODC_FrontEnd_Loop21:
	dc.b	nA0, $03, nRst, nA0, nRst, $09, nA0, $03
	dc.b	$03, $03, nRst, nA0, nRst, $0F
	smpsLoop		$00, $02, BMODC_FrontEnd_Loop21, Target
	dc.b	nG0, $03, nRst, nG0, nRst, $09, nG0, $03
	dc.b	$03, $03, nRst, nG0, nRst, $0F, nG1, $03
	dc.b	nRst, nG1, nRst, $09, nG1, $03, $03, $03
	dc.b	nRst, nG1
	smpsAlterNote	$00
	dc.b	nRst, $0F
	smpsJump		BMODC_FrontEnd_Loop19, Target

BMODC_FrontEnd_PSG3:
	dc.b	nRst, $60, nC1, $06, $03, nG0, $06, nC1
	dc.b	nG0, nG0, nG0, $03, nC1, $06, nG0, nC1
	dc.b	nC1, $03, $03, nG0, $06, $03, nC1, $06
	dc.b	$06, nG0, nC0, $09

BMODC_FrontEnd_Loop22:
	dc.b	nBb0, $06, $03, nF0, $06
	smpsLoop		$00, $04, BMODC_FrontEnd_Loop22, Target
	dc.b	nBb0, nBb0, nG0, nD0, $03, nC0, $06, nG0
	dc.b	$09, nC1, $06, $03, nG0, $06, nC1, nG0
	dc.b	nG0, nG0, $03, nC1, $06, nG0, nC1, nC1
	dc.b	$03, $03, nG0, $06, $03, nC1, $06, $06
	dc.b	nG0, nC0, $09, nG0, $06, $03, nD0, $06
	dc.b	nG0, nG0, nE0, $03, nF0, $06, nG0, nB0
	dc.b	nC1, nC1, $03, nG0, $06, nC0, nC1, nC1
	dc.b	nG0, nC0, $09, nC1, $06, $03, nG0, $06
	dc.b	nC0, nC1, $03, nRst, $78

BMODC_FrontEnd_Jump8:
	smpsSetVol	$01

BMODC_FrontEnd_Loop23:
	;!@ dc.b	nC1, $06, nRst
	dc.b	nC1, $06, nRst, $06
	smpsLoop		$00, $08, BMODC_FrontEnd_Loop23, Target

BMODC_FrontEnd_Loop24:
	;!@ dc.b	nBb0, nRst
	dc.b	nBb0, $06, nRst, $06
	smpsLoop		$00, $08, BMODC_FrontEnd_Loop24, Target

BMODC_FrontEnd_Loop25:
	;!@ dc.b	nA0, nRst
	dc.b	nA0, $06, nRst, $06
	smpsLoop		$00, $08, BMODC_FrontEnd_Loop25, Target

BMODC_FrontEnd_Loop26:
	;!@ dc.b	nG0, nRst
	dc.b	nG0, $06, nRst, $06
	smpsLoop		$00, $07, BMODC_FrontEnd_Loop26, Target
	;!@ dc.b	nG0
	dc.b	nG0, $06
	smpsAlterNote	$00
	;!@ dc.b	nRst
	dc.b	nRst, $06
	smpsSetVol	$FF
	smpsJump		BMODC_FrontEnd_Jump8, Target
	
BMODC_FrontEnd_PWM1:
	smpsPan		panCenter
	dc.b	pCrashCymb, $03
	smpsAlterVol		$02
	dc.b	pESnare
	smpsAlterVol		$FD
	dc.b	$03
	smpsAlterVol		$05
	dc.b	$03
	smpsAlterVol		$F7
	dc.b	$03
	smpsAlterVol		$07
	dc.b	pEKick
	smpsAlterVol		$F8
	dc.b	pFingSnap, pFingSnap, pEKick, pFingSnap, pESnare, pEKick, pTomHi, nRst
	dc.b	pClickLo, nRst, pEKick, pEKick, pEKick, pEKick, pESnare, pESnare
	dc.b	pEKick, pEKick, pEKick, pEKick
	smpsAlterVol		$05
	dc.b	pESnare, nRst
	smpsAlterVol		$FB
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pEKick, nRst
	smpsAlterVol		$0C

BMODC_FrontEnd_PWM1_Loop1:
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03
	smpsAlterVol		$04
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM1_Loop1, Target
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03, nRst, $24
	smpsAlterVol		$FB
	dc.b	pCrashCymb, $03, nRst, $09
	smpsAlterVol		$09

BMODC_FrontEnd_PWM1_Loop2:
	dc.b	pClosedHH, $03, $03
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03
	smpsAlterVol		$04
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03

BMODC_FrontEnd_PWM1_Jump1:
	smpsAlterVol		$04
	smpsLoop		$00, $04, BMODC_FrontEnd_PWM1_Loop2, Target
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03
	smpsAlterVol		$FD
	dc.b	nB1, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	nB1, $06, pFingSnap, $03
	smpsAlterVol		$07
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	nB1, $06
	smpsAlterVol		$04
	dc.b	nD2, $03
	smpsAlterVol		$FC
	dc.b	$03
	smpsAlterVol		$02
	dc.b	pClosedHH, $06
	smpsAlterVol		$FE
	dc.b	pESnare, $03
	smpsAlterVol		$07
	dc.b	pClosedHH
	smpsAlterVol		$FC
	smpsJump		BMODC_FrontEnd_PWM1_Jump1, Target
	
BMODC_FrontEnd_PWM2:
	dc.b	pESnare, $03, nRst, $0F
	smpsAlterVol		$F0
	dc.b	pEKick, $03, $03, nRst, pEKick, nRst, pClickHi, pEKick
	dc.b	nRst, pClap, nRst, $1B, pFingSnap, $03, $03, nRst
	dc.b	$06, pEKick, $03, nRst, $09
	smpsAlterVol		$01

BMODC_FrontEnd_PWM2_Loop1:
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH
	smpsAlterVol		$F9
	dc.b	pASnare, $06
	smpsAlterVol		$07
	dc.b	pClosedHH, $03
	smpsAlterVol		$06
	dc.b	pOpenHH, $06
	smpsAlterVol		$F5
	dc.b	pClap, nRst, $03
	smpsAlterVol		$FE
	dc.b	pASnare
	smpsLoop		$00, $08, BMODC_FrontEnd_PWM2_Loop1, Target
	dc.b	nRst, $24
	smpsAlterVol		$FE
	dc.b	pClosedHH, $03, nRst, $09
	smpsAlterVol		$02

BMODC_FrontEnd_PWM2_Loop2:
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH
	smpsAlterVol		$F9
	dc.b	pASnare, $06
	smpsAlterVol		$07
	dc.b	pClosedHH, $03
	smpsAlterVol		$06
	dc.b	pOpenHH, $06
	smpsAlterVol		$F5
	dc.b	pClap, nRst, $03
	smpsAlterVol		$FE
	dc.b	pASnare
	smpsLoop		$00, $02, BMODC_FrontEnd_PWM2_Loop2, Target

BMODC_FrontEnd_PWM2_Loop3:
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH
	smpsAlterVol		$F9
	dc.b	pASnare, $06
	smpsAlterVol		$07
	dc.b	pClosedHH, $03
	smpsAlterVol		$06
	dc.b	pOpenHH, $06
	smpsAlterVol		$F5
	dc.b	pClap, nRst, $03
	smpsAlterVol		$FE
	dc.b	pASnare
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM2_Loop3, Target
	smpsAlterVol		$07
	dc.b	pClosedHH, pClosedHH, nRst, $06
	smpsAlterVol		$FB
	dc.b	pClap
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$FD
	dc.b	pASnare
	smpsAlterVol		$17
	dc.b	$03
	smpsAlterVol		$F0
	dc.b	pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare, nRst
	smpsAlterVol		$FB
	dc.b	pClap, $06
	smpsAlterVol		$FE
	dc.b	pASnare, $03
	smpsAlterVol		$04
	dc.b	pESnare
	smpsJump		BMODC_FrontEnd_PWM2_Loop3, Target

BMODC_FrontEnd_PWM3:
	dc.b	nRst, $6C

BMODC_FrontEnd_PWM3_Loop1:
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH, nRst, $0C
	smpsAlterVol		$F9
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM3_Loop1, Target
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH, nRst, $24
	smpsAlterVol		$F7
	dc.b	pEKick, $03, nRst, $15
	smpsAlterVol		$02
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH, nRst, $0C

BMODC_FrontEnd_PWM3_Loop2:
	smpsAlterVol		$F9
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH

BMODC_FrontEnd_PWM3_Jump1:
	dc.b	nRst, $0C
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM3_Loop2, Target
	smpsAlterVol		$F9
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH, nRst
	smpsAlterVol		$05
	dc.b	pClosedHH
	smpsAlterVol		$F4
	dc.b	pASnare
	smpsAlterVol		$0D
	dc.b	pOpenHH, $06
	smpsAlterVol		$F3
	dc.b	pClickLo
	smpsAlterVol		$17
	dc.b	pOpenHH, $03
	smpsAlterVol		$F0
	smpsJump		BMODC_FrontEnd_PWM3_Jump1, Target
	
BMODC_FrontEnd_PWM4:
	smpsPan		panCenter
	dc.b	pESnare

BMODC_FrontEnd_PWM4_Loop1:
	dc.b	$02, $01
	smpsLoop		$00, $08, BMODC_FrontEnd_PWM4_Loop1, Target
	dc.b	nRst, $3C, pESnare

BMODC_FrontEnd_PWM4_Loop2:
	dc.b	$02, $01
	smpsLoop		$00, $04, BMODC_FrontEnd_PWM4_Loop2, Target
	dc.b	nRst, $0C
	smpsAlterVol		$F5

BMODC_FrontEnd_PWM4_Loop3:
	dc.b	pEKick, $06, nRst, $12
	smpsLoop		$00, $0D, BMODC_FrontEnd_PWM4_Loop3, Target
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$05
	dc.b	pESnare

BMODC_FrontEnd_PWM4_Loop4:
	dc.b	$02, $01
	smpsLoop		$00, $1A, BMODC_FrontEnd_PWM4_Loop4, Target
	dc.b	nRst, $06
	smpsAlterVol		$F9
	dc.b	pAKick, $03, nRst, $15
	smpsAlterVol		$02

BMODC_FrontEnd_PWM4_Loop5:
	dc.b	pEKick, $06, nRst, $12
	smpsLoop		$00, $03, BMODC_FrontEnd_PWM4_Loop5, Target
	dc.b	pEKick, $06, nRst

BMODC_FrontEnd_PWM4_Jump1:
	dc.b	nRst, $0C

BMODC_FrontEnd_PWM4_Loop6:
	dc.b	pEKick, $06, nRst, $12
	smpsLoop		$00, $0E, BMODC_FrontEnd_PWM4_Loop6, Target
	dc.b	pClickLo, $06, nRst, pEKick, nRst, pEKick, nRst
	smpsJump		BMODC_FrontEnd_PWM4_Jump1, Target

BMODC_FrontEnd_Patches:	
	;Tuba
	dc.b	$3C
	dc.b	$31, $71, $32, $72,	$14, $19, $14, $19
	dc.b	$06, $00, $00, $00,	$06, $06, $08, $08
	;!@ dc.b	$0F, $0F, $0F, $0F,	$1C, $03, $1E, $03
	dc.b	$0F, $0F, $0F, $0F,	$1C, $03+$12, $1E, $03+$12
	
	;Brass Section
	dc.b	$3D
	dc.b	$31, $21, $71, $11,	$10, $50, $50, $50
	dc.b	$07, $08, $08, $08,	$01, $00, $00, $00
	dc.b	$24, $18, $18, $18,	$1A, $08+$12, $08+$12, $08+$12
	
	;Lead 1 Square
	dc.b	$3C
	dc.b	$02, $01, $32, $01,	$12, $12, $12, $12
	dc.b	$00, $00, $00, $00,	$06, $06, $08, $08
	;!@dc.b	$06, $08, $06, $08,	$24, $08, $24, $0A
	dc.b	$06, $08, $06, $08,	$24, $08+$0C, $24, $0A+$0C

	;Tremolo Strings
	dc.b	$3A
	dc.b	$32, $02, $02, $72,	$9F, $9F, $5F, $5F
	dc.b	$09, $09, $0A, $00,	$09, $09, $09, $09
	dc.b	$15, $F5, $05, $05,	$1E, $25, $12, $08+$0A
