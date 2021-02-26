FFX_EA_PWM3:
	dc.b	nRst, $7F, $7F, $22, pClosedHH, $0C, nRst, $54
	dc.b	pClosedHH, $0C, nRst, $7F, $05, pCrashCymb, $0C, nRst
	dc.b	$24
	smpsAlterVol		$2B
	dc.b	pCrashCymb, $02
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
	dc.b	$01, nRst, $0C
	smpsAlterVol		$F4
	dc.b	pCrashCymb

FFX_EA_PWM3_Loop1:
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$01
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop1, Target
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$01
	dc.b	$01, nRst, $6C
	smpsAlterVol		$E9
	dc.b	pClosedHH, $0C, nRst, $7F, $35
	smpsAlterVol		$02
	dc.b	pClosedHH, $0C, nRst, $36
	smpsAlterVol		$14
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE

FFX_EA_PWM3_Loop2:
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop2, Target
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02

FFX_EA_PWM3_Loop3:
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$01
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop3, Target
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02, nRst, $46
	smpsAlterVol		$07
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE

FFX_EA_PWM3_Loop4:
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop4, Target
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02

FFX_EA_PWM3_Loop5:
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$01
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop5, Target
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02, nRst, $16
	smpsAlterVol		$07
	dc.b	pCrashCymb, $02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE

FFX_EA_PWM3_Loop6:
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop6, Target
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02

FFX_EA_PWM3_Loop7:
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02
	smpsAlterVol		$01
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop7, Target
	dc.b	$01
	smpsAlterVol		$02
	dc.b	$02, nRst, $46
	smpsAlterVol		$33
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F0
	dc.b	$01
	smpsAlterVol		$F8
	dc.b	$02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FB
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FC

FFX_EA_PWM3_Loo$8:
	dc.b	$02
	smpsAlterVol		$FD
	dc.b	$01
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM3_Loo$8, Target
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FE
	dc.b	$01
	smpsAlterVol		$FF
	dc.b	$02
	smpsAlterVol		$FF
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02, nRst, $46
	smpsAlterVol		$43
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F0
	dc.b	$01
	smpsAlterVol		$F5
	dc.b	$02
	smpsAlterVol		$FA
	dc.b	$01
	smpsAlterVol		$FA
	dc.b	$02
	smpsAlterVol		$FB
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FD

FFX_EA_PWM3_Loo$9:
	dc.b	$01
	smpsAlterVol		$FD
	dc.b	$02
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM3_Loo$9, Target

FFX_EA_PWM3_Loop10:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop10, Target
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02, nRst, $4C
	smpsAlterVol		$38
	dc.b	pCrashCymb, $02
	smpsAlterVol		$F4
	dc.b	$01
	smpsAlterVol		$F9
	dc.b	$02
	smpsAlterVol		$F9
	dc.b	$01
	smpsAlterVol		$FC
	dc.b	$02
	smpsAlterVol		$FC
	dc.b	$01
	smpsAlterVol		$FC

FFX_EA_PWM3_Loop11:
	dc.b	$02
	smpsAlterVol		$FD
	dc.b	$01
	smpsAlterVol		$FE
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop11, Target
	dc.b	$02
	smpsAlterVol		$FE

FFX_EA_PWM3_Loop12:
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02
	smpsAlterVol		$FF
	smpsLoop		$00, $02, FFX_EA_PWM3_Loop12, Target
	dc.b	$01
	smpsAlterVol		$FE
	dc.b	$02, nRst, $0C
	smpsJump		FFX_EA_PWM3, Target