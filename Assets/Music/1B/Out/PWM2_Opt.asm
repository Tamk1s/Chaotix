SMB3_Bonus_PWM2:
	dc.b	nRst, $7F, $17, pTomLow, $0C, $0C, $0B, $01
	dc.b	pCrashCymb

SMB3_Bonus_PWM2_Loop1:
	dc.b	$0C, pClosedHH
	smpsLoop		$00, $07, SMB3_Bonus_PWM2_Loop1, Target
	dc.b	pClosedHH, pClosedHH, $7F, nRst, $47, pAKick, $06, pTomHi
	smpsJump		SMB3_Bonus_PWM2, Target