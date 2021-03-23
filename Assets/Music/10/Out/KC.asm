Target	EQU	$40000
	smpsHeaderVoice	SA3_Factory_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempoC	$02, $06
	smpsHeaderFM	SA3_Factory_FM1, Target, $00, $08
	smpsHeaderFM	SA3_Factory_FM2, Target, $00, $08
	smpsHeaderFM	SA3_Factory_FM3, Target, $00, $09
	;!@ smpsHeaderFM	SA3_Factory_FM4, Target, $00, $13
	smpsHeaderFM	SA3_Factory_FM4, Target, $F4, $23
	smpsHeaderFM	SA3_Factory_FM5, Target, $00, $08
	smpsHeaderFM	SA3_Factory_FM6, Target, $00, $08
	smpsHeaderPSG	SA3_Factory_PSG1, Target, $00, $05, $00, $00
	smpsHeaderPSG	SA3_Factory_PSG2, Target, $00, $03, $00, $00
	smpsHeaderPSG	SA3_Factory_PSG3, Target, $00, $04, $00, $00
	smpsHeaderPWM	SA3_Factory_PWM1, Target, $00, $8F
	smpsHeaderPWM	SA3_Factory_PWM2, Target, $00, $8F
	smpsHeaderPWM	SA3_Factory_PWM3, Target, $00, $8F
	smpsHeaderPWM	SA3_Factory_PWM4, Target, $00, $8F

SA3_Factory_FM1:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nFs6, $02, nRst, $01, nFs2, $03, nFs4, nFs3
	dc.b	nFs2, nFs1, $02, nRst, $01, nFs6, $02, nRst
	dc.b	$01, nFs4, $03, nFs2, nFs3, nFs2, nFs1, $02
	dc.b	nRst, $01, nFs2, $02, nRst, $01, nFs3, $03
	dc.b	nFs6, $02, nRst, $01, nFs4, $03, nFs2, $02
	dc.b	nRst, $01, nFs3, $03, nFs6, $02, nRst, $01
	dc.b	nFs1, $03, nFs2, $02, nRst, $01, nFs1, $02
	dc.b	nRst, $01, nFs3, $03, nFs2, nFs1, nFs2, $02
	dc.b	nRst, $01, nFs1, $03

SA3_Factory_Loop1:
	dc.b	nFs3, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	smpsLoop		$00, $02, SA3_Factory_Loop1, Target
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03, nFs3, nFs6, $02
	dc.b	nRst, $01, nFs2, $03, nFs4, nFs3, nRst, $60
	dc.b	nFs6, $02, nRst, $01, nFs2, $03, nFs4

SA3_Factory_Loop3:
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03

SA3_Factory_Loop2:
	dc.b	nFs3, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	smpsLoop		$00, $02, SA3_Factory_Loop2, Target
	smpsLoop		$01, $05, SA3_Factory_Loop3, Target
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03, nFs3, nFs6, $02
	dc.b	nRst, $01, nFs2, $03, nFs4, nFs3, nRst, $7F
	;!@ dc.b	$41, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	dc.b	nRst, $41, nFs6, $02, nRst, $01, nFs2, $03, nFs4

SA3_Factory_Loop5:
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03

SA3_Factory_Loop4:
	dc.b	nFs3, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	smpsLoop		$00, $02, SA3_Factory_Loop4, Target
	smpsLoop		$01, $05, SA3_Factory_Loop5, Target
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03, nFs3, nFs6, $02
	dc.b	nRst, $01, nFs2, $03, nFs4, nFs3, nRst, $0C
	smpsJump		SA3_Factory_FM1, Target

SA3_Factory_FM2:
	smpsFMvoice		$01
	dc.b	nCs4, $03, nRst, $09, nB4, nBb4, $03, nRst
	dc.b	$0F, nFs4, $03, nRst, nE4, nFs4, nE4, nFs4
	dc.b	nBb4, nRst, $24, nCs4, $03, nRst, $09, nB4
	dc.b	nBb4, $03, nRst, $0F, nFs4, $03, nRst, nE4
	dc.b	nFs4, nE4, nFs4, nBb4, nRst, $06, nB4, $03
	;!@ dc.b	nBb4, nB4, nCs5, nRst, $7F, $7F, $34, nCs5
	dc.b	nBb4, nB4, nCs5, nRst, $7F, nRst, $7F, nRst, $34, nCs5
	dc.b	$03, nRst, $09, nB4, nBb4, $03, nRst, $0F
	dc.b	nFs4, $03, nRst, nE4, nFs4, nE4, nFs4, nBb4
	dc.b	nRst, $24, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$03, nRst, $0F, nFs4, $03, nRst, nE4, nFs4
	dc.b	nE4, nFs4, nBb4, nRst, $06, nB4, $03, nBb4
	dc.b	nB4, nCs5, nRst, $12, nCs5, $03, nRst, $09
	dc.b	nB4, nBb4, $03, nRst, $0F, nFs4, $03, nRst
	dc.b	nE4, nFs4, nE4, nFs4, nBb4, nRst, $24, nCs5
	dc.b	$03, nRst, $09, nB4, nBb4, $03, nRst, $0F
	dc.b	nFs4, $03, nRst, nE4, nFs4, nE4, nFs4, nBb4
	dc.b	nRst, $06, nB4, $03, nBb4, nB4, nCs5, nRst
	;!@ dc.b	$7F, $53, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$7F, nRst, $53, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$03, nRst, $0F, nFs4, $03, nRst, nE4, nFs4
	dc.b	nE4, nFs4, nBb4, nRst, $24, nCs5, $03, nRst
	dc.b	$09, nB4, nBb4, $03, nRst, $0F, nFs4, $03
	dc.b	nRst, nE4, nFs4, nE4, nFs4, nBb4, nRst, $06
	dc.b	nB4, $03, nBb4, nB4, nCs5, nRst, $12, nCs5
	dc.b	$03, nRst, $09, nB4, nBb4, $03, nRst, $0F
	dc.b	nFs4, $03, nRst, nE4, nFs4, nE4, nFs4, nBb4
	dc.b	nRst, $24, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$03, nRst, $0F, nFs4, $03, nRst, nE4, nFs4
	dc.b	nE4, nFs4, nBb4, nRst, $06, nB4, $03, nBb4
	;!@ dc.b	nB4, nCs5, nRst, $7F, $5F
	dc.b	nB4, nCs5, nRst, $7F, nRst, $5F
	smpsJump		SA3_Factory_FM2, Target

