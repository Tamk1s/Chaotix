SA3_Factory_PWM1:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01

SA3_Factory_PWM1_Loop1:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $02, SA3_Factory_PWM1_Loop1, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $55
	smpsAlterVol		$F5
	dc.b	pASnare, $06, nRst

SA3_Factory_PWM1_Loop2:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $08, SA3_Factory_PWM1_Loop2, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01

SA3_Factory_PWM1_Loop3:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $03, SA3_Factory_PWM1_Loop3, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01, pEKick, $02, nRst, $04
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $01
	dc.b	pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $25
	smpsAlterVol		$F5
	dc.b	pASnare, $06, nRst

SA3_Factory_PWM1_Loop4:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01, pEKick, $02, nRst, $04
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $01
	dc.b	pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $05, SA3_Factory_PWM1_Loop4, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01, pEKick, $02, nRst, $04
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $01
	dc.b	pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $0D
	smpsAlterVol		$F5
	smpsJump		SA3_Factory_PWM1, Target