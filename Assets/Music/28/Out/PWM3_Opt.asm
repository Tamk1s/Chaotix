Nepu_DimTrip_PWM3:
	dc.b	nRst, $10, pCrashCymb, $40, $40, $20, $20, $20
	dc.b	$20, pOpenHH, $40, pAKick, pOpenHH, $20, $20, pCrashCymb
	dc.b	pOpenHH, $10

Nepu_DimTrip_PWM3_Jump1:
	dc.b	nRst, $10, pOpenHH, $38, $7F, nRst, $75, pASnare
	dc.b	$10, $08, pCrashCymb, $7C, pAKick, $20, pCrashCymb, pOpenHH
	dc.b	$24, pCrashCymb, $18, pSplashCymb, $08, pASnare, pOpenHH, $14
	dc.b	$0C, pAKick, $14, pSplashCymb, $20, pOpenHH, $24, pSplashCymb
	dc.b	$30, pCrashCymb, $4C, $20, pOpenHH, pCrashCymb, pOpenHH, pOpenHH
	dc.b	pAKick, pOpenHH, pAKick, pOpenHH, pOpenHH, pOpenHH, pAKick, pOpenHH
	dc.b	pCrashCymb, $40, pOpenHH, $20, $40, pCrashCymb, pAKick, $20
	dc.b	pOpenHH, pAKick, pCrashCymb, pCrashCymb, $40, pOpenHH, pOpenHH, $20
	dc.b	$20, pAKick, pAKick, $10
	smpsJump		Nepu_DimTrip_PWM3_Jump1, Target