Target	EQU	$4A1E6

FMPitch		EQU	$00
;!@ 
;FMVol1		EQU	$0F
;FMVol2		EQU	$1F
FMVol1		EQU	$07
FMVol2		EQU	$0F

PSGPitch 	EQU	PSGDelta
;!@ 
;PSGVol		EQU	$07
PSGVol1		EQU	$03
PSGVol2		EQU	$05
PSGMod		EQU	$00
PSGVoi1		EQU	$00
PSGVoi2		EQU	$01

PWMPitch	EQU	$00
PWMVol1		EQU	$AA
PWMVol2		EQU	$55

	smpsHeaderVoice	KSSU_HelperReset_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$04, $20
	smpsHeaderFM	KSSU_HelperReset_FM1, Target, FMPitch, FMVol1
	smpsHeaderFM	KSSU_HelperReset_FM2, Target, FMPitch, FMVol2
	smpsHeaderFM	KSSU_HelperReset_FM3, Target, FMPitch, FMVol1
	smpsHeaderFM	KSSU_HelperReset_FM4, Target, FMPitch, FMVol2
	smpsHeaderFM	KSSU_HelperReset_FM5, Target, FMPitch, FMVol1
	smpsHeaderFM	KSSU_HelperReset_FM6, Target, FMPitch, FMVol2
	smpsHeaderPSG	KSSU_HelperReset_PSG1, Target, PSGPitch, PSGVol1, PSGMod, PSGVoi1
	smpsHeaderPSG	KSSU_HelperReset_PSG2, Target, PSGPitch, PSGVol1, PSGMod, PSGVoi1
	;!@ smpsHeaderPSG	KSSU_HelperReset_PSG3, Target, PSGPitch, PSGVol1, PSGMod, PSGVoi2
	smpsHeaderPSG	KSSU_HelperReset_PSG3, Target, PSGPitch, PSGVol2, PSGMod, PSGVoi1
	smpsHeaderPWM	KSSU_HelperReset_PWM1, Target, PWMPitch, PWMVol1
	smpsHeaderPWM	KSSU_HelperReset_PWM2, Target, PWMPitch, PWMVol1
	smpsHeaderPWM	KSSU_HelperReset_PWM3, Target, PWMPitch, PWMVol1
	smpsHeaderPWM	KSSU_HelperReset_PWM4, Target, PWMPitch, PWMVol1

KSSU_HelperReset_FM1:
	smpsFMvoice		$00

KSSU_HelperReset_Jump1:
	smpsPan		panRight
	dc.b nF4, $04, nA4, nC5, nE5, nF5, nE5, nC5
	dc.b nA4, nE4, nG4, nB4, nD5, nE5, nD5, nB4
	dc.b nG4, nD4, nF4, nA4, nC5, nD5, nC5, nA4
	dc.b nF4, nE4, nFs4, nA4, nCs5, nE5, nCs5, nA4
	dc.b nFs4, nF4, nA4, nC5, nE5, nF5, nE5, nC5
	dc.b nA4, nE4, nG4, nB4, nD5, nE5, nD5, nB4
	dc.b nG4, nF4, nA4, nC5, nD5, nD4, nF4, nA4
	dc.b nC5, nA3, nC4, nE4, nG4, nG3, nC4, nE4
	dc.b nG4, nRst
	smpsJump		KSSU_HelperReset_Jump1, Target

KSSU_HelperReset_FM2:
	smpsFMvoice		$00

KSSU_HelperReset_Jump2:
	smpsPan		panLeft
	dc.b nRst, $04, nF4, nA4, nC5, nE5, nF5, nE5
	dc.b nC5, nA4, nE4, nG4, nB4, nD5, nE5, nD5
	dc.b nB4, nG4, nD4, nF4, nA4, nC5, nD5, nC5
	dc.b nA4, nF4, nE4, nFs4, nA4, nCs5, nE5, nCs5
	dc.b nA4, nFs4, nF4, nA4, nC5, nE5, nF5, nE5
	dc.b nC5, nA4, nE4, nG4, nB4, nD5, nE5, nD5
	dc.b nB4, nG4, nF4, nA4, nC5, nD5, nD4, nF4
	dc.b nA4, nC5, nA3, nC4, nE4, nG4, nG3, nC4
	dc.b nE4, nG4
	smpsJump		KSSU_HelperReset_Jump2, Target

KSSU_HelperReset_FM3:
	smpsFMvoice		$01

KSSU_HelperReset_Jump3:
	smpsPan		panRight
	dc.b nA4, $0C, nB4, $04, nC5, $08, nA5, nG5
	dc.b nE5, $04, nD5, nE5, $08, nA4, nD5, nF5
	dc.b nG5, nF5, nE5, nA5, nAb5, nE5, nC5, $04
	dc.b nB4, nA4, nB4, nC5, $08, nA5, nG5, nE5
	dc.b $04, nD5, nE5, $08, nA4, nD5, nF5, nG5
	dc.b nF5, nE5, nC5, $04, nB4, nC5, $08, nB4
	dc.b nRst, $04
	smpsJump		KSSU_HelperReset_Jump3, Target

KSSU_HelperReset_FM4:
	smpsFMvoice		$01

KSSU_HelperReset_Jump4:
	smpsPan		panLeft
	dc.b nRst, $04, nA4, $0C, nB4, $04, nC5, $08
	dc.b nA5, nG5, nE5, $04, nD5, nE5, $08, nA4
	dc.b nD5, nF5, nG5, nF5, nE5, nA5, nAb5, nE5
	dc.b nC5, $04, nB4, nA4, nB4, nC5, $08, nA5
	dc.b nG5, nE5, $04, nD5, nE5, $08, nA4, nD5
	dc.b nF5, nG5, nF5, nE5, nC5, $04, nB4, nC5
	dc.b $08, nB4
	smpsJump		KSSU_HelperReset_Jump4, Target

KSSU_HelperReset_FM5:
	smpsFMvoice		$02
	smpsPan		panRight
	dc.b nF3, $20, nE3, nD3, nFs3, nF3, nE3, nD3
	dc.b nA2, $10, nG2, nRst, $04
	smpsJump		KSSU_HelperReset_FM5, Target

KSSU_HelperReset_FM6:
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b nRst, $04, nF3, $20, nE3, nD3, nFs3, nF3
	dc.b nE3, nD3, nA2, $10, nG2
	smpsJump		KSSU_HelperReset_FM6, Target

KSSU_HelperReset_PSG1:
	dc.b nF1, $04, nA1, nC2, nE2, nF2, nE2, nC2
	dc.b nA1, nE1, nG1, nB1, nD2, nE2, nD2, nB1
	dc.b nG1, nD1, nF1, nA1, nC2, nD2, nC2, nA1
	dc.b nF1, nE1, nFs1, nA1, nCs2, nE2, nCs2, nA1
	dc.b nFs1, nF1, nA1, nC2, nE2, nF2, nE2, nC2
	dc.b nA1, nE1, nG1, nB1, nD2, nE2, nD2, nB1
	dc.b nG1, nF1, nA1, nC2, nD2, nD1, nF1, nA1
	dc.b nC2, nA0, nC1, nE1, nG1, nG0, nC1, nE1
	dc.b nG1, nRst
	;!@ smpsStop
	smpsJump		KSSU_HelperReset_PSG1, Target

KSSU_HelperReset_PSG2:
	smpsPSGvoice	PSGVoi1
	dc.b nA1, $0C, nB1, $04, nC2, $08, nA2, nG2
	dc.b nE2, $04, nD2, nE2, $08, nA1, nD2, nF2
	dc.b nG2, nF2, nE2, nA2, nAb2, nE2, nC2, $04
	dc.b nB1, nA1, nB1, nC2, $08, nA2, nG2, nE2
	dc.b $04, nD2, nE2, $08, nA1, nD2, nF2, nG2
	dc.b nF2, nE2, nC2, $04, nB1, nC2, $08, nB1
	dc.b nRst, $04
	smpsJump		KSSU_HelperReset_PSG2, Target

KSSU_HelperReset_PSG3:
	;!@ 
	; smpsPSGvoice	PSGVoi2
	smpsPSGvoice	PSGVoi1
	dc.b nF0, $20, nE0, nD0, nFs0, nF0, nE0, nD0
	dc.b nC0, $10, $10, nRst, $04
	smpsJump		KSSU_HelperReset_PSG3, Target
	
KSSU_HelperReset_PWM1:
	dc.b pCrashCymb, $20

KSSU_HelperReset_PWM1_Loop1:
	dc.b pEKick, $04, pClosedHH, $02, $02, $02, $02, pEKick
	dc.b $04, $04, pClosedHH, $02, $02, pESnare, $04, pClosedHH
	dc.b $02, $02
	smpsLoop		$00, $07, KSSU_HelperReset_PWM1_Loop1, Target
	dc.b $04
	smpsJump		KSSU_HelperReset_PWM1, Target
	
KSSU_HelperReset_PWM2:
	dc.b pCrashCymb, $20, pClosedHH

KSSU_HelperReset_PWM2_Loop1:
	dc.b $02, $0A, $02, $02, $02, $06, $02, $06
	smpsLoop		$00, $06, KSSU_HelperReset_PWM2_Loop1, Target
	dc.b $02, $0A, $02, $02, $02, $06, $02, $0A
	smpsJump		KSSU_HelperReset_PWM2, Target
	
KSSU_HelperReset_PWM3:
	dc.b pEKick, $04, pClosedHH, $02, $02, $02, $02, pEKick
	dc.b $04, $04, pClosedHH, $02, $02, pESnare, $04, pClosedHH
	dc.b $02, $3F, nRst, nRst, nRst, $29
	smpsJump		KSSU_HelperReset_PWM3, Target
	
KSSU_HelperReset_PWM4:
	dc.b pClosedHH, $02, $0A, $02, $02, $02, $06, $02
	dc.b $3F, nRst, nRst, nRst, $2D
	smpsJump		KSSU_HelperReset_PWM4, Target

KSSU_HelperReset_Patches:

	; Patch $00
	; Orch strings
	; $3A
	; $71, $0C, $33, $01,	$1C, $16, $1D, $1F
	; $04, $06, $04, $08,	$00, $01, $03, $00
	; $16, $17, $16, $A6,	$25, $2F, $25, $80	
	dc.b	$3A
	dc.b	$71, $0C, $33, $01,	$1C, $16, $1D, $1F
	dc.b	$04, $06, $04, $08,	$00, $01, $03, $00
	;!@ dc.b	$16, $17, $16, $A6,	$25, $2F, $25, $80
	dc.b	$16, $17, $16, $A6,	$25, $2F, $30, $08
	
	; smpsVcAlgorithm	$02
	; smpsVcFeedback	$07
	; smpsVcDetune	$07, $03, $00, $00
	; smpsVcCoarseFreq	$01, $03, $0C, $01
	; smpsVcRateScale	$00, $00, $00, $00
	; smpsVcAttackRate	$1C, $1D, $16, $1F
	; smpsVcAmpMod	$00, $00, $00, $00
	; smpsVcDecayRate1	$04, $04, $06, $08
	; smpsVcDecayRate2	$01, $01, $01, $0A
	; smpsVcDecayLevel	$00, $03, $01, $00
	; smpsVcReleaseRate	$06, $06, $07, $06
	; smpsVcTotalLevel	$25, $25, $2F, $00

	; Patch $01
	; Violin
	; $3A
	; $01, $05, $31, $01,	$59, $59, $5C, $4E
	; $0A, $0B, $0D, $04,	$03, $02, $03, $06
	; $15, $58, $27, $06,	$1D, $0F, $30, $80
	dc.b	$3A
	dc.b	$01, $05, $31, $01,	$59, $59, $5C, $4E
	dc.b	$0A, $0B, $0D, $04,	$03, $02, $03, $06
	;!@ dc.b	$15, $58, $27, $06,	$1D, $0F, $30, $80
	dc.b	$15, $58, $27, $06,	$20, $13, $30, $80
	; smpsVcAlgorithm	$02
	; smpsVcFeedback	$07
	; smpsVcDetune	$00, $03, $00, $00
	; smpsVcCoarseFreq	$01, $01, $05, $01
	; smpsVcRateScale	$01, $01, $01, $01
	; smpsVcAttackRate	$19, $1C, $19, $0E
	; smpsVcAmpMod	$00, $00, $00, $00
	; smpsVcDecayRate1	$0A, $0D, $0B, $04
	; smpsVcDecayRate2	$01, $02, $05, $00
	; smpsVcDecayLevel	$03, $03, $02, $06
	; smpsVcReleaseRate	$05, $07, $08, $06
	; smpsVcTotalLevel	$1D, $30, $0F, $00

	; Patch $02
	; Piccolo
	; $34
	; $73, $02, $01, $31,	$52, $5F, $5F, $1F
	; $05, $05, $05, $0A,	$03, $04, $04, $04
	; $21, $11, $23, $45,	$1E, $90, $23, $86
	dc.b	$34
	dc.b	$73, $02, $01, $31,	$52, $5F, $5F, $1F
	dc.b	$05, $05, $05, $0A,	$03, $04, $04, $04
	dc.b	$21, $11, $23, $45,	$1E, $90, $23, $86
	; smpsVcAlgorithm	$04
	; smpsVcFeedback	$06
	; smpsVcDetune	$07, $00, $00, $03
	; smpsVcCoarseFreq	$03, $01, $02, $01
	; smpsVcRateScale	$01, $01, $01, $00
	; smpsVcAttackRate	$12, $1F, $1F, $1F
	; smpsVcAmpMod	$00, $00, $00, $00
	; smpsVcDecayRate1	$05, $05, $05, $0A
	; smpsVcDecayRate2	$02, $02, $01, $04
	; smpsVcDecayLevel	$03, $04, $04, $04
	; smpsVcReleaseRate	$01, $03, $01, $05
	; smpsVcTotalLevel	$1E, $23, $10, $06
