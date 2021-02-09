PWM3:
	dc.b	nRst, $7F, $4D

PWM3_Jump1:
	dc.b	$98, $2A, $8D

PWM3_Loop1:
	dc.b	$30
	smpsLoop		$00, $07, PWM3_Loop1, Target
	dc.b	$06, $98, $2A, $8D, $30, $30, $30, $30
	dc.b	$30, $30, $0C, $8A, $18, $06, $85, $99
	dc.b	$98, $2A, $8D, $30, $30, $30, $06, $98
	dc.b	$2A, $8D, $30, $30, $30, $30, $8B, $8B
	dc.b	$8B, $8B, $36, $2A, $8D, $30, $30, $30
	dc.b	$30, $30, $30, $0C, $8A, $18, $06, $85
	dc.b	$99, $8B, $2A, $8D, $30, $30, $30, $30
	dc.b	$30, $30, $0C, $8A, $18, $06, $85, $99
	dc.b	$07
	smpsJump		PWM3_Jump1, Target