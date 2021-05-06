SH_SystemMenu_PWM4:
	dc.b	pAKick, $02

SH_SystemMenu_PWM3_Loop1:
	dc.b	pBongoHi, $03, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, $03, pEHiHat, pRideBell
	dc.b	pCowbell, pAKick
	smpsLoop		$00, $0F, SH_SystemMenu_PWM3_Loop1, Target
	dc.b	pBongoHi, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell, pAKick
	dc.b	$06, pCowbell, $03, $03, $03, pEHiHat, pRideBell, pCowbell

SH_SystemMenu_PWM3_Loop2:
	dc.b	pCowbell, pBongoHi, pFingSnap, pClickHi, pCowbell, pEHiHat, pBongoHi, pClickHi
	dc.b	pCowbell, pEHiHat, pFingSnap, pClickHi, pCowbell, pEHiHat, pRideBell, pEHiHat
	dc.b	pCowbell, pBongoHi, pFingSnap, pClickHi, pAKick, $06, pBongoHi, $03
	dc.b	pClickHi, pCowbell, pEHiHat, pFingSnap, pClickHi, pCowbell, pEHiHat, pRideBell
	dc.b	pEHiHat
	smpsLoop		$00, $02, SH_SystemMenu_PWM3_Loop2, Target

SH_SystemMenu_PWM3_Loop3:
	dc.b	pAKick, pBongoHi, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, $03, pEHiHat, pRideBell
	dc.b	pCowbell
	smpsLoop		$00, $06, SH_SystemMenu_PWM3_Loop3, Target
	dc.b	pAKick, $01

SH_SystemMenu_PWM3_Jump1:
	dc.b	nRst, $02

SH_SystemMenu_PWM3_Loop4:
	dc.b	pBongoHi, $03, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, $03, pEHiHat, pRideBell
	dc.b	pCowbell, pAKick
	smpsLoop		$00, $09, SH_SystemMenu_PWM3_Loop4, Target
	dc.b	pBongoHi, pCowbell, pCowbell, pAKick, $06, pBongoHi, $03, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, pAKick, $06

SH_SystemMenu_PWM3_Loop5:
	dc.b	pRideBell, $03, pCowbell, pAKick, pBongoHi, pCowbell, pCowbell, pCowbell
	dc.b	pEHiHat, pBongoHi, pCowbell, pAKick, $06, pCowbell, $03, $03
	dc.b	$03, pEHiHat
	smpsLoop		$00, $06, SH_SystemMenu_PWM3_Loop5, Target
	dc.b	pRideBell, pCowbell, pAKick, $01
	smpsJump		SH_SystemMenu_PWM3_Jump1, Target