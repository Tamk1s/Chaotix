SH_SystemMenu_PWM1:
	smpsPan		panCenter
	dc.b	pRideBell, $02

SH_SystemMenu_PWM1_Loop1:
	dc.b	pEHiHat, $03, $03, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop1, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi, pRideBell
	smpsLoop		$01, $0F, SH_SystemMenu_PWM1_Loop1, Target

SH_SystemMenu_PWM1_Loop2:
	dc.b	pEHiHat, pEHiHat, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop2, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi

SH_SystemMenu_PWM1_Loop3:
	dc.b	pClosedHH, $06, pOpenHH, nRst, pOpenHH, pClosedHH, pOpenHH, pClosedHH
	dc.b	pOpenHH
	smpsLoop		$00, $04, SH_SystemMenu_PWM1_Loop3, Target

SH_SystemMenu_PWM1_Loop4:
	dc.b	pRideBell, $03, pEHiHat, pEHiHat
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop4, Target
	dc.b	pRideBell, pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi
	smpsLoop		$01, $06, SH_SystemMenu_PWM1_Loop4, Target
	dc.b	pRideBell, $01

SH_SystemMenu_PWM1_Jump1:
	dc.b	nRst, $02

SH_SystemMenu_PWM1_Loop5:
	dc.b	pEHiHat, $03, $03, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop5, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi, pRideBell
	smpsLoop		$01, $0F, SH_SystemMenu_PWM1_Loop5, Target

SH_SystemMenu_PWM1_Loop6:
	dc.b	pEHiHat, pEHiHat, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop6, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi, pRideBell, $01
	smpsJump		SH_SystemMenu_PWM1_Jump1, Target