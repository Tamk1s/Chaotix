MDNV2_BlueMoon_PWM3:
	dc.b	pAKick, $0C, $0C, $0C, $0C, pCrashCymb, $06, $06
	dc.b	$06, $1E
	smpsLoop		$00, $07, MDNV2_BlueMoon_PWM3, Target
	dc.b	pAKick, $0C, $0C, $0C, $0C, pCrashCymb, $06, $06
	dc.b	$06, $1C
	smpsJump		MDNV2_BlueMoon_PWM3, Target