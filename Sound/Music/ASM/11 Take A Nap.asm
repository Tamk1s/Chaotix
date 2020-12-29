
Target	EQU	$494AA
	smpsHeaderVoice	TakeNap_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0E
	smpsHeaderFM	TakeNap_FM1, Target, $00, $0F
	smpsHeaderFM	TakeNap_FM2, Target, $00, $0E
	smpsHeaderFM	TakeNap_FM3, Target, $00, $14
	smpsHeaderFM	TakeNap_FM4, Target, $00, $14
	smpsHeaderFM	TakeNap_FM5, Target, $00, $14
	smpsHeaderFM	TakeNap_FM6, Target, $00, $17
	smpsHeaderPSG	TakeNap_PSG1, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	TakeNap_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	TakeNap_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	TakeNap_PWM1, Target, $00, $11
	smpsHeaderPWM	TakeNap_PWM2, Target, $00, $99
	smpsHeaderPWM	TakeNap_PWM3, Target, $00, $96
	smpsHeaderPWM	TakeNap_PWM4, Target, $00, $77

TakeNap_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $54

TakeNap_Loop1:
	dc.b	nF2, $0C, nC2, nD2, nF2, nRst, $24, nF2
	dc.b	$0C, smpsNoAttack, $0C, nD2, nC2, nRst, $3C, nBb1
	dc.b	$0C, nF1, nG1, nBb1, nRst, $24, nC2, $0C
	dc.b	smpsNoAttack, $0C, $0C, $0C, nRst, nC2, nD2, nF2
	dc.b	nG2
	smpsLoop		$00, $02, TakeNap_Loop1, Target
	smpsJump		TakeNap_Loop1, Target

TakeNap_FM2:
	smpsFMvoice		$02
	dc.b	nRst, $54

TakeNap_Jump1:
	smpsCall		TakeNap_Call1, Target
	dc.b	smpsNoAttack, $0C, nCs4, $06, smpsNoAttack, nD4, $12, nC4
	dc.b	$0C, smpsNoAttack, $60
	smpsCall		TakeNap_Call1, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nFs3, $06, smpsNoAttack, nG3
	dc.b	$06, smpsNoAttack, $60
	smpsJump		TakeNap_Jump1, Target

TakeNap_Call1:
	dc.b	nRst, $18, nAb3, $06, smpsNoAttack, nA3, $12, nG3
	dc.b	$18, nC4, smpsNoAttack, $0C, nD4, $18, nA3, nG3
	dc.b	$0C, nA3, nBb3, smpsNoAttack, $0C, nA3, nG3, nF3
	smpsReturn

TakeNap_FM3:
	smpsFMvoice		$01
	dc.b	nRst, $54

TakeNap_Loop2:
	dc.b	nRst, $18, nA3, nRst, nA3, nRst, $18, nA3
	dc.b	nRst, nA3, nRst, $18, nF3, nRst, nF3, nRst
	dc.b	$18, nG3, nRst, nG3
	smpsLoop		$00, $02, TakeNap_Loop2, Target
	smpsJump		TakeNap_Loop2, Target

TakeNap_FM4:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nRst, $54

TakeNap_Loop3:
	dc.b	nRst, $18, nF3, nRst, nF3, nRst, $18, nF3
	dc.b	nRst, nF3, nRst, $18, nD3, nRst, nD3, nRst
	dc.b	$18, nE3, nRst, nE3
	smpsLoop		$00, $02, TakeNap_Loop3, Target
	smpsJump		TakeNap_Loop3, Target

TakeNap_FM5:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $54

TakeNap_Loop4:
	dc.b	nRst, $18, nC3, nRst, nC3, nRst, $18, nC3
	dc.b	nRst, nC3, nRst, $18, nBb2, nRst, nBb2, nRst
	dc.b	$18, nC3, nRst, nC3
	smpsLoop		$00, $02, TakeNap_Loop4, Target
	smpsJump		TakeNap_Loop4, Target

TakeNap_FM6:
	smpsFMvoice		$02
	dc.b	nRst, $54, nRst, $06
	smpsPan		panRight
	smpsModSet	$0A, $01, $02, $04

TakeNap_Jump2:
	smpsCall		TakeNap_Call1, Target
	dc.b	smpsNoAttack, $0C, nCs4, $06, smpsNoAttack, nD4, $12, nC4
	dc.b	$0C, smpsNoAttack, $60
	smpsCall		TakeNap_Call1, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nFs3, $06, smpsNoAttack, nG3
	dc.b	$06, smpsNoAttack, $60
	smpsJump		TakeNap_Jump2, Target

TakeNap_PSG1:
	smpsPSGvoice	$03
	dc.b	nRst, $54

TakeNap_Loop5:
	dc.b	nRst, $0C, nC4, $06
	smpsSetVol	$03
	dc.b	$06
	smpsSetVol	$FD
	smpsLoop		$00, $20, TakeNap_Loop5, Target
	smpsJump		TakeNap_Loop5, Target

TakeNap_PSG2:
	smpsPSGvoice	$03
	dc.b	nRst, $54

TakeNap_Loop6:
	dc.b	nRst, $0C, nF3, $06
	smpsSetVol	$03
	dc.b	$06
	smpsSetVol	$FD
	smpsLoop		$00, $0C, TakeNap_Loop6, Target

TakeNap_Loop7:
	dc.b	nRst, $0C, nG3, $06
	smpsSetVol	$03
	dc.b	$06
	smpsSetVol	$FD
	smpsLoop		$00, $04, TakeNap_Loop7, Target
	smpsLoop		$01, $02, TakeNap_Loop6, Target
	smpsJump		TakeNap_Loop6, Target

TakeNap_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $24
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$18

TakeNap_Loo$8:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, nRst, nCs4, nRst, nC4, nCs4
	dc.b	nCs4, nRst, nC4, nC4, nCs4, nRst, nC4
	smpsPSGvoice	$05
	dc.b	nC4, $18
	smpsLoop		$00, $04, TakeNap_Loo$8, Target
	smpsJump		TakeNap_Loo$8, Target

TakeNap_PWM1:
	dc.b	$96, $54

TakeNap_Loo$9:
	dc.b	$8B, $0C, $18, $0C, nRst, $24, $8B, $0C
	dc.b	nRst, $0C, $8B, $8B, $48
	smpsLoop		$00, $04, TakeNap_Loo$9, Target
	smpsJump		TakeNap_Loo$9, Target

TakeNap_PWM2:
	dc.b	$8C, $0C, nRst, $8C, $8C, $8C, $8C, $8C

TakeNap_Jump3:
	dc.b	nRst, $30, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, $24, $0C, nRst, $30, $8C, nRst, $8C
	dc.b	nRst, $8C, nRst, $8C, $0C, $86
	smpsAlterVol		$90
	dc.b	$87, $18
	smpsAlterVol		$70
	smpsJump		TakeNap_Jump3, Target

TakeNap_PWM3:
	dc.b	$96, $24, $8A, $30

TakeNap_Loop10:
	dc.b	nRst, $30, $8A
	smpsLoop		$00, $08, TakeNap_Loop10, Target
	smpsJump		TakeNap_Loop10, Target

TakeNap_PWM4:
	dc.b	nRst, $24
	smpsAlterVol		$FD
	dc.b	$91, $0C, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$90, $0C, $0C
	smpsAlterVol		$30

TakeNap_Loop11:
	smpsAlterVol		$FD
	dc.b	$91, $0C, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$90, $0C, $0C
	smpsAlterVol		$30
	smpsLoop		$00, $10, TakeNap_Loop11, Target
	smpsJump		TakeNap_Loop11, Target

TakeNap_Patches:

	
	dc.b	$2D
	dc.b	$02, $03, $02, $01,	$7F, $DF, $9F, $9F
	dc.b	$12, $0A, $0A, $0A,	$10, $09, $09, $09
	dc.b	$3F, $2F, $2F, $2F,	$10, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$61, $03, $01, $33,	$5F, $94, $5F, $94
	dc.b	$05, $05, $05, $07,	$02, $02, $02, $02
	dc.b	$1F, $6F, $1F, $AF,	$1E, $80, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$03, $08, $04, $01,	$8E, $8E, $8D, $59
	dc.b	$0E, $0E, $0E, $03,	$00, $00, $00, $00
	dc.b	$1F, $FF, $1F, $2F,	$17, $28, $20, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
