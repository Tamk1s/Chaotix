HDN_BlueTwl_PWM2:
	dc.b	pClosedHH, $06, $06, $06, $06, pOpenHH, $0C, $0C
	smpsLoop		$00, $20, HDN_BlueTwl_PWM2, Target

HDN_BlueTwl_PWM2_Loop2:
	dc.b	pClosedHH

HDN_BlueTwl_PWM2_Loop1:
	dc.b	$03
	smpsLoop		$00, $08, HDN_BlueTwl_PWM2_Loop1, Target
	dc.b	pOpenHH, $0C, $0C
	smpsLoop		$01, $0E, HDN_BlueTwl_PWM2_Loop2, Target
	dc.b	pClap, $03, $03, $03, $03, pRideBell, $06, $06
	dc.b	$06, pESnare, pESnare, pESnare, pSplashCymb, $37
	smpsJump		HDN_BlueTwl_PWM2, Target