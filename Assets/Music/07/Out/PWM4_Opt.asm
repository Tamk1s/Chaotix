MDNV2_BlueMoon_PWM4:
	dc.b	nRst, $30, pSplashCymb

MDNV2_BlueMoon_PWM4_Loop1:
	dc.b	$06, $06, $06, $4E
	smpsLoop		$00, $03, MDNV2_BlueMoon_PWM4_Loop1, Target
	dc.b	$06, $06, $06, $1E

MDNV2_BlueMoon_PWM4_Loop2:
	dc.b	pRideBell, $0C, $0C, $0C, $0C, pTomHi, $06, pTomMid
	dc.b	pTomLow, pTomLower, pClosedHH, $03, $03, pOpenHH, pOpenHH, pClosedHH
	dc.b	pClosedHH, pOpenHH, pOpenHH
	smpsLoop		$00, $03, MDNV2_BlueMoon_PWM4_Loop2, Target
	dc.b	pRideBell, $0C, $0C, $0C, $0C, pSega, $2E
	smpsJump		MDNV2_BlueMoon_PWM4, Target