
Target	EQU	$509AC
	smpsHeaderVoice	DPower_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $00
	smpsHeaderFM	DPower_FM1, Target, $00, $09
	smpsHeaderFM	DPower_FM2, Target, $00, $18
	smpsHeaderFM	DPower_FM3, Target, $F4, $18
	smpsHeaderFM	DPower_FM4, Target, $00, $0D
	smpsHeaderFM	DPower_FM5, Target, $09, $10
	smpsHeaderFM	DPower_FM6, Target, $00, $0A
	smpsHeaderPSG	DPower_PSG1, Target, $00, $04, $00, $00
	smpsHeaderPSG	DPower_PSG2, Target, $00, $07, $00, $00
	smpsHeaderPSG	DPower_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	DPower_PWM1, Target, $00, $FF
	smpsHeaderPWM	DPower_PWM2, Target, $00, $FF
	smpsHeaderPWM	DPower_PWM3, Target, $00, $FF
	smpsHeaderPWM	DPower_PWM4, Target, $00, $FF

DPower_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

DPower_Loop1:
	dc.b	nG2, $30, nBb2
	smpsLoop		$00, $07, DPower_Loop1, Target
	dc.b	nFs2, nA2
	smpsJump		DPower_Loop1, Target

DPower_FM2:
	smpsCall		DPower_Call1, Target

DPower_Call1:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $03, $05

DPower_Loop2:
	dc.b	nG4, $30, nFs4, $18, nF4, nEb4, $30, nF4
	dc.b	$18, nFs4
	smpsLoop		$00, $03, DPower_Loop2, Target
	dc.b	nG4, $30, nG5, nFs5, nFs4
	smpsJump		DPower_Loop2, Target

DPower_FM3:
	smpsCall		DPower_Call1, Target

DPower_FM4:
	smpsFMvoice		$02
	smpsPan		panLeft

DPower_Loop3:
	dc.b	nBb1, $60, smpsNoAttack
	smpsLoop		$00, $06, DPower_Loop3, Target
	dc.b	nBb1, nA1
	smpsJump		DPower_Loop3, Target

DPower_FM5:
	smpsFMvoice		$02
	smpsPan		panRight
	smpsJump		DPower_Loop3, Target

DPower_FM6:
	smpsFMvoice		$03
	smpsPan		panCenter

DPower_Jump1:
	dc.b	nG3, $06, nRst, $0C, nG4, $06, nRst, $30
	dc.b	nRst, $18, nRst, $60
	smpsFMvoice		$04
	smpsAlterPitch	$18
	smpsAlterVol		$19
	dc.b	nD4, $03, nBb3, nG3, nBb3
	smpsAlterVol		$FC
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsAlterVol		$FC
	dc.b	nE4, nBb3, nG3, nBb3
	smpsAlterVol		$FC
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsAlterVol		$FC
	dc.b	nD4, nBb3, nG3, nBb3
	smpsAlterVol		$FC
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsAlterVol		$FD
	dc.b	nE4, nBb3, nG3, nBb3
	smpsAlterVol		$FE
	dc.b	nF4, nBb3, nG3, nBb3, nFs4, nBb3, nG3, nBb3
	smpsAlterVol		$02
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsAlterVol		$03
	dc.b	nE4, nBb3, nG3, nBb3
	smpsAlterVol		$04
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsAlterVol		$04
	dc.b	nD4, nBb3, nG3, nBb3
	smpsAlterVol		$04
	dc.b	nEb4, nBb3, nG3, nBb3
	smpsAlterVol		$04
	dc.b	nF4, nBb3, nG3, nBb3
	smpsAlterVol		$04
	dc.b	nFs4, nBb3, nG3, nBb3
	smpsFMvoice		$03
	smpsAlterPitch	$E8
	smpsAlterVol		$E7
	dc.b	nG3, $06, nRst, $0C, nG4, $06, nRst, $30
	dc.b	nRst, $18, nRst, $60, nG3, $06, nRst, $0C
	dc.b	nG4, $06, nRst, $30, nRst, $18
	smpsFMvoice		$04
	smpsAlterPitch	$18
	smpsAlterVol		$14
	dc.b	nFs2, $03, nBb2, nCs3, nE3
	smpsAlterVol		$FA
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsAlterVol		$FA
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsAlterVol		$FA
	dc.b	nFs4, nBb4, nCs5, nE5, nFs5, nE5, nCs5, nBb4
	smpsAlterVol		$06
	dc.b	nFs4, nE4, nCs4, nBb3
	smpsAlterVol		$06
	dc.b	nFs3, nE3, nCs3, nBb2
	smpsAlterVol		$06
	dc.b	nFs2, nBb2, nCs3, nFs3
	smpsFMvoice		$03
	smpsAlterPitch	$E8
	smpsAlterVol		$EC
	smpsJump		DPower_Jump1, Target