SA3_Factory_FM3:
	smpsPan		panLeft
	smpsFMvoice		$02
	;!@ dc.b	nRst, $7F, $29
	dc.b	nRst, $7F, nRst, $29
	smpsFMvoice		$02
	;!@ dc.b	$18, nA4, $02, nRst, $01, nEb4, $02, nRst
	dc.b	nRst, $18, nA4, $02, nRst, $01, nEb4, $02, nRst
	dc.b	$01, nB3, $02, nRst, $01, nAb3, $02, nRst
	dc.b	$01, nEb4, $02, nRst, $01, nC4, $02, nRst
	dc.b	$01, nG4, $02, nRst, $01, nE4, $02, nRst
	dc.b	$01, nE4, $02, nRst, $01, nCs4, $02, nRst
	dc.b	$01, nEb4, $02, nRst, $01, nB3, $02, nRst
	dc.b	$01, nCs4, $02, nRst, $01, nBb3, $02, nRst
	dc.b	$01, nA4, $02, nRst, $01, nB3, $02, nRst
	dc.b	$01, nBb3, $02, nRst, $01, nG3, $02, nRst
	dc.b	$01, nG4, $02, nRst, $01, nE4, $02, nRst
	dc.b	$01, nB3, $02, nRst, $01, nAb3, $02, nRst
	dc.b	$01, nE4, $02, nRst, $01, nCs4, $02, nRst
	dc.b	$01, nEb4, $02, nRst, $01, nC4, $02, nRst
	dc.b	$01, nD4, $02, nRst, $01, nB3, $02, nRst
	dc.b	$01, nG4, $02, nRst, $01, nE4, $02, nRst
	dc.b	$07, nFs4, $02, nRst, $01, nBb4, $02, nRst
	dc.b	$01, nCs5, $02, nRst, $01, nFs5, $02, nRst
	dc.b	$01, nCs5, $02, nRst, $01, nBb4, $02, nRst
	dc.b	$01, nFs4, $02, nRst, $01, nE4, $02

SA3_Factory_Loop6:
	dc.b	nRst, $01, nFs4, $02, nRst, $01, nBb4, $02
	dc.b	nRst, $01, nCs5, $02, nRst, $01, nFs5, $02
	dc.b	nRst, $01, nCs5, $02, nRst, $01, nBb4, $02
	dc.b	nRst, $01, nFs4, $02, nRst, $01, nCs4, $02
	smpsLoop		$00, $02, SA3_Factory_Loop6, Target
	dc.b	nRst, $01, nB3, $02, nRst, $01, nE4, $02
	dc.b	nRst, $01, nB4, $02, nRst, $01, nE5, $02
	dc.b	nRst, $01, nB4, $02, nRst, $01, nE4, $02
	dc.b	nRst, $01, nB3, $02, nRst, $01, nAb3, $02
	dc.b	nRst, $01, nFs4, $02, nRst, $01, nBb4, $02
	dc.b	nRst, $01, nCs5, $02, nRst, $01, nFs5, $02
	dc.b	nRst, $01, nCs5, $02, nRst, $01, nBb4, $02
	dc.b	nRst, $01, nFs4, $02, nRst, $01, nE4, $02

SA3_Factory_Loop7:
	dc.b	nRst, $01, nFs4, $02, nRst, $01, nBb4, $02
	dc.b	nRst, $01, nCs5, $02, nRst, $01, nFs5, $02
	dc.b	nRst, $01, nCs5, $02, nRst, $01, nBb4, $02
	dc.b	nRst, $01, nFs4, $02, nRst, $01, nCs4, $02
	smpsLoop		$00, $02, SA3_Factory_Loop7, Target
	dc.b	nRst, $01, nB3, $02, nRst, $01, nE4, $02
	dc.b	nRst, $01, nB4, $02, nRst, $01, nE5, $02
	dc.b	nRst, $01, nB4, $02, nRst, $01, nE4, $02
	dc.b	nRst, $01, nB3, $02, nRst, $01, nAb3, $02
	;!@ dc.b	nRst, $04, $7F, $7F, $67
	dc.b	nRst, $04, nRst, $7F, nRst, $7F, nRst, $67
	smpsFMvoice		$05
	;!@ dc.b	$18
	dc.b	nRst, $18
	smpsAlterVol		$0A
	dc.b	nEb4, $2F, nRst, $01, nF4, $2A, nEb4, $03
	dc.b	nF4, nFs4, $30, nAb4, $2F, nRst, $07
	smpsAlterVol		$F6

