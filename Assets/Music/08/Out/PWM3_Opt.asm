MTPO_ThemeR_PWM3:
	smpsPan		panCenter
	dc.b	pASnare, $06, pEKick, pEKick, $03, pASnare, pASnare, pASnare
	dc.b	$09, pEKick, $06, $06, $06, pASnare, pEKick, pEKick
	dc.b	$03, pASnare, pASnare, pASnare, $09, pEKick, $06, $06
	dc.b	$03, pASnare, pASnare, $06, pEKick, pEKick, pEKick, pEKick
	dc.b	pEKick, pEKick, $03

MTPO_ThemeR_PWM3_Loop1:
	dc.b	$03, pASnare, pEKick, pEKick

MTPO_ThemeR_PWM3_Loop5:
	dc.b	$06, pASnare, $03, pEKick, $06
	smpsLoop		$00, $03, MTPO_ThemeR_PWM3_Loop1, Target
	dc.b	$03, pASnare, pEKick, pEKick, $06, pASnare, $03, pEKick
	dc.b	pASnare, $06, $06, pEKick

MTPO_ThemeR_PWM3_Loop2:
	dc.b	pASnare, $03, pEKick, $06, $03, pASnare, pEKick, pEKick
	dc.b	$06
	smpsLoop		$00, $03, MTPO_ThemeR_PWM3_Loop2, Target
	dc.b	pASnare, $03, pEKick, pASnare, pEKick, pASnare, $02, $01

MTPO_ThemeR_PWM3_Loop3:
	dc.b	pEKick, $03, $06, pASnare, $03, pEKick, $06, $03
	dc.b	pASnare
	smpsLoop		$00, $06, MTPO_ThemeR_PWM3_Loop3, Target
	dc.b	pEKick

MTPO_ThemeR_PWM3_Loop4:
	dc.b	pASnare, pEKick, pAKick
	smpsLoop		$00, $04, MTPO_ThemeR_PWM3_Loop4, Target
	dc.b	pASnare, pEKick, pASnare, $02, $01, pEKick, $03
	smpsLoop		$01, $02, MTPO_ThemeR_PWM3_Loop5, Target
	smpsJump		MTPO_ThemeR_PWM3, Target