Segapede_PWM2:
	dc.b nRst, $04

Segapede_PWM2_Jump1:
	dc.b nRst, $04, pAKick, pASnare, pAKick, $08, $04, pASnare
	dc.b pESnare, pASnare, $08, pAKick, $04, pESnare, $08, $04
	dc.b pAKick, $0C, pASnare, $04, pAKick, pASnare, $08, $04
	dc.b pAKick, pESnare, pESnare, $08, pAKick, $04, pASnare, $08
	dc.b $04, pAKick, $0C, pASnare, $04, pAKick, pASnare, $08
	dc.b $04, pESnare, pESnare, pESnare, $08, pAKick, $04, pASnare
	dc.b $08, $04, pAKick, $0C, pASnare, $04, pAKick, pASnare
	dc.b $08, $04, $01, $02, $01, $01, $02, $05
	dc.b $04, pAKick, pASnare, $08, $04, pAKick, $10, pASnare
	dc.b $04, pAKick, $08, $04, pASnare, pESnare, pASnare, $08
	dc.b pAKick, $04, pESnare, $08, $04, pAKick, $0C, $04
	dc.b pASnare, pAKick, $08, $04, pASnare, pESnare, pASnare, $08
	dc.b pAKick, $04, pESnare, $08, $04, pAKick, $0C, pASnare
	dc.b $04, pAKick, pASnare, $08, $04, pAKick, pESnare, pESnare
	dc.b $08, pAKick, $04, pASnare, $08, $04, pAKick, $0C
	dc.b pASnare, $04, pAKick, pASnare, $08, $04, pESnare, pESnare
	dc.b pESnare, $08, pAKick, $1C

Segapede_PWM2_Loop1:
	dc.b $04, pASnare, pAKick, $08, $04, pASnare, pESnare, pASnare
	dc.b $08, pAKick, $04, pESnare, $08, $04, pAKick, $0C
	smpsLoop		$00, $02, Segapede_PWM2_Loop1, Target
	dc.b pASnare, $04, pAKick, pASnare, $08, $04, pAKick, pESnare
	dc.b pESnare, $08, pAKick, $04, pASnare, $08, $04, pAKick
	dc.b $0C, pASnare, $04, pAKick, pASnare, $08, $04, pESnare
	dc.b pESnare, pESnare, $08, pAKick, $04, pASnare, $08, $04
	dc.b pAKick, $10, pASnare, $04, pAKick, $08, $04, pASnare
	dc.b pESnare, pASnare, $08, pAKick, $04, pESnare, $08, $04
	dc.b pAKick, $0C, $04, pASnare, pAKick, $08, $04, pASnare
	dc.b pESnare, pASnare, $08, pAKick, $04, pESnare, $08, $04
	dc.b pAKick, $0C, pASnare, $04, pAKick, pASnare, $08, $04
	dc.b pAKick, pESnare, pESnare, $08, pAKick, $04, pASnare, $08
	dc.b $04, pAKick, $50, pASnare, $04, pAKick, $08, $04
	dc.b pASnare, pESnare, pASnare, $08, pAKick, $04, pESnare, $08
	dc.b $04, pAKick, $0C, $04, pASnare, pAKick, $08, $04
	dc.b pASnare, pESnare, pASnare, $08, pAKick, $04, pESnare, $08
	dc.b $04, pAKick, $0C, pASnare, $04, pAKick, pASnare, $08
	dc.b $04, pAKick, pESnare, pESnare, $08, pAKick, $04, pASnare
	dc.b $08, $04, pAKick, $0C, pASnare, $04, pAKick, pASnare
	dc.b $08, $04, pESnare, pESnare, pESnare, $08, pAKick, $18
	smpsJump		Segapede_PWM2_Jump1, Target