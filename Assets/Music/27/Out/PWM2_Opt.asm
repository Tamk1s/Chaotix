DMR_PWM2:
	dc.b	nRst, $33, $2A, pBongoLo, $03, pTomMid, $06, pESnare
	dc.b	pOpenHH, $03, pClosedHH, pESnare, $06, pOpenHH, pESnare, pOpenHH
	dc.b	$03, pClosedHH

DMR_PWM2_Loop1:
	dc.b	pClosedHH, pOpenHH, pOpenHH, $06, pClosedHH, pOpenHH, $03, pEKick
	dc.b	pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH, $03, pEKick
	smpsLoop		$00, $03, DMR_PWM2_Loop1, Target
	dc.b	pClosedHH, pOpenHH, pEKick, $02, $04, pClosedHH, $06, pOpenHH
	dc.b	$03, pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH, $03
	dc.b	pClosedHH, pESnare, pOpenHH, pEKick, $02, $04, pESnare, $06
	dc.b	pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH
	dc.b	$03, pEKick, pESnare, pOpenHH, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$03, pClosedHH, pClosedHH, pOpenHH, pOpenHH, $06, pClosedHH, pOpenHH
	dc.b	$03, pClosedHH, pClosedHH, $06, pASnare, $02, pTomLow, $04
	dc.b	pESnare, $06, pOpenHH, $03, pClosedHH, pClosedHH, pOpenHH, pTomLow
	dc.b	$02, $04, pClosedHH, $06, pOpenHH, $03, pClosedHH, pClosedHH
	dc.b	$06, pTomLow, $02, pEKick, $04, pClosedHH, $06, pOpenHH
	dc.b	$03, pClosedHH, pESnare, pOpenHH, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$03, pEKick, pESnare, $06, pASnare, $02, pEKick, $04
	dc.b	pClosedHH, $06, pOpenHH, $03, pEKick, pClosedHH, pOpenHH, pTomLow
	dc.b	$02, $04, pClosedHH, $06, pOpenHH, $03, pEKick, pESnare
	dc.b	pOpenHH, $02, pESnare, $01, pEKick, $02, $01, pClosedHH
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, $05, $04, pESnare, $03
	dc.b	pEKick, $02, $04, pBongoLo, $06, pOpenHH, $05, pEKick
	dc.b	$04, pESnare, $03, pEKick, $02, $04, pESnare, $06
	dc.b	pOpenHH, $05, pEKick, $04, pOpenHH, $03, $06, $03
	dc.b	$03, $05, pEKick, $04, pBongoLo, $03, pOpenHH, $06
	dc.b	pESnare, pOpenHH, $09, $03, pEKick, $02, $04, pOpenHH
	dc.b	$03, $03, pEKick, $05, pClosedHH, $04, pESnare, $03
	dc.b	pEKick, $02, $04, pESnare, $06, pEKick, $05, pClosedHH
	dc.b	$04, pOpenHH, $03, pEKick, $02, $04, pBongoLo, $06
	dc.b	pEKick, $05, pClosedHH, $04, pESnare, $03, pOpenHH, $06
	dc.b	pClosedHH, pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pESnare
	dc.b	pOpenHH, $03, pClosedHH, pClosedHH, pOpenHH, pOpenHH, $06, pClosedHH
	dc.b	pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH
	dc.b	$03, pClosedHH, pESnare, pOpenHH, pEKick, $02, $04, pClosedHH
	dc.b	$06, pOpenHH, $03, pClosedHH, pClosedHH, $06, pTomLow, $02
	dc.b	$04, pClosedHH, $06, pOpenHH, $03, pEKick, pClosedHH, pOpenHH
	dc.b	pEKick, $02, pTomLow, $04, pClosedHH, $06, pOpenHH, $03
	dc.b	pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH, $03, pClosedHH
	dc.b	pESnare, pOpenHH, $02, pESnare, $01, pTomMid, $06, pClosedHH
	dc.b	pOpenHH, $03, pClosedHH, pClosedHH, pOpenHH, pBongoLo, $06, pESnare
	dc.b	pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pESnare, pOpenHH
	dc.b	$03, pEKick, pClosedHH, pOpenHH, pTomLow, $02, $04, pClosedHH
	dc.b	$06, pOpenHH, $03, pEKick, pESnare, $06, pEKick, $02
	dc.b	pTomLow, $04, pClosedHH, $06, pOpenHH, $03, pEKick, pClosedHH
	dc.b	pOpenHH, pOpenHH, $06, pClosedHH, pOpenHH, $03, pEKick, pClosedHH
	dc.b	$06, pTomLow, $02, pASnare, $04, pClosedHH, $06, pOpenHH
	dc.b	$03, pEKick, pESnare, pOpenHH, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$03, pEKick, pClosedHH, $06, pEKick, $02, $01, pClosedHH
	dc.b	$03, pOpenHH, pClosedHH, pEKick, $05, pClosedHH, $04, pOpenHH
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, $03, pEKick
	dc.b	$05, pClosedHH, $04, pESnare, $03, pEKick, $02, $04
	dc.b	pESnare, $06, pOpenHH, $05, pClosedHH, $04, pOpenHH, $03
	dc.b	pEKick, $02, $04, pESnare, $06, pOpenHH, $09, pESnare
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, $03, pEKick
	dc.b	$05, pClosedHH, $04, pBongoLo, $03, pOpenHH, $06, pBongoLo
	dc.b	pOpenHH, $09, $03, pEKick, $02, $04, pOpenHH, $03
	dc.b	$03, $09, pESnare, $03, pEKick, $02, $04, pOpenHH
	dc.b	$03, $03, pEKick, $05, pClosedHH, $04, pESnare, $03
	dc.b	pEKick, $06, $12, $18, pClosedHH, $06, pEKick, $12
	dc.b	pClosedHH, $18, pEKick, $06, pClosedHH, $12, $18, $06
	dc.b	$12, pEKick, $18, $06, $12, $18, pClosedHH, $06
	dc.b	$06, pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare, pClosedHH, pEKick
	dc.b	pEKick

