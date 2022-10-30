KSSU_HelperRestPWM3:
	dc.b pEKick, $04, pOpenHH, $02, $02, $02, $02, pEKick
	dc.b $04, $04, pOpenHH, $02, $02, pESnare, $04, pOpenHH
	dc.b $02, $3F, nRst, nRst, nRst, $29
	smpsJump		KSSU_HelperRestPWM3, Target