VOR_PWM4:
	dc.b	pOpenHH, $0C, pClosedHH, $03, $03, pRideBell, pBongoHi, pBongoHi
	dc.b	$06, pRideBell, pClosedHH, $03, pBongoLo, $09, pOpenHH, $0C
	dc.b	pClosedHH, $03, $03, pRideBell, pBongoHi, pBongoHi, pClosedHH, pClosedHH
	dc.b	$06, $03, pBongoLo, $09, pOpenHH, $0C, pClosedHH, $03
	dc.b	$03, pRideBell, pBongoHi, pBongoHi, $06, pRideBell, pClosedHH, $03
	dc.b	pBongoLo, $09, pOpenHH, $0C, pClosedHH, $03, $03, pRideBell
	dc.b	pBongoHi, pBongoHi, pClosedHH, pClosedHH, $06, $03, pBongoLo, $06
	dc.b	pClosedHH, $03
	smpsLoop		$00, $04, VOR_PWM4, Target
	smpsJump		VOR_PWM4, Target