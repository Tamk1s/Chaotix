;SOVA_SA_PWM4:
	dc.b	nRst, $10, pSplashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM4_Loop1:
	dc.b	pBongoLo, $02, nRst, $1E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $1E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $1E
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop1, Target
	dc.b	pBongoLo, $02, nRst, $36

SOVA_SA_PWM4_Jump1:
	smpsAlterVol		$F5
	dc.b	pSplashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM4_Loop2:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop2, Target

SOVA_SA_PWM4_Loop3:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop3, Target
	dc.b	pClosedHH, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E, pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $16
	smpsAlterVol		$04
	dc.b	pTomHi, $01, nRst, $1F, pSplashCymb, $02, nRst, $06
	smpsAlterVol		$0B

SOVA_SA_PWM4_Loop4:
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop4, Target
	dc.b	pBongoLo, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F

SOVA_SA_PWM4_Loop5:
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop5, Target
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$04
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02

SOVA_SA_PWM4_Loop6:
	dc.b	nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$0B
	dc.b	pBongoLo, $02
	smpsLoop		$00, $02, SOVA_SA_PWM4_Loop6, Target
	dc.b	nRst, $0E, pClosedHH, $02, nRst, $0E, pBongoLo, $02
	dc.b	nRst, $0E
	smpsAlterVol		$F1
	dc.b	pAKick, $02, nRst, $0E
	smpsAlterVol		$0F
	dc.b	pBongoLo, $02, nRst, $0E, pClosedHH, $02, nRst, $0E
	dc.b	pClosedHH, $02, nRst, $0E
	smpsAlterVol		$F5
	dc.b	pTomHi, $02, nRst, $0E
	smpsAlterVol		$FC
	dc.b	pAKick, $02, nRst, $16
	smpsAlterVol		$04
	dc.b	pTomHi, $01, nRst, $1F
	smpsAlterVol		$0B
	smpsJump		SOVA_SA_PWM4_Jump1, Target