Elegy_PWM2:
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pClosedHH

Elegy_PWM2_Loop1:
	dc.b $05
	smpsLoop		$00, $08, Elegy_PWM2_Loop1, Target
	dc.b $03, $02, $03, $02, $05, $03, $05, $02
	dc.b $05, $03, $02, $03, $02
	smpsLoop		$01, $03, Elegy_PWM2_Loop1, Target
	dc.b pEKick, $03, $02, $03, $07, $03, $02, $85
	dc.b $03, $02, $86, $03, $87, $0C

Elegy_PWM2_Jump1:
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop2:
	dc.b $05
	smpsLoop		$00, $10, Elegy_PWM2_Loop2, Target
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop3:
	dc.b $05
	smpsLoop		$00, $0C, Elegy_PWM2_Loop3, Target
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop4:
	dc.b $05
	smpsLoop		$00, $07, Elegy_PWM2_Loop4, Target
	dc.b $2D, pEKick, $03, $02, $03, $07, $03, $02
	dc.b $85, $03, $02, $86, $03, $87, $0C

Elegy_PWM2_Loop9:
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop5:
	dc.b $05
	smpsLoop		$00, $10, Elegy_PWM2_Loop5, Target

Elegy_PWM2_Loop7:
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop6:
	dc.b $05
	smpsLoop		$00, $0C, Elegy_PWM2_Loop6, Target
	smpsLoop		$01, $02, Elegy_PWM2_Loop7, Target
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop8:
	dc.b $05
	smpsLoop		$00, $08, Elegy_PWM2_Loop8, Target
	smpsLoop		$02, $02, Elegy_PWM2_Loop9, Target
	smpsJump		Elegy_PWM2_Jump1, Target