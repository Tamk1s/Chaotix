
Target	EQU	$4E3F8
	smpsHeaderVoice	Party2Party_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $00
	smpsHeaderFM	Party2Party_FM1, Target, $00, $0E
	smpsHeaderFM	Party2Party_FM2, Target, $00, $1B
	smpsHeaderFM	Party2Party_FM3, Target, $FB, $21
	smpsHeaderFM	Party2Party_FM4, Target, $00, $0C
	smpsHeaderFM	Party2Party_FM5, Target, $00, $2B
	smpsHeaderFM	Party2Party_FM6, Target, $00, $0D
	smpsHeaderPSG	Party2Party_PSG1, Target, $F4, $00, $00, $00
	smpsHeaderPSG	Party2Party_PSG2, Target, $F4, $00, $00, $00
	smpsHeaderPSG	Party2Party_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	Party2Party_PWM1, Target, $00, $BB
	smpsHeaderPWM	Party2Party_PWM2, Target, $00, $AB
	smpsHeaderPWM	Party2Party_PWM3, Target, $00, $69
	smpsHeaderPWM	Party2Party_PWM4, Target, $00, $88

Party2Party_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter

Party2Party_Jump1:
	dc.b	nA1, $12, nA2, $06, nRst, nA2, nG2, $0C
	dc.b	nE2, nG2, nD2, $06, nE2, $0C, nAb1, $06
	smpsJump		Party2Party_Jump1, Target

Party2Party_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter

Party2Party_Jump2:
	dc.b	nA3, $06, nCs4, nE4, nG4, nA4, nCs5, nE5
	dc.b	nG5
	smpsAlterVol		$F6
	dc.b	nA4, $06, nCs5, nE5, nG5, nA5, nCs6, nE6
	dc.b	nG6
	smpsAlterVol		$0A
	smpsJump		Party2Party_Jump2, Target

Party2Party_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter

Party2Party_Jump3:
	dc.b	nA3, $06, nCs4, nE4, nG4, nA4, nCs5, nE5
	dc.b	nG5
	smpsAlterVol		$F6
	dc.b	nA4, $06, nCs5, nE5, nG5, nA5, nCs6, nE6
	dc.b	nG6
	smpsAlterVol		$0A
	smpsJump		Party2Party_Jump3, Target

Party2Party_FM4:
	smpsFMvoice		$02
	smpsPan		panLeft

Party2Party_Loop1:
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	dc.b	nE5, $06
	smpsLoop		$00, $03, Party2Party_Loop1, Target
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE5, $06
	smpsPan		panRight

Party2Party_Loop2:
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	dc.b	nE5, $06
	smpsLoop		$00, $03, Party2Party_Loop2, Target
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE5, $06
	smpsPan		panLeft
	smpsJump		Party2Party_Loop1, Target

Party2Party_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06

Party2Party_Jump4:
	dc.b	nA3, $06, nCs4, nE4, nG4, nA4, nCs5, nE5
	dc.b	nG5
	smpsAlterVol		$F6
	dc.b	nA4, $06, nCs5, nE5, nG5, nA5, nCs6, nE6
	dc.b	nG6
	smpsAlterVol		$0A
	smpsJump		Party2Party_Jump4, Target

Party2Party_FM6:
	smpsFMvoice		$02
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $06
	smpsPan		panLeft

Party2Party_Loop3:
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	dc.b	nE5, $06
	smpsLoop		$00, $03, Party2Party_Loop3, Target
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE5, $06
	smpsPan		panRight

Party2Party_Loop4:
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	dc.b	nE5, $06
	smpsLoop		$00, $03, Party2Party_Loop4, Target
	dc.b	nA5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nA5, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE5, $06
	smpsPan		panLeft
	smpsJump		Party2Party_Loop3, Target

Party2Party_PSG1:
	smpsStop

Party2Party_PSG2:
	smpsStop

Party2Party_PSG3:
	smpsPSGvoice	$02
	smpsPSGform	$E7

Party2Party_Jump5:
	dc.b	nC4, $06
	smpsSetVol	$03
	dc.b	nC4, $06
	smpsSetVol	$FE
	dc.b	nC4, $06
	smpsSetVol	$02
	dc.b	nC4, $06
	smpsSetVol	$FD
	smpsJump		Party2Party_Jump5, Target

Party2Party_PWM1:
	dc.b	$8B, $12, $06
	smpsJump		Party2Party_PWM1, Target

Party2Party_PWM2:
	dc.b	$96, $0C, $82
	smpsJump		Party2Party_PWM2, Target

Party2Party_PWM3:
	dc.b	$8E, $0C
	smpsAlterVol		$AB
	dc.b	$8D, $09, nRst, $03
	smpsAlterVol		$55
	smpsJump		Party2Party_PWM3, Target

Party2Party_PWM4:
	dc.b	$96, $0C
	smpsAlterVol		$A0
	dc.b	$90, $0C
	smpsAlterVol		$60
	dc.b	nRst, $0C
	smpsAlterVol		$FA
	dc.b	$91, $06, $91
	smpsAlterVol		$06
	smpsJump		Party2Party_PWM4, Target

Party2Party_Patches:

	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$1F, $1F, $1F, $1F
	dc.b	$0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	dc.b	$F6, $97, $A7, $A7,	$1C, $80, $80, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$11, $12, $51, $31,	$1E, $19, $14, $14
	dc.b	$08, $0A, $0A, $05,	$08, $08, $05, $05
	dc.b	$35, $46, $36, $57,	$19, $1E, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
