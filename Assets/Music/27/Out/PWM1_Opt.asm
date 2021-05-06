DMR_PWM1:
	smpsPan		panCenter
	dc.b	pOpenHH

DMR_PWM1_Loop1:
	dc.b	$03, pClosedHH, $02, $01, $03, pOpenHH
	smpsLoop		$00, $08, DMR_PWM1_Loop1, Target
	dc.b	pOpenHH, pClosedHH, $02, $01, $03, pOpenHH, $02, pESnare
	dc.b	$03, $03, pClosedHH, $01, $03, pOpenHH, pBongoLo, pClosedHH
	dc.b	$02, $01, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, $02, pESnare, $01
	dc.b	pBongoLo, $03, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pOpenHH, pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pBongoLo, $02, pESnare, $01, pTomMid, $03, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, $02, pESnare, $01
	dc.b	pBongoLo, $03, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pOpenHH, pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pBongoLo, $02, pESnare, $01, pTomLow, $02, $01, pClosedHH
	dc.b	$02, $01, pESnare, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH
	dc.b	$02, $01, pESnare, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, $03, pBongoLo, $02, pESnare, $01
	dc.b	pOpenHH, $03, pClosedHH, $02, $01, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, $03, pBongoLo, $02
	dc.b	pESnare, $01, pTomMid, $03, pClosedHH, $02, $01, $03
	dc.b	pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01, pESnare
	dc.b	$03, pBongoLo, pBongoLo, pClosedHH, $02, $01, pESnare, $03
	dc.b	pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $01, pOpenHH, $03, pClosedHH
	dc.b	$02, $01, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, pEKick, $02, $01
	dc.b	pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02, pESnare
	dc.b	$03, $03, pClosedHH, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $01, pBongoLo, $03, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	$03, pBongoLo, pBongoLo, pClosedHH, $02, $01, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, $03, pOpenHH
	dc.b	$02, pESnare, $01, pTomLow, $02, $01, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, pOpenHH, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, $02, pASnare, $01, $02, $01, pSplashCymb
	dc.b	$06, pBongoLo, pEKick, $03, pOpenHH, pBongoLo, pOpenHH, pOpenHH
	dc.b	pOpenHH, pESnare, $06, pEKick, $03

DMR_PWM1_Loop2:
	dc.b	pOpenHH
	smpsLoop		$00, $07, DMR_PWM1_Loop2, Target
	dc.b	pEKick, pOpenHH, pBongoLo, pBongoLo, pEKick, $02, $01, pOpenHH
	dc.b	$03, pBongoLo, $06, pEKick, $03, pOpenHH, pOpenHH, pESnare
	dc.b	pEKick, $02, $01, pOpenHH, $03, $03, $03, pEKick
	dc.b	pOpenHH, pESnare, pBongoLo, pOpenHH, pOpenHH, pBongoLo, $06, pOpenHH
	dc.b	$03, $03, $03, pBongoLo, pOpenHH, pOpenHH, pBongoLo, $06
	dc.b	pOpenHH, $03, $03, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pOpenHH
	dc.b	pOpenHH, pOpenHH, pOpenHH, pESnare, pOpenHH, pTomMid, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH, $02
	dc.b	$01, $03, pOpenHH, $02, pESnare, $03, $03, pClosedHH
	dc.b	$01, pESnare, $03, pBongoLo, $02, pESnare, $01, pBongoLo
	dc.b	$03, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, $03, pBongoLo, $02
	dc.b	pESnare, $01, pTomLow, $02, $01, pClosedHH, $02, $01
	dc.b	pESnare, $03, pOpenHH, $02, pESnare, $03, $03, pClosedHH
	dc.b	$01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH, $02, $01
	dc.b	pESnare, $03, pOpenHH, $02, pESnare, $03, $03, pClosedHH
	dc.b	$01, pESnare, $03, pBongoLo, $02, pESnare, $01, pBongoLo
	dc.b	$03, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pASnare, $02, $01
	dc.b	$02, $01, $02, $01, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	pESnare, $03, pBongoLo, pOpenHH, pClosedHH, $02, $01, $03
	dc.b	pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $01, pASnare, $02, $01
	dc.b	pClosedHH, $02, $01, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, pESnare, $03, pBongoLo, pOpenHH, pClosedHH
	dc.b	$02, $01, pESnare, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, $03, pOpenHH, $02, pESnare, $01
	dc.b	pTomLow, $02, pASnare, $01, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	pESnare, $03, pBongoLo, pBongoLo, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	pESnare, $03, pOpenHH, $02, pESnare, $01, pBongoLo, $03
	dc.b	pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02, pESnare
	dc.b	$03, $03, pClosedHH, $01, $03, pBongoLo, pEKick, $02
	dc.b	pTomLow, $01, pClosedHH, $02, $01, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $01, pOpenHH, $03, $03, pBongoLo, $06
	dc.b	pOpenHH, $03, $03, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pBongoLo
	dc.b	$06, pOpenHH, $03, $03, pESnare, pOpenHH, pOpenHH, pOpenHH
	dc.b	pOpenHH, pOpenHH, pEKick, pOpenHH, pBongoLo, pBongoLo, pOpenHH, pOpenHH
	dc.b	pBongoLo, $06, pEKick, $03, pOpenHH, pOpenHH, pBongoLo, pOpenHH
	dc.b	pOpenHH, pBongoLo, $06, pOpenHH, $03, $03, pBongoLo, pESnare
	dc.b	pEKick, $02, $01, pOpenHH, $03, $03, $03, pEKick
	dc.b	pOpenHH, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pBongoLo, $06, pEKick
	dc.b	$03, pOpenHH, pOpenHH, pOpenHH, pOpenHH, pOpenHH, pBongoLo, $06
	dc.b	pOpenHH, $03, $03, pBongoLo, pOpenHH, pClosedHH, $06, $06
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05
	dc.b	pSplashCymb, $06, pClosedHH, pESnare, pClosedHH, pEKick, pClosedHH, pESnare
	dc.b	pClosedHH, pClosedHH, pEKick, pESnare, pClosedHH, pEKick, pClosedHH, pESnare
	dc.b	$07, pClosedHH, $05, pSplashCymb, $06, pEKick

