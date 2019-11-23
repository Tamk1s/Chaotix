
Target	EQU	$4915D
	smpsHeaderVoice	MechDance_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $3A
	smpsHeaderFM	MechDance_FM1, Target, $00, $0D
	smpsHeaderFM	MechDance_FM2, Target, $00, $0D
	smpsHeaderFM	MechDance_FM3, Target, $00, $0D
	smpsHeaderFM	MechDance_FM4, Target, $00, $0E
	smpsHeaderFM	MechDance_FM5, Target, $00, $0E
	smpsHeaderFM	MechDance_FM6, Target, $0C, $16
	smpsHeaderPSG	MechDance_PSG1, Target, $E8, $02, $00, $0C
	smpsHeaderPSG	MechDance_PSG2, Target, $E8, $02, $00, $0C
	smpsHeaderPSG	MechDance_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	MechDance_PWM1, Target, $00, $BB
	smpsHeaderPWM	MechDance_PWM2, Target, $00, $CC
	smpsHeaderPWM	MechDance_PWM3, Target, $00, $BB
	smpsHeaderPWM	MechDance_PWM4, Target, $00, $A6

MechDance_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $60, nRst, $54, nCs1, $0C

MechDance_Loop1:
	dc.b	nEb1, $0C, nCs1, nEb1, nRst, $06, nEb1, nRst
	dc.b	nEb1, $06, $0C, nFs1, nCs1
	smpsLoop		$00, $04, MechDance_Loop1, Target
	smpsJump		MechDance_Loop1, Target

MechDance_FM2:
	smpsFMvoice		$01
	smpsPan		panRight
	smpsAlterNote	$03
	smpsModSet	$01, $01, $02, $03
	smpsAlterVol		$0F
	smpsCall		MechDance_Call1, Target
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsAlterNote	$FD
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$F1
	smpsAlterPitch	$0C

MechDance_Jump1:
	dc.b	nCs3, $0C, nEb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panRight
	dc.b	nEb4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nFs3, $0C, nEb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panRight
	dc.b	nEb4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nCs3, $0C, nEb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nFs3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nAb3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nBb3, $0C, nCs3, $0C, nEb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panRight
	dc.b	nEb4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nFs3, $0C, nEb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panRight
	dc.b	nEb4, $06
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nA3, $0C, smpsNoAttack, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C, nAb3, nFs3, $0C, smpsNoAttack, $0C, nBb2, nA2
	dc.b	nAb2
	smpsJump		MechDance_Jump1, Target

MechDance_FM3:
	smpsFMvoice		$01
	smpsPan		panLeft
	smpsAlterNote	$03
	smpsModSet	$01, $01, $02, $03
	smpsAlterVol		$0F
	smpsCall		MechDance_Call2, Target
	smpsCall		MechDance_Call2, Target
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsAlterNote	$FD
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$F1
	smpsAlterPitch	$0C

MechDance_Jump2:
	dc.b	nCs2, $0C, nEb2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b	nFs3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nFs2, $0C, nEb2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b	nFs3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nCs2, $0C, nEb2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nFs2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nAb2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nBb2, $0C, nCs2, $0C, nEb2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b	nFs3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nFs2, $0C, nEb2
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b	nFs3, $06
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nA2, $0C, smpsNoAttack, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	$0C, nAb2, nFs2, $0C, smpsNoAttack, $0C, nBb1, nA1
	dc.b	nAb1
	smpsJump		MechDance_Jump2, Target

MechDance_FM4:
	smpsFMvoice		$01
	smpsPan		panRight
	smpsCall		MechDance_Call1, Target

MechDance_Jump3:
	smpsCall		MechDance_Call1, Target
	smpsCall		MechDance_Call1, Target
	smpsJump		MechDance_Jump3, Target

MechDance_Call1:
	dc.b	nBb4, $06, nEb4, nFs4, nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nRst, nCs5
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nCs5, nCs5
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $18, nBb4, $06, nEb4, nFs4, nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nRst, nCs5
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, nFs4, nEb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsReturn

MechDance_FM5:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $1E, nCs4, $06, nD4, nEb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nFs4, nEb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nCs4, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nEb4
	smpsCall		MechDance_Call2, Target

MechDance_Loop2:
	smpsCall		MechDance_Call2, Target
	smpsLoop		$00, $04, MechDance_Loop2, Target
	smpsJump		MechDance_Loop2, Target

MechDance_Call2:
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $18, nCs4, $06, nD4, nEb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nFs4, nEb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nCs4, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nEb4
	smpsReturn

