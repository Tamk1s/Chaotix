SH_SystemMenu_PWM4:
	dc.b	nRst, $02

SH_SystemMenu_PWM4_Loop1:
	dc.b	pEHiHat, $09, pClap, $06, pOpenHH, $09, pCowbell, pClap
	dc.b	$06, pOpenHH, $09
	smpsLoop		$00, $0F, SH_SystemMenu_PWM4_Loop1, Target
	dc.b	pEHiHat, pClap, $06, pOpenHH, $09, pCowbell, pClap, $06
	dc.b	pOpenHH, pClap, $09, pESnare, $06, pEHiHat, $03, pRideBell
	dc.b	$09, pBongoHi, pClap, $03, pEHiHat, pFingSnap, $09, pEHiHat
	dc.b	pESnare, $03, pCowbell, pRideBell, $09, pBongoHi, $03, pClap
	dc.b	$09, pEHiHat, $03, pFingSnap, $06, pClap, pESnare, $09
	dc.b	pEHiHat, $03, pRideBell, $09, pBongoHi, $06, pBell, $03
	dc.b	pClap, pEHiHat, pFingSnap, $09, pEHiHat, $06, pClickLo, $03
	dc.b	pESnare, pCowbell, pRideBell, $06, pClickHi, $03, pBongoHi, pClap
	dc.b	$09, pEHiHat, $03, pFingSnap, $09

SH_SystemMenu_PWM4_Loop2:
	dc.b	pEHiHat, pClap, $06, pOpenHH, $09, pCowbell, pClap, $06
	dc.b	pOpenHH, $09
	smpsLoop		$00, $05, SH_SystemMenu_PWM4_Loop2, Target
	dc.b	pEHiHat, pClap, $06, pOpenHH, $09, pCowbell, pClap, $06
	dc.b	pOpenHH, $07

SH_SystemMenu_PWM4_Jump1:
	dc.b	nRst, $02

SH_SystemMenu_PWM4_Loop3:
	dc.b	pEHiHat, $09, pClap, $06, pOpenHH, $09, pCowbell, pClap
	dc.b	$06, pOpenHH, $09
	smpsLoop		$00, $09, SH_SystemMenu_PWM4_Loop3, Target
	dc.b	pEHiHat, $03, pESnare, $06, $06, pOpenHH, $09, pCowbell
	dc.b	$03, pESnare, $06, $03, pEHiHat

SH_SystemMenu_PWM4_Loop4:
	dc.b	pOpenHH, $09, pEHiHat, pClap, $06, pOpenHH, $09, pCowbell
	dc.b	pClap, $06
	smpsLoop		$00, $06, SH_SystemMenu_PWM4_Loop4, Target
	dc.b	pOpenHH, $07
	smpsJump		SH_SystemMenu_PWM4_Jump1, Target