Elegy_PWM4:
	smpsPan		panCenter

Elegy_PWM4_Loop1:
	dc.b	pOrchHitHi, $28, nRst
	smpsLoop		$00, $04, Elegy_PWM4_Loop1, Target

Elegy_PWM4_Jump1:
	smpsAlterVol	$10

Elegy_PWM4_Loop2:
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_PWM4_Loop2, Target
	dc.b	pOrchHitMed, $05, pOrchHitLo
	smpsAlterVol	$FF
	dc.b	pOrchHitMed, nRst, $03, pOrchHitLo, $05, nRst, $02, pOrchHitMed
	dc.b	$05, nRst, $14, pOrchHitMed, $05, nRst, $03, pOrchHitLo
	dc.b	$05, nRst, $02
	smpsAlterVol	$FF
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	dc.b	pOrchHitMed, $05, pOrchHitLo, pOrchHitMed, nRst, $03, pOrchHitLo, $05
	dc.b	nRst, $02, pOrchHitLower, $05, nRst, $14

Elegy_PWM4_Loop3:
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_PWM4_Loop3, Target
	dc.b	pOrchHitMed, $05, pOrchHitLo, pOrchHitMed, nRst, $03, pOrchHitLo, $05
	dc.b	nRst, $02, pOrchHitMed, $05, nRst, $14

Elegy_PWM4_Loop4:
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_PWM4_Loop4, Target
	dc.b	pOrchHitMed, $05, pOrchHitLo
	;!@ smpsAlterNote	$00
	dc.b	nRst

Elegy_PWM4_Loop5:
	dc.b	$55
	smpsLoop		$00, $08, Elegy_PWM4_Loop5, Target
	smpsAlterVol	$F2
	smpsJump		Elegy_PWM4_Jump1, Target