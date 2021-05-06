
Target	EQU	$4A1E6
	smpsHeaderVoice	TakeNap_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0E
	smpsHeaderFM	TakeNap_FM1, Target, $00, $0F
	smpsHeaderFM	TakeNap_FM2, Target, $00, $0E
	smpsHeaderFM	TakeNap_FM3, Target, $00, $14
	smpsHeaderFM	TakeNap_FM4, Target, $00, $14
	smpsHeaderFM	TakeNap_FM5, Target, $00, $14
	smpsHeaderFM	TakeNap_FM6, Target, $00, $17
	smpsHeaderPSG	TakeNap_PSG1, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	TakeNap_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	TakeNap_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	TakeNap_PWM1, Target, $00, $11
	smpsHeaderPWM	TakeNap_PWM2, Target, $00, $99
	smpsHeaderPWM	TakeNap_PWM3, Target, $00, $96
	smpsHeaderPWM	TakeNap_PWM4, Target, $00, $77

TakeNap_FM1:
TakeNap_FM2:
TakeNap_FM3:
TakeNap_FM4:
TakeNap_FM5:
TakeNap_FM6:
TakeNap_PSG1:
TakeNap_PSG2:
TakeNap_PSG3:
TakeNap_PWM1:
TakeNap_PWM2:
TakeNap_PWM3:
TakeNap_PWM4:
	smpsStop

TakeNap_Patches:	
	dc.b	$2D
	dc.b	$02, $03, $02, $01,	$7F, $DF, $9F, $9F
	dc.b	$12, $0A, $0A, $0A,	$10, $09, $09, $09
	dc.b	$3F, $2F, $2F, $2F,	$10, $80, $80, $80
