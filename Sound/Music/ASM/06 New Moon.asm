Target	EQU	$41B9C
	smpsHeaderVoice	NewMoon_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $1C
	smpsHeaderFM	NewMoon_FM1, Target, $00, $14
	smpsHeaderFM	NewMoon_FM2, Target, $00, $0E
	smpsHeaderFM	NewMoon_FM3, Target, $00, $0E
	smpsHeaderFM	NewMoon_FM4, Target, $00, $14
	smpsHeaderFM	NewMoon_FM5, Target, $00, $13
	smpsHeaderFM	NewMoon_FM6, Target, $00, $16
	smpsHeaderPSG	NewMoon_PSG1, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	NewMoon_PSG2, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	NewMoon_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	NewMoon_PWM1, Target, $00, $AA
	smpsHeaderPWM	NewMoon_PWM2, Target, $00, $BB
	smpsHeaderPWM	NewMoon_PWM3, Target, $00, $99
	smpsHeaderPWM	NewMoon_PWM4, Target, $00, $77

NewMoon_FM1:
NewMoon_FM2:
NewMoon_FM3:
NewMoon_FM4:
NewMoon_FM5:
NewMoon_FM6:
NewMoon_PSG1:
NewMoon_PSG2:
NewMoon_PSG3:
NewMoon_PWM1:
NewMoon_PWM2:
NewMoon_PWM3:
NewMoon_PWM4:
	smpsStop

NewMoon_Patches:	
	dc.b	$3B
	dc.b	$18, $31, $04, $02,	$DF, $9F, $9F, $9F
	dc.b	$14, $08, $0E, $07,	$10, $0E, $0F, $07
	dc.b	$6F, $7F, $3F, $8F,	$12, $14, $18, $80
	
	dc.b	$01
	dc.b	$76, $75, $72, $33,	$D5, $57, $9F, $FF
	dc.b	$02, $0B, $05, $0B,	$0A, $0A, $0F, $09
	dc.b	$FF, $2F, $3F, $FF,	$1E, $28, $16, $80
	
	dc.b	$1F
	dc.b	$67, $32, $53, $23,	$1C, $98, $1F, $1F
	dc.b	$12, $0F, $0F, $0F,	$00, $00, $00, $00
	dc.b	$FF, $0F, $0F, $0F,	$80, $83, $80, $80
	
	dc.b	$3A
	dc.b	$02, $09, $01, $02,	$8E, $8E, $8D, $55
	dc.b	$0E, $0E, $0E, $04,	$00, $00, $00, $09
	dc.b	$1F, $FF, $3F, $4F,	$16, $29, $1E, $80
	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $DF, $DF, $DF
	dc.b	$00, $00, $03, $02,	$00, $04, $02, $01
	dc.b	$BF, $4C, $6C, $5C,	$22, $8E, $8E, $8E
	
	dc.b	$2C
	dc.b	$72, $72, $33, $32,	$1F, $08, $1F, $08
	dc.b	$01, $00, $01, $00,	$01, $00, $01, $00
	dc.b	$1F, $0F, $1F, $0F,	$19, $80, $17, $85
	
	dc.b	$37
	dc.b	$52, $31, $34, $50,	$1F, $1F, $1F, $1F
	dc.b	$05, $05, $10, $10,	$05, $05, $05, $05
	dc.b	$4D, $4D, $4C, $4C,	$80, $87, $87, $80
