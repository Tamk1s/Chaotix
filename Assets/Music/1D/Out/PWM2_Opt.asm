SSBB_WRoom_PWM2:
	dc.b	nRst, $18

SSBB_WRoom_PWM2_Loop1:
	dc.b	pBongoLo, $09, pBongoHi, pBongoHi, $06
	smpsLoop		$00, $1C, SSBB_WRoom_PWM2_Loop1, Target

SSBB_WRoom_PWM2_Loop2:
	dc.b	pBongoLo, $09, pBongoHi, pBongoLo, $0C, pBongoHi, $06, $0C
	smpsLoop		$00, $02, SSBB_WRoom_PWM2_Loop2, Target
	smpsJump		SSBB_WRoom_PWM2_Loop1, Target