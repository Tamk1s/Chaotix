VOR_PWM1:
	dc.b	pAKick, $03, pClosedHH, pClosedHH, pClosedHH, pESnare, $09, pAKick
	dc.b	$06, pClosedHH, $03, pAKick, $06, pESnare, pClosedHH, $03
	dc.b	$03, pAKick, pClosedHH, pClosedHH, pClosedHH, pESnare, $09, $06
	dc.b	$09, pAKick, $03, pClosedHH, pClosedHH, pClosedHH, pAKick, pClosedHH
	dc.b	pClosedHH, pClosedHH, pESnare, $09, pAKick, $06, pClosedHH, $03
	dc.b	pAKick, $06, pESnare, pClosedHH, $03, $03, pAKick, pClosedHH
	dc.b	pClosedHH, pClosedHH, pESnare, $09, $06, $09, pAKick, $03
	dc.b	pClosedHH, pESnare, pESnare
	smpsLoop		$00, $03, VOR_PWM1, Target
	dc.b	pAKick, pClosedHH, pClosedHH, pClosedHH, pESnare, $09, pAKick, $06
	dc.b	pClosedHH, $03, pAKick, $06, pESnare, pClosedHH, $03, $03
	dc.b	pAKick, pClosedHH, pClosedHH, pClosedHH, pESnare, $09, $06, $09
	dc.b	pAKick, $03, pClosedHH, pClosedHH, pClosedHH, pAKick, pClosedHH, pClosedHH
	dc.b	pClosedHH, pESnare, $09, pAKick, $06, pClosedHH, $03, pAKick
	dc.b	$06, pESnare, pClosedHH, $03, $03, pAKick, pClosedHH, pClosedHH
	dc.b	pClosedHH, pESnare, $09, $06, $09, pAKick, $03, pClosedHH
	dc.b	pESnare
	smpsJump		VOR_PWM1, Target