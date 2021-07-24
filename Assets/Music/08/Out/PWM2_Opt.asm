MTPO_ThemeR_PWM2:
	smpsPan		panCenter
	dc.b	nRst, $55, $47, pOpenHH

MTPO_ThemeR_PWM2_Loop1:
	dc.b	$0C, $0C, $0C, $0C, $0C, $24
	smpsLoop		$00, $02, MTPO_ThemeR_PWM2_Loop1, Target
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $18, $0C
	dc.b	$0C, $48

MTPO_ThemeR_PWM2_Loop2:
	dc.b	$0C, $0C, $0C, $0C, $0C, $24
	smpsLoop		$00, $02, MTPO_ThemeR_PWM2_Loop2, Target
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $18, $0C
	dc.b	$0C, $3C
	smpsJump		MTPO_ThemeR_PWM2, Target