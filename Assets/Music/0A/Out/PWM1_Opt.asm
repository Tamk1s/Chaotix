MKW_PWM1:
	dc.b	pClosedHH, $02, $02, $02, $01, $01, $02, $02
	dc.b	$02, $01, $01, $02, $02, $01, $01, $02
	dc.b	$01, $01, $02, $02, $02

MKW_PWM1_Loop1:
	dc.b	$02, $02, $02, $01, $01, $02, $02, $02
	dc.b	$01, $01, $02, $02, $01, $01, $02, $01
	dc.b	$01, $02, $02, $02
	smpsLoop		$00, $17, MKW_PWM1_Loop1, Target
	dc.b	pEKick, pClosedHH, pFingSnap, pEKick, $01, pClosedHH, pEKick, $02
	dc.b	pClosedHH, pFingSnap, pEKick, $01, pClosedHH, pClosedHH, $02, $02
	dc.b	pESnare, $01, pClosedHH, pClosedHH, $02, pEKick, $01, pClosedHH
	dc.b	$05, $02, pEKick, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH, pClosedHH
	dc.b	$02, $02, pESnare, $01, pClosedHH, pESnare, pESnare, pESnare
	dc.b	pESnare, pESnare, $02, pAKick, pClosedHH, pEKick, pClosedHH, pFingSnap
	dc.b	pEKick, $01, pClosedHH, pEKick, $02, pClosedHH, pFingSnap, pEKick
	dc.b	$01, pClosedHH, pClosedHH, $02, $02, pESnare, $01, pClosedHH
	dc.b	pClosedHH, $02, pEKick, $01, pClosedHH, $03, pFingSnap, $02
	dc.b	pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, $01, $01, $02
	dc.b	$02, $02, $01, $01, $02, $02, $01, $01
	dc.b	pESnare, pFingSnap, pESnare, pESnare, pESnare, $02, $01, pEKick
	dc.b	pClosedHH, pESnare

MKW_PWM1_Loop2:
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	smpsLoop		$00, $02, MKW_PWM1_Loop2, Target
	dc.b	pClosedHH, $02, $02, pESnare, $01, pClosedHH, pClosedHH, $02
	dc.b	pEKick, $01, pClosedHH, $04, pEKick, $01, pClosedHH, pFingSnap

MKW_PWM1_Loop3:
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	smpsLoop		$00, $02, MKW_PWM1_Loop3, Target
	dc.b	pClosedHH, $02, $02, pESnare, $01, pClosedHH, pESnare, pESnare
	dc.b	pESnare, pESnare, pESnare, $02, pAKick, pClosedHH, pEKick, pClosedHH
	dc.b	pFingSnap, pEKick, $01, pClosedHH, pEKick, $02, pClosedHH, pFingSnap
	dc.b	pEKick, $01, pClosedHH, pClosedHH, $02, $02, pESnare, $01
	dc.b	pClosedHH, pClosedHH, $02, pEKick, $01, pClosedHH, $03, pFingSnap
	dc.b	$02, pEKick, $01, pFingSnap, pEKick, $02, pClosedHH, pClosedHH
	dc.b	pClosedHH, $01, $01, $02, $02, $02, $01, $01
	dc.b	$02, $02, $01, $01, pESnare, pFingSnap, pESnare, pESnare
	dc.b	pESnare, $02, $01, pEKick, pClosedHH, pESnare

MKW_PWM1_Loop4:
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	smpsLoop		$00, $02, MKW_PWM1_Loop4, Target
	dc.b	pClosedHH, $02, $02, pFingSnap, $01, pClosedHH, pClosedHH, $02
	dc.b	$01, $01

MKW_PWM1_Loop6:
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop5:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop5, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pEKick, $03, pClosedHH, $01
	smpsLoop		$01, $02, MKW_PWM1_Loop6, Target
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop7:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop7, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pAKick, pAKick, $02, $01
	dc.b	pEKick, pEKick, pFingSnap, $02, pClosedHH, pEKick, pClosedHH, pFingSnap
	dc.b	pEKick, $01, pClosedHH, pEKick, $02, pClosedHH, pFingSnap, pEKick
	dc.b	$01, pClosedHH, pClosedHH, $02, $02, pFingSnap, $01, pClosedHH
	dc.b	pClosedHH, $03, $01

MKW_PWM1_Loop9:
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop8:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop8, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pEKick, $03, pClosedHH, $01
	smpsLoop		$01, $02, MKW_PWM1_Loop9, Target
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop10:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop10, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pAKick, pAKick, $02, $01
	dc.b	pEKick, pEKick, pFingSnap, $02, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, $01, $01, $02, $02, $02, $01, $01
	dc.b	$02, $02, $01, $01, $02, $01, $01, $02
	smpsJump		MKW_PWM1, Target