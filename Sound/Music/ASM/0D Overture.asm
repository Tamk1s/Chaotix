
Target	EQU	$46105
	smpsHeaderVoice	Overture_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $1E
	smpsHeaderFM	Overture_FM1, Target, $00, $10
	smpsHeaderFM	Overture_FM2, Target, $00, $15
	smpsHeaderFM	Overture_FM3, Target, $00, $15
	smpsHeaderFM	Overture_FM4, Target, $00, $15
	smpsHeaderFM	Overture_FM5, Target, $00, $15
	smpsHeaderFM	Overture_FM6, Target, $00, $15
	smpsHeaderPSG	Overture_PSG1, Target, $F4, $06, $00, $0C
	smpsHeaderPSG	Overture_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Overture_PSG3, Target, $F4, $05, $00, $02
	smpsHeaderPWM	Overture_PWM1, Target, $00, $99
	smpsHeaderPWM	Overture_PWM2, Target, $00, $11
	smpsHeaderPWM	Overture_PWM3, Target, $00, $99
	smpsHeaderPWM	Overture_PWM4, Target, $00, $33

Overture_FM1:
	smpsFMvoice		$00
	smpsModSet	$09, $01, $02, $00
	dc.b	nC2, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump1:
	dc.b	nD2, $60, smpsNoAttack, $60, nC2, smpsNoAttack, $60
	smpsJump		Overture_Jump1, Target

Overture_FM2:
	smpsModSet	$09, $01, $02, $00
	smpsFMvoice		$04
	smpsPan		panRight
	dc.b	nF3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan		panCenter

Overture_Loop2:
	smpsFMvoice		$02
	dc.b	nF5, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter

Overture_Loop1:
	dc.b	$06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$02
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsLoop		$00, $03, Overture_Loop1, Target
	smpsLoop		$01, $02, Overture_Loop2, Target
	dc.b	nF5, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsModSet	$01, $01, $03, $03
	dc.b	nRst, $18, nC4, $30
	smpsModSet	$00, $00, $00, $00
	smpsAlterPitch	$FE
	smpsLoop		$02, $02, Overture_Loop2, Target
	smpsAlterPitch	$04
	smpsJump		Overture_Loop2, Target

Overture_FM3:
	smpsModSet	$09, $01, $02, $00
	smpsFMvoice		$04
	dc.b	nC3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Loop4:
	smpsFMvoice		$02
	dc.b	nC5, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6

Overture_Loop3:
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$02
	smpsAlterVol		$F6
	smpsLoop		$00, $03, Overture_Loop3, Target
	smpsLoop		$01, $02, Overture_Loop4, Target
	dc.b	nC5, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$01
	smpsModSet	$01, $01, $03, $03
	dc.b	nRst, $30
	smpsPan		panRight
	dc.b	nF4, $18
	smpsPan		panCenter
	smpsModSet	$00, $00, $00, $00
	smpsAlterPitch	$FE
	smpsLoop		$03, $02, Overture_Loop4, Target
	smpsAlterPitch	$04
	smpsJump		Overture_Loop4, Target

Overture_FM4:
	smpsModSet	$09, $01, $02, $00
	smpsPan		panLeft
	smpsFMvoice		$04
	dc.b	nG2, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30
	smpsPan		panCenter

Overture_Loop6:
	smpsFMvoice		$02
	dc.b	nG4, $12
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter

Overture_Loop5:
	dc.b	$06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$02
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsLoop		$00, $03, Overture_Loop5, Target
	smpsLoop		$01, $02, Overture_Loop6, Target
	dc.b	nG4, $12
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsModSet	$01, $01, $03, $04
	smpsAlterVol		$07
	dc.b	nRst, $06, nG3, $18, nC4
	smpsPan		panLeft
	dc.b	nF4, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsFMvoice		$02
	smpsAlterPitch	$FE
	smpsLoop		$02, $02, Overture_Loop6, Target
	smpsAlterPitch	$04
	smpsJump		Overture_Loop6, Target

Overture_FM5:
	dc.b	nRst, $60

Overture_Loop7:
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsCall		Overture_Call1, Target
	smpsFMvoice		$01
	smpsModSet	$01, $01, $03, $04
	dc.b	nD3, $60
	smpsModSet	$00, $00, $00, $00
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, Overture_Loop7, Target
	smpsAlterPitch	$04
	smpsJump		Overture_Loop7, Target

