
Target	EQU	$4C4D0
	smpsHeaderVoice	CWorld_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $16
	smpsHeaderFM	CWorld_FM1, Target, $00, $0D
	smpsHeaderFM	CWorld_FM2, Target, $00, $0D
	smpsHeaderFM	CWorld_FM3, Target, $FB, $17
	smpsHeaderFM	CWorld_FM4, Target, $00, $1A
	smpsHeaderFM	CWorld_FM5, Target, $FB, $1C
	smpsHeaderFM	CWorld_FM6, Target, $00, $00
	smpsHeaderPSG	CWorld_PSG1, Target, $E8, $02, $00, $00
	smpsHeaderPSG	CWorld_PSG2, Target, $E8, $05, $00, $00
	smpsHeaderPSG	CWorld_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	CWorld_PWM1, Target, $00, $FF
	smpsHeaderPWM	CWorld_PWM2, Target, $00, $CD
	smpsHeaderPWM	CWorld_PWM3, Target, $00, $58
	smpsHeaderPWM	CWorld_PWM4, Target, $00, $44

CWorld_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

CWorld_Loop1:
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nD3, $06, nRst, $12, nA2, $06, nRst, $12
	dc.b	nD3, $06, nRst, $12, nA2, $06, nRst, $12
	dc.b	nD3, $06, nRst, $12, nA2, $06, nRst, $12
	dc.b	nD3, $06, nRst, $2A
	smpsLoop		$00, $02, CWorld_Loop1, Target
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nE3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nA3, $06, nRst, $12, nE3, $06, nRst, $12
	dc.b	nE3, $06, nRst, nE3, nRst, nFs3, nRst, nAb3
	dc.b	nRst
	smpsJump		CWorld_Loop1, Target

CWorld_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter

CWorld_Jump1:
	smpsCall		CWorld_Call1, Target
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterVol		$05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterVol		$FB
	smpsCall		CWorld_Call1, Target
	dc.b	nRst, $24
	smpsAlterVol		$02
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsAlterVol		$FE
	smpsJump		CWorld_Jump1, Target

CWorld_Call1:
	dc.b	nA4, $06, nRst, nA4, $03, nRst, nE4, nRst
	dc.b	nG4, $06, nRst, nG4, $03, nRst, nE4, nRst
	dc.b	nA4, $06, nRst, nA4, $03, nRst, nE4, nRst
	dc.b	nB4, $06, nCs5, nD5, $03, nRst, nB4, nRst
	dc.b	nCs5, $06, nD5, $03, nRst, nE5, nRst, nCs5
	dc.b	nRst, nB4, $06, nA4, $03, nRst, nG4, nRst
	dc.b	nB4, nRst, nA4, $06, nRst, nA4, nRst, nE4
	dc.b	nRst, nE4, nRst, nD5, $06, nRst, nD5, $03
	dc.b	nRst, nA4, nRst, nC5, $06, nRst, nC5, $03
	dc.b	nRst, nA4, nRst, nD5, $06, nRst, nD5, $03
	dc.b	nRst, nA4, nRst, nE5, $06, nFs5, $03, nRst
	dc.b	nG5, nRst, nE5, nRst, nFs5, $06, nG5, $03
	dc.b	nRst, nA5, nRst, nFs5, nRst, nE5, $06, nD5
	dc.b	$03, nRst, nC5, nRst, nE5, nRst, nD5, $06
	dc.b	nRst
	smpsReturn

CWorld_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter

CWorld_Jump2:
	smpsCall		CWorld_Call1, Target
	smpsFMvoice		$03
	smpsPan		panRight
	smpsAlterVol		$05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterVol		$FB
	smpsCall		CWorld_Call1, Target
	dc.b	nRst, $24
	smpsAlterVol		$03
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsAlterVol		$FD
	smpsJump		CWorld_Jump2, Target

CWorld_FM4:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06

CWorld_Jump3:
	smpsCall		CWorld_Call1, Target
	smpsFMvoice		$03
	smpsPan		panLeft
	smpsAlterVol		$05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterVol		$FB
	smpsCall		CWorld_Call1, Target
	dc.b	nRst, $24
	smpsAlterVol		$04
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsAlterVol		$FC
	smpsJump		CWorld_Jump3, Target

CWorld_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $05, $08
	dc.b	nRst, $06

CWorld_Jump4:
	smpsCall		CWorld_Call1, Target
	smpsFMvoice		$03
	smpsPan		panRight
	smpsAlterVol		$05
	dc.b	nE4, nE5, nFs4, nFs5, nG4, nG5
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsAlterVol		$FB
	smpsCall		CWorld_Call1, Target
	dc.b	nRst, $24
	smpsAlterVol		$04
	dc.b	nA4, $60, smpsNoAttack, $30, nRst, $0C, nE5, $06
	dc.b	nRst, nE5, $03, nRst, nE5, $06, smpsNoAttack, $0C
	dc.b	nA4, $60, smpsNoAttack, $18, nRst, $15, nEb5, $03
	dc.b	nE5, $0C, nRst, nRst, $18
	smpsAlterVol		$FC
	smpsJump		CWorld_Jump4, Target

CWorld_FM6:
	smpsStop

CWorld_PSG1:
	smpsPSGvoice	$02

CWorld_Jump5:
	smpsCall		CWorld_Call2, Target
	smpsPSGvoice	$08
	dc.b	nE4, $06, nE5, nFs4, nFs5, nG4, nG5
	smpsPSGvoice	$02
	smpsCall		CWorld_Call2, Target
	dc.b	nRst, $24
	smpsPSGvoice	$08
	smpsSetVol	$FF
	dc.b	nA4, $06, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nCs5, nB4, nA4, nE4, nD4, nE4, nFs4
	dc.b	nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nE4, nB4, nD5, nE5, $0C, nD5, $06
	dc.b	nCs5, nB4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nCs5, nB4, nA4, nE4, nD4, nE4
	dc.b	nFs4, nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nE5, nRst, $2A
	smpsSetVol	$01
	smpsPSGvoice	$02
	smpsJump		CWorld_Jump5, Target

