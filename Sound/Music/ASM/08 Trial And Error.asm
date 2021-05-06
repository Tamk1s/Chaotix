Target	EQU	$41EE2
	smpsHeaderVoice	TrialError_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $22
	smpsHeaderFM	TrialError_FM1, Target, $00, $0C
	smpsHeaderFM	TrialError_FM2, Target, $0C, $16
	smpsHeaderFM	TrialError_FM3, Target, $0C, $14
	smpsHeaderFM	TrialError_FM4, Target, $0C, $0D
	smpsHeaderFM	TrialError_FM5, Target, $0C, $0D
	smpsHeaderFM	TrialError_FM6, Target, $00, $10
	smpsHeaderPSG	TrialError_PSG1, Target, $F4, $01, $00, $0C
	smpsHeaderPSG	TrialError_PSG2, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	TrialError_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	TrialError_PWM1, Target, $00, $AA
	smpsHeaderPWM	TrialError_PWM2, Target, $00, $99
	smpsHeaderPWM	TrialError_PWM3, Target, $00, $AA
	smpsHeaderPWM	TrialError_PWM4, Target, $00, $AA

TrialError_FM1:
TrialError_FM2:
TrialError_FM3:
TrialError_FM4:
TrialError_FM5:
TrialError_FM6:
TrialError_PSG1:
TrialError_PSG2:
TrialError_PSG3:
TrialError_PWM1:
TrialError_PWM2:
TrialError_PWM3:
TrialError_PWM4:
	smpsStop

TrialError_Patches:	
	dc.b	$3B
	dc.b	$58, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$05, $14, $18, $80
	
	dc.b	$74
	dc.b	$39, $30, $53, $51,	$5F, $9D, $5F, $7F
	dc.b	$0F, $03, $10, $09,	$0A, $09, $08, $06
	dc.b	$3F, $5F, $5F, $1F,	$16, $80, $15, $80
	
	dc.b	$3B
	dc.b	$11, $05, $31, $02,	$1D, $15, $15, $1F
	dc.b	$06, $04, $08, $0C,	$0E, $0A, $0A, $0B
	dc.b	$7F, $9F, $7F, $9F,	$16, $20, $19, $80
	
	dc.b	$3A
	dc.b	$02, $09, $01, $02,	$8E, $8E, $8D, $55
	dc.b	$0E, $0E, $0E, $04,	$00, $00, $00, $09
	dc.b	$1F, $FF, $3F, $4F,	$16, $29, $1E, $80
