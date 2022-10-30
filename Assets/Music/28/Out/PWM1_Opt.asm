Nepu_DimTrip_PWM1:
	dc.b	nRst, $04, pESnare, pESnare, pESnare, pAKick, $08

Nepu_DimTrip_PWM1_Loop1:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop1, Target
	dc.b	$04, pASnare, pOpenHH, $08, pAKick

Nepu_DimTrip_PWM1_Loop2:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop2, Target
	dc.b	$04, pASnare, pAKick, $08, pASnare, $04, pAKick, $08
	dc.b	pASnare, pAKick, $04, pOpenHH, $08, pASnare, $04, pAKick
	dc.b	pEKick, $02, pAKick, pASnare, $04, pTomHi, pTomMid, pAKick
	dc.b	$08, pASnare, $04, pAKick, pAKick, pASnare, pAKick, pASnare
	dc.b	pAKick, $08, $04, pASnare, pAKick, pEKick, pEKick, pEKick
	dc.b	pAKick, $08

Nepu_DimTrip_PWM1_Loop3:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop3, Target
	dc.b	$04, pASnare, pOpenHH, $08, pAKick

Nepu_DimTrip_PWM1_Loop4:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop4, Target
	dc.b	$04, pASnare, pCrashCymb, $08, pASnare, $04, pAKick, $08
	dc.b	pASnare, pAKick, $04, pCrashCymb, $08, pASnare, $04, pAKick
	dc.b	pEKick, $02, pAKick, pASnare, $04, pTomHi, pTomMid, pOpenHH
	dc.b	$08, pASnare, $04, pAKick, pAKick, pASnare, pAKick, pASnare
	dc.b	pAKick, $08, $04, pASnare

Nepu_DimTrip_PWM1_Jump1:
	dc.b	pAKick, $04, pESnare, pESnare, pESnare, pCrashCymb, $0C, pOpenHH
	dc.b	pAKick, $08, $10, $02, pEKick, pAKick, $04, pCrashCymb
	dc.b	$0C, pAKick, $04, pClosedHH, pAKick, pClosedHH, pClosedHH, pClosedHH
	dc.b	pAKick, pClosedHH, pAKick, pClosedHH, $02, $02, $04, $04
	dc.b	pAKick, pClosedHH, pClosedHH

Nepu_DimTrip_PWM1_Loop5:
	dc.b	pClosedHH, pAKick
	smpsLoop		$00, $05, Nepu_DimTrip_PWM1_Loop5, Target
	dc.b	pClosedHH, $02, $02, pAKick, $04, pClosedHH, pAKick, pClosedHH
	dc.b	pOpenHH, pOpenHH, pClosedHH, pClosedHH, pAKick, pClosedHH, pClosedHH, pClosedHH
	dc.b	pAKick, pClosedHH, pAKick, pClosedHH, pAKick, pClosedHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pClosedHH, pAKick, $08, $08, $04, pESnare, $02
	dc.b	pASnare, pTomHi, pTomMid, pTomLower, $04, pAKick, pAKick, pOpenHH
	dc.b	$08, pAKick, $04, $04, pCrashCymb, pESnare, $02, pASnare
	dc.b	pOpenHH, $08, pASnare

Nepu_DimTrip_PWM1_Loop6:
	dc.b	pAKick, $04, $04, pASnare, $08
	smpsLoop		$00, $04, Nepu_DimTrip_PWM1_Loop6, Target
	dc.b	pAKick, $04, $04, pASnare, pAKick, $08, $04, pASnare
	dc.b	pAKick, pESnare, pESnare, $08, pOpenHH, pAKick, $04, pASnare
	dc.b	$08, pAKick, $04, $04, pASnare, pOpenHH, $08, pAKick
	dc.b	$04, pASnare, $08, pAKick, $04, $04, pASnare, pAKick
	dc.b	$08, $04, pASnare, $08, pAKick, $04, $04, pASnare
	dc.b	pAKick, pOpenHH, pAKick, pAKick, pASnare, pAKick, pAKick, pASnare
	dc.b	pAKick, pOpenHH, pAKick, pCrashCymb, pAKick, pASnare, pTomHi, pTomMid
	dc.b	pTomLow, $08, pAKick, $04, pOpenHH, $08, pESnare, $04
	dc.b	$04, $04, pOpenHH, $08, pAKick, $04, pASnare, $08
	dc.b	pAKick, $04, $04, pASnare, pSplashCymb, $08, pAKick, $04
	dc.b	pASnare, $08, pAKick, $04, $04, pASnare, pESnare, $02
	dc.b	pASnare, pOpenHH, $0C, pAKick, $04, pASnare, $0C, pAKick
	dc.b	$08, pASnare, $04, pAKick, pAKick, pOpenHH, pAKick, pASnare
	dc.b	pAKick, $08, $04, pASnare, pAKick, pASnare, pAKick, pASnare
	dc.b	pAKick, pESnare, pESnare, pESnare, $08, pASnare, $04, pAKick
	dc.b	$08, $08, $04

Nepu_DimTrip_PWM1_Loop7:
	dc.b	pASnare, $08, pAKick, $04, $04, pASnare, pAKick, $08
	dc.b	$04, pASnare, $08, pAKick, $04, $04, pASnare, pOpenHH
	dc.b	$08, pAKick, $04, pASnare, $08, pAKick, $04, $04
	dc.b	pASnare, pCrashCymb, $08, pAKick, $04
	smpsLoop		$00, $02, Nepu_DimTrip_PWM1_Loop7, Target
	dc.b	pASnare, $08, pAKick, $04, $04, pASnare, pCrashCymb, $08
	dc.b	pAKick, $04, pASnare, pAKick, pESnare, pESnare, pESnare

Nepu_DimTrip_PWM1_Loo$8:
	dc.b	pAKick, $08, $04, pASnare, $08, pAKick, $04, $04
	dc.b	pASnare
	smpsLoop		$00, $02, Nepu_DimTrip_PWM1_Loo$8, Target
	dc.b	pCrashCymb, $08, pAKick, $04, pASnare, $08, pAKick, $04
	dc.b	$04, pASnare, pCrashCymb, $08, pAKick, $04, pASnare, $08
	dc.b	pAKick, $04, pESnare, $02, $02

Nepu_DimTrip_PWM1_Loo$9:
	dc.b	pASnare, $04, pAKick, $08, $04, pASnare, $08, $04
	dc.b	pEKick, $02, pAKick
	smpsLoop		$00, $02, Nepu_DimTrip_PWM1_Loo$9, Target
	dc.b	pASnare, $04

Nepu_DimTrip_PWM1_Loop10:
	dc.b	pAKick, pEKick, $02
	smpsLoop		$00, $04, Nepu_DimTrip_PWM1_Loop10, Target
	dc.b	pAKick, pASnare, pAKick, pEKick, pAKick, pASnare, $04, pCrashCymb
	dc.b	$20, $08, pAKick

Nepu_DimTrip_PWM1_Loop11:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop11, Target
	dc.b	$04, pASnare, pAKick, $08

Nepu_DimTrip_PWM1_Loop12:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop12, Target
	dc.b	$04, pASnare, pOpenHH, $08, pASnare, $04, pAKick, $08
	dc.b	pASnare, pAKick, $04, $08, pASnare, $04, pAKick, pEKick
	dc.b	$02, pAKick, pASnare, $04, pTomHi, pTomMid, pOpenHH, $08
	dc.b	pASnare, $04, pAKick, pAKick, pASnare, pAKick, pASnare, pOpenHH
	dc.b	$08, pAKick, $04, pASnare, pAKick, pEKick, pEKick, pEKick
	dc.b	pAKick, $08

Nepu_DimTrip_PWM1_Loop13:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop13, Target
	dc.b	$04, pASnare, pCrashCymb, $08, pAKick

Nepu_DimTrip_PWM1_Loop14:
	dc.b	$04, pASnare, $08, pAKick, $04
	smpsLoop		$00, $03, Nepu_DimTrip_PWM1_Loop14, Target
	dc.b	$04, pASnare, pAKick, $08, pASnare, $04, pAKick, $08
	dc.b	pASnare, pAKick, $04, $08, pASnare, $04, pAKick, pEKick
	dc.b	$02, pAKick, pASnare, $04, pTomHi, pTomMid, pOpenHH, $08
	dc.b	pASnare, $04, pAKick, pAKick, pASnare, pAKick, pASnare, pOpenHH
	dc.b	$08, pAKick
	smpsJump		Nepu_DimTrip_PWM1_Jump1, Target