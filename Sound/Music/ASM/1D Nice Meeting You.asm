Target	EQU	$4E5CA
	smpsHeaderVoice	NMeetingU_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0F
	smpsHeaderFM	NMeetingU_FM1, Target, $00, $09
	smpsHeaderFM	NMeetingU_FM2, Target, $00, $0C
	smpsHeaderFM	NMeetingU_FM3, Target, $FB, $15
	smpsHeaderFM	NMeetingU_FM4, Target, $00, $1B
	smpsHeaderFM	NMeetingU_FM5, Target, $FB, $1E
	smpsHeaderFM	NMeetingU_FM6, Target, $0C, $1B
	smpsHeaderPSG	NMeetingU_PSG1, Target, $F4, $00, $00, $00
	smpsHeaderPSG	NMeetingU_PSG2, Target, $F4, $00, $00, $00
	smpsHeaderPSG	NMeetingU_PSG3, Target, $23, $01, $00, $00
	smpsHeaderPWM	NMeetingU_PWM1, Target, $00, $EE
	smpsHeaderPWM	NMeetingU_PWM2, Target, $00, $ED
	smpsHeaderPWM	NMeetingU_PWM3, Target, $00, $00
	smpsHeaderPWM	NMeetingU_PWM4, Target, $00, $BB

NMeetingU_FM1:
NMeetingU_FM2:
NMeetingU_FM3:
NMeetingU_FM4:
NMeetingU_FM5:
NMeetingU_FM6:
NMeetingU_PSG1:
NMeetingU_PSG2:
NMeetingU_PSG3:
	smpsStop

NMeetingU_Patches:	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$1F, $1F, $1F, $1F
	dc.b	$0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	dc.b	$F6, $97, $A7, $A7,	$1C, $80, $80, $85
