
Target	EQU	$4D51A
	smpsHeaderVoice	NMeetingU_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $0F
	smpsHeaderFM	NMeetingU_FM1, Target, $00, $09
	smpsHeaderFM	NMeetingU_FM2, Target, $00, $0C
	smpsHeaderFM	NMeetingU_FM3, Target, $FB, $15
	smpsHeaderFM	NMeetingU_FM4, Target, $00, $1B
	smpsHeaderFM	NMeetingU_FM5, Target, $FB, $1E
	smpsHeaderFM	NMeetingU_FM6, Target, $0C, $1B
	smpsHeaderPSG	NMeetingU_PSG1, Target, $F4, $00, $00, $00
	smpsHeaderPSG	NMeetingU_PSG2, Target, $F4, $00, $00, $00
	smpsHeaderPSG	NMeetingU_PSG3, Target, $23, $01, $00, $00
	smpsHeaderPWM	NMeetingU_PWM1, Target, $00, $EE
	smpsHeaderPWM	NMeetingU_PWM2, Target, $00, $ED
	smpsHeaderPWM	NMeetingU_PWM3, Target, $00, $00
	smpsHeaderPWM	NMeetingU_PWM4, Target, $00, $BB

NMeetingU_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $3C, nC2, $0C, nB2, $03, nC3, $15

NMeetingU_Loop1:
	dc.b	nF2, $0C, nF3, $06, nRst, nD2, $0C, nD3
	dc.b	$06, nRst, nEb2, $0C, nEb3, $06, nRst, nE2
	dc.b	$0C, nE3, $06, nRst
	smpsLoop		$00, $04, NMeetingU_Loop1, Target
	dc.b	nBb1, $0C, nBb2, $06, nRst, nG1, $0C, nG2
	dc.b	$06, nRst, nAb1, $0C, nAb2, $06, nRst, nA1
	dc.b	$0C, nA2, $06, nRst, nC3, $18, nC3, nRst
	dc.b	$30, nF2, $0C, nF3, $06, nRst, nD2, $0C
	dc.b	nD3, $06, nRst, nEb2, $0C, nEb3, $06, nRst
	dc.b	nE2, $0C, nE3, $06, nRst, nF2, $0C, nFs2
	dc.b	$06, nRst, nG2, $0C, nAb2, $06, nRst, nA2
	dc.b	$0C, nBb2, $06, nRst, nB2, $0C, nC3, $06
	dc.b	nRst
	smpsJump		NMeetingU_Loop1, Target

NMeetingU_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		NMeetingU_Call1, Target

NMeetingU_Call1:
	dc.b	nRst, $60

NMeetingU_Loop2:
	dc.b	nRst, $09, nD6, $03, nEb6, $18, nD6, $06
	dc.b	nRst, nC6, $12, nA5, $06, nRst, $0C, nC6
	dc.b	$06, nRst, nE5, $03, nF5, $09, $03, nRst
	dc.b	$03, nE5, $03, nF5, $09, $03, nRst, $03
	dc.b	nG5, $18, nA5, $06, nRst, $06, nBb5, $06
	dc.b	nRst, $06, nC6, $06, nRst, $06
	smpsLoop		$00, $02, NMeetingU_Loop2, Target
	dc.b	nRst, $09, nD6, $03, nEb6, $18, nD6, $06
	dc.b	nRst, nC6, $12, nA5, $06, nRst, $0C, nC6
	dc.b	$06, nRst, nBb6, $06, nRst, $12, nB6, $03
	dc.b	nC7, $2D, nRst, $18, nRst, $09, nD6, $03
	dc.b	nEb6, $18, nD6, $06, nRst, nC6, $12, nA5
	dc.b	$06, nRst, $0C, nC6, $0C, nF5, $0C, nFs5
	dc.b	$06, nRst, nG5, $0C, nAb5, $06, nRst, nA5
	dc.b	$0C, nBb5, $06, nRst, nB5, $0C, nC6, $06
	dc.b	nRst
	smpsJump		NMeetingU_Loop2, Target

NMeetingU_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		NMeetingU_Call1, Target

NMeetingU_FM4:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $04, $07
	dc.b	nRst, $06
	smpsCall		NMeetingU_Call1, Target

NMeetingU_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $04, $07
	dc.b	nRst, $06
	smpsCall		NMeetingU_Call1, Target

NMeetingU_FM6:
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsModSet	$01, $01, $04, $07
	dc.b	nRst, $0C
	smpsCall		NMeetingU_Call2, Target

NMeetingU_PSG1:
	smpsPSGvoice	$05
	smpsCall		NMeetingU_Call2, Target

NMeetingU_Call2:
	dc.b	nRst, $60

NMeetingU_Loop3:
	dc.b	nRst, $0C, nEb4, $0C, nD4, $18, nC4, $12
	dc.b	$06, nRst, $0C, nD4, $0C, nRst, $0C, nEb4
	dc.b	$0C, nD4, $18, nC4, $06, $0C, nA3, $06
	dc.b	nRst, $0C, nG3, $0C
	smpsLoop		$00, $02, NMeetingU_Loop3, Target
	dc.b	nRst, $0C, nAb4, $0C, nG4, $18, nF4, $12
	dc.b	nG4, $06, nRst, $0C, nAb4, $0C, nBb4, $0C
	dc.b	nRst, nC5, nRst, nRst, $30, nRst, $0C, nEb4
	dc.b	$0C, nD4, $18, nC4, $12, $06, nRst, $0C
	dc.b	nD4, $0C, nEb4, $0C, nE4, $06, nRst, nF4
	dc.b	$0C, nFs4, $06, nRst, nG4, $0C, nAb4, $06
	dc.b	nRst, nA4, $0C, nBb4, $06, nRst
	smpsJump		NMeetingU_Loop3, Target