CWorld_Call2:
	dc.b	nRst, $09, nEb5, $03, nE5, $0C, nCs5, $15
	dc.b	nEb5, $03, nE5, $12, nCs5, $06, nRst, $09
	dc.b	nEb5, $03, nE5, $0C, nRst, $09, nEb5, $03
	dc.b	nE5, $06, nRst, nCs5, $0C, nCs5, $09, nEb5
	dc.b	$03, nE5, $12, nCs5, $06, nRst, $09, nEb5
	dc.b	$03, nE5, $0C, nRst, $09, nAb5, $03, nA5
	dc.b	$0C, nFs5, $15, nAb5, $03, nA5, $12, nFs5
	dc.b	$06, nRst, $09, nAb5, $03, nA5, $0C, nRst
	dc.b	$09, nAb5, $03, nA5, $0C, nFs5, $0C, nFs5
	dc.b	$09, nAb5, $03, nA5, $0C
	smpsReturn

CWorld_PSG2:
	smpsPSGvoice	$02
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06

CWorld_Jump6:
	smpsCall		CWorld_Call2, Target
	smpsPSGvoice	$08
	dc.b	nE4, $06, nE5, nFs4, nFs5, nG4, nG5
	smpsPSGvoice	$02
	smpsCall		CWorld_Call2, Target
	dc.b	nRst, $24
	smpsPSGvoice	$08
	smpsSetVol	$FF
	dc.b	nA4, $06, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nCs5, nB4, nA4, nE4, nD4, nE4, nFs4
	dc.b	nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5, nB4
	dc.b	nD5, nE4, nB4, nD5, nE5, $0C, nD5, $06
	dc.b	nCs5, nB4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nCs5, nB4, nA4, nE4, nD4, nE4
	dc.b	nFs4, nAb4, nA4, nB4, nCs5, nA4, nD5, nCs5
	dc.b	nB4, nD5, nE5, nRst, $2A
	smpsSetVol	$01
	smpsPSGvoice	$02
	smpsJump		CWorld_Jump6, Target

CWorld_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02

CWorld_Jump7:
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	nC4, $06
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $06
	smpsSetVol	$FD
	smpsJump		CWorld_Jump7, Target

CWorld_PWM1:
	dc.b	$81, $18
	smpsLoop		$00, $0F, CWorld_PWM1, Target
	dc.b	nRst, $18
	smpsLoop		$01, $02, CWorld_PWM1, Target

CWorld_Loop2:
	dc.b	$81, $18
	smpsLoop		$00, $10, CWorld_Loop2, Target
	smpsJump		CWorld_PWM1, Target

CWorld_PWM2:
	dc.b	$96, $0C, $82
	smpsLoop		$00, $0F, CWorld_PWM2, Target
	dc.b	$82, $0C, $82

CWorld_Loop3:
	dc.b	nRst, $0C, $82
	smpsLoop		$00, $0F, CWorld_Loop3, Target
	dc.b	$82, $06, $82, $82, $82

CWorld_Loop4:
	dc.b	nRst, $0C, $82
	smpsLoop		$00, $10, CWorld_Loop4, Target
	smpsJump		CWorld_PWM2, Target

CWorld_PWM3:
	smpsCall		CWorld_Call3, Target
	dc.b	$89, $09, $8A, $03, $8A, $0C, $8A, $06
	dc.b	$06, $0C
	smpsCall		CWorld_Call3, Target
	dc.b	$89, $30

CWorld_Loop6:
	dc.b	nRst, $60
	smpsLoop		$00, $04, CWorld_Loop6, Target
	smpsJump		CWorld_PWM3, Target

CWorld_Call3:
	dc.b	$89, $18

CWorld_Loop5:
	dc.b	$84
	smpsLoop		$00, $0D, CWorld_Loop5, Target
	smpsReturn

CWorld_PWM4:
	dc.b	$96, $60
	smpsLoop		$00, $07, CWorld_PWM4, Target
	dc.b	$96, $3C
	smpsAlterVol		$D0
	dc.b	$92, $0C
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$93, $06, $93, $93, $93
	smpsAlterVol		$03

CWorld_Loop7:
	smpsAlterVol		$FD
	dc.b	$93, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$92, $0C
	smpsAlterVol		$30
	dc.b	nRst, $0C
	smpsAlterVol		$FD
	dc.b	$93, $06, $93, $93, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$92, $0C
	smpsAlterVol		$30
	dc.b	nRst, $0C
	smpsAlterVol		$FD
	dc.b	$93, $06, $93
	smpsAlterVol		$03
	smpsLoop		$00, $03, CWorld_Loop7, Target
	smpsAlterVol		$FD
	dc.b	$93, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$92, $0C
	smpsAlterVol		$30
	dc.b	nRst, $0C
	smpsAlterVol		$FD
	dc.b	$93, $06, $93
	smpsAlterVol		$03
	smpsAlterVol		$33
	smpsAlterVol		$E0
	dc.b	$91, $04, $91, $91, $91, $06, $91, $91
	dc.b	$91, $91, $04, $91, $91
	smpsAlterVol		$20
	smpsAlterVol		$CD
	smpsJump		CWorld_PWM4, Target

CWorld_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$0F
	dc.b	$32, $76, $72, $31,	$1F, $1F, $1F, $1F
	dc.b	$00, $0F, $00, $00,	$00, $00, $00, $00
	dc.b	$0A, $69, $09, $08,	$85, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
