SRB2_INV_PWM2:
	dc.b	nRst, $18, pCrashCymb, $17, nRst, $49, pCrashCymb, $17
	dc.b	nRst, $49, pCrashCymb, $17, nRst, $2E, pCrashCymb, $03
	dc.b	nRst, $09, pCrashCymb, $03, nRst, $0C, pSplashCymb, $05
	smpsStop