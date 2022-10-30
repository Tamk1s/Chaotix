;SOVA_SA_PWM1:
	smpsPan		panCenter
	dc.b	nRst, $10, pClosedHH, $02, $02, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo

SOVA_SA_PWM1_Loop1:
	dc.b	nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH
	smpsLoop		$00, $02, SOVA_SA_PWM1_Loop1, Target
	dc.b	nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, pCrashCymb, $02, pTomHi, $01, nRst
	dc.b	$03, pTomHi, $01, nRst, pTomHi, nRst, $05

SOVA_SA_PWM1_Loop2:
	dc.b	pTomHi, $01, nRst, $03
	smpsLoop		$00, $03, SOVA_SA_PWM1_Loop2, Target
	dc.b	pTomHi, $01, nRst, pTomHi, nRst, pTomHi, nRst

SOVA_SA_PWM1_Jump1:
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, $02, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01
	smpsAlterVol		$FD
	dc.b	pAKick, $02
	smpsAlterVol		$03
	dc.b	pTomHi, $01, nRst, $03, pTomHi, $01, nRst, pTomHi
	dc.b	nRst, $05

SOVA_SA_PWM1_Loop3:
	dc.b	pTomHi, $01, nRst, $03
	smpsLoop		$00, $03, SOVA_SA_PWM1_Loop3, Target
	dc.b	pTomHi, $01, nRst, pTomHi, nRst, pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, $02, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$FD
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo

SOVA_SA_PWM1_Loop4:
	dc.b	pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsLoop		$00, $02, SOVA_SA_PWM1_Loop4, Target
	dc.b	pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, nRst
	smpsAlterVol		$0B
	dc.b	pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst, pClosedHH, pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol		$F5
	dc.b	pTomHi
	smpsAlterVol		$02
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F2
	dc.b	pAKick
	smpsAlterVol		$0E
	dc.b	pClosedHH, pBongoLo, pBongoLo
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH, pBongoLo, nRst, pClosedHH, pClosedHH, pOpenHH, nRst
	smpsAlterVol		$F7
	dc.b	pClap
	smpsAlterVol		$09
	dc.b	pClosedHH
	smpsAlterVol		$F5
	dc.b	pTomHi, $01, $01, $01, $01
	smpsAlterVol		$FD
	dc.b	pAKick, $02
	smpsAlterVol		$03
	dc.b	pTomHi, $01, nRst, $03, pTomHi, $01, nRst, pTomHi
	dc.b	nRst, $05

SOVA_SA_PWM1_Loop5:
	dc.b	pTomHi, $01, nRst, $03
	smpsLoop		$00, $03, SOVA_SA_PWM1_Loop5, Target
	dc.b	pTomHi, $01, nRst, pTomHi, nRst, pTomHi
	smpsAlterNote	$00
	dc.b	nRst
	smpsJump		SOVA_SA_PWM1_Jump1, Target