NMeetingU_PSG2:
	smpsPSGvoice	$05
	dc.b	nRst, $60

NMeetingU_Loop4:
	dc.b	nRst, $0C, nBb3, $0C, nA3, $18, nG3, $12
	dc.b	$06, nRst, $0C, nA3, $0C, nRst, $0C, nBb3
	dc.b	$0C, nA3, $18, nG3, $06, $0C, nF3, $06
	dc.b	nRst, $0C, nEb3, $0C
	smpsLoop		$00, $02, NMeetingU_Loop4, Target
	dc.b	nRst, $0C, nEb4, $0C, nD4, $18, nC4, $12
	dc.b	nD4, $06, nRst, $0C, nEb4, $0C, nF4, $0C
	dc.b	nRst, nG4, nRst, nRst, $30, nRst, $0C, nBb3
	dc.b	$0C, nA3, $18, nG3, $12, $06, nRst, $0C
	dc.b	nA3, $0C, nBb3, $0C, nB3, $06, nRst, nC4
	dc.b	$0C, nCs4, $06, nRst, nD4, $0C, nEb4, $06
	dc.b	nRst, nE4, $0C, nF4, $06, nRst
	smpsJump		NMeetingU_Loop4, Target

NMeetingU_PSG3:
	smpsPSGvoice	$02
	smpsPSGform	$E7
	dc.b	nRst, $60

NMeetingU_Loop5:
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	nC4, $06
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $06
	smpsSetVol	$FD
	smpsLoop		$00, $14, NMeetingU_Loop5, Target
	dc.b	nC4, $18, nC4, nRst, $30

NMeetingU_Loop6:
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	nC4, $06
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $06
	smpsSetVol	$FD
	smpsLoop		$00, $04, NMeetingU_Loop6, Target

NMeetingU_Loop7:
	dc.b	nC4, $0C
	smpsSetVol	$03
	dc.b	nC4, $0C
	smpsSetVol	$FE
	dc.b	nC4, $0C
	smpsSetVol	$02
	dc.b	nC4, $0C
	smpsSetVol	$FD
	smpsLoop		$00, $02, NMeetingU_Loop7, Target
	smpsJump		NMeetingU_Loop5, Target

NMeetingU_PWM1:
	dc.b	$96, $60

NMeetingU_Loo$8:
	dc.b	$81, $18, $81, $81, $81
	smpsLoop		$00, $05, NMeetingU_Loo$8, Target
	dc.b	$81, $18, $81, nRst, $30, $81, $18, $81
	dc.b	$81, $81, $81, $0C, $81, $81, $81, nRst
	dc.b	$30
	smpsJump		NMeetingU_Loo$8, Target

NMeetingU_PWM2:
	dc.b	$82, $18, $12, $06, $0C, $0C, $0C, $0C

NMeetingU_Loo$9:
	dc.b	nRst, $0C, $82
	smpsLoop		$00, $10, NMeetingU_Loo$9, Target
	dc.b	nRst, $0C, $82, nRst, $0C, $82, nRst, $0C
	dc.b	$82, nRst, $06, $82, $82, $82, nRst, $3C
	dc.b	$82, $0C, $82, $82, nRst, $0C, $82, nRst
	dc.b	$0C, $82, nRst, $0C, $82, nRst, $0C, $82
	dc.b	nRst, $30, $82, $0C, $82, $82, $82
	smpsJump		NMeetingU_Loo$9, Target

NMeetingU_PWM3:
	smpsStop

NMeetingU_PWM4:
	dc.b	$96, $60

NMeetingU_Loop10:
	smpsAlterVol		$FD
	dc.b	$90, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $91, $0C, $12
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $0C
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $91, $0C, $06, $06
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $06, nRst, $06, $91, $06
	smpsAlterVol		$30
	smpsLoop		$00, $02, NMeetingU_Loop10, Target
	smpsAlterVol		$FD
	dc.b	$90, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $91, $0C, $12
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $0C
	smpsAlterVol		$30
	smpsAlterVol		$D0
	dc.b	$91, $18
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90
	smpsAlterVol		$03
	dc.b	nRst, $0C
	smpsAlterVol		$D0
	dc.b	$91, $0C, $0C, $0C
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $91, $0C, $12
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $06, $0C
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	$91, $0C
	smpsAlterVol		$30
	smpsAlterVol		$D0
	dc.b	$91, $0C, $0C, $0C, $0C
	smpsAlterVol		$30
	smpsAlterVol		$FD
	dc.b	$90, $0C, $0C, $0C, $0C
	smpsAlterVol		$03
	smpsJump		NMeetingU_Loop10, Target

NMeetingU_Patches:

	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$1F, $1F, $1F, $1F
	dc.b	$0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	dc.b	$F6, $97, $A7, $A7,	$1C, $80, $80, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$12, $1F, $1F, $14
	dc.b	$07, $02, $02, $0A,	$05, $05, $05, $05
	dc.b	$25, $27, $27, $A7,	$1C, $80, $82, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