SA3_Factory_Loop8:
	dc.b	nBb5, $03, nRst, $0C
	smpsAlterVol		$08
	;!@ ?
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	dc.b	$01
	smpsAlterVol		$E9
	dc.b	$02, nRst, $16, nBb5, $03, nRst, $0C, nAb5
	;!@ ?
	dc.b	$06, $02, nRst, $01, nAb5, $02, nRst, $04
	dc.b	nAb5, $02, nRst, $04, nCs6, $03, nRst, $09
	smpsLoop		$00, $05, SA3_Factory_Loop8, Target
	dc.b	nBb5, $03, nRst, $0C
	smpsAlterVol		$08
	;!@ ?
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	dc.b	$01
	smpsAlterVol		$E9
	dc.b	$02, nRst, $16, nBb5, $03, nRst, $0C, nAb5
	dc.b	$06, $02, nRst, $01, nAb5, $02, nRst, $04
	dc.b	nAb5, $02, nRst, $04, nCs6, $03, nRst, $0F
	smpsJump		SA3_Factory_FM3, Target

SA3_Factory_FM4:
	smpsPan		panLeft
	smpsFMvoice		$03
	dc.b	nRst, $15, nBb5, $08
	smpsAlterVol		$0E
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $25
	dc.b	nBb5, $02, nRst, $25
	smpsAlterVol		$08
	dc.b	nAb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nAb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$03, nRst, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nAb5, $03, nRst, $03, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nRst
	smpsPan		panLeft
	dc.b	$15
	smpsAlterVol		$09
	dc.b	nBb5, $08
	smpsAlterVol		$0E
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $25
	dc.b	nBb5, $02, nRst, $25
	smpsAlterVol		$08
	dc.b	nAb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nAb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$03, nRst, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nAb5, $03, nRst, $03, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nRst
	smpsPan		panLeft
	dc.b	nA6, $02, nRst, $01, nEb6, $02, nRst, $01
	dc.b	nB5, $02, nRst, $01, nAb5, $02, nRst, $01
	dc.b	nEb6, $02, nRst, $01, nC6, $02, nRst, $01
	dc.b	nG6, $02, nRst, $01, nE6, $02, nRst, $01
	dc.b	nE6, $02, nRst, $01, nCs6, $02, nRst, $01
	dc.b	nEb6, $02, nRst, $01, nB5, $02, nRst, $01
	dc.b	nCs6, $02, nRst, $01, nBb5, $02, nRst, $01
	dc.b	nA6, $02, nRst, $01, nB5, $02, nRst, $01
	dc.b	nBb5, $02, nRst, $01, nG5, $02, nRst, $01
	dc.b	nG6, $02, nRst, $01, nE6, $02, nRst, $01
	dc.b	nB5, $02, nRst, $01, nAb5, $02, nRst, $01
	dc.b	nE6, $02, nRst, $01, nCs6, $02, nRst, $01
	dc.b	nEb6, $02, nRst, $01, nC6, $02, nRst, $01
	dc.b	nD6, $02, nRst, $01, nB5, $02, nRst, $01
	dc.b	nG6, $02, nRst, $01, nE6, $02, nRst, $0D
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04
	dc.b	nBb5, $02, nRst, $04
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $16
	dc.b	nBb5, $02, nRst, $16
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04, nAb5, $06, $02, nRst, $01
	dc.b	nBb5, $02, nRst, $04, nAb5, $06, nAb5, $02, nRst, $01
	dc.b	nAb5, $02, nRst, $04, nAb5, $02, nRst, $04
	dc.b	nCs6, $03, nRst, $09	
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04
	dc.b	nBb5, $02, nRst, $04
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $16
	dc.b	nBb5, $02, nRst, $16
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04, nAb5, $06, $02, nRst, $01
	dc.b	nBb5, $02, nRst, $04, nAb5, $06, nAb5, $02, nRst, $01
	dc.b	nAb5, $02, nRst, $04

SA3_Factory_Loop9:
	dc.b	nAb5, $02, nRst, $04, nCs6, $03, nRst
	smpsPan		panLeft
	dc.b	$15
	smpsAlterVol		$09
	dc.b	nBb5, $08
	smpsAlterVol		$0E
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $16
	dc.b	nBb5, $02, nRst, $16
	smpsAlterVol		$09
	dc.b	nBb5, $08
	smpsAlterVol		$0E
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04
	dc.b	nBb5, $02, nRst, $04
	smpsAlterVol		$08
	dc.b	nAb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nAb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$03, nRst, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nAb5, $03, nRst, $03, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nRst
	smpsPan		panLeft
	dc.b	$15
	smpsAlterVol		$09
	dc.b	nBb5, $08
	smpsAlterVol		$0E
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $25
	dc.b	nBb5, $02, nRst, $25
	smpsAlterVol		$08
	dc.b	nAb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nAb5, $01
	smpsAlterVol		$E9
	dc.b	nCs5, $03, nRst
	smpsLoop		$00, $02, SA3_Factory_Loop9, Target
	dc.b	nAb5, $02, nRst, $04, nCs6, $03, nRst
	smpsPan		panLeft
	;!@ dc.b	$7F, $41
	dc.b	$7F, nRst, $41

SA3_Factory_Loop10:
	smpsPan		panLeft
	;!@ dc.b	$15
	dc.b	nRst, $15
	smpsAlterVol		$09
	dc.b	nBb5, $08
	smpsAlterVol		$0E
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $25
	dc.b	nBb5, $02, nRst, $25
	smpsAlterVol		$08
	dc.b	nAb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nAb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$03, nRst, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nAb5, $03, nRst, $03, nAb5, $02, nRst, $04, nCs6, $03
	dc.b	nRst
	smpsLoop		$00, $04, SA3_Factory_Loop10, Target
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04
	dc.b	nBb5, $02, nRst, $04
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $16
	dc.b	nBb5, $02, nRst, $16
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04, nAb5, $06, $02, nRst, $01
	dc.b	nBb5, $02, nRst, $04, nAb5, $06, nAb5, $02, nRst, $01
	dc.b	nAb5, $02, nRst, $04, nAb5, $02, nRst, $04
	dc.b	nCs6, $03, nRst, $09
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04
	dc.b	nBb5, $02, nRst, $04
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $16
	dc.b	nBb5, $02, nRst, $16
	smpsAlterVol		$08
	dc.b	nBb5, $08
	smpsAlterVol		$0F
	;!@ dc.b	$01
	dc.b	nBb5, $01
	smpsAlterVol		$E9
	;!@ dc.b	$02, nRst, $04, nAb5, $06, $02, nRst, $01
	dc.b	nBb5, $02, nRst, $04, nAb5, $06, nAb5, $02, nRst, $01
	dc.b	nAb5, $02, nRst, $04, nAb5, $02, nRst, $04
	dc.b	nCs6, $03, nRst
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$09
	smpsJump		SA3_Factory_FM4, Target

SA3_Factory_FM5:
	smpsPan		panLeft
	smpsFMvoice		$04
	dc.b	nFs6, $02, nRst, $01, nFs2, $03, nFs4, nFs3
	dc.b	nFs2, nFs1, $02, nRst, $01, nFs6, $02, nRst
	dc.b	$01, nFs4, $03, nFs2, nFs3, nFs2, nFs1, $02
	dc.b	nRst, $01, nFs2, $02, nRst, $01, nFs3, $03
	dc.b	nFs6, $02, nRst, $01, nFs4, $03, nFs2, $02
	dc.b	nRst, $01, nFs3, $03, nFs6, $02, nRst, $01
	dc.b	nFs1, $03, nFs2, $02, nRst, $01, nFs1, $02
	dc.b	nRst, $01, nFs3, $03, nFs2, nFs1, nFs2, $02
	dc.b	nRst, $01, nFs1, $03

SA3_Factory_Loop11:
	dc.b	nFs3, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	smpsLoop		$00, $02, SA3_Factory_Loop11, Target
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03, nFs3, nFs6, $02
	dc.b	nRst, $01, nFs2, $03, nFs4, nFs3, nRst, $60
	dc.b	nFs6, $02, nRst, $01, nFs2, $03, nFs4

SA3_Factory_Loop13:
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03

SA3_Factory_Loop12:
	dc.b	nFs3, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	smpsLoop		$00, $02, SA3_Factory_Loop12, Target
	smpsLoop		$01, $05, SA3_Factory_Loop13, Target
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03, nFs3, nFs6, $02
	dc.b	nRst, $01, nFs2, $03, nFs4, nFs3, nRst, $7F
	;!@ dc.b	$41, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	dc.b	nRst, $41, nFs6, $02, nRst, $01, nFs2, $03, nFs4

SA3_Factory_Loop15:
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03

SA3_Factory_Loop14:
	dc.b	nFs3, nFs6, $02, nRst, $01, nFs2, $03, nFs4
	smpsLoop		$00, $02, SA3_Factory_Loop14, Target
	smpsLoop		$01, $05, SA3_Factory_Loop15, Target
	dc.b	nFs3, nFs2, nFs1, $02, nRst, $01, nFs6, $02
	dc.b	nRst, $01, nFs4, $03, nFs2, nFs3, nFs2, nFs1
	dc.b	$02, nRst, $01, nFs2, $02, nRst, $01, nFs3
	dc.b	$03, nFs6, $02, nRst, $01, nFs4, $03, nFs2
	dc.b	$02, nRst, $01, nFs3, $03, nFs6, $02, nRst
	dc.b	$01, nFs1, $03, nFs2, $02, nRst, $01, nFs1
	dc.b	$02, nRst, $01, nFs3, $03, nFs2, nFs1, nFs2
	dc.b	$02, nRst, $01, nFs1, $03, nFs3, nFs6, $02
	dc.b	nRst, $01, nFs2, $03, nFs4, nFs3, nRst, $0C
	smpsJump		SA3_Factory_FM5, Target

SA3_Factory_FM6:
	smpsFMvoice		$04
	smpsPan		panCenter
	smpsAlterVol		$05
	dc.b	nCs5, $03, nRst, $09, nB4, nBb4, $03, nRst
	dc.b	$0F, nFs4, $03, nRst, nE4, nFs4, nE4, nFs4
	dc.b	nBb4, nRst, $24, nCs5, $03, nRst, $09, nB4
	dc.b	nBb4, $03, nRst, $0F, nFs4, $03, nRst, nE4
	dc.b	nFs4, nE4, nFs4, nBb4, nRst, $06, nB4, $03
	;!@ dc.b	nBb4, nB4, nCs5, nRst, $7F, $7F, $34, nCs5
	dc.b	nBb4, nB4, nCs5, nRst, $7F, nRst, $7F, nRst, $34, nCs5
	dc.b	$03, nRst, $09, nB4, nBb4, $03, nRst, $0F
	dc.b	nFs4, $03, nRst, nE4, nFs4, nE4, nFs4, nBb4
	dc.b	nRst, $24, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$03, nRst, $0F, nFs4, $03, nRst, nE4, nFs4
	dc.b	nE4, nFs4, nBb4, nRst, $06, nB4, $03, nBb4
	dc.b	nB4, nCs5, nRst, $12, nCs5, $03, nRst, $09
	dc.b	nB4, nBb4, $03, nRst, $0F, nFs4, $03, nRst
	dc.b	nE4, nFs4, nE4, nFs4, nBb4, nRst, $24, nCs5
	dc.b	$03, nRst, $09, nB4, nBb4, $03, nRst, $0F
	dc.b	nFs4, $03, nRst, nE4, nFs4, nE4, nFs4, nBb4
	dc.b	nRst, $06, nB4, $03, nBb4, nB4, nCs5, nRst
	;!@ dc.b	$7F, $53, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$7F, nRst, $53, nCs5, $03, nRst, $09, nB4, nBb4
	
	dc.b	$03, nRst, $0F, nFs4, $03, nRst, nE4, nFs4
	dc.b	nE4, nFs4, nBb4, nRst, $24, nCs5, $03, nRst
	dc.b	$09, nB4, nBb4, $03, nRst, $0F, nFs4, $03
	dc.b	nRst, nE4, nFs4, nE4, nFs4, nBb4, nRst, $06
	dc.b	nB4, $03, nBb4, nB4, nCs5, nRst, $12, nCs5
	dc.b	$03, nRst, $09, nB4, nBb4, $03, nRst, $0F
	dc.b	nFs4, $03, nRst, nE4, nFs4, nE4, nFs4, nBb4
	dc.b	nRst, $24, nCs5, $03, nRst, $09, nB4, nBb4
	dc.b	$03, nRst, $0F, nFs4, $03, nRst, nE4, nFs4
	dc.b	nE4, nFs4, nBb4, nRst, $06, nB4, $03, nBb4
	;!@ dc.b	nB4, nCs5, nRst, $7F, $5F
	dc.b	nB4, nCs5, nRst, $7F, nRst, $5F
	smpsAlterVol		$FB
	smpsJump		SA3_Factory_FM6, Target

SA3_Factory_PSG1:
	dc.b	nRst, $12
	smpsPSGvoice	$00
	;!@ dc.b	$03, nFs2, $08
	dc.b	nRst, $03, nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F8
	dc.b	$02, nRst, $25
	smpsSetVol	$03
	dc.b	nE2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F8
	dc.b	$03, nRst, nE2, $02, nRst, $04, nAb2, $03
	dc.b	nRst, $18
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $25
	smpsSetVol	$03
	dc.b	nE2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$03, nRst, nE2, $02, nRst, $04, nAb2, $03
	dc.b	nRst, nA3, $01, nA1
	smpsPSGvoice	$03
	dc.b	nRst, $02, nEb1, $01, nRst, $02, nB0, $01
	dc.b	nRst, $02, nAb0, $01, nRst, $02, nEb1, $01
	dc.b	nRst, $02, nC1, $01, nRst, $02, nG1, $01
	dc.b	nRst, $02, nE1, $01, nRst, $02, nE1, $01
	dc.b	nRst, $02, nCs1, $01, nRst, $02, nEb1, $01
	dc.b	nRst, $02, nB0, $01, nRst, $02, nCs1, $01
	dc.b	nRst, $02, nBb0, $01, nRst, $02, nA1, $01
	dc.b	nRst, $02, nB0, $01, nRst, $02, nBb0, $01
	dc.b	nRst, $02, nG0, $01, nRst, $02, nG1, $01
	dc.b	nRst, $02, nE1, $01, nRst, $02, nB0, $01
	dc.b	nRst, $02, nAb0, $01, nRst, $02, nE1, $01
	dc.b	nRst, $02, nCs1, $01, nRst, $02, nEb1, $01
	dc.b	nRst, $02, nC1, $01, nRst, $02, nD1, $01
	dc.b	nRst, $02, nB0, $01, nRst, $02, nG1, $01
	dc.b	nRst, $02, nE1, $01, nRst, nRst, $07, nFs1
	dc.b	$01, nRst, $02, nBb1, $01, nRst, $02, nCs2
	dc.b	$01, nRst, $02, nFs2, $01, nRst, $02, nCs2
	dc.b	$01, nRst, $02, nBb1, $01, nRst, $02, nFs1
	dc.b	$01, nRst, $02, nE1, $01

SA3_Factory_Loop16:
	dc.b	nRst, $02, nFs1, $01, nRst, $02, nBb1, $01
	dc.b	nRst, $02, nCs2, $01, nRst, $02, nFs2, $01
	dc.b	nRst, $02, nCs2, $01, nRst, $02, nBb1, $01
	dc.b	nRst, $02, nFs1, $01, nRst, $02, nCs1, $01
	smpsLoop		$00, $02, SA3_Factory_Loop16, Target
	dc.b	nRst, $02, nB0, $01, nRst, $02, nE1, $01
	dc.b	nRst, $02, nB1, $01, nRst, $02, nE2, $01
	dc.b	nRst, $02, nB1, $01, nRst, $02, nE1, $01
	dc.b	nRst, $02, nB0, $01, nRst, $02, nAb0, $01
	dc.b	nRst, $02, nFs1, $01, nRst, $02, nBb1, $01
	dc.b	nRst, $02, nCs2, $01, nRst, $02, nFs2, $01
	dc.b	nRst, $02, nCs2, $01, nRst, $02, nBb1, $01
	dc.b	nRst, $02, nFs1, $01, nRst, $02, nE1, $01

