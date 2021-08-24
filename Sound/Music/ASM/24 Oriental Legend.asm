Target	EQU	$4E84D
FMVol_Half		EQU $40
PSGVol_Max		EQU	$00
PSGVol_Half		EQU	$03
PSGVol_Qtr		EQU $07
PSGVol_Silence	EQU $0F

	smpsHeaderVoice	ZVN_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$04, $06
	smpsHeaderFM	ZVN_FM1, Target, $00, $10
	smpsHeaderFM	ZVN_FM2, Target, $00, $10
	smpsHeaderFM	ZVN_FM3, Target, $00, $10
	smpsHeaderFM	ZVN_FM4, Target, $00, $10
	smpsHeaderFM	ZVN_FM5, Target, $00, $10
	smpsHeaderFM	ZVN_FM6, Target, $00, $10
	smpsHeaderPSG	ZVN_PSG1, Target, $DC, $02, $00, $00
	smpsHeaderPSG	ZVN_PSG2, Target, $DC, $02, $00, $00
	smpsHeaderPSG	ZVN_PSG3, Target, $DC, $02, $00, $00
	smpsHeaderPWM	ZVN_PWM1, Target, $00, $AF
	smpsHeaderPWM	ZVN_PWM2, Target, $00, $AF
	smpsHeaderPWM	ZVN_PWM3, Target, $00, $AF
	smpsHeaderPWM	ZVN_PWM4, Target, $00, $AF

ZVN_FM1:	
	smpsCall		ZVN_Call1, Target
	smpsCall		ZVN_Call2, Target
	smpsCall		ZVN_Call3, Target

ZVN_Loop3:
	smpsCall		ZVN_Call4, Target
	smpsCall		ZVN_Call5, Target
	smpsLoop		$00, $02, ZVN_Loop3, Target
	smpsCall		ZVN_Call6, Target
	smpsCall		ZVN_Call6, Target

ZVN_Jump1:
	smpsCall		ZVN_Call6, Target
	smpsCall		ZVN_Call5, Target
	smpsCall		ZVN_Call4, Target
	smpsCall		ZVN_Call5, Target

ZVN_Loop4:
	smpsCall		ZVN_Call6, Target
	smpsLoop		$00, $03, ZVN_Loop4, Target
	smpsCall		ZVN_Call7, Target
	smpsCall		ZVN_Call5, Target
	smpsCall		ZVN_Call4, Target
	smpsCall		ZVN_Call5, Target

ZVN_Loop6:
	smpsCall		ZVN_Call6, Target
	smpsLoop		$00, $03, ZVN_Loop6, Target
	smpsJump		ZVN_Jump1, Target

ZVN_Call1:
	smpsFMvoice		$02
	dc.b	nEb4, $06
	smpsFMvoice		$00
	dc.b	nC4, $02, $04, nC5, nBb3, $06, $02, $04
	dc.b	nBb4, nF3, $06, $02, $04, nF4, nC4, $06
	dc.b	$02, $04, nC5
	smpsReturn

ZVN_Call2:
	dc.b	nC4, $06, $02, $04, nC5, nEb4, $06, $02
	dc.b	$04, nEb5, nF3, $06, $02, $04, nF4, nBb3
	dc.b	$06, $02, $04, nBb4
	smpsReturn

ZVN_Call3:
	dc.b	nC4, $0C, $04, nEb4, $0C, $04, nF4, $0C
	dc.b	$04, nBb3, $0C, $04
	smpsReturn

ZVN_Call4:
	smpsFMvoice		$01
	dc.b	nC5

ZVN_Loop1:
	dc.b	$01, nC5, nC4, nC5, nBb4, nAb4, nC4, nF4
	dc.b	nC5, nC5, nC4, nC5, nBb4, nBb4, nC5, nEb4
	dc.b	nBb4, nC5, nC4, nC5, nG4, nC5, nF4, nC5
	dc.b	nC4, nC5, nF4, nC5, nG4, nC5, nC4, nC5
	smpsLoop		$01, $02, ZVN_Loop1, Target
	smpsReturn

ZVN_Call5:
	smpsFMvoice		$01
	dc.b	nF4, $02, nG4, nC5, nBb4, nG5, nF5, nEb5
	dc.b	nD5, nEb4, nF4, nG4, nAb4, nC5, nEb5, nD5
	dc.b	nBb4

ZVN_Loop2:
	dc.b	nC4, nF4, nG4, nF4, nC5, nG4, nF4, nEb4
	smpsLoop		$01, $02, ZVN_Loop2, Target
	smpsReturn

ZVN_Call6:
	dc.b	nEb4, $02, nF4, nG4, nEb4, nBb4, nF4, nG4
	dc.b	nEb4, nF4, nG4, nAb4, nG4, nC5, nAb4, nG4
	dc.b	nF4, nC4, nD4, nEb4, nC4, nF4, nC4, nEb4
	dc.b	nC4, nBb3, nC4, nEb4, nF4, nG4, nF4, nEb4
	dc.b	nF4
	smpsReturn

