SMB3_Bonus_PWM4:
	dc.b	nRst, $7F, $47, pOpenHH

SMB3_Bonus_PWM4_Loop1:
	dc.b	$0C
	smpsLoop		$00, $0E, SMB3_Bonus_PWM4_Loop1, Target
	dc.b	$7F, nRst, $53
	smpsJump		SMB3_Bonus_PWM4, Target