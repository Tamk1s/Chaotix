VOR_PWM2:
	dc.b	pClosedHH, $06, pRideBell, pAKick, pClosedHH, $03, pESnare, $06
	dc.b	pBongoHi, $03, pClosedHH, pClosedHH, pAKick, pClosedHH, pRideBell, $06
	dc.b	pClosedHH, pRideBell, pAKick, pClosedHH, $03, pAKick, $06, $06
	dc.b	pClosedHH, $03, pESnare, $06, pRideBell, pClosedHH, pRideBell, pAKick
	dc.b	pClosedHH, $03, pESnare, $06, pBongoHi, $03, pClosedHH, pClosedHH
	dc.b	pAKick, pClosedHH, pRideBell, $06, pClosedHH, pRideBell, pAKick, pClosedHH
	dc.b	$03, pAKick, $06, $06, pClosedHH, $03, pESnare, $06
	dc.b	pAKick, $03, $03
	smpsLoop		$00, $04, VOR_PWM2, Target
	smpsJump		VOR_PWM2, Target