
Target	EQU	$48000
	smpsHeaderVoice	TakeOff_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $02
	smpsHeaderFM	TakeOff_FM1, Target, $00, $0C
	smpsHeaderFM	TakeOff_FM2, Target, $00, $16
	smpsHeaderFM	TakeOff_FM3, Target, $00, $13
	smpsHeaderFM	TakeOff_FM4, Target, $00, $0B
	smpsHeaderFM	TakeOff_FM5, Target, $00, $0A
	smpsHeaderFM	TakeOff_FM6, Target, $00, $18
	smpsHeaderPSG	TakeOff_PSG1, Target, $00, $01, $00, $0C
	smpsHeaderPSG	TakeOff_PSG2, Target, $00, $04, $00, $0C
	smpsHeaderPSG	TakeOff_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	TakeOff_PWM1, Target, $00, $AA
	smpsHeaderPWM	TakeOff_PWM2, Target, $00, $99
	smpsHeaderPWM	TakeOff_PWM3, Target, $00, $AA
	smpsHeaderPWM	TakeOff_PWM4, Target, $00, $77

TakeOff_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $24

TakeOff_Jump1:
	dc.b	nD2, $0C, nRst, nD2, $18, nRst, nD2, nRst
	dc.b	nD2, nRst, nD2, $06, nRst, nE2, $0C, smpsNoAttack
	dc.b	$0C, nRst, nE2, $18, nRst, nE2, nRst, nE2
	dc.b	nRst, nE2, $06, nRst, nD2, $0C, smpsNoAttack, $0C
	dc.b	nRst, nD2, $18, nRst, nD2, nRst, nD2, nRst
	dc.b	nD2, $06, nRst, nE2, $0C, smpsNoAttack, $0C, nRst
	dc.b	nE2, $18, nRst, nE2, nRst, $0C, nE2, $06
	dc.b	nRst, nE2, nRst, nE2, nRst, nE2, nE3, nE2
	dc.b	nRst, nFs2, nFs3, nFs2, nRst
	smpsJump		TakeOff_Jump1, Target

TakeOff_FM2:
	smpsFMvoice		$03
	dc.b	nRst, $24

TakeOff_Jump2:
	smpsCall		TakeOff_Call1, Target
	dc.b	smpsNoAttack, $5A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsCall		TakeOff_Call1, Target
	dc.b	smpsNoAttack, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4, $4E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsCall		TakeOff_Call1, Target
	dc.b	smpsNoAttack, $36
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, $0C, nE3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA3, $1E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3, $3C, smpsNoAttack, $5A
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsJump		TakeOff_Jump2, Target

TakeOff_Call1:
	dc.b	nRst, $18, nA3, $1E
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $0C
	smpsReturn

TakeOff_FM3:
	smpsFMvoice		$02
	dc.b	nRst, $24

TakeOff_Loop1:
	smpsPan		panLeft
	dc.b	nRst, $0C, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD5, $0C, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panRight
	dc.b	nRst, $0C, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD5, $0C, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsLoop		$00, $08, TakeOff_Loop1, Target
	smpsJump		TakeOff_Loop1, Target

TakeOff_FM4:
	smpsFMvoice		$01
	smpsModSet	$0F, $01, $01, $06
	dc.b	nRst, $24

TakeOff_Jump3:
	dc.b	nG3, $60, smpsNoAttack, $4E
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs3, $0C, smpsNoAttack, $60, smpsNoAttack, $60
	smpsJump		TakeOff_Jump3, Target

TakeOff_FM5:
	smpsFMvoice		$01
	smpsModSet	$0F, $01, $02, $04
	dc.b	nRst, $24

TakeOff_Jump4:
	dc.b	nE3, $60, smpsNoAttack, $4E
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C, smpsNoAttack, $60, smpsNoAttack, $4E
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, smpsNoAttack, $60, smpsNoAttack, $60
	smpsJump		TakeOff_Jump4, Target

TakeOff_FM6:
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsModSet	$05, $01, $04, $06
	dc.b	nRst, $24, nRst, $0C
	smpsJump		TakeOff_Jump2, Target
	dc.b	$F6, $A6, $81	; Unused

TakeOff_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $24

