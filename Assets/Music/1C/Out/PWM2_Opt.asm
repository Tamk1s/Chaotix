FFX_EA_PWM2:
	dc.b	pTomLow, $04, nRst, $08, pTomLow, $04, nRst, $08
	dc.b	pTomLow, $04, nRst, pTomHi, nRst, pTomHi, nRst
	smpsLoop		$00, $0B, FFX_EA_PWM2, Target

FFX_EA_PWM2_Loop2:
	dc.b	pTomLow, $0C, nRst, $08, pTomHi, $03, nRst, $05
	dc.b	pTomLowerer, $04, pTomLowerest, nRst, $0C
	smpsLoop		$00, $08, FFX_EA_PWM2_Loop2, Target
	smpsAlterVol		$03
	dc.b	pTomLower

FFX_EA_PWM2_Loop3:
	dc.b	pTomLower, pTomLower, $08, $08, $08, $0C
	smpsLoop		$00, $04, FFX_EA_PWM2_Loop3, Target
	dc.b	$0C, $08, $08, $08
	smpsAlterVol		$FD

FFX_EA_PWM2_Loop4:
	dc.b	pTomLow, $0C, nRst, $08, pTomHi, $03, nRst, $05
	dc.b	pTomLowerer, $04, pTomLowerest, nRst, $0C
	smpsLoop		$00, $04, FFX_EA_PWM2_Loop4, Target
	smpsAlterVol		$03
	dc.b	pTomMid, pTomMid, pTomMid, nRst, pTomMid, pTomMid, pTomMid, nRst
	dc.b	$04
	smpsAlterVol		$FD
	;!@ dc.b	nF2, nRst, $12
	dc.b	nRst, nRst, $12
	smpsJump		FFX_EA_PWM2, Target