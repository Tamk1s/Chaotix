Elegy_PWM1:
	smpsPan		panCenter
	dc.b pCrashCymb, $28

Elegy_PWM1_Loop1:
	dc.b pEKick, $0A, pESnare
	smpsLoop		$00, $0C, Elegy_PWM1_Loop1, Target
	dc.b pCrashCymb, $14, pSplashCymb

Elegy_PWM1_Jump1:
	dc.b pCrashCymb, $28

Elegy_PWM1_Loop2:
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pEKick, pESnare, pClosedHH
	dc.b $05, $05, $05, $05
	smpsLoop		$00, $02, Elegy_PWM1_Loop2, Target
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pClosedHH

Elegy_PWM1_Loop3:
	dc.b $05
	smpsLoop		$00, $08, Elegy_PWM1_Loop3, Target
	dc.b pCrashCymb, $14, pSplashCymb

Elegy_PWM1_Loop5:
	dc.b pCrashCymb, $28

Elegy_PWM1_Loop4:
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pEKick, pESnare, pClosedHH
	dc.b $05, $05, $05, $05
	smpsLoop		$00, $03, Elegy_PWM1_Loop4, Target
	dc.b pEKick, $0A, pESnare, pEKick, pESnare
	smpsLoop		$01, $02, Elegy_PWM1_Loop5, Target
	smpsJump		Elegy_PWM1_Jump1, Target