TakeOff_Jump5:
	dc.b	nRst, $60, nRst, $18, nA3, nRst, $0C, nB3
	dc.b	nRst, nG3, smpsNoAttack, $18, nRst, $48, nRst, $24
	dc.b	nA3, $0C, nB3, $06, nRst, nG3, nRst, nE3
	dc.b	$0C, nD3, nRst, $60, nRst, $0C, nA3, nB3
	dc.b	$06, nRst, nD4, $3C, nRst, $0C, nD4, nC4
	dc.b	$06, nRst, nB3, nRst, nA3, $0C, nG3, $06
	dc.b	nRst, nA3, $0C, nB3, $06, nRst, nG3, $0C
	dc.b	nA3, $06, nRst, nB3, $0C, nG3, $06, nRst
	dc.b	nB3, $12, nRst, $06, nA3, $12, nRst, $06
	smpsJump		TakeOff_Jump5, Target

TakeOff_PSG2:
	smpsPSGvoice	$08
	smpsModSet	$02, $01, $01, $03
	dc.b	nRst, $24, nRst, $0C
	smpsJump		TakeOff_Jump5, Target
	dc.b	$F6, $06, $82	; Unused

TakeOff_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $24

TakeOff_Jump6:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C

TakeOff_Loop2:
	dc.b	nRst, nC4, $0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C
	smpsLoop		$00, $03, TakeOff_Loop2, Target
	smpsJump		TakeOff_Jump6, Target

TakeOff_PWM1:
	dc.b	$81, $06, $81, $06, nRst, $18

TakeOff_Jump7:
	dc.b	$81, $30, $81, $81, $81, $24, $0C, nRst
	dc.b	$30, $81, $81, $81, $24, $0C, nRst, $30
	dc.b	$81, $81, $81, $24, $0C, nRst, $30, $81
	dc.b	$81, $30, $81
	smpsJump		TakeOff_Jump7, Target

TakeOff_PWM2:
	dc.b	$96, $0C, $8C, $18

TakeOff_Loop3:
	dc.b	nRst, $18, $86, nRst, $86
	smpsLoop		$00, $07, TakeOff_Loop3, Target
	dc.b	nRst, $0C, $8C, $8C, $86, $8C, $06, $8C
	dc.b	$86, nRst, $86, $8C, $8C, $8C
	smpsJump		TakeOff_Loop3, Target

TakeOff_PWM3:
	dc.b	$96, $0C
	smpsAlterVol		$FC
	dc.b	$83, $18
	smpsAlterVol		$04

TakeOff_Jum$8:
	smpsAlterVol		$C0
	dc.b	$89, $18
	smpsAlterVol		$40
	smpsAlterVol		$90
	dc.b	$87, nRst, $87, nRst, $87, nRst, $87, $0C
	smpsAlterVol		$70
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	smpsAlterVol		$90
	dc.b	nRst, $18, $87, nRst, $87, nRst, $87, nRst
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	smpsAlterVol		$90
	dc.b	nRst, $18, $87, nRst, $87, nRst, $87, nRst
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	smpsAlterVol		$90
	dc.b	nRst, $18, $87, nRst, $87
	smpsAlterVol		$70
	smpsAlterVol		$C0
	dc.b	$89, $48
	smpsAlterVol		$40
	smpsAlterVol		$90
	dc.b	$87, $18
	smpsAlterVol		$70
	smpsJump		TakeOff_Jum$8, Target

TakeOff_PWM4:
	dc.b	$96, $24

TakeOff_Loop4:
	dc.b	nRst, $0C
	smpsAlterVol		$F9
	dc.b	$88, $06, $06, $06, $12
	smpsAlterVol		$07
	dc.b	nRst, $0C
	smpsAlterVol		$90
	dc.b	$8A, $06, $06, $06, $12
	smpsAlterVol		$70
	smpsLoop		$00, $08, TakeOff_Loop4, Target
	smpsJump		TakeOff_Loop4, Target

TakeOff_Patches:

	
	dc.b	$4B
	dc.b	$10, $11, $21, $62,	$3F, $9F, $9F, $9F
	dc.b	$02, $0D, $13, $02,	$12, $0A, $05, $07
	dc.b	$0F, $6F, $5F, $0F,	$24, $0D, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$29
	dc.b	$36, $74, $73, $31,	$5E, $5F, $5C, $5F
	dc.b	$12, $0F, $10, $10,	$04, $07, $02, $01
	dc.b	$3F, $4F, $0F, $0F,	$12, $11, $2D, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$74, $72, $11, $11,	$19, $1E, $19, $1E
	dc.b	$01, $01, $01, $01,	$00, $00, $00, $00
	dc.b	$F7, $FC, $F7, $FC,	$18, $80, $0A, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$22, $04, $02, $14,	$51, $52, $50, $52
	dc.b	$0D, $00, $06, $04,	$04, $05, $02, $00
	dc.b	$1C, $1F, $2B, $1F,	$0E, $80, $13, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
