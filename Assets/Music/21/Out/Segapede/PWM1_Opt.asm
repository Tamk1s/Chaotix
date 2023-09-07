Segapede_PWM1:
	dc.b nRst, $04

Segapede_PWM1_Jump1:
	dc.b pOpenHH, $10, $14, $04, $08, $0C, $04, $10
	dc.b $18, $08, $08, $04, $04, $08, $08, $14
	dc.b $04, $04, $04, $0C, $04, $10, $14, $04
	dc.b $08, $04, $04, $04, $04, $10, $14, $04
	dc.b $08, $0C, $04, $10, $14, $04, $04, $04
	dc.b $04, $08, $04, $08, $08, $14, $04, $04
	dc.b $04, $0C, $04, $10, $14

Segapede_PWM1_Loop1:
	dc.b $04
	smpsLoop		$00, $07, Segapede_PWM1_Loop1, Target
	dc.b $10, $14, $04, $08, $0C, $04, $10, $18
	dc.b $08, $08, $04, $04, $08, $08, $14, $04
	dc.b $04, $04, $0C, $04, $10, $14

Segapede_PWM1_Loop2:
	dc.b $04
	smpsLoop		$00, $07, Segapede_PWM1_Loop2, Target
	dc.b $10, $14, $04, $08, $04, $08, $04, $08
	dc.b $08, $14, $04, $04, $04, $0C, $04, $10
	dc.b $14, $04, $04, $04, $08, $04, $04, $10
	dc.b $10

Segapede_PWM1_Loop3:
	dc.b $04
	smpsLoop		$00, $08, Segapede_PWM1_Loop3, Target
	dc.b $10, $14, $04, $08, $0C, $04, $10, $14
	dc.b $04, $04, $04, $04, $08, $04, $08, $08
	dc.b $14, $04, $04, $04, $0C, $04, $10, $0C
	dc.b $04, $08, $04, $04, $04, $04, $04, $04
	smpsJump		Segapede_PWM1_Jump1, Target