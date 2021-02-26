FFX_EA_PWM4:
	dc.b	pCrashCymb, $0C, nRst, $7F, $7D
	smpsAlterVol		$2D
	dc.b	pClosedHH, $02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FC

FFX_EA_PWM4_Loop1:
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop1, Target

FFX_EA_PWM4_Loop2:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop2, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$F9
	dc.b	pCrashCymb, $0C, nRst, $3C
	smpsAlterVol		$2C
	dc.b	pClosedHH, $02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FC

FFX_EA_PWM4_Loop3:
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop3, Target

FFX_EA_PWM4_Loop4:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop4, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$F9
	dc.b	pCrashCymb, $0C, nRst, $3C
	smpsAlterVol		$2B
	dc.b	pClosedHH, $02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FD
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE

FFX_EA_PWM4_Loop5:
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop5, Target

FFX_EA_PWM4_Loop6:
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$01
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop6, Target
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$01
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$02
	dc.b	$01
	smpsAlterVol		$01
	dc.b	$02
	smpsAlterVol		$02
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$03
	dc.b	$01
	smpsAlterVol		$04
	dc.b	$02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FD
	dc.b	$01
	smpsAlterVol		$FD

FFX_EA_PWM4_Loop7:
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop7, Target

FFX_EA_PWM4_Loo$8:
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM4_Loo$8, Target
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$0C, nRst, $24, pClosedHH, $0C
	smpsAlterVol		$19
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$EF
	dc.b	pClosedHH, $08, $04
	smpsAlterVol		$19
	dc.b	pCrashCymb, $02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$02
	dc.b	$01
	smpsAlterVol		$01
	dc.b	$02
	smpsAlterVol		$02
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$03
	dc.b	$01
	smpsAlterVol		$DB
	dc.b	pClosedHH, $0C, nRst
	smpsAlterVol		$FF
	dc.b	pClosedHH, $08, $04, nRst, $0C, pCrashCymb, nRst
	smpsAlterVol		$2D
	dc.b	pClosedHH, $02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FC

FFX_EA_PWM4_Loo$9:
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loo$9, Target

FFX_EA_PWM4_Loop10:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop10, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$F9
	dc.b	pCrashCymb, $0C, nRst, $54
	smpsAlterVol		$FF
	dc.b	pCrashCymb, $0C, nRst, $3C
	smpsAlterVol		$2D
	dc.b	pClosedHH, $02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FC

FFX_EA_PWM4_Loop11:
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop11, Target

FFX_EA_PWM4_Loop12:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM4_Loop12, Target
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	pCrashCymb

FFX_EA_PWM4_Loop13:
	dc.b	$0C, $0C, $08, $08, $08
	smpsLoop		$00, $05, FFX_EA_PWM4_Loop13, Target
	dc.b	pClosedHH

FFX_EA_PWM4_Loop14:
	dc.b	$0C, $0C, $08, $08, $08
	smpsLoop		$00, $04, FFX_EA_PWM4_Loop14, Target
	dc.b	nRst, $48
	smpsAlterVol		$FE
	dc.b	pClosedHH, $06, nRst, $02
	smpsAlterVol		$02
	dc.b	pClosedHH, $04, nRst
	smpsAlterVol		$04
	dc.b	pClosedHH, nRst, $12
	smpsAlterVol		$F9
	smpsJump		FFX_EA_PWM4, Target