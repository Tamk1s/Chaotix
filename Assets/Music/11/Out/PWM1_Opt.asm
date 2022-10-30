KSSU_HelperRestPWM1:
	dc.b pCrashCymb, $20

KSSU_HelperRestPWM1_Loop1:
	dc.b pEKick, $04, pOpenHH, $02, $02, $02, $02, pEKick
	dc.b $04, $04, pOpenHH, $02, $02, pESnare, $04, pOpenHH
	dc.b $02, $02
	smpsLoop		$00, $07, KSSU_HelperRestPWM1_Loop1, Target
	dc.b $04
	smpsJump		KSSU_HelperRestPWM1, Target