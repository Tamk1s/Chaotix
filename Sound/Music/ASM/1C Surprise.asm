
Target	EQU	$4C8FA
	smpsHeaderVoice	Surprise_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $00
	smpsHeaderFM	Surprise_FM1, Target, $00, $09
	smpsHeaderFM	Surprise_FM2, Target, $00, $1A
	smpsHeaderFM	Surprise_FM3, Target, $FB, $1A
	smpsHeaderFM	Surprise_FM4, Target, $00, $10
	smpsHeaderFM	Surprise_FM5, Target, $07, $11
	smpsHeaderFM	Surprise_FM6, Target, $00, $23
	smpsHeaderPSG	Surprise_PSG1, Target, $E8, $01, $00, $00
	smpsHeaderPSG	Surprise_PSG2, Target, $E8, $05, $00, $00
	smpsHeaderPSG	Surprise_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	Surprise_PWM1, Target, $00, $CC
	smpsHeaderPWM	Surprise_PWM2, Target, $00, $72
	smpsHeaderPWM	Surprise_PWM3, Target, $00, $00
	smpsHeaderPWM	Surprise_PWM4, Target, $00, $55

Surprise_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

Surprise_Jump1:
	dc.b	nA2, $0C, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b	nEb3, nE3, nD3, nB2, nF3, nE3, nD3, nC3
	dc.b	nB2, nA2, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b	nEb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b	nC3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b	nAb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b	nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b	nAb3, nA3, nC4, nB3, nBb3, nA3, nG3, nE3
	dc.b	nF3, nE3, nB2, nCs3, nD3, nE3, nG3, nA3
	dc.b	nBb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b	nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b	nAb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b	nC3
	smpsJump		Surprise_Jump1, Target

Surprise_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		Surprise_Call1, Target

Surprise_Call1:
	smpsAlterVol		$FE
	dc.b	nA4, $06, nE4, $03, nRst, nG4, $06, nE4
	dc.b	$03, nRst
	smpsAlterVol		$FD
	dc.b	nA4, $06, nE4, $03, nRst, nG4, $06, nE4
	dc.b	$03, nRst
	smpsLoop		$00, $04, Surprise_Call1, Target
	dc.b	nA4, $0C, nBb4, $54, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C

Surprise_Loop1:
	smpsAlterVol		$FE
	dc.b	nD5, $06, nA4, $03, nRst, nC5, $06, nA4
	dc.b	$03, nRst
	smpsAlterVol		$FD
	dc.b	nD5, $06, nA4, $03, nRst, nC5, $06, nA4
	dc.b	$03, nRst
	smpsLoop		$00, $04, Surprise_Loop1, Target
	dc.b	nD5, $0C, nEb5, $54, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$02
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$03
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$F6
	dc.b	nE4, $60, nD4, $60, smpsNoAttack, $60, smpsNoAttack, $30
	dc.b	nRst, $06, nD4, nEb4, nE4, nF4, nFs4, nG4
	dc.b	nAb4
	smpsAlterVol		$0A
	smpsJump		Surprise_Call1, Target

Surprise_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		Surprise_Call1, Target

Surprise_FM4:
	smpsFMvoice		$02
	smpsPan		panLeft

Surprise_Loop2:
	dc.b	nA2, $12, nA2, $06, nRst, $24, nA2, $06
	dc.b	nRst, $0C, nA2, $12
	smpsLoop		$00, $04, Surprise_Loop2, Target

Surprise_Loop3:
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06
	dc.b	nRst, $0C, nD3, $12
	smpsLoop		$00, $04, Surprise_Loop3, Target
	dc.b	nE3, $12, nE3, $06, nRst, $24, nE3, $06
	dc.b	nRst, $0C, nE3, $12, nD3, $12, nD3, $06
	dc.b	nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b	nD3, nD3, $06, nRst, $24, nD3, $06, nRst
	dc.b	$0C, nD3, $12, nA2, nA2, $06, nRst, $24
	dc.b	nA2, $06, nRst, $0C, nA2, $12
	smpsJump		Surprise_Loop2, Target

Surprise_FM5:
	smpsFMvoice		$02
	smpsPan		panRight

Surprise_Loop4:
	dc.b	nA2, $12, nA2, $06, nRst, $24, nA2, $06
	dc.b	nRst, $0C, nA2, $12
	smpsLoop		$00, $04, Surprise_Loop4, Target

Surprise_Loop5:
	dc.b	nD3, $12, nD3, $06, nRst, $24, nD3, $06
	dc.b	nRst, $0C, nD3, $12
	smpsLoop		$00, $04, Surprise_Loop5, Target
	dc.b	nE3, $12, nE3, $06, nRst, $24, nE3, $06
	dc.b	nRst, $0C, nE3, $12, nD3, $12, nD3, $06
	dc.b	nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b	nD3, nD3, $06, nRst, $24, nD3, $06, nRst
	dc.b	$0C, nD3, $12, nA2, nA2, $06, nRst, $24
	dc.b	nA2, $06, nRst, $0C, nA2, $12
	smpsJump		Surprise_Loop4, Target

Surprise_FM6:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $05, $08
	dc.b	nRst, $06
	smpsCall		Surprise_Call1, Target

Surprise_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $60
	smpsLoop		$00, $03, Surprise_PSG1, Target
	dc.b	nCs5, $08, nE5, nB5, nBb5, $48

