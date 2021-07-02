
Target	EQU	$41DBC
	smpsHeaderVoice	Walkin_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $35
	smpsHeaderFM	Walkin_FM1, Target, $00, $0E
	smpsHeaderFM	Walkin_FM2, Target, $00, $0F
	smpsHeaderFM	Walkin_FM3, Target, $0C, $11
	smpsHeaderFM	Walkin_FM4, Target, $0C, $11
	smpsHeaderFM	Walkin_FM5, Target, $00, $11
	smpsHeaderFM	Walkin_FM6, Target, $00, $18
	smpsHeaderPSG	Walkin_PSG1, Target, $F4, $05, $00, $0C
	smpsHeaderPSG	Walkin_PSG2, Target, $F4, $05, $00, $0C
	smpsHeaderPSG	Walkin_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Walkin_PWM1, Target, $00, $AA
	smpsHeaderPWM	Walkin_PWM2, Target, $00, $BB
	smpsHeaderPWM	Walkin_PWM3, Target, $00, $AA
	smpsHeaderPWM	Walkin_PWM4, Target, $00, $63

Walkin_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $18
	smpsModSet	$03, $01, $F6, $00
	dc.b	nG1
	smpsModSet	$00, $00, $00, $00

Walkin_Jump1:
	smpsCall		Walkin_Call1, Target
	smpsCall		Walkin_Call1, Target
	smpsAlterPitch	$FE
	smpsCall		Walkin_Call1, Target
	smpsAlterPitch	$02
	smpsCall		Walkin_Call1, Target
	smpsJump		Walkin_Jump1, Target

Walkin_Call1:
	dc.b	nG1, $0C, nRst, nG1, nRst, $08, nG1, $0C
	dc.b	nF1, $04, nG1, $0C, nBb1, nF1, nG1, $0C
	dc.b	nG2, $06, nRst, nG1, $0C, nRst, $08, nG1
	dc.b	$0C, nF1, $04, nG1, $0C, nBb1, nF1
	smpsReturn

Walkin_FM2:
	smpsFMvoice		$01

Walkin_Jump4:
	dc.b	nRst, $30

Walkin_Jump2:
	smpsCall		Walkin_Call2, Target
	dc.b	nRst, $0C
	smpsJump		Walkin_Jump2, Target

Walkin_Call3:
	dc.b	nF3, $0C, nRst, nG3, nRst, nBb3, $03, smpsNoAttack
	dc.b	nB3, $11, nG3, $04, nRst, $0C
	smpsReturn

Walkin_Call2:
	smpsCall		Walkin_Call3, Target
	dc.b	nC4, $0C, smpsNoAttack, $08, nRst, $04, nC4, $08
	dc.b	nRst, $04, nC4, $08, nRst, $04, nD4, $08
	dc.b	nRst, $04, nC4, $08, nB3, $04, nRst, $08
	dc.b	nG3, $18, nRst, $04
	smpsCall		Walkin_Call3, Target
	dc.b	nF4, $0C, smpsNoAttack, $08, nRst, $04, nG4, $08
	dc.b	nRst, $04, nF4, $08, nE4, $04, nRst, $08
	dc.b	nD4, $34, nRst, $0C, nBb3, $03, smpsNoAttack, nC4
	dc.b	$15, nA3, $08, nRst, $04, nBb3, $03, smpsNoAttack
	dc.b	nC4, $11, nD4, $04, nRst, $0C, nEb4, $0C
	dc.b	smpsNoAttack, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nEb4, $08, nD4, $04, nRst, $08, nC4, $0C
	dc.b	nRst, $04, nA3, $08, nRst, $04, nBb3, $0C
	dc.b	nB3, $08, nRst, $04, nC4, $0C, nRst, nG3
	dc.b	nRst, nA3, $03, smpsNoAttack, nBb3, $11, nG3, $04
	dc.b	nRst, $0C, nF3, smpsNoAttack, $08, nRst, $04, nG3
	dc.b	$48
	smpsReturn

Walkin_FM3:
	smpsFMvoice		$02
	smpsPan		panLeft
	dc.b	nRst, $30

