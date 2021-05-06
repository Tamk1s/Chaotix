HDNR1S_PWM3:
	dc.b	nRst, $03, pAKick, $02
	smpsAlterVol		$0A
	dc.b	pCrashCymb, $01
	smpsAlterVol		$F6
	dc.b	pAKick, $0C, nRst, $1E
	smpsAlterVol		$11
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$FE
	dc.b	pCrashCymb, nRst, $01
	smpsAlterVol		$F1
	dc.b	pAKick, $0C
	smpsAlterVol		$11
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $1A

HDNR1S_PWM3_Loop1:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $07, HDNR1S_PWM3_Loop1, Target
	dc.b	pClosedHH, $01, nRst, $1A, pClosedHH, $01, nRst, $02
	smpsAlterVol		$FE
	dc.b	pCrashCymb, nRst, $01
	smpsAlterVol		$02
	dc.b	pClosedHH

HDNR1S_PWM3_Loop2:
	dc.b	nRst, $02, pClosedHH, $01
	smpsLoop		$00, $05, HDNR1S_PWM3_Loop2, Target
	dc.b	nRst, $0E, pClosedHH, $01, nRst, $02, pClosedHH, $01
	dc.b	nRst, $0E
	smpsAlterVol		$EF
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pASnare, nRst
	smpsAlterVol		$FA

HDNR1S_PWM3_Loop3:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0A, HDNR1S_PWM3_Loop3, Target
	dc.b	pAKick
	smpsAlterVol		$07

HDNR1S_PWM3_Loop4:
	dc.b	pASnare, $01, nRst, nRst, $04, pASnare, $01, nRst
	dc.b	$02
	smpsLoop		$00, $02, HDNR1S_PWM3_Loop4, Target
	dc.b	pASnare, $01, nRst, nRst, pASnare, nRst, nRst, pASnare
	dc.b	nRst, $08, pASnare, $01, nRst, $02

HDNR1S_PWM3_Jump1:
	dc.b	nRst, $0C, pCrashCymb, nRst, $06
	smpsAlterVol		$F9

HDNR1S_PWM3_Loop5:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0C, HDNR1S_PWM3_Loop5, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07
	dc.b	pCrashCymb, $0C, nRst, $06
	smpsAlterVol		$F9

HDNR1S_PWM3_Loop6:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0C, HDNR1S_PWM3_Loop6, Target
	dc.b	pAKick, nRst, $18, pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare, nRst
	smpsAlterVol		$FA

HDNR1S_PWM3_Loop7:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0A, HDNR1S_PWM3_Loop7, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07
	dc.b	pCrashCymb, $09
	smpsAlterVol		$FC
	dc.b	pAKick, $03, nRst, $06
	smpsAlterVol		$0E
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $05
	smpsAlterVol		$F6
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst
	smpsAlterVol		$F0

HDNR1S_PWM3_Loop8:
	dc.b	pAKick, nRst
	smpsLoop		$00, $1C, HDNR1S_PWM3_Loop8, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07
	dc.b	pCrashCymb, $0C, nRst, $06
	smpsAlterVol		$F9

HDNR1S_PWM3_Loop9:
	dc.b	pAKick, nRst
	smpsLoop		$00, $0C, HDNR1S_PWM3_Loop9, Target
	dc.b	pAKick, nRst, $12
	smpsAlterVol		$11
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $05
	smpsAlterVol		$F6
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst
	smpsAlterVol		$F0

HDNR1S_PWM3_Loop10:
	dc.b	pAKick, nRst
	smpsLoop		$00, $2A, HDNR1S_PWM3_Loop10, Target
	dc.b	pAKick, nRst, $18
	smpsAlterVol		$07

HDNR1S_PWM3_Loop11:
	dc.b	pESnare, $01, nRst, $08, pESnare, $01, nRst, $0E
	smpsLoop		$00, $02, HDNR1S_PWM3_Loop11, Target
	dc.b	pSplashCymb, $0C
	smpsJump		HDNR1S_PWM3_Jump1, Target