SA3_Factory_Loop17:
	dc.b	nRst, $02, nFs1, $01, nRst, $02, nBb1, $01
	dc.b	nRst, $02, nCs2, $01, nRst, $02, nFs2, $01
	dc.b	nRst, $02, nCs2, $01, nRst, $02, nBb1, $01
	dc.b	nRst, $02, nFs1, $01, nRst, $02, nCs1, $01
	smpsLoop		$00, $02, SA3_Factory_Loop17, Target
	dc.b	nRst, $02, nB0, $01, nRst, $02, nE1, $01
	dc.b	nRst, $02, nB1, $01, nRst, $02, nE2, $01
	dc.b	nRst, $02, nB1, $01, nRst, $02, nE1, $01
	dc.b	nRst, $02, nB0, $01, nRst, $02, nAb0, $01
	dc.b	nRst, $13
	smpsPSGvoice	$00
	;!@ dc.b	$03
	dc.b	nRst, $03
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $16
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $04
	smpsSetVol	$03
	dc.b	nE2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$03, nRst, nE2, $02, nRst, $04, nAb2, $03
	dc.b	nRst, $18
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $25
	smpsSetVol	$03
	dc.b	nE2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	nAb1, $03, nRst, nE2, $02, nRst, $04, nAb2
	dc.b	$03, nRst, $18
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $16
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $04
	smpsSetVol	$03
	dc.b	nE2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$03, nRst, nE2, $02, nRst, $04, nAb2, $03
	dc.b	nRst, $18
	smpsSetVol	$04
	dc.b	nFs2, $08
	smpsSetVol	$05
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $25
	smpsSetVol	$03
	dc.b	nE2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	nAb1, $03, nRst, nE2, $02, nRst, $04, nAb2
	dc.b	$03
	smpsPSGvoice	$05
	dc.b	nRst
	smpsSetVol	$04
	dc.b	nB0, $2F, nRst, $01, nCs1, $2A, nB0, $03
	dc.b	nCs1, nD1, $30, nE1, $2F, nRst, $07
	smpsSetVol	$FC

SA3_Factory_Loop18:
	dc.b	nFs2, $03, nRst, $0C
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $16, nFs2, $03, nRst, $0C, nE2
	dc.b	$06, $02, nRst, $01, nE2, $02, nRst, $04
	dc.b	nE2, $02, nRst, $04, nAb2, $03, nRst, $09
	smpsLoop		$00, $05, SA3_Factory_Loop18, Target
	dc.b	nFs2, $03, nRst, $0C
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $16, nFs2, $03, nRst, $0C, nE2
	dc.b	$06, $02, nRst, $01, nE2, $02, nRst, $04
	dc.b	nE2, $02, nRst, $04, nAb2, $03, nRst, $0F
	smpsSetVol	$03
	smpsJump		SA3_Factory_PSG1, Target

SA3_Factory_PSG2:
	smpsPSGvoice	$04

SA3_Factory_Loop19:
	dc.b	nFs0, $03, nC0, nRst, nC0, nC0, nC0, nFs0
	dc.b	nC0, nRst, nC0, nE0, nC0, nRst, nC0, nE0
	dc.b	nC0, nC0, nC0, nFs0, nC0, nRst, nE0, nC0
	dc.b	nRst, nC0, nRst, nC0, nC0, nFs0, nC0, nE0
	dc.b	nC0
	smpsLoop		$00, $02, SA3_Factory_Loop19, Target
	dc.b	nFs0, $02
	smpsSetVol	$FF
	dc.b	smpsNoAttack, $01, nC0, $03, nRst, nC0, nC0, nC0
	dc.b	nFs0, nC0, nRst, nC0, nE0, nC0, nRst, nC0
	dc.b	nE0, nC0, nC0, nC0, nFs0, nC0, nRst, nE0
	dc.b	nC0, nRst, nC0, nRst, nC0, nC0, nFs0, nC0
	dc.b	nRst, $06
	smpsPSGvoice	$00
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $04
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $16
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $04, nE2, $06, $02, nRst, $01
	dc.b	nE2, $02, nRst, $04, nE2, $02, nRst, $04
	dc.b	nAb2, $03, nRst, $09
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $04
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $16
	smpsSetVol	$03
	dc.b	nFs2, $08
	smpsSetVol	$06
	dc.b	$01
	smpsSetVol	$F7
	dc.b	$02, nRst, $04, nE2, $06, $02, nRst, $01
	dc.b	nE2, $02, nRst, $04, nE2, $02, nRst, $04
	dc.b	nAb2, $03, nRst
	smpsPSGvoice	$04

SA3_Factory_Loop20:
	dc.b	nFs0, nC0, nRst, nC0, nC0, nC0, nFs0, nC0
	dc.b	nRst, nC0, nE0, nC0, nRst, nC0, nE0, nC0
	dc.b	nC0, nC0, nFs0, nC0, nRst, nE0, nC0, nRst
	dc.b	nC0, nRst, nC0, nC0, nFs0, nC0, nE0, nC0
	smpsLoop		$00, $05, SA3_Factory_Loop20, Target
	dc.b	nFs0, nC0, nRst, nC0, nC0, nC0, nFs0, nC0
	dc.b	nRst, nC0, nE0, nC0, nRst, nC0, nE0, nC0
	dc.b	nC0, nC0, nFs0, nC0, nRst, nE0, nC0, nRst
	dc.b	nC0, nRst, nC0, nC0, nFs0, nC0, nRst, $06

