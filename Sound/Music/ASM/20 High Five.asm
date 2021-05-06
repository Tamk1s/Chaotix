
Target	EQU	$4E7E4
	smpsHeaderVoice	High5_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $30
	smpsHeaderFM	High5_FM1, Target, $00, $06
	smpsHeaderFM	High5_FM2, Target, $00, $06
	smpsHeaderFM	High5_FM3, Target, $FD, $07
	smpsHeaderFM	High5_FM4, Target, $0C, $09
	smpsHeaderFM	High5_FM5, Target, $00, $17
	smpsHeaderFM	High5_FM6, Target, $FD, $17
	smpsHeaderPSG	High5_PSG1, Target, $E8, $04, $00, $00
	smpsHeaderPSG	High5_PSG2, Target, $E8, $04, $00, $00
	smpsHeaderPSG	High5_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	High5_PWM1, Target, $00, $AA
	smpsHeaderPWM	High5_PWM2, Target, $00, $C8
	smpsHeaderPWM	High5_PWM3, Target, $00, $00
	smpsHeaderPWM	High5_PWM4, Target, $00, $00

High5_FM1:
High5_FM2:
High5_FM3:
High5_FM4:
High5_FM5:
High5_FM6:
High5_PSG1:
High5_PSG2:
High5_PSG3:
High5_PWM1:
High5_PWM2:
High5_PWM3:
High5_PWM4:
	smpsStop

High5_Patches:
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
