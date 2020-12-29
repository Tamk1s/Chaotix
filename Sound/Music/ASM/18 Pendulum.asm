
Target	EQU	$4B88F
	smpsHeaderVoice	Pend_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $15
	smpsHeaderFM	Pend_FM1, Target, $00, $0A
	smpsHeaderFM	Pend_FM2, Target, $00, $08
	smpsHeaderFM	Pend_FM3, Target, $00, $08
	smpsHeaderFM	Pend_FM4, Target, $00, $13
	smpsHeaderFM	Pend_FM5, Target, $00, $13
	smpsHeaderFM	Pend_FM6, Target, $00, $00
	smpsHeaderPSG	Pend_PSG1, Target, $E8, $00, $00, $00
	smpsHeaderPSG	Pend_PSG2, Target, $E8, $03, $00, $00
	smpsHeaderPSG	Pend_PSG3, Target, $23, $03, $00, $00
	smpsHeaderPWM	Pend_PWM1, Target, $00, $FF
	smpsHeaderPWM	Pend_PWM2, Target, $00, $89
	smpsHeaderPWM	Pend_PWM3, Target, $00, $99
	smpsHeaderPWM	Pend_PWM4, Target, $00, $BA

Pend_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $30, nE2, $06, $0C, $06, nEb3, $03
	dc.b	nE3, $09, smpsNoAttack, $0C

Pend_Loop1:
	smpsFMvoice		$00
	smpsAlterVol		$FC
	dc.b	nA2, $06
	smpsAlterVol		$04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18
	smpsAlterVol		$FC
	dc.b	nA2, $06
	smpsAlterVol		$04
	dc.b	nA2, $0C, nD3, nE3, $06, nG3, nB3, nC4
	dc.b	$0C, nFs3, nG3, $06, nCs3, $12
	smpsAlterVol		$FC
	dc.b	nA2, $06
	smpsAlterVol		$04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18, nB3, $06, nC4, nRst
	dc.b	nBb3, nRst, nA3, nG3, nD3, nF3, $0C, nFs3
	dc.b	$24
	smpsLoop		$00, $03, Pend_Loop1, Target
	smpsAlterVol		$FC
	dc.b	nA2, $06
	smpsAlterVol		$04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18
	smpsAlterVol		$FC
	dc.b	nA2, $06
	smpsAlterVol		$04
	dc.b	nA2, $0C, nD3, nE3, $06, nG3, nB3, nC4
	dc.b	$0C, nFs3, nG3, $06, nCs3, $12
	smpsAlterVol		$FC
	dc.b	nA2, $06
	smpsAlterVol		$04
	dc.b	nA2, $0C, nD3, $06, nRst, $06, nE3, $06
	dc.b	nG3, $06, nA3, $06, nEb4, $03, nE4, $09
	dc.b	nG3, $0C, nA3, $18, nB3, $06, nC4, nRst
	dc.b	nBb3, nRst, nA3, nG3, nD3, nF2, nFs2, nG2
	dc.b	nAb2, nA2, nBb2, nB2, nC3
	smpsFMvoice		$01
	smpsAlterVol		$05

Pend_Loop2:
	smpsAlterVol		$FE
	dc.b	nA2
	smpsAlterVol		$02
	dc.b	nE3, nA3, nF2, nC3, nF3, nE3, nC3, nA2
	dc.b	nE3, nA3, nF2, nC3, nF3, nE3, nC3
	smpsLoop		$00, $04, Pend_Loop2, Target
	smpsAlterVol		$FE
	dc.b	nBb2
	smpsAlterVol		$02
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3, nBb2
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3
	smpsAlterVol		$FE
	dc.b	nBb2
	smpsAlterVol		$02
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3, nBb2
	dc.b	nF3, nBb3, nFs2, nCs3, nFs3, nF3, nCs3
	smpsAlterVol		$FE
	dc.b	nB2
	smpsAlterVol		$02
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3, nB2
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3
	smpsAlterVol		$FE
	dc.b	nB2
	smpsAlterVol		$02
	dc.b	nFs3, nB3, nG2, nD3, nG3, nFs3, nD3, nE2
	dc.b	$06, $0C, $06, nEb3, $03, nE3, $09, smpsNoAttack
	dc.b	$0C
	smpsAlterVol		$FB
	smpsJump		Pend_Loop1, Target

Pend_FM2:
	dc.b	nRst, $60

