MDNV2_BlueMoon_PWM1:
	dc.b	pClosedHH

MDNV2_BlueMoon_PWM1_Loop1:
	dc.b	$03
	smpsLoop		$00, $10, MDNV2_BlueMoon_PWM1_Loop1, Target
	dc.b	pASnare, $06, $06, $06, $1E
	smpsLoop		$01, $07, MDNV2_BlueMoon_PWM1, Target
	dc.b	pClosedHH

MDNV2_BlueMoon_PWM1_Loop2:
	dc.b	$03
	smpsLoop		$00, $10, MDNV2_BlueMoon_PWM1_Loop2, Target
	dc.b	pASnare, $06, $06, $06, $1C
	smpsJump		MDNV2_BlueMoon_PWM1, Target