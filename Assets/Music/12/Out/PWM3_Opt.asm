VOR_PWM3:
	dc.b	nRst, $0C

VOR_PWM3_Loop1:
	dc.b	pOpenHH, $09, pClosedHH, $03, $06, pBongoHi, pOpenHH, $18
	dc.b	$09, pClosedHH, $03, $03, pASnare, $09, pOpenHH, $18
	dc.b	$09, pClosedHH, $03, $06, pBongoHi, pOpenHH, $18, $09
	dc.b	pClosedHH, $03, $03, pASnare, $09, pOpenHH, $06, pClosedHH
	dc.b	$03, pASnare, $0F
	smpsLoop		$00, $03, VOR_PWM3_Loop1, Target
	dc.b	pOpenHH, $09, pClosedHH, $03, $06, pBongoHi, pOpenHH, $18
	dc.b	$09, pClosedHH, $03, $03, pASnare, $09, pOpenHH, $18
	dc.b	$09, pClosedHH, $03, $06, pBongoHi, pOpenHH, $18, $09
	dc.b	pClosedHH, $03, $03, pASnare, $09, pOpenHH, $06, pClosedHH
	dc.b	$03, pASnare
	smpsJump		VOR_PWM3, Target