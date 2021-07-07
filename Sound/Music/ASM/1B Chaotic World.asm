Target	EQU	$4BAC7

PSGVoi	EQU $02
PSGPitch1	EQU	PSGDelta
PSGPitch2	EQU	PSGDelta+$0C
PSGPitch3	EQU	PSGDelta+$24
PSGVol1	EQU	$06+$02
PSGVol2	EQU	PSGVol1+$01
PSGVol3	EQU	PSGVol2+$01

;!@
FMVoi1	EQU	$00
FMVoi2	EQU	$01
FMVoi3	EQU	$02
FMPitch	EQU $00

PWMVol	EQU	$8F
PWMPitch EQU $1F
	smpsHeaderVoice		SMB3_Bonus_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$02, $03
	smpsHeaderFM		SMB3_Bonus_FM1, Target, FMPitch, $14
	smpsHeaderFM		SMB3_Bonus_FM2, Target, FMPitch, $1C
	smpsHeaderFM		SMB3_Bonus_FM3, Target, FMPitch, $28
	smpsHeaderFM		SMB3_Bonus_FM4, Target, FMPitch, $34
	smpsHeaderFM		SMB3_Bonus_FM5, Target, FMPitch, $3C
	smpsHeaderFM		SMB3_Bonus_FM6, Target, FMPitch, $40
	smpsHeaderPSG		SMB3_Bonus_PSG1, Target, PSGPitch1, PSGVol1, $00, PSGVoi
	smpsHeaderPSG		SMB3_Bonus_PSG2, Target, PSGPitch2, PSGVol2, $00, PSGVoi
	smpsHeaderPSG		SMB3_Bonus_PSG3, Target, PSGPitch3, PSGVol3, $00, PSGVoi
	smpsHeaderPWM		SMB3_Bonus_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM		SMB3_Bonus_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM		SMB3_Bonus_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM		SMB3_Bonus_PWM4, Target, PWMPitch, PWMVol

SMB3_Bonus_FM1:
	smpsPan		panLeft
	smpsFMvoice		FMVoi1

SMB3_Bonus_Loop1:
	dc.b	nC5, $06, nCs5, nD5, nEb5, nE5, nG4, nBb4
	dc.b	nB4
	smpsLoop		$00, $0C, SMB3_Bonus_Loop1, Target
	smpsJump		SMB3_Bonus_FM1, Target

SMB3_Bonus_FM2:
	smpsPan		panCenter
	smpsFMvoice		FMVoi1

SMB3_Bonus_Loop2:
	dc.b	nC4, $06, nCs4, nD4, nEb4, nE4, nG3, nBb3
	dc.b	nB3
	smpsLoop		$00, $0C, SMB3_Bonus_Loop2, Target
	smpsJump		SMB3_Bonus_FM2, Target

SMB3_Bonus_FM3:
	smpsPan		panRight
	smpsFMvoice		FMVoi2

SMB3_Bonus_Loop3:
	dc.b	nC3, $06, nCs3, nD3, nEb3, nE3, nG2, nBb2
	dc.b	nB2
	smpsLoop		$00, $0C, SMB3_Bonus_Loop3, Target
	smpsJump		SMB3_Bonus_FM3, Target

SMB3_Bonus_FM4:
	smpsPan		panLeft
	smpsFMvoice		FMVoi2

SMB3_Bonus_Loop4:
	dc.b	nC2, $06, nCs2, nD2, nEb2, nE2, nG1, nBb1
	dc.b	nB1
	smpsLoop		$00, $0C, SMB3_Bonus_Loop4, Target
	smpsJump		SMB3_Bonus_FM4, Target

SMB3_Bonus_FM5:
	smpsPan		panCenter
	smpsFMvoice		FMVoi3

SMB3_Bonus_Loop5:
	dc.b	nA1, $06, nBb1, nB1, nC2, nCs2, nE1, nG1
	dc.b	nAb1
	smpsLoop		$00, $0C, SMB3_Bonus_Loop5, Target
	smpsJump		SMB3_Bonus_FM5, Target

SMB3_Bonus_FM6:
	smpsPan		panRight
	smpsFMvoice		FMVoi3

SMB3_Bonus_Loop6:
	dc.b	nFs1, $06, nG1, nAb1, nA1, nBb1, nCs1, nE1
	dc.b	nF1
	smpsLoop		$00, $0C, SMB3_Bonus_Loop6, Target
	smpsJump		SMB3_Bonus_FM6, Target

SMB3_Bonus_PSG1:
	smpsPSGvoice	PSGVoi

SMB3_Bonus_Loop7:
	dc.b	nC1, $06, nCs1, nD1, nEb1, nE1, nG0, nBb0
	dc.b	nB0
	smpsLoop		$00, $07, SMB3_Bonus_Loop7, Target
	;!@ dc.b	nC1, nCs1, nD1, nEb1, nE1, nG0
	dc.b	nC1, $06, nCs1, nD1, nEb1, nE1, nG0
	smpsJump		SMB3_Bonus_PSG1, Target

SMB3_Bonus_PSG2:
	smpsPSGvoice	PSGVoi
	dc.b	nC0

SMB3_Bonus_Loop8:
	dc.b	$06, nCs0, nD0, nEb0, nE0, nC0, nC0, nC0
	smpsLoop		$00, $0C, SMB3_Bonus_Loop8, Target
	smpsJump		SMB3_Bonus_PSG2, Target

