Target	EQU	$40000

FMPitch1	EQU	$00
FMPitch2	EQU	$F4
FMVol1	EQU	$10
FMVol2	EQU	$0F
FMVol3	EQU	$0B
FMVoi1	EQU	$00	;Lead 1 Square
FMVoi2	EQU	$01	;Synth 1 Bass
FMVoi3	EQU	$02	;Overdriven Guitar
FMVoi4	EQU	$03	;Choir Aahs (addendum)

PSGPitch1	EQU	PSGDelta
PSGPitch2	EQU	$00
PSGVol1	EQU	$05
PSGVol2	EQU	$03
PSGVoi1	EQU	$00
PSGVoi2	EQU	$04
PSGVoi3	EQU	$06

PWMPitch	EQU	$00
PWMVol		EQU	$99

	smpsHeaderVoice	SRB2_INV_Patches, Target
	smpsHeaderChan      $06, $03
	smpsHeaderTempo		$03, $33
	smpsHeaderFM	SRB2_INV_FM1, Target, FMPitch1, FMVol1
	smpsHeaderFM	SRB2_INV_FM2, Target, FMPitch1, FMVol2
	smpsHeaderFM	SRB2_INV_FM3, Target, FMPitch2, FMVol3
	smpsHeaderFM	SRB2_INV_FM4, Target, FMPitch2, FMVol3
	smpsHeaderFM	SRB2_INV_FM5, Target, FMPitch1, FMVol3
	smpsHeaderFM	SRB2_INV_FM6, Target, FMPitch1, FMVol3
	smpsHeaderPSG	SRB2_INV_PSG1, Target, PSGPitch1, PSGVol1, $00, PSGVoi1
	smpsHeaderPSG	SRB2_INV_PSG2, Target, PSGPitch2, PSGVol2, $00, PSGVoi2
	smpsHeaderPSG	SRB2_INV_PSG3, Target, PSGPitch1, PSGVol2, $00, PSGVoi3
	smpsHeaderPWM	SRB2_INV_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SRB2_INV_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SRB2_INV_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SRB2_INV_PWM4, Target, PWMPitch, PWMVol

SRB2_INV_FM1:
	smpsFMvoice		FMVoi1

SRB2_INV_Loop1:
	smpsPan		panRight
	dc.b	nCs5, $01, nRst
	smpsPan		panLeft
	dc.b	nCs6, nAb5, nRst
	smpsPan		panRight
	dc.b	nE5
	smpsPan		panLeft
	dc.b	nCs5, nRst
	smpsPan		panRight
	dc.b	nFs5, nE5, nRst
	smpsPan		panLeft
	dc.b	nAb5
	smpsPan		panRight
	dc.b	nB5, nRst
	smpsPan		panLeft
	dc.b	nCs6, nAb5, nRst
	smpsPan		panRight
	dc.b	nCs5
	smpsPan		panLeft
	dc.b	nAb4, nRst
	smpsPan		panRight
	dc.b	nFs5, nE5, nRst
	smpsPan		panLeft
	dc.b	nB4
	smpsLoop		$00, $0D, SRB2_INV_Loop1, Target
	smpsPan		panCenter
	smpsAlterVol		$04
	dc.b	nCs5, $03
	smpsStop

SRB2_INV_FM2:
	smpsFMvoice		FMVoi2
	smpsPan		panCenter
	dc.b	nRst, $18

SRB2_INV_Loop3:
	dc.b	nCs3, $01, nRst, $02

SRB2_INV_Loop2:
	dc.b	nCs3, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop2, Target
	dc.b	nFs3, $06, $05, nRst, $01, nE3, $05, nRst
	dc.b	$01, nE3, $05, nRst, $01, nE3, $03
	smpsLoop		$01, $05, SRB2_INV_Loop3, Target
	dc.b	nCs3, $01, nRst, $02, nCs3, $05, nRst, $01
	dc.b	nCs3, $05, nRst, $01, nCs3, $03, nE3, nFs3
	dc.b	$06, $03, nAb3, nA3, $05, nRst, $01, nAb3
	dc.b	$08, nRst, $01, nCs3, $05
	smpsStop

