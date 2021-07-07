SMB3_Bonus_PWM3:
	dc.b	nRst, $7F, $3B, pTomLow

SMB3_Bonus_PWM3_Loop1:
	dc.b	$0C
	smpsLoop		$00, $0F, SMB3_Bonus_PWM3_Loop1, Target
	dc.b	$7F, nRst, $53
	smpsJump		SMB3_Bonus_PWM3, Target