SSBB_WRoom_PWM3:
	dc.b	nRst, $18

SSBB_WRoom_PWM3_Loop1:
	dc.b	pEKick, $09, pClosedHH, pClosedHH, $06
	smpsLoop		$00, $1B, SSBB_WRoom_PWM3_Loop1, Target
	dc.b	pEKick, $09, pClosedHH, pClosedHH, $66
	smpsJump		SSBB_WRoom_PWM3_Loop1, Target