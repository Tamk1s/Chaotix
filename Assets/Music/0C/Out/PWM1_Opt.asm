PWM1:
	smpsPan		panCenter
	dc.b	nRst, $01
	smpsPan		panCenter
	dc.b	$0B, $98, $04, $02

PWM1_Loop1:
	dc.b	$99, $06, $8A, $24, $8B, $04, $98, $02
	smpsLoop		$00, $02, PWM1_Loop1, Target
	dc.b	$99, $06, $8A, $24, $04, $06, $02, $06
	dc.b	$04, $06, $02, $06, $06, $04

PWM1_Loop4:
	dc.b	$8B, $02

PWM1_Jump1:
	dc.b	$8B, $04, $98

PWM1_Loop2:
	dc.b	$02, $99, $06, $98, $04
	smpsLoop		$00, $03, PWM1_Loop2, Target
	dc.b	$02, $99, $04, $8A, $02

PWM1_Loop3:
	dc.b	$98, $04, $02, $99, $06
	smpsLoop		$00, $03, PWM1_Loop3, Target
	dc.b	$98, $04, $02, $99, $04
	smpsLoop		$01, $07, PWM1_Loop4, Target
	dc.b	$8B, $02, $04, $98

PWM1_Loop5:
	dc.b	$02, $99, $06, $98, $04
	smpsLoop		$00, $03, PWM1_Loop5, Target

PWM1_Loop6:
	dc.b	$02, $99, $04, $8A, $02, $98, $04, $02
	dc.b	$99, $06, $98, $04
	smpsLoop		$00, $02, PWM1_Loop6, Target
	dc.b	$02, $8A, $04

PWM1_Loo$9:
	dc.b	$8B, $02, $04, $98

PWM1_Loop7:
	dc.b	$02, $99, $06, $98, $04
	smpsLoop		$00, $03, PWM1_Loop7, Target
	dc.b	$02, $99, $04, $8A, $02

PWM1_Loo$8:
	dc.b	$98, $04, $02, $99, $06
	smpsLoop		$00, $03, PWM1_Loo$8, Target
	dc.b	$98, $04, $02, $99, $04
	smpsLoop		$01, $04, PWM1_Loo$9, Target
	dc.b	$8B, $02

PWM1_Loop10:
	dc.b	$98, $04, $02, $99, $06
	smpsLoop		$00, $10, PWM1_Loop10, Target
	dc.b	$83, $30

PWM1_Loop11:
	dc.b	$98, $04, $02

PWM1_Loop13:
	dc.b	$99, $06
	smpsLoop		$00, $03, PWM1_Loop11, Target
	dc.b	$98, $04, $02, $99, $04, $8A, $02

PWM1_Loop12:
	dc.b	$98, $04, $02, $99, $06
	smpsLoop		$00, $03, PWM1_Loop12, Target
	dc.b	$98, $04, $02, $99, $04, $8B, $02, $04
	dc.b	$98, $02
	smpsLoop		$01, $03, PWM1_Loop13, Target

PWM1_Loop14:
	dc.b	$99, $06, $98, $04, $02
	smpsLoop		$00, $03, PWM1_Loop14, Target

PWM1_Loop15:
	dc.b	$99, $04, $8A, $02, $98, $04, $02, $99
	dc.b	$06, $98, $04, $02
	smpsLoop		$00, $02, PWM1_Loop15, Target
	dc.b	$8A, $04, $8B, $02
	smpsLoop		$02, $02, PWM1_Loop11, Target
	dc.b	$83, $01
	smpsJump		PWM1_Jump1, Target