Walkin_Jump3:
	smpsCall		Walkin_Call4, Target
	dc.b	nRst, $18
	smpsCall		Walkin_Call4, Target
	dc.b	nRst, $08, nF3, $04, nFs3, $08, nG3, $04
	dc.b	nRst, $18, nEb3, $08, nF3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $2C, nF3, $04, smpsNoAttack, $08
	dc.b	nEb3, $04, nF3, $08, nRst, $04, nF3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nD3, $08
	dc.b	nEb3, $04, nRst, $08, nC3, $04, nRst, $08
	dc.b	nF3, $04, nFs3, $08, nG3, $04, nRst, $18
	dc.b	nBb3, $08, nC4, $04, nRst, $08, nG3, $04
	dc.b	nRst, $0C, nD4, $08, nRst, $0C, nD4, $04
	dc.b	nRst, $0C, nRst, $08, nFs3, $04, nG3, $08
	dc.b	nRst, $04, nF3, $08, nRst, $04, nD3, $08
	dc.b	nRst, $04, nC3, $08, nRst, $0C, nG2, nF3
	dc.b	$04, nFs3, $08, nG3, $04
	smpsJump		Walkin_Jump3, Target

Walkin_Call4:
	dc.b	nRst, $18, nBb3, $08, nC4, $04, nRst, $08
	dc.b	nG3, $04, nRst, $2C, nF3, $04, smpsNoAttack, $08
	dc.b	nRst, $04, nF3, $08, nRst, $04, nG3, $08
	dc.b	nRst, $04, nD3, $08, nRst, $04, nG3, $08
	dc.b	nFs3, $04, nF3, $08, nG3, $04
	smpsReturn

Walkin_FM4:
	smpsFMvoice		$02
	smpsPan		panRight
	dc.b	nRst, $30

Walkin_Loop1:
	dc.b	nRst, $18, nF3, $08, nRst, $0C, nF3, $04
	dc.b	nRst, $2C, nD3, $04, smpsNoAttack, $08, nD3, $04
	dc.b	$08, nRst, $04, nBb2, $08, nRst, $04, nBb2
	dc.b	$08, nRst, $04, nD3, $08, nRst, $0C, nD3
	dc.b	$04, nRst, $18
	smpsLoop		$00, $02, Walkin_Loop1, Target
	dc.b	nRst, $18, nA2, $08, nRst, $0C, nA2, $04
	dc.b	nRst, $2C, nA2, $04, smpsNoAttack, $08, nA2, $04
	dc.b	nRst, $0C, nA2, $08, nRst, $04, nA2, $08
	dc.b	nRst, $04, nA2, $08, $04, nRst, $08, nA2
	dc.b	$04, nRst, $18, nRst, $18, nF3, $08, nRst
	dc.b	$0C, nF3, $04, nRst, $0C, nF3, $08, nRst
	dc.b	$0C, nF3, $04, nRst, $0C, nRst, $08, nD3
	dc.b	$0C, nRst, $04, nBb2, $08, nRst, $04, nBb2
	dc.b	$08, nRst, $04, nF2, $08, $04, nRst, $08
	dc.b	nD2, $0C, nRst, $10
	smpsJump		Walkin_Loop1, Target
	dc.b	$F2	; Unused

Walkin_FM5:
	smpsFMvoice		$03
	dc.b	nRst, $30

Walkin_Loop2:
	smpsCall		Walkin_Call5, Target
	smpsLoop		$00, $04, Walkin_Loop2, Target
	smpsCall		Walkin_Call6, Target
	smpsCall		Walkin_Call6, Target
	smpsCall		Walkin_Call5, Target
	smpsCall		Walkin_Call5, Target
	smpsJump		Walkin_Loop2, Target

Walkin_Call5:
	dc.b	nRst, $0C, nF3, nG3, nBb3, nF3, $08, nG3
	dc.b	$0C, nBb3, nF3, $04, nG3, $0C
	smpsReturn

Walkin_Call6:
	dc.b	nRst, $0C, nEb3, nF3, nA3, nEb3, $08, nF3
	dc.b	$0C, nA3, nEb3, $04, nF3, $0C
	smpsReturn

Walkin_FM6:
	smpsFMvoice		$01
	smpsPan		panRight
	smpsModSet	$05, $01, $04, $05
	dc.b	nRst, $08
	smpsJump		Walkin_Jump4, Target
	dc.b	$F6, $69, $E0	; Unused

Walkin_PSG1:
	smpsPSGvoice	$0C
	dc.b	nRst, $30

Walkin_Loop3:
	smpsCall		Walkin_Call7, Target
	smpsLoop		$01, $04, Walkin_Loop3, Target
	smpsCall		Walkin_Call8, Target
	smpsCall		Walkin_Call8, Target
	smpsCall		Walkin_Call7, Target
	smpsCall		Walkin_Call7, Target
	smpsJump		Walkin_Loop3, Target

Walkin_Call7:
	dc.b	nBb3, $04, nRst, nF4
	smpsLoop		$00, $08, Walkin_Call7, Target
	smpsReturn

Walkin_Call8:
	dc.b	nA3, $04, nRst, nEb4
	smpsLoop		$00, $08, Walkin_Call8, Target
	smpsReturn

Walkin_PSG2:
	smpsPSGvoice	$0C
	dc.b	nRst, $30

Walkin_Loop4:
	smpsCall		Walkin_Call9, Target
	smpsLoop		$01, $04, Walkin_Loop4, Target
	smpsAlterPitch	$FE
	smpsCall		Walkin_Call9, Target
	smpsCall		Walkin_Call9, Target
	smpsAlterPitch	$02
	smpsCall		Walkin_Call9, Target
	smpsCall		Walkin_Call9, Target
	smpsJump		Walkin_Loop4, Target

Walkin_Call9:
	dc.b	nG3, $04, nRst, nD4
	smpsLoop		$00, $08, Walkin_Call9, Target
	smpsReturn

Walkin_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $30

Walkin_Loop5:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$08, $04, nC4, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $08, $04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$00, $04, Walkin_Loop5, Target
	smpsJump		Walkin_Loop5, Target

Walkin_PWM1:
	dc.b	$81, $18, $0C, $0C

Walkin_Loop6:
	dc.b	$81, $18, $18, $18, $18, $18, $18, $18
	dc.b	$0C, $0C
	smpsLoop		$00, $04, Walkin_Loop6, Target
	smpsJump		Walkin_Loop6, Target

Walkin_PWM2:
	dc.b	$96, $0C, $82, $0C, $0C, $08, $04

Walkin_Loop7:
	dc.b	nRst, $18, $82, nRst, $82, $14, $04, nRst
	dc.b	$18, $82, nRst, $82, $08, $04, $0C, nRst
	dc.b	$18, $82, nRst, $82, $14, $04, nRst, $18
	dc.b	$82, nRst, $82, $08, $04, $08, $04
	smpsLoop		$00, $02, Walkin_Loop7, Target
	smpsJump		Walkin_Loop7, Target

Walkin_PWM3:
	smpsAlterVol		$FC
	dc.b	$83, $30
	smpsAlterVol		$04

Walkin_Jump5:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst, nRst, nRst
	smpsJump		Walkin_Jump5, Target

Walkin_PWM4:
	dc.b	$96, $30

Walkin_Loo$8:
	dc.b	$88, $08
	smpsAlterVol		$DE
	dc.b	$04, $08, $04
	smpsAlterVol		$22
	smpsLoop		$00, $20, Walkin_Loo$8, Target
	smpsJump		Walkin_Loo$8, Target

Walkin_Patches:

	
	dc.b	$4B
	dc.b	$12, $11, $04, $03,	$3F, $9F, $9F, $9F
	dc.b	$02, $0C, $13, $07,	$12, $0A, $0B, $0A
	dc.b	$0F, $3F, $8F, $8F,	$1B, $0F, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$38
	dc.b	$58, $54, $31, $31,	$1A, $1A, $14, $13
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1C, $26, $20, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$97
	dc.b	$66, $31, $50, $22,	$1C, $98, $1F, $1F
	dc.b	$12, $0F, $06, $0C,	$00, $1A, $10, $04
	dc.b	$0F, $FF, $FF, $FF,	$80, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$32, $36, $31, $04,	$DF, $1F, $1F, $DF
	dc.b	$0D, $0D, $02, $09,	$0E, $0A, $14, $F0
	dc.b	$FF, $0F, $4F, $FF,	$28, $18, $0F, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
