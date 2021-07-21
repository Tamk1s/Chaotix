SSBB_WRoom_PWM1:
	smpsPan		panCenter
	dc.b	nRst, $18

SSBB_WRoom_PWM1_Loop1:
	dc.b	pFingSnapLo, $09, pFingSnapHi, $03, pASnare, $06, pFingSnapHi
	smpsLoop		$00, $1C, SSBB_WRoom_PWM1_Loop1, Target
	dc.b	pFingSnapLo, $09, pFingSnapHi, pFingSnapLo, $0C, pFingSnapHi, $06, $0C
	dc.b	pFingSnapLo, $09, pFingSnapHi, pFingSnapLo, $0C, pFingSnapHi, $06, $03
	dc.b	nRst, $09
	smpsJump		SSBB_WRoom_PWM1_Loop1, Target