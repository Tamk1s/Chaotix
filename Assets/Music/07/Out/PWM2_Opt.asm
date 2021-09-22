MDNV2_BlueMoon_PWM2:
	dc.b	pEKick, $0C, $0C, $0C, $0C, pESnare, $06, $06
	dc.b	$06, $1E
	smpsLoop		$00, $07, MDNV2_BlueMoon_PWM2, Target
	dc.b	pEKick, $0C, $0C, $0C, $0C, pESnare, $06, $06
	dc.b	$06, $1C
	smpsJump		MDNV2_BlueMoon_PWM2, Target