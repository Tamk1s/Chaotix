
Target	EQU	$46FE8
	smpsHeaderVoice	Moonrise_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $25
	smpsHeaderFM	Moonrise_FM1, Target, $00, $0D
	smpsHeaderFM	Moonrise_FM2, Target, $00, $0C
	smpsHeaderFM	Moonrise_FM3, Target, $00, $0C
	smpsHeaderFM	Moonrise_FM4, Target, $00, $0C
	smpsHeaderFM	Moonrise_FM5, Target, $00, $0C
	smpsHeaderFM	Moonrise_FM6, Target, $0C, $15
	smpsHeaderPSG	Moonrise_PSG1, Target, $00, $01, $00, $0C
	smpsHeaderPSG	Moonrise_PSG2, Target, $00, $03, $00, $0C
	smpsHeaderPSG	Moonrise_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Moonrise_PWM1, Target, $00, $AA
	smpsHeaderPWM	Moonrise_PWM2, Target, $00, $BB
	smpsHeaderPWM	Moonrise_PWM3, Target, $00, $99
	smpsHeaderPWM	Moonrise_PWM4, Target, $00, $75

Moonrise_FM1:
	smpsFMvoice		$00

Moonrise_Loop1:
	smpsCall		Moonrise_Call1, Target
	smpsLoop		$01, $02, Moonrise_Loop1, Target

Moonrise_Loop2:
	smpsCall		Moonrise_Call1, Target
	smpsLoop		$01, $04, Moonrise_Loop2, Target
	smpsJump		Moonrise_Loop2, Target

Moonrise_Call1:
	dc.b	nD2, $12, nD2, nC2, $0C
	smpsLoop		$00, $03, Moonrise_Call1, Target
	dc.b	nG2, $12, nF2, nC2, $0C
	smpsReturn

Moonrise_FM2:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $60, nRst, $54, nD3, $0C, smpsNoAttack, $60
	smpsPan		panCenter
	smpsFMvoice		$02
	smpsAlterVol		$09
	smpsAlterPitch	$0C
	dc.b	nG4, $12
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs4, $12
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06, nC4, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter

Moonrise_Jump1:
	dc.b	nF4, $12, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06
	smpsFMvoice		$01
	smpsAlterVol		$F7
	smpsAlterPitch	$F4

Moonrise_Loop3:
	smpsCall		Moonrise_Call2, Target
	smpsLoop		$00, $06, Moonrise_Loop3, Target
	smpsFMvoice		$02
	smpsAlterVol		$09
	smpsAlterPitch	$0C
	dc.b	nRst, $06, nC4, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $12, nD4, $0C, nRst, $12
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsAlterVol		$F7
	smpsAlterPitch	$F4
	smpsCall		Moonrise_Call2, Target
	smpsCall		Moonrise_Call2, Target
	smpsCall		Moonrise_Call2, Target
	smpsFMvoice		$02
	smpsAlterVol		$09
	smpsAlterPitch	$0C

Moonrise_Loop4:
	dc.b	nF4, $12
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsLoop		$00, $06, Moonrise_Loop4, Target
	dc.b	nF4, $06, nC4, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsJump		Moonrise_Jump1, Target

Moonrise_Call2:
	dc.b	nF3, $12, $06
	smpsAlterVol		$0A
	dc.b	nRst, $0C, nF3, $06, nRst
	smpsAlterVol		$F6
	smpsReturn

Moonrise_FM3:
	smpsFMvoice		$01
	dc.b	nRst, $60, nRst, $58, nF3, $08, smpsNoAttack, $60
	dc.b	smpsNoAttack, $60
	smpsPan		panRight

Moonrise_Loop5:
	smpsCall		Moonrise_Call3, Target
	smpsCall		Moonrise_Call3, Target
	smpsCall		Moonrise_Call3, Target
	smpsAlterPitch	$02
	smpsCall		Moonrise_Call3, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $04, Moonrise_Loop5, Target
	smpsJump		Moonrise_Loop5, Target

Moonrise_Call3:
	dc.b	nA3, $12, $06
	smpsAlterVol		$0A
	dc.b	nRst, $0C, nA3, $06, nRst
	smpsAlterVol		$F6
	smpsReturn

