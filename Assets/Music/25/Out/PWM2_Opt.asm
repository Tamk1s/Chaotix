XVSF_Breakout_PWM2:
	dc.b	pCrashCymb, $18, pClosedHH, $0C, $0C, $0C, $0C, pEKick
	dc.b	$06, pOpenHH, pESnare, pESnare, $03, $03, pCrashCymb, $18
	dc.b	pClosedHH, $0C, $0C, pCrashCymb, $18, pOpenHH, $0C, $0C
	smpsJump		XVSF_Breakout_PWM2, Target