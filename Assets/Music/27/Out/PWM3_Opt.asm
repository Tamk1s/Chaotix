DMR_PWM3:
	dc.b	nRst, $33, $33, $09, pEKick, $18, $18, pClosedHH
	dc.b	pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, $09, pTomMid, $0F
	dc.b	pClosedHH, $09, pTomLow, $02, pEKick, $0D, $09, pTomLow
	dc.b	$02, $0D, pClosedHH, $09, pTomLow, $02, $0D, pClosedHH
	dc.b	$09, pEKick, $02, $0D, $18, $09, $02, $0D
	dc.b	$09, pOpenHH, $0F, pEKick, $09, pTomMid, $0F, pEKick
	dc.b	$18, pClosedHH, $09, pBongoLo, $0F, pClosedHH, $09, pEKick
	dc.b	$02, $0D, pClosedHH, $03, pASnare, $06, pOpenHH, $03
	dc.b	$03, pClosedHH, pOpenHH, pOpenHH, $05, pEKick, $04, pBongoLo
	dc.b	$09, pOpenHH, $03, $08, pClosedHH, $04, pBongoLo, $09
	dc.b	$0F, pESnare, $09, $0B, pClosedHH, $04, pOpenHH, $09
	dc.b	pBongoLo, $0B, pEKick, $04, pESnare, $09, $0B, pEKick
	dc.b	$04, pOpenHH, $09, $03, $0C, pESnare, $09, $21
	dc.b	pClosedHH, $18, pEKick, pClosedHH, pEKick, $09, pTomMid, $0F
	dc.b	pEKick, $09, $02, $0D, pClosedHH, $09, pTomLow, $02
	dc.b	pEKick, $0D, pClosedHH, $09, pTomLow, $02, $0D, pEKick
	dc.b	$03, pClosedHH, pBongoLo, pSplashCymb, $0F, pEKick, $18, pClosedHH
	dc.b	$09, pBongoLo, $0F, pClosedHH, $09, pEKick, $02, $0D
	dc.b	pClosedHH, $09, pOpenHH, $0F, pClosedHH, $18, $09, pEKick
	dc.b	$02, pTomLow, $0D, pClosedHH, $09, pTomLow, $02, pEKick
	dc.b	$0D, pClosedHH, $09, $06, $03, pOpenHH, pClosedHH, $05
	dc.b	$04, pESnare, $09, $0F, pBongoLo, $09, $0F, pESnare
	dc.b	$09, pOpenHH, $03, $08, pEKick, $04, pOpenHH, $09
	dc.b	pESnare, $0F, pOpenHH, $09, pESnare, $0B, pClosedHH, $04
	dc.b	pESnare, $09, $0B, pEKick, $04, pBongoLo, $09, pESnare
	dc.b	$33, nRst, $0F, pEKick, $33, nRst, $2D, pEKick
	dc.b	$33, nRst, $2D, pEKick, $06, $12, $33, nRst
	dc.b	$15, pEKick, $33, nRst, $2D, pEKick, $33, nRst
	dc.b	nRst, $2A, pEKick, $30, $30, $02, $01, pClosedHH
	dc.b	$03, pESnare, $06, pClosedHH, $05, pEKick, $04, pESnare

DMR_PWM3_Loop1:
	dc.b	$09, $0F
	smpsLoop		$00, $06, DMR_PWM3_Loop1, Target
	dc.b	$09, $12, pSplashCymb, $06, pBongoLo, pOpenHH, $05, pClosedHH
	dc.b	$04, pOpenHH, $09, $03, $08, pClosedHH, $04, pBongoLo
	dc.b	$09, $0F, $09, $0F, pESnare, $09, pBongoLo, $0B
	dc.b	pClosedHH, $04, pBongoLo, $09, pESnare, $0F, $09, $0B
	dc.b	pEKick, $04, pESnare, $09, pOpenHH, $03, $08, pEKick
	dc.b	$07, pSplashCymb, $06, pESnare, pClosedHH, $05, $04, pBongoLo
	dc.b	$09, $0F, pESnare, $09, pBongoLo, $0B, pClosedHH, $04
	dc.b	pBongoLo, $09, pOpenHH, $03, $08, pEKick, $04, pBongoLo
	dc.b	$03

DMR_PWM3_Jump1:
	dc.b	nRst, $06, pOpenHH, $03, $08, pEKick, $04, pOpenHH
	dc.b	$09, $03, $08, pClosedHH, $04, pOpenHH, $09, pBongoLo
	dc.b	$0B, pEKick, $04, pOpenHH, $09, pBongoLo, $12, pOpenHH
	dc.b	$03, pClosedHH, pOpenHH, pOpenHH, pClosedHH, $05, $04, pBongoLo
	dc.b	$09, pESnare, $0F, pBongoLo, $09, pOpenHH, $03, $08
	dc.b	pEKick, $04, pOpenHH, $09, $03, $08, pClosedHH, $04
	dc.b	pOpenHH, $09, pBongoLo, $0B, pEKick, $04, pOpenHH, $09
	dc.b	pBongoLo, $0F, pESnare, $09, $0B, pEKick, $04, pESnare
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, pTomHi, $02
	dc.b	$01, pBongoLo, $02, $01, pASnare, $02, pBongoLo, $01
	dc.b	$06
	smpsJump		DMR_PWM3_Jump1, Target