Moonrise_FM4:
	smpsFMvoice		$01
	dc.b	nRst, $60, nRst, $5C, nA3, $04, smpsNoAttack, $60
	dc.b	smpsNoAttack, $60
	smpsPan		panLeft

Moonrise_Loop6:
	smpsCall		Moonrise_Call4, Target
	smpsAlterPitch	$FF
	smpsCall		Moonrise_Call4, Target
	smpsAlterPitch	$01
	smpsCall		Moonrise_Call4, Target
	smpsAlterPitch	$02
	smpsCall		Moonrise_Call4, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $04, Moonrise_Loop6, Target
	smpsJump		Moonrise_Loop6, Target

Moonrise_Call4:
	dc.b	nC3, $12, $06
	smpsAlterVol		$0A
	dc.b	nRst, $0C, nC3, $06, nRst
	smpsAlterVol		$F6
	smpsReturn

Moonrise_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nRst, $60, nRst, nC4, smpsNoAttack, $30
	smpsAlterVol		$0A
	smpsCall		Moonrise_Call5, Target

Moonrise_Loop7:
	smpsCall		Moonrise_Call6, Target
	smpsCall		Moonrise_Call7, Target
	smpsCall		Moonrise_Call6, Target
	smpsCall		Moonrise_Call8, Target
	smpsCall		Moonrise_Call6, Target
	smpsCall		Moonrise_Call7, Target
	smpsCall		Moonrise_Call6, Target
	smpsCall		Moonrise_Call5, Target
	smpsLoop		$00, $02, Moonrise_Loop7, Target
	smpsJump		Moonrise_Loop7, Target

Moonrise_Call5:
	smpsFMvoice		$03
	smpsPan		panLeft
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan		panRight
	dc.b	nG5, nF5, nD5, nG4
	smpsPan		panCenter
	smpsFMvoice		$04
	smpsReturn

Moonrise_Call6:
	dc.b	nG4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsReturn

Moonrise_Call7:
	dc.b	nG4, $06, nF4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsReturn

Moonrise_Call8:
	dc.b	nG4, $06, nF4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3
	smpsReturn

Moonrise_FM6:
	smpsFMvoice		$02
	dc.b	nRst, $60, nRst, nRst, nD4, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $06, nG3, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter

Moonrise_Jump2:
	dc.b	nC4, $12, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $36, nRst, $60, nRst, nRst, $30, nRst
	dc.b	$06, nG3, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $30, nRst, $60

Moonrise_Loo$8:
	dc.b	nF3, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsLoop		$00, $06, Moonrise_Loo$8, Target
	dc.b	nC4, $06, nG3, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsJump		Moonrise_Jump2, Target

Moonrise_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $60, nRst, nRst, nRst, $30, nG4, $06
	dc.b	nFs4, nF4, nD4, nC4, nA3, nG3, nD3

Moonrise_Jump3:
	smpsCall		Moonrise_Call9, Target
	smpsJump		Moonrise_Jump3, Target

Moonrise_Call9:
	dc.b	nF3, $0C, nRst, nG3, nRst, nB3, $12, nG3
	dc.b	$06, nRst, $0C, nC4, smpsNoAttack, $06, nRst, nB3
	dc.b	nRst, nC4, nD4, nRst, nC4, $0C, nRst, $06
	dc.b	nB3, $12, nRst, $06, nG3, $0C, nF3, $0C
	dc.b	nRst, nG3, nRst, nB3, $12, nG3, $06, nRst
	dc.b	$0C, nF4, smpsNoAttack, $06, nRst, nG4, nRst, nF4
	dc.b	nE4, nRst, nD4, $36, nRst, $0C, nC4, $18
	dc.b	nA3, $06, nRst, nD4, $12, nA3, $06, nRst
	dc.b	$18, nRst, $0C, nC4, $18, nA3, $06, nRst
	dc.b	nC4, $12, nD4, $06, nRst, $0C, nF4, $06
	dc.b	nFs4, nG4, $60, smpsNoAttack, $24, nRst, $0C, nG4
	dc.b	$06, nFs4, nF4, nD4, nC4, nA3, nG3, nD3
	smpsReturn

