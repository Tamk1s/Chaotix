SA3_Factory_PWM4:
	smpsFMvoice		$00

SA3_Factory_PWM4_Loop1:
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $04
	smpsLoop		$00, $17, SA3_Factory_PWM4_Loop1, Target
	dc.b	pClosedHH, $02, nRst, $0A

SA3_Factory_PWM4_Loop2:
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $04
	smpsLoop		$00, $3F, SA3_Factory_PWM4_Loop2, Target
	dc.b	pClosedHH, $02, nRst, $0A

SA3_Factory_PWM4_Loop3:
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $04
	smpsLoop		$00, $2F, SA3_Factory_PWM4_Loop3, Target
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $10
	smpsJump		SA3_Factory_PWM4, Target