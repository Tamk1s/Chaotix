Target	EQU	$41E56
	smpsHeaderVoice	Labyrinth_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $25
	smpsHeaderFM	Labyrinth_FM1, Target, $00, $0C
	smpsHeaderFM	Labyrinth_FM2, Target, $0C, $13
	smpsHeaderFM	Labyrinth_FM3, Target, $00, $17
	smpsHeaderFM	Labyrinth_FM4, Target, $00, $17
	smpsHeaderFM	Labyrinth_FM5, Target, $00, $17
	smpsHeaderFM	Labyrinth_FM6, Target, $0C, $15
	smpsHeaderPSG	Labyrinth_PSG1, Target, $F4, $01, $00, $0C
	smpsHeaderPSG	Labyrinth_PSG2, Target, $00, $03, $00, $0C
	smpsHeaderPSG	Labyrinth_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	Labyrinth_PWM1, Target, $00, $99
	smpsHeaderPWM	Labyrinth_PWM2, Target, $00, $99
	smpsHeaderPWM	Labyrinth_PWM3, Target, $00, $41
	smpsHeaderPWM	Labyrinth_PWM4, Target, $00, $99

Labyrinth_FM1:
Labyrinth_FM2:
Labyrinth_FM3:
Labyrinth_FM4:
Labyrinth_FM5:
Labyrinth_FM6:
Labyrinth_PSG1:
Labyrinth_PSG2:
Labyrinth_PSG3:
Labyrinth_PWM1:
Labyrinth_PWM2:
Labyrinth_PWM3:
Labyrinth_PWM4:
	smpsStop

Labyrinth_Patches:	
	dc.b	$18
	dc.b	$35, $31, $31, $32,	$9E, $DC, $1C, $9C
	dc.b	$0D, $06, $04, $01,	$08, $06, $03, $05
	dc.b	$BF, $5F, $3F, $2F,	$29, $1B, $17, $80
	
	dc.b	$07
	dc.b	$03, $01, $02, $01,	$15, $15, $15, $15
	dc.b	$0D, $00, $00, $00,	$08, $00, $00, $00
	dc.b	$5F, $0A, $0A, $0A,	$87, $80, $80, $80
	
	dc.b	$2D
	dc.b	$77, $66, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$05, $07, $0C, $0C,	$17, $11, $12, $11
	dc.b	$9F, $9C, $9C, $9C,	$1D, $83, $80, $80