SRB2_INV_FM3:
	smpsPan		panLeft
	;!@ smpsFMvoice		FMVoi1
	smpsFMvoice		FMVoi4
	dc.b	nB5, $17, nRst, $01, nCs5, $55, smpsNoAttack, $0A
	dc.b	nRst, $01, nAb5, $55, smpsNoAttack, $0A, nRst, $01
	dc.b	nB5, $45, nFs5, $0B, nRst, $01, nE5, $0E
	dc.b	nRst, $01, nCs5, $05
	smpsStop

SRB2_INV_FM4:
	smpsPan		panRight
	;!@ smpsFMvoice		FMVoi1
	smpsFMvoice		FMVoi4
	dc.b	nE5, $17, nRst, $55, nRst, $0C, nCs5, $55
	dc.b	smpsNoAttack, $0A, nRst, $01, nAb5, $45, nCs5, $0B
	dc.b	nRst, $01, nB4, $0E
	smpsStop

SRB2_INV_FM5:
	smpsPan		panLeft
	smpsFMvoice		FMVoi3
	dc.b	nRst, $18

SRB2_INV_Loop5:
	dc.b	nCs3, $01, nRst, $02

SRB2_INV_Loop4:
	dc.b	nCs3, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop4, Target
	dc.b	nCs3, $06, $05, nRst, $01, nB2, $05, nRst
	dc.b	$01, nB2, $05, nRst, $01, nB2, $03
	smpsLoop		$01, $06, SRB2_INV_Loop5, Target
	dc.b	nCs3, $05
	smpsStop

SRB2_INV_FM6:
	smpsPan		panRight
	smpsFMvoice		FMVoi3
	dc.b	nRst, $18

SRB2_INV_Loop7:
	dc.b	nAb2, $01, nRst, $02

SRB2_INV_Loop6:
	dc.b	nAb2, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop6, Target
	dc.b	nAb2, $06, $05, nRst, $01, nFs2, $05, nRst
	dc.b	$01, nFs2, $05, nRst, $01, nFs2, $03
	smpsLoop		$01, $05, SRB2_INV_Loop7, Target
	dc.b	nAb2, $01, nRst, $02

SRB2_INV_Loop8:
	dc.b	nAb2, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop8, Target
	dc.b	nFs2, $06, $05, nRst, $01, nE2, $05, nRst
	dc.b	$01, nE2, $05, nRst, $01, nE2, $03, nAb2
	dc.b	$05
	smpsStop

SRB2_INV_PSG1:
	dc.b	nCs2, $01, nRst, nCs3, nAb2, nRst, nE2, nCs2
	dc.b	nRst, nFs2, nE2, nRst, nAb2, nB2, nRst, nCs3
	dc.b	nAb2, nRst, nCs2, nAb1, nRst, nFs2, nE2, nRst
	dc.b	nB1
	smpsLoop		$00, $0D, SRB2_INV_PSG1, Target
	dc.b	nCs2, $03
	smpsStop

SRB2_INV_PSG2:
	dc.b	nB2, $17, nRst, $01, nCs2, $55, smpsNoAttack, $0A
	dc.b	nRst, $01, nAb2, $55, smpsNoAttack, $0A, nRst, $01
	dc.b	nB2, $45, nFs2, $0B, nRst, $01, nE2, $0E
	smpsStop

SRB2_INV_PSG3:
	dc.b	nRst, $18

SRB2_INV_Loop10:
	dc.b	nCs0, $01, nRst, $02

SRB2_INV_Loop9:
	dc.b	nCs0, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_Loop9, Target
	dc.b	nCs0, $06, $05, nRst, $01, nC0, $05, nRst
	dc.b	$01, nC0, $05, nRst, $01, nC0, $03
	smpsLoop		$01, $06, SRB2_INV_Loop10, Target
	dc.b	nCs0, $05
	smpsStop

SRB2_INV_PWM1:
	dc.b	nRst, $0C, pESnare

SRB2_INV_PWM1_Loop1:
	dc.b	$01, nRst, pESnare
	smpsLoop		$00, $04, SRB2_INV_PWM1_Loop1, Target

SRB2_INV_PWM1_Loop2:
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_PWM1_Loop2, Target
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, pESnare, $01, nRst
	dc.b	pESnare

