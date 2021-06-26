HDN_BlueTwl_PWM1:
	dc.b	pAKick, $0C, $0C, pASnare, $18
	smpsLoop		$00, $20, HDN_BlueTwl_PWM1, Target

HDN_BlueTwl_PWM1_Loop1:
	dc.b	pTomHi, $06, pTomLower, pTomHi, pTomLower, pESnare, $0C, $0C
	smpsLoop		$00, $0E, HDN_BlueTwl_PWM1_Loop1, Target
	dc.b	pAKick, $03, $03, pASnare, pASnare, pEKick, pEKick, pESnare
	dc.b	pESnare, pTomHi, pTomMid, pTomLow, pTomLower, pESnare, $0C, pCrashCymb
	dc.b	$37
	smpsJump		HDN_BlueTwl_PWM1, Target