MTPO_ThemeR_PWM1:
	smpsPan		panCenter
	dc.b	pCrashCymb, $06, pClosedHH, $03, $03, $03, pSplashCymb, pSplashCymb
	dc.b	pCrashCymb, $06, pClosedHH

MTPO_ThemeR_PWM1_Loop1:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_PWM1_Loop1, Target
	dc.b	pCrashCymb, $06, pClosedHH, $03, $03, $03, pSplashCymb, pSplashCymb
	dc.b	pCrashCymb, $06, pClosedHH, $03, $03, $03, $03, $03
	dc.b	$03, pCrashCymb, pCrashCymb

MTPO_ThemeR_PWM1_Loop2:
	dc.b	pClosedHH
	smpsLoop		$00, $0D, MTPO_ThemeR_PWM1_Loop2, Target
	dc.b	pOpenHH, pClosedHH

MTPO_ThemeR_PWM1_Loop3:
	dc.b	pCrashCymb, $06, pOpenHH, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $06, pSplashCymb, pSplashCymb
	smpsLoop		$00, $02, MTPO_ThemeR_PWM1_Loop3, Target
	dc.b	pCrashCymb, pOpenHH

MTPO_ThemeR_PWM1_Loop4:
	dc.b	$0C
	smpsLoop		$00, $07, MTPO_ThemeR_PWM1_Loop4, Target
	dc.b	$06, pCrashCymb, pOpenHH, $0C, $0C, $0C, $06, pSplashCymb
	dc.b	$09, pCrashCymb, pSplashCymb, pCrashCymb, pSplashCymb, $06, $06
	smpsLoop		$01, $02, MTPO_ThemeR_PWM1_Loop3, Target
	smpsJump		MTPO_ThemeR_PWM1, Target