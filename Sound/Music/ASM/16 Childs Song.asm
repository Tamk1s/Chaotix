
Target	EQU	$4AD99
	smpsHeaderVoice	CSong_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $30
	smpsHeaderFM	CSong_FM1, Target, $00, $0A
	smpsHeaderFM	CSong_FM2, Target, $00, $10
	smpsHeaderFM	CSong_FM3, Target, $00, $10
	smpsHeaderFM	CSong_FM4, Target, $00, $12
	smpsHeaderFM	CSong_FM5, Target, $00, $14
	smpsHeaderFM	CSong_FM6, Target, $00, $1B
	smpsHeaderPSG	CSong_PSG1, Target, $E8, $02, $00, $00
	smpsHeaderPSG	CSong_PSG2, Target, $E8, $05, $00, $00
	smpsHeaderPSG	CSong_PSG3, Target, $23, $03, $00, $00
	smpsHeaderPWM	CSong_PWM1, Target, $00, $EE
	smpsHeaderPWM	CSong_PWM2, Target, $00, $99
	smpsHeaderPWM	CSong_PWM3, Target, $00, $88
	smpsHeaderPWM	CSong_PWM4, Target, $00, $00

CSong_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $48, nE3, $18, nA3, $06, nRst, $12
	dc.b	nE3, $06, nRst, $12, nA3, $06, nRst, $12
	dc.b	nE3, $06, nRst, $12

CSong_Loop1:
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nF3, $06, nRst, $12, nC3, $06, nRst, $12
	dc.b	nF3, $06, nRst, $12, nC3, $06, nRst, $12
	smpsLoop		$00, $02, CSong_Loop1, Target
	dc.b	nE3, $18, nF3, $06, nRst, $12, nE3, $18
	dc.b	nF3, $06, nRst, $12, nE3, $06, nRst, $1E
	dc.b	nE3, $06, nRst, nF3, nRst, nAb3, nRst, nA3
	dc.b	nRst, nB3, nRst
	smpsLoop		$01, $02, CSong_Loop1, Target
	dc.b	nA3, nRst, $12, nE3, $06, nRst, $12, nA3
	dc.b	$06, nRst, $12, nE3, $06, nRst, $12, nA3
	dc.b	$06, nRst, $12, nE3, $06, nRst, $12, nA3
	dc.b	$06, nRst, nE3, nRst, nFs3, nRst, nAb3, nRst
	smpsAlterVol		$02
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nE2, nRst, nD3, nRst, nB2, nRst, nD3, nRst
	dc.b	nE2, nRst, nD3, nRst, nB2, nRst, nD3, nRst
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nA2, nRst, nE3, nRst, nC3, nRst, nE3, nRst
	dc.b	nE2, nRst, nD3, nRst, nB2, nRst, nD3, nRst
	dc.b	nE2, $0C, nE2, $06, nRst, nFs2, nRst, nAb2
	dc.b	nRst
	smpsAlterVol		$FE
	smpsJump		CSong_Loop1, Target

CSong_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nRst, $60, nRst, $60

CSong_Loop2:
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nEb4, $4B, nRst, $15, nE4, $18, nF4, $03
	dc.b	nRst, $15, nE4, $18, nF4, $03, nRst, $39
	dc.b	nE4, $0C, nF4, nAb4, nA4, nB4
	smpsLoop		$00, $02, CSong_Loop2, Target
	dc.b	nA4, $60
	smpsPan		panRight
	dc.b	nC5, $06, nAb4, nG4, nFs4
	smpsPan		panCenter
	dc.b	nD4, nB3
	smpsPan		panLeft
	dc.b	nAb3, nG3, nFs3, $30
	smpsPan		panCenter

CSong_Loop3:
	dc.b	nRst, $60
	smpsLoop		$00, $04, CSong_Loop3, Target
	smpsJump		CSong_Loop2, Target

CSong_FM3:
	smpsFMvoice		$02
	smpsPan		panCenter

