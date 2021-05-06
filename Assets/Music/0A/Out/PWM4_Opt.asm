MKW_PWM4:
	dc.b	nRst, $20

MKW_PWM4_Loop1:
	dc.b	$25
	smpsLoop		$00, $14, MKW_PWM4_Loop1, Target
	dc.b	pClosedHH

MKW_PWM4_Loop2:
	dc.b	$08, $08, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, $02
	dc.b	pEKick, pEKick, $04, pESnare, $08, pClosedHH, pClosedHH, pOpenHH
	dc.b	pClosedHH, pESnare, pFingSnap, pFingSnap, $02, pAKick, pClosedHH, pClosedHH
	dc.b	pClosedHH, $08
	smpsLoop		$00, $02, MKW_PWM4_Loop2, Target
	dc.b	pOpenHH, pClosedHH, pClosedHH, pClosedHH

MKW_PWM4_Loop3:
	dc.b	pESnare, pOpenHH, pClosedHH, $04, $04, $08
	smpsLoop		$00, $02, MKW_PWM4_Loop3, Target
	dc.b	pESnare, pOpenHH, pClosedHH, $02, $02, pEKick, pClosedHH, pESnare
	dc.b	$08, pOpenHH, pClosedHH, pClosedHH, $04, pEKick, pClosedHH

MKW_PWM4_Loop4:
	dc.b	$08, pESnare, pOpenHH, pClosedHH, $04, $04
	smpsLoop		$00, $02, MKW_PWM4_Loop4, Target
	dc.b	$08, pESnare, pOpenHH, pClosedHH, $02, $02, pEKick, pClosedHH
	dc.b	pESnare, $20
	smpsJump		MKW_PWM4, Target