DMR_PWM2_Loop2:
	dc.b	$12, $18, pClosedHH, $06, pEKick, $12, $18, $06
	smpsLoop		$00, $02, DMR_PWM2_Loop2, Target
	dc.b	$12, $18, $06, $12, $18, pClosedHH, $06, pEKick
	dc.b	$12, $18, pClosedHH, $06, pEKick, $12, $09, $03
	dc.b	pESnare, $07, pClosedHH, $05, pOpenHH, $03, $03, $03

DMR_PWM2_Loop3:
	dc.b	$03, pEKick, $05, pClosedHH, $04, pOpenHH, $03, pEKick
	dc.b	$02, $04, pOpenHH, $03
	smpsLoop		$00, $07, DMR_PWM2_Loop3, Target
	dc.b	$03, pEKick, $05, pClosedHH, $04, pESnare, $03, pClosedHH
	dc.b	pOpenHH, pESnare, $06, pClosedHH, $05, $04, pBongoLo, $03
	dc.b	pOpenHH, $06, pBongoLo, pEKick, $05, $04, pOpenHH, $03
	dc.b	pEKick, $02, $04, pESnare, $06, pEKick, $05, $04
	dc.b	pESnare, $03, pEKick, $02, $04, pOpenHH, $03, $03
	dc.b	$05, pClosedHH, $04, pOpenHH, $03, $06, pESnare, pOpenHH
	dc.b	$05, pEKick, $04, pESnare, $03, pEKick, $02, $04
	dc.b	pOpenHH, $03, $03, $05, pClosedHH, $04, pBongoLo, $03
	dc.b	pOpenHH, $06, pBongoLo, pEKick, $09, pBongoLo, $03, pEKick
	dc.b	$02, $04, pBongoLo, $06, pEKick, $09, pOpenHH, $03
	dc.b	pClosedHH, pOpenHH, pOpenHH, pClosedHH, pEKick, $05, pClosedHH, $04
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, $03, $05
	dc.b	pClosedHH, $04, pOpenHH, $03, $06, pESnare, pOpenHH, $05
	dc.b	pEKick, $04, pESnare, $03, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$05, pClosedHH, $04, pOpenHH, $03

DMR_PWM2_Jump1:
	dc.b	pOpenHH, $06, pBongoLo, pOpenHH, $09, pBongoLo, $03, pEKick
	dc.b	$02, $04, pBongoLo, $06, pOpenHH, $05, pEKick, $04
	dc.b	pESnare, $03, pEKick, $02, $04, pOpenHH, $03, $03
	dc.b	pEKick, $09, pESnare, $03, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$05, pEKick, $04, pESnare, $03, pSplashCymb, $06, pBongoLo
	dc.b	pEKick, $05, $04, pESnare, $03, pEKick, $02, $04
	dc.b	pOpenHH, $03, $03, $05, pClosedHH, $04, pESnare, $03
	dc.b	pOpenHH, $06, pBongoLo, pOpenHH, $09, pBongoLo, $03, pEKick
	dc.b	$02, $04, pBongoLo, $06, pOpenHH, $05, pEKick, $04
	dc.b	pESnare, $03, pEKick, $02, $04, pOpenHH, $03, $03
	dc.b	pEKick, $09, pESnare, $03, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$05, pEKick, $04, pOpenHH, $03, $06, $03, $03
	dc.b	$09, $03, pClosedHH, $02, $01, $03, pBongoLo, $06
	dc.b	pClosedHH, $02, $01, pBongoLo, $02, pASnare, $01, pSplashCymb
	dc.b	$06
	smpsJump		DMR_PWM2_Jump1, Target