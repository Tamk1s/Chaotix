SH_SystemMenu_PWM4_Header:
	sHeaderInit
	sHeaderPatch	SH_SystemMenu_PWM4_Patches
	sHeaderCh	$01, $00
	sHeaderTempo	$02, $0F
	sHeaderDAC	SH_SystemMenu_PWM4_DAC

SH_SystemMenu_PWM4_DAC:
	dc.b nRst, $02, $84

SH_SystemMenu_PWM4_Loop1:
	dc.b $09, dLowTimpani, $06, $84, $09, $91, dLowTimpani, $06
	dc.b $84, $09
	sLoop		$00, $0F, SH_SystemMenu_PWM4_Loop1
	dc.b $09, dLowTimpani, $06, $84, $09, $91, dLowTimpani, $06
	dc.b $84, dLowTimpani, $09, dSnare, $06, $8D, $03, $09
	dc.b $92, dLowTimpani, $03, $8D, $91, $09, $8D, dSnare
	dc.b $03, $91, $8D, $09, $92, $03, dLowTimpani, $09
	dc.b $8D, $03, $91, $06, dLowTimpani, dSnare, $09, $8D
	dc.b $03, $09, $92, $06, dMidTimpani, $03, dLowTimpani, $8D
	dc.b $91, $06, $84, $03, $8D, $06, $8F, $03
	dc.b dSnare, $91, $8D, $06, $8F, $03, $92, dLowTimpani
	dc.b $06, $84, $03, $8D, $91, $09

SH_SystemMenu_PWM4_Loop2:
	dc.b $84, dLowTimpani, $06, $84, $09, $91, dLowTimpani, $06
	dc.b $84, $09
	sLoop		$00, $05, SH_SystemMenu_PWM4_Loop2
	dc.b $09, dLowTimpani, $06, $84, $09, $91, dLowTimpani, $06
	dc.b $84, $07

SH_SystemMenu_PWM4_Jump1:
	dc.b nRst, $02, $84

SH_SystemMenu_PWM4_Loop3:
	dc.b $09, dLowTimpani, $06, $84, $09, $91, dLowTimpani, $06
	dc.b $84, $09
	sLoop		$00, $09, SH_SystemMenu_PWM4_Loop3
	dc.b $03, dSnare, $06, $06, $84, $09, $91, $03
	dc.b dSnare, $06, $03, $84

SH_SystemMenu_PWM4_Loop4:
	dc.b $84, $09, $09, dLowTimpani, $06, $84, $09, $91
	dc.b dLowTimpani, $06
	sLoop		$00, $06, SH_SystemMenu_PWM4_Loop4
	dc.b $84, $07
	sJump		SH_SystemMenu_PWM4_Jump1

SH_SystemMenu_PWM4_Patches:
