
Target	EQU	$4E174
	smpsHeaderVoice	HaveFun_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $4D
	smpsHeaderFM	HaveFun_FM1, Target, $00, $0A
	smpsHeaderFM	HaveFun_FM2, Target, $00, $08
	smpsHeaderFM	HaveFun_FM3, Target, $00, $0D
	smpsHeaderFM	HaveFun_FM4, Target, $F4, $10
	smpsHeaderFM	HaveFun_FM5, Target, $FB, $15
	smpsHeaderFM	HaveFun_FM6, Target, $F4, $1C
	smpsHeaderPSG	HaveFun_PSG1, Target, $F4, $00, $00, $00
	smpsHeaderPSG	HaveFun_PSG2, Target, $F4, $03, $00, $00
	smpsHeaderPSG	HaveFun_PSG3, Target, $23, $00, $00, $00
	smpsHeaderPWM	HaveFun_PWM1, Target, $00, $FF
	smpsHeaderPWM	HaveFun_PWM2, Target, $00, $AF
	smpsHeaderPWM	HaveFun_PWM3, Target, $00, $FF
	smpsHeaderPWM	HaveFun_PWM4, Target, $00, $88

HaveFun_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nA1, $30, nC2, nA1, nC2, nCs2, $06, nE2
	dc.b	nG2, nBb2, nD3, nF3, nAb3, nB3, $36
	smpsStop

HaveFun_FM2:
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nE6, $18
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nE7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nEb6
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nEb7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nD6
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nD7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nE6
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nE7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nG6, $30
	smpsAlterVol		$03
	smpsPan		panCenter, $1C
	smpsStop

HaveFun_FM3:
	smpsFMvoice		$02
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $09, nE6, $18
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nE7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nEb6
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nEb7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nD6
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nD7
	smpsAlterVol		$FD
	smpsPan		panCenter
	dc.b	nE6
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nE7, $0F
	smpsAlterVol		$FD
	smpsPan		panCenter
	smpsAlterVol		$FB
	dc.b	nCs5, $06, nE5, $03, nRst, nG5, $06, nBb5
	dc.b	$03, nRst, nD6, $06, nF6, $03, nRst, nA6
	dc.b	$06, nB6, $06
	smpsStop

HaveFun_FM4:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		HaveFun_Call1, Target
	smpsStop

HaveFun_Call1:
	smpsAlterVol		$F6
	dc.b	nA4, $06
	smpsAlterVol		$0A
	dc.b	nB4, $03, nRst, nC5, nRst, nA4, $06, nB4
	dc.b	$03, nRst, nA4, nRst, nB4, nRst, nC5, $06
	dc.b	nA4, $06, nE5, $03, nRst, nC5, nRst, nA4
	dc.b	$06, nB4, $03, nRst, nA4, nRst, nB4, nRst
	smpsAlterVol		$F6
	dc.b	nC5, $06
	smpsAlterVol		$0A
	smpsLoop		$00, $02, HaveFun_Call1, Target
	smpsAlterVol		$F6
	dc.b	nCs5, $06
	smpsAlterVol		$0A
	dc.b	nE5, $03, nRst, nG5, $06, nBb5, $03, nRst
	smpsAlterVol		$F6
	dc.b	nD6, $06
	smpsAlterVol		$0A
	dc.b	nF6, $03, nRst, nA6, $06, nB6, $36
	smpsReturn

HaveFun_FM5:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		HaveFun_Call1, Target
	smpsStop

HaveFun_FM6:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall		HaveFun_Call1, Target
	smpsStop

HaveFun_PSG1:
	smpsPSGvoice	$02

HaveFun_Loop1:
	dc.b	nA4, $06, nA5
	smpsSetVol	$07
	dc.b	nA5, $06, nRst, $06
	smpsSetVol	$F9
	smpsLoop		$00, $08, HaveFun_Loop1, Target
	dc.b	nRst, $60
	smpsStop

HaveFun_PSG2:
	smpsPSGvoice	$02
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $0C, nA4, $06, nA5, $03, nRst, $03
	smpsSetVol	$07
	dc.b	nRst, $06, nRst, $06
	smpsSetVol	$F9
	smpsLoop		$00, $08, HaveFun_Loop1, Target
	dc.b	nRst, $60
	smpsStop

HaveFun_PSG3:
	smpsPSGform	$E7

HaveFun_Loop2:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsSetVol	$03
	dc.b	nC4, $0C, nC4, nC4, nC4, nC4, nC4, nC4
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	nC4, $06
	smpsSetVol	$FD
	smpsLoop		$00, $02, HaveFun_Loop2, Target
	smpsPSGvoice	$02
	dc.b	nC4, $0C, nC4
	smpsPSGvoice	$05
	dc.b	nC4, $06
	smpsPSGvoice	$48
	dc.b	nC4, $0C, nRst, $30
	smpsStop

HaveFun_PWM1:
	dc.b	$8B, $18, nRst, $12, $8B, $06, $8B, $0C
	dc.b	$8B, nRst, $18
	smpsLoop		$00, $02, HaveFun_PWM1, Target
	dc.b	$8B, $18, nRst, $48
	smpsStop

HaveFun_PWM2:
	dc.b	$96, $60, $96, $30, $82, $12
	smpsAlterVol		$A6
	dc.b	$03, $03
	smpsAlterVol		$11
	dc.b	$82, $06
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82
	smpsAlterVol		$22
	dc.b	$82, $18, nRst, $48
	smpsStop

HaveFun_PWM3:
	dc.b	$96, $60, $96, $60, $96, $2A, $89, $06
	dc.b	nRst, $30
	smpsStop

HaveFun_PWM4:
	dc.b	$95, $30, nRst, $1E
	smpsAlterVol		$11
	dc.b	$94, $12, $95, $18, nRst, $18
	smpsAlterVol		$78
	dc.b	$95, $03, $95
	smpsAlterVol		$11
	dc.b	$95, $03, $95
	smpsAlterVol		$11

HaveFun_Loop3:
	dc.b	$95, $03, $95
	smpsAlterVol		$22
	smpsLoop		$00, $06, HaveFun_Loop3, Target
	dc.b	$94, $0C
	smpsStop

HaveFun_Patches:

	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$1F, $1F, $1F, $1F
	dc.b	$0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	dc.b	$F6, $97, $A7, $A7,	$1C, $80, $80, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $0F, $01, $01,	$0F, $0F, $0F, $14
	dc.b	$0A, $0A, $0A, $05,	$02, $02, $02, $08
	dc.b	$56, $A6, $56, $17,	$19, $28, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$35, $76, $35, $36,	$1F, $1D, $1F, $1C
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$A3, $77, $A3, $77,	$1E, $80, $28, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
