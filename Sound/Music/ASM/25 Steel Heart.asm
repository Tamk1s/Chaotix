
Target	EQU	$4F545
	smpsHeaderVoice	SteelHeart_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $20
	smpsHeaderFM	SteelHeart_FM1, Target, $00, $0D
	smpsHeaderFM	SteelHeart_FM2, Target, $00, $0C
	smpsHeaderFM	SteelHeart_FM3, Target, $00, $0F
	smpsHeaderFM	SteelHeart_FM4, Target, $00, $1E
	smpsHeaderFM	SteelHeart_FM5, Target, $00, $0F
	smpsHeaderFM	SteelHeart_FM6, Target, $00, $20
	smpsHeaderPSG	SteelHeart_PSG1, Target, $E8, $02, $00, $00
	smpsHeaderPSG	SteelHeart_PSG2, Target, $E3, $06, $00, $00
	smpsHeaderPSG	SteelHeart_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	SteelHeart_PWM1, Target, $00, $BB
	smpsHeaderPWM	SteelHeart_PWM2, Target, $00, $FF
	smpsHeaderPWM	SteelHeart_PWM3, Target, $00, $AA
	smpsHeaderPWM	SteelHeart_PWM4, Target, $00, $33

SteelHeart_FM1:
SteelHeart_FM2:
SteelHeart_FM3:
SteelHeart_FM4:
SteelHeart_FM5:
SteelHeart_FM6:
SteelHeart_PSG1:
SteelHeart_PSG2:
SteelHeart_PSG3:
SteelHeart_PWM1:
SteelHeart_PWM2:
SteelHeart_PWM3:
SteelHeart_PWM4:
	smpsStop

SteelHeart_Patches:	
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
