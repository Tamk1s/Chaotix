BMODC_FrontEnd_PWM4:
	smpsPan		panCenter
	dc.b	pESnare

BMODC_FrontEnd_PWM4_Loop1:
	dc.b	$02, $01
	smpsLoop		$00, $08, BMODC_FrontEnd_PWM4_Loop1, Target
	dc.b	nRst, $3C, pESnare

BMODC_FrontEnd_PWM4_Loop2:
	dc.b	$02, $01
	smpsLoop		$00, $04, BMODC_FrontEnd_PWM4_Loop2, Target
	dc.b	nRst, $0C
	smpsAlterVol		$F5

BMODC_FrontEnd_PWM4_Loop3:
	dc.b	pEKick, $06, nRst, $12
	smpsLoop		$00, $0D, BMODC_FrontEnd_PWM4_Loop3, Target
	dc.b	pEKick, $06, nRst
	smpsAlterVol		$05
	dc.b	pESnare

BMODC_FrontEnd_PWM4_Loop4:
	dc.b	$02, $01
	smpsLoop		$00, $1A, BMODC_FrontEnd_PWM4_Loop4, Target
	dc.b	nRst, $06
	smpsAlterVol		$F9
	dc.b	pAKick, $03, nRst, $15
	smpsAlterVol		$02

BMODC_FrontEnd_PWM4_Loop5:
	dc.b	pEKick, $06, nRst, $12
	smpsLoop		$00, $03, BMODC_FrontEnd_PWM4_Loop5, Target
	dc.b	pEKick, $06, nRst

BMODC_FrontEnd_PWM4_Jump1:
	dc.b	nRst, $0C

BMODC_FrontEnd_PWM4_Loop6:
	dc.b	pEKick, $06, nRst, $12
	smpsLoop		$00, $0E, BMODC_FrontEnd_PWM4_Loop6, Target
	dc.b	pClickLo, $06, nRst, pEKick, nRst, pEKick, nRst
	smpsJump		BMODC_FrontEnd_PWM4_Jump1, Target