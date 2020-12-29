SH_SystemMenu_PWM2_Header:
	sHeaderInit
	sHeaderPatch	SH_SystemMenu_PWM2_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $0F
	sHeaderDAC	SH_SystemMenu_PWM2_DAC

SH_SystemMenu_PWM2_DAC:
	dc.b $91, $02

SH_SystemMenu_PWM2_Loop1:
	dc.b $03, $03, $8F, dSnare, $91, $91, $8F, $91
	dc.b $92, $91, $8F, dSnare, $91, $92, $8D, $91
	sLoop		$00, $0F, SH_SystemMenu_PWM2_Loop1
	dc.b $91, $91, $8F, dSnare, $91, $91, $8F, $91
	dc.b $92, $91, $8F, dSnare, $91, $92, $8D

SH_SystemMenu_PWM2_Loop3:
	dc.b dKick, $84, $91

SH_SystemMenu_PWM2_Loop2:
	dc.b $91, dKick, $06, $91, $03
	sLoop		$00, $03, SH_SystemMenu_PWM2_Loop2
	dc.b $03, dKick, $84, $91, $91, dLowTimpani, $06, $91
	dc.b $03, $03, dKick, $06, $91, $03, $03, dKick
	dc.b $06, $91, $03, $03
	sLoop		$01, $02, SH_SystemMenu_PWM2_Loop3
	dc.b $03

SH_SystemMenu_PWM2_Loop4:
	dc.b $03, $03, $8F, dSnare, $91, $91, $8F, $91
	dc.b $92, $91, $8F, dSnare, $91, $92, $8D, $91
	sLoop		$00, $05, SH_SystemMenu_PWM2_Loop4
	dc.b $91, $91, $8F, dSnare, $91, $91, $8F, $91
	dc.b $92, $91, $8F, dSnare, $91, $92, $8D, $91
	dc.b $01

SH_SystemMenu_PWM2_Jump1:
	dc.b nRst, $02, $91

SH_SystemMenu_PWM2_Loop5:
	dc.b $03, $03, $8F, dSnare, $91, $91, $8F, $91
	dc.b $92, $91, $8F, dSnare, $91, $92, $8D, $91
	sLoop		$00, $09, SH_SystemMenu_PWM2_Loop5
	dc.b $91, $91, $8F, $91, $91, $91, $8F, $91
	dc.b $92, $91, $8F, $91

SH_SystemMenu_PWM2_Loop6:
	dc.b $91, $92, $8D, $91, $91, $91, $8F, dSnare
	dc.b $91, $91, $8F, $91, $92, $91, $8F, dSnare
	sLoop		$00, $06, SH_SystemMenu_PWM2_Loop6
	dc.b $91, $92, $8D, $91, $01
	sJump		SH_SystemMenu_PWM2_Jump1

SH_SystemMenu_PWM2_Patches:
