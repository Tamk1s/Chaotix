
Target	EQU	$4EABD
	smpsHeaderVoice	SteelHeart_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $20
	smpsHeaderFM	SteelHeart_FM1, Target, $00, $0D
	smpsHeaderFM	SteelHeart_FM2, Target, $00, $0C
	smpsHeaderFM	SteelHeart_FM3, Target, $00, $0F
	smpsHeaderFM	SteelHeart_FM4, Target, $00, $1E
	smpsHeaderFM	SteelHeart_FM5, Target, $00, $0F
	smpsHeaderFM	SteelHeart_FM6, Target, $00, $20
	smpsHeaderPSG	SteelHeart_PSG1, Target, $E8, $02, $00, $00
	smpsHeaderPSG	SteelHeart_PSG2, Target, $E3, $06, $00, $00
	smpsHeaderPSG	SteelHeart_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	SteelHeart_PWM1, Target, $00, $BB
	smpsHeaderPWM	SteelHeart_PWM2, Target, $00, $FF
	smpsHeaderPWM	SteelHeart_PWM3, Target, $00, $AA
	smpsHeaderPWM	SteelHeart_PWM4, Target, $00, $33

SteelHeart_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	smpsCall		SteelHeart_Call1, Target
	smpsAlterVol		$F8
	dc.b	nAb2, $08
	smpsAlterVol		$08
	dc.b	nG2, nCs2, smpsNoAttack, $18
	smpsAlterVol		$F8
	dc.b	nG2, $08
	smpsAlterVol		$08
	dc.b	nFs2, nC2, smpsNoAttack, $18, smpsNoAttack

SteelHeart_Jump1:
	smpsCall		SteelHeart_Call1, Target
	smpsJump		SteelHeart_Jump1, Target

SteelHeart_Call1:
	smpsAlterVol		$F9
	dc.b	nC2, $08
	smpsAlterVol		$07
	dc.b	nC3, nC2, nC3, nC2, nC3
	smpsLoop		$00, $04, SteelHeart_Call1, Target
	smpsReturn

SteelHeart_FM2:
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $0C
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsAlterPitch	$04

SteelHeart_Loop1:
	smpsAlterVol		$FA
	dc.b	nE4, $0C
	smpsAlterVol		$06
	dc.b	nF4, nFs4, nG4
	smpsLoop		$00, $04, SteelHeart_Loop1, Target
	smpsAlterVol		$FD
	dc.b	nE4, $0C
	smpsAlterVol		$03
	dc.b	nF4
	smpsAlterVol		$02
	dc.b	nFs4
	smpsAlterVol		$02
	dc.b	nG4
	smpsAlterVol		$02
	smpsAlterVol		$FE
	dc.b	nE4, $0C
	smpsAlterVol		$02
	dc.b	nF4
	smpsAlterVol		$02
	dc.b	nFs4
	smpsAlterVol		$02
	dc.b	nG4
	smpsAlterVol		$F6
	smpsAlterPitch	$FC

SteelHeart_Jump2:
	dc.b	nRst, $60, nRst, $08, nBb3, nEb4, $05, nRst
	dc.b	$03
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nEb4, $0C, nRst, $06
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nA4, $08, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nAb4, $08
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $0C
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsJump		SteelHeart_Jump2, Target

SteelHeart_FM3:
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nRst, $60
	smpsAlterPitch	$FA
	dc.b	nRst, $06, nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nE4, $06, nRst, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nE4, $06, nRst, $0C
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nE4, $06, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsAlterPitch	$06

SteelHeart_Loop2:
	smpsAlterVol		$FA
	dc.b	nE4, $0C
	smpsAlterVol		$06
	dc.b	nF4, nFs4, nG4
	smpsLoop		$00, $04, SteelHeart_Loop2, Target
	smpsAlterVol		$FD
	dc.b	nE4, $0C
	smpsAlterVol		$03
	dc.b	nF4
	smpsAlterVol		$02
	dc.b	nFs4
	smpsAlterVol		$02
	dc.b	nG4
	smpsAlterVol		$02
	smpsAlterVol		$FE
	dc.b	nE4, $0C
	smpsAlterVol		$02
	dc.b	nF4
	smpsAlterVol		$02
	dc.b	nFs4
	smpsAlterVol		$02
	dc.b	nG4
	smpsAlterVol		$F6

SteelHeart_Jump3:
	dc.b	nRst, $60
	smpsAlterVol		$0A
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08, nRst, $08, nBb3, nEb4, $05, nRst
	dc.b	$03
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nEb4, $0C, nRst, $06
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nA4, $08, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsAlterVol		$07
	smpsPan		panLeft
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsAlterVol		$F6
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $60
	smpsAlterPitch	$FA
	dc.b	nRst, $06, nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nE4, $06, nRst, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nE4, $06, nRst, $0C
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nE4, $06, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsAlterPitch	$06
	smpsJump		SteelHeart_Jump3, Target

SteelHeart_FM4:
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06
	smpsAlterVol		$0A
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $0C
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06
	smpsAlterVol		$EF
	smpsPan		panCenter
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$F9
	dc.b	nAb4, $08
	smpsAlterVol		$07
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsAlterVol		$F9
	dc.b	nG4, $08
	smpsAlterVol		$07
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsAlterVol		$0A
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08

