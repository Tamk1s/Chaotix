HDNR1S_PWM1:
	smpsPan		panCenter
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$EF
	dc.b	pESnare, nRst, nRst
	smpsAlterVol		$0D
	dc.b	pClosedHH

HDNR1S_PWM1_Loop1:
	dc.b	nRst, $02, pClosedHH, $01
	smpsLoop		$00, $07, HDNR1S_PWM1_Loop1, Target
	dc.b	nRst, $02
	smpsAlterVol		$F0
	dc.b	pAKick, $0C
	smpsAlterVol		$10
	dc.b	pClosedHH, $01, nRst, $02, pClosedHH, $01, nRst, $02
	smpsAlterVol		$F0
	dc.b	pAKick, $06
	smpsAlterVol		$10

HDNR1S_PWM1_Loop2:
	dc.b	pClosedHH, $01, nRst, $02
	smpsLoop		$00, $04, HDNR1S_PWM1_Loop2, Target
	smpsAlterVol		$F0
	dc.b	pAKick, $0C, $0C, $06, $06, $0C, $0C, $0C
	dc.b	$0C
	smpsAlterVol		$07
	dc.b	pCrashCymb, $12
	smpsAlterVol		$F9
	dc.b	pAKick, $06, $06
	smpsAlterVol		$1A
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$F6
	dc.b	pAKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pSplashCymb, $0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop3:
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pASnare
	smpsAlterVol		$FB
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pASnare
	smpsAlterVol		$FA
	smpsLoop		$00, $05, HDNR1S_PWM1_Loop3, Target
	dc.b	pAKick
	smpsAlterVol		$05
	dc.b	pASnare
	smpsAlterVol		$0B
	dc.b	pESnare, $01, nRst, nRst, $04, pESnare, $01, nRst
	dc.b	$02, pESnare, $01, nRst, nRst
	smpsAlterVol		$F7
	dc.b	pAKick, $06
	smpsAlterVol		$09
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst, pESnare
	dc.b	nRst, $08, pESnare, $01, nRst, $02

HDNR1S_PWM1_Jump1:
	dc.b	nRst, $0C
	smpsAlterVol		$F0

HDNR1S_PWM1_Loop4:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0D, HDNR1S_PWM1_Loop4, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, nRst, $04, pESnare, $01, nRst, $02
	dc.b	pESnare, $01, nRst, nRst
	smpsAlterVol		$FB
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop5:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0D, HDNR1S_PWM1_Loop5, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, nRst, $04, pESnare, $01, nRst, $02
	dc.b	pESnare, $01, nRst, nRst
	smpsAlterVol		$FB
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst, pSplashCymb
	dc.b	$0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop6:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0A, HDNR1S_PWM1_Loop6, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, nRst, $04, pESnare, $01, nRst, $02
	dc.b	pESnare, $01, nRst, nRst
	smpsAlterVol		$FB
	dc.b	pAKick, $06
	smpsAlterVol		$05
	dc.b	pESnare, $01, nRst, nRst, pESnare, nRst, nRst, pESnare
	dc.b	nRst, $08, pCrashCymb, $09
	smpsAlterVol		$13
	dc.b	$02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop7:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $1C, HDNR1S_PWM1_Loop7, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01

HDNR1S_PWM1_Loop8:
	dc.b	nRst, nRst, pESnare
	smpsLoop		$00, $07, HDNR1S_PWM1_Loop8, Target
	dc.b	nRst, nRst
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop9:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $0D, HDNR1S_PWM1_Loop9, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01, nRst, $08, pESnare, $01, nRst, $08
	smpsAlterVol		$13
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$0C
	smpsAlterVol		$F9

HDNR1S_PWM1_Loop10:
	dc.b	pAKick, $06
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$FA
	smpsLoop		$00, $2A, HDNR1S_PWM1_Loop10, Target
	dc.b	pAKick
	smpsAlterVol		$06
	dc.b	pESnare
	smpsAlterVol		$01
	dc.b	$01

HDNR1S_PWM1_Loop11:
	dc.b	nRst, nRst, pESnare
	smpsLoop		$00, $07, HDNR1S_PWM1_Loop11, Target
	dc.b	nRst, nRst, pSplashCymb, $0C, nRst, pSplashCymb, nRst, pESnare
	dc.b	$01, nRst, $08, pESnare, $01, nRst, $02
	smpsAlterVol		$09
	smpsJump		HDNR1S_PWM1_Jump1, Target