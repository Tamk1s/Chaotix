
Target	EQU	$49707
	smpsHeaderVoice	SurgingPower_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $75
	smpsHeaderFM	SurgingPower_FM1, Target, $00, $0D
	smpsHeaderFM	SurgingPower_FM2, Target, $00, $11
	smpsHeaderFM	SurgingPower_FM3, Target, $00, $11
	smpsHeaderFM	SurgingPower_FM4, Target, $00, $16
	smpsHeaderFM	SurgingPower_FM5, Target, $00, $16
	smpsHeaderFM	SurgingPower_FM6, Target, $00, $16
	smpsHeaderPSG	SurgingPower_PSG1, Target, $00, $05, $00, $0C
	smpsHeaderPSG	SurgingPower_PSG2, Target, $F4, $04, $00, $0C
	smpsHeaderPSG	SurgingPower_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	SurgingPower_PWM1, Target, $00, $AA
	smpsHeaderPWM	SurgingPower_PWM2, Target, $00, $BB
	smpsHeaderPWM	SurgingPower_PWM3, Target, $00, $BB
	smpsHeaderPWM	SurgingPower_PWM4, Target, $00, $88

SurgingPower_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $18

SurgingPower_Jump1:
	smpsCall		SurgingPower_Call1, Target
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FF
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$05
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FC
	smpsCall		SurgingPower_Call1, Target
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FF
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$01
	dc.b	nRst, $12, nD3, $03, nRst
	smpsCall		SurgingPower_Call1, Target
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FF
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$05
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FC
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$05
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FD
	smpsCall		SurgingPower_Call1, Target
	smpsCall		SurgingPower_Call1, Target
	smpsAlterPitch	$FE
	smpsJump		SurgingPower_Jump1, Target

SurgingPower_Call1:
	dc.b	nBb1, $06, nBb2, $03, nRst, nBb1, $06, nBb2
	dc.b	$03, nRst
	smpsReturn

SurgingPower_FM2:
	smpsFMvoice		$02
	dc.b	nRst, $18

SurgingPower_Jump2:
	smpsCall		SurgingPower_Call2, Target
	dc.b	smpsNoAttack, $03
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$03
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nC4, $06, smpsNoAttack, $18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $15
	smpsCall		SurgingPower_Call2, Target
	dc.b	smpsNoAttack, $03
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nF3, $06, smpsNoAttack, $06, nG3, $27
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsJump		SurgingPower_Jump2, Target

SurgingPower_Call2:
	dc.b	nRst, $06, nA3, $03
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, nA3
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $06, nA3, $03, nC4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06, nA3, $03
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE4, $09, nF4, $03
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nC4, $12
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nBb3, $06
	smpsReturn

SurgingPower_FM3:
	smpsFMvoice		$02
	dc.b	nRst, $18

SurgingPower_Jump3:
	smpsCall		SurgingPower_Call3, Target
	dc.b	smpsNoAttack, $03
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$03
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, nD3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nG3, $06, smpsNoAttack, $06, nA3, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $15
	smpsCall		SurgingPower_Call3, Target
	dc.b	smpsNoAttack, $03
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, nD3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb2, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb2, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nC3, $06, smpsNoAttack, $2D
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsJump		SurgingPower_Jump3, Target

SurgingPower_Call3:
	dc.b	nRst, $06, nF3, $03
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, nF3
	smpsAlterVol		$0A
	smpsPan		panCenter
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $06, nF3, $03, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $06, nE3, $03
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $09, $03
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nA3, $12
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$03
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nF3, $06
	smpsReturn

SurgingPower_FM4:
	smpsFMvoice		$01
	dc.b	nRst, $18

SurgingPower_Loop1:
	smpsCall		SurgingPower_Call4, Target
	smpsLoop		$00, $08, SurgingPower_Loop1, Target
	smpsJump		SurgingPower_Loop1, Target

SurgingPower_Call4:
	dc.b	nRst, $06, nF4
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nE4, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nD4, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nC4, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nD4, $06
	smpsReturn

SurgingPower_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	dc.b	nRst, $18

SurgingPower_Loop2:
	smpsCall		SurgingPower_Call5, Target
	smpsLoop		$00, $06, SurgingPower_Loop2, Target
	dc.b	nRst, $06, nD4
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nC4, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nBb3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nA3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nBb3, $06
	smpsCall		SurgingPower_Call5, Target
	smpsJump		SurgingPower_Loop2, Target

SurgingPower_Call5:
	dc.b	nRst, $06, nD4
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nC4, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nA3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nA3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nA3, $06
	smpsReturn

SurgingPower_FM6:
	smpsFMvoice		$01
	smpsPan		panLeft
	dc.b	nRst, $18

SurgingPower_Loop3:
	smpsCall		SurgingPower_Call6, Target
	smpsLoop		$00, $06, SurgingPower_Loop3, Target
	dc.b	nRst, $06, nA3
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nG3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nG3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nF3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nG3, $06
	smpsCall		SurgingPower_Call6, Target
	smpsJump		SurgingPower_Loop3, Target

SurgingPower_Call6:
	dc.b	nRst, $06, nA3
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nG3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nF3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nE3, $06
	smpsAlterVol		$0A
	dc.b	$03
	smpsAlterVol		$F6
	dc.b	nF3, $06
	smpsReturn

SurgingPower_PSG1:
	smpsPSGvoice	$02
	dc.b	nRst, $18

SurgingPower_Loop4:
	smpsCall		SurgingPower_Call7, Target
	smpsLoop		$00, $12, SurgingPower_Loop4, Target
	dc.b	nF3, $03, nF3, nRst, $18

SurgingPower_Loop5:
	smpsCall		SurgingPower_Call7, Target
	smpsLoop		$00, $15, SurgingPower_Loop5, Target
	dc.b	nF3, $03
	smpsJump		SurgingPower_Loop4, Target

SurgingPower_Call7:
	dc.b	nF3, $03, nF3, nF2
	smpsReturn

SurgingPower_PSG2:
	smpsPSGvoice	$02
	dc.b	nRst, $18

SurgingPower_Loop6:
	smpsCall		SurgingPower_Call7, Target
	smpsLoop		$00, $12, SurgingPower_Loop6, Target
	dc.b	nF3, $03, nF3, nRst, $18

SurgingPower_Loop7:
	smpsCall		SurgingPower_Call7, Target
	smpsLoop		$00, $15, SurgingPower_Loop7, Target
	dc.b	nF3, $03
	smpsJump		SurgingPower_Loop6, Target

SurgingPower_PSG3:
	smpsPSGform	$E7
	smpsCall		SurgingPower_Call8, Target

SurgingPower_Loo$8:
	smpsCall		SurgingPower_Call8, Target
	smpsLoop		$01, $07, SurgingPower_Loo$8, Target
	smpsPSGvoice	$02
	dc.b	nC4, $03, nRst, $0F
	smpsPSGvoice	$05
	dc.b	$06

SurgingPower_Loo$9:
	smpsCall		SurgingPower_Call8, Target
	smpsLoop		$01, $08, SurgingPower_Loo$9, Target
	smpsJump		SurgingPower_Loo$8, Target

SurgingPower_Call8:
	smpsPSGvoice	$02
	dc.b	nC4, $03, $03
	smpsPSGvoice	$05
	dc.b	$06
	smpsLoop		$00, $02, SurgingPower_Call8, Target
	smpsReturn

SurgingPower_PWM1:
	dc.b	$81, $15, $87, $03

SurgingPower_Jump4:
	dc.b	$81, $0C, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $0C, $06, $06, $81, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $06, $0C, $03, $03, $0C, $0C
	dc.b	$06, $0C, $06
	smpsJump		SurgingPower_Jump4, Target

SurgingPower_PWM2:
	dc.b	$96, $03
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $86
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	smpsAlterVol		$90
	dc.b	$87, $87
	smpsAlterVol		$70
	dc.b	$86

SurgingPower_Jump5:
	dc.b	nRst, $0C, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, $09, $03, nRst, $0C, $8C, nRst, $8C
	dc.b	nRst, $8C, nRst, $15, $8C, $03, nRst, $0C
	dc.b	$8C, nRst, $8C, nRst, $8C, nRst, $8C, $09
	dc.b	$03, nRst, $0C, $8C, nRst, $8C, nRst, $8C
	dc.b	nRst, $8C, $09, $03
	smpsJump		SurgingPower_Jump5, Target

SurgingPower_PWM3:
	smpsAlterVol		$FC
	dc.b	$83, $18
	smpsAlterVol		$04

SurgingPower_Jump6:
	smpsAlterVol		$C0
	dc.b	$89, $30
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $30
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, $2A
	smpsAlterVol		$FC
	dc.b	$83, $06
	smpsAlterVol		$04
	smpsJump		SurgingPower_Jump6, Target

SurgingPower_PWM4:
	smpsCall		SurgingPower_Call9, Target

SurgingPower_Loop10:
	smpsCall		SurgingPower_Call9, Target
	smpsLoop		$00, $07, SurgingPower_Loop10, Target
	dc.b	$96, $0C, nRst, $06
	smpsAlterVol		$90
	dc.b	$88, $03, $03
	smpsAlterVol		$70

SurgingPower_Loop11:
	smpsCall		SurgingPower_Call9, Target
	smpsLoop		$00, $08, SurgingPower_Loop11, Target
	smpsJump		SurgingPower_Loop10, Target

SurgingPower_Call9:
	dc.b	nRst, $06
	smpsAlterVol		$F9
	dc.b	$88, $03, $03
	smpsAlterVol		$07
	dc.b	nRst, $06
	smpsAlterVol		$90
	dc.b	$88, $03, $03
	smpsAlterVol		$70
	smpsReturn

SurgingPower_Patches:

	
	dc.b	$3C
	dc.b	$01, $03, $00, $00,	$1F, $1F, $15, $1F
	dc.b	$11, $0D, $10, $05,	$07, $04, $09, $02
	dc.b	$55, $1A, $55, $1A,	$0E, $80, $08, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$33
	dc.b	$11, $08, $11, $02,	$5F, $9F, $5F, $1F
	dc.b	$0B, $0F, $02, $09,	$10, $13, $13, $10
	dc.b	$05, $15, $25, $3A,	$0A, $1D, $09, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
