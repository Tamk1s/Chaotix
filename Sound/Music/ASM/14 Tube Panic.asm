Target	EQU	$4A915
	smpsHeaderVoice	TubePanic_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0A
	smpsHeaderFM	TubePanic_FM1, Target, $00, $0D
	smpsHeaderFM	TubePanic_FM2, Target, $00, $17
	smpsHeaderFM	TubePanic_FM3, Target, $00, $17
	smpsHeaderFM	TubePanic_FM4, Target, $0C, $11
	smpsHeaderFM	TubePanic_FM5, Target, $0C, $11
	smpsHeaderFM	TubePanic_FM6, Target, $0C, $11
	smpsHeaderPSG	TubePanic_PSG1, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	TubePanic_PSG2, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	TubePanic_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	TubePanic_PWM1, Target, $00, $AA
	smpsHeaderPWM	TubePanic_PWM2, Target, $00, $CC
	smpsHeaderPWM	TubePanic_PWM3, Target, $00, $AA
	smpsHeaderPWM	TubePanic_PWM4, Target, $00, $88

TubePanic_FM1:
TubePanic_FM2:
TubePanic_FM3:
TubePanic_FM4:
TubePanic_FM5:
TubePanic_FM6:
TubePanic_PSG1:
TubePanic_PSG2:
TubePanic_PSG3:
TubePanic_PWM1:
TubePanic_PWM2:
TubePanic_PWM3:
TubePanic_PWM4:
	smpsStop
	
TubePanic_Patches:
	dc.b	$4B
	dc.b	$12, $12, $23, $62,	$3F, $9F, $9F, $9F
	dc.b	$02, $0C, $13, $07,	$12, $11, $05, $0A
	dc.b	$0F, $3F, $5F, $6F,	$14, $0D, $15, $80
