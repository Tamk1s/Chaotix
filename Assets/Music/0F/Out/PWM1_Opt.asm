SH_SystemMenu_PWM1_Header:
	sHeaderInit
	sHeaderPatch	SH_SystemMenu_PWM1_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $0F
	sHeaderDAC	SH_SystemMenu_PWM1_DAC

SH_SystemMenu_PWM1_DAC:
	sPan		spCenter
	dc.b $8D, $02

SH_SystemMenu_PWM1_Loop1:
	dc.b $03
	sLoop		$00, $0D, SH_SystemMenu_PWM1_Loop1
	dc.b $91, $8F, $8D
	sLoop		$01, $03, SH_SystemMenu_PWM1_Loop1
	dc.b $8D, $8D, $8D, $8D, $8D, $01, nRst, $02
	dc.b $8D

SH_SystemMenu_PWM1_Loop2:
	dc.b $03
	sLoop		$00, $08, SH_SystemMenu_PWM1_Loop2

SH_SystemMenu_PWM1_Loop4:
	dc.b $91, $8F

SH_SystemMenu_PWM1_Loop3:
	dc.b $8D
	sLoop		$00, $0E, SH_SystemMenu_PWM1_Loop3
	sLoop		$01, $0C, SH_SystemMenu_PWM1_Loop4
	dc.b $91, $8F

SH_SystemMenu_PWM1_Loop5:
	dc.b dHiTimpani, $06, $84, nRst, $84, dHiTimpani, $84, dHiTimpani
	dc.b $84
	sLoop		$00, $04, SH_SystemMenu_PWM1_Loop5

SH_SystemMenu_PWM1_Loop7:
	dc.b $8D

SH_SystemMenu_PWM1_Loop6:
	dc.b $03
	sLoop		$00, $0E, SH_SystemMenu_PWM1_Loop6
	dc.b $91, $8F
	sLoop		$01, $06, SH_SystemMenu_PWM1_Loop7
	dc.b $8D, $01

SH_SystemMenu_PWM1_Jump1:
	dc.b nRst, $02, $8D

SH_SystemMenu_PWM1_Loop8:
	dc.b $03
	sLoop		$00, $0D, SH_SystemMenu_PWM1_Loop8
	dc.b $91, $8F, $8D
	sLoop		$01, $0F, SH_SystemMenu_PWM1_Loop8

SH_SystemMenu_PWM1_Loop9:
	dc.b $8D
	sLoop		$00, $0D, SH_SystemMenu_PWM1_Loop9
	dc.b $91, $8F, $8D, $01
	sJump		SH_SystemMenu_PWM1_Jump1

SH_SystemMenu_PWM1_Patches:
