HDNR1S_PWM2:
	dc.b	pAKick, $02, $01
	smpsAlterVol		$0F
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F1
	dc.b	pAKick, $01
	smpsAlterVol		$03
	dc.b	pESnare, nRst, $0B
	smpsAlterVol		$FD
	dc.b	pAKick, $0C
	smpsAlterVol		$11

HDNR1S_PWM2_Loop1:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $04, HDNR1S_PWM2_Loop1, Target
	smpsAlterVol		$EF
	dc.b	pAKick, $06
	smpsAlterVol		$1B
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	pClosedHH, nRst
	smpsAlterVol		$F9
	dc.b	pCrashCymb
	smpsAlterVol		$FD
	dc.b	$12
	smpsAlterVol		$0A

HDNR1S_PWM2_Loop2:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $08, HDNR1S_PWM2_Loop2, Target
	smpsAlterVol		$0A
	dc.b	pCrashCymb
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$12
	smpsAlterVol		$0A

HDNR1S_PWM2_Loop3:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $08, HDNR1S_PWM2_Loop3, Target
	smpsAlterVol		$0A
	dc.b	pCrashCymb
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	pClosedHH, nRst
	smpsAlterVol		$F9
	dc.b	pCrashCymb
	smpsAlterVol		$F6
	dc.b	pAKick, $06, $06, $06
	smpsAlterVol		$11

HDNR1S_PWM2_Loop4:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $04, HDNR1S_PWM2_Loop4, Target
	smpsAlterVol		$EF
	dc.b	pAKick, $06
	smpsAlterVol		$07
	dc.b	pCrashCymb, $0C, $0C, nRst, $03

HDNR1S_PWM2_Loop5:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$04
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$FC
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$06
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$FA
	smpsLoop		$00, $05, HDNR1S_PWM2_Loop5, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$04
	dc.b	pFingSnap, $06
	smpsAlterVol		$FC
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$09
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$F7
	dc.b	pAKick, $06, $03, nRst, $02, pAKick, $03, nRst
	dc.b	$01, pAKick, $03

HDNR1S_PWM2_Jump1:
	dc.b	nRst, $0C, pSplashCymb, nRst, $03

HDNR1S_PWM2_Loop6:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0C, HDNR1S_PWM2_Loop6, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$04
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$FC
	dc.b	pAKick, $06
	smpsAlterVol		$04
	dc.b	pSplashCymb, $0C, nRst, $03

HDNR1S_PWM2_Loop7:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0C, HDNR1S_PWM2_Loop7, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$04
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$FC
	dc.b	pAKick, $06
	smpsAlterVol		$04
	dc.b	pCrashCymb, $0C, nRst, $03

HDNR1S_PWM2_Loop8:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0A, HDNR1S_PWM2_Loop8, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, pAKick, nRst, $02
	smpsAlterVol		$04
	dc.b	$01, pESnare, nRst, $02
	smpsAlterVol		$FC
	dc.b	pAKick, $06
	smpsAlterVol		$FD
	dc.b	$03, nRst, $02
	smpsAlterVol		$03
	dc.b	pAKick, $01, nRst, $03
	smpsAlterVol		$04
	dc.b	pESnare, $01, nRst, $08
	smpsAlterVol		$F9
	dc.b	pAKick, $06, $06
	smpsAlterVol		$06
	dc.b	pESnare, nRst, $03
	smpsAlterVol		$01

HDNR1S_PWM2_Loop9:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $1C, HDNR1S_PWM2_Loop9, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F7
	dc.b	pAKick, pAKick, pAKick, pAKick, pSplashCymb, $0C, nRst, $03

HDNR1S_PWM2_Loop10:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $0C, HDNR1S_PWM2_Loop10, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F3
	dc.b	pAKick, $03, nRst, $02, pAKick, $03, nRst, $01
	dc.b	pAKick, $03, nRst, $06
	smpsAlterVol		$FD
	dc.b	pAKick, pAKick
	smpsAlterVol		$06
	dc.b	pESnare, nRst, $03
	smpsAlterVol		$01

HDNR1S_PWM2_Loop11:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $03
	smpsAlterVol		$F7
	smpsLoop		$00, $2A, HDNR1S_PWM2_Loop11, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06
	smpsAlterVol		$F7
	dc.b	pAKick, pAKick, pAKick, pAKick, pCrashCymb, $0C, nRst, pCrashCymb
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	pAKick, $03, nRst, $02, pAKick, $03, nRst, $01
	dc.b	pAKick, $03
	smpsAlterVol		$04
	smpsJump		HDNR1S_PWM2_Jump1, Target