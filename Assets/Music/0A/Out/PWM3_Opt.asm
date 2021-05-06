MKW_PWM3:
	dc.b	nRst, $04, pClosedHH, $08, $08, $08, $04
	dc.b	nRst, pClosedHH, $08, $08, pOpenHH, pOpenHH, pClosedHH, pClosedHH
	dc.b	pClosedHH

MKW_PWM3_Loop1:
	dc.b	pOpenHH, pClosedHH, pClosedHH, pOpenHH
	smpsLoop		$00, $06, MKW_PWM3_Loop1, Target
	dc.b	pOpenHH, pOpenHH, pOpenHH, pOpenHH, pOpenHH, pClosedHH

MKW_PWM3_Loop2:
	dc.b	pClosedHH, pOpenHH, pOpenHH, pClosedHH, pOpenHH, pOpenHH, pOpenHH, pOpenHH
	smpsLoop		$00, $02, MKW_PWM3_Loop2, Target
	dc.b	pClosedHH

MKW_PWM3_Loop3:
	dc.b	pOpenHH, pOpenHH, pClosedHH, pOpenHH
	smpsLoop		$00, $09, MKW_PWM3_Loop3, Target
	dc.b	pOpenHH, pOpenHH, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pEKick, pClosedHH
	dc.b	pClosedHH, pESnare, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pClosedHH, $01
	dc.b	pFingSnap, pAKick, pClosedHH, pAKick, $02, pFingSnap, $04, pClosedHH
	dc.b	pOpenHH, $02, pClosedHH, pClosedHH, $04, $02, $04, pEKick
	dc.b	$02, pClosedHH, pEKick, pClosedHH, pClosedHH, pESnare, $04, pClosedHH
	dc.b	pClosedHH, $02, pEKick, pEKick, pClosedHH, pOpenHH, pEKick, $04
	dc.b	pClosedHH, $02, pOpenHH, pEKick, $01, pESnare, pFingSnap, pClosedHH
	dc.b	$03, pAKick, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pEKick, pClosedHH
	dc.b	pClosedHH, pESnare, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pClosedHH, $01
	dc.b	pFingSnap, pAKick, pClosedHH, pAKick, $02, pFingSnap, $04, pClosedHH
	dc.b	pOpenHH, $02, pClosedHH, pClosedHH, $04, $02, $04, pEKick
	dc.b	$02, pClosedHH, pEKick, pClosedHH, pClosedHH, pESnare, pClosedHH, pClosedHH
	dc.b	$04, $02, pEKick, pEKick, pClosedHH, pOpenHH, pEKick, $04
	dc.b	pClosedHH, $02, pOpenHH, pEKick, $01, pESnare, pFingSnap, pClosedHH
	dc.b	$03, pAKick, $04, pClosedHH, pClosedHH, $02, $02, $04
	dc.b	$02, $04, pEKick, $02, pClosedHH, pEKick

MKW_PWM3_Loop4:
	dc.b	pEKick, $04, pClosedHH, pEKick, pOpenHH, $02, pEKick, pEKick
	dc.b	$04, pESnare, $02, pClosedHH, $04, pEKick, $02, pOpenHH
	dc.b	pClosedHH
	smpsLoop		$00, $03, MKW_PWM3_Loop4, Target
	dc.b	pClosedHH, $01, $01, $02, pAKick, $04, pClosedHH, pClosedHH
	dc.b	$02, $02, $04, $02, $04, pEKick, $02, pClosedHH
	dc.b	pEKick, pClosedHH, $04, $04

MKW_PWM3_Loop5:
	dc.b	pEKick, pOpenHH, $02, pEKick, pEKick, $04, pESnare, $02
	dc.b	pClosedHH, $04, pEKick, $02, pOpenHH, pClosedHH, pEKick, $04
	dc.b	pClosedHH
	smpsLoop		$00, $02, MKW_PWM3_Loop5, Target
	dc.b	pEKick, pOpenHH, $02, pEKick, pEKick, $04, pESnare, $02
	dc.b	pClosedHH, $04, pEKick, $02, pOpenHH, pClosedHH, pClosedHH, $01
	dc.b	$01, $02, pAKick, $08, pClosedHH, pClosedHH, pClosedHH
	smpsJump		MKW_PWM3, Target