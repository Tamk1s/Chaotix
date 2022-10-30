KSSU_HelperRestPWM2:
	dc.b pCrashCymb, $20, pOpenHH

KSSU_HelperRestPWM2_Loop1:
	dc.b $02, $0A, $02, $02, $02, $06, $02, $06
	smpsLoop		$00, $06, KSSU_HelperRestPWM2_Loop1, Target
	dc.b $02, $0A, $02, $02, $02, $06, $02, $0A
	smpsJump		KSSU_HelperRestPWM2, Target