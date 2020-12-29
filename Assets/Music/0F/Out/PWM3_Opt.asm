SH_SystemMenu_PWM3_Header:
	sHeaderInit
	sHeaderPatch	SH_SystemMenu_PWM3_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $0F
	sHeaderDAC	SH_SystemMenu_PWM3_DAC

SH_SystemMenu_PWM3_DAC:
	dc.b dKick, $02

SH_SystemMenu_PWM3_Loop1:
	dc.b $92, $03, $91, $91, $91, $84, $92, $91
	dc.b dKick, $06, $91, $03, $03, $03, $84, $8D
	dc.b $91, dKick
	sLoop		$00, $0F, SH_SystemMenu_PWM3_Loop1
	dc.b $92, $91, $91, $91, $84, $92, $91, dKick
	dc.b $06, $91, $03, $03, $03, $84, $8D, $91

SH_SystemMenu_PWM3_Loop2:
	dc.b $91, $92, $91, $8F, $91, $84, $92, $8F
	dc.b $91, $84, $91, $8F, $91, $84, $8D, $8D
	dc.b $91, $92, $91, $8F, dKick, $06, $92, $03
	dc.b $8F, $91, $84, $91, $8F, $91, $84, $8D
	dc.b $8D
	sLoop		$00, $02, SH_SystemMenu_PWM3_Loop2

SH_SystemMenu_PWM3_Loop3:
	dc.b dKick, $92, $91, $91, $91, $84, $92, $91
	dc.b dKick, $06, $91, $03, $03, $03, $84, $8D
	dc.b $91
	sLoop		$00, $06, SH_SystemMenu_PWM3_Loop3
	dc.b dKick, $01

SH_SystemMenu_PWM3_Jump1:
	dc.b nRst, $02

SH_SystemMenu_PWM3_Loop4:
	dc.b $92, $03, $91, $91, $91, $84, $92, $91
	dc.b dKick, $06, $91, $03, $03, $03, $84, $8D
	dc.b $91, dKick
	sLoop		$00, $09, SH_SystemMenu_PWM3_Loop4
	dc.b $92, $91, $91, dKick, $06, $92, $03, $91
	dc.b dKick, $06, $91, $03, $03, dKick, $06

SH_SystemMenu_PWM3_Loop5:
	dc.b $8D, $03, $91, dKick, $92, $91, $91, $91
	dc.b $84, $92, $91, dKick, $06, $91, $03, $03
	dc.b $03, $84
	sLoop		$00, $06, SH_SystemMenu_PWM3_Loop5
	dc.b $8D, $91, dKick, $01
	sJump		SH_SystemMenu_PWM3_Jump1

SH_SystemMenu_PWM3_Patches:
