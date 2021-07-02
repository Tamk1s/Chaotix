BMODC_FrontEnd_PWM1:
	smpsPan		panCenter
	dc.b	pCrashCymb, $03
	smpsAlterVol		$02
	dc.b	pESnare
	smpsAlterVol		$FD
	dc.b	$03
	smpsAlterVol		$05
	dc.b	$03
	smpsAlterVol		$F7
	dc.b	$03
	smpsAlterVol		$07
	dc.b	pEKick
	smpsAlterVol		$F8
	dc.b	pFingSnap, pFingSnap, pEKick, pFingSnap, pESnare, pEKick, pTomLow, nRst
	dc.b	pClickLo, nRst, pEKick, pEKick, pEKick, pEKick, pESnare, pESnare
	dc.b	pEKick, pEKick, pEKick, pEKick
	smpsAlterVol		$05
	dc.b	pESnare, nRst
	smpsAlterVol		$FB
	dc.b	pTomLow, nRst
	smpsAlterVol		$FC
	dc.b	pEKick, nRst
	smpsAlterVol		$0C

BMODC_FrontEnd_PWM1_Loop1:
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03
	smpsAlterVol		$04
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM1_Loop1, Target
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03, nRst, $24
	smpsAlterVol		$FB
	dc.b	pCrashCymb, $03, nRst, $09
	smpsAlterVol		$09

BMODC_FrontEnd_PWM1_Loop2:
	dc.b	pClosedHH, $03, $03
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03
	smpsAlterVol		$04
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03

BMODC_FrontEnd_PWM1_Jump1:
	smpsAlterVol		$04
	smpsLoop		$00, $04, BMODC_FrontEnd_PWM1_Loop2, Target
	dc.b	pClosedHH, pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$FB
	dc.b	nEb2, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $06
	smpsAlterVol		$01
	dc.b	pESnare, $03, $03
	smpsAlterVol		$FD
	dc.b	nB1, $06
	smpsAlterVol		$03
	dc.b	pESnare, $03
	smpsAlterVol		$04
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	nB1, $06, pFingSnap, $03
	smpsAlterVol		$07
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	nB1, $06
	smpsAlterVol		$04
	dc.b	nD2, $03
	smpsAlterVol		$FC
	dc.b	$03
	smpsAlterVol		$02
	dc.b	pClosedHH, $06
	smpsAlterVol		$FE
	dc.b	pESnare, $03
	smpsAlterVol		$07
	dc.b	pClosedHH
	smpsAlterVol		$FC
	smpsJump		BMODC_FrontEnd_PWM1_Jump1, Target