ZVN_Call7:
	smpsFMvoice		$02

ZVN_Loop5:
	dc.b	nC5, $02, nC4, nG5, nC4, nC6, nC4, nG5
	dc.b	nC4, nD6, nC4, nG5, nC4, nC6, nC4, nG5
	dc.b	nC4
	smpsLoop		$00, $02, ZVN_Loop5, Target
	smpsReturn

ZVN_FM2:
	smpsAlterVol	FMVol_Half
	smpsCall		ZVN_Call8, Target
	smpsCall		ZVN_Call9, Target
	smpsCall		ZVN_Call10, Target

ZVN_Loop7:
	smpsCall		ZVN_Call11, Target
	smpsCall		ZVN_Call12, Target
	smpsLoop		$00, $02, ZVN_Loop7, Target
	smpsCall		ZVN_Call13, Target
	smpsCall		ZVN_Call13, Target

ZVN_Jump2:
	smpsCall		ZVN_Call13, Target
	smpsCall		ZVN_Call12, Target
	smpsCall		ZVN_Call11, Target
	smpsCall		ZVN_Call12, Target

ZVN_Loo$8:
	smpsCall		ZVN_Call13, Target
	smpsLoop		$00, $03, ZVN_Loo$8, Target
	smpsCall		ZVN_Call14, Target
	smpsCall		ZVN_Call12, Target
	smpsCall		ZVN_Call11, Target
	smpsCall		ZVN_Call12, Target

ZVN_Loo$9:
	smpsCall		ZVN_Call13, Target
	smpsLoop		$00, $03, ZVN_Loo$9, Target
	smpsJump		ZVN_Jump2, Target

ZVN_Call8:
	dc.b	nRst, $06
	smpsFMvoice		$00
	dc.b	nC5, $01, nD5, nEb5, $04, nF5, nEb5, $08
	dc.b	nC5, $06, nG4, $02, nAb4, $06, nC5, $02
	dc.b	nBb4, $04, nAb4, nG4, $10
	smpsReturn

ZVN_Call9:
	dc.b	nRst, $06, nC5, $01, nD5, nEb5, $04, nF5
	dc.b	nG5, $08, nEb5, $06, nG4, $02, nAb4, $06
	dc.b	nG4, $02, nF4, $04, nEb4, nBb4, $10
	smpsReturn

ZVN_Call10:
	dc.b	nC4, $06, nEb4, $04, nF4, $06, nBb4, $0C
	dc.b	nAb4, $02, nEb4, nF4, $0C, nG4, $02, nAb4
	dc.b	nG4, $0C, nF4, $04
	smpsReturn

ZVN_Call11:
	smpsFMvoice		$01
	dc.b	nC4, $01, nC4, nC5, nC5, nC4, nC5, nBb4
	dc.b	nAb4, nC4, nF4, nC5, nC5, nC4, nC5, nBb4
	dc.b	nBb4, nC5, nEb4, nBb4, nC5, nC4, nC5, nG4
	dc.b	nC5, nF4, nC5, nC4, nC5, nF4, nC5, nG4
	dc.b	nC5, nC4, nC5, nC5, nC5, nC4, nC5, nBb4
	dc.b	nAb4, nC4, nF4, nC5, nC5, nC4, nC5, nBb4
	dc.b	nBb4, nC5, nEb4, nBb4, nC5, nC4, nC5, nG4
	dc.b	nC5, nF4, nC5, nC4, nC5, nF4, nC5, nG4
	dc.b	nC5
	smpsReturn

ZVN_Call12:
	dc.b	nRst, $02
	smpsFMvoice		$01
	dc.b	nF4, nG4, nC5, nBb4, nG5, nF5, nEb5, nD5
	dc.b	nEb4, nF4, nG4, nAb4, nC5, nEb5, nD5, nBb4
	dc.b	nC4, nF4, nG4, nF4, nC5, nG4, nF4, nEb4
	dc.b	nC4, nF4, nG4, nF4, nC5, nG4, nF4
	smpsReturn

ZVN_Call13:
	dc.b	nRst, $02, nEb4, nF4, nG4, nEb4, nBb4, nF4
	dc.b	nG4, nEb4, nF4, nG4, nAb4, nG4, nC5, nAb4
	dc.b	nG4, nF4, nC4, nD4, nEb4, nC4, nF4, nC4
	dc.b	nEb4, nC4, nBb3, nC4, nEb4, nF4, nG4, nF4
	dc.b	nEb4
	smpsReturn

ZVN_Call14:
	dc.b	nRst, $02
	smpsFMvoice		$02
	dc.b	nC5, nC4, nG5, nC4, nC6, nC4, nG5, nC4
	dc.b	nD6, nC4, nG5, nC4, nC6, nC4, nG5, nC4
	dc.b	nC5, nC4, nG5, nC4, nC6, nC4, nG5, nC4
	dc.b	nD6, nC4, nG5, nC4, nC6, nC4, nG5
	smpsReturn