SRB2_INV_PWM1_Loop3:
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_PWM1_Loop3, Target
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $01, nRst, pESnare
	dc.b	pESnare, nRst, pESnare

SRB2_INV_PWM1_Loop4:
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $05, nRst, $01
	smpsLoop		$00, $02, SRB2_INV_PWM1_Loop4, Target
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $08, nRst
	dc.b	$01, pTomHi, nRst, pTomMid, pTomLow, $03, pESnare, nRst
	dc.b	pEKick, pEKick, pESnare, $05, nRst, $01, pEKick, $03
	dc.b	pESnare, $01, nRst, pESnare, pESnare, nRst, pESnare
	smpsStop
	
SRB2_INV_PWM2:
	dc.b	nRst, $18, pCrashCymb, $17, nRst, $49, pCrashCymb, $17
	dc.b	nRst, $49, pCrashCymb, $17, nRst, $2E, pCrashCymb, $03
	dc.b	nRst, $09, pCrashCymb, $03, nRst, $0C, pSplashCymb, $05
	smpsStop
	
SRB2_INV_PWM3:
	dc.b	nRst, $18, pSplashCymb, $55, nRst, $0B, pSplashCymb, $55
	dc.b	nRst, $0B, pSplashCymb, $45, $0C, $03
	smpsStop
	
SRB2_INV_PWM4:
	;smpsPan		panCenter
	dc.b	nRst, $18

SRB2_INV_PWM4_Loop3:
	dc.b	pClosedHH, $02, $01, $02, $01

SRB2_INV_PWM4_Loop2:
	dc.b	pOpenHH

SRB2_INV_PWM4_Loop1:
	dc.b	$02, pClosedHH, $01
	smpsLoop		$00, $04, SRB2_INV_PWM4_Loop1, Target
	smpsLoop		$01, $07, SRB2_INV_PWM4_Loop2, Target
	dc.b	pOpenHH, $02, $01, $02, $01
	smpsLoop		$02, $02, SRB2_INV_PWM4_Loop3, Target
	dc.b	pClosedHH, $02, $01, $02, $01

SRB2_INV_PWM4_Loop5:
	dc.b	pOpenHH

SRB2_INV_PWM4_Loop4:
	dc.b	$02, pClosedHH, $01
	smpsLoop		$00, $04, SRB2_INV_PWM4_Loop4, Target
	smpsLoop		$01, $06, SRB2_INV_PWM4_Loop5, Target
	dc.b	$02, $01, pOpenHH, $02, pClosedHH, $01, $02, $01
	dc.b	$02, $01, pOpenHH, $02, $01, $02, $01
	smpsStop

SRB2_INV_Patches:
	;Voice $00 Lead 1 Square
	dc.b	$2E
	dc.b	$02, $01, $71, $31,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$00, $0A, $0A, $0A,	$1C, $84, $84, $84
	
	;Voice $01 Synth 1 Bass
	dc.b	$3D
	dc.b	$00, $30, $70, $00,	$1F, $1F, $1F, $11
	dc.b	$0B, $09, $00, $1F,	$00, $00, $00, $00
	dc.b	$FF, $F9, $0F, $07,	$1A, $80, $90, $80
	
	;Voice $02 Overdriven Guitar
	dc.b	$39
	dc.b	$03, $22, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$00, $00, $00, $00
	dc.b	$10, $18, $10, $18,	$1E, $12, $1D, $80
	
	;ADDENDUM!
	;Voice $03 Choir Aahs
	; $06
	dc.b 	$06
	dc.b	$34, $34, $74, $74, $4E, $4E, $4E, $4E 
	dc.b	$08, $08, $08, $08, $01, $01, $01, $01
	dc.b	$1B, $1D, $1B, $1D, $20, $84, $90, $84
	;spAlgorithm	$06
	;spFeedback	$00
	;spDetune	$03, $07, $03, $07
	;spMultiple	$04, $04, $04, $04
	;spRateScale	$01, $01, $01, $01
	;spAttackRt	$0E, $0E, $0E, $0E
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$08, $08, $08, $08
	;spSustainLv	$01, $01, $01, $01
	;spDecayRt	$01, $01, $01, $01
	;spReleaseRt	$0B, $0B, $0D, $0D
	;spTotalLv	$20, $10, $04, $04