Overture_Call1:
	dc.b	nE4, $08, nEb4, nD4, $50
	smpsReturn

Overture_FM6:
	dc.b	nRst, $60

Overture_Loo$8:
	smpsFMvoice		$03
	smpsPan		panRight
	smpsAlterPitch	$F9
	smpsCall		Overture_Call1, Target
	smpsAlterPitch	$07
	smpsFMvoice		$01
	smpsPan		panLeft
	smpsModSet	$01, $01, $03, $03
	smpsAlterVol		$07
	dc.b	nRst, $06, nD3, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nG3, $48
	smpsModSet	$00, $00, $00, $00
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, Overture_Loo$8, Target
	smpsAlterPitch	$04
	smpsJump		Overture_Loo$8, Target

Overture_PSG1:
	smpsPSGvoice	$04
	smpsModSet	$09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump2:
	smpsModSet	$03, $01, $04, $03
	dc.b	nG3, $60, smpsNoAttack, $60, nF3, smpsNoAttack, $60
	smpsJump		Overture_Jump2, Target

Overture_PSG2:
	smpsPSGvoice	$04
	smpsModSet	$09, $02, $FF, $00
	dc.b	nBb2, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump3:
	smpsModSet	$01, $01, $02, $03
	dc.b	nC3, $60, smpsNoAttack, $60, nBb2, smpsNoAttack, $60
	smpsJump		Overture_Jump3, Target

Overture_PSG3:
	smpsPSGvoice	$04
	smpsModSet	$09, $02, $FF, $00
	dc.b	nF3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $30

Overture_Jump4:
	smpsModSet	$02, $01, $03, $03
	dc.b	nG3, $60, smpsNoAttack, $60, nF3, smpsNoAttack, $60
	smpsJump		Overture_Jump4, Target

Overture_PWM1:
	dc.b	$96, $60

Overture_Jump5:
	dc.b	$8B, $60, $8B, $8B, $8B
	smpsJump		Overture_Jump5, Target

Overture_PWM2:
	dc.b	$82, $04, $82, $82
	smpsAlterVol		$11
	smpsLoop		$00, $04, Overture_PWM2, Target

Overture_Loo$9:
	dc.b	$82, $04, $82
	smpsAlterVol		$11
	smpsLoop		$00, $06, Overture_Loo$9, Target

Overture_Loop10:
	dc.b	$82, $18, $08, $08, $08, $18, $14
	smpsAlterVol		$CD
	dc.b	$02, $02
	smpsAlterVol		$33
	dc.b	$18, $08, $08, $08, $08, $08, $08, $08
	dc.b	$08, $08
	smpsLoop		$00, $02, Overture_Loop10, Target
	smpsJump		Overture_Loop10, Target

Overture_PWM3:
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04

Overture_Loop11:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	smpsLoop		$00, $02, Overture_Loop11, Target
	smpsJump		Overture_Loop11, Target

Overture_PWM4:
	dc.b	$95, $03
	smpsLoop		$00, $04, Overture_PWM4, Target
	smpsAlterVol		$11
	smpsLoop		$01, $08, Overture_PWM4, Target

Overture_Jump6:
	dc.b	$94, $60, $95, $94, $95
	smpsJump		Overture_Jump6, Target

Overture_Patches:

	
	dc.b	$37
	dc.b	$32, $34, $32, $31,	$9E, $DC, $1C, $5C
	dc.b	$05, $06, $04, $01,	$02, $0A, $03, $03
	dc.b	$1F, $2F, $2F, $0F,	$85, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$34
	dc.b	$3F, $01, $02, $11,	$1F, $1F, $1F, $1F
	dc.b	$0E, $08, $0F, $09,	$0F, $04, $05, $00
	dc.b	$6F, $0D, $1F, $1D,	$0F, $80, $10, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$51, $12, $01, $01,	$94, $1C, $1C, $1C
	dc.b	$0F, $0F, $0F, $0F,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$11, $82, $82, $82
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$04
	dc.b	$71, $01, $31, $31,	$15, $15, $15, $15
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1A, $80, $19, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$28
	dc.b	$44, $47, $12, $71,	$1F, $12, $1F, $1F
	dc.b	$04, $01, $04, $0C,	$01, $01, $01, $00
	dc.b	$1F, $1F, $1F, $1F,	$26, $17, $14, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