DPower_PSG1:
	smpsPSGvoice	$02
	smpsCall		DPower_Call2, Target

DPower_Call2:
	dc.b	nRst, $60, nRst, $60, nD4, $03, nBb3, nG3
	dc.b	nBb3, nEb4, nBb3, nG3, nBb3
	smpsSetVol	$FF
	dc.b	nE4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsSetVol	$FF
	dc.b	nD4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsSetVol	$FF
	dc.b	nE4, nBb3, nG3, nBb3, nF4, nBb3, nG3, nBb3
	dc.b	nFs4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsSetVol	$01
	dc.b	nE4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsSetVol	$01
	dc.b	nD4, nBb3, nG3, nBb3, nEb4, nBb3, nG3, nBb3
	smpsSetVol	$01
	dc.b	nF4, nBb3, nG3, nBb3, nFs4, nBb3, nG3, nBb3
	dc.b	nRst, $60, nRst, $60, nRst, $60, nFs2, $03
	dc.b	nBb2, nCs3, nE3
	smpsSetVol	$FF
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsSetVol	$FF
	dc.b	nFs3, nBb3, nCs4, nE4
	smpsSetVol	$FF
	dc.b	nFs4, nBb4, nCs5, nE5, nFs5, nE5, nCs5, nBb4
	smpsSetVol	$01
	dc.b	nFs4, nE4, nCs4, nBb3
	smpsSetVol	$01
	dc.b	nFs3, nE3, nCs3, nBb2
	smpsSetVol	$01
	dc.b	nFs2, nBb2, nCs3, nFs3
	smpsJump		DPower_Call2, Target

DPower_PSG2:
	smpsModSet	$01, $01, $02, $05
	smpsPSGvoice	$02
	dc.b	nRst, $03
	smpsCall		DPower_Call2, Target

DPower_PSG3:
	smpsPSGform	$E7

DPower_Jump2:
	smpsPSGvoice	$05

DPower_Loop4:
	dc.b	nC4, $0C
	smpsSetVol	$04
	smpsPSGvoice	$02
	dc.b	nC4
	smpsSetVol	$FE
	dc.b	nC4
	smpsSetVol	$02
	dc.b	nC4
	smpsSetVol	$FC
	smpsLoop		$00, $02, DPower_Loop4, Target
	smpsJump		DPower_Jump2, Target

DPower_PWM1:
	dc.b	$8B, $06, nRst, $0C, $8B, $06, nRst, $18
	dc.b	$8B, $06, $8B, nRst, $8B, nRst, $18
	smpsJump		DPower_PWM1, Target

DPower_PWM2:
	dc.b	$96, $24, $8C, $0C, nRst, $24, $8C, $0C
	smpsJump		DPower_PWM2, Target

DPower_PWM3:
	dc.b	$96, $60
	smpsLoop		$00, $07, DPower_PWM3, Target
	dc.b	$30, $12, $85, $06, $86, $87, nRst, $0C
	smpsJump		DPower_PWM3, Target

DPower_PWM4:
	dc.b	$89, $60
	smpsJump		DPower_PWM4, Target

DPower_Patches:

	
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$0D
	dc.b	$40, $50, $1B, $7F,	$4E, $5F, $5F, $5F
	dc.b	$07, $1F, $02, $0D,	$05, $07, $00, $07
	dc.b	$65, $08, $08, $07,	$00, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$07
	dc.b	$34, $74, $02, $01,	$1F, $1F, $1F, $1F
	dc.b	$0A, $0A, $05, $03,	$00, $00, $00, $00
	dc.b	$37, $37, $27, $27,	$8A, $8A, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$37, $74, $04, $34,	$DF, $0A, $4A, $4A
	dc.b	$04, $0F, $0F, $02,	$01, $03, $00, $03
	dc.b	$20, $13, $13, $13,	$1C, $85, $85, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
