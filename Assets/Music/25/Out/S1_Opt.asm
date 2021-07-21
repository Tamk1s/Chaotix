
	sHeaderInit
	smpsHeaderVoice	XVSF_Breakout_Patches, Target
	smpsHeaderChan	$07, $02
	smpsHeaderTempo	$02, $06
	sHeaderDAC	XVSF_Breakout_DAC
	smpsHeaderFM	XVSF_Breakout_FM1, Target, $00, $08
	smpsHeaderFM	XVSF_Breakout_FM2, Target, $00, $14
	smpsHeaderFM	XVSF_Breakout_FM3, Target, $00, $08
	smpsHeaderFM	XVSF_Breakout_FM4, Target, $00, $08
	smpsHeaderFM	XVSF_Breakout_FM5, Target, $00, $08
	smpsHeaderFM	XVSF_Breakout_FM6, Target, $00, $14
	smpsHeaderPSG	XVSF_Breakout_PSG1, Target, $00, $04, $00, $00
	smpsHeaderPSG	XVSF_Breakout_PSG2, Target, $00, $02, $00, $00

XVSF_Breakout_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nA2, $03, nG2, nA2, nC3, nRst, $02
	smpsAlterNote	$05
	dc.b	$01
	smpsAlterNote	$F1
	dc.b	nA2
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $04, nC3, $03, nD3, nRst, nC3, nRst
	dc.b	nA2, nRst, nG2, nRst, nA2, nG2, nA2, nC3
	dc.b	nRst, nA2, $06, nC3, $03, nD3, nRst, nEb3
	dc.b	nRst, nE3
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	nRst, $06, nA2, $03, nG2, nA2, nC3, nRst
	dc.b	nA2, $06, nC3, $03, nD3, nRst, nC3, nRst
	dc.b	nA2, nRst, nG2, nRst, nA2, $06
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$10
	dc.b	smpsNoAttack, nAb2, $02
	smpsAlterNote	$EC
	dc.b	nRst, $01
	smpsAlterNote	$0A
	dc.b	$02
	smpsAlterNote	$00
	dc.b	$12, nE2, $03, $03, nE3, $01
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nE3, nE2, $06, nRst, $03
	smpsJump		XVSF_Breakout_FM1, Target

XVSF_Breakout_FM2:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nRst, $06, nA2, $03, nG2, nA2, nC3, nRst
	dc.b	$02
	smpsAlterNote	$05
	dc.b	$01
	smpsAlterNote	$F1
	dc.b	nA2
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $04, nC3, $03, nD3, nRst, nC3, nRst
	dc.b	nA2, nRst, nG2, nRst, nA2, nG2, nA2, nC3
	dc.b	nRst, nA2, $06, nC3, $03, nD3, nRst, nEb3
	dc.b	nRst, nE3
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	nRst, $06, nA2, $03, nG2, nA2, nC3, nRst
	dc.b	nA2, $06, nC3, $03, nD3, nRst, nC3, nRst
	dc.b	nA2, nRst, nG2, nRst, nA2, $06
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$10
	dc.b	smpsNoAttack, nAb2, $02
	smpsAlterNote	$EC
	dc.b	nRst, $01
	smpsAlterNote	$0A
	dc.b	$02
	smpsAlterNote	$00
	dc.b	$12, nE2, $03, $03, nE3, $01
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nE3, nRst, $03
	smpsJump		XVSF_Breakout_FM2, Target

XVSF_Breakout_FM3:
	smpsPan		panLeft
	smpsFMvoice		$01
	dc.b	nA2, $03, nG2, nA2, nC3, nRst, nA2, $06
	dc.b	nC3, $03, nD3, nRst, nC3, nRst, nA2, nRst
	dc.b	nG2, nRst, nA2, nG2, nA2, nC3, nRst, nA2
	dc.b	$06, nC3, $03, nD3, nRst, nEb3, nRst, nE3
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nEb3, $01
	smpsAlterNote	$EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nD3, nRst, $02
	smpsAlterNote	$00
	dc.b	$04, nA2, $03, nG2, nA2, nC3, nRst, nA2
	dc.b	$06, nC3, $03, nD3, nRst, nC3, nRst, nA2
	dc.b	nRst, nG2, nRst, nA2, $06
	smpsAlterNote	$14
	dc.b	smpsNoAttack, nAb2, $02
	smpsAlterNote	$F7
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterNote	$00
	dc.b	$14, nE2, $03, $03
	smpsAlterNote	$01
	dc.b	nEb3, $01
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nE3, nE2, $06, nRst, $03
	smpsJump		XVSF_Breakout_FM3, Target

XVSF_Breakout_FM4:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b	nA2, $03, nG2, nA2, nC3, nRst, nA2, $06
	dc.b	nC3, $03, nD3, nRst, nC3, nRst, nA2, nRst
	dc.b	nG2, nRst, nA2, nG2, nA2, nC3, nRst, nA2
	dc.b	$06, nC3, $03, nD3, nRst, nEb3, nRst, nE3
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nEb3, $01
	smpsAlterNote	$EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nD3, nRst, $02
	smpsAlterNote	$00
	dc.b	$04, nA2, $03, nG2, nA2, nC3, nRst, nA2
	dc.b	$06, nC3, $03, nD3, nRst, nC3, nRst, nA2
	dc.b	nRst, nG2, nRst, nA2, $06
	smpsAlterNote	$14
	dc.b	smpsNoAttack, nAb2, $02
	smpsAlterNote	$F7
	dc.b	smpsNoAttack, $01, nRst
	smpsAlterNote	$00
	dc.b	$14, nE2, $03, $03
	smpsAlterNote	$01
	dc.b	nEb3, $01
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nE3, nE2, $06, nRst, $03
	smpsJump		XVSF_Breakout_FM4, Target

