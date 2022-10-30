Nepu_DimTrip_PWM2:
	dc.b	nRst, $10, pOpenHH, $40, pAKick, pOpenHH, $20, pAKick
	dc.b	pOpenHH, pOpenHH, pCrashCymb, $40, $40, pAKick, $20, $20
	dc.b	$20, pCrashCymb, $10

Nepu_DimTrip_PWM2_Jump1:
	dc.b	nRst, $10, pAKick, $18, pOpenHH, $08, $18, pAKick
	dc.b	$0C, pClosedHH, $08, $08, pAKick, pClosedHH, pClosedHH, pAKick
	dc.b	pClosedHH, pAKick

Nepu_DimTrip_PWM2_Loop1:
	dc.b	pClosedHH
	smpsLoop		$00, $07, Nepu_DimTrip_PWM2_Loop1, Target
	dc.b	pAKick, pAKick, pClosedHH, pAKick, pClosedHH, pClosedHH, pClosedHH, pAKick
	dc.b	pAKick, pOpenHH, $28, pCrashCymb, $10, pOpenHH, $08, pAKick
	dc.b	$74, $08, pCrashCymb, $20, pAKick, pSplashCymb, $24, pASnare
	dc.b	$18, pOpenHH, $08, pCrashCymb, pASnare, $14, pAKick, $0C
	dc.b	pCrashCymb, $14, pAKick, pClosedHH, $0C, pAKick, $24, $30
	dc.b	pASnare, $4C, pOpenHH, $20, pCrashCymb, pAKick, pAKick, pCrashCymb
	dc.b	pCrashCymb, pAKick, pOpenHH, pCrashCymb, pCrashCymb, pAKick, pOpenHH, pCrashCymb
	dc.b	pOpenHH, $24, pASnare, $08, $08, pEKick, $0C, pAKick
	dc.b	$20, $40, pOpenHH, pCrashCymb, $20, $20, $20, pAKick
	dc.b	pOpenHH, $40, pAKick, pCrashCymb, $20, $20, $20, $10
	smpsJump		Nepu_DimTrip_PWM2_Jump1, Target