XVSF_Breakout_PWM1:
	smpsPan		panCenter

XVSF_Breakout_PWM1_Loop1:
	dc.b	pEKick, $06, pOpenHH, pESnare, pOpenHH
	smpsLoop		$00, $03, XVSF_Breakout_PWM1_Loop1, Target
	dc.b	pClosedHH, $03, pESnare, $06, pEKick, $03, pClosedHH, $06
	dc.b	pOpenHH, pEKick, pOpenHH, pESnare, pOpenHH, pEKick, pOpenHH, pESnare
	dc.b	pOpenHH, pESnare, $0C, pAKick, pAKick, $06, pESnare, pESnare
	dc.b	$03, $09
	smpsJump		XVSF_Breakout_PWM1, Target