ZVN_FM3:
	smpsCall		ZVN_Call15, Target
	smpsCall		ZVN_Call16, Target
	smpsCall		ZVN_Call16, Target

ZVN_Loop10:
	smpsCall		ZVN_Call17, Target
	smpsCall		ZVN_Call18, Target
	smpsLoop		$00, $02, ZVN_Loop10, Target
	smpsCall		ZVN_Call19, Target
	smpsCall		ZVN_Call20, Target

ZVN_Jump3:
	smpsCall		ZVN_Call20, Target
	smpsCall		ZVN_Call18, Target
	smpsCall		ZVN_Call17, Target
	smpsCall		ZVN_Call18, Target
	smpsCall		ZVN_Call19, Target
	smpsCall		ZVN_Call20, Target
	smpsCall		ZVN_Call20, Target
	smpsCall		ZVN_Call21, Target
	smpsCall		ZVN_Call18, Target
	smpsCall		ZVN_Call17, Target
	smpsCall		ZVN_Call18, Target
	smpsCall		ZVN_Call19, Target
	smpsCall		ZVN_Call20, Target
	smpsCall		ZVN_Call20, Target
	smpsJump		ZVN_Jump3, Target

ZVN_Call15:
	smpsFMvoice		$00
	dc.b	nC4, $02, nG4, nC5, nG4, nD4, nG4, nC5
	dc.b	nBb4, nBb3, nEb4, nBb4, nEb4, nBb3, nEb4, nBb4
	dc.b	nEb4, nF4, nAb4, nF5, nAb4, nF4, nAb4, nF5
	dc.b	nAb4, nC4, nG4, nC5, nG4, nC4, nG4, nC5
	dc.b	nG4
	smpsReturn

ZVN_Call16:
	dc.b	nC4, $02, nG4, nC5, nG4, nD4, nG4, nC5
	dc.b	nBb4, nBb3, nEb4, nBb4, nEb4, nBb3, nEb4, nBb4
	dc.b	nEb4, nF4, nAb4, nF5, nAb4, nF4, nAb4, nF5
	dc.b	nAb4, nBb3, nF4, nBb4, nF4, nBb3, nF4, nBb4
	dc.b	nF4
	smpsReturn

ZVN_Call17:
	smpsFMvoice		$01
	dc.b	nC5, $02, nF5, $01, nEb5, nD5, $08, nC5
	dc.b	$02, nBb4, nEb5, $04, nC5, $01, nD5, nEb5
	dc.b	nAb5, nG5, $08, nF5, $10, nEb5, $08, nG5
	smpsReturn

ZVN_Call18:
	dc.b	nC6, $10, nBb5, $08, nAb5, nG5, $10, nRst
	smpsReturn

ZVN_Call19:
	dc.b	nEb5, $01, nF5, nG5, $06, nBb5, $08, nAb5
	dc.b	$04, nG5, $08, nF5, $06, nC5, $01, nD5
	dc.b	nEb5, $0C, nF5, $08, nBb4, $06, nEb5, $01
	dc.b	nF5
	smpsReturn

ZVN_Call20:
	dc.b	nG5, $08, nBb5, nAb5, $04, nG5, $08, nF5
	dc.b	$06, nC5, $01, nD5, nEb5, $08, nEb6, $04
	dc.b	nD6, $08, nBb5
	smpsReturn

ZVN_Call21:
	dc.b	nG5, $18, nEb5, $04, nD5, nEb5, $0A, nD5
	dc.b	$01, nEb5, nF5, $0C, nEb5, $04, nD5
	smpsReturn

ZVN_FM4:
	smpsCall		ZVN_Call22, Target
	smpsCall		ZVN_Call23, Target
	smpsCall		ZVN_Call24, Target

ZVN_Loop13:
	smpsCall		ZVN_Call25, Target
	smpsCall		ZVN_Call26, Target
	smpsLoop		$00, $02, ZVN_Loop13, Target
	smpsCall		ZVN_Call27, Target
	smpsCall		ZVN_Call27, Target

ZVN_Jump4:
	smpsCall		ZVN_Call27, Target
	smpsCall		ZVN_Call26, Target
	smpsCall		ZVN_Call25, Target
	smpsCall		ZVN_Call26, Target

ZVN_Loop14:
	smpsCall		ZVN_Call27, Target
	smpsLoop		$00, $03, ZVN_Loop14, Target
	smpsCall		ZVN_Call28, Target
	smpsCall		ZVN_Call26, Target
	smpsCall		ZVN_Call25, Target
	smpsCall		ZVN_Call26, Target

ZVN_Loop16:
	smpsCall		ZVN_Call27, Target
	smpsLoop		$00, $03, ZVN_Loop16, Target
	smpsJump		ZVN_Jump4, Target

ZVN_Call22:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call23:
	smpsFMvoice		$00
	dc.b	nC3, $10, nEb3, nF3, nBb3
	smpsReturn

ZVN_Call24:
	dc.b	nC3, $06, nC3, nC3, $04, nBb2, $06, nBb2
	dc.b	nBb2, $04, nF3, $06, nF3, nF3, $04, nBb3
	dc.b	$06, nBb3, nBb3, $04
	smpsReturn

ZVN_Call25:
	smpsFMvoice		$03

ZVN_Loop11:
	dc.b	nC5, $02, nC6, $04
	smpsLoop		$01, $0A, ZVN_Loop11, Target
	dc.b	nC5, $02, nC6
	smpsReturn

ZVN_Call26:
	dc.b	nF5, $02, nF6, $04
	smpsLoop		$01, $03, ZVN_Call26, Target
	dc.b	nEb5, $02, nEb6, $04, nEb5, $02, nEb6, $04
	dc.b	nEb5, $02

ZVN_Loop12:
	dc.b	nC6, $04, nC5, $02
	smpsLoop		$01, $05, ZVN_Loop12, Target
	dc.b	nC6
	smpsReturn

ZVN_Call27:
	dc.b	nEb5, $02, nEb6, $04
	smpsLoop		$01, $03, ZVN_Call27, Target
	dc.b	nF5, $02, nF6, $04, nF5, $02, nF6, $04
	dc.b	nF5, $02, nC6, $04, nC5, $02, nC6, $04
	dc.b	nC5, $02, nC6, $04, nBb4, $02, nBb5, $04
	dc.b	nBb4, $02, nBb5, $04, nBb4, $02, nBb5
	smpsReturn

ZVN_Call28:
	dc.b	nC6

ZVN_Loop15:
	dc.b	$04, nC5, $02, nC6, $04, nC5, $02, nC6
	dc.b	$04
	smpsLoop		$00, $04, ZVN_Loop15, Target
	smpsReturn

ZVN_FM5:
	smpsCall		ZVN_Call29, Target
	smpsCall		ZVN_Call30, Target
	smpsCall		ZVN_Call30, Target

ZVN_Loop18:
	smpsCall		ZVN_Call31, Target
	smpsCall		ZVN_Call32, Target
	smpsLoop		$00, $02, ZVN_Loop18, Target
	smpsCall		ZVN_Call33, Target
	smpsCall		ZVN_Call34, Target

ZVN_Jump5:
	smpsCall		ZVN_Call35, Target
	smpsCall		ZVN_Call32, Target
	smpsCall		ZVN_Call31, Target
	smpsCall		ZVN_Call32, Target
	smpsCall		ZVN_Call33, Target
	smpsCall		ZVN_Call34, Target
	smpsCall		ZVN_Call35, Target
	smpsCall		ZVN_Call36, Target
	smpsCall		ZVN_Call32, Target
	smpsCall		ZVN_Call31, Target
	smpsCall		ZVN_Call32, Target
	smpsCall		ZVN_Call33, Target
	smpsCall		ZVN_Call34, Target
	smpsCall		ZVN_Call35, Target
	smpsJump		ZVN_Jump5, Target

ZVN_Call29:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call30:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call31:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call32:
	smpsFMvoice		$00
	dc.b	nF3, $02, nC4, nF4, nC4, nF3, nC4, nF4
	dc.b	nC4, nEb3, nF3, nBb3, nF3, nEb3, nF3, nBb3
	dc.b	nF3

ZVN_Loop17:
	dc.b	nC3, nG3, nC4, nG3, nD4, nG3, nEb4, nG3
	smpsLoop		$01, $02, ZVN_Loop17, Target
	smpsReturn

ZVN_Call33:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call34:
	dc.b	nRst, $10, nRst, nRst
	smpsFMvoice		$01
	dc.b	nC4, $02, nD4, nEb4, nD4, nEb4, nF4, nG4
	dc.b	nBb4
	smpsReturn

ZVN_Call35:
	dc.b	nEb4, $10, nF4, $08, nG4, nC4, $0C, nEb4
	dc.b	$04, nBb4, $10
	smpsReturn

ZVN_Call36:
	dc.b	nRst, $02, nG5, $18, nEb5, $04, nD5, nEb5
	dc.b	$0A, nD5, $01, nEb5, nF5, $0C, nEb5, $06
	smpsReturn

ZVN_FM6:
	smpsCall		ZVN_Call37, Target
	smpsCall		ZVN_Call38, Target
	smpsCall		ZVN_Call38, Target

ZVN_Loop19:
	smpsCall		ZVN_Call39, Target
	smpsCall		ZVN_Call37, Target
	smpsLoop		$00, $02, ZVN_Loop19, Target
	smpsCall		ZVN_Call37, Target
	smpsCall		ZVN_Call37, Target

