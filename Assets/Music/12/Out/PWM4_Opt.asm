SRB2_INV_PWM4:
	;smpsPan		panCenter
	dc.b	nRst, $18

SRB2_INV_PWM4_Loop3:
	dc.b	pClosedHH, $02, $01, $02, $01

SRB2_INV_PWM4_Loop2:
	dc.b	pOpenHH

SRB2_INV_PWM4_Loop1:
	dc.b	$02, pClosedHH, $01
	smpsLoop		$00, $04, SRB2_INV_PWM4_Loop1, Target
	smpsLoop		$01, $07, SRB2_INV_PWM4_Loop2, Target
	dc.b	pOpenHH, $02, $01, $02, $01
	smpsLoop		$02, $02, SRB2_INV_PWM4_Loop3, Target
	dc.b	pClosedHH, $02, $01, $02, $01

SRB2_INV_PWM4_Loop5:
	dc.b	pOpenHH

SRB2_INV_PWM4_Loop4:
	dc.b	$02, pClosedHH, $01
	smpsLoop		$00, $04, SRB2_INV_PWM4_Loop4, Target
	smpsLoop		$01, $06, SRB2_INV_PWM4_Loop5, Target
	dc.b	$02, $01, pOpenHH, $02, pClosedHH, $01, $02, $01
	dc.b	$02, $01, pOpenHH, $02, $01, $02, $01
	smpsStop