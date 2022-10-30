KSSU_HelperRestPWM4:
	dc.b pOpenHH, $02, $0A, $02, $02, $02, $06, $02
	dc.b $3F, nRst, nRst, nRst, $2D
	smpsJump		KSSU_HelperRestPWM4, Target