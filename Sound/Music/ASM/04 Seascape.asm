Target	EQU	$41A38
	smpsHeaderVoice	Seascape_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $33
	smpsHeaderFM	Seascape_FM1, Target, $00, $0B
	smpsHeaderFM	Seascape_FM2, Target, $00, $0C
	smpsHeaderFM	Seascape_FM3, Target, $00, $0C
	smpsHeaderFM	Seascape_FM4, Target, $00, $0C
	smpsHeaderFM	Seascape_FM5, Target, $00, $0C
	smpsHeaderFM	Seascape_FM6, Target, $00, $12
	smpsHeaderPSG	Seascape_PSG1, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	Seascape_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Seascape_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Seascape_PWM1, Target, $00, $BB
	smpsHeaderPWM	Seascape_PWM2, Target, $00, $BB
	smpsHeaderPWM	Seascape_PWM3, Target, $00, $BB
	smpsHeaderPWM	Seascape_PWM4, Target, $00, $53

Seascape_FM1:
Seascape_FM2:
Seascape_FM3:
Seascape_FM4:
Seascape_FM5:
Seascape_FM6:
Seascape_PSG1:
Seascape_PSG2:
Seascape_PSG3:
Seascape_PWM1:
Seascape_PWM2:
Seascape_PWM3:
Seascape_PWM4:
	smpsStop
	
Seascape_Patches:
	dc.b	$3B
	dc.b	$53, $31, $02, $03,	$DF, $9F, $5F, $9F
	dc.b	$10, $08, $0E, $07,	$13, $0E, $0D, $02
	dc.b	$7F, $7F, $3F, $5F,	$10, $16, $1F, $80
	
	dc.b	$3B
	dc.b	$08, $02, $02, $02,	$5F, $7F, $7F, $5F
	dc.b	$17, $07, $06, $0C,	$15, $10, $10, $15
	dc.b	$FF, $FF, $FF, $FF,	$23, $20, $1E, $80
	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $09, $09, $09,	$00, $06, $06, $06
	dc.b	$0F, $AC, $AC, $AC,	$22, $89, $86, $86