DMR_PWM1_Loop3:
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, DMR_PWM1_Loop3, Target
	dc.b	pESnare, $07, pClosedHH, $05, pSplashCymb, $06

DMR_PWM1_Loop4:
	dc.b	pOpenHH
	smpsLoop		$00, $07, DMR_PWM1_Loop4, Target
	dc.b	pClosedHH, pClosedHH, pESnare, pClosedHH

DMR_PWM1_Loop6:
	dc.b	pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05, pSplashCymb

DMR_PWM1_Loop5:
	dc.b	$06, pClosedHH, pESnare, pClosedHH
	smpsLoop		$00, $03, DMR_PWM1_Loop5, Target
	smpsLoop		$01, $02, DMR_PWM1_Loop6, Target
	dc.b	pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05, $06, $06
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05
	dc.b	pSplashCymb, $06, pClosedHH, pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare
	dc.b	pClosedHH, $0C, $06, pESnare, pClosedHH, pClosedHH, pClosedHH, pEKick
	dc.b	$03, $03, pASnare, $06, pSplashCymb, pBongoLo

DMR_PWM1_Loop7:
	dc.b	pOpenHH, $03, $03, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pBongoLo
	dc.b	$06
	smpsLoop		$00, $07, DMR_PWM1_Loop7, Target
	dc.b	pOpenHH, $03, $03, pBongoLo, pOpenHH, pEKick, $02, $01
	dc.b	pClosedHH, $03, $03, $03, pEKick, pOpenHH, pBongoLo, pClosedHH
	dc.b	pEKick, $02, $01, pOpenHH, $03, pESnare, $06, pOpenHH
	dc.b	$03, $03, $03, pESnare

DMR_PWM1_Loop8:
	dc.b	pOpenHH
	smpsLoop		$00, $0A, DMR_PWM1_Loop8, Target
	dc.b	pESnare, $06, pEKick, $03, pOpenHH, pOpenHH, pBongoLo, pEKick
	dc.b	$02, $01, pOpenHH, $03, $03, $03, pEKick, pOpenHH
	dc.b	pESnare, pOpenHH, pOpenHH, pOpenHH, pBongoLo, $06, pEKick, $03
	dc.b	pOpenHH, pESnare, pOpenHH, pEKick, $02, $01, pOpenHH, $03
	dc.b	$03, $03, $03, $03, pBongoLo, pOpenHH, pOpenHH, pOpenHH
	dc.b	pESnare, $06, pOpenHH, $03, $03, pESnare, pESnare, pEKick
	dc.b	$02, $01, pClosedHH, $03, pBongoLo, $06, pOpenHH, $03
	dc.b	$03, $03, pESnare, pOpenHH, pOpenHH, pESnare, $06, pEKick
	dc.b	$03, pOpenHH, pOpenHH, pBongoLo, pEKick, $02, $01, pOpenHH
	dc.b	$03, $03, $03, pEKick, pOpenHH, pESnare, pOpenHH, pEKick
	dc.b	$02, $01, pOpenHH, $03, pBongoLo, $06, pEKick, $03
	dc.b	pOpenHH, pBongoLo, pESnare

DMR_PWM1_Jump1:
	dc.b	pEKick, $02, $01, pOpenHH, $03, pESnare, $06, pEKick
	dc.b	$03, pOpenHH, pBongoLo, pESnare, pOpenHH, pOpenHH, pESnare, $06
	dc.b	pEKick, $03, pOpenHH, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pESnare
	dc.b	$06, pOpenHH, $03, $03, pBongoLo, pBongoLo, pEKick, $02
	dc.b	$01, pOpenHH, $03, $03, $03, pEKick, pOpenHH, pOpenHH
	dc.b	pOpenHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pOpenHH, pOpenHH, pOpenHH
	dc.b	pClosedHH, pOpenHH, pOpenHH, pBongoLo, $06, pEKick, $03, pOpenHH
	dc.b	pBongoLo, pOpenHH, pEKick, $02, $01, pOpenHH, $03, pESnare
	dc.b	$06, pEKick, $03, pOpenHH, pBongoLo, pESnare, pOpenHH, pOpenHH
	dc.b	pESnare, $06, pEKick, $03, pOpenHH, pBongoLo, pBongoLo, pOpenHH
	dc.b	pOpenHH, pESnare, $06, pOpenHH, $03, $03, pBongoLo, pBongoLo
	dc.b	pEKick, $02, $01, pOpenHH, $03, $03, $03, pEKick
	dc.b	pOpenHH, pOpenHH, pBongoLo, pEKick, $02, $01, pOpenHH, $03
	dc.b	pBongoLo, $06, pEKick, $03, pOpenHH, pESnare, pBongoLo, pOpenHH
	dc.b	pOpenHH, $02, pClosedHH, $01, pASnare, $02, $01, pOpenHH
	dc.b	$03, $03, pClosedHH, $02, $07
	smpsJump		DMR_PWM1_Jump1, Target