Moonrise_PSG2:
	smpsModSet	$05, $02, $01, $04
	smpsPSGvoice	$08
	dc.b	nRst, $06, nRst, $60, nRst, nRst, nRst, $30
	dc.b	nG4, $06, nFs4, nF4, nD4, nC4, nA3, nG3
	dc.b	nD3

Moonrise_Jump4:
	smpsCall		Moonrise_Call9, Target
	smpsJump		Moonrise_Jump4, Target

Moonrise_PSG3:
	smpsPSGform	$E7

Moonrise_Loo$9:
	smpsCall		Moonrise_Call10, Target
	smpsLoop		$01, $04, Moonrise_Loo$9, Target

Moonrise_Loop10:
	smpsCall		Moonrise_Call10, Target
	smpsLoop		$01, $08, Moonrise_Loop10, Target
	smpsJump		Moonrise_Loop10, Target

Moonrise_Call10:
	smpsPSGvoice	$02
	dc.b	nC4, $06
	smpsLoop		$00, $0A, Moonrise_Call10, Target
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsReturn

Moonrise_PWM1:
	dc.b	$8B, $30, $30, $30, $06, $0C, $06, nRst
	dc.b	$18
	smpsLoop		$00, $02, Moonrise_PWM1, Target

Moonrise_Loop11:
	dc.b	$8B, $12, $06, nRst, $18
	smpsLoop		$00, $03, Moonrise_Loop11, Target
	dc.b	$8B, $06, $0C, $06, nRst, $18
	smpsLoop		$01, $04, Moonrise_Loop11, Target
	smpsJump		Moonrise_Loop11, Target

Moonrise_PWM2:
	dc.b	$96, $60, nRst, $3C, $8C, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06
	smpsAlterVol		$07
	dc.b	$86, $0C
	smpsAlterVol		$90
	dc.b	$87, $06
	smpsAlterVol		$70
	dc.b	nRst, $60, smpsNoAttack, $3C, $8C, $04, $04, $04
	dc.b	$06, $06, $06, $06

Moonrise_Jump5:
	dc.b	nRst, $18, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, $12, $06, nRst, $18, $8C, nRst, $8C
	dc.b	nRst, $8C, nRst, $8C, nRst, $8C, nRst, $8C
	dc.b	nRst, $8C, nRst, $0C, $8C, $04, $04, $04
	dc.b	$06, $06, $06, $06
	smpsJump		Moonrise_Jump5, Target

Moonrise_PWM3:
	smpsAlterVol		$C0
	dc.b	$89, $60, nRst, $89
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04

Moonrise_Jump6:
	smpsAlterVol		$C0
	dc.b	$89, $60, nRst, nRst, nRst, $89
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	dc.b	nRst
	smpsJump		Moonrise_Jump6, Target

Moonrise_PWM4:
	smpsCall		Moonrise_Call11, Target
	smpsLoop		$01, $04, Moonrise_PWM4, Target

Moonrise_Loop12:
	smpsCall		Moonrise_Call11, Target
	smpsLoop		$01, $08, Moonrise_Loop12, Target
	smpsJump		Moonrise_Loop12, Target

Moonrise_Call11:
	dc.b	$88, $06
	smpsAlterVol		$AB
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$55
	smpsLoop		$00, $04, Moonrise_Call11, Target
	smpsReturn

Moonrise_Patches:

	
	dc.b	$3C
	dc.b	$01, $00, $00, $00,	$1F, $1F, $15, $1F
	dc.b	$11, $0D, $12, $05,	$07, $04, $09, $02
	dc.b	$55, $3A, $25, $1A,	$1A, $80, $07, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$84
	dc.b	$3F, $01, $01, $01,	$1F, $1F, $5F, $5F
	dc.b	$0E, $12, $0F, $12,	$0F, $06, $05, $06
	dc.b	$2F, $1F, $1F, $1F,	$3F, $80, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $03, $03, $05,	$00, $01, $02, $01
	dc.b	$0F, $1C, $1C, $1C,	$22, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$76
	dc.b	$7A, $32, $51, $11,	$1F, $7F, $9F, $9D
	dc.b	$0A, $0E, $0B, $0A,	$01, $02, $05, $02
	dc.b	$AF, $8F, $9F, $8F,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
