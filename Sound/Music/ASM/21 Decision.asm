Target	EQU	$4E9AC

PWMVol	EQU	$7F
PWMPitch	EQU	$00
FMVol1 	EQU $0A-$04
FMVol2 	EQU $0E-$04
PSGVoi	EQU	$00
PSGVol	EQU $06
Silence	EQU	$E3

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
Mod1	EQU	$01010605
Mod2	EQU	$01010305
Mod3	EQU	$01020306
Mod4	EQU	$01020106

	smpsHeaderVoice	SMB3_Cards3_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$03, $20
	smpsHeaderFM	SMB3_Cards3_FM1, Target, $00, FMVol1
	smpsHeaderFM	SMB3_Cards3_FM2, Target, $00, FMVol1
	smpsHeaderFM	SMB3_Cards3_FM3, Target, $00, FMVol2
	smpsHeaderFM	SMB3_Cards3_FM4, Target, $00, FMVol2
	smpsHeaderFM	SMB3_Cards3_FM5, Target, $00, FMVol1
	smpsHeaderFM	SMB3_Cards3_FM6, Target, $00, FMVol1
	smpsHeaderPSG	SMB3_Cards3_PSG1, Target, PSGDelta, PSGVol, $00, PSGVoi
	smpsHeaderPSG	SMB3_Cards3_PSG2, Target, PSGDelta, PSGVol, $00, PSGVoi
	smpsHeaderPSG	SMB3_Cards3_PSG3, Target, PSGDelta, PSGVol, $00, PSGVoi
	smpsHeaderPWM	SMB3_Cards3_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SMB3_Cards3_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SMB3_Cards3_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SMB3_Cards3_PWM4, Target, PWMPitch, PWMVol

SMB3_Cards3_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b nA4, $03, nA4, $03, nRst, $03, nB4, $03
	dc.b nC5, $03, nRst, $03, nD5, $03
	smpsModSet2	Mod1	
	dc.b nD5, $21
	dc.b	Silence

SMB3_Cards3_FM2:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b nG2, $03, nG2, $03, nRst, $03, nG2, $03
	dc.b nG2, $03, nRst, $03, nC2, $03
	smpsModSet2	Mod1
	
	dc.b nC2, $21
	dc.b	Silence

SMB3_Cards3_FM3:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b nD4, $03, nD4, $03, nRst, $03, nE4, $03
	dc.b nF4, $03, nRst, $03, nG4, $03
	smpsModSet2	Mod2
	
	dc.b nG4, $21
	dc.b	Silence

SMB3_Cards3_FM4:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b nC4, $03, nC4, $03, nRst, $03, nD4, $03
	dc.b nE4, $03, nRst, $03, nE4, $03
	smpsModSet2	Mod1
	
	dc.b nE4, $21
	dc.b	Silence

SMB3_Cards3_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b nA5, $03, nA5, $03, nRst, $03, nB5, $03
	dc.b nC6, $03, nRst, $03, nD6, $03
	smpsModSet2	Mod1
	
	dc.b nD6, $21
	dc.b	Silence

SMB3_Cards3_FM6:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b nF4, $03, nF4, $03, nRst, $03, nG4, $03
	dc.b nA4, $03, nRst, $03, nB4, $03
	smpsModSet2	Mod1
	
	dc.b nB4, $21
	dc.b	Silence

SMB3_Cards3_PSG1:
	dc.b nA1, $03, nA1, $03, nRst, $03, nB1, $03
	dc.b nC2, $03, nRst, $03, nD2, $03
	smpsModSet2	Mod3
	
	dc.b nD2, $21
	smpsStop

SMB3_Cards3_PSG2:
	dc.b nD1, $03, nD1, $03, nRst, $03, nE1, $03
	dc.b nF1, $03, nRst, $03, nG1, $03
	smpsModSet2	Mod4
	
	dc.b nG1, $21
	smpsStop

SMB3_Cards3_PSG3:
	dc.b nC1, $03, nC1, $03, nRst, $03, nD1, $03
	dc.b nE1, $03, nRst, $03, nE1, $03
	smpsModSet2	Mod3
	
	dc.b nE1, $21
	smpsStop
	
SMB3_Cards3_PWM1:
	dc.b	pClosedHH, $03, $03, $03, $03, pCrashCymb, $06, $06
	smpsStop
	
SMB3_Cards3_PWM2:
	dc.b	pAKick, $03, $03, $03, $03, pASnare, $06, $06
	smpsStop
	
SMB3_Cards3_PWM3:
	dc.b	pEKick, $03, $03, $03, $03, pESnare, $06, $06
	smpsStop
	
SMB3_Cards3_PWM4:
	dc.b	nRst, $0C, pSplashCymb, $06, $06
	smpsStop

SMB3_Cards3_Patches:
	;S1_Opt Set
	; dc.b	$3D
	; dc.b	$01, $00, $01, $02,	$12, $1F, $1F, $14
	; dc.b	$07, $02, $02, $0A,	$05, $05, $05, $05
	; dc.b	$25, $27, $27, $A7,	$1C, $0C, $0E, $0C
	
	; dc.b	$3A
	; dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	; dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	; dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $0C
	
	;S3K Set
	; dc.b	$3D
	; dc.b	$01, $00, $01, $02,	$12, $1F, $1F, $14
	; dc.b	$07, $02, $02, $0A,	$05, $05, $05, $05
	; dc.b	$25, $27, $27, $A7,	$1C, $8C, $8E, $8C
	
	; dc.b	$3A
	; dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	; dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	; dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $8C
	
	;Optimize set
	dc.b	$3D
	dc.b	$01, $00, $01, $02, $12, $1F, $1F, $14
	dc.b	$07, $02, $02, $0A, $05, $05, $05, $05
	dc.b	$22, $23, $23, $A3, $1C, $0C, $0E, $0C
	
	dc.b	$3A
	dc.b	$01, $02, $01, $01, $14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07, $02, $08, $08, $03
	dc.b	$03, $E2, $A2, $11, $1C, $2B, $28, $0C
