
Target	EQU	$41AC5
	smpsHeaderVoice	Midnight_GH_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $48
	smpsHeaderFM	Midnight_GH_FM1, Target, $00, $0C
	smpsHeaderFM	Midnight_GH_FM2, Target, $00, $10
	smpsHeaderFM	Midnight_GH_FM3, Target, $00, $14
	smpsHeaderFM	Midnight_GH_FM4, Target, $00, $14
	smpsHeaderFM	Midnight_GH_FM5, Target, $F4, $15
	smpsHeaderFM	Midnight_GH_FM6, Target, $00, $10
	smpsHeaderPSG	Midnight_GH_PSG1, Target, $DC, $03, $00, $00
	smpsHeaderPSG	Midnight_GH_PSG2, Target, $DC, $02, $00, $00
	smpsHeaderPSG	Midnight_GH_PSG3, Target, $23, $02, $00, $00
	smpsHeaderPWM	Midnight_GH_PWM1, Target, $00, $CC
	smpsHeaderPWM	Midnight_GH_PWM2, Target, $00, $BB
	smpsHeaderPWM	Midnight_GH_PWM3, Target, $00, $BB
	smpsHeaderPWM	Midnight_GH_PWM4, Target, $00, $66

Midnight_GH_FM1:
Midnight_GH_FM2:
Midnight_GH_FM3:
Midnight_GH_FM4:
Midnight_GH_FM5:
Midnight_GH_FM6:
Midnight_GH_PSG1:
Midnight_GH_PSG2:
Midnight_GH_PSG3:
Midnight_GH_PWM1:
Midnight_GH_PWM2:
Midnight_GH_PWM3:
Midnight_GH_PWM4:
	smpsStop

Midnight_GH_Patches:	
	dc.b	$3B
	dc.b	$58, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$05, $14, $18, $80
	
	dc.b	$84
	dc.b	$3F, $01, $01, $01,	$1F, $1F, $5F, $5F
	dc.b	$0E, $0A, $09, $0A,	$0F, $0B, $0A, $0A
	dc.b	$2F, $1F, $4F, $1F,	$2C, $80, $12, $80
	
	dc.b	$1F
	dc.b	$66, $30, $53, $22,	$1C, $9C, $1F, $1F
	dc.b	$12, $0F, $0F, $0F,	$00, $00, $00, $00
	dc.b	$FF, $0F, $0F, $0F,	$84, $80, $80, $87
	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $0C, $08, $03,	$00, $11, $10, $0C
	dc.b	$0F, $4C, $4C, $1C,	$22, $83, $82, $82
	
	dc.b	$3D
	dc.b	$01, $01, $01, $01,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	
	dc.b	$06
	dc.b	$03, $02, $01, $03,	$1F, $0A, $0A, $0D
	dc.b	$08, $08, $08, $08,	$01, $01, $00, $00
	dc.b	$3F, $2F, $1F, $1F,	$20, $84, $80, $80