CSong_Loop4:
	dc.b	nA4, $06, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5
	smpsLoop		$00, $02, CSong_Loop4, Target

CSong_Loop5:
	dc.b	nA4, $06, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nEb5, nC5, nEb5, nA4, nEb5, nC5
	dc.b	nEb5, nA4, nEb5, nC5, nEb5, nA4, nEb5, nC5
	dc.b	nEb5
	smpsLoop		$00, $02, CSong_Loop5, Target
	dc.b	nRst, $60
	smpsPan		panLeft
	dc.b	nE2, $06, nF2, nAb2, nB2, nE3, nF3, nAb3
	smpsPan		panCenter
	dc.b	nB3, $06
	smpsPan		panRight
	dc.b	nE4, $06, nF4, nAb4, nB4, nE5, nF5, nAb5
	dc.b	nB5
	smpsPan		panCenter
	smpsLoop		$01, $02, CSong_Loop5, Target
	dc.b	nA4, $06, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, nE5, nC5, nE5, nA4, nE5, nC5
	dc.b	nE5, nA4, $06, nE5, nC5, nE5, nA4, nE5
	dc.b	nC5, nE5, nA4, nE5, nC5, nE5, nA4, nE5
	dc.b	nC5, nE5

CSong_Loop6:
	dc.b	nRst, $60
	smpsLoop		$00, $03, CSong_Loop6, Target
	dc.b	nRst, $30, nE2, $06, nAb2, nB2, nD3, nE3
	dc.b	nD3, nC3, nB2
	smpsJump		CSong_Loop5, Target

CSong_FM4:
	smpsFMvoice		$03
	smpsPan		panCenter
	smpsAlterNote	$02
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $60, nRst, $60

CSong_Loop7:
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nEb4, $4B, nRst, $15, nE4, $18, nF4, $03
	dc.b	nRst, $15, nE4, $18, nF4, $03, nRst, $39
	dc.b	nE4, $0C, nF4, nAb4, nA4, nB4
	smpsLoop		$00, $02, CSong_Loop7, Target
	dc.b	nA4, $60
	smpsPan		panRight
	dc.b	nC6, $06, nAb5, nG5, nFs5
	smpsPan		panCenter
	dc.b	nD5, $06, nB4
	smpsPan		panLeft
	dc.b	nAb4, $06, nG4, nFs4, $30
	smpsPan		panCenter
	smpsAlterVol		$03
	dc.b	nA5, $06, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nA5, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nE5, nAb5, nB5, nE6, nE5, nAb5, nB5
	dc.b	nE6, nE5, nAb5, nB5, nE6, nE5, nAb5, nB5
	dc.b	nE6, nA5, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nA5, nC6, nE6, nA6, nA5, nC6, nE6
	dc.b	nA6, nE5, nAb5, nB5, nE6, nE5, nAb5, nB5
	dc.b	nE6, nE5, nAb5, nB5, nD6, nE6, nD6, nC6
	dc.b	nB5
	smpsAlterVol		$FD
	smpsJump		CSong_Loop7, Target

CSong_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterNote	$02
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $06, nRst, $60, nRst, $60

CSong_Loo$8:
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nEb4, $4B, nRst, $15, nE4, $18, nF4, $03
	dc.b	nRst, $15, nE4, $18, nF4, $03, nRst, $39
	dc.b	nE4, $0C, nF4, nAb4, nA4, nB4
	smpsLoop		$00, $02, CSong_Loo$8, Target
	dc.b	nA4, $60
	smpsPan		panRight
	dc.b	nC6, $06, nAb4, nG4, nFs4, nD4, nB3, nAb3
	dc.b	nG3, nFs3, $30
	smpsPan		panCenter

CSong_Loo$9:
	dc.b	nRst, $60
	smpsLoop		$00, $04, CSong_Loo$9, Target
	smpsJump		CSong_Loo$8, Target

CSong_FM6:
	smpsFMvoice		$04
	smpsPan		panCenter
	dc.b	nRst, $06, nRst, $60, nRst, $0C, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $06

CSong_Loop10:
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $12, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $06, nRst, $0C, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $06, nRst, $0C
	dc.b	nEb5, $06, nRst, $12, nEb5, $0C, nEb5, nE5
	dc.b	nF5, nFs5, nE5, $18, nF5, $06, nRst, $12
	dc.b	nE5, $18, nF5, $06, nRst, $12, nRst, $0C
	dc.b	nE5, $0C, nRst, $0C, nE5, $0C, nF5, nAb5
	dc.b	nA5, nB5
	smpsLoop		$00, $02, CSong_Loop10, Target
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $12, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $06, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60
	smpsJump		CSong_Loop10, Target

CSong_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $60, nRst, $0C, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $12, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $06

CSong_Loop11:
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $12, nEb5, $06, nRst, $12
	dc.b	nEb5, $06, nRst, $06, nRst, $0C, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $06, nRst, $0C
	dc.b	nEb5, $06, nRst, $12, nEb5, $0C, nEb5, nE5
	dc.b	nF5, nFs5, nE5, $18, nF5, $06, nRst, $12
	dc.b	nE5, $18, nF5, $06, nRst, $12, nRst, $0C
	dc.b	nE5, $0C, nRst, $0C, nE5, $0C, nF5, nAb5
	dc.b	nA5, nB5
	smpsLoop		$00, $02, CSong_Loop11, Target
	dc.b	nRst, $0C, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $12, nE5, $06, nRst, $12, nE5, $06
	dc.b	nRst, $06, nRst, $0C, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $12, nE5, $06, nRst, $12
	dc.b	nE5, $06, nRst, $06
	smpsSetVol	$FE
	smpsAlterPitch	$0C
	dc.b	nA4, $03, nRst, $09, nA4, $06, nB4, nC5
	dc.b	$0C, nB4, nA4, nE4, nC4, nE4, nF4, $4B
	dc.b	nRst, $15, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nEb4
	dc.b	nE4, $4E, nRst, $12
	smpsSetVol	$02
	smpsAlterPitch	$F4
	smpsJump		CSong_Loop11, Target

CSong_PSG2:
	smpsPSGvoice	$08
	dc.b	nRst, $60, nRst, $0C, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $12, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $06

CSong_Loop12:
	dc.b	nRst, $0C, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $12, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $06
	smpsLoop		$00, $03, CSong_Loop12, Target
	dc.b	nRst, $0C, nC5, $06, nRst, $12, nC5, $0C
	dc.b	nEb4, $0C, nE4, nF4, nFs4, nAb4, $18, nA4
	dc.b	$06, nRst, $12, nAb4, $18, nA4, $06, nRst
	dc.b	$1E, nAb4, $06, nRst, $12, nAb4, $0C, nA4
	dc.b	nB4, nC5, nD5
	smpsLoop		$01, $02, CSong_Loop12, Target
	dc.b	nRst, $0C, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $12, nC5, $06, nRst, $12, nC5, $06
	dc.b	nRst, $06, nRst, $0C, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $12, nC5, $06, nRst, $12
	dc.b	nC5, $06, nRst, $06
	smpsAlterPitch	$0C
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $06, nA4, $03, nRst, $09, nA4, $06
	dc.b	nB4, nC5, $0C, nB4, nA4, nE4, nC4, nE4
	dc.b	nF4, $4B, nRst, $15, nA4, $03, nRst, $09
	dc.b	nA4, $06, nB4, nC5, $0C, nB4, nA4, nE4
	dc.b	nC4, nEb4, nE4, $4E, nRst, $0C
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	smpsJump		CSong_Loop12, Target

CSong_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nRst, $60

CSong_Loop13:
	dc.b	nC4, $06, $06
	smpsSetVol	$FD
	dc.b	$06
	smpsSetVol	$03
	dc.b	$06
	smpsLoop		$00, $04, CSong_Loop13, Target

