Target	EQU	$4E624
	smpsHeaderVoice	HappyDay_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $1C
	smpsHeaderFM	HappyDay_FM1, Target, $F4, $05
	smpsHeaderFM	HappyDay_FM2, Target, $00, $10
	smpsHeaderFM	HappyDay_FM3, Target, $00, $0F
	smpsHeaderFM	HappyDay_FM4, Target, $00, $1C
	smpsHeaderFM	HappyDay_FM5, Target, $0C, $16
	smpsHeaderFM	HappyDay_FM6, Target, $00, $24
	smpsHeaderPSG	HappyDay_PSG1, Target, $F4, $02, $00, $00
	smpsHeaderPSG	HappyDay_PSG2, Target, $F4, $02, $00, $00
	smpsHeaderPSG	HappyDay_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	HappyDay_PWM1, Target, $00, $CC
	smpsHeaderPWM	HappyDay_PWM2, Target, $00, $8A
	smpsHeaderPWM	HappyDay_PWM3, Target, $00, $DD
	smpsHeaderPWM	HappyDay_PWM4, Target, $00, $00

HappyDay_FM1:
HappyDay_FM2:
HappyDay_FM3:
HappyDay_FM4:
HappyDay_FM5:
HappyDay_FM6:
HappyDay_PSG1:
HappyDay_PSG2:
HappyDay_PSG3:
HappyDay_PWM1:
HappyDay_PWM2:
HappyDay_PWM3:
HappyDay_PWM4:
	smpsStop

HappyDay_Patches:
	dc.b	$3A
	dc.b	$01, $05, $32, $71,	$CF, $95, $1F, $1F
	dc.b	$0E, $0F, $05, $0C,	$17, $06, $06, $07
	dc.b	$8F, $4F, $4F, $4F,	$21, $13, $24, $80
