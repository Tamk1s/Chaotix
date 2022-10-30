;SOVA_SA_PWM3:
	dc.b	nRst, $10, pCrashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM3_Loop1:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $07, SOVA_SA_PWM3_Loop1, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F

SOVA_SA_PWM3_Loop2:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $03, SOVA_SA_PWM3_Loop2, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $01, nRst, $1F

SOVA_SA_PWM3_Jump1:
	dc.b	pCrashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM3_Loop3:
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $02, SOVA_SA_PWM3_Loop3, Target
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E, pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02

SOVA_SA_PWM3_Loop4:
	dc.b	nRst, $0E, pClosedHH, $02, nRst, $0E, pClosedHH, $02
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02
	smpsLoop		$00, $02, SOVA_SA_PWM3_Loop4, Target
	dc.b	nRst, $0E, pClosedHH, $02, nRst, $0E, pClosedHH, $02
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $06
	smpsAlterVol		$04
	dc.b	pSplashCymb, $02, nRst, $1E, pCrashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM3_Loop5:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $05, SOVA_SA_PWM3_Loop5, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02

SOVA_SA_PWM3_Loop6:
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E, pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02
	smpsLoop		$00, $02, SOVA_SA_PWM3_Loop6, Target
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02

SOVA_SA_PWM3_Loop7:
	dc.b	nRst, $0E, pClosedHH, $02
	smpsLoop		$00, $04, SOVA_SA_PWM3_Loop7, Target
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F

SOVA_SA_PWM3_Loo$8:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsLoop		$00, $03, SOVA_SA_PWM3_Loo$8, Target
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E, pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $06
	smpsAlterVol		$04
	dc.b	pSplashCymb, $02, nRst, $1E
	smpsJump		SOVA_SA_PWM3_Jump1, Target