SA3_Factory_Loop21:
	dc.b	nFs0, $03, nC0, nRst, nC0, nC0, nC0, nFs0
	dc.b	nC0, nRst, nC0, nE0, nC0, nRst, nC0, nE0
	dc.b	nC0, nC0, nC0, nFs0, nC0, nRst, nE0, nC0
	dc.b	nRst, nC0, nRst, nC0, nC0, nFs0, nC0, nE0
	dc.b	nC0
	smpsLoop		$00, $04, SA3_Factory_Loop21, Target
	;!@ dc.b	nRst, $7F, $4D
	dc.b	nRst, $7F, nRst, $4D
	smpsSetVol	$01
	smpsJump		SA3_Factory_Loop19, Target

SA3_Factory_PSG3:
	smpsPSGvoice	$00
	dc.b	nCs4, $03, nRst, $09, nB3, nBb3, $03, nRst
	dc.b	$0F, nFs3, $03, nRst, nE3, nFs3, nE3, nFs3
	dc.b	nBb3, nRst, $24, nCs4, $03, nRst, $09, nB3
	dc.b	nBb3, $03, nRst, $0F, nFs3, $03, nRst, nE3
	dc.b	nFs3, nE3, nFs3, nBb3, nRst, $06, nB3, $03
	;!@ dc.b	nBb3, nB3, nCs4, nRst, $7F, $7F, $34, nCs4
	dc.b	nBb3, nB3, nCs4, nRst, $7F, nRst, $7F, nRst, $34, nCs4
	dc.b	$03, nRst, $09, nB3, nBb3, $03, nRst, $0F
	dc.b	nFs3, $03, nRst, nE3, nFs3, nE3, nFs3, nBb3
	dc.b	nRst, $24, nCs4, $03, nRst, $09, nB3, nBb3
	dc.b	$03, nRst, $0F, nFs3, $03, nRst, nE3, nFs3
	dc.b	nE3, nFs3, nBb3, nRst, $06, nB3, $03, nBb3
	dc.b	nB3, nCs4, nRst, $12, nCs4, $03, nRst, $09
	dc.b	nB3, nBb3, $03, nRst, $0F, nFs3, $03, nRst
	dc.b	nE3, nFs3, nE3, nFs3, nBb3, nRst, $24, nCs4
	dc.b	$03, nRst, $09, nB3, nBb3, $03, nRst, $0F
	dc.b	nFs3, $03, nRst, nE3, nFs3, nE3, nFs3, nBb3
	dc.b	nRst, $06, nB3, $03, nBb3, nB3, nCs4, nRst
	;!@ dc.b	$7F, $53, nCs4, $03, nRst, $09, nB3, nBb3
	dc.b	$7F, nRst, $53, nCs4, $03, nRst, $09, nB3, nBb3
	dc.b	$03, nRst, $0F, nFs3, $03, nRst, nE3, nFs3
	dc.b	nE3, nFs3, nBb3, nRst, $24, nCs4, $03, nRst
	dc.b	$09, nB3, nBb3, $03, nRst, $0F, nFs3, $03
	dc.b	nRst, nE3, nFs3, nE3, nFs3, nBb3, nRst, $06
	dc.b	nB3, $03, nBb3, nB3, nCs4, nRst, $12, nCs4
	dc.b	$03, nRst, $09, nB3, nBb3, $03, nRst, $0F
	dc.b	nFs3, $03, nRst, nE3, nFs3, nE3, nFs3, nBb3
	dc.b	nRst, $24, nCs4, $03, nRst, $09, nB3, nBb3
	dc.b	$03, nRst, $0F, nFs3, $03, nRst, nE3, nFs3
	dc.b	nE3, nFs3, nBb3, nRst, $06, nB3, $03, nBb3
	;!@ dc.b	nB3, nCs4, nRst, $7F, $5F
	dc.b	nB3, nCs4, nRst, $7F, nRst, $5F
	smpsJump		SA3_Factory_PSG3, Target
	
SA3_Factory_PWM1:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01

SA3_Factory_PWM1_Loop1:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $02, SA3_Factory_PWM1_Loop1, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $55
	smpsAlterVol		$F5
	dc.b	pASnare, $06, nRst

SA3_Factory_PWM1_Loop2:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $08, SA3_Factory_PWM1_Loop2, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01

SA3_Factory_PWM1_Loop3:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $03, SA3_Factory_PWM1_Loop3, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01, pEKick, $02, nRst, $04
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $01
	dc.b	pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $25
	smpsAlterVol		$F5
	dc.b	pASnare, $06, nRst

SA3_Factory_PWM1_Loop4:
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01, pEKick, $02, nRst, $04
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $01
	dc.b	pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$F5
	smpsLoop		$00, $05, SA3_Factory_PWM1_Loop4, Target
	dc.b	pEKick, $02, nRst, $04, pEKick, $02, nRst, $04
	dc.b	pASnare, $02, nRst, $01, pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pESnare, $02, nRst, $01, pEKick, $02, nRst, $04
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $01
	dc.b	pESnare, $02, nRst, $01
	smpsAlterVol		$1A
	dc.b	pEHiHat, $02, nRst, $01
	smpsAlterVol		$F1
	dc.b	pClosedHH, $02, nRst, $01
	smpsAlterVol		$F5
	dc.b	pEKick, $02, nRst, $01, pESnare, $02, nRst, $01
	dc.b	pEKick, $02, nRst, $04, pASnare, $02, nRst, $04
	smpsAlterVol		$0B
	dc.b	pClosedHH, $02, nRst, $01, pESnare, $02, nRst, $0D
	smpsAlterVol		$F5
	smpsJump		SA3_Factory_PWM1, Target
	
SA3_Factory_PWM2:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $03, SA3_Factory_PWM2, Target
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pClosedHH, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $5E, pESnare, $06, nRst

