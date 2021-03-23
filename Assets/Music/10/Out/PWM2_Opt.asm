SA3_Factory_PWM2:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $03, SA3_Factory_PWM2, Target
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pClosedHH, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $5E, pESnare, $06, nRst

SA3_Factory_PWM2_Loop1:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A, pClosedHH, $02, nRst, $04
	dc.b	pClosedHH, $02, nRst, $04, pEHiHat, $02, nRst, $07
	dc.b	pClosedHH, $02, nRst, $01, pClosedHH, $02, nRst, $04
	dc.b	pClosedHH, $02, nRst, $04, pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $04, SA3_Factory_PWM2_Loop1, Target

SA3_Factory_PWM2_Loop2:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $03, SA3_Factory_PWM2_Loop2, Target
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pClosedHH, $02

SA3_Factory_PWM2_Loop3:
	dc.b	nRst, $01, pClosedHH, $02, nRst, $04, pClosedHH, $02
	dc.b	nRst, $04, pEHiHat, $02, nRst, $0A, pClosedHH, $02
	dc.b	nRst, $04, pClosedHH, $02, nRst, $04, pEHiHat, $02
	dc.b	nRst, $07, pEKick, $02
	smpsLoop		$00, $03, SA3_Factory_PWM2_Loop3, Target
	dc.b	nRst, $01, pClosedHH, $02, nRst, $04, pClosedHH, $02
	dc.b	nRst, $04, pEHiHat, $02, nRst, $2E, pESnare, $06
	dc.b	nRst

SA3_Factory_PWM2_Loop4:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $0B, SA3_Factory_PWM2_Loop4, Target
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $16
	smpsJump		SA3_Factory_PWM2, Target