Pend_Loop3:
	smpsCall		Pend_Call1, Target
	smpsAlterPitch	$F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5
	dc.b	$06, nRst, nE5, $03, nRst, nFs5, $06
	smpsAlterVol		$07
	dc.b	nFs5, $06, nRst
	smpsAlterVol		$F9
	smpsAlterPitch	$0C
	smpsCall		Pend_Call1, Target
	dc.b	nRst, $30, nA3, $03, nRst, nB3, nRst, nC4
	dc.b	nRst, nD4, nRst, nE4, nRst, nF4, nRst, nG4
	dc.b	nRst, nAb4, $06
	smpsLoop		$00, $02, Pend_Loop3, Target
	smpsFMvoice		$02
	smpsPan		panRight
	smpsCall		Pend_Call2, Target
	smpsJump		Pend_Loop3, Target

Pend_Call1:
	dc.b	nRst, $4E
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nE5, $03, nRst, nE5, $03, nRst, nD5, $03
	smpsAlterVol		$07
	dc.b	nD5
	smpsAlterVol		$F9
	smpsAlterPitch	$F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5
	dc.b	$06, nRst, nE5, $03, nRst, nD5, $06
	smpsAlterVol		$07
	dc.b	nD5, $06, nRst
	smpsAlterVol		$F9
	smpsAlterPitch	$0C
	dc.b	nRst, $4E, nE5, $03, nRst, nE5, $03, nRst
	dc.b	nD5, $03
	smpsAlterVol		$07
	dc.b	nD5
	smpsAlterVol		$F9
	smpsReturn

Pend_Call2:
	dc.b	nA3, $06, nE4, nA4, nF3, nC4, nF4, nE4
	dc.b	nC4, nA3, nE4, nA4, nF3, nC4, nF4, nE4
	dc.b	nC4
	smpsLoop		$00, $04, Pend_Call2, Target
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nBb3, nF4, nBb4, nFs3, nCs4, nFs4, nF4, nCs4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nB3, nFs4, nB4, nG3, nD4, nG4, nFs4, nD4
	dc.b	nA4, nAb4, nG4, nF4, nE4, nD4, nC4, nB3
	smpsReturn

Pend_FM3:
	dc.b	nRst, $60

Pend_Loop4:
	smpsCall		Pend_Call3, Target
	smpsAlterPitch	$F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5
	dc.b	$06, nRst, nC5, $03, nRst, nD5, $06
	smpsAlterVol		$09
	dc.b	nD5, $06, nRst
	smpsAlterVol		$F7
	smpsAlterPitch	$0C
	smpsCall		Pend_Call3, Target
	dc.b	nRst, $30, nF3, $03, nRst, nG3, nRst, nAb3
	dc.b	nRst, nBb3, nRst, nC4, nRst, nCs4, nRst, nEb4
	dc.b	nRst, nE4, $06
	smpsLoop		$00, $02, Pend_Loop4, Target
	smpsFMvoice		$02
	smpsPan		panLeft
	smpsAlterVol		$03
	smpsCall		Pend_Call4, Target
	smpsAlterVol		$FD
	smpsJump		Pend_Loop4, Target

Pend_Call3:
	dc.b	nRst, $4E
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b	nC5, $03, nRst, nC5, $03, nRst, nC5, $03
	smpsAlterVol		$09
	dc.b	nC5
	smpsAlterVol		$F7
	smpsAlterPitch	$F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5
	dc.b	$06, nRst, nC5, $03, nRst, nB4, $06
	smpsAlterVol		$09
	dc.b	nB4, $06, nRst
	smpsAlterVol		$F7
	smpsAlterPitch	$0C
	dc.b	nRst, $4E, nC5, $03, nRst, nC5, $03, nRst
	dc.b	nC5, $03
	smpsAlterVol		$09
	dc.b	nC5
	smpsAlterVol		$F7
	smpsReturn

Pend_Call4:
	dc.b	nE3, $06, nB3, nE4, nC3, nG3, nC4, nB3
	dc.b	nG3, nE3, nB3, nE4, nC3, nG3, nC4, nB3
	dc.b	nG3
	smpsLoop		$00, $04, Pend_Call4, Target
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nF3, nC4, nF4, nCs3, nAb3, nCs4, nC4, nAb3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nFs3, nCs4, nFs4, nD3, nA3, nD4, nCs4, nA3
	dc.b	nE4, nEb4, nD4, nC4, nB3, nA3, nG3, nFs3
	smpsReturn

Pend_FM4:
	smpsPan		panRight
	smpsModSet	$01, $01, $02, $06
	dc.b	nRst, $06, nRst, $60

Pend_Loop5:
	smpsFMvoice		$03
	smpsCall		Pend_Call1, Target
	smpsAlterPitch	$F4
	dc.b	nRst, $2A, nG5, $06, nRst, nG5, $06, nFs5
	dc.b	$06, nRst, nE5, $03, nRst, nFs5, $06
	smpsAlterVol		$07
	dc.b	nFs5, $06, nRst
	smpsAlterVol		$F9
	smpsAlterPitch	$0C
	smpsCall		Pend_Call1, Target
	dc.b	nRst, $30, nA3, $03, nRst, nB3, nRst, nC4
	dc.b	nRst, nD4, nRst, nE4, nRst, nF4, nRst, nG4
	dc.b	nRst, nAb4, $06
	smpsLoop		$00, $02, Pend_Loop5, Target
	smpsFMvoice		$02
	smpsPan		panRight
	smpsAlterVol		$03
	smpsCall		Pend_Call2, Target
	smpsAlterVol		$FD
	smpsJump		Pend_Loop5, Target

Pend_FM5:
	smpsFMvoice		$03
	smpsPan		panRight
	smpsModSet	$01, $01, $02, $06
	dc.b	nRst, $06, nRst, $60

Pend_Loop6:
	smpsCall		Pend_Call3, Target
	smpsAlterPitch	$F4
	dc.b	nRst, $2A, nD5, $06, nRst, nD5, $06, nD5
	dc.b	$06, nRst, nC5, $03, nRst, nD5, $06
	smpsAlterVol		$09
	dc.b	nD5, $06, nRst
	smpsAlterVol		$F7
	smpsAlterPitch	$0C
	smpsCall		Pend_Call3, Target
	dc.b	nRst, $30, nF3, $03, nRst, nG3, nRst, nAb3
	dc.b	nRst, nBb3, nRst, nC4, nRst, nCs4, nRst, nEb4
	dc.b	nRst, nE4, $06
	smpsLoop		$00, $02, Pend_Loop6, Target
	smpsFMvoice		$02
	smpsPan		panLeft
	smpsAlterVol		$03
	smpsCall		Pend_Call4, Target
	smpsAlterVol		$FD
	smpsJump		Pend_Loop6, Target

Pend_FM6:
	smpsStop

Pend_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $60

Pend_Loop7:
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nD5
	dc.b	nRst, nE5, nRst, nG5, nRst
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nB4
	dc.b	nRst, nA4, nRst, nG4, nRst
	smpsLoop		$01, $03, Pend_Loop7, Target
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nC5, nRst, nD5
	dc.b	nRst, nE5, nRst, nG5, nRst
	smpsSetVol	$01
	dc.b	nA4, $06, nA4, $03, nRst
	smpsSetVol	$FF
	dc.b	nA5, $03, nRst, nA4, nRst, nE5, nRst, nA4
	dc.b	nRst, nG5, nRst, nA4, nRst, nA4, nRst, nB4
	dc.b	nRst, nC5, nRst, nD5, nRst, nE5, nRst, nF5
	dc.b	nRst, nG5, nRst, nAb5, nRst
	smpsLoop		$00, $02, Pend_Loop7, Target
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump		Pend_Loop7, Target

Pend_PSG2:
	smpsPSGvoice	$08
	smpsModSet	$01, $01, $02, $04
	dc.b	nRst, $60, nRst, $06

Pend_Loo$8:
	dc.b	nA4, $06, nA4, nA5, nA4, nE5, nA4, nG5
	dc.b	nA4, nA4, nA4, nA5, nA4, nC5, nD5, nE5
	dc.b	nG5, nA4, $06, nA4, nA5, nA4, nE5, nA4
	dc.b	nG5, nA4, nA4, nA4, nA5, nA4, nC5, nB4
	dc.b	nA4, nG4
	smpsLoop		$01, $03, Pend_Loo$8, Target
	dc.b	nA4, $06, nA4, nA5, nA4, nE5, nA4, nG5
	dc.b	nA4, nA4, nA4, nA5, nA4, nC5, nD5, nE5
	dc.b	nG5, nA4, $06, nA4, nA5, nA4, nE5, nA4
	dc.b	nG5, nA4, nA4, nB4, nC5, nD5, nE5, nF5
	dc.b	nG5, nAb5
	smpsLoop		$00, $02, Pend_Loo$8, Target
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60
	smpsJump		Pend_Loo$8, Target

Pend_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nRst, $60

Pend_Jump1:
	dc.b	nC4, $06
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	dc.b	nC4
	smpsSetVol	$04
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FD
	dc.b	nC4
	smpsSetVol	$03
	dc.b	nC4
	smpsSetVol	$FC
	smpsJump		Pend_Jump1, Target

Pend_PWM1:
	dc.b	$8B, $18, $82, $18, $82, $06, $82, $82
	dc.b	$82, $82, $0C, $82, $06, $82

Pend_Loo$9:
	dc.b	$8B, $18, $82, $18, nRst, $18, $82, $18
	smpsLoop		$00, $07, Pend_Loo$9, Target
	smpsLoop		$01, $02, Pend_PWM1, Target
	dc.b	$8B, $18, $82, $18, $82, $06, $82, $82
	dc.b	$82, $82, $0C, $82, $06, $82

Pend_Loop10:
	dc.b	$8B, $18, $8B, $8B, $8B
	smpsLoop		$00, $07, Pend_Loop10, Target
	dc.b	$8B, $18, $8B, $18, $82, $06, $82, $82
	dc.b	$82, $82, $82, $82, $82
	smpsJump		Pend_Loo$9, Target

Pend_PWM2:
	dc.b	$96, $0C, $87, $0C, nRst, $0C, $87, $0C
	dc.b	nRst, $30

Pend_Loop11:
	dc.b	nRst, $0C, $87, nRst, $87, nRst, $87, nRst
	dc.b	$87
	smpsLoop		$00, $07, Pend_Loop11, Target
	dc.b	nRst, $0C, $87, nRst, $87, nRst, $30
	smpsLoop		$01, $02, Pend_Loop11, Target

Pend_Loop12:
	dc.b	nRst, $60
	smpsLoop		$00, $08, Pend_Loop12, Target
	smpsJump		Pend_Loop11, Target

Pend_PWM3:
	dc.b	$96, $12, $86, $06, nRst, $12, $86, $06
	dc.b	nRst, $30

Pend_Loop13:
	dc.b	nRst, $12, $86, $06, nRst, $12, $86, $06
	dc.b	nRst, $12, $86, $06, nRst, $18
	smpsLoop		$00, $07, Pend_Loop13, Target
	dc.b	nRst, $12, $86, $06, nRst, $12, $86, $06
	dc.b	nRst, $30
	smpsLoop		$01, $02, Pend_Loop13, Target

Pend_Loop14:
	dc.b	nRst, $60
	smpsLoop		$00, $08, Pend_Loop14, Target
	smpsJump		Pend_Loop13, Target

Pend_PWM4:
	dc.b	$96, $60

Pend_Loop15:
	dc.b	$96, $30, $87, $18, nRst, $18
	smpsLoop		$00, $07, Pend_Loop15, Target
	dc.b	nRst, $60
	smpsLoop		$01, $02, Pend_Loop15, Target

Pend_Loop16:
	dc.b	nRst, $60
	smpsLoop		$00, $08, Pend_Loop16, Target
	smpsJump		Pend_Loop15, Target

Pend_Patches:

	
	dc.b	$3A
	dc.b	$20, $23, $60, $00,	$1E, $1F, $1F, $1F
	dc.b	$0A, $0A, $0B, $09,	$05, $07, $0A, $00
	dc.b	$A4, $85, $96, $D7,	$21, $25, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$23
	dc.b	$0D, $01, $00, $00,	$1F, $1F, $1F, $1F
	dc.b	$0E, $0D, $09, $09,	$00, $00, $00, $00
	dc.b	$D6, $D6, $D6, $D7,	$33, $15, $17, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $01, $03, $02,	$0D, $07, $07, $19
	dc.b	$09, $00, $00, $03,	$01, $01, $01, $08
	dc.b	$52, $02, $03, $38,	$1A, $23, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $03, $02, $01,	$0F, $10, $11, $19
	dc.b	$0A, $05, $0A, $05,	$02, $02, $02, $02
	dc.b	$36, $36, $36, $58,	$19, $1E, $32, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
