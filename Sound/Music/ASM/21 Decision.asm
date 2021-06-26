Target	EQU	$4D833
	smpsHeaderVoice	Decision_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $44
	smpsHeaderFM	Decision_FM1, Target, $F4, $0B
	smpsHeaderFM	Decision_FM2, Target, $0C, $0F
	smpsHeaderFM	Decision_FM3, Target, $0C, $0F
	smpsHeaderFM	Decision_FM4, Target, $0C, $0F
	smpsHeaderFM	Decision_FM5, Target, $0C, $16
	smpsHeaderFM	Decision_FM6, Target, $0C, $18
	smpsHeaderPSG	Decision_PSG1, Target, $00, $00, $00, $00
	smpsHeaderPSG	Decision_PSG2, Target, $00, $00, $00, $00
	smpsHeaderPSG	Decision_PSG3, Target, $23, $01, $00, $00
	smpsHeaderPWM	Decision_PWM1, Target, $00, $AA
	smpsHeaderPWM	Decision_PWM2, Target, $00, $88
	smpsHeaderPWM	Decision_PWM3, Target, $00, $BB
	smpsHeaderPWM	Decision_PWM4, Target, $00, $00

Decision_FM1:
Decision_FM2:
Decision_FM3:
Decision_FM4:
Decision_FM5:
Decision_FM6:
Decision_PSG1:
Decision_PSG2:
Decision_PSG3:
Decision_PWM1:
Decision_PWM2:
Decision_PWM3:
Decision_PWM4:
	smpsStop

Decision_Patches:
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
