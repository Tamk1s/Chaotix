;SOVA_SA_PWM2:
	dc.b	nRst, $10, pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06, pAKick
	dc.b	$02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06

SOVA_SA_PWM2_Loop1:
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop1, Target
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $06, pClosedHH, $02, nRst, pOpenHH
	dc.b	nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst, $06, pAKick
	dc.b	$02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $06, pClosedHH, $02, nRst, pBongoLo
	dc.b	nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06, pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, nRst, $02, pSplashCymb, nRst, $1E

SOVA_SA_PWM2_Jump1:
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, pOpenHH, nRst, pClosedHH, nRst, pBongoLo
	dc.b	nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst
	dc.b	pClosedHH, nRst, $06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06, pClosedHH, $02, nRst
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH

SOVA_SA_PWM2_Loop2:
	dc.b	nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop2, Target
	dc.b	nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pClosedHH, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC

SOVA_SA_PWM2_Loop3:
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop3, Target
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst, pClosedHH, nRst
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, nRst, $02, pCrashCymb, nRst, $1E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B

SOVA_SA_PWM2_Loop4:
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop4, Target
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06, pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pBongoLo, nRst, pBongoLo, nRst, pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B

SOVA_SA_PWM2_Loop5:
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pBongoLo, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop5, Target
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst
	smpsAlterVol		$0B

SOVA_SA_PWM2_Loop6:
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM2_Loop6, Target
	dc.b	pBongoLo, nRst, pClosedHH, nRst, $06
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, pTomHi, nRst
	smpsAlterVol		$FC
	dc.b	pAKick, nRst
	smpsAlterVol		$0F
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06, pAKick, $02, nRst
	smpsAlterVol		$04
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pBongoLo, nRst, pOpenHH, nRst
	smpsAlterVol		$F1
	dc.b	pAKick, nRst, $06
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, pOpenHH, nRst
	smpsAlterVol		$F5
	dc.b	pCrashCymb, nRst, $1E
	smpsJump		SOVA_SA_PWM2_Jump1, Target