MechDance_FM6:
	smpsFMvoice		$03
	dc.b	nRst, $60, nRst, nRst, $04
	smpsAlterNote	$FE
	smpsModSet	$01, $01, $02, $04
	smpsPan		panLeft

MechDance_Jump4:
	dc.b	nCs3, $0C, nEb3, nRst, $18, nFs3, $0C, nEb3
	dc.b	nRst, $18, nCs3, $0C, nEb3, nRst, nFs3, nRst
	dc.b	nAb3, nRst, nBb3, nCs3, $0C, nEb3, nRst, $18
	dc.b	nFs3, $0C, nEb3, nRst, nA3, smpsNoAttack, $06, nRst
	dc.b	nA3, $0C, nAb3, nFs3, $18, nBb2, $0C, nA2
	dc.b	nAb2
	smpsJump		MechDance_Jump4, Target

MechDance_PSG1:
	smpsPSGvoice	$09
	dc.b	nRst, $60, nRst
	smpsModSet	$05, $01, $02, $05

MechDance_Loop3:
	dc.b	nBb3, $60, nCs4
	smpsLoop		$00, $02, MechDance_Loop3, Target
	smpsJump		MechDance_Loop3, Target

MechDance_PSG2:
	smpsPSGvoice	$09
	dc.b	nRst, $60, nRst
	smpsModSet	$05, $01, $02, $05

MechDance_Loop4:
	dc.b	nCs3, $60, nFs3
	smpsLoop		$00, $02, MechDance_Loop4, Target
	smpsJump		MechDance_Loop4, Target

MechDance_PSG3:
	smpsPSGform	$E7
	smpsCall		MechDance_Call3, Target

MechDance_Jump5:
	smpsCall		MechDance_Call3, Target
	smpsCall		MechDance_Call3, Target
	smpsJump		MechDance_Jump5, Target

MechDance_Call3:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C
	smpsLoop		$00, $04, MechDance_Call3, Target
	smpsReturn

MechDance_PWM1:
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, $0C, nRst, $18, $81, $18, nRst, $12
	dc.b	$81, $06, nRst, $81, $81, $0C, nRst, $18

MechDance_Loop5:
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, $0C, nRst, $18
	smpsLoop		$00, $08, MechDance_Loop5, Target
	smpsJump		MechDance_Loop5, Target

MechDance_PWM2:
	dc.b	$96, $18, $82, nRst, $82, $12
	smpsAlterVol		$BC
	dc.b	$03
	smpsAlterVol		$22
	dc.b	$03
	smpsAlterVol		$22
	dc.b	nRst, $18, $82, nRst, $82

MechDance_Loop6:
	dc.b	nRst, $18, $82, nRst, $82, $12
	smpsAlterVol		$BC
	dc.b	$03
	smpsAlterVol		$22
	dc.b	$03
	smpsAlterVol		$22
	dc.b	nRst, $18, $82, nRst, $82
	smpsLoop		$00, $04, MechDance_Loop6, Target
	smpsJump		MechDance_Loop6, Target

MechDance_PWM3:
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst

MechDance_Loop7:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $02, MechDance_Loop7, Target
	smpsJump		MechDance_Loop7, Target

MechDance_PWM4:
	dc.b	$88, $06
	smpsAlterVol		$CD
	dc.b	$06, $06, $06
	smpsAlterVol		$33
	smpsLoop		$00, $08, MechDance_PWM4, Target

MechDance_Loo$8:
	dc.b	$88, $06
	smpsAlterVol		$CD
	dc.b	$06, $06, $06
	smpsAlterVol		$33
	smpsLoop		$00, $20, MechDance_Loo$8, Target
	smpsJump		MechDance_Loo$8, Target

MechDance_Patches:

	
	dc.b	$3B
	dc.b	$53, $32, $03, $04,	$5F, $9F, $5F, $FF
	dc.b	$14, $08, $0E, $07,	$1D, $1E, $1F, $0D
	dc.b	$8F, $7F, $3F, $8F,	$08, $13, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3E
	dc.b	$2F, $75, $50, $32,	$FF, $1F, $1F, $1F
	dc.b	$12, $04, $5F, $0F,	$19, $00, $00, $00
	dc.b	$4F, $0F, $0F, $0F,	$13, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $83, $83, $83
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$58
	dc.b	$53, $10, $11, $00,	$1F, $12, $1F, $1F
	dc.b	$06, $05, $06, $0C,	$02, $02, $02, $02
	dc.b	$2F, $2F, $2F, $1F,	$22, $0F, $1A, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
