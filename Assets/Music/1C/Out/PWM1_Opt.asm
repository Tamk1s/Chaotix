FFX_EA_PWM1:
	dc.b	nRst, $7F, $7F, $22

FFX_EA_PWM1_Loop1:
	dc.b	pESnare, $04, nRst, pESnare, pESnare, $02, $02, $02
	dc.b	nRst, $06, pESnare, $04, nRst, $08, pESnare, $04
	dc.b	nRst, $08
	smpsLoop		$00, $05, FFX_EA_PWM1_Loop1, Target
	dc.b	pESnare, $06, nRst, $02, pESnare

FFX_EA_PWM1_Loop2:
	dc.b	nRst, pESnare, $03, nRst, $05, pESnare, $02
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop2, Target
	dc.b	nRst, pESnare, pESnare, nRst, $08, pESnare, $06, nRst
	dc.b	$02, pESnare, $04, $03, nRst, $05, pESnare, $04
	dc.b	$03, nRst, $05, pESnare, $04
	smpsAlterVol		$1A

FFX_EA_PWM1_Loop3:
	dc.b	$01
	smpsAlterVol		$FC
	smpsLoop		$00, $03, FFX_EA_PWM1_Loop3, Target

FFX_EA_PWM1_Loop4:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FD
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop4, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$06, nRst, $02, pESnare

FFX_EA_PWM1_Loop5:
	dc.b	nRst, pESnare, $03, nRst, $05, pESnare, $02
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop5, Target
	dc.b	nRst, pESnare, pESnare, nRst, $08, pESnare, $06, nRst
	dc.b	$02, pESnare, $04, $03, nRst, $05, pESnare, $04
	dc.b	$03, nRst, $05, pESnare, $04
	smpsAlterVol		$1A

FFX_EA_PWM1_Loop6:
	dc.b	$01
	smpsAlterVol		$FC
	smpsLoop		$00, $03, FFX_EA_PWM1_Loop6, Target

FFX_EA_PWM1_Loop7:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FD
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop7, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$06, nRst, $02, pESnare

FFX_EA_PWM1_Loop8:
	dc.b	nRst, pESnare, $03, nRst, $05, pESnare, $02
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop8, Target
	dc.b	nRst, pESnare, pESnare, nRst, $08, pESnare, $06, nRst
	dc.b	$02, pESnare, $04, $03, nRst, $05, pESnare, $04
	dc.b	$03, nRst, $05, pESnare, $04
	smpsAlterVol		$1A

FFX_EA_PWM1_Loop9:
	dc.b	$01
	smpsAlterVol		$FC
	smpsLoop		$00, $03, FFX_EA_PWM1_Loop9, Target

FFX_EA_PWM1_Loop10:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FD
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop10, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$06, nRst, $02, pESnare

FFX_EA_PWM1_Loop11:
	dc.b	nRst, pESnare, $03, nRst, $05, pESnare, $02
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop11, Target
	dc.b	nRst, pESnare, pESnare, nRst, $08, pESnare, $06, nRst
	dc.b	$02, pESnare, $04, $03, nRst, $05, pESnare, $04
	dc.b	$03, nRst, $05, pESnare, $04
	smpsAlterVol		$1A

FFX_EA_PWM1_Loop12:
	dc.b	$01
	smpsAlterVol		$FC
	smpsLoop		$00, $03, FFX_EA_PWM1_Loop12, Target

FFX_EA_PWM1_Loop13:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FD
	smpsLoop		$00, $02, FFX_EA_PWM1_Loop13, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$01, nRst, $04
	smpsAlterVol		$FE

FFX_EA_PWM1_Loop14:
	dc.b	pTomLower, nRst
	smpsLoop		$00, $12, FFX_EA_PWM1_Loop14, Target

FFX_EA_PWM1_Loop16:
	dc.b	pTomLower, $01, $01, nRst

FFX_EA_PWM1_Loop15:
	dc.b	pTomLower, nRst, $04
	smpsLoop		$00, $06, FFX_EA_PWM1_Loop15, Target
	smpsLoop		$01, $02, FFX_EA_PWM1_Loop16, Target

FFX_EA_PWM1_Loop17:
	dc.b	pTomLower, nRst
	smpsLoop		$00, $12, FFX_EA_PWM1_Loop17, Target
	dc.b	pTomLower, $01, $01, nRst

FFX_EA_PWM1_Loop18:
	dc.b	pTomLower, nRst, $04
	smpsLoop		$00, $05, FFX_EA_PWM1_Loop18, Target
	dc.b	pTomLower
	smpsAlterVol		$04
	dc.b	pESnare, $0C, $0C, $08, $04, nRst, pESnare, nRst
	dc.b	pESnare, $0C, $0C, $0C, nRst, $1A
	smpsJump		FFX_EA_PWM1, Target