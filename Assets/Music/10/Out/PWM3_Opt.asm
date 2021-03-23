SA3_Factory_PWM3:
	dc.b	nRst, $15

SA3_Factory_PWM3_Loop1:
	dc.b	pClosedHH, $02, nRst, $2E
	smpsLoop		$00, $03, SA3_Factory_PWM3_Loop1, Target
	dc.b	pEKick, $02, nRst, $6D, pEHiHat, $02, nRst, $1F

SA3_Factory_PWM3_Loop2:
	dc.b	pClosedHH, $02, nRst, $2E, pEKick, $02, nRst, $2E
	smpsLoop		$00, $04, SA3_Factory_PWM3_Loop2, Target

SA3_Factory_PWM3_Loop3:
	dc.b	pClosedHH, $02, nRst, $2E
	smpsLoop		$00, $03, SA3_Factory_PWM3_Loop3, Target
	dc.b	pEKick, $02

SA3_Factory_PWM3_Loop4:
	dc.b	nRst, $2E, pClosedHH, $02
	smpsLoop		$00, $03, SA3_Factory_PWM3_Loop4, Target
	dc.b	nRst, $3D, pEHiHat, $06, nRst, $1B

SA3_Factory_PWM3_Loop5:
	dc.b	pClosedHH, $02, nRst, $2E
	smpsLoop		$00, $0B, SA3_Factory_PWM3_Loop5, Target
	dc.b	pClosedHH, $02, nRst, $25
	smpsJump		SA3_Factory_PWM3, Target