VOC_PWM1:
	smpsPan		panCenter
	dc.b	pEKick

VOC_PWM1_Loop1:
	dc.b	$03, $03, pESnare, pEKick, pClosedHH, $02, pEKick, $04
	dc.b	pESnare, $03, pEKick, $02, $01
	smpsLoop		$00, $04, VOC_PWM1_Loop1, Target
	smpsJump		VOC_PWM1, Target