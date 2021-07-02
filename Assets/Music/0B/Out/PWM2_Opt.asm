BMODC_FrontEnd_PWM2:
	dc.b	pESnare, $03, nRst, $0F
	smpsAlterVol		$F0
	dc.b	pEKick, $03, $03, nRst, pEKick, nRst, pClickHi, pEKick
	dc.b	nRst, pClap, nRst, $1B, pFingSnap, $03, $03, nRst
	dc.b	$06, pEKick, $03, nRst, $09
	smpsAlterVol		$01

BMODC_FrontEnd_PWM2_Loop1:
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH
	smpsAlterVol		$F9
	dc.b	pASnare, $06
	smpsAlterVol		$07
	dc.b	pClosedHH, $03
	smpsAlterVol		$06
	dc.b	pOpenHH, $06
	smpsAlterVol		$F5
	dc.b	pClap, nRst, $03
	smpsAlterVol		$FE
	dc.b	pASnare
	smpsLoop		$00, $08, BMODC_FrontEnd_PWM2_Loop1, Target
	dc.b	nRst, $24
	smpsAlterVol		$FE
	dc.b	pClosedHH, $03, nRst, $09
	smpsAlterVol		$02

BMODC_FrontEnd_PWM2_Loop2:
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH
	smpsAlterVol		$F9
	dc.b	pASnare, $06
	smpsAlterVol		$07
	dc.b	pClosedHH, $03
	smpsAlterVol		$06
	dc.b	pOpenHH, $06
	smpsAlterVol		$F5
	dc.b	pClap, nRst, $03
	smpsAlterVol		$FE
	dc.b	pASnare
	smpsLoop		$00, $02, BMODC_FrontEnd_PWM2_Loop2, Target

BMODC_FrontEnd_PWM2_Loop3:
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH
	smpsAlterVol		$F9
	dc.b	pASnare, $06
	smpsAlterVol		$07
	dc.b	pClosedHH, $03
	smpsAlterVol		$06
	dc.b	pOpenHH, $06
	smpsAlterVol		$F5
	dc.b	pClap, nRst, $03
	smpsAlterVol		$FE
	dc.b	pASnare
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM2_Loop3, Target
	smpsAlterVol		$07
	dc.b	pClosedHH, pClosedHH, nRst, $06
	smpsAlterVol		$FB
	dc.b	pClap
	smpsAlterVol		$01
	dc.b	pESnare, $03
	smpsAlterVol		$FD
	dc.b	pASnare
	smpsAlterVol		$17
	dc.b	$03
	smpsAlterVol		$F0
	dc.b	pClosedHH
	smpsAlterVol		$FC
	dc.b	pESnare, nRst
	smpsAlterVol		$FB
	dc.b	pClap, $06
	smpsAlterVol		$FE
	dc.b	pASnare, $03
	smpsAlterVol		$04
	dc.b	pESnare
	smpsJump		BMODC_FrontEnd_PWM2_Loop3, Target