SA3_Factory_PWM2_Loop1:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A, pClosedHH, $02, nRst, $04
	dc.b	pClosedHH, $02, nRst, $04, pEHiHat, $02, nRst, $07
	dc.b	pClosedHH, $02, nRst, $01, pClosedHH, $02, nRst, $04
	dc.b	pClosedHH, $02, nRst, $04, pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $04, SA3_Factory_PWM2_Loop1, Target

SA3_Factory_PWM2_Loop2:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $03, SA3_Factory_PWM2_Loop2, Target
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pClosedHH, $02

SA3_Factory_PWM2_Loop3:
	dc.b	nRst, $01, pClosedHH, $02, nRst, $04, pClosedHH, $02
	dc.b	nRst, $04, pEHiHat, $02, nRst, $0A, pClosedHH, $02
	dc.b	nRst, $04, pClosedHH, $02, nRst, $04, pEHiHat, $02
	dc.b	nRst, $07, pEKick, $02
	smpsLoop		$00, $03, SA3_Factory_PWM2_Loop3, Target
	dc.b	nRst, $01, pClosedHH, $02, nRst, $04, pClosedHH, $02
	dc.b	nRst, $04, pEHiHat, $02, nRst, $2E, pESnare, $06
	dc.b	nRst

SA3_Factory_PWM2_Loop4:
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $0A
	smpsLoop		$00, $0B, SA3_Factory_PWM2_Loop4, Target
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $07, pEKick, $02, nRst, $01
	dc.b	pClosedHH, $02, nRst, $04, pClosedHH, $02, nRst, $04
	dc.b	pEHiHat, $02, nRst, $16
	smpsJump		SA3_Factory_PWM2, Target
	
SA3_Factory_PWM3:
	dc.b	nRst, $15

SA3_Factory_PWM3_Loop1:
	dc.b	pClosedHH, $02, nRst, $2E
	smpsLoop		$00, $03, SA3_Factory_PWM3_Loop1, Target
	dc.b	pEKick, $02, nRst, $6D, pEHiHat, $02, nRst, $1F

SA3_Factory_PWM3_Loop2:
	dc.b	pClosedHH, $02, nRst, $2E, pEKick, $02, nRst, $2E
	smpsLoop		$00, $04, SA3_Factory_PWM3_Loop2, Target

SA3_Factory_PWM3_Loop3:
	dc.b	pClosedHH, $02, nRst, $2E
	smpsLoop		$00, $03, SA3_Factory_PWM3_Loop3, Target
	dc.b	pEKick, $02

SA3_Factory_PWM3_Loop4:
	dc.b	nRst, $2E, pClosedHH, $02
	smpsLoop		$00, $03, SA3_Factory_PWM3_Loop4, Target
	dc.b	nRst, $3D, pEHiHat, $06, nRst, $1B

SA3_Factory_PWM3_Loop5:
	dc.b	pClosedHH, $02, nRst, $2E
	smpsLoop		$00, $0B, SA3_Factory_PWM3_Loop5, Target
	dc.b	pClosedHH, $02, nRst, $25
	smpsJump		SA3_Factory_PWM3, Target
	
SA3_Factory_PWM4:
	smpsFMvoice		$00

SA3_Factory_PWM4_Loop1:
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $04
	smpsLoop		$00, $17, SA3_Factory_PWM4_Loop1, Target
	dc.b	pClosedHH, $02, nRst, $0A

SA3_Factory_PWM4_Loop2:
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $04
	smpsLoop		$00, $3F, SA3_Factory_PWM4_Loop2, Target
	dc.b	pClosedHH, $02, nRst, $0A

SA3_Factory_PWM4_Loop3:
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $04
	smpsLoop		$00, $2F, SA3_Factory_PWM4_Loop3, Target
	dc.b	pClosedHH, $02, nRst, $04, pOpenHH, $02, nRst, $10
	smpsJump		SA3_Factory_PWM4, Target

SA3_Factory_Patches:
	dc.b	$20
	dc.b	$36, $35, $30, $31,	$DF, $DF, $9F, $9F
	dc.b	$07, $06, $09, $06,	$07, $06, $06, $08
	dc.b	$20, $10, $10, $F8,	$19, $37, $13, $08
	
	dc.b	$2A
	dc.b	$01, $08, $06, $04,	$53, $1F, $1F, $50
	dc.b	$12, $14, $11, $1F,	$00, $00, $00, $00
	dc.b	$29, $15, $36, $0B,	$17, $33, $1C, $0A
	
	dc.b	$1F
	dc.b	$32, $01, $01, $70,	$5F, $1F, $1F, $5F
	dc.b	$14, $00, $00, $00,	$01, $00, $00, $00
	dc.b	$7B, $0A, $0A, $0A,	$16, $12, $12, $16
	
	dc.b	$07
	dc.b	$34, $74, $02, $01,	$1F, $1F, $1F, $1F
	dc.b	$0A, $0A, $05, $03,	$00, $00, $00, $00
	dc.b	$3A, $3A, $2A, $2A,	$0C, $04, $06, $06
	
	dc.b	$2C
	dc.b	$70, $00, $21, $60,	$9F, $1F, $1F, $5F
	dc.b	$0C, $09, $0C, $15,	$04, $04, $06, $06
	dc.b	$56, $46, $46, $4F,	$0C, $09, $10, $09
	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$12, $1F, $1F, $14
	dc.b	$07, $02, $02, $0A,	$05, $05, $05, $05
	dc.b	$2F, $2F, $2F, $AF,	$1C, $09, $0A, $09