ZVN_Jump6:
	smpsCall		ZVN_Call37, Target
	smpsCall		ZVN_Call37, Target
	smpsCall		ZVN_Call39, Target

ZVN_Loop20:
	smpsCall		ZVN_Call37, Target
	smpsLoop		$00, $04, ZVN_Loop20, Target
	smpsCall		ZVN_Call40, Target
	smpsCall		ZVN_Call37, Target
	smpsCall		ZVN_Call39, Target

ZVN_Loop21:
	smpsCall		ZVN_Call37, Target
	smpsLoop		$00, $04, ZVN_Loop21, Target
	smpsJump		ZVN_Jump6, Target

ZVN_Call37:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call38:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call39:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_Call40:
	dc.b	nRst, $10, nRst, nRst
	smpsFMvoice		$01
	dc.b	nC4, $02, nD4, nEb4, nD4, nEb4, nF4, nG4
	dc.b	nBb4
	smpsReturn

ZVN_PSG1:
	smpsSetVol		PSGVol_Half
	smpsCall		ZVN_Call41, Target
	smpsCall		ZVN_Call42, Target
	smpsCall		ZVN_Call43, Target

ZVN_Loop24:
	smpsCall		ZVN_Call44, Target
	smpsCall		ZVN_Call45, Target
	smpsLoop		$00, $02, ZVN_Loop24, Target
	smpsCall		ZVN_Call46, Target
	smpsCall		ZVN_Call46, Target

ZVN_Jump7:
	smpsCall		ZVN_Call46, Target
	smpsCall		ZVN_Call45, Target
	smpsCall		ZVN_Call44, Target
	smpsCall		ZVN_Call45, Target

ZVN_Loop25:
	smpsCall		ZVN_Call46, Target
	smpsLoop		$00, $03, ZVN_Loop25, Target
	smpsCall		ZVN_Call47, Target
	smpsCall		ZVN_Call45, Target
	smpsCall		ZVN_Call44, Target
	smpsCall		ZVN_Call45, Target

ZVN_Loop27:
	smpsCall		ZVN_Call46, Target
	smpsLoop		$00, $03, ZVN_Loop27, Target
	smpsJump		ZVN_Jump7, Target

ZVN_Call41:
	smpsPSGvoice	$02
	dc.b	nEb4, $06
	smpsPSGvoice	$0A
	dc.b	nC4, $02, $04, nC5, nBb3, $06, $02, $04
	dc.b	nBb4, nF3, $06, $02, $04, nF4, nC4, $06
	dc.b	$02, $04, nC5
	smpsReturn

ZVN_Call42:
	dc.b	nC4, $06, $02, $04, nC5, nEb4, $06, $02
	dc.b	$04, nEb5, nF3, $06, $02, $04, nF4, nBb3
	dc.b	$06, $02, $04, nBb4
	smpsReturn

ZVN_Call43:
	smpsPSGvoice	$06
	dc.b	nC4, $0C, $04, nEb4, $0C, $04, nF4, $0C
	dc.b	$04, nBb3, $0C, $04
	smpsReturn

ZVN_Call44:
	smpsPSGvoice	$00
	dc.b	nC5

ZVN_Loop22:
	dc.b	$01, nC5, nC4, nC5, nBb4, nAb4, nC4, nF4
	dc.b	nC5, nC5, nC4, nC5, nBb4, nBb4, nC5, nEb4
	dc.b	nBb4, nC5, nC4, nC5, nG4, nC5, nF4, nC5
	dc.b	nC4, nC5, nF4, nC5, nG4, nC5, nC4, nC5
	smpsLoop		$01, $02, ZVN_Loop22, Target
	smpsReturn

ZVN_Call45:
	smpsPSGvoice	$00
	dc.b	nF4, $02, nG4, nC5, nBb4, nG5, nF5, nEb5
	dc.b	nD5, nEb4, nF4, nG4, nAb4, nC5, nEb5, nD5
	dc.b	nBb4

ZVN_Loop23:
	dc.b	nC4, nF4, nG4, nF4, nC5, nG4, nF4, nEb4
	smpsLoop		$01, $02, ZVN_Loop23, Target
	smpsReturn

ZVN_Call46:
	dc.b	nEb4, $02, nF4, nG4, nEb4, nBb4, nF4, nG4
	dc.b	nEb4, nF4, nG4, nAb4, nG4, nC5, nAb4, nG4
	dc.b	nF4, nC4, nD4, nEb4, nC4, nF4, nC4, nEb4
	dc.b	nC4, nBb3, nC4, nEb4, nF4, nG4, nF4, nEb4
	dc.b	nF4
	smpsReturn

ZVN_Call47:
	smpsPSGvoice	$02