SteelHeart_Jump4:
	dc.b	nRst, $60, nRst, $08, nBb3, nEb4, $05, nRst
	dc.b	$03
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nEb4, $0C, nRst, $06
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nF4, $06, nA4, $05, nRst, $03
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nA4, $08, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nC5, $08, nAb4, $05, nRst, $03
	smpsAlterVol		$07
	smpsPan		panRight
	dc.b	nAb4, $08
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nRst, $60, nRst, $06, nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $12
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst, $0C
	smpsAlterVol		$F9
	smpsPan		panCenter
	dc.b	nE4, $06, nRst
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nE4, $06, nRst
	smpsAlterVol		$F9
	smpsPan		panCenter
	smpsJump		SteelHeart_Jump4, Target

SteelHeart_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		SteelHeart_Call2, Target
	dc.b	nRst, $60

SteelHeart_Jump5:
	smpsCall		SteelHeart_Call2, Target
	smpsJump		SteelHeart_Jump5, Target

SteelHeart_Call2:
	dc.b	nE2, $06, nRst, $18, nE2, $06, nRst, $0C
	dc.b	nE2, $06, nRst, $12, nRst, $12, nE2, $03
	dc.b	nRst, nE2, $06, nRst, $0C, nE2, $06, nRst
	dc.b	$12, nE2, $06, nRst, $08, nE2, $04, nRst
	dc.b	nE2, $04, nRst, nRst, $18
	smpsReturn

SteelHeart_FM6:
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $08
	smpsCall		SteelHeart_Call3, Target
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4
	dc.b	nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5
	dc.b	nCs5, nAb4, $08, nG4, nCs4, smpsNoAttack, $18, nG4
	dc.b	$08, nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst
	dc.b	$60

SteelHeart_Jump6:
	smpsCall		SteelHeart_Call3, Target
	dc.b	nRst, $60
	smpsJump		SteelHeart_Jump6, Target

SteelHeart_PSG1:
	smpsPSGvoice	$0C
	smpsCall		SteelHeart_Call3, Target
	smpsPSGvoice	$08
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4
	dc.b	nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5
	dc.b	nCs5
	smpsSetVol	$FE
	dc.b	nAb4, $08
	smpsSetVol	$02
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsSetVol	$FE
	dc.b	nG4, $08
	smpsSetVol	$02
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsPSGvoice	$0C

SteelHeart_Jump7:
	smpsCall		SteelHeart_Call3, Target
	dc.b	nRst, $60
	smpsJump		SteelHeart_Jump7, Target

SteelHeart_Call3:
	dc.b	nC6, $08, nEb6, nBb5, nD6, nA5, nCs6, nAb5
	dc.b	nC6, nG5, nB5, nFs5, nBb5
	smpsReturn

SteelHeart_PSG2:
	smpsPSGvoice	$0C
	smpsCall		SteelHeart_Call3, Target
	smpsPSGvoice	$08
	dc.b	nRst, $36, nC4, $03, nCs4, nD4, nEb4, nE4
	dc.b	nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5
	dc.b	nCs5
	smpsSetVol	$FE
	dc.b	nAb4, $08
	smpsSetVol	$02
	dc.b	nG4, nCs4, smpsNoAttack, $18
	smpsSetVol	$FE
	dc.b	nG4, $08
	smpsSetVol	$02
	dc.b	nFs4, nC4, smpsNoAttack, $18, smpsNoAttack, $60, nRst, $60
	smpsPSGvoice	$0C

SteelHeart_Jum$8:
	smpsCall		SteelHeart_Call3, Target
	dc.b	nRst, $60
	smpsJump		SteelHeart_Jum$8, Target

SteelHeart_PSG3:
	smpsStop

SteelHeart_PWM1:
	dc.b	$8B, $18, nRst, $06, $8B, $12, $8B, $18
	dc.b	nRst, $12, $8B, $06, $8B, $12, $06, nRst
	dc.b	$12, $8B, $06, nRst, $08, $8B, $08, $8B
	dc.b	nRst, $12, $8B, $06, nRst, $60

SteelHeart_Jum$9:
	dc.b	$8B, $18, nRst, $06, $8B, $12, $8B, $18
	dc.b	nRst, $12, $8B, $06, $8B, $12, $06, nRst
	dc.b	$12, $8B, $06, nRst, $08, $8B, $08, $8B
	dc.b	nRst, $12, $8B, $06
	smpsJump		SteelHeart_Jum$9, Target

SteelHeart_PWM2:
	dc.b	$96, $60, $96, $18
	smpsAlterVol		$78
	dc.b	$8C
	smpsAlterVol		$44
	dc.b	$8C
	smpsAlterVol		$44
	dc.b	$8C, nRst, $60

SteelHeart_Jump10:
	dc.b	nRst, $60, nRst, $48, $8C, $18
	smpsJump		SteelHeart_Jump10, Target

SteelHeart_PWM3:
	dc.b	$96, $60, $96, $60, $89, $18, nRst
	smpsAlterVol		$22
	dc.b	$89
	smpsStop

SteelHeart_PWM4:
	smpsAlterVol		$D0
	dc.b	$93, $08
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$92, $92
	smpsAlterVol		$03
	smpsLoop		$00, $08, SteelHeart_PWM4, Target
	dc.b	nRst, $60

SteelHeart_Jump11:
	smpsAlterVol		$D0
	dc.b	$93, $08
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$92, $92
	smpsAlterVol		$03
	smpsJump		SteelHeart_Jump11, Target

SteelHeart_Patches:

	
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$16
	dc.b	$75, $73, $30, $31,	$5F, $5F, $5F, $5F
	dc.b	$05, $08, $06, $08,	$05, $05, $07, $05
	dc.b	$25, $F7, $57, $25,	$1E, $80, $80, $8A
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $03, $02, $01,	$0F, $10, $11, $19
	dc.b	$0A, $05, $0A, $05,	$02, $02, $02, $02
	dc.b	$36, $36, $36, $58,	$19, $1E, $32, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