Surprise_Loop6:
	dc.b	nRst, $60
	smpsLoop		$00, $03, Surprise_Loop6, Target
	dc.b	nFs5, $08, nA5, nE6, nEb6, $30, nRst, $18
	smpsAlterPitch	$0C
	smpsPSGvoice	$02
	dc.b	nE4, $06, nFs4, nG4, nE4, nA4, nG4, nFs4
	dc.b	nA4, nG4, nFs4, nE4, nB3, nA3, nB3, nCs4
	dc.b	nEb4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b	nG4, nF4, nE4, nD4, nA3, nG3, nA3, nB3
	dc.b	nCs4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b	nG4, nA3, nE4, nG4
	smpsPSGvoice	$08
	dc.b	nA4, $1E, smpsNoAttack, $36
	smpsPSGvoice	$02
	dc.b	nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nAb4
	smpsAlterPitch	$F4
	smpsJump		Surprise_PSG1, Target

Surprise_PSG2:
	smpsModSet	$01, $01, $02, $04
	dc.b	nRst, $08

Surprise_Loop7:
	smpsPSGvoice	$08
	dc.b	nRst, $60
	smpsLoop		$00, $03, Surprise_Loop7, Target
	dc.b	nCs5, $08, nE5, nB5, nBb5, $30, nRst, $18

Surprise_Loo$8:
	dc.b	nRst, $60
	smpsLoop		$00, $03, Surprise_Loo$8, Target
	dc.b	nFs5, $08, nA5, nE6, nEb6, $30, nRst, $10
	smpsAlterPitch	$0C
	smpsPSGvoice	$02
	dc.b	nRst, $06, nE4, $06, nFs4, nG4, nE4, nA4
	dc.b	nG4, nFs4, nA4, nG4, nFs4, nE4, nB3, nA3
	dc.b	nB3, nCs4, nEb4, nD4, nE4, nF4, nD4, nG4
	dc.b	nF4, nE4, nG4, nF4, nE4, nD4, nA3, nG3
	dc.b	nA3, nB3, nCs4, nD4, nE4, nF4, nD4, nG4
	dc.b	nF4, nE4, nG4, nA3, nE4, nG4
	smpsPSGvoice	$08
	dc.b	nA4, $1E, smpsNoAttack, $36
	smpsPSGvoice	$02
	dc.b	nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nRst
	dc.b	$08
	smpsAlterPitch	$F4
	smpsJump		Surprise_Loop7, Target

Surprise_PSG3:
	smpsPSGform	$E7

Surprise_Jump2:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsJump		Surprise_Jump2, Target

Surprise_PWM1:
	dc.b	$84, $0C
	smpsAlterVol		$DE
	dc.b	$84, $0C
	smpsAlterVol		$22
	smpsJump		Surprise_PWM1, Target

Surprise_PWM2:
	dc.b	nRst, $60
	smpsLoop		$00, $08, Surprise_PWM2, Target

Surprise_Loo$9:
	dc.b	$8A, $18
	smpsLoop		$00, $10, Surprise_Loo$9, Target
	smpsJump		Surprise_PWM2, Target

Surprise_PWM3:
	smpsStop

Surprise_PWM4:
	smpsAlterVol		$FD
	dc.b	$93, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$92, nRst, $06, $92
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$93, $93
	smpsAlterVol		$03

Surprise_Loop10:
	smpsAlterVol		$33
	smpsAlterVol		$D0
	dc.b	$92
	smpsAlterVol		$CD
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$93, $93
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$92
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$93, $93
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$92
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$93
	smpsAlterVol		$03
	smpsLoop		$00, $03, Surprise_Loop10, Target
	smpsAlterVol		$44
	smpsAlterVol		$FE
	dc.b	$93, $06, $06
	smpsAlterVol		$DE
	dc.b	$06, $06, $93, $06, $06
	smpsAlterVol		$DE
	dc.b	$06, $06, $93, $06, $06
	smpsAlterVol		$EF
	dc.b	$03, $03, $03, $03, $93, $03, $03, $03
	dc.b	$03
	smpsAlterVol		$EF
	dc.b	$03, $03, $03, $03
	smpsAlterVol		$66
	smpsAlterVol		$02
	smpsAlterVol		$BC
	smpsAlterVol		$44
	smpsAlterVol		$E0
	dc.b	$92, $06, $06
	smpsAlterVol		$DE
	dc.b	$06, $06, $92, $06, $06
	smpsAlterVol		$DE
	dc.b	$06, $06, $92, $06, $06
	smpsAlterVol		$EF
	dc.b	$03, $03, $03, $03, $92, $03, $03, $03
	dc.b	$03
	smpsAlterVol		$EF
	dc.b	$03, $03, $03, $03
	smpsAlterVol		$66
	smpsAlterVol		$20
	smpsAlterVol		$BC
	smpsLoop		$01, $02, Surprise_PWM4, Target

Surprise_Loop11:
	dc.b	nRst, $0C
	smpsAlterVol		$D0
	dc.b	$92, $0C
	smpsAlterVol		$30
	dc.b	nRst, $0C
	smpsAlterVol		$FD
	dc.b	$93, $06, $93
	smpsAlterVol		$03
	smpsLoop		$00, $07, Surprise_Loop11, Target
	smpsAlterVol		$22
	dc.b	$90, $06, $0C, $06, $91, $06, $06, $06
	dc.b	$06
	smpsAlterVol		$DE
	smpsJump		Surprise_PWM4, Target

Surprise_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$07
	dc.b	$78, $06, $72, $31,	$9F, $DF, $5F, $DF
	dc.b	$0A, $0A, $00, $00,	$00, $00, $00, $00
	dc.b	$17, $17, $07, $07,	$88, $8A, $80, $83
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
