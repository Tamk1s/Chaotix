XVSF_Breakout_PWM3:
	dc.b	pClosedHH, $0C, $54, $0C, $24, pAKick, $0C, pOpenHH
	dc.b	$18, pCrashCymb, $0C
	smpsJump		XVSF_Breakout_PWM3, Target