Target	EQU	$4BD40
	smpsHeaderVoice	FFX_EA_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempoC	$02, $03
	;!@ smpsHeaderFM	FFX_EA_FM1, Target, $00, $00
	;!@ smpsHeaderFM	FFX_EA_FM2, Target, $00, $00
	;!@ smpsHeaderFM	FFX_EA_FM3, Target, $00, $08
	;!@ smpsHeaderFM	FFX_EA_FM4, Target, $00, $22
	smpsHeaderFM	FFX_EA_FM1, Target, $00, $0C
	smpsHeaderFM	FFX_EA_FM2, Target, $00, $10
	smpsHeaderFM	FFX_EA_FM3, Target, $00, $14
	smpsHeaderFM	FFX_EA_FM4, Target, $00, $2B
	;!@ smpsHeaderFM	FFX_EA_FM5, Target, $00, $00
	smpsHeaderFM	FFX_EA_FM5, Target, $00, $10
	smpsHeaderFM	FFX_EA_FM6, Target, $00, $10
	;!@ smpsHeaderPSG	FFX_EA_PSG1, Target, $00, $03, $00, $04
	;!@ smpsHeaderPSG	FFX_EA_PSG2, Target, $00, $0D, $00, $00
	;!@ smpsHeaderPSG	FFX_EA_PSG3, Target, $00, $08, $00, $00
	smpsHeaderPSG	FFX_EA_PSG1, Target, $0C, $04, $00, $04
	smpsHeaderPSG	FFX_EA_PSG2, Target, $0C, $0D, $00, $00
	smpsHeaderPSG	FFX_EA_PSG3, Target, $0C, $08, $00, $00
	smpsHeaderPWM	FFX_EA_PWM1, Target, $00, $8F
	smpsHeaderPWM	FFX_EA_PWM2, Target, $00, $8F
	smpsHeaderPWM	FFX_EA_PWM3, Target, $00, $8F
	smpsHeaderPWM	FFX_EA_PWM4, Target, $00, $8F

FFX_EA_FM1:
	smpsFMvoice		$00

FFX_EA_Loop1:
	dc.b	nG3, $03, nRst, $01
	smpsLoop		$00, $84, FFX_EA_Loop1, Target
	dc.b	nBb3, $03, nRst, $01, nBb3, $03, nRst, $01
	dc.b	nCs4, $03, nRst, $01, nC4, $08, nRst, $01
	dc.b	nAb3, $03, nBb3, $02, nRst, $16

FFX_EA_Loop2:
	dc.b	nBb3, $04, nF4, $02, nRst, nFs4, nRst, nEb4
	dc.b	nRst, nF4, nRst, nCs4, nRst, nEb4, nRst, nAb3
	dc.b	nRst, nBb3, nRst, $0E
	smpsLoop		$00, $03, FFX_EA_Loop2, Target
	dc.b	nB3, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $08, nRst, $01
	dc.b	nA3, $03, nB3, $02, nRst, $16, nB3, $04
	dc.b	nFs4, $02, nRst, nG4, nRst, nE4, nRst, nFs4
	dc.b	nRst, nD4, nRst, nE4, nRst, nA3, nRst, nB3

FFX_EA_Loop3:
	dc.b	nRst, $0E, nA3, $04, nE4, $02, nRst, nF4
	dc.b	nRst, nD4, nRst, nE4, nRst, nC4, nRst, nD4
	dc.b	nRst, nG3, nRst, nA3
	smpsLoop		$00, $02, FFX_EA_Loop3, Target
	dc.b	nRst, $0E

FFX_EA_Loop4:
	dc.b	nFs3, $02, nRst, nFs3, nRst, nE3, nRst, nA3
	dc.b	nRst, nB3, nRst, nE3, nRst
	smpsLoop		$00, $0A, FFX_EA_Loop4, Target

FFX_EA_Loop5:
	dc.b	nD5, nRst, nD5, nRst, nEb5, nRst, nBb4, nRst
	dc.b	nC5, nRst, nF5, nRst, $06, nD5, $02, nRst
	dc.b	nEb5, nRst, nBb4, nRst, nC5, nRst, nF5, nRst
	smpsLoop		$00, $04, FFX_EA_Loop5, Target

FFX_EA_Loop6:
	dc.b	nFs4, nRst
	smpsLoop		$00, $15, FFX_EA_Loop6, Target
	dc.b	nG6, $01, nRst, $03, nA5, $01, nF5, nRst
	dc.b	$04, nBb4, $01, nD5, nRst, $0E
	smpsJump		FFX_EA_FM1, Target

FFX_EA_FM2:
	smpsFMvoice		$00

FFX_EA_Loop7:
	dc.b	nG2, $03, nRst, $01
	smpsLoop		$00, $83, FFX_EA_Loop7, Target
	dc.b	nG2, $03, nRst, $3D, nBb3, $02

FFX_EA_Loop8:
	dc.b	nRst, nCs4, nRst, nBb3, nRst, nC4, nRst, nF3
	dc.b	nRst, nFs3, nRst, $0E, nBb2, $04, nCs4, $02
	dc.b	nRst, nEb4, nRst, nC4
	smpsLoop		$00, $02, FFX_EA_Loop8, Target
	dc.b	nRst, nCs4, nRst, nBb3, nRst, nC4, nRst, nF3
	dc.b	nRst, nFs3, nRst, $42, nD4, $02, nRst, nE4
	dc.b	nRst, nB3, nRst, nD4, nRst, nB3, nRst, nCs4
	dc.b	nRst, nFs3, nRst, nG3

FFX_EA_Loop9:
	dc.b	nRst, $0E, nA2, $04, nC4, $02, nRst, nD4
	dc.b	nRst, nB3, nRst, nC4, nRst, nA3, nRst, nB3
	dc.b	nRst, nE3, nRst, nF3
	smpsLoop		$00, $02, FFX_EA_Loop9, Target
	dc.b	nRst, $0E

FFX_EA_Loop10:
	dc.b	nCs3, $02, nRst, nCs3, nRst, nB2, nRst, nE3
	dc.b	nRst, nFs3, nRst, nB2, nRst
	smpsLoop		$00, $0A, FFX_EA_Loop10, Target

FFX_EA_Loop11:
	dc.b	nG4, nRst, nG4, nRst, nBb4, nRst, nG4, nRst
	dc.b	nBb4, nRst, nBb4, nRst, $06, nG4, $02, nRst
	dc.b	nA4, nRst, nG4, nRst, nG4, nRst, nC5, nRst
	smpsLoop		$00, $04, FFX_EA_Loop11, Target

FFX_EA_Loop12:
	dc.b	nFs3, nRst
	smpsLoop		$00, $14, FFX_EA_Loop12, Target
	dc.b	nFs3, nRst, $03, nFs6, $01, nRst, $02, nG5
	dc.b	$01, nRst, nD5, nRst, $02, nG4, $01, nRst
	dc.b	nD5, nRst, $0E
	smpsJump		FFX_EA_FM2, Target

FFX_EA_FM3:
	smpsFMvoice		$01
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06

FFX_EA_Loop13:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop13, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop14:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop14, Target

FFX_EA_Loop15:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop15, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop16:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop16, Target

FFX_EA_Loop17:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop17, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop18:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop18, Target

FFX_EA_Loop19:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop19, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop20:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop20, Target

FFX_EA_Loop21:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop21, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop22:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop22, Target

FFX_EA_Loop23:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop23, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop24:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop24, Target

FFX_EA_Loop25:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop25, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop26:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop26, Target

FFX_EA_Loop27:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop27, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop28:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop28, Target

FFX_EA_Loop29:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop29, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop30:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop30, Target

FFX_EA_Loop31:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop31, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05

FFX_EA_Loop32:
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	smpsLoop		$00, $02, FFX_EA_Loop32, Target

FFX_EA_Loop33:
	dc.b	nG2, $03, nRst, $01, nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	smpsLoop		$00, $02, FFX_EA_Loop33, Target
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FB
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$05
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$06
	dc.b	nG2, $03, nRst, $01
	smpsAlterVol		$FA
	dc.b	nBb3, $03, nRst, $01, nBb3, $03, nRst, $01
	dc.b	nCs4, $03, nRst, $01, nC4, $08, nRst, $01
	dc.b	nAb3, $02, nRst, $01, nBb3, $02, nRst, $16
	smpsAlterVol		$01
	dc.b	nBb3, $08
	smpsAlterVol		$FF
	dc.b	nAb3, $04, nBb3, $02, nRst, $22
	smpsAlterVol		$01
	dc.b	nBb3, $04, nRst, $2C, nBb3, $04, nRst, $2C
	smpsAlterVol		$FF
	dc.b	nB3, $03, nRst, $01, nB3, $03, nRst, $01
	dc.b	nD4, $03, nRst, $01, nCs4, $08, nRst, $01
	dc.b	nA3, $02, nRst, $01, nB3, $02, nRst, $16
	smpsAlterVol		$01
	dc.b	nB3, $08
	smpsAlterVol		$FF
	dc.b	nA3, $04, nB3, $02, nRst, $22
	smpsAlterVol		$01
	dc.b	nA3, $04, nRst, $2C, nA3, $04, nRst, $7F
	;!@ dc.b	$7F, $1E
	dc.b	nRst, $7F, nRst, $1E

;!@
FFX_EA_Loop34:
	dc.b	nD4, $02, nRst
	smpsAlterVol		$FF
	dc.b	nD4, nRst, nEb4, nRst, nBb3, nRst, nC4, nRst
	dc.b	nF4, nRst, $06, nD4, $02, nRst, nEb4, nRst
	dc.b	nBb3, nRst, nC4, nRst, nF4, nRst
	smpsAlterVol		$01
	smpsLoop		$00, $03, FFX_EA_Loop34, Target
	dc.b	nD4, nRst
	smpsAlterVol		$FF
	dc.b	nD4, nRst, nEb4, nRst, nBb3, nRst, nC4, nRst
	dc.b	nF4, nRst, $06, nD4, $02, nRst, nEb4, nRst
	dc.b	nBb3, nRst, nC4, nRst, nF4, nRst, $70
	smpsJump		FFX_EA_FM3, Target

FFX_EA_FM4:
	smpsFMvoice		$02
	;!@ dc.b	nG6, $03, nRst, $7F, $7F, $07
	dc.b	nRst, $03, nRst, $7F, nRst, $7F, nRst, $07
	smpsFMvoice		$02
	;!@ dc.b	$06
	dc.b	nRst, $06
	
	;smpsAlterVol		$FB
	;dc.b	nC6, $02, nRst, $01
	;smpsAlterVol		$FC
	;dc.b	nEb6, $02, nRst, $01
	;smpsAlterVol		$FC
	;dc.b	nG6, $02
	;smpsAlterVol		$FE
	;dc.b	nF6, $01, nRst, $03
	;smpsAlterVol		$FE
	;dc.b	nC6, $02, nRst, $01
	;smpsAlterVol		$FF
	;dc.b	nEb6, $02, nRst, $01
	;smpsAlterVol		$FF
	;;!@ dc.b	nG6, $02, nRst, $7F, $3F
	;dc.b	nG6, $02, nRst, $7F, nRst, $3F
	;smpsFMvoice		$02
	;;!@ dc.b	$12
	;dc.b	nRst, $12
	;smpsAlterVol		$05
	;dc.b	nC6, $02, nRst, $01, nEb6, $02, nRst, $01
	;dc.b	nG6, $02, nF6, $01, nRst, $02, nF6, $01
	;dc.b	nRst, $02, nC6, $01, nRst, $03, nA5, $02
	;dc.b	nRst, $01, nC6, $02, nRst, $01, nEb6, $02
	;dc.b	nRst, $01, nG6, $02, nA6, $01, nRst, $1C
	
	smpsAlterVol		$AB
	dc.b	nC5, $02, nRst, $01
	smpsAlterVol		$AC
	dc.b	nEb5, $02, nRst, $01
	smpsAlterVol		$AC
	dc.b	nG5, $02
	smpsAlterVol		$AE
	dc.b	nF5, $01, nRst, $03
	smpsAlterVol		$AE
	dc.b	nC5, $02, nRst, $01
	smpsAlterVol		$AF
	dc.b	nEb5, $02, nRst, $01
	smpsAlterVol		$AF
	;!@ dc.b	nG5, $02, nRst, $7F, $3F
	dc.b	nG5, $02, nRst, $7F, nRst, $3F
	smpsFMvoice		$02
	;!@ dc.b	$12
	dc.b	nRst, $12
	smpsAlterVol		$45
	dc.b	nC5, $02, nRst, $01, nEb5, $02, nRst, $01
	dc.b	nG5, $02, nF5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $02, nC5, $01, nRst, $03, nA4, $02
	dc.b	nRst, $01, nC5, $02, nRst, $01, nEb5, $02
	dc.b	nRst, $01, nG5, $02, nA5, $01, nRst, $1C
	
	
	smpsAlterVol		$F9
	dc.b	nBb4, $02, nRst, $0A, nBb4, $02, nRst, nBb4
	dc.b	nRst, nBb4, nRst
	smpsAlterVol		$03
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nFs4, nRst
	smpsAlterVol		$01
	dc.b	nEb4, nRst, nF4, nRst
	smpsAlterVol		$01
	dc.b	nCs4, nRst
	smpsAlterVol		$01
	dc.b	nEb4, nRst
	smpsAlterVol		$01
	dc.b	nAb3, nRst
	smpsAlterVol		$01
	dc.b	nBb3, nRst, $06
	smpsAlterVol		$F8
	dc.b	nBb4, $02, nRst, nBb4, nRst
	smpsAlterVol		$FA
	dc.b	nBb4, nRst
	smpsAlterVol		$01
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nFs4, nRst
	smpsAlterVol		$01
	dc.b	nEb4, nRst
	smpsAlterVol		$01
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nCs4, nRst
	smpsAlterVol		$01
	dc.b	nEb4, nRst
	smpsAlterVol		$01
	dc.b	nAb3, nRst
	smpsAlterVol		$01
	dc.b	nBb3, nRst, $06
	smpsAlterVol		$FC
	dc.b	nBb4, $02, nRst
	smpsAlterVol		$FE
	dc.b	nBb4, nRst
	smpsAlterVol		$FE
	dc.b	nBb4, nRst
	smpsAlterVol		$01
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nFs4, nRst
	smpsAlterVol		$01
	dc.b	nEb4, nRst
	smpsAlterVol		$01
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nCs4, nRst
	smpsAlterVol		$01
	dc.b	nEb4, nRst
	smpsAlterVol		$01
	dc.b	nAb3, nRst
	smpsAlterVol		$01
	dc.b	nBb3, nRst, $06
	smpsAlterVol		$FC
	dc.b	nBb4, $02, nRst
	smpsAlterVol		$FE
	dc.b	nBb4, nRst, $1E
	smpsAlterVol		$03
	dc.b	nB4, $02, nRst, $0A, nB4, $02, nRst, nB4
	dc.b	nRst, nB4, nRst
	smpsAlterVol		$03
	dc.b	nFs4, nRst
	smpsAlterVol		$01
	dc.b	nG4, nRst
	smpsAlterVol		$01
	dc.b	nE4, nRst, nFs4, nRst
	smpsAlterVol		$01
	dc.b	nD4, nRst
	smpsAlterVol		$01
	dc.b	nE4, nRst
	smpsAlterVol		$01
	dc.b	nA3, nRst
	smpsAlterVol		$01
	dc.b	nB3, nRst, $06
	smpsAlterVol		$F8
	dc.b	nB4, $02, nRst, nB4, nRst
	smpsAlterVol		$FA
	dc.b	nA4, nRst
	smpsAlterVol		$01
	dc.b	nE4, nRst
	smpsAlterVol		$01
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nD4, nRst
	smpsAlterVol		$01
	dc.b	nE4, nRst
	smpsAlterVol		$01
	dc.b	nC4, nRst
	smpsAlterVol		$01
	dc.b	nD4, nRst
	smpsAlterVol		$01
	dc.b	nG3, nRst
	smpsAlterVol		$01
	dc.b	nA3, nRst, $06
	smpsAlterVol		$FC
	dc.b	nA4, $02, nRst
	smpsAlterVol		$FE
	dc.b	nA4, nRst
	smpsAlterVol		$FE
	dc.b	nA4, nRst
	smpsAlterVol		$01
	dc.b	nE4, nRst
	smpsAlterVol		$01
	dc.b	nF4, nRst
	smpsAlterVol		$01
	dc.b	nD4, nRst
	smpsAlterVol		$01
	dc.b	nE4, nRst
	smpsAlterVol		$01
	dc.b	nC4, nRst
	smpsAlterVol		$01
	dc.b	nD4, nRst
	smpsAlterVol		$01
	dc.b	nG3, nRst
	smpsAlterVol		$01
	dc.b	nA3, nRst, $06
	smpsAlterVol		$FC
	;!@ dc.b	nA4, $02, nRst
	dc.b	nA4, $02, nRst, $02
	smpsAlterVol		$FE
	;!@ dc.b	nA4, nRst, $7F, $73
	dc.b	nA4, $02, nRst, $7F, nRst, $73
	smpsAlterVol		$FF

FFX_EA_Loop35:
	dc.b	nD5, $02, nRst
	smpsAlterVol		$FF
	dc.b	nD5, nRst, nEb5, nRst, nBb4, nRst, nC5, nRst
	dc.b	nF5, nRst, $06, nD5, $02, nRst, nEb5, nRst
	dc.b	nBb4, nRst, nC5, nRst, nF5, nRst
	smpsAlterVol		$01
	smpsLoop		$00, $03, FFX_EA_Loop35, Target
	dc.b	nD5, nRst
	smpsAlterVol		$FF
	dc.b	nD5, nRst, nEb5, nRst, nBb4, nRst, nC5, nRst
	dc.b	nF5, nRst, $06, nD5, $02, nRst, nEb5, nRst
	dc.b	nBb4, nRst, nC5, nRst, nF5, nRst
	smpsAlterVol		$0A
	dc.b	nFs4, nRst, nFs4, nRst
	smpsAlterVol		$01

FFX_EA_Loop36:
	dc.b	nFs4, nRst
	smpsLoop		$00, $07, FFX_EA_Loop36, Target
	smpsAlterVol		$01

FFX_EA_Loop37:
	dc.b	nFs4, nRst
	smpsLoop		$00, $06, FFX_EA_Loop37, Target
	smpsAlterVol		$01

FFX_EA_Loop38:
	dc.b	nFs4, nRst
	smpsLoop		$00, $05, FFX_EA_Loop38, Target
	dc.b	nFs4, nRst, $1C
	smpsAlterVol		$0D
	smpsJump		FFX_EA_FM4, Target

FFX_EA_FM5:
	smpsFMvoice		$03
	dc.b	nRst, $60, nF4, $48, nD4, $18, nEb4, $54
	dc.b	nRst, $0C, nF4, $48, nD4, $18, nEb4, $54
	dc.b	nRst, $3C, nAb4, $7F, smpsNoAttack, $11, nRst, $30
	;!@ dc.b	nRst, $3C, nAb4, $7F, smpsNoAttack, nAb4, $11, nRst, $30
	dc.b	nB3, nCs4, nC4, $08, nB3, nC4, nD4, nC4
	dc.b	nD4, nE4, $30, nRst
	smpsFMvoice		$04
	;!@ dc.b	$24, nCs6, $1E, nRst, $4E, nCs6, $30, nRst
	;!@ dc.b	$7F, $7F, $30
	dc.b	$24, nCs6, $1E, nRst, $4E, nCs6, $30, nRst
	dc.b	$7F, nRst, $7F, nRst, $30
	smpsJump		FFX_EA_FM5, Target

FFX_EA_FM6:
	dc.b	nRst, $30
	smpsFMvoice		$03
	;!@ dc.b	$30, nBb3, $48
	dc.b	nRst, $30, nBb3, $48
	smpsAlterVol		$16
	dc.b	nB3, $18
	smpsAlterVol		$FD
	dc.b	nC4, $54, nRst, $0C, nBb3, $48
	smpsAlterVol		$0B
	dc.b	nB3, $18
	smpsAlterVol		$F5
	dc.b	nC4, $54, nRst, $3C
	;!@ smpsAlterVol		$06
	smpsAlterVol		$16
	dc.b	nCs4, $7F, smpsNoAttack, $11
	;!@ dc.b	nCs4, $7F, smpsNoAttack, nCs4, $11
	smpsFMvoice		$04
	dc.b	nRst, $30
	smpsAlterVol		$F4
	dc.b	nFs5, $60
	smpsAlterVol		$FE
	dc.b	nE5, $30, nA5
	smpsFMvoice		$05
	;!@ smpsAlterVol		$07
	smpsAlterVol		$6F
	dc.b	nCs4, $7F, smpsNoAttack, $71
	;!@ dc.b	nCs5, $7F, smpsNoAttack, nCs5, $71
	;!@ smpsAlterVol		$FB
	smpsAlterVol		$6F
	dc.b	nBb3, $7F, smpsNoAttack, $41, nRst, $6E
	;!@ dc.b	nBb4, $7F, smpsNoAttack, nBb4, $41, nRst, $6E
	;!@ smpsAlterVol		$06
	smpsAlterVol		$16
	smpsJump		FFX_EA_FM6, Target

FFX_EA_PSG1:	
	;!@dc.b	nRst, $58, $58, $58, $58, $58, $58, nC0
	dc.b	nRst, $58, nRst, $58, nRst, $58, nRst, $58, nRst, $58, nRst, $58, nC0
	dc.b	$03, nRst, $01, nC0, $03, nRst, $01, nCs0
	dc.b	$03, nRst, $01, nC0, $08, nRst, $01, nC0
	dc.b	$02, nRst, $01, nC0, $02, nRst, $16, nC0
	;!@ 
	dc.b	$08, $04, $02, nRst, $22, nC0, $04, nRst
	dc.b	$2C, nC0, $04, nRst, $2C, nC0, $03, nRst
	dc.b	$01, nC0, $03, nRst, $01, nD0, $03, nRst
	dc.b	$01, nCs0, $08, nRst, $01, nC0, $02, nRst
	dc.b	$01, nC0, $02, nRst, $16, nC0, $08, $04
	dc.b	$02, nRst, $22, nC0, $04, nRst, $2C, nC0
	dc.b	$04, nRst, $27
	smpsPSGvoice	$00
	;!@ dc.b	$05
	dc.b	nRst, $05
	smpsSetVol	$03
	dc.b	nCs1, $7F, smpsNoAttack, $71
	;!@ dc.b	nCs1, $7F, smpsNoAttack, nCs1, $71
	smpsPSGvoice	$04
	smpsSetVol	$FD

FFX_EA_Loop39:
	dc.b	nG0, $02, nRst, nG0, nRst, nBb0, nRst, nG0
	dc.b	nRst, nBb0, nRst, nBb0, nRst, $06, nG0, $02
	dc.b	nRst, nA0, nRst, nG0, nRst, nG0, nRst, nC1
	dc.b	nRst
	smpsLoop		$00, $02, FFX_EA_Loop39, Target
	dc.b	nG0, nRst, nG0, nRst, nBb0, nRst, nG0, nRst
	dc.b	nBb0, nRst, nBb0, nRst, $06, nG0, $02, nRst
	dc.b	nA0, nRst, nG0, nRst, nG0, nRst, $06, nG0
	dc.b	$02, nRst, nG0, nRst, nBb0, nRst, nG0, nRst
	dc.b	nBb0, nRst, nBb0, nRst, $06, nG0, $02, nRst
	dc.b	nA0, nRst, nG0, nRst, nG0, nRst, $74
	smpsJump		FFX_EA_PSG1, Target

FFX_EA_PSG2:
	smpsPSGvoice	$08
	;!@ dc.b	nG3, $03, nRst, $7F, $7F, $0F
	dc.b	nRst, $03, nRst, $7F, nRst, $7F, nRst, $0F
	smpsSetVol	$FD
	dc.b	nD3, $01, nRst, $02
	smpsSetVol	$FF
	dc.b	nF3, $01, nRst, $03
	smpsSetVol	$FE
	dc.b	nEb3, $02
	smpsSetVol	$FF
	dc.b	nG3, $01, nRst, $02, nD3, $01, nRst, $02
	;!@ dc.b	nF3, $01, nRst, $7F, $55
	dc.b	nF3, $01, nRst, $7F, nRst, $55
	smpsSetVol	$02
	dc.b	nD3, $01, nRst, $02, nF3, $01, nRst, $03
	dc.b	nEb3, $02, nRst, $01, nD3, $02, nRst, $01
	dc.b	nBb2, $02, nG2, $01, nRst, $02, nBb2, $01
	dc.b	nRst, $02, nD3, $01, nRst, $02, nF3, $01
	dc.b	nRst, $1F
	smpsSetVol	$FD
	dc.b	nF1, $02, nRst, $0A, nF1, $02, nRst, nF1
	dc.b	nRst, nF1, nRst
	smpsSetVol	$01
	dc.b	nCs1, nRst, nEb1, nRst
	smpsSetVol	$01
	dc.b	nC1, nRst, nCs1, nRst, nBb0, nRst, $0A
	smpsSetVol	$01
	dc.b	nFs0, $02, nRst, $06
	smpsSetVol	$FD
	dc.b	nF1, $02, nRst, nF1, nRst, nF1, nRst
	smpsSetVol	$FE
	dc.b	nCs1, nRst
	smpsSetVol	$01
	dc.b	nEb1, nRst, nC1, nRst, nCs1, nRst, nBb0, nRst
	smpsSetVol	$01
	dc.b	nC1, nRst
	smpsSetVol	$01
	dc.b	nF0, nRst, nFs0, nRst, $06
	smpsSetVol	$FE
	dc.b	nF1, $02, nRst, nF1, nRst
	smpsSetVol	$01
	dc.b	nF1, nRst
	smpsSetVol	$FE
	dc.b	nCs1, nRst
	smpsSetVol	$01
	dc.b	nEb1, nRst, nC1, nRst, nCs1, nRst, nBb0, nRst
	smpsSetVol	$01
	dc.b	nC1, nRst
	smpsSetVol	$01
	dc.b	nF0, nRst, nFs0, nRst, $06
	smpsSetVol	$FE
	dc.b	nF1, $02, nRst, nF1, nRst, $1E
	smpsSetVol	$01
	dc.b	nFs1, $02, nRst, $0A, nFs1, $02, nRst, nFs1
	dc.b	nRst, nFs1, nRst
	smpsSetVol	$01
	dc.b	nD1, nRst, nE1, nRst
	smpsSetVol	$01
	dc.b	nCs1, nRst, nD1, nRst, nB0, nRst
	smpsSetVol	$01
	dc.b	nCs1, nRst, nFs0, nRst, nG0, nRst, $06
	smpsSetVol	$FD
	dc.b	nFs1, $02, nRst, nFs1, nRst, nE1, nRst
	smpsSetVol	$FE
	dc.b	nC1, nRst
	smpsSetVol	$01
	dc.b	nD1, nRst, nB0, nRst, nC1, nRst, nA0, nRst
	smpsSetVol	$01
	dc.b	nB0, nRst
	smpsSetVol	$01
	dc.b	nE0, nRst, nF0, nRst, $06
	smpsSetVol	$FE
	dc.b	nE1, $02, nRst, nE1, nRst
	smpsSetVol	$01
	dc.b	nE1, nRst
	smpsSetVol	$FE
	dc.b	nC1, nRst
	smpsSetVol	$01
	dc.b	nD1, nRst, nB0, nRst, nC1, nRst, nA0, nRst
	smpsSetVol	$01
	dc.b	nB0, nRst
	smpsSetVol	$01
	dc.b	nE0, nRst, nF0, nRst, $06
	smpsSetVol	$FE
	dc.b	nE1, $02, nRst, nE1, nRst
	smpsPSGvoice	$00
	smpsSetVol	$FF
	dc.b	nFs2, $30, nAb2, nA2, nB2, nA2
	smpsPSGvoice	$08

FFX_EA_Loop40:
	dc.b	nG1, $02, nRst, nG1, nRst, nBb1, nRst, nG1
	dc.b	nRst, nBb1, nRst, nBb1, nRst, $06, nG1, $02
	dc.b	nRst, nA1, nRst, nG1, nRst, nG1, nRst, nC2
	dc.b	nRst
	smpsLoop		$00, $04, FFX_EA_Loop40, Target
	smpsSetVol	$04

FFX_EA_Loop41:
	dc.b	nFs0, nRst
	smpsLoop		$00, $14, FFX_EA_Loop41, Target
	dc.b	nFs0, nRst, $1C
	smpsSetVol	$06
	smpsJump		FFX_EA_PSG2, Target

FFX_EA_PSG3:
	smpsPSGvoice	$00
	dc.b	nRst, $60, nG0, $48, nBb0, $18
	smpsSetVol	$FE
	dc.b	nAb0, $54, nRst, $0C
	smpsSetVol	$02
	dc.b	nG0, $48, nBb0, $18, nG0, $54, nRst, $3C
	smpsSetVol	$FE
	;!@ dc.b	nC1, $7F, smpsNoAttack, $11, nRst, $7F, $41
	dc.b	nC1, $7F, smpsNoAttack, nC1, $11, nRst, $7F, nRst, $41
	smpsPSGvoice	$00
	;!@ dc.b	$30
	dc.b	nRst, $30
	smpsSetVol	$FE
	dc.b	nFs1, nAb1, nA1, nB1, nA1
	smpsPSGvoice	$00
	dc.b	nRst, nD2, nEb2, nF2, nRst, $6E
	smpsSetVol	$04
	smpsJump		FFX_EA_PSG3, Target
	
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
	
FFX_EA_PWM2:
	dc.b	pTomLow, $04, nRst, $08, pTomLow, $04, nRst, $08
	dc.b	pTomLow, $04, nRst, pTomHi, nRst, pTomHi, nRst
	smpsLoop		$00, $0B, FFX_EA_PWM2, Target

FFX_EA_PWM2_Loop2:
	dc.b	pTomLow, $0C, nRst, $08, pTomHi, $03, nRst, $05
	dc.b	pTomLowerer, $04, pTomLowerest, nRst, $0C
	smpsLoop		$00, $08, FFX_EA_PWM2_Loop2, Target
	smpsAlterVol		$03
	dc.b	pTomLower

FFX_EA_PWM2_Loop3:
	dc.b	pTomLower, pTomLower, $08, $08, $08, $0C
	smpsLoop		$00, $04, FFX_EA_PWM2_Loop3, Target
	dc.b	$0C, $08, $08, $08
	smpsAlterVol		$FD

FFX_EA_PWM2_Loop4:
	dc.b	pTomLow, $0C, nRst, $08, pTomHi, $03, nRst, $05
	dc.b	pTomLowerer, $04, pTomLowerest, nRst, $0C
	smpsLoop		$00, $04, FFX_EA_PWM2_Loop4, Target
	smpsAlterVol		$03
	dc.b	pTomMid, pTomMid, pTomMid, nRst, pTomMid, pTomMid, pTomMid, nRst
	dc.b	$04
	smpsAlterVol		$FD
	;!@ dc.b	nF2, nRst, $12
	dc.b	nRst, nRst, $12
	smpsJump		FFX_EA_PWM2, Target
	
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

FFX_EA_Patches:	
	dc.b	$3A
	dc.b	$11, $15, $01, $01,	$59, $59, $5C, $4E
	dc.b	$0A, $0B, $0D, $04,	$00, $00, $00, $00
	dc.b	$15, $58, $26, $06,	$1D, $14, $2D, $0C
	 
	dc.b	$02
	dc.b	$31, $75, $01, $01,	$55, $54, $50, $4E
	dc.b	$07, $0B, $08, $05,	$00, $00, $00, $00
	dc.b	$37, $3C, $3C, $1C,	$25, $0F, $2D, $08
	 
	dc.b	$39
	dc.b	$02, $02, $04, $02,	$59, $59, $59, $4C
	dc.b	$03, $07, $03, $05,	$00, $00, $00, $00
	dc.b	$22, $22, $22, $27,	$40, $18, $24, $04
	 
	dc.b	$3C
	dc.b	$32, $32, $72, $72,	$0F, $0D, $0F, $0D
	dc.b	$0B, $0C, $0D, $0B,	$02, $02, $05, $02
	dc.b	$20, $2F, $10, $2F,	$17, $14, $14, $0F
	
	dc.b	$02
	dc.b	$31, $75, $01, $01,	$55, $54, $50, $4E
	dc.b	$07, $0B, $08, $05,	$00, $00, $00, $00
	dc.b	$37, $3C, $3C, $1C,	$25, $0F, $2D, $10
	
	dc.b	$34
	dc.b	$34, $34, $74, $74,	$55, $0E, $55, $0E
	dc.b	$00, $08, $00, $08,	$01, $00, $00, $00
	dc.b	$0B, $1D, $0A, $1D,	$28, $0C, $25, $12
