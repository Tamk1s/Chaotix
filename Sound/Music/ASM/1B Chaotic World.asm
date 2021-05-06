
Target	EQU	$4D64A
	smpsHeaderVoice	CWorld_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $16
	smpsHeaderFM	CWorld_FM1, Target, $00, $0D
	smpsHeaderFM	CWorld_FM2, Target, $00, $0D
	smpsHeaderFM	CWorld_FM3, Target, $FB, $17
	smpsHeaderFM	CWorld_FM4, Target, $00, $1A
	smpsHeaderFM	CWorld_FM5, Target, $FB, $1C
	smpsHeaderFM	CWorld_FM6, Target, $00, $00
	smpsHeaderPSG	CWorld_PSG1, Target, $E8, $02, $00, $00
	smpsHeaderPSG	CWorld_PSG2, Target, $E8, $05, $00, $00
	smpsHeaderPSG	CWorld_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	CWorld_PWM1, Target, $00, $FF
	smpsHeaderPWM	CWorld_PWM2, Target, $00, $CD
	smpsHeaderPWM	CWorld_PWM3, Target, $00, $58
	smpsHeaderPWM	CWorld_PWM4, Target, $00, $44

CWorld_FM1:
CWorld_FM2:
CWorld_FM3:
CWorld_FM4:
CWorld_FM5:
CWorld_FM6:
CWorld_PSG1:
CWorld_PSG2:
CWorld_PSG3:
CWorld_PWM1:
CWorld_PWM2:
CWorld_PWM3:
CWorld_PWM4:
	smpsStop

CWorld_Patches:
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
