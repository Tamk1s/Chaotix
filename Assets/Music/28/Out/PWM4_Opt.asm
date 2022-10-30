Nepu_DimTrip_PWM4:
	dc.b	nRst

Nepu_DimTrip_PWM4_Loop1:
	dc.b	$40
	smpsLoop		$00, $08, Nepu_DimTrip_PWM4_Loop1, Target

Nepu_DimTrip_PWM4_Jump1:
	dc.b	nRst, $68, $68, $68, $68, $68, $68, pSplashCymb

Nepu_DimTrip_PWM4_Loop2:
	dc.b	$70, nRst
	smpsLoop		$00, $05, Nepu_DimTrip_PWM4_Loop2, Target
	dc.b	nRst
	smpsJump		Nepu_DimTrip_PWM4_Jump1, Target