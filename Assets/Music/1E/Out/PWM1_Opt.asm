SAdv3_Options_PWM1:
	dc.b	nRst, $01

SAdv3_Options_PWM1_Loop1:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop1, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $02
	smpsLoop		$01, $07, SAdv3_Options_PWM1_Loop1, Target

SAdv3_Options_PWM1_Loop2:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop2, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $01

SAdv3_Options_PWM1_Jump1:
	dc.b	nRst, $01

SAdv3_Options_PWM1_Loop3:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop3, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $02
	smpsLoop		$01, $0B, SAdv3_Options_PWM1_Loop3, Target

SAdv3_Options_PWM1_Loop4:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop4, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $01
	smpsJump		SAdv3_Options_PWM1_Jump1, Target