ZVN_Loop26:
	dc.b	nC5, $02, nC4, nG5, nC4, nC6, nC4, nG5
	dc.b	nC4, nD6, nC4, nG5, nC4, nC6, nC4, nG5
	dc.b	nC4
	smpsLoop		$00, $02, ZVN_Loop26, Target
	smpsReturn

ZVN_PSG2:
	smpsSetVol		PSGVol_Qtr
	smpsCall		ZVN_Call48, Target
	smpsCall		ZVN_Call49, Target
	smpsCall		ZVN_Call50, Target

ZVN_Loop28:
	smpsCall		ZVN_Call51, Target
	smpsCall		ZVN_Call52, Target
	smpsLoop		$00, $02, ZVN_Loop28, Target
	smpsCall		ZVN_Call53, Target
	smpsCall		ZVN_Call53, Target

ZVN_Jum$8:
	smpsCall		ZVN_Call53, Target
	smpsCall		ZVN_Call52, Target
	smpsCall		ZVN_Call51, Target
	smpsCall		ZVN_Call52, Target

ZVN_Loop29:
	smpsCall		ZVN_Call53, Target
	smpsLoop		$00, $03, ZVN_Loop29, Target
	smpsCall		ZVN_Call54, Target
	smpsCall		ZVN_Call52, Target
	smpsCall		ZVN_Call51, Target
	smpsCall		ZVN_Call52, Target

ZVN_Loop30:
	smpsCall		ZVN_Call53, Target
	smpsLoop		$00, $03, ZVN_Loop30, Target
	smpsJump		ZVN_Jum$8, Target

ZVN_Call48:
	dc.b	nRst, $06
	smpsPSGvoice	$0A
	dc.b	nC5, $01, nD5, nEb5, $04, nF5, nEb5, $08
	dc.b	nC5, $06, nG4, $02, nAb4, $06, nC5, $02
	dc.b	nBb4, $04, nAb4, nG4, $10
	smpsReturn

ZVN_Call49:
	dc.b	nRst, $06, nC5, $01, nD5, nEb5, $04, nF5
	dc.b	nG5, $08, nEb5, $06, nG4, $02, nAb4, $06
	dc.b	nG4, $02, nF4, $04, nEb4, nBb4, $10
	smpsReturn

ZVN_Call50:
	dc.b	nC4, $06, nEb4, $04, nF4, $06, nBb4, $0C
	dc.b	nAb4, $02, nEb4, nF4, $0C, nG4, $02, nAb4
	dc.b	nG4, $0C
	smpsPSGvoice	$06
	dc.b	nF4, $04
	smpsReturn

ZVN_Call51:
	smpsPSGvoice	$00
	dc.b	nC4, $01, nC4, nC5, nC5, nC4, nC5, nBb4
	dc.b	nAb4, nC4, nF4, nC5, nC5, nC4, nC5, nBb4
	dc.b	nBb4, nC5, nEb4, nBb4, nC5, nC4, nC5, nG4
	dc.b	nC5, nF4, nC5, nC4, nC5, nF4, nC5, nG4
	dc.b	nC5, nC4, nC5, nC5, nC5, nC4, nC5, nBb4
	dc.b	nAb4, nC4, nF4, nC5, nC5, nC4, nC5, nBb4
	dc.b	nBb4, nC5, nEb4, nBb4, nC5, nC4, nC5, nG4
	dc.b	nC5, nF4, nC5, nC4, nC5, nF4, nC5, nG4
	dc.b	nC5
	smpsReturn

ZVN_Call52:
	dc.b	nRst, $02
	smpsPSGvoice	$00
	dc.b	nF4, nG4, nC5, nBb4, nG5, nF5, nEb5, nD5
	dc.b	nEb4, nF4, nG4, nAb4, nC5, nEb5, nD5, nBb4
	dc.b	nC4, nF4, nG4, nF4, nC5, nG4, nF4, nEb4
	dc.b	nC4, nF4, nG4, nF4, nC5, nG4, nF4
	smpsReturn

ZVN_Call53:
	dc.b	nRst, $02, nEb4, nF4, nG4, nEb4, nBb4, nF4
	dc.b	nG4, nEb4, nF4, nG4, nAb4, nG4, nC5, nAb4
	dc.b	nG4, nF4, nC4, nD4, nEb4, nC4, nF4, nC4
	dc.b	nEb4, nC4, nBb3, nC4, nEb4, nF4, nG4, nF4
	dc.b	nEb4
	smpsReturn

ZVN_Call54:
	dc.b	nRst, $02
	smpsPSGvoice	$02
	dc.b	nC5, nC4, nG5, nC4, nC6, nC4, nG5, nC4
	dc.b	nD6, nC4, nG5, nC4, nC6, nC4, nG5, nC4
	dc.b	nC5, nC4, nG5, nC4, nC6, nC4, nG5, nC4
	dc.b	nD6, nC4, nG5, nC4, nC6, nC4, nG5
	smpsReturn

