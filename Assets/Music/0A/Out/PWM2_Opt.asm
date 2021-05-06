MKW_PWM2:
	dc.b	pClosedHH

MKW_PWM2_Loop1:
	dc.b	$02, $02, pOpenHH, pClosedHH
	smpsLoop		$00, $04, MKW_PWM2_Loop1, Target
	dc.b	$02, $02, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH

MKW_PWM2_Loop2:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop2, Target

MKW_PWM2_Loop3:
	dc.b	pOpenHH

MKW_PWM2_Loop4:
	dc.b	pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, MKW_PWM2_Loop3, Target
	dc.b	pClosedHH
	smpsLoop		$01, $02, MKW_PWM2_Loop4, Target

MKW_PWM2_Loop5:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop5, Target

MKW_PWM2_Loop7:
	dc.b	pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH

MKW_PWM2_Loop6:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop6, Target
	smpsLoop		$01, $05, MKW_PWM2_Loop7, Target

MKW_PWM2_Loop8:
	dc.b	pClosedHH
	smpsLoop		$00, $10, MKW_PWM2_Loop8, Target
	dc.b	pOpenHH, pClosedHH, pClosedHH, pClosedHH

MKW_PWM2_Loop10:
	dc.b	pOpenHH

MKW_PWM2_Loop9:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop9, Target
	smpsLoop		$01, $02, MKW_PWM2_Loop10, Target

MKW_PWM2_Loop11:
	dc.b	pClosedHH
	smpsLoop		$00, $08, MKW_PWM2_Loop11, Target
	smpsLoop		$02, $02, MKW_PWM2_Loop10, Target

MKW_PWM2_Loop13:
	dc.b	pOpenHH

MKW_PWM2_Loop12:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop12, Target
	smpsLoop		$01, $02, MKW_PWM2_Loop13, Target
	dc.b	pClosedHH, pClosedHH, pClosedHH, pClosedHH

MKW_PWM2_Loop15:
	dc.b	pOpenHH

MKW_PWM2_Loop14:
	dc.b	pClosedHH
	smpsLoop		$00, $0F, MKW_PWM2_Loop14, Target
	smpsLoop		$01, $08, MKW_PWM2_Loop15, Target
	dc.b	pClosedHH, pClosedHH, pClosedHH, pClosedHH, pESnare

MKW_PWM2_Loop16:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop16, Target
	dc.b	pFingSnap

MKW_PWM2_Loop17:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop17, Target
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pFingSnap, pFingSnap
	dc.b	$04, pClosedHH

MKW_PWM2_Loop18:
	dc.b	$02
	smpsLoop		$00, $07, MKW_PWM2_Loop18, Target
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	$04, $02, $02, $02, pOpenHH, pClosedHH, pClosedHH, pESnare
	dc.b	pClosedHH, pClosedHH, pClosedHH, pEKick, pClosedHH, pClosedHH, pAKick, $01
	dc.b	$01, $04, pClosedHH

MKW_PWM2_Loop19:
	dc.b	$02
	smpsLoop		$00, $07, MKW_PWM2_Loop19, Target
	dc.b	pESnare

MKW_PWM2_Loop20:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop20, Target
	dc.b	pFingSnap, pClosedHH, $01, pESnare, pClosedHH, $02, $02, $02
	dc.b	$02, $02, $02, pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pFingSnap, pFingSnap, $04, pClosedHH

MKW_PWM2_Loop21:
	dc.b	$02
	smpsLoop		$00, $07, MKW_PWM2_Loop21, Target
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	$04, $01, pESnare, pClosedHH, $02, $02, pOpenHH, pClosedHH
	dc.b	pClosedHH, pESnare, pClosedHH, pClosedHH, pClosedHH, pEKick, pClosedHH, pClosedHH
	dc.b	pAKick, $01, $01, $04

MKW_PWM2_Loop22:
	dc.b	pClosedHH, $02, $02, $02, pESnare
	smpsLoop		$00, $04, MKW_PWM2_Loop22, Target

MKW_PWM2_Loop23:
	dc.b	pClosedHH
	smpsLoop		$00, $08, MKW_PWM2_Loop23, Target
	dc.b	pEKick, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pESnare
	smpsLoop		$01, $02, MKW_PWM2_Loop23, Target

MKW_PWM2_Loop24:
	dc.b	pClosedHH
	smpsLoop		$00, $08, MKW_PWM2_Loop24, Target
	dc.b	pEKick, pClosedHH, pClosedHH, pClosedHH, pEKick, $01, $01, pAKick
	dc.b	pEKick, pAKick, pAKick, pEKick, $02
	smpsLoop		$02, $02, MKW_PWM2_Loop22, Target

MKW_PWM2_Loop25:
	dc.b	pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsLoop		$00, $03, MKW_PWM2_Loop25, Target
	dc.b	pClosedHH, pClosedHH, pClosedHH
	smpsJump		MKW_PWM2, Target