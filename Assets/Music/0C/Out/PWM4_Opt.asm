PWM4_DAC:
	dc.b	nRst, $7F, $4D

PWM4_Jump1:
	dc.b	nRst, $7F, $7F, $7F, $7F, $7F, $7F, $87
	dc.b	nRst, nRst, nRst, $75, $8A, $18, $18, $18
	dc.b	$06, $7F, nRst, nRst, nRst, $33, $87, $7F
	dc.b	nRst, nRst, nRst, $03, $87, $07
	smpsJump		PWM4_Jump1, Target