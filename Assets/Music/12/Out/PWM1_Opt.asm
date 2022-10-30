SRB2_INV_PWM1:
	dc.b	nRst, $0C, pESnare

SRB2_INV_PWM1_Loop1:
	dc.b	$01, nRst, pESnare
	smpsLoop		$00, $04, SRB2_INV_PWM1_Loop1, Target

SRB2_INV_PWM1_Loop2:
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_PWM1_Loop2, Target
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, pESnare, $01, nRst
	dc.b	pESnare

SRB2_INV_PWM1_Loop3:
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $05, nRst, $01
	smpsLoop		$00, $03, SRB2_INV_PWM1_Loop3, Target
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $01, nRst, pESnare
	dc.b	pESnare, nRst, pESnare

SRB2_INV_PWM1_Loop4:
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $05, nRst
	dc.b	$03, pEKick, $01, $03, pESnare, $05, nRst, $01
	smpsLoop		$00, $02, SRB2_INV_PWM1_Loop4, Target
	dc.b	pEKick, $04, nRst, $01, pEKick, pESnare, $08, nRst
	dc.b	$01, pTomHi, nRst, pTomMid, pTomLow, $03, pESnare, nRst
	dc.b	pEKick, pEKick, pESnare, $05, nRst, $01, pEKick, $03
	dc.b	pESnare, $01, nRst, pESnare, pESnare, nRst, pESnare
	smpsStop