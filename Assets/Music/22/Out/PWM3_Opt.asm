VOC_PWM3:
	dc.b	nRst, $0B

VOC_PWM3_Loop1:
	dc.b	pAKick, $04, pClosedHH, $14
	smpsLoop		$00, $03, VOC_PWM3_Loop1, Target
	dc.b	pAKick, $04, pClosedHH, $09
	smpsJump		VOC_PWM3, Target