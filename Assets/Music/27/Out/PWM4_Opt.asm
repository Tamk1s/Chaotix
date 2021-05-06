DMR_PWM4:
	dc.b	nRst, $30, $30, $30, $30, $30, $30, pOpenHH
	dc.b	$18, pEKick, $02, pTomLow, $16, pBongoLo, $18, pEKick
	dc.b	$02, $16, pBongoLo, $30, $30, pASnare, $02, pTomLow
	dc.b	$2E, pEKick, $02, pASnare, $2E, pClosedHH, $06, pESnare
	dc.b	$0B, pClosedHH, $04, $2C, $30, $30, pEKick, $18
	dc.b	$33, nRst, nRst, $01, pOpenHH, $18, $18, $18
	dc.b	pEKick, $02, $16, pOpenHH, $30, pTomLow, $02, $2E
	dc.b	pBongoLo, $30, pASnare, $02, pEKick, $33, nRst, $01
	dc.b	pESnare, $0B, pEKick, $04, pClosedHH, $14, pEKick, $18
	dc.b	$18, pClosedHH, pEKick, pEKick, pClosedHH, pEKick, $1A

DMR_PWM4_Loop1:
	dc.b	nRst
	smpsLoop		$00, $19, DMR_PWM4_Loop1, Target
	dc.b	nRst, $03, pClosedHH, $06, $03, $08, $04, $14
	dc.b	pEKick, $18, $18, $18, $18, $18, $18, $07
	dc.b	pOpenHH, $06, $03, $08, pEKick, $04, pESnare, $2C
	dc.b	pClosedHH, $18, pEKick, $30, $18, pClosedHH, pClosedHH, $07
	dc.b	pOpenHH, $06, pClosedHH, $03, pOpenHH, $08, pEKick, $04
	dc.b	pOpenHH, $14, pEKick, $33, nRst, $04

DMR_PWM4_Jump1:
	dc.b	nRst, $11, pClosedHH, $30, $18, $07, pEKick, $02
	dc.b	$04, pESnare, $0B, pClosedHH, $04, pOpenHH, $14, pEKick
	dc.b	$18, pClosedHH, $30, $18, $18, $0D, pESnare, $06
	dc.b	pEKick, $03, pOpenHH, pOpenHH, $06
	smpsJump		DMR_PWM4_Jump1, Target