ZVN_PSG3:
	smpsSetVol		PSGVol_Half
	smpsCall		ZVN_Call55, Target
	smpsCall		ZVN_Call56, Target
	smpsCall		ZVN_Call56, Target

ZVN_Loop33:
	smpsCall		ZVN_Call57, Target
	smpsCall		ZVN_Call58, Target
	smpsLoop		$00, $02, ZVN_Loop33, Target
	smpsCall		ZVN_Call59, Target
	smpsCall		ZVN_Call59, Target

ZVN_Jum$9:
	smpsCall		ZVN_Call59, Target
	smpsCall		ZVN_Call58, Target
	smpsCall		ZVN_Call57, Target
	smpsCall		ZVN_Call58, Target

ZVN_Loop34:
	smpsCall		ZVN_Call59, Target
	smpsLoop		$00, $03, ZVN_Loop34, Target
	smpsCall		ZVN_Call60, Target
	smpsCall		ZVN_Call58, Target
	smpsCall		ZVN_Call57, Target
	smpsCall		ZVN_Call58, Target

ZVN_Loop36:
	smpsCall		ZVN_Call59, Target
	smpsLoop		$00, $03, ZVN_Loop36, Target
	smpsJump		ZVN_Jum$9, Target

ZVN_Call55:
	smpsPSGvoice	$0A
	dc.b	nC4, $02, nG4, nC5, nG4, nD4, nG4, nC5
	dc.b	nBb4, nBb3, nEb4, nBb4, nEb4, nBb3, nEb4, nBb4
	dc.b	nEb4, nF4, nAb4, nF5, nAb4, nF4, nAb4, nF5
	dc.b	nAb4, nC4, nG4, nC5, nG4, nC4, nG4, nC5
	dc.b	nG4
	smpsReturn

ZVN_Call56:
	dc.b	nC4, $02, nG4, nC5, nG4, nD4, nG4, nC5
	dc.b	nBb4, nBb3, nEb4, nBb4, nEb4, nBb3, nEb4, nBb4
	dc.b	nEb4, nF4, nAb4, nF5, nAb4, nF4, nAb4, nF5
	dc.b	nAb4, nBb3, nF4, nBb4, nF4, nBb3, nF4, nBb4
	dc.b	nF4
	smpsReturn

ZVN_Call57:
	smpsPSGvoice	$06

ZVN_Loop31:
	dc.b	nC5, $02, nC6, $04
	smpsLoop		$01, $0A, ZVN_Loop31, Target
	dc.b	nC5, $02, nC6
	smpsReturn

ZVN_Call58:
	dc.b	nF5, $02, nF6, $04
	smpsLoop		$01, $03, ZVN_Call58, Target
	dc.b	nEb5, $02, nEb6, $04, nEb5, $02, nEb6, $04
	dc.b	nEb5, $02

ZVN_Loop32:
	dc.b	nC6, $04, nC5, $02
	smpsLoop		$01, $05, ZVN_Loop32, Target
	dc.b	nC6
	smpsReturn

ZVN_Call59:
	dc.b	nEb5, $02, nEb6, $04
	smpsLoop		$01, $03, ZVN_Call59, Target
	dc.b	nF5, $02, nF6, $04, nF5, $02, nF6, $04
	dc.b	nF5, $02, nC6, $04, nC5, $02, nC6, $04
	dc.b	nC5, $02, nC6, $04, nBb4, $02, nBb5, $04
	dc.b	nBb4, $02, nBb5, $04, nBb4, $02, nBb5
	smpsReturn

ZVN_Call60:
	dc.b	nC6

ZVN_Loop35:
	dc.b	$04, nC5, $02, nC6, $04, nC5, $02, nC6
	dc.b	$04
	smpsLoop		$00, $04, ZVN_Loop35, Target
	smpsReturn
	
ZVN_PWM1:
	smpsCall		ZVN_PWM1_Call1, Target
	smpsLoop		$00, $03, ZVN_PWM1, Target

ZVN_PWM1_Loop2:
	smpsCall		ZVN_PWM1_Call2, Target
	smpsCall		ZVN_PWM1_Call3, Target
	smpsLoop		$00, $02, ZVN_PWM1_Loop2, Target
	smpsCall		ZVN_PWM1_Call2, Target
	smpsCall		ZVN_PWM1_Call2, Target

ZVN_PWM1_Loop3:
	smpsCall		ZVN_PWM1_Call2, Target
	smpsCall		ZVN_PWM1_Call3, Target
	smpsLoop		$00, $02, ZVN_PWM1_Loop3, Target

ZVN_PWM1_Loop4:
	smpsCall		ZVN_PWM1_Call2, Target
	smpsLoop		$00, $03, ZVN_PWM1_Loop4, Target
	smpsCall		ZVN_PWM1_Call1, Target

