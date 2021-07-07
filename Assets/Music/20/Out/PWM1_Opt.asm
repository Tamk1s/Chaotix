FF1_Victory_PWM1:
	smpsPan		panCenter
	dc.b	pASnare, $04, $04, $04, $02, nRst, $0A, pASnare
	dc.b	$03, nRst, $05, pASnare, $02, $02, $04, $04
	dc.b	$04, $03, nRst, $0F
	smpsAlterVol		$18
	dc.b	pASnare, $02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$F9
	dc.b	$02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$03
	smpsAlterVol		$05
	dc.b	$03
	smpsAlterVol		$10
	dc.b	$03
	smpsAlterVol		$F3
	dc.b	$03
	smpsAlterVol		$F9
	dc.b	$03
	smpsAlterVol		$0C
	dc.b	$03
	smpsAlterVol		$ED
	dc.b	pEKick
	smpsStop