CSong_Loop14:
	dc.b	nC4, $06, $06
	smpsSetVol	$FD
	dc.b	$06
	smpsSetVol	$03
	dc.b	$06
	smpsLoop		$00, $10, CSong_Loop14, Target
	dc.b	nRst, $60, nRst, $60

CSong_Loop15:
	dc.b	nC4, $06, $06
	smpsSetVol	$FD
	dc.b	$06
	smpsSetVol	$03
	dc.b	$06
	smpsLoop		$00, $10, CSong_Loop15, Target
	dc.b	nRst, $60, nRst, $60

CSong_Loop16:
	dc.b	nC4, $06, $06
	smpsSetVol	$FD
	dc.b	$06
	smpsSetVol	$03
	dc.b	$06
	smpsLoop		$00, $18, CSong_Loop16, Target
	smpsJump		CSong_Loop14, Target

CSong_PWM1:
	dc.b	$96, $60, $8B, $18, $8B, $8B, $8B

CSong_Loop17:
	dc.b	$8B, $18, $8B, $8B, $8B
	smpsLoop		$00, $04, CSong_Loop17, Target
	dc.b	$8B, $18, nRst, $8B, nRst, $8B, $18, $8B
	dc.b	$8B, $8B
	smpsLoop		$00, $02, CSong_Loop17, Target

CSong_Loop18:
	dc.b	$8B, $18, $8B, $8B, $8B
	smpsLoop		$00, $06, CSong_Loop18, Target
	smpsJump		CSong_Loop17, Target

CSong_PWM2:
	dc.b	$96, $60, $96, $0C, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $8C

CSong_Loop19:
	dc.b	nRst, $0C, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $0C, $8C, nRst, $8C, nRst, $8C
	dc.b	$06, $8C, nRst, $0C, $8C
	smpsLoop		$00, $02, CSong_Loop19, Target
	dc.b	$8C, $18, $8C, $8C, $8C, nRst, $0C, $8C
	dc.b	nRst, $8C, nRst, $8C, $8C, $8C
	smpsLoop		$01, $02, CSong_Loop19, Target
	dc.b	nRst, $0C, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $0C, $8C, nRst, $8C, $8C, $8C
	dc.b	$8C, $06, $8C, $8C, $0C

CSong_Loop20:
	dc.b	nRst, $0C, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $0C, $8C, nRst, $8C, nRst, $8C
	dc.b	$06, $8C, nRst, $0C, $8C
	smpsLoop		$00, $02, CSong_Loop20, Target
	smpsJump		CSong_Loop19, Target

CSong_PWM3:
	dc.b	nRst, $60, nRst, $60

CSong_Loop21:
	dc.b	nRst, $60
	smpsLoop		$00, $04, CSong_Loop21, Target
	dc.b	$89, $30, $30

CSong_Loop22:
	dc.b	nRst, $60
	smpsLoop		$00, $05, CSong_Loop22, Target
	dc.b	$89, $30, $30

CSong_Loop23:
	dc.b	nRst, $60
	smpsLoop		$00, $07, CSong_Loop23, Target
	smpsJump		CSong_Loop21, Target

CSong_PWM4:
	smpsStop

CSong_Patches:

	
	dc.b	$30
	dc.b	$35, $01, $00, $00,	$5F, $5F, $14, $1F
	dc.b	$05, $05, $0F, $0A,	$03, $03, $0A, $07
	dc.b	$F6, $F6, $A6, $A7,	$1E, $28, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$0F
	dc.b	$32, $76, $72, $31,	$1F, $1F, $1F, $1F
	dc.b	$00, $0F, $00, $00,	$00, $00, $00, $00
	dc.b	$0A, $69, $09, $08,	$85, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$7C, $1A, $01, $54,	$1F, $1F, $1F, $1F
	dc.b	$07, $08, $0C, $0B,	$00, $06, $07, $07
	dc.b	$FA, $37, $36, $37,	$26, $34, $19, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $10, $10
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $08,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
