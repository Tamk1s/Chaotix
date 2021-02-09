
Target	EQU	$443F9
	smpsHeaderVoice	Labyrinth_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $25
	smpsHeaderFM	Labyrinth_FM1, Target, $00, $0C
	smpsHeaderFM	Labyrinth_FM2, Target, $0C, $13
	smpsHeaderFM	Labyrinth_FM3, Target, $00, $17
	smpsHeaderFM	Labyrinth_FM4, Target, $00, $17
	smpsHeaderFM	Labyrinth_FM5, Target, $00, $17
	smpsHeaderFM	Labyrinth_FM6, Target, $0C, $15
	smpsHeaderPSG	Labyrinth_PSG1, Target, $F4, $01, $00, $0C
	smpsHeaderPSG	Labyrinth_PSG2, Target, $00, $03, $00, $0C
	smpsHeaderPSG	Labyrinth_PSG3, Target, $23, $01, $00, $02
	smpsHeaderPWM	Labyrinth_PWM1, Target, $00, $99
	smpsHeaderPWM	Labyrinth_PWM2, Target, $00, $99
	smpsHeaderPWM	Labyrinth_PWM3, Target, $00, $41
	smpsHeaderPWM	Labyrinth_PWM4, Target, $00, $99

Labyrinth_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $54, nB1, $0C

Labyrinth_Jump1:
	dc.b	nC2, $24, nC2, nC2, $30, nEb2, $24, nEb2
	dc.b	nEb2, $30, nB1, $24, nB1, nAb1, $30, nBb1
	dc.b	$24, nBb1, nBb1, nBb1, $18, nB1, $0C
	smpsJump		Labyrinth_Jump1, Target

Labyrinth_FM2:
	smpsFMvoice		$02
	dc.b	nRst, $60

Labyrinth_Jump2:
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4
	dc.b	nBb3, nEb4, nD4, nEb3, nBb2, nFs3, nEb3, nBb3
	dc.b	nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst
	dc.b	nBb4, nAb4, nCs5, nB4, nBb4, nAb4, nBb4, nFs4
	dc.b	nF4, nEb4, nD4
	smpsJump		Labyrinth_Jump2, Target

Labyrinth_FM3:
	smpsFMvoice		$01
	smpsModSet	$07, $01, $06, $07
	dc.b	nRst, $54, nA3, $0C

Labyrinth_Loop1:
	dc.b	nBb3, $60, smpsNoAttack, $18
	smpsLoop		$00, $03, Labyrinth_Loop1, Target
	dc.b	nAb3, $60, smpsNoAttack, $30
	smpsJump		Labyrinth_Loop1, Target

Labyrinth_FM4:
	smpsFMvoice		$01
	smpsModSet	$11, $01, $07, $05
	smpsPan		panRight
	dc.b	nRst, $54, nFs3, $0C

Labyrinth_Jump3:
	dc.b	nG3, $60, smpsNoAttack, $18, nFs3, $60, smpsNoAttack, $18
	dc.b	nFs3, $60, smpsNoAttack, $18, nF3, $60, smpsNoAttack, $30
	smpsJump		Labyrinth_Jump3, Target

Labyrinth_FM5:
	smpsFMvoice		$01
	smpsModSet	$05, $01, $02, $0A
	smpsPan		panLeft
	dc.b	nRst, $54, nD3, $0C

Labyrinth_Jump4:
	dc.b	nEb3, $60, smpsNoAttack, $18, nCs3, $60, smpsNoAttack, $18
	dc.b	nEb3, $60, smpsNoAttack, $18, nD3, $60, smpsNoAttack, $30
	smpsJump		Labyrinth_Jump4, Target

Labyrinth_FM6:
	smpsFMvoice		$02
	smpsModSet	$01, $01, $03, $05
	smpsAlterNote	$FC
	dc.b	nRst, $06, nRst, $60

Labyrinth_Jump5:
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4
	dc.b	nBb3, nEb4, nD4, nEb3, nBb2, nFs3, nEb3, nBb3
	dc.b	nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst
	dc.b	nBb4, nAb4, nCs5, nB4, nBb4, nAb4, nBb4, nFs4
	dc.b	nF4, nEb4, nD4
	smpsJump		Labyrinth_Jump5, Target

Labyrinth_PSG1:
	smpsPSGvoice	$07
	smpsModSet	$01, $06, $01, $01
	smpsSetVol	$02
	dc.b	nRst, $04, nE6, $5C
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FE
	smpsPSGvoice	$02

Labyrinth_Loop2:
	dc.b	nRst, $0C, nEb4, $06, nD4, nEb4
	smpsSetVol	$03
	dc.b	$06
	smpsSetVol	$FD
	dc.b	nRst, $24, nEb4, $06, nD4, nEb4
	smpsSetVol	$03
	dc.b	$06
	smpsSetVol	$FD
	dc.b	nRst, $18
	smpsLoop		$00, $04, Labyrinth_Loop2, Target
	dc.b	nRst, $18
	smpsJump		Labyrinth_Loop2, Target

Labyrinth_PSG2:
	smpsPSGvoice	$07
	smpsModSet	$01, $06, $01, $01
	dc.b	nE5, $60
	smpsModSet	$00, $00, $00, $00

Labyrinth_Jump6:
	smpsPSGvoice	$08
	smpsModSet	$01, $01, $01, $02
	dc.b	nEb3, $0C, nC3, nG3, nEb3, nBb3, nG3, nD4
	dc.b	nBb3, nEb4, nD4, nEb3, nBb2, nFs3, nEb3, nBb3
	dc.b	nFs3, nCs4, nBb3, nEb4, nF4, nRst, nFs4, nEb4
	dc.b	nBb4, nAb4, nFs4, nAb4, nBb4, nFs4, nRst, nRst
	dc.b	nBb4, nAb4, nCs5, nB4, nBb4, nAb4, nBb4, nFs4
	dc.b	nF4, nEb4, nD4
	smpsJump		Labyrinth_Jump6, Target

Labyrinth_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$07
	dc.b	nC4, $60
	smpsPSGvoice	$02

Labyrinth_Loop3:
	dc.b	nRst, $0C, nC4
	smpsLoop		$00, $0F, Labyrinth_Loop3, Target

Labyrinth_Loop4:
	dc.b	nRst, $0C, nC4
	smpsLoop		$00, $06, Labyrinth_Loop4, Target
	smpsJump		Labyrinth_Loop3, Target

Labyrinth_PWM1:
	dc.b	$96, $54, $8B, $0C

Labyrinth_Jump7:
	dc.b	$8B, $24, $8B, $8B, $30, $8B, $24, $8B
	dc.b	$8B, $30, $8B, $24, $8B, $8B, $30, $8B
	dc.b	$24, $8B, $8B, $8B
	smpsJump		Labyrinth_Jump7, Target

Labyrinth_PWM2:
	dc.b	$96, $60

Labyrinth_Jum$8:
	dc.b	nRst, $24, $88, $30
	smpsAlterVol		$FD
	dc.b	$24, nRst, $0C
	smpsAlterVol		$FD
	dc.b	$88, $30
	smpsAlterVol		$FD
	dc.b	$30
	smpsAlterVol		$03
	dc.b	$0C, nRst, $24
	smpsAlterVol		$03
	dc.b	$88, $30
	smpsAlterVol		$03
	dc.b	$24, smpsNoAttack, $0C
	smpsAlterVol		$C0
	dc.b	$88, $30
	smpsAlterVol		$C0
	dc.b	$30
	smpsAlterVol		$40
	dc.b	$18
	smpsAlterVol		$20
	dc.b	$0C
	smpsAlterVol		$20
	smpsJump		Labyrinth_Jum$8, Target

Labyrinth_PWM3:
	dc.b	$96, $60

Labyrinth_Loop5:
	dc.b	$8E, $0C, $8E, $8D
	smpsLoop		$00, $03, Labyrinth_Loop5, Target
	dc.b	$8E
	smpsLoop		$01, $03, Labyrinth_Loop5, Target

Labyrinth_Loop6:
	dc.b	$8E, $0C, $8E, $8D
	smpsLoop		$00, $04, Labyrinth_Loop6, Target
	smpsJump		Labyrinth_Loop5, Target

Labyrinth_PWM4:
	dc.b	$96, $60

Labyrinth_Jum$9:
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$E0
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$E0
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$E0
	dc.b	$92
	smpsAlterVol		$E0
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$20
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$20
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$20
	dc.b	$92
	smpsAlterVol		$20
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$FE
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$FE
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$FE
	dc.b	$92
	smpsAlterVol		$FE
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$02
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$02
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$02
	dc.b	$92, $0C, $93, $93
	smpsAlterVol		$02
	smpsJump		Labyrinth_Jum$9, Target

Labyrinth_Patches:

	
	dc.b	$18
	dc.b	$35, $31, $31, $32,	$9E, $DC, $1C, $9C
	dc.b	$0D, $06, $04, $01,	$08, $06, $03, $05
	dc.b	$BF, $5F, $3F, $2F,	$29, $1B, $17, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$07
	dc.b	$03, $01, $02, $01,	$15, $15, $15, $15
	dc.b	$0D, $00, $00, $00,	$08, $00, $00, $00
	dc.b	$5F, $0A, $0A, $0A,	$87, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $66, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$05, $07, $0C, $0C,	$17, $11, $12, $11
	dc.b	$9F, $9C, $9C, $9C,	$1D, $83, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