ZVN_PWM1_Loop5:
	smpsCall		ZVN_PWM1_Call3, Target
	smpsCall		ZVN_PWM1_Call2, Target
	smpsLoop		$00, $02, ZVN_PWM1_Loop5, Target
	smpsCall		ZVN_PWM1_Call2, Target
	smpsCall		ZVN_PWM1_Call4, Target
	smpsJump		ZVN_PWM1_Loop3, Target

ZVN_PWM1_Call1:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_PWM1_Call2:
	dc.b	$98

ZVN_PWM1_Loop1:
	dc.b	$02, $98, $98, $98, $04, $02, $04, $98
	dc.b	$98, $02, $04, $01, $98, $98, $04
	smpsLoop		$01, $02, ZVN_PWM1_Loop1, Target
	smpsReturn

ZVN_PWM1_Call3:
	dc.b	$98, $04, $06, $98, $98, $04, $02, $04
	dc.b	$01, $98, $98, $04, $0A, $02, $04, $98
	dc.b	$98, $02, $0A
	smpsReturn

ZVN_PWM1_Call4:
	dc.b	$98

ZVN_PWM1_Loop6:
	dc.b	$02, $98, $98, $98, $04, $02, $04, $98
	dc.b	$98, $02, $04, $01, $98, $98, $04
	smpsLoop		$00, $02, ZVN_PWM1_Loop6, Target
	smpsReturn
	
ZVN_PWM2:
	smpsCall		ZVN_PWM2_Call1, Target
	smpsLoop		$00, $03, ZVN_PWM2, Target

ZVN_PWM2_Loop1:
	smpsCall		ZVN_PWM2_Call2, Target
	smpsCall		ZVN_PWM2_Call3, Target
	smpsLoop		$00, $02, ZVN_PWM2_Loop1, Target
	smpsCall		ZVN_PWM2_Call4, Target
	smpsCall		ZVN_PWM2_Call2, Target

ZVN_PWM2_Loop2:
	smpsCall		ZVN_PWM2_Call2, Target
	smpsCall		ZVN_PWM2_Call3, Target
	smpsLoop		$00, $02, ZVN_PWM2_Loop2, Target
	smpsCall		ZVN_PWM2_Call4, Target
	smpsCall		ZVN_PWM2_Call2, Target
	smpsCall		ZVN_PWM2_Call2, Target
	smpsCall		ZVN_PWM2_Call1, Target
	smpsCall		ZVN_PWM2_Call3, Target
	smpsCall		ZVN_PWM2_Call2, Target
	smpsCall		ZVN_PWM2_Call3, Target
	smpsCall		ZVN_PWM2_Call4, Target
	smpsCall		ZVN_PWM2_Call2, Target
	smpsCall		ZVN_PWM2_Call2, Target
	smpsJump		ZVN_PWM2_Loop2, Target

ZVN_PWM2_Call1:
	dc.b	nRst, $10, nRst, nRst, nRst
	smpsReturn

ZVN_PWM2_Call2:
	dc.b	nRst, $08, $8C, $06, $04, $06, $8C, $8C
	dc.b	$0A, $06, $04, $06, $8C, $8C, $02
	smpsReturn

ZVN_PWM2_Call3:
	dc.b	nRst, $02, $8C, $04, $06, $01, $8C, $8C
	dc.b	$04, $06, $8C, $8C, $04, $02, $8C, $8C
	dc.b	$8C, $06, $04, $06, $02, $01, $8C, $8C
	dc.b	$02, $8C
	smpsReturn

ZVN_PWM2_Call4:
	dc.b	nRst, $08, $8C, $06, $04, $06, $8C, $8C
	dc.b	$0A, $06, $04, $06, $8C, $8C, $02
	smpsReturn
	
ZVN_PWM3:
ZVN_PWM4:
	smpsStop

ZVN_Patches:	
	dc.b	$07
	dc.b	$01, $33, $D4, $08,	$DF, $DF, $DF, $DF
	dc.b	$03, $05, $05, $05,	$00, $00, $00, $00
	dc.b	$2A, $2A, $2A, $2A,	$18, $18, $1F, $1F
	
	dc.b	$2E
	dc.b	$D5, $32, $D3, $31,	$1C, $0A, $0F, $0F
	dc.b	$02, $04, $02, $04,	$02, $04, $04, $04
	dc.b	$06, $06, $06, $06,	$26, $14, $1A, $14
	
	dc.b	$1C
	dc.b	$31, $37, $D1, $D1,	$16, $13, $17, $14
	dc.b	$08, $08, $09, $08,	$0A, $0A, $0A, $0A
	dc.b	$03, $13, $03, $13,	$20, $1A, $18, $1A
	
	dc.b	$3D
	dc.b	$00, $30, $D0, $00,	$1F, $1F, $1F, $11
	dc.b	$0B, $09, $00, $1F,	$00, $00, $00, $00
	dc.b	$FF, $F9, $0F, $07,	$20, $12, $16, $20
