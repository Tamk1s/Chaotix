VOC_PWM2:
	dc.b	pClosedHH

VOC_PWM2_Loop1:
	dc.b	$03, $03, $03, $06, pAKick, $03, pClosedHH, pClosedHH
	smpsLoop		$00, $04, VOC_PWM2_Loop1, Target
	smpsJump		VOC_PWM2, Target