SMB3_Bonus_PWM1:
	dc.b	pTomLow

SMB3_Bonus_PWM1_Loop1:
	dc.b	$0C
	smpsLoop		$00, $08, SMB3_Bonus_PWM1_Loop1, Target

SMB3_Bonus_PWM1_Loop2:
	dc.b	pEKick, $06, pTomLow
	smpsLoop		$00, $04, SMB3_Bonus_PWM1_Loop2, Target

SMB3_Bonus_PWM1_Loop3:
	dc.b	pEKick, pClosedHH
	smpsLoop		$00, $04, SMB3_Bonus_PWM1_Loop3, Target

SMB3_Bonus_PWM1_Loop4:
	dc.b	pEKick, pAKick, pEKick, $05, $01, pAKick, $06
	smpsLoop		$00, $02, SMB3_Bonus_PWM1_Loop4, Target
	dc.b	pEKick, pAKick, pEKick, pAKick

SMB3_Bonus_PWM1_Loop5:
	dc.b	pEKick, pAKick, pEKick, $05, $01, pAKick, $06
	smpsLoop		$00, $03, SMB3_Bonus_PWM1_Loop5, Target
	dc.b	pEKick, pAKick, pEKick, pAKick, pEKick, pAKick, pEKick, $05

SMB3_Bonus_PWM1_Loop6:
	dc.b	pTomLow, $01, pCrashCymb, $06, pTomHi, pTomHi, $23
	smpsLoop		$00, $03, SMB3_Bonus_PWM1_Loop6, Target
	dc.b	pTomLow, $01, pCrashCymb, $06

SMB3_Bonus_PWM1_Loop7:
	dc.b	pTomHi
	smpsLoop		$00, $07, SMB3_Bonus_PWM1_Loop7, Target
	dc.b	pAKick
	smpsJump		SMB3_Bonus_PWM1, Target