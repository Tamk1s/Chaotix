BMODC_FrontEnd_PWM3:
	dc.b	nRst, $6C

BMODC_FrontEnd_PWM3_Loop1:
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH, nRst, $0C
	smpsAlterVol		$F9
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM3_Loop1, Target
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH, nRst, $24
	smpsAlterVol		$F7
	dc.b	pEKick, $03, nRst, $15
	smpsAlterVol		$02
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH, nRst, $0C

BMODC_FrontEnd_PWM3_Loop2:
	smpsAlterVol		$F9
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH

BMODC_FrontEnd_PWM3_Jump1:
	dc.b	nRst, $0C
	smpsLoop		$00, $07, BMODC_FrontEnd_PWM3_Loop2, Target
	smpsAlterVol		$F9
	dc.b	pClickLo, $06, nRst, $09, pASnare, $06, nRst, $03
	dc.b	pClickLo, $06, nRst, $03
	smpsAlterVol		$07
	dc.b	pClosedHH
	smpsAlterVol		$F9
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$07
	dc.b	pClosedHH, $03, nRst, pClosedHH, nRst
	smpsAlterVol		$05
	dc.b	pClosedHH
	smpsAlterVol		$F4
	dc.b	pASnare
	smpsAlterVol		$0D
	dc.b	pOpenHH, $06
	smpsAlterVol		$F3
	dc.b	pClickLo
	smpsAlterVol		$17
	dc.b	pOpenHH, $03
	smpsAlterVol		$F0
	smpsJump		BMODC_FrontEnd_PWM3_Jump1, Target