SMB3_Bonus_PSG3:
	smpsStop
	smpsPSGvoice	PSGVoi
	;!@ dc.b	nC0

SMB3_Bonus_Loop9:
	;!@ dc.b	$06
	dc.b	nC0, $06
	smpsLoop		$00, $60, SMB3_Bonus_Loop9, Target
	smpsJump		SMB3_Bonus_PSG3, Target
	
SMB3_Bonus_PWM1:
	dc.b	pTomLow

SMB3_Bonus_PWM1_Loop1:
	dc.b	$0C
	smpsLoop		$00, $08, SMB3_Bonus_PWM1_Loop1, Target

SMB3_Bonus_PWM1_Loop2:
	dc.b	pEKick, $06, pTomLow
	smpsLoop		$00, $04, SMB3_Bonus_PWM1_Loop2, Target

SMB3_Bonus_PWM1_Loop3:
	dc.b	pEKick, pClosedHH
	smpsLoop		$00, $04, SMB3_Bonus_PWM1_Loop3, Target

SMB3_Bonus_PWM1_Loop4:
	dc.b	pEKick, pAKick, pEKick, $05, $01, pAKick, $06
	smpsLoop		$00, $02, SMB3_Bonus_PWM1_Loop4, Target
	dc.b	pEKick, pAKick, pEKick, pAKick

SMB3_Bonus_PWM1_Loop5:
	dc.b	pEKick, pAKick, pEKick, $05, $01, pAKick, $06
	smpsLoop		$00, $03, SMB3_Bonus_PWM1_Loop5, Target
	dc.b	pEKick, pAKick, pEKick, pAKick, pEKick, pAKick, pEKick, $05

SMB3_Bonus_PWM1_Loop6:
	dc.b	pTomLow, $01, pCrashCymb, $06, pTomHi, pTomHi, $23
	smpsLoop		$00, $03, SMB3_Bonus_PWM1_Loop6, Target
	dc.b	pTomLow, $01, pCrashCymb, $06

SMB3_Bonus_PWM1_Loop7:
	dc.b	pTomHi
	smpsLoop		$00, $07, SMB3_Bonus_PWM1_Loop7, Target
	dc.b	pAKick
	smpsJump		SMB3_Bonus_PWM1, Target
	
SMB3_Bonus_PWM2:
	dc.b	nRst, $7F, $17, pTomLow, $0C, $0C, $0B, $01
	dc.b	pCrashCymb

SMB3_Bonus_PWM2_Loop1:
	dc.b	$0C, pClosedHH
	smpsLoop		$00, $07, SMB3_Bonus_PWM2_Loop1, Target
	dc.b	pClosedHH, pClosedHH, $7F, nRst, $47, pAKick, $06, pTomHi
	smpsJump		SMB3_Bonus_PWM2, Target
	
SMB3_Bonus_PWM3:
	dc.b	nRst, $7F, $3B, pTomLow

SMB3_Bonus_PWM3_Loop1:
	dc.b	$0C
	smpsLoop		$00, $0F, SMB3_Bonus_PWM3_Loop1, Target
	dc.b	$7F, nRst, $53
	smpsJump		SMB3_Bonus_PWM3, Target
	
SMB3_Bonus_PWM4:
	dc.b	nRst, $7F, $47, pOpenHH

SMB3_Bonus_PWM4_Loop1:
	dc.b	$0C
	smpsLoop		$00, $0E, SMB3_Bonus_PWM4_Loop1, Target
	dc.b	$7F, nRst, $53
	smpsJump		SMB3_Bonus_PWM4, Target

SMB3_Bonus_Patches:
	; ;Accoustic Bass
	; dc.b	$3A
	; dc.b	$11, $15, $01, $01,	$59, $59, $5C, $4E
	; dc.b	$0A, $0B, $0D, $04,	$00, $00, $00, $00
	; dc.b	$15, $58, $26, $06,	$1D, $15, $2D, $0C+$06
	
	; ;AGuit Nylon
	; dc.b	$02
	; dc.b	$31, $75, $01, $01,	$55, $54, $50, $4E
	; dc.b	$07, $0B, $08, $05,	$00, $00, $00, $00
	; dc.b	$37, $3C, $3C, $1C,	$25, $0F, $2D, $08+$06
	
	; ;Slap Bass 1
	; dc.b	$02
	; dc.b	$31, $75, $01, $01,	$55, $54, $50, $4E
	; dc.b	$07, $0B, $08, $05,	$00, $00, $00, $00
	; dc.b	$37, $3C, $3C, $1C,	$25, $0F, $2D, $10+$06
	
	
	dc.b	$12
	dc.b	$70, $77, $30, $71, $1F, $D5, $1F, $1F
	dc.b	$0A, $08, $05, $08, $07, $08, $06, $06
	;!@ dc.b	$28, $57, $17, $57, $21, $17, $25, $08
	dc.b	$28, $57, $17, $57, $28, $1E, $28, $12
	
	dc.b	$12
	dc.b	$70, $77, $30, $71, $1F, $D5, $1F, $1F
	dc.b	$0A, $09, $05, $0B, $07, $08, $06, $06
	dc.b	$28, $57, $18, $5A, $21, $17, $25, $0C+$0C
	
	dc.b	$12
	dc.b	$70, $77, $30, $71, $1F, $D5, $1F, $1F
	dc.b	$12, $0B, $0F, $0F, $07, $08, $06, $06
	dc.b	$CB, $FB, $BB, $BD, $21, $17, $25, $14
