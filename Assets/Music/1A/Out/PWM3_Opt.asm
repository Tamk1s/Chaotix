Elegy_PWM3:
	dc.b pClosedHH, $03, $02, $03, $02, $05, $03, $05
	dc.b $02, $05, $03, $02, $03, $7F, nRst, nRst
	dc.b $08, pEKick, $03, $02, $03, $0C

Elegy_PWM3_Jump1:
	dc.b pClosedHH, $05, $05, $05, $05, pEKick, $0A, pESnare
	dc.b $7F, nRst, $03, pCrashCymb, $7F, nRst, $0D, pEKick
	dc.b $03, $02, $03, $0C

Elegy_PWM3_Loop1:
	dc.b pClosedHH, $05, $05, $05, $05, pEKick, $0A, pESnare
	dc.b $7F, nRst, nRst, $24
	smpsLoop		$00, $02, Elegy_PWM3_Loop1, Target
	smpsJump		Elegy_PWM3_Jump1, Target