XVSF_Breakout_FM5:
	smpsPan		panLeft
	smpsFMvoice		$03
	dc.b	nRst, $0C

XVSF_Breakout_Loop1:
	dc.b	nA5, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop1, Target
	smpsAlterVol		$05
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol		$0E
	dc.b	nA5, $02, nRst, $37
	smpsAlterVol		$ED
	dc.b	nB5, $03, nRst, $01
	smpsAlterVol		$0B
	dc.b	nB5, $03, nRst, $01
	smpsAlterVol		$0A
	dc.b	nB5, $03, nRst, $0D
	smpsAlterVol		$EB

XVSF_Breakout_Loop2:
	dc.b	nA5, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop2, Target
	smpsAlterVol		$05
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol		$0E
	dc.b	nA5, $02, nRst, $43
	smpsAlterVol		$ED
	smpsJump		XVSF_Breakout_FM5, Target

XVSF_Breakout_FM6:
	smpsPan		panRight
	smpsFMvoice		$03
	dc.b	nRst, $12

XVSF_Breakout_Loop3:
	dc.b	nA5, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop3, Target
	smpsAlterVol		$09
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol		$0E
	dc.b	nA5, $02, nRst, $37
	smpsAlterVol		$E9
	dc.b	nB5, $03, nRst, $01
	smpsAlterVol		$0F
	dc.b	nB5, $03, nRst, $01
	smpsAlterVol		$09
	dc.b	nB5, $03, nRst, $0D
	smpsAlterVol		$E8

XVSF_Breakout_Loop4:
	dc.b	nA5, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop4, Target
	smpsAlterVol		$09
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol		$0E
	dc.b	nA5, $02, nRst, $3D
	smpsAlterVol		$E9
	smpsJump		XVSF_Breakout_FM6, Target

XVSF_Breakout_PSG1:
	smpsPSGvoice	$02
	dc.b	nRst, $0C

XVSF_Breakout_Loop5:
	dc.b	nE2, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop5, Target
	smpsSetVol	$03
	dc.b	nE2, $02, nRst, $01
	smpsSetVol	$06
	dc.b	nE2, $02, nRst, $37
	smpsSetVol	$F7
	dc.b	nE3, $03, nRst, $01
	smpsSetVol	$06
	dc.b	nE3, $03, nRst, $01
	smpsSetVol	$03
	dc.b	nE3, $03, nRst, $0D
	smpsSetVol	$F7

XVSF_Breakout_Loop6:
	dc.b	nE2, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop6, Target
	smpsSetVol	$03
	dc.b	nE2, $02, nRst, $01
	smpsSetVol	$06
	dc.b	nE2, $02, nRst, $43
	smpsSetVol	$F7
	smpsJump		XVSF_Breakout_PSG1, Target

XVSF_Breakout_PSG2:
	smpsPSGvoice	$02

XVSF_Breakout_Jump1:
	dc.b	nRst, $12

XVSF_Breakout_Loop7:
	dc.b	nE2, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loop7, Target
	smpsSetVol	$03
	dc.b	nE2, $02, nRst, $01
	smpsSetVol	$06
	dc.b	nE2, $02, nRst, $37
	smpsSetVol	$F7
	dc.b	nE3, $03, nRst, $01
	smpsSetVol	$05
	dc.b	nE3, $03, nRst, $01
	smpsSetVol	$04
	dc.b	nE3, $03, nRst, $0D
	smpsSetVol	$F7

XVSF_Breakout_Loo$8:
	dc.b	nE2, $02, nRst, $01
	smpsLoop		$00, $04, XVSF_Breakout_Loo$8, Target
	smpsSetVol	$03
	dc.b	nE2, $02, nRst, $01
	smpsSetVol	$06
	dc.b	nE2, $02, nRst, $3D
	smpsSetVol	$F7
	smpsJump		XVSF_Breakout_Jump1, Target

XVSF_Breakout_DAC:
	smpsStop

XVSF_Breakout_Patches:

	
	dc.b	$39
	dc.b	$03, $22, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$0E, $0C, $0C, $0C
	dc.b	$16, $14, $14, $14,	$1E, $15, $1D, $0A
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1D
	dc.b	$00, $10, $21, $34,	$9F, $5F, $5F, $5F
	dc.b	$00, $0F, $0F, $0F,	$09, $06, $06, $0A
	dc.b	$0F, $1C, $1C, $2C,	$1E, $0C, $0C, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$00, $00, $01, $05,	$5F, $5E, $5B, $5B
	dc.b	$0A, $0C, $0E, $0E,	$08, $0A, $08, $07
	dc.b	$B4, $19, $39, $FC,	$21, $0C, $0C, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$51, $01, $11, $01,	$9F, $89, $5B, $50
	dc.b	$09, $09, $1F, $03,	$0A, $00, $0A, $07
	dc.b	$13, $F5, $06, $08,	$1D, $1F, $17, $04
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
