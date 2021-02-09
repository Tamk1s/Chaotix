PWM2:
	dc.b	nRst, $0C, $8B, $98, $24, $0C, $24, $0C
	dc.b	$24, $8B, $30

PWM2_Jump1:
	dc.b	$83, $06

PWM2_Loop1:
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8A, $98
	smpsLoop		$00, $03, PWM2_Loop1, Target
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8A, $83

PWM2_Loop2:
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8A, $98
	smpsLoop		$00, $03, PWM2_Loop2, Target
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$04, $8A, $02, $8D, $06, $8A, $8D, $8B
	dc.b	$04, $8A, $02, $8D, $06, $8A, $04, $86
	dc.b	$02, $8D, $04, $95, $02

PWM2_Loop3:
	dc.b	$83, $06, $8D, $8A, $8D, $8B, $8D, $8A
	dc.b	$8B, $8B, $8D, $8A, $8D, $8B, $8D, $8A
	dc.b	$8A, $98, $8D, $8A, $8D, $8B, $8D, $8A
	dc.b	$8B, $8B, $8D, $8A, $8D, $8B, $8D, $8A
	dc.b	$8A
	smpsLoop		$00, $02, PWM2_Loop3, Target

PWM2_Loop4:
	dc.b	$8B, $8D
	smpsLoop		$00, $0B, PWM2_Loop4, Target
	dc.b	$8B, $8D, $04, $8A, $02, $8B, $06, $8D
	dc.b	$8B, $8D, $8B, $8D, $8B, $8D, $36, $83
	dc.b	$06

PWM2_Loop5:
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8A, $98
	smpsLoop		$00, $03, PWM2_Loop5, Target
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$04, $8A, $02, $8D, $06, $8A, $8D, $8B
	dc.b	$04, $8A, $02, $8D, $06, $8A, $04, $86
	dc.b	$02, $8D, $04, $95, $02, $83, $06

PWM2_Loop6:
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8A, $98
	smpsLoop		$00, $03, PWM2_Loop6, Target
	dc.b	$8D, $8A, $8D, $8B, $8D, $8A, $8B, $8B
	dc.b	$04, $8A, $02, $8D, $06, $8A, $8D, $8B
	dc.b	$04, $8A, $02, $8D, $06, $8A, $04, $86
	dc.b	$02, $8D, $04, $95, $03
	smpsJump		PWM2_Jump1, Target