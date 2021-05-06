SH_SystemMenu_PWM2:
	dc.b	pCowbell, $02

SH_SystemMenu_PWM2_Loop1:
	dc.b	$03, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	smpsLoop		$00, $0F, SH_SystemMenu_PWM2_Loop1, Target
	dc.b	pCowbell, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat

SH_SystemMenu_PWM2_Loop3:
	dc.b	pAKick, pEHiHat, pCowbell

SH_SystemMenu_PWM2_Loop2:
	dc.b	pCowbell, pAKick, $06, pCowbell, $03
	smpsLoop		$00, $03, SH_SystemMenu_PWM2_Loop2, Target
	dc.b	$03, pAKick, pEHiHat, pCowbell, pCowbell, pClap, $06, pCowbell
	dc.b	$03, $03, pAKick, $06, pCowbell, $03, $03, pAKick
	dc.b	$06, pCowbell, $03, $03
	smpsLoop		$01, $02, SH_SystemMenu_PWM2_Loop3, Target
	dc.b	$03

SH_SystemMenu_PWM2_Loop4:
	dc.b	$03, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	smpsLoop		$00, $05, SH_SystemMenu_PWM2_Loop4, Target
	dc.b	pCowbell, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	dc.b	$01

SH_SystemMenu_PWM2_Jump1:
	dc.b	nRst, $02, pCowbell

SH_SystemMenu_PWM2_Loop5:
	dc.b	$03, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	smpsLoop		$00, $09, SH_SystemMenu_PWM2_Loop5, Target
	dc.b	pCowbell, pFingSnap, pClickHi, pCowbell, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pCowbell

SH_SystemMenu_PWM2_Loop6:
	dc.b	pCowbell, pBongoHi, pEHiHat, pCowbell, pCowbell, pFingSnap, pClickHi, pESnare
	dc.b	pCowbell, pFingSnap, pClickHi, pCowbell, pBongoHi, pFingSnap, pClickHi, pESnare
	smpsLoop		$00, $06, SH_SystemMenu_PWM2_Loop6, Target
	dc.b	pCowbell, pBongoHi, pEHiHat, pCowbell, $01
	smpsJump		SH_SystemMenu_PWM2_Jump1, Target