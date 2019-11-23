
Target	EQU	$50C6A
	smpsHeaderVoice	JustDay_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $25
	smpsHeaderFM	JustDay_FM1, Target, $00, $09
	smpsHeaderFM	JustDay_FM2, Target, $00, $10
	smpsHeaderFM	JustDay_FM3, Target, $00, $10
	smpsHeaderFM	JustDay_FM4, Target, $00, $10
	smpsHeaderFM	JustDay_FM5, Target, $00, $10
	smpsHeaderFM	JustDay_FM6, Target, $00, $10
	smpsHeaderPSG	JustDay_PSG1, Target, $F4, $00, $00, $0C
	smpsHeaderPSG	JustDay_PSG2, Target, $F4, $00, $00, $0C
	smpsHeaderPSG	JustDay_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	JustDay_PWM1, Target, $00, $99
	smpsHeaderPWM	JustDay_PWM2, Target, $00, $AA
	smpsHeaderPWM	JustDay_PWM3, Target, $00, $99
	smpsHeaderPWM	JustDay_PWM4, Target, $00, $99

JustDay_FM1:
	smpsFMvoice		$00
	dc.b	nRst, $48
	smpsModSet	$05, $01, $FC, $00
	dc.b	nC2, $18
	smpsModSet	$00, $00, $00, $00

JustDay_Loop1:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nG1, $06
	dc.b	nRst, nG1, $06, $0C, $0C, nG2, $06, nRst
	dc.b	nC2, $12, nC3, $06, nRst, $12, nC2, $06
	dc.b	nRst, nC2, $06, $0C, $18
	smpsLoop		$00, $03, JustDay_Loop1, Target
	dc.b	nF1, $12, nF2, $06, nRst, $12, nG1, $06
	dc.b	nRst, nG1, $06, $0C, $0C, nG2, $06, nRst
	dc.b	nD2, $24, nE2, $18, nE3, $06, nRst, nA1
	dc.b	$0C, nA2, $06, nRst

JustDay_Loop2:
	smpsCall		JustDay_Call1, Target
	smpsLoop		$00, $03, JustDay_Loop2, Target
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nG2, nA1, $12
	dc.b	nA2, $06, nRst, $12, nA1, $06, nRst, nA1
	dc.b	$06, $0C, $0C, nA2, $06, nRst, nAb1, $12
	dc.b	nAb2, $06, nRst, $12, nAb1, $06, nRst, nAb1
	dc.b	$06, $0C, $18, nG1, $12, nG2, $06, nRst
	dc.b	$12, nG1, $06, nRst, nG1, $06, $0C, $0C
	dc.b	nE1, nFs1, $12, nFs2, $06, nRst, $12, nD2
	dc.b	$06, nRst, nD2, $06, $0C, $0C, nD3, $06
	dc.b	nRst, nA1, $06, nRst, nA1, nRst, nRst, nE1
	dc.b	nRst, nG1, $12, nE1, $06, nRst, nRst, nA1
	dc.b	nRst, $0C, nRst, $36, nA1, $06, nA2, nA1
	dc.b	nC2, nC3, nD2, nD3, nRst, nA1, nRst, nRst
	dc.b	nA1, nRst, nRst, nG1, $12, nE1, $06, nRst
	dc.b	nRst, nA1, nRst, nRst
	smpsSetTempoMod		$20
	dc.b	nRst, $18
	smpsSetTempoMod		$2A
	dc.b	nRst, $18
	smpsSetTempoMod		$3B
	dc.b	nA1, $08, nA2, $04, nC2, $08, nC3, $04
	smpsSetTempoMod		$45
	dc.b	nD2, $08, nD3, $04, nE2, $08, nE3, $04
	smpsSetTempoMod		$48
	dc.b	nRst, $60, nRst, $2C, nE1, $0C, $04, nE2
	dc.b	$08, nE1, $04, nG1, $08, nG2, $04, nAb1
	dc.b	$08, nAb2, $04
	smpsCall		JustDay_Call2, Target
	dc.b	nRst, $08, nE1, $04, nF1, $08, nG1, $0C
	dc.b	nAb1, $04
	smpsCall		JustDay_Call2, Target
	dc.b	nRst, $08, nE1, $04, nAb1, $08, nAb2, $0C
	dc.b	nE1, $04
	smpsSetTempoMod		$43
	smpsFMvoice		$02
	smpsAlterVol		$02
	dc.b	nRst, $18, nG1

JustDay_Loop3:
	dc.b	nC2, $08, nB1, $04, nC2, $08, nD2, $04
	dc.b	nRst, $08, nE2, $04, nRst, $08, nC2, $04
	dc.b	nRst, $08, nC2, $0C, nB1, $04, nC2, $0C
	dc.b	nD2, nRst, $08, nB1, $04, nC2, $08, nD2
	dc.b	$04, nRst, $08, nE2, $04, nRst, $08, nC2
	dc.b	$04, nRst, $08, nC2, $0C, nB1, $04, nC2
	dc.b	$0C, nD2
	smpsLoop		$00, $02, JustDay_Loop3, Target
	smpsSetTempoMod		$43
	smpsCall		JustDay_Call3, Target
	dc.b	nRst, $0C, nG2, nRst, $08, nC2, $04, nD2
	dc.b	$08, nF2, $04, nG1, $04, nF1, nG1, nG2
	dc.b	$08, nG1, $04, nRst, $08, nG2, $04, nRst
	dc.b	$0C, nRst, $18, nRst, $08, nG1, $04, nG2
	dc.b	$08, nF2, $04
	smpsCall		JustDay_Call3, Target
	dc.b	nRst, $0C, nG2, $08, nRst, $04, nRst, $08
	dc.b	nG2, $0C, $04, nG1, $08, nG2, $04, nRst
	dc.b	$3C
	smpsSetTempoMod		$33
	smpsAlterVol		$FE
	smpsFMvoice		$00
	smpsAlterVol		$FD
	smpsModSet	$08, $01, $FC, $00
	dc.b	nG1, $18
	smpsModSet	$00, $00, $00, $00
	dc.b	nEb1, $30, nD1, nG1, $60, nEb1, $30, nD1
	dc.b	nG1, $18, nA1, nBb1, nE1
	smpsCall		JustDay_Call4, Target
	dc.b	nBb1, $12, $06, nRst, nBb2, nRst, $0C, nBb1
	dc.b	$18, nC2, $0C, nD2
	smpsCall		JustDay_Call4, Target
	dc.b	nBb1, $18, nC2
	smpsSetTempoMod		$25
	dc.b	nF1, $18, nG1

JustDay_Loop4:
	dc.b	nD2, $12, nD2, nC2, $0C
	smpsLoop		$00, $03, JustDay_Loop4, Target
	dc.b	nG2, $12, nF2, nC2, $0C
	smpsLoop		$01, $02, JustDay_Loop4, Target
	dc.b	nD2, $12, $06, nRst, $18
	smpsSetTempoMod		$1C
	smpsAlterVol		$0C
	smpsFMvoice		$06
	smpsPan		panLeft
	smpsAlterVol		$0A
	dc.b	nRst, $01, nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$05
	smpsAlterVol		$F6
	smpsAlterVol		$F4
	smpsFMvoice		$00
	smpsAlterVol		$FB
	smpsPan		panCenter
	smpsAlterVol		$FD
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $18, nC2
	dc.b	$06, nRst, nC2, nRst, $1E, nC2, $06, nG1
	dc.b	nBb1, nC2, nRst, $12, nC2, $06, nRst, $0C
	dc.b	nC3, $06, nD3, nRst, nF2, nG2, nEb2, nF2
	dc.b	$06, nC2, nEb2, nF2, nRst, $12, nF2, $06
	dc.b	nRst, $0C, nF3, $06, nG3, nRst, nBb2, nC3
	dc.b	nEb2, nG1, $06, nRst, nG1, nRst, nRst, nG2
	dc.b	nRst, nG1, nG2, nF2, nC2, nD2, nRst, nG1
	dc.b	nRst, $06, nG1, nC2, $06, nG1, nBb1, nC2
	dc.b	nRst, $18, nC2, $06, nRst, nC2, nRst, $1E
	dc.b	nC2, $06, nG1, nBb1, nC2, nRst, $12, nC2
	dc.b	$06, nRst, $0C, nC3, $06, nD3, nRst, nF2
	dc.b	nG2, nEb2, nF2, $06, nC2, nEb2, nF2, nRst
	dc.b	$12, nF2, $06, nRst, $0C, nF3, $06, nG3
	dc.b	nRst, nBb2, nC3, nEb2, nG1, $06, nRst, nG1
	dc.b	nRst, nRst, nG2, nRst, nG1
	smpsSetTempoMod		$26
	dc.b	nRst, $06, nE3, nC3, nG2, nF2, nE2, nC2
	dc.b	nG1
	smpsAlterVol		$FE
	smpsCall		JustDay_Call5, Target
	dc.b	nRst, $30
	smpsCall		JustDay_Call5, Target
	dc.b	nRst, $0C, nEb1, nRst, $06, nF1, $12
	smpsCall		JustDay_Call5, Target
	dc.b	nRst, $30
	smpsCall		JustDay_Call5, Target
	smpsAlterVol		$02
	smpsSetTempoMod		$18
	dc.b	nRst, $06, nE3, nC3
	smpsSetTempoMod		$06
	dc.b	nG2, nF2, nE2, nC2, nG1
	smpsSetTempoMod		$75
	smpsModSet	$07, $01, $FC, $00
	dc.b	nG1, $0C
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $24, nRst, $30
	smpsModSet	$07, $01, $FC, $00
	dc.b	nG1, $0C
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $24
	smpsFMvoice		$01
	smpsAlterVol		$06
	dc.b	nG1, $06, nG2, $03, nRst, nG1, $06, nG2
	dc.b	$03, nRst, nG1, $06, nG2, $03, nRst, nFs1
	dc.b	$06, $03, nRst
	smpsCall		JustDay_Call6, Target
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$05
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FC
	smpsCall		JustDay_Call6, Target
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$01
	dc.b	nRst, $12, nD3, $03, nRst
	smpsCall		JustDay_Call6, Target
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$05
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FC
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$05
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FD
	smpsCall		JustDay_Call6, Target
	smpsCall		JustDay_Call6, Target
	smpsAlterPitch	$FE
	smpsAlterVol		$FA
	smpsSetTempoMod		$01
	smpsFMvoice		$00
	dc.b	nG1, $06, nG2, nG1, $0C, nA1, $06, nA2
	dc.b	nA1, $0C, nBb1, $06, nBb2, nBb1, $0C, nC2
	dc.b	$06, nC3, nC2, $0C
	smpsCall		JustDay_Call7, Target
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nC2
	dc.b	$18, nC3, $0C, nC2, nF1, $12, nF2, $06
	dc.b	nRst, $0C, nF1, $0C, $12, $06, nF2, $0C
	dc.b	nF1
	smpsCall		JustDay_Call7, Target
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nEb2
	dc.b	$18, nEb3, $0C, nEb2, nD2, $12, nD3, $06
	dc.b	nRst, $0C, nD2, nRst, $06, nD3, nRst, nD3
	dc.b	nD2, nC2, $12
	smpsCall		JustDay_Call7, Target
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nC2
	dc.b	$18, nC3, $0C, nC2, nF1, $12, nF2, $06
	dc.b	nRst, $0C, nF1, $0C, $12, $06, nF2, $0C
	dc.b	nF1
	smpsCall		JustDay_Call7, Target
	dc.b	nG1, $12, nG2, $06, nRst, $0C, nG1, nEb2
	dc.b	$18, nEb3, $0C, nEb2, nD2, $12, nD3, $06
	dc.b	nRst, $0C, nD2, nRst, $06, nD3, nRst, nD3
	dc.b	nD2, nC2, $0C, nBb1, $06, smpsNoAttack, $60
	smpsStop

JustDay_Call1:
	dc.b	nF1, $12, nF2, $06, nRst, $12, nF1, $06
	dc.b	nRst, nF1, $06, $0C, $0C, nF2, $06, nRst
	smpsReturn
	dc.b	$94, $0C, $80, $94, $80, $08, $94, $0C	; Unused
	dc.b	$92, $04, $94, $0C, $97, $92, $94, $0C	; Unused
	dc.b	$A0, $06, $80, $94, $0C, $80, $08, $94	; Unused
	dc.b	$0C, $92, $04, $94, $0C, $97, $92, $F9	; Unused
	dc.b	$9B, $0C, $A7, $06, $80, $F7, $00, $04	; Unused
	dc.b	$CC, $90, $F9	; Unused

JustDay_Call2:
	dc.b	nRst, $08, nA1, $04, nRst, $08, nG1, $04
	dc.b	nA1, $0C, nG1, nF1, nRst, nRst, nF1, $08
	dc.b	nFs1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nG1, $0C, nF1, nE1
	smpsReturn

JustDay_Call3:
	dc.b	nEb2, $04, nD2, nEb2, nEb3, $08, nEb2, $04
	dc.b	nRst, $08, nEb2, $04, nRst, $0C, nRst, $0C
	dc.b	nEb2, nRst, $08, nD2, $04, nEb2, $08, nF2
	dc.b	$04, nD2, $04, nC2, nD2, nD3, $08, nD2
	dc.b	$04, nRst, $18, nRst, $0C, nD2, nRst, $08
	dc.b	nC2, $04, nD2, $08, nF2, $04, nG1, $04
	dc.b	nF1, nG1, nG2, $08, nG1, $04, nRst, $08
	dc.b	nG2, $04, nRst, $0C
	smpsReturn

JustDay_Call4:
	dc.b	nEb2, $12, $06, nRst, nEb3, nRst, $0C, nD2
	dc.b	$30, nG1, $12, $06, nRst, nG2, nRst, $0C
	dc.b	nF1, $18, nBb1, nEb2, $12, $06, nRst, nEb3
	dc.b	nRst, $0C, nF1, $18, nF1
	smpsReturn

JustDay_Call5:
	dc.b	nG1, $0C, nRst, $06, nF1, $0C, nRst, $06
	dc.b	nG1, $0C
	smpsReturn

JustDay_Call6:
	dc.b	nBb1, $06, nBb2, $03, nRst, nBb1, $06, nBb2
	dc.b	$03, nRst
	smpsReturn

JustDay_Call7:
	dc.b	nBb1, $12, nBb2, $06, nRst, $0C, nBb1, $0C
	dc.b	$18, nBb2, $0C, nBb1, nA1, $12, nA2, $06
	dc.b	nRst, $0C, nA1, nD2, $12, $06, nD3, $0C
	dc.b	nD2
	smpsReturn

JustDay_FM2:
	dc.b	nRst, $60
	smpsFMvoice		$03
	smpsCall		JustDay_Call8, Target
	dc.b	nG4, nAb4, nA4, $04, nBb4, nB4, nC5, $06
	dc.b	nA4, nG4, nF4
	smpsFMvoice		$05
	smpsPan		panRight
	smpsAlterPitch	$0C
	smpsAlterVol		$02
	dc.b	nC4, $24
	smpsAlterVol		$FE
	dc.b	nD4
	smpsAlterVol		$FE
	dc.b	nE4, $18
	smpsAlterVol		$02
	smpsFMvoice		$08
	smpsPan		panCenter
	dc.b	nRst, $18, nG5
	smpsFMvoice		$05
	smpsPan		panRight
	dc.b	nRst, $06, nG3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$08
	smpsPan		panCenter
	dc.b	nRst, $18, nG5
	smpsFMvoice		$05
	smpsPan		panRight
	dc.b	nRst, $06, nG3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, nD4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4
	smpsFMvoice		$08
	smpsPan		panCenter
	dc.b	nA4, $18, nB4, nC5, nD5, nG4, nG5, nF5
	dc.b	nE5
	smpsFMvoice		$05
	smpsPan		panRight
	dc.b	nE4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD4, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $12, nB3, nBb3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nAb3, $0C, nG3, nAb3, nA3, nBb3, nB3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $0C, nD4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nG3, nA3, nC4, $06, nG4, $36
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nE4, $3C, nD4, $0C, nC4, $60
	smpsAlterPitch	$F4
	smpsPan		panCenter
	dc.b	nRst, $60, nRst, nRst
	smpsFMvoice		$0B
	dc.b	nRst, $60, nRst, $5C, nB5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nB5, $04, nC6, $08, nG5, $34, nRst, $14
	dc.b	nB5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nB5, $04, nC6, $08, nG5, $4C, nRst, $18
	dc.b	nG5, $18, nF5, nE5, $14, nF5, $04, smpsNoAttack
	dc.b	$08, nE5, $04, nF5, $08, nRst, $04, nG5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nB5, $04, nRst, $0C, nRst, $30
	smpsFMvoice		$0C
	dc.b	nB3, $18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $18, $0C, nC4, nB3, nA3, $18, nD3
	dc.b	nE3, nG3, nA3, $18
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $18, nG4, $0C, nFs4, nD4, nE4, nB3
	dc.b	nD4, nA3, $3C
	smpsFMvoice		$0B
	smpsAlterVol		$03
	smpsCall		JustDay_Call9, Target
	dc.b	nRst, $30
	smpsAlterVol		$FD
	dc.b	nRst, $30
	smpsFMvoice		$04
	smpsAlterVol		$FC
	dc.b	nRst, $60, nRst, nRst, nRst, $0C, nF3, nG3
	dc.b	nA3, nBb3, nA3, nBb3, nC4
	smpsCall		JustDay_Call10, Target
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $30
	smpsAlterVol		$04
	smpsFMvoice		$06
	smpsAlterPitch	$0C
	smpsAlterVol		$FC
	dc.b	nRst, $06, nC4, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $12, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06
	smpsFMvoice		$04
	smpsAlterPitch	$F4

JustDay_Loop5:
	smpsCall		JustDay_Call11, Target
	smpsLoop		$00, $06, JustDay_Loop5, Target
	smpsFMvoice		$06
	smpsAlterPitch	$0C
	dc.b	nRst, $06, nC4, nD4
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $0C, nD4, $06
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $12, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $0C
	smpsAlterVol		$F7
	smpsAlterPitch	$F4
	smpsAlterVol		$04
	smpsFMvoice		$06
	smpsAlterVol		$07
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$0B
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$05
	smpsModSet	$05, $01, $02, $04
	smpsCall		JustDay_Call12, Target
	dc.b	nRst, $0C
	smpsFMvoice		$06
	smpsAlterPitch	$F4
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nG4, $06, nFs4, nF4, nE4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nBb3, nB3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsAlterVol		$02
	smpsFMvoice		$04
	smpsAlterPitch	$F4
	dc.b	nD4, $12, nC4, nD4, $0C, nF4, $12, nE4
	dc.b	nC4, $0C, nD4, $12, nC4, nD4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nBb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nBb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12, nD4, $12, nC4, nD4, $0C, nF4
	dc.b	$12, nE4, nC4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nC4, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12, nD4, $18
	smpsAlterPitch	$0C
	smpsFMvoice		$0B
	dc.b	nF6, $06, nE6, nC6, nG5, nF5, nE5, nF5
	dc.b	nG5
	smpsFMvoice		$04
	dc.b	nRst, $30, nRst, nRst, nF3, $0C, nF3, nF3
	dc.b	nE3
	smpsFMvoice		$10
	smpsAlterVol		$01
	smpsCall		JustDay_Call13, Target
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
	smpsCall		JustDay_Call13, Target
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
	smpsAlterVol		$FF
	dc.b	nRst, $60
	smpsAlterPitch	$0C
	smpsFMvoice		$0B
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $0C
	smpsFMvoice		$12
	smpsPan		panRight
	smpsAlterVol		$FD
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$0B
	smpsPan		panCenter
	smpsAlterVol		$03
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $30
	smpsFMvoice		$12
	smpsPan		panRight
	smpsAlterVol		$FD
	dc.b	nC3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC3, $12
	smpsFMvoice		$0B
	smpsPan		panCenter
	smpsAlterVol		$03
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $0C
	smpsFMvoice		$12
	smpsPan		panRight
	smpsAlterVol		$FD
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nA2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$0B
	smpsPan		panCenter
	smpsAlterVol		$03
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24, nF3, $18, nE3, $12, nD3, $06
	dc.b	smpsNoAttack, $60
	smpsStop

JustDay_Call8:
	dc.b	nRst, $3C, nG4, $06, nAb4, nA4, nRst, nC5
	dc.b	nRst, nCs5, $02, nD5, $10, nCs5, $02, nD5
	dc.b	$10, nEb5, $02, nE5, $22, nRst, $18, nRst
	dc.b	$3C, nG4, $06, nAb4, nA4, nRst, nC5, nRst
	dc.b	nF5, $12, nE5, nD5, nRst, $06, nC5, nRst
	dc.b	nCs5, nD5, nRst, nE5, nRst, nE5, nRst, $30
	dc.b	nG5, $0C, nF5, $06, nRst, nE5, nRst, nD5
	dc.b	$0C, nEb5, $06, nE5, $0C, nF5, $06, nFs5
	dc.b	$0C, nG5, $06, nAb5, nA5, nB5, nA5, nD6
	dc.b	nC6, nB5, nA5, nG5, nF5, nE5, nD5, $04
	dc.b	nCs5, nC5, nD5, $06, nB4
	smpsReturn
	dc.b	$E6, $0A, $04, $80, $E6, $F6, $C8, $04	; Unused
	dc.b	$C9, $08, $C4, $34, $80, $14, $C8, $04	; Unused
	dc.b	$E6, $0A, $04, $80, $E6, $F6, $C8, $04	; Unused
	dc.b	$C9, $08, $C4, $4C, $80, $18, $C4, $18	; Unused
	dc.b	$C2, $C1, $14, $C2, $04, $E7, $08, $C1	; Unused
	dc.b	$04, $C2, $08, $80, $04, $C4, $08, $80	; Unused
	dc.b	$04, $C5, $08, $80, $04, $C6, $08, $80	; Unused
	dc.b	$04, $C5, $08, $80, $04, $C6, $08, $C8	; Unused
	dc.b	$04, $80, $08, $BD, $04, $E7, $0C, $C4	; Unused
	dc.b	$C2, $C1, $08, $C2, $0C, $C1, $04, $BD	; Unused
	dc.b	$18, $80, $08, $BF, $04, $E7, $0C, $C4	; Unused
	dc.b	$C2, $08, $C4, $04, $80, $08, $C5, $0C	; Unused
	dc.b	$C6, $04, $C8, $0C, $C9, $C1, $BF, $14	; Unused
	dc.b	$C1, $4C, $80, $54, $F9	; Unused

JustDay_Call9:
	dc.b	nF4, $0C, nRst, nG4, nRst, nA4, $03, smpsNoAttack
	dc.b	nBb4, $11, nG4, $04, nRst, $0C, nC5, smpsNoAttack
	dc.b	$08, nRst, $04, nC5, $08, nRst, $04, nC5
	dc.b	$08, nRst, $04, nD5, $08, nRst, $04, nBb4
	dc.b	$03, smpsNoAttack, nC5, $05, nBb4, $04, nRst, $08
	dc.b	nG4, $1C, nF4, $0C, nRst, nG4, nRst, nBb4
	dc.b	$14, nG4, $04, nRst, $0C, nF5, smpsNoAttack, $08
	dc.b	nRst, $04, nG5, $08, nRst, $04, nF5, $08
	dc.b	nE5, $04, nRst, $08, nD5, $34, nRst, $0C
	dc.b	nBb4, $14, nRst, $04, nG4, $08, nRst, $04
	dc.b	nBb4, $14, nC5, $04, nRst, $0C, nF5, smpsNoAttack
	dc.b	$0C, nEb5, nD5, $08, nEb5, $04, nRst, $08
	dc.b	nC5, $03, smpsNoAttack, nD5, $09, nRst, $04, nC5
	dc.b	$0C, nBb4, $08, nC5, $0C, nG4, $04, smpsNoAttack
	dc.b	$14, nD5, $4C
	smpsReturn

JustDay_Call10:
	dc.b	nC4, $03, nCs4, nD4, $12, nEb4, $06, nRst
	dc.b	nC4, $18, nBb3, $0C, nC4, nF4, $06, nEb4
	dc.b	smpsNoAttack, $0C, nD4, $06, nRst, nC4, nD4, nRst
	dc.b	nEb4, $12, nF4, $06, nRst, nBb3, $0C, nC4
	dc.b	$06, nRst, nBb3, $12, nG3, nBb3, $0C, nC4
	dc.b	$18, nRst, $0C, nBb3, $06, nB3, nC4, $12
	dc.b	nB3, $02, nC4, $10, nCs4, $02, nD4, $2E
	dc.b	nG4, $06, nRst, nE4, $02, nF4, $0A, nRst
	dc.b	$06, nE4, $02, nF4, $0A, nRst, $06, nE4
	dc.b	$02, nF4, $0A, nRst, $0C, nE4, $02, nF4
	dc.b	$16, nEb4, $0C, nD4, $12, nC4, nF4, $0C
	dc.b	nD4, $18, nC4
	smpsReturn

JustDay_Call11:
	dc.b	nF3, $12, $06
	smpsAlterVol		$0A
	dc.b	nRst, $0C, nF3, $06, nRst
	smpsAlterVol		$F6
	smpsReturn

JustDay_Call12:
	dc.b	nRst, $0C, nC4, nF4, nG4, nBb4, $12, nG4
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nC4, $0C, nF4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nEb4, $0C, nRst, $0C, nC4, nF4
	dc.b	nG4, nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nEb4, $0C, nF4, $12, nA4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nA4, nBb4
	dc.b	$06, nC5, $12, nRst, $0C, nC5, $18, nD5
	dc.b	$0C, nD5, $03, nEb5, $0F, nC5, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nBb4, $0C, nA4, $12, nF4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $06, nG4, $0C, smpsNoAttack, $0C, nAb4, nA4
	dc.b	nBb4, nC5, $12, nEb5, $03, nF5, $3F
	smpsReturn

JustDay_Call13:
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

JustDay_Call14:
	dc.b	nRst, $18, nA3, nG3, nC4, $06, nRst, nC4
	dc.b	$0C, smpsNoAttack, $0C, nD4, nA3, $24, nG3, $0C
	dc.b	nA3, nBb3, smpsNoAttack, $0C, nA3, nG3, nF3
	smpsReturn

JustDay_FM3:
	dc.b	nRst, $60
	smpsFMvoice		$03
	smpsAlterVol		$07
	smpsPan		panLeft
	dc.b	nRst, $06
	smpsAlterNote	$FB
	smpsModSet	$01, $01, $03, $03
	smpsCall		JustDay_Call8, Target
	dc.b	nG4, nAb4, nA4, $04, nBb4, nB4, nC5, $06
	dc.b	nA4, nG4
	smpsAlterVol		$F9
	smpsAlterNote	$05
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$05
	smpsAlterPitch	$0C
	smpsAlterVol		$02
	dc.b	nG3, $24
	smpsAlterVol		$FE
	dc.b	nA3
	smpsAlterVol		$FE
	dc.b	nBb3, $18
	smpsAlterVol		$02
	smpsFMvoice		$08
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice		$05
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $06, nC3, nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, $0C, nC3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$08
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $1E, nG5, $12
	smpsFMvoice		$05
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $06, nD3, nE3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, nA3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB3
	smpsFMvoice		$08
	smpsAlterVol		$05
	smpsModSet	$01, $01, $04, $05
	dc.b	nRst, $06, nA4, $18, nB4, nC5, nD5, nG4
	dc.b	nG5, nF5, nE5, $12
	smpsFMvoice		$05
	smpsAlterVol		$FB
	smpsModSet	$00, $00, $00, $00
	dc.b	nA3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG3, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3, $12, nE3, nEb3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, $0C, nC3, nD3, nEb3, nE3, nF3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC4, $0C, nAb3, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $0C, nC3, nD3, nG3, $06, nC4, $36
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12, nC4, $3C, $0C, nA3, $60
	smpsPan		panCenter
	smpsAlterPitch	$F4
	dc.b	nRst, $60, nRst, nRst
	smpsFMvoice		$07
	smpsAlterVol		$03
	smpsCall		JustDay_Call15, Target
	smpsAlterVol		$FB
	smpsPan		panLeft
	dc.b	nRst, $24, nC5, $04, nRst, $08, nB4, $14
	dc.b	nC5, $04, nRst, $18, nRst, $24, nB4, $04
	dc.b	nRst, $08, nE5, $14, nD5, $04, nRst, $18
	dc.b	nRst, $0C, nC5, $04, nRst, $08, nB4, $08
	dc.b	nC5, $04, nRst, $0C, nRst, $0C, nC5, $04
	dc.b	nRst, $08, nB4, $08, nC5, $04, nRst, $0C
	dc.b	nRst, $0C, nB4, $04, nRst, $08, nE5, $08
	dc.b	nD5, $04, nRst, $08, nE5, $04, nRst, $08
	dc.b	nE5, $04, nRst, $08, nD5, $1C
	smpsAlterVol		$02
	smpsPan		panCenter
	dc.b	nRst, $30
	smpsFMvoice		$05
	smpsAlterPitch	$0C
	smpsAlterVol		$03
	dc.b	nRst, $60, nRst, $60, nRst, nRst, $0C, nG4
	dc.b	nFs4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $14
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C, nB3, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsAlterPitch	$F4
	smpsAlterVol		$FD
	smpsFMvoice		$0D
	smpsAlterVol		$FD
	smpsCall		JustDay_Call16, Target
	smpsCall		JustDay_Call17, Target
	smpsCall		JustDay_Call16, Target
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsCall		JustDay_Call18, Target
	smpsCall		JustDay_Call16, Target
	smpsCall		JustDay_Call17, Target
	smpsCall		JustDay_Call16, Target
	dc.b	nRst, $08, nD5, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $20
	smpsAlterVol		$03
	dc.b	nRst, $30
	smpsFMvoice		$04
	smpsAlterVol		$FC
	dc.b	nRst, $02, nD3, $2E, nC3, $30, nD3, $54
	dc.b	$0C, nD3, $30, nC3
	smpsAlterVol		$03
	dc.b	nD3, $18
	smpsAlterVol		$FF
	dc.b	nC3
	smpsAlterVol		$FE
	dc.b	nD3
	smpsAlterVol		$FE
	dc.b	nC3
	smpsAlterVol		$02
	smpsCall		JustDay_Call19, Target
	dc.b	nD3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, smpsNoAttack, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsCall		JustDay_Call19, Target
	dc.b	nD3, $18, nC3
	smpsAlterVol		$04
	dc.b	nRst, $30
	smpsAlterVol		$FC
	smpsFMvoice		$04
	smpsPan		panRight

JustDay_Loop6:
	smpsCall		JustDay_Call20, Target
	smpsCall		JustDay_Call20, Target
	smpsCall		JustDay_Call20, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call20, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, JustDay_Loop6, Target
	dc.b	nA3, $12, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsAlterVol		$04
	smpsPan		panCenter
	smpsFMvoice		$06
	smpsAlterVol		$FE
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsFMvoice		$0B
	smpsAlterVol		$0B
	smpsAlterPitch	$0C
	smpsModSet	$05, $01, $02, $04
	smpsPan		panRight
	dc.b	nRst, $0C
	smpsCall		JustDay_Call12, Target
	smpsPan		panCenter
	smpsFMvoice		$06
	smpsAlterVol		$F5
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsAlterVol		$02
	smpsFMvoice		$04
	smpsAlterPitch	$F4
	dc.b	nG3, $12, nG3, nA3, $0C, nC4, $12, nC4
	dc.b	nG3, $0C, nA3, $12, nG3, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $12, nG3, $12, nG3, nA3, $0C, nC4
	dc.b	$12, nC4, nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $12, nA3, $18
	smpsAlterPitch	$0C
	smpsFMvoice		$0B
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $05, nF6, $06, nE6, nC6, nG5
	smpsPan		panRight
	dc.b	nF5, nE5, nF5, nG5, $01
	smpsAlterVol		$FB
	smpsPan		panCenter
	smpsFMvoice		$0F
	smpsAlterPitch	$0C
	smpsAlterVol		$03
	smpsCall		JustDay_Call21, Target
	smpsCall		JustDay_Call21, Target
	smpsAlterPitch	$F4
	smpsAlterVol		$FD
	smpsFMvoice		$10
	smpsAlterVol		$01
	smpsCall		JustDay_Call22, Target
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
	smpsCall		JustDay_Call22, Target
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
	smpsAlterVol		$FF
	dc.b	nRst, $60
	smpsFMvoice		$0B
	smpsAlterVol		$05
	smpsModSet	$02, $01, $02, $05
	smpsPan		panLeft
	smpsAlterPitch	$0C
	dc.b	nRst, $0C
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C
	smpsFMvoice		$12
	smpsAlterVol		$F8
	smpsModSet	$00, $00, $00, $00
	dc.b	nA2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF2, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$0B
	smpsAlterVol		$08
	smpsModSet	$02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24
	smpsFMvoice		$12
	smpsAlterVol		$F8
	smpsModSet	$00, $00, $00, $00
	dc.b	nG2, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nG2, $12
	smpsFMvoice		$0B
	smpsAlterVol		$08
	smpsModSet	$02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C
	smpsFMvoice		$12
	smpsAlterVol		$F8
	smpsModSet	$00, $00, $00, $00
	dc.b	nA2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC2, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF2, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst
	smpsFMvoice		$0B
	smpsAlterVol		$08
	smpsModSet	$02, $01, $02, $05
	dc.b	nRst, $0C
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24, nF3, $18, nE3, $12, nD3, $06
	dc.b	smpsNoAttack, $60
	smpsStop

JustDay_Call15:
	dc.b	nRst, $08, nG4, $04, nAb4, $08, nA4, $04
	dc.b	nC5, $08, nA4, $04, nC5, $08, nD5, $04
	dc.b	nE5, $04, nEb5, nD5, nC5, $08, nG4, $04
	dc.b	nA4, $08, nC5, $04, nD5, $08, nE5, $04
	dc.b	nG5, $04, nFs5, nF5, nD5, $0C, nRst, $04
	dc.b	nRst, nD5, nRst, nRst, nE5, nRst, nRst, nG5
	dc.b	nRst, nRst, nAb5, nRst, nRst, nAb5, nA5, $08
	dc.b	nB5, $04
	smpsReturn

JustDay_Call16:
	dc.b	nD4, $08
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04, $08, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $0C, nD4, $08, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsReturn

JustDay_Call17:
	dc.b	nRst, $0C, nC4, $08, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04, $08, $04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04
	smpsReturn

JustDay_Call18:
	smpsAlterVol		$FE
	dc.b	nRst, $08, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $04
	smpsAlterVol		$02
	smpsReturn

JustDay_Call19:
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nC3, $18, nRst, nRst, $0C, nD3
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nC3, $18, nD3, nD3, $0C, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $18, $0C, nF3
	smpsReturn

JustDay_Call20:
	dc.b	nA3, $12, $06
	smpsAlterVol		$0A
	dc.b	nRst, $0C, nA3, $06, nRst
	smpsAlterVol		$F6
	smpsReturn

JustDay_Call21:
	dc.b	nF4, $03, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3, nF4, $03, nE4, nC4, nG3, nF3, nE3
	dc.b	nC3, nG2, nF4, $03, nE4, nC4, nG3, nF3
	dc.b	nE3, nF3, nG3, nD3, $03, nE3, nF3, nG3
	dc.b	nA3, nB3, nC4, nD4
	smpsReturn

JustDay_Call22:
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

JustDay_FM4:
	dc.b	nRst, $60
	smpsFMvoice		$03

JustDay_Loop7:
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsCall		JustDay_Call23, Target
	smpsLoop		$00, $03, JustDay_Loop7, Target
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nC3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nD3, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call23, Target
	smpsCall		JustDay_Call23, Target
	smpsFMvoice		$00
	smpsAlterVol		$07
	dc.b	nRst, $03
	smpsAlterNote	$05
	dc.b	nA1, $06, nRst, nA1, nRst, nRst, nE1, nRst
	dc.b	nG1, $12, nE1, $06, nRst, nRst, nA1, nRst
	dc.b	$0C
	smpsPan		panLeft
	dc.b	nRst, $36, nA1, $06, nA2, nA1
	smpsPan		panCenter
	dc.b	nC2, nC3
	smpsPan		panRight
	dc.b	nD2, nD3
	smpsPan		panCenter
	dc.b	nRst, nA1, nRst, nRst, nA1, nRst, nRst, nG1
	dc.b	$12, nE1, $06, nRst, nRst, nA1, nRst, nRst
	dc.b	nRst, $18, nRst, $18
	smpsPan		panLeft
	dc.b	nA1, $08, nA2, $04, nC2, $08
	smpsPan		panCenter
	dc.b	nC3, $04, nD2, $08
	smpsPan		panRight
	dc.b	nD3, $04, nE2, $08, nE3, $01
	smpsPan		panCenter
	smpsAlterVol		$F9
	smpsAlterNote	$FB
	smpsFMvoice		$07
	smpsAlterVol		$03
	smpsCall		JustDay_Call24, Target
	smpsAlterVol		$FB
	smpsPan		panRight
	dc.b	nRst, $24, nA4, $04, nRst, $08, nG4, $14
	dc.b	nA4, $04, nRst, $18, nRst, $24, nG4, $04
	dc.b	nRst, $08, nC5, $14, nB4, $04, nRst, $18
	dc.b	nRst, $0C, nA4, $04, nRst, $08, nG4, $08
	dc.b	nA4, $04, nRst, $0C, nRst, $0C, nA4, $04
	dc.b	nRst, $08, nG4, $08, nA4, $04, nRst, $0C
	dc.b	nRst, $0C, nG4, $04, nRst, $08, nC5, $08
	dc.b	nB4, $04, nRst, $08, nB4, $04, nRst, $08
	dc.b	nB4, $04, nRst, $08, nAb4, $1C
	smpsPan		panCenter
	smpsAlterVol		$02
	dc.b	nRst, $30
	smpsFMvoice		$05
	smpsAlterPitch	$0C
	smpsAlterVol		$03
	dc.b	nRst, $60, nRst, $60, nRst, nRst, $0C, nB3
	dc.b	nA3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $14
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, nE3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsAlterPitch	$F4
	smpsAlterVol		$FD
	smpsFMvoice		$0D
	smpsAlterVol		$FD
	smpsAlterPitch	$FC
	smpsCall		JustDay_Call25, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call26, Target
	smpsAlterPitch	$FD
	smpsCall		JustDay_Call25, Target
	smpsAlterPitch	$09
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF3, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsCall		JustDay_Call27, Target
	smpsAlterPitch	$FC
	smpsCall		JustDay_Call25, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call26, Target
	smpsAlterPitch	$FD
	smpsCall		JustDay_Call25, Target
	smpsAlterPitch	$09
	dc.b	nRst, $08, nBb3, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $20
	smpsAlterVol		$03
	dc.b	nRst, $30
	smpsFMvoice		$04
	smpsPan		panRight
	smpsAlterVol		$FC
	dc.b	nBb2, $30, nA2, nBb2, $48, $18, nBb2, $30
	dc.b	nA2
	smpsAlterVol		$03
	dc.b	nBb2, $18
	smpsAlterVol		$FF
	dc.b	nA2
	smpsAlterVol		$FE
	dc.b	nA2
	smpsAlterVol		$FE
	dc.b	nG2
	smpsAlterVol		$02
	smpsCall		JustDay_Call28, Target
	dc.b	nA2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, smpsNoAttack, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsCall		JustDay_Call28, Target
	dc.b	nBb2, $30
	smpsAlterVol		$04
	dc.b	nRst, $30
	smpsAlterVol		$FC
	smpsFMvoice		$04
	smpsPan		panLeft

JustDay_Loo$8:
	smpsCall		JustDay_Call29, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call29, Target
	smpsAlterPitch	$01
	smpsCall		JustDay_Call29, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call29, Target
	smpsAlterPitch	$FE
	smpsLoop		$00, $02, JustDay_Loo$8, Target
	dc.b	nC3, $12, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, $12
	smpsPan		panCenter
	smpsAlterVol		$04
	smpsAlterVol		$04
	smpsFMvoice		$06
	dc.b	nRst, $01
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	nC4, $06, nB3, nBb3, nG3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF3
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nD3, nF3, nFs3, nG3
	smpsAlterVol		$0A
	dc.b	$05
	smpsAlterVol		$F6
	smpsAlterVol		$FA
	smpsFMvoice		$07
	smpsPan		panLeft
	dc.b	nF4, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nF4, $0C, smpsNoAttack, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $06, nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC5
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG4, smpsNoAttack, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC5, $0C, smpsNoAttack, $0C, nD5, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC5, nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb3, nC4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panLeft
	dc.b	nF4, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nF4, $0C, smpsNoAttack, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $06, nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC5
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nG4, smpsNoAttack, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nC4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4, $12, nG4, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nRst, nC5, $0C, smpsNoAttack, $0C, nD5, $06
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nC5, nG4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nBb4
	smpsPan		panCenter
	smpsAlterVol		$FA
	smpsFMvoice		$0B
	dc.b	nF6, $06, nE6, nC6, nG5, nF5, nE5, nC5
	dc.b	nG4
	smpsFMvoice		$04
	smpsAlterPitch	$F4
	dc.b	nF3, $12, nF3, nF3, $0C, nG3, $12, nG3
	dc.b	nF3, $0C, nG3, $12, nF3, nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nG3, $0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nEb3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nEb3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12, nF3, $12, nF3, nF3, $0C, nG3
	dc.b	$12, nG3, nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nF3, $06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $12, nG3, $48
	smpsAlterPitch	$0C
	smpsFMvoice		$04
	dc.b	nRst, $30, nRst, nRst
	smpsPan		panLeft
	dc.b	nC4, $0C, nC4, nC4, nG3
	smpsPan		panCenter
	smpsFMvoice		$11
	smpsAlterVol		$04

JustDay_Loo$9:
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
	smpsLoop		$00, $08, JustDay_Loo$9, Target
	smpsAlterVol		$FC
	dc.b	nRst, $60
	smpsFMvoice		$04
	smpsAlterVol		$FC
	smpsCall		JustDay_Call30, Target
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsCall		JustDay_Call30, Target
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsCall		JustDay_Call30, Target
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsCall		JustDay_Call30, Target
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nG3, $12, nA3, $06, smpsNoAttack, $60
	smpsStop

JustDay_Call23:
	dc.b	nRst, $0C, nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nE3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nE3, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsReturn

JustDay_Call24:
	dc.b	nRst, $08, nD4, $04, nEb4, $08, nE4, $04
	dc.b	nG4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nA4, $08, nC4, $04
	dc.b	nD4, $08, nE4, $04, nG4, $08, nA4, $04
	dc.b	nC5, $04, nB4, nBb4, nG4, $0C, nRst, $04
	dc.b	nRst, nG4, nRst, nRst, nA4, nRst, nRst, nC5
	dc.b	nRst, nRst, nD5, nRst, nRst, nE5, nF5, $08
	dc.b	nAb5, $04
	smpsReturn

JustDay_Call27:
	smpsPan		panRight
	smpsAlterVol		$08
	dc.b	nRst, $0B, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $01
	smpsPan		panCenter
	smpsAlterVol		$F8
	smpsReturn

JustDay_Call25:
	dc.b	nD4, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $0C, nD4, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsReturn

JustDay_Call26:
	dc.b	nRst, $0C, nC4, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04
	smpsReturn
	dc.b	$E6, $0A, $E0, $40, $B3, $08, $E6, $F6	; Unused
	dc.b	$E0, $C0, $04, $F7, $00, $08, $35, $A4	; Unused
	dc.b	$F9	; Unused

JustDay_Call28:
	dc.b	nRst, $0C, nBb2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nA2, $18, nRst, $0C, nA2, nRst
	dc.b	$0C, nBb2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nAb2, $18, nBb2, nBb2, $0C, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA2, $18, nRst
	smpsReturn

JustDay_Call29:
	dc.b	nC3, $12, $06
	smpsAlterVol		$0A
	dc.b	nRst, $0C, nC3, $06, nRst
	smpsAlterVol		$F6
	smpsReturn

JustDay_Call30:
	dc.b	nRst, $0C, nA3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C, nRst, $0C, nG3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $0C
	smpsReturn

JustDay_FM5:
	dc.b	nRst, $60
	smpsFMvoice		$03

JustDay_Loop10:
	dc.b	nRst, $0C, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nC3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsAlterPitch	$FB
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$05
	smpsLoop		$00, $03, JustDay_Loop10, Target
	dc.b	nRst, $0C, nC3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nC3, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nA2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nB2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nBb2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsAlterPitch	$FC
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$01
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$01
	smpsCall		JustDay_Call23, Target
	smpsCall		JustDay_Call23, Target
	smpsCall		JustDay_Call23, Target
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$04

JustDay_Loop11:
	dc.b	nRst, $60
	smpsLoop		$00, $04, JustDay_Loop11, Target
	smpsFMvoice		$07
	smpsPan		panLeft
	smpsAlterNote	$02
	smpsAlterVol		$0A
	smpsCall		JustDay_Call15, Target
	smpsPan		panCenter
	smpsAlterNote	$FE
	smpsAlterVol		$F6
	smpsModSet	$03, $01, $01, $03
	smpsFMvoice		$09
	smpsAlterVol		$05
	dc.b	nE4, $60, nD4, nE4, $60, nD4
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$FB
	dc.b	nRst, $30
	smpsFMvoice		$0C
	dc.b	nG3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nB3, $18, nRst, $0C
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nD4, $0C, nC4, nB3, nA3, $18, nD3, nE3
	dc.b	nG3, $0C
	smpsAlterVol		$F8
	smpsPan		panCenter
	dc.b	nFs3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $18, nRst, $0C
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	nG4, $0C, nFs4, nD4, nE4, nB3, nD4, nA3
	dc.b	$30
	smpsAlterVol		$F8
	smpsPan		panCenter
	smpsFMvoice		$0B
	smpsPan		panRight
	smpsModSet	$05, $01, $03, $02
	smpsAlterVol		$07
	dc.b	nRst, $04
	smpsCall		JustDay_Call9, Target
	dc.b	nRst, $2C
	smpsAlterVol		$F9
	dc.b	nRst, $2E
	smpsFMvoice		$04
	smpsPan		panLeft
	smpsAlterVol		$FC
	dc.b	nG2, $02, smpsNoAttack, $30, nFs2, nF2, $3C, $24
	dc.b	nG2, $30, nFs2
	smpsAlterVol		$03
	dc.b	nF2, $18
	smpsAlterVol		$FF
	dc.b	nF2
	smpsAlterVol		$FE
	dc.b	nF2
	smpsAlterVol		$FE
	dc.b	nE2
	smpsAlterVol		$02
	smpsCall		JustDay_Call31, Target
	dc.b	nF2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C, smpsNoAttack, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$12
	smpsCall		JustDay_Call31, Target
	dc.b	nF2, $30
	smpsAlterVol		$04
	smpsAlterVol		$02
	smpsFMvoice		$0B
	smpsPan		panLeft
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan		panRight
	dc.b	nG5, nF5, nD5, nG4
	smpsPan		panCenter
	smpsFMvoice		$0E
	smpsCall		JustDay_Call32, Target
	smpsCall		JustDay_Call33, Target
	smpsCall		JustDay_Call32, Target
	smpsCall		JustDay_Call34, Target
	smpsCall		JustDay_Call32, Target
	smpsCall		JustDay_Call33, Target
	smpsCall		JustDay_Call32, Target
	smpsFMvoice		$0B
	smpsCall		JustDay_Call35, Target
	dc.b	nRst, $30
	smpsAlterVol		$FE
	dc.b	nRst, $60
	smpsFMvoice		$0A
	smpsAlterVol		$03

JustDay_Loop12:
	dc.b	nC2, $06, nF2, nC2, nG2
	smpsLoop		$00, $1E, JustDay_Loop12, Target
	smpsAlterVol		$FD
	smpsFMvoice		$0B
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $05, nF6, $06, nE6, nC6, nG5
	smpsPan		panRight
	dc.b	nF5, nE5, nC5, nG4, $01
	smpsAlterVol		$FB
	smpsPan		panCenter
	smpsFMvoice		$0A
	smpsAlterPitch	$F4

JustDay_Loop13:
	dc.b	nC3, $06, nF3, nD3, nG3
	smpsLoop		$00, $10, JustDay_Loop13, Target
	smpsAlterPitch	$0C
	smpsFMvoice		$04
	dc.b	nRst, $30, nRst, nRst
	smpsPan		panRight
	dc.b	nD3, $0C, nD3, nD3, nCs3
	smpsPan		panCenter
	smpsFMvoice		$11
	smpsPan		panRight
	smpsAlterVol		$04

JustDay_Loop14:
	smpsCall		JustDay_Call36, Target
	smpsLoop		$00, $06, JustDay_Loop14, Target
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
	smpsCall		JustDay_Call36, Target
	smpsAlterVol		$FC
	dc.b	nRst, $60
	smpsFMvoice		$04
	smpsAlterVol		$FC
	smpsCall		JustDay_Call37, Target
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsCall		JustDay_Call37, Target
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsCall		JustDay_Call37, Target
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsCall		JustDay_Call37, Target
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, nE3, $12, nF3, $06, smpsNoAttack, $60
	smpsStop

JustDay_Call31:
	dc.b	nRst, $0C, nG2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nFs2, $18, $0C, nRst, nRst, $0C
	dc.b	nF2
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	$06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nRst, $06, nF2, $18, nF2, nG2, $0C, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	$0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $0C, nF2, nF2, nRst
	smpsReturn

JustDay_Call35:
	smpsPan		panLeft
	dc.b	nG5, $06, nF5, nD5, nG4
	smpsPan		panRight
	dc.b	nG5, nF5, nD5, nG4
	smpsPan		panCenter
	smpsReturn

JustDay_Call32:
	dc.b	nG4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsReturn

JustDay_Call33:
	dc.b	nG4, $06, nF4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nA3
	smpsReturn

JustDay_Call34:
	dc.b	nG4, $06, nF4
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nF4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD4, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nG3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3
	smpsReturn

JustDay_Call36:
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

JustDay_Call37:
	dc.b	nRst, $0C, nF3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C, nRst, $0C, nE3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nE3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nF3, $0C
	smpsReturn

JustDay_FM6:
	dc.b	nRst, $60
	smpsFMvoice		$03

JustDay_Loop15:
	dc.b	nRst, $0C, nA2, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nA2, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nF2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsAlterPitch	$F7
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$09
	smpsLoop		$00, $03, JustDay_Loop15, Target
	dc.b	nRst, $0C, nA2, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nA2, $06
	smpsAlterVol		$0F
	dc.b	$06, nRst
	smpsAlterVol		$F1
	dc.b	nF2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF2, $0C
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF2, $06
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nF2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $1E
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	dc.b	nG2, $12
	smpsAlterVol		$0F
	dc.b	$06
	smpsAlterVol		$F1
	smpsAlterPitch	$F9
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call23, Target
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call23, Target
	smpsAlterPitch	$07

JustDay_Loop16:
	dc.b	nRst, $60
	smpsLoop		$00, $04, JustDay_Loop16, Target
	smpsFMvoice		$07
	smpsPan		panRight
	smpsAlterNote	$02
	smpsAlterVol		$0A
	smpsCall		JustDay_Call24, Target
	smpsPan		panCenter
	smpsAlterNote	$FE
	smpsAlterVol		$F6
	smpsFMvoice		$0B
	smpsModSet	$05, $01, $03, $04
	smpsAlterVol		$05
	smpsPan		panLeft
	dc.b	nRst, $08, nB5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nB5, $04, nC6, $08, nG5, $34, nRst, $14
	dc.b	nB5, $04
	smpsAlterVol		$0A
	dc.b	$04, nRst
	smpsAlterVol		$F6
	dc.b	nB5, $04, nC6, $08, nG5, $4C, nRst, $18
	dc.b	nG5, $18, nF5, nE5, $14, nF5, $04, smpsNoAttack
	dc.b	$08, nE5, $04, nF5, $08, nRst, $04, nG5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nRst, $04, nAb5, $08, nRst, $04, nA5
	dc.b	$08, nB5, $04
	smpsAlterVol		$FB
	smpsPan		panCenter
	dc.b	nRst, $30
	smpsFMvoice		$0C
	dc.b	nE3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nG3, $3C, smpsNoAttack, $60, nD3, $18
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nFs3, $3C, smpsNoAttack, $60
	smpsFMvoice		$0D
	smpsAlterVol		$FB
	smpsCall		JustDay_Call38, Target
	smpsCall		JustDay_Call39, Target
	smpsAlterPitch	$03
	smpsCall		JustDay_Call38, Target
	smpsAlterPitch	$FD
	dc.b	nRst, $0C, nBb3, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04, nRst, $30
	smpsCall		JustDay_Call38, Target
	smpsCall		JustDay_Call39, Target
	smpsAlterPitch	$03
	smpsCall		JustDay_Call38, Target
	smpsAlterPitch	$FD
	dc.b	nRst, $08, nBb3, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $20
	smpsAlterVol		$05
	dc.b	nRst, $30
	smpsFMvoice		$04
	smpsAlterNote	$FB
	smpsPan		panRight
	smpsAlterVol		$05
	dc.b	nRst, $02, nRst, $60, nRst, nRst, nRst, $0C
	dc.b	nF3, nG3, nA3, nBb3, nA3, nBb3, nC4
	smpsCall		JustDay_Call10, Target
	dc.b	nBb3, $24, nF4, $18, nEb4, $06, nRst, nD4
	dc.b	nC4, nRst, nCs4, $02, nD4, $04, smpsNoAttack, $2E
	smpsAlterNote	$05
	smpsPan		panCenter
	smpsAlterVol		$FB
	smpsFMvoice		$06
	smpsAlterPitch	$0C
	smpsAlterVol		$FC
	dc.b	nRst, $06, nG3, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $36, nRst, $60, nRst, nRst, $30, nRst
	dc.b	$06, nG3, nA3
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $0C, nA3, $06
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nA3
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC4, $12, nA3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $0C
	smpsAlterPitch	$F4
	smpsAlterVol		$04
	dc.b	nRst, $60
	smpsFMvoice		$07
	smpsAlterVol		$09
	smpsModSet	$01, $01, $03, $06
	smpsAlterPitch	$0C
	smpsCall		JustDay_Call12, Target
	dc.b	smpsNoAttack, $0C, nRst, $60
	smpsAlterVol		$F7
	smpsAlterPitch	$F4
	smpsFMvoice		$0D
	smpsAlterVol		$FD
	smpsCall		JustDay_Call40, Target
	smpsAlterVol		$03
	smpsPan		panLeft
	smpsAlterVol		$0C
	smpsAlterPitch	$0C
	dc.b	nRst, $02
	smpsFMvoice		$0F
	smpsCall		JustDay_Call21, Target
	smpsPan		panRight
	dc.b	nF4, $03, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3, nF4, $03, nE4, nC4, nG3, nF3, nE3
	dc.b	nC3, nG2, nF4, $03, nE4, nC4, nG3, nF3
	dc.b	nE3, nF3, nG3, nD3, $03, nE3, nF3, nG3
	dc.b	nA3, nB3, nC4, nD4, $01
	smpsPan		panCenter
	smpsAlterVol		$F4
	smpsAlterPitch	$F4
	smpsFMvoice		$11
	smpsPan		panLeft
	smpsAlterVol		$04

JustDay_Loop17:
	smpsCall		JustDay_Call41, Target
	smpsLoop		$00, $06, JustDay_Loop17, Target
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
	smpsCall		JustDay_Call41, Target
	smpsAlterVol		$FC
	dc.b	nRst, $60
	smpsFMvoice		$04
	smpsAlterVol		$FC

JustDay_Loop18:
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C, nRst, $0C, nC3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsLoop		$00, $03, JustDay_Loop18, Target
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, nRst, $0C, nC3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C

JustDay_Loop19:
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C, nRst, $0C, nC3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsLoop		$00, $03, JustDay_Loop19, Target
	dc.b	nRst, $0C, nD3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nD3, $0C, nRst, $0C, nC3
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nC3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $06, nC3, $12, nD3, $06, smpsNoAttack, $60
	smpsStop

JustDay_Call38:
	dc.b	nG3, $08
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$04
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	nRst, $0C, nG3, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsReturn

JustDay_Call39:
	dc.b	nRst, $0C, nA3, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04, $08, $04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$0C
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$08, $04
	smpsReturn

JustDay_Call40:
	dc.b	nF3, $0C, nRst, nG3, nRst, nBb3, $03, smpsNoAttack
	dc.b	nB3, $0F, nG3, $06, nRst, $0C, nC4, $0C
	dc.b	smpsNoAttack, $0C, nB3, $06, nRst, nC4, nD4, nRst
	dc.b	nG3, $30, nRst, $06, nF3, $0C, nRst, nG3
	dc.b	nRst, nBb3, $03, smpsNoAttack, nB3, $0F, nG3, $06
	dc.b	nRst, $0C, nF4, $0C, smpsNoAttack, $06, nRst, nG4
	dc.b	nRst, nF4, nE4, nRst, nD4, $30, nRst, $06
	smpsReturn

JustDay_Call41:
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

JustDay_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice	$08

JustDay_Loop20:
	dc.b	nRst, $60
	smpsLoop		$00, $07, JustDay_Loop20, Target
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4
	dc.b	nF4
	smpsCall		JustDay_Call42, Target
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60
	dc.b	nRst, nRst, nRst, nRst, $60, nRst
	smpsPSGvoice	$04
	smpsModSet	$03, $01, $01, $04
	smpsSetVol	$03
	dc.b	nC3, $60, nB2, nC3, $60, nB2
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FD
	dc.b	nRst, $30
	smpsModSet	$0A, $01, $01, $04
	smpsPSGvoice	$04
	smpsSetVol	$04
	dc.b	nB3, $60, smpsNoAttack, $60, nA3, $60, smpsNoAttack, $60
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FC
	smpsSetVol	$01
	smpsPSGvoice	$04
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4
	dc.b	$60, smpsNoAttack, $18, nC4, nBb3, nC4, nG3, $60
	dc.b	nFs3, $30, nD3, nG3, $60, nRst, $30
	smpsSetVol	$FF
	dc.b	nRst, $30
	smpsPSGvoice	$02
	smpsAlterPitch	$0C
	smpsSetVol	$04
	smpsAlterPitch	$FB
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$07
	smpsAlterPitch	$F4
	dc.b	nRst, $06, nRst, nF4, nF4, nRst, nRst, nG4
	dc.b	nG4
	smpsAlterPitch	$07
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$01
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$F6
	smpsAlterPitch	$07
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FF
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$01
	smpsAlterPitch	$F6
	smpsSetVol	$FC
	smpsPSGvoice	$08
	smpsAlterPitch	$0C
	dc.b	nG4, $06, nFs4, nF4, nD4, nC4, nA3, nG3
	dc.b	nD3, nF3, $0C, nRst, nG3, nRst, nB3, $12
	dc.b	nG3, $06, nRst, $0C, nC4, smpsNoAttack, $06, nRst
	dc.b	nB3, nRst, nC4, nD4, nRst, nC4, $0C, nRst
	dc.b	$06, nB3, $12, nRst, $06, nG3, $0C, nF3
	dc.b	$0C, nRst, nG3, nRst, nB3, $12, nG3, $06
	dc.b	nRst, $0C, nF4, smpsNoAttack, $06, nRst, nG4, nRst
	dc.b	nF4, nE4, nRst, nD4, $36
	smpsAlterPitch	$F4
	dc.b	nRst, $30, nRst, $60
	smpsPSGvoice	$06
	smpsSetVol	$02

JustDay_Loop21:
	dc.b	nF3, $12, $06, nRst, $24, nF3, $06, nRst
	dc.b	$0C, nF3, nRst, $06
	smpsLoop		$00, $08, JustDay_Loop21, Target
	smpsSetVol	$FE
	smpsPSGvoice	$08
	smpsAlterPitch	$0C
	smpsCall		JustDay_Call40, Target
	smpsAlterPitch	$F4
	smpsPSGvoice	$04
	smpsSetVol	$03
	smpsCall		JustDay_Call21, Target
	smpsCall		JustDay_Call21, Target
	smpsSetVol	$FD
	smpsAlterPitch	$0C
	smpsPSGvoice	$02
	smpsSetVol	$04

JustDay_Loop22:
	smpsCall		JustDay_Call44, Target
	smpsLoop		$00, $12, JustDay_Loop22, Target
	dc.b	nF3, $03, nF3, nRst, $18

JustDay_Loop23:
	smpsCall		JustDay_Call44, Target
	smpsLoop		$00, $15, JustDay_Loop23, Target
	dc.b	nF3, $03
	smpsAlterPitch	$F4
	smpsSetVol	$FC
	smpsPSGvoice	$02
	smpsSetVol	$03
	dc.b	nRst, $48, nG3, $06, nC3, nC4, nG3

JustDay_Loop24:
	dc.b	nC3, $06, nC3, nC4, nG3, nC3, nC4, nG3
	dc.b	nC3, nC4, nG3, nC3, nC4, nG3, nC3, nC4
	dc.b	nG3
	smpsLoop		$00, $10, JustDay_Loop24, Target
	smpsStop

JustDay_Call42:
	dc.b	nEb4, $05, smpsNoAttack, nE4, $1F, nD4, $18, nA3
	dc.b	$06, nRst, nG4, $0C, nF4, $06, nRst, nEb4
	dc.b	$02, smpsNoAttack, nE4, $22, nD4, $3C, nRst, $0C
	dc.b	nC4, $18, nG4, $06, nRst, nF4, $12, nE4
	dc.b	$06, nRst, $0C, nD4, smpsNoAttack, $06, nRst, nE4
	dc.b	nRst, nD4, nE4, nRst, nA3, $12, nG3, $0C
	dc.b	nRst, nG3, smpsNoAttack, $0C, nA3, $06, nRst, nA3
	dc.b	$24, nB3, $06, nRst, nRst, nC4, nRst, nD4
	dc.b	smpsNoAttack, $0C, nC4, nD4, nG4, $18, nC4, $06
	dc.b	nRst, nD4, $0C, nE4, smpsNoAttack, $60
	smpsReturn

JustDay_Call43:
	dc.b	nRst, $0C, nC4, $06, $06
	smpsLoop		$00, $02, JustDay_Call43, Target
	smpsReturn

JustDay_Call44:
	dc.b	nF3, $03, nF3, nF2
	smpsReturn

JustDay_PSG2:
	dc.b	nRst, $60

JustDay_Loop25:
	dc.b	nRst, $60
	smpsLoop		$00, $07, JustDay_Loop25, Target
	smpsPSGvoice	$08
	smpsModSet	$05, $01, $02, $04
	dc.b	nRst, $0C
	smpsSetVol	$03
	dc.b	nRst, $0C, nG3, nAb3, nA3, nC4, nA3, nG4
	dc.b	nF4
	smpsCall		JustDay_Call42, Target
	dc.b	nRst, $18, nE4, $3C, nD4, $0C, nC4, $60
	smpsSetVol	$FD
	smpsModSet	$00, $00, $00, $00
	dc.b	nRst, $54, nRst, $60, nRst, nRst, $60, nRst
	smpsPSGvoice	$04
	smpsModSet	$03, $01, $01, $04
	smpsSetVol	$02
	dc.b	nG2, $30, nA2, nF2, nAb2, nG2, $30, nA2
	dc.b	nF2, nAb2
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FE
	dc.b	nRst, $30
	smpsModSet	$0A, $01, $02, $02
	smpsPSGvoice	$04
	smpsSetVol	$03
	dc.b	nE3, $60, smpsNoAttack, $60, nD3, $60, smpsNoAttack, $60
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FD
	smpsSetVol	$02
	smpsPSGvoice	$04
	smpsModSet	$04, $01, $01, $03
	dc.b	nRst, $04, nF4, $60, smpsNoAttack, $18, nEb4, nD4
	dc.b	nEb4, nD4, $60, smpsNoAttack, $18, nC4, nBb3, nC4
	dc.b	nG3, $60, nFs3, $30, nD3, nG3, $60, nRst
	dc.b	$2C
	smpsSetVol	$FE
	dc.b	nRst, $30
	smpsPSGvoice	$02
	smpsSetVol	$03
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$04
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	dc.b	nRst, $06, nRst, nBb3, nBb3, nRst, nRst, nD4
	dc.b	nD4
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4
	dc.b	$06, $06
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	dc.b	nRst, $0C, nC4, $06, $06, nRst, $0C, nD4
	dc.b	$06, $06
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$02
	smpsCall		JustDay_Call43, Target
	smpsAlterPitch	$FE
	smpsSetVol	$FD
	smpsModSet	$05, $02, $01, $04
	smpsPSGvoice	$08
	smpsAlterPitch	$0C
	smpsSetVol	$03
	dc.b	nRst, $06, nG4, $06, nFs4, nF4, nD4, nC4
	dc.b	nA3, nG3, nD3, nF3, $0C, nRst, nG3, nRst
	dc.b	nB3, $12, nG3, $06, nRst, $0C, nC4, smpsNoAttack
	dc.b	$06, nRst, nB3, nRst, nC4, nD4, nRst, nC4
	dc.b	$0C, nRst, $06, nB3, $12, nRst, $06, nG3
	dc.b	$0C, nF3, $0C, nRst, nG3, nRst, nB3, $12
	dc.b	nG3, $06, nRst, $0C, nF4, smpsNoAttack, $06, nRst
	dc.b	nG4, nRst, nF4, nE4, nRst, nD4, $30, nRst
	dc.b	$30
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FD
	smpsAlterPitch	$F4
	dc.b	nRst, $60
	smpsPSGvoice	$06
	smpsSetVol	$02

JustDay_Loop26:
	dc.b	nBb2, $12, $06, nRst, $24, nBb2, $06, nRst
	dc.b	$0C, nBb2, nRst, $06
	smpsLoop		$00, $08, JustDay_Loop26, Target
	smpsSetVol	$FE
	smpsPSGvoice	$08
	smpsAlterPitch	$0C
	smpsSetVol	$02
	smpsModSet	$01, $01, $01, $03
	dc.b	nRst, $06, nF3, $0C, nRst, nG3, nRst, nBb3
	dc.b	$03, smpsNoAttack, nB3, $0F, nG3, $06, nRst, $0C
	dc.b	nC4, $0C, smpsNoAttack, $0C, nB3, $06, nRst, nC4
	dc.b	nD4, nRst, nG3, $30, nRst, $06, nF3, $0C
	dc.b	nRst, nG3, nRst, nBb3, $03, smpsNoAttack, nB3, $0F
	dc.b	nG3, $06, nRst, $0C, nF4, $0C, smpsNoAttack, $06
	dc.b	nRst, nG4, nRst, nF4, nE4, nRst, nD4, $30
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FE
	smpsAlterPitch	$F4
	smpsPSGvoice	$04
	dc.b	nRst, $01
	smpsModSet	$01, $01, $02, $03
	smpsSetVol	$05
	smpsCall		JustDay_Call21, Target
	dc.b	nF4, $03, nE4, nC4, nG3, nF3, nE3, nF3
	dc.b	nG3, nF4, $03, nE4, nC4, nG3, nF3, nE3
	dc.b	nC3, nG2, nF4, $03, nE4, nC4, nG3, nF3
	dc.b	nE3, nF3, nG3, nD3, $03, nE3, nF3, nG3
	dc.b	nA3, nB3, nC4, nD4, $01
	smpsSetVol	$FB
	smpsSetVol	$04
	smpsPSGvoice	$02

JustDay_Loop27:
	smpsCall		JustDay_Call44, Target
	smpsLoop		$00, $12, JustDay_Loop27, Target
	dc.b	nF3, $03, nF3, nRst, $18

JustDay_Loop28:
	smpsCall		JustDay_Call44, Target
	smpsLoop		$00, $15, JustDay_Loop28, Target
	dc.b	nF3, $03
	smpsSetVol	$FC
	smpsPSGvoice	$02
	smpsSetVol	$05
	dc.b	nRst, $01
	smpsAlterNote	$02
	dc.b	nRst, $48, nG3, $06, nC3, nC4, nG3, $05
	smpsPSGvoice	$08
	smpsSetVol	$FB
	smpsAlterNote	$FE
	smpsModSet	$08, $01, $01, $02
	smpsSetVol	$03
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $60
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $54
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD4, $18, nC4, $0C, smpsNoAttack, $60
	smpsCall		JustDay_Call14, Target
	dc.b	smpsNoAttack, $0C, nD3, $18, nF3, $0C, smpsNoAttack, $0C
	dc.b	nG3, $24, nF3, $18, nE3, $12, nD3, $06
	dc.b	smpsNoAttack, $60
	smpsStop

JustDay_PSG3:
	smpsPSGform	$E7
	dc.b	nRst, $60
	smpsSetVol	$01
	smpsPSGvoice	$02

JustDay_Loop29:
	dc.b	nB3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C
	smpsLoop		$00, $10, JustDay_Loop29, Target
	smpsSetVol	$FF

JustDay_Loop30:
	dc.b	nB3, $0C
	smpsLoop		$00, $20, JustDay_Loop30, Target
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, nRst, $08, nC4, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, nRst, $04, nC4, nC4
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, $08, $04, $08, $04, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C

JustDay_Loop31:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $08, $04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$08, $04, $0C
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $08
	dc.b	$04, $08, $04
	smpsLoop		$00, $02, JustDay_Loop31, Target
	dc.b	nRst, $30

JustDay_Loop32:
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$08, $04, $08, $04
	smpsLoop		$00, $03, JustDay_Loop32, Target
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $0C, $08, $04, $08, $04
	dc.b	$08, $04, $08, $04, $0C, $0C

JustDay_Loop33:
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsLoop		$00, $02, JustDay_Loop33, Target
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04, $08, $04, $08, $04, $04, $04
	dc.b	$04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$01, $03, JustDay_Loop33, Target
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, nRst, $24, nRst, $30
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, nRst, $30

JustDay_Loop34:
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $06, $06
	smpsLoop		$00, $1C, JustDay_Loop34, Target
	dc.b	nC4, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b	nRst, $24

JustDay_Loop35:
	smpsPSGvoice	$02
	dc.b	nC4, $06
	smpsLoop		$00, $0A, JustDay_Loop35, Target
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$01, $04, JustDay_Loop35, Target
	smpsPSGvoice	$02
	dc.b	$06, nRst, $2A, nRst, $60

JustDay_Loop36:
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$00, $20, JustDay_Loop36, Target

JustDay_Loop37:
	smpsPSGvoice	$02
	dc.b	nC4, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsLoop		$00, $0C, JustDay_Loop37, Target
	smpsPSGvoice	$02
	dc.b	nC4, $04, $04, $04, $06, $06, $06, $06
	dc.b	$06, $06, $06, $06
	smpsPSGvoice	$05
	dc.b	$0C, $0C, $0C

JustDay_Loop38:
	smpsPSGvoice	$02
	dc.b	nC4, $03, $03
	smpsPSGvoice	$05
	dc.b	$06
	smpsLoop		$00, $10, JustDay_Loop38, Target

JustDay_Loop39:
	smpsCall		JustDay_Call45, Target
	smpsLoop		$01, $07, JustDay_Loop39, Target
	smpsPSGvoice	$02
	dc.b	nC4, $03, nRst, $0F
	smpsPSGvoice	$05
	dc.b	$06

JustDay_Loop40:
	smpsCall		JustDay_Call45, Target
	smpsLoop		$01, $08, JustDay_Loop40, Target
	dc.b	nRst, $48
	smpsPSGvoice	$02
	dc.b	nC4, $0C, $0C

JustDay_Loop41:
	smpsCall		JustDay_Call46, Target
	smpsLoop		$00, $04, JustDay_Loop41, Target
	smpsCall		JustDay_Call46, Target
	smpsPSGvoice	$05
	dc.b	nC4, $0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$06
	smpsPSGvoice	$05
	dc.b	$12
	smpsPSGvoice	$02
	dc.b	$0C
	smpsCall		JustDay_Call46, Target
	smpsCall		JustDay_Call46, Target
	smpsStop
	dc.b	$F5, $02, $B1, $0C, $06, $06, $F7, $00	; Unused
	dc.b	$04, $F3, $B4, $F9	; Unused

JustDay_Call45:
	smpsPSGvoice	$02
	dc.b	nC4, $03, $03
	smpsPSGvoice	$05
	dc.b	$06
	smpsLoop		$00, $02, JustDay_Call45, Target
	smpsReturn

JustDay_Call46:
	smpsPSGvoice	$05
	dc.b	nC4, $0C
	smpsPSGvoice	$02
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsReturn

JustDay_PWM1:
	dc.b	$96, $3C, $81, $24
	smpsCall		JustDay_Call47, Target
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, nRst, nRst, $18
	smpsCall		JustDay_Call47, Target
	dc.b	$81, $18, nRst, $0C, $81, nRst, $81, $81
	dc.b	$18

JustDay_Loop42:
	smpsCall		JustDay_Call47, Target
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, nRst, nRst, $18
	smpsLoop		$00, $02, JustDay_Loop42, Target
	dc.b	$81, $0C, $81, nRst, $06, $81, nRst, $81
	dc.b	nRst, $0C, $81, nRst, $06, $81, $12, nRst
	dc.b	$06, $81, $12, nRst, $06, $81, nRst, $81
	dc.b	$12, $81, $81, nRst, $06, $81, $12, $81
	dc.b	$81, $81, $81, $81, $0C, $81, $81, $81
	dc.b	$81, $81, $81, $81, $81, $18, nRst, $14
	dc.b	$81, $04, nRst, $30, $81, $18, nRst, $14
	dc.b	$81, $04, nRst, $2C, $81, $04

JustDay_Loop43:
	dc.b	nRst, $08, $81, $04, nRst, $08, $81, $04
	dc.b	nRst, $0C, $81, $0C, $30, nRst, $08, $81
	dc.b	$04, nRst, $08, $81, $04, nRst, $0C, $81
	dc.b	$0C, $14, $04, nRst, $18
	smpsLoop		$00, $02, JustDay_Loop43, Target
	dc.b	nRst, $30

JustDay_Loop44:
	dc.b	$81, $18, nRst, $0C, $81, nRst, $81, nRst
	dc.b	$18
	smpsLoop		$00, $04, JustDay_Loop44, Target

JustDay_Loop45:
	dc.b	$8B, $0C, $0C, nRst, $24, $8B, $0C, nRst
	dc.b	$08, $8B, $04, nRst, $08, $8B, $04
	smpsLoop		$00, $07, JustDay_Loop45, Target
	dc.b	$8B, $08, $04, nRst, $24, $8B, $30

JustDay_Loop46:
	dc.b	$8B, $12, $06, nRst, $8B, $12, nRst, $06
	dc.b	$8B, $12, nRst, $18
	smpsLoop		$00, $03, JustDay_Loop46, Target
	dc.b	$8B, $12, $06, nRst, $8B, $12, nRst, $06
	dc.b	$8B, $12, $18

JustDay_Loop47:
	dc.b	$8B, $12, $06, nRst, $12, $8B, $06, $18
	dc.b	nRst
	smpsLoop		$00, $07, JustDay_Loop47, Target
	dc.b	$8B, $18, $8B, $8B, $8B

JustDay_Loop48:
	dc.b	$8B, $12, $06, nRst, $18
	smpsLoop		$00, $03, JustDay_Loop48, Target
	dc.b	$8B, $06, $0C, $06, nRst, $18
	smpsLoop		$01, $02, JustDay_Loop48, Target
	dc.b	$8B, $12, $06, nRst, $18, nRst, $60

JustDay_Loop49:
	dc.b	$8B, $06, $06, $06, $06, nRst, $18, $8B
	dc.b	$0C, $0C, nRst, $18, $8B, $06, $06, $06
	dc.b	$06, nRst, $12, $8B, $06, nRst, $0C, $8B
	dc.b	nRst, $18, $8B, $06, $06, $06, $06, nRst
	dc.b	$12, $8B, $06, nRst, $0C, $8B, nRst, $18
	dc.b	$8B, $06, $06, $06, $06, nRst, $8B, nRst
	dc.b	$8B, nRst, $0C, $8B, nRst, $18
	smpsLoop		$00, $02, JustDay_Loop49, Target

JustDay_Loop50:
	dc.b	$81, $12, $12, $0C, nRst, $81, nRst, $06
	dc.b	$81, $12, $81, $12, $12, $0C, nRst, $0C
	dc.b	$81, $06, $06, nRst, $81, $12
	smpsLoop		$00, $02, JustDay_Loop50, Target

JustDay_Loop51:
	dc.b	$8B, $0C
	smpsLoop		$00, $0B, JustDay_Loop51, Target
	dc.b	$8B, $06, $8B, $8B, $0C, $0C, $0C, $0C
	dc.b	$81, $0C, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $0C, $06, $06, $81, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $06, $0C, $03, $03, $0C, $0C
	dc.b	$06, $0C, $06, nRst, $3C, $81, $24

JustDay_Loop52:
	dc.b	$81, $24, $0C, $24, $0C, $24, $0C, $12
	dc.b	$12, $0C
	smpsLoop		$00, $07, JustDay_Loop52, Target
	dc.b	$81, $24, $0C, $24, $0C, $24, $0C, $18
	dc.b	$12, $06, nRst, $60, $81, $18
	smpsStop

JustDay_Call47:
	dc.b	$81, $18, nRst, $12, $81, $06, nRst, $81
	dc.b	$81, nRst, nRst, $0C, $81, $81, $18, nRst
	dc.b	$12, $81, $06, nRst, $81, $81, nRst, nRst
	dc.b	$18, $81, $18, nRst, $12, $81, $06, nRst
	dc.b	$81, $81, nRst, nRst, $0C, $81
	smpsReturn

JustDay_PWM2:
	smpsAlterVol		$F0
	dc.b	$84, $18, $84, $84
	smpsAlterVol		$10
	dc.b	$82, $18
	smpsCall		JustDay_Call48, Target
	dc.b	nRst, $18, $82, nRst, $82, nRst, $18, $82
	dc.b	nRst, $82, nRst, $18, $82, nRst, $82, nRst
	dc.b	$48, $82, $06, $82, $82, $82

JustDay_Loop53:
	smpsCall		JustDay_Call48, Target
	smpsLoop		$01, $02, JustDay_Loop53, Target
	dc.b	nRst, $42, $82, $12, $0C, nRst, $06, $82
	dc.b	$82, $0C, $06, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06, nRst
	smpsAlterVol		$07
	dc.b	$86, nRst, $86, nRst
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, $82, nRst, $06, $82, $06, nRst, $0C
	dc.b	$82
	smpsAlterVol		$90
	dc.b	$87, $04
	smpsAlterVol		$70
	dc.b	$85, $85, $86, $86
	smpsAlterVol		$90
	dc.b	$87, $87, $0C
	smpsAlterVol		$70
	smpsAlterVol		$F9
	dc.b	$85, $03, $85
	smpsAlterVol		$07
	dc.b	$86, $86
	smpsAlterVol		$90
	dc.b	$87, $87
	smpsAlterVol		$70
	dc.b	$82, $82, nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, $04, $85
	smpsAlterVol		$07
	dc.b	$86, $86
	smpsAlterVol		$90
	dc.b	$87, $87
	smpsAlterVol		$70
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82, $0C
	smpsAlterVol		$AB

JustDay_Loop54:
	dc.b	$82, $04
	smpsAlterVol		$11
	smpsLoop		$00, $09, JustDay_Loop54, Target
	smpsAlterVol		$BC
	dc.b	$96, $60, nRst, $08, $82, $04, $08, nRst
	dc.b	$04, $82, $08, $0C, $04, nRst, $08, $82
	dc.b	$04, $08, $04, nRst, $08, $82, $04
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, $14, $04, nRst, $18, $82, nRst, $82
	dc.b	nRst, $82, nRst, $82, $08, $04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsAlterVol		$22
	dc.b	$82, $0C, $0C, $08, $04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	nRst, $14, $82, $04, nRst, $30, $82, $18
	dc.b	nRst, $14, $82, $04, nRst, $30, $82, $14
	dc.b	$04, nRst, $14, $82, $04, nRst, $30, $82
	dc.b	$18, nRst, $14, $82, $04, nRst, $30, $82
	dc.b	$08, $04
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	smpsAlterVol		$DE
	smpsAlterVol		$22

JustDay_Loop55:
	dc.b	nRst, $18, $82, nRst, $82, $08
	smpsAlterVol		$F9
	dc.b	$85, $04
	smpsAlterVol		$07
	dc.b	$86, $08
	smpsAlterVol		$90
	dc.b	$87, $04
	smpsAlterVol		$70
	smpsLoop		$00, $07, JustDay_Loop55, Target
	dc.b	$82, $08, $04, nRst, $24, nRst, $30
	smpsAlterVol		$22
	dc.b	nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, nRst, $06
	smpsAlterVol		$07
	dc.b	$86, nRst
	smpsAlterVol		$90
	dc.b	$87, nRst, $18
	smpsAlterVol		$70
	dc.b	$8C, nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, nRst, $06
	smpsAlterVol		$07
	dc.b	$86, nRst
	smpsAlterVol		$90
	dc.b	$87, nRst, $18
	smpsAlterVol		$70
	dc.b	$8C, $0C, $06, $06, nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, nRst, $06
	smpsAlterVol		$07
	dc.b	$86, nRst
	smpsAlterVol		$90
	dc.b	$87, nRst, $18
	smpsAlterVol		$70
	dc.b	$8C, nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, nRst, $06
	smpsAlterVol		$07
	dc.b	$86, nRst
	smpsAlterVol		$90
	dc.b	$87, nRst, $0C
	smpsAlterVol		$70
	dc.b	$8C, $06, $8C, $8C, $8C
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70

JustDay_Loop56:
	dc.b	nRst, $1E, $8C, $12, nRst, $18, $8C
	smpsLoop		$00, $07, JustDay_Loop56, Target
	dc.b	nRst, $18, $8C, nRst, $0C, $8C, $06, $8C
	dc.b	$8C, $8C
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	nRst, $18, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, $12, $06, nRst, $30, nRst, $60

JustDay_Loop57:
	dc.b	nRst, $18, $8C, nRst, $8C, nRst, $8C, nRst
	dc.b	$8C, $0C, $06, $06, nRst, $18, $8C, nRst
	dc.b	$8C, nRst, $8C, nRst, $8C, $06
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsLoop		$00, $02, JustDay_Loop57, Target
	smpsAlterVol		$DE

JustDay_Loop58:
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, $12, $06
	smpsLoop		$00, $02, JustDay_Loop58, Target
	dc.b	nRst, $30, nRst, nRst, $24
	smpsAlterVol		$F9
	dc.b	$85, $03
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87, $06
	smpsAlterVol		$70
	dc.b	$8C, $03, $8C, $8C, nRst, $8C, nRst, nRst
	dc.b	$8C, $8C, $8C, $8C, nRst, $8C, $8C, $8C
	dc.b	$8C, nRst, $0C, $8C, nRst, $8C, nRst, $8C
	dc.b	nRst, $8C, $09, $03, nRst, $0C, $8C, nRst
	dc.b	$8C, nRst, $8C, nRst, $15, $8C, $03, nRst
	dc.b	$0C, $8C, nRst, $8C, nRst, $8C, nRst, $8C
	dc.b	$09, $03, nRst, $0C, $8C, nRst, $8C, nRst
	dc.b	$8C, nRst, $8C, $09, $03, nRst, $3C
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	$82, $06, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82
	smpsCall		JustDay_Call49, Target
	smpsCall		JustDay_Call49, Target
	dc.b	nRst, $18, $82, nRst, $82, nRst, $82, nRst
	dc.b	$82, nRst, $82, nRst, $82, nRst, $0C
	smpsAlterVol		$F9
	dc.b	$85, $06, $85, nRst, $85
	smpsAlterVol		$07
	dc.b	$86, nRst, $86, $86, nRst, $86
	smpsAlterVol		$90
	dc.b	$87, $0C
	smpsAlterVol		$70
	dc.b	$82
	smpsCall		JustDay_Call49, Target
	dc.b	nRst, $57
	smpsAlterVol		$F9
	dc.b	$85, $03
	smpsAlterVol		$07
	dc.b	$86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	smpsStop

JustDay_Call48:
	dc.b	nRst, $18, $82
	smpsLoop		$00, $07, JustDay_Call48, Target
	dc.b	nRst, $0C, $82, $82, $06, $82, $86, $0C
	smpsReturn

JustDay_Call49:
	dc.b	nRst, $18, $82
	smpsLoop		$00, $06, JustDay_Call49, Target
	dc.b	nRst, $0C, $82, $82, $82, $06, $82, nRst
	dc.b	$82, nRst, nRst, $82, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	nRst
	smpsReturn

JustDay_PWM3:
	dc.b	$96, $48
	smpsAlterVol		$FC
	dc.b	$83, $18
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $12
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $06, nRst, $0C
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, nRst, $06
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $12, nRst, $18
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
	dc.b	nRst, nRst, $0C
	smpsAlterVol		$C0
	dc.b	$89, nRst, $06
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $12, nRst, $30
	smpsAlterVol		$04
	dc.b	nRst, $60
	smpsAlterVol		$C0
	dc.b	$89, $0C
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $12
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, nRst, $30
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $30
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $0C
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $24
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60, $89, $18, nRst, $14
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $04, nRst, $30
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $30
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $18
	smpsAlterVol		$40
	dc.b	$8A, nRst, $8A, nRst, $8A, nRst, $8A, nRst
	dc.b	$8A, nRst, $8A, nRst, $8A, $14, $04, nRst
	dc.b	$30, nRst, $18, $8A, nRst, $8A, nRst, $18
	dc.b	$8A, nRst, $8A, nRst, $18, $8A, nRst, $8A
	dc.b	nRst, $08
	smpsAlterVol		$C0
	dc.b	$89, $04, nRst, $24
	smpsAlterVol		$40
	dc.b	nRst, $18
	smpsAlterVol		$FC
	dc.b	$83, $18
	smpsAlterVol		$04
	smpsAlterVol		$80
	dc.b	$89, $60
	smpsAlterVol		$80
	dc.b	nRst
	smpsAlterVol		$80
	dc.b	$89
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83, $30
	smpsAlterVol		$08
	smpsAlterVol		$80
	dc.b	$89, $18
	smpsAlterVol		$80
	smpsAlterVol		$F8
	dc.b	$83
	smpsAlterVol		$08

JustDay_Loop59:
	smpsAlterVol		$B0
	dc.b	$89, $60
	smpsAlterVol		$50
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $02, JustDay_Loop59, Target
	smpsAlterVol		$C0
	dc.b	$89, $60, nRst, nRst, nRst, $89, $12
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $1E
	smpsAlterVol		$04
	dc.b	nRst, $60
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $30, nRst, $89
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83
	smpsAlterVol		$04
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
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40

JustDay_Loop60:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	smpsLoop		$00, $02, JustDay_Loop60, Target
	smpsAlterVol		$C0
	dc.b	$89
	smpsAlterVol		$40
	dc.b	nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $54
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $0C
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $5A
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $06, nRst, $60
	smpsAlterVol		$40
	smpsStop

JustDay_PWM4:
	smpsAlterVol		$D0
	dc.b	$84, $18, $84, $84, $30, nRst, $06, $84
	dc.b	nRst, $84, nRst, $84, $84, nRst, $84, nRst
	dc.b	$84, nRst, $84, nRst, $84, nRst, $84, nRst
	dc.b	$84, $84, nRst, $84, $84, nRst, $84, nRst
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	nRst, $84, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, nRst, $84
	dc.b	nRst, $84, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, $84, $84, nRst, $06
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	nRst, $84, $84, nRst, $84, $84, nRst, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, $84, nRst
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, nRst
	dc.b	$84, $84, nRst, $84, $84, nRst, $84, nRst
	dc.b	$60

JustDay_Loop61:
	dc.b	nRst, $06, $84, nRst, $84, nRst, $84, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	nRst, $84, nRst, $84, $84, nRst, $84, $84
	dc.b	nRst, $84, nRst, $84, nRst, $84, nRst, $84
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, nRst
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, $84
	dc.b	$84
	smpsLoop		$00, $02, JustDay_Loop61, Target
	dc.b	$84, $06, nRst, nRst, $84, nRst, nRst, $84
	dc.b	nRst, nRst, $84, nRst, nRst, $84, nRst, $84
	dc.b	$84, nRst, $84, $84, nRst, $84, $84, $84
	dc.b	$84, nRst, $84, nRst, $84, $84, nRst, $84
	dc.b	$84, nRst, $60, nRst
	smpsAlterVol		$30
	smpsAlterVol		$CD
	dc.b	nRst, $60, nRst, $0C, $88, nRst, $88, nRst
	dc.b	$88, nRst, $88, $04, $04, $04

JustDay_Loop62:
	dc.b	nRst, $0C, $88, nRst, $88
	smpsAlterVol		$FC
	dc.b	nRst, $0C, $90, $08, $04, $08
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$91, $04, nRst, $08
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $04
	smpsAlterVol		$04
	dc.b	nRst, $0C, $88, nRst, $88, nRst, $08
	smpsAlterVol		$C0
	dc.b	$91, $04, $0C
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $0C
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$91, $08
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$90, $04
	smpsAlterVol		$04
	smpsLoop		$00, $02, JustDay_Loop62, Target
	smpsAlterVol		$33
	dc.b	nRst, $30
	smpsAlterVol		$AD

JustDay_Loop63:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $07, JustDay_Loop63, Target
	dc.b	smpsNoAttack, $0C, $88, $08, $04

JustDay_Loop64:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $07, JustDay_Loop64, Target
	dc.b	nRst, $0C, $88, $04, $04, $04

JustDay_Loop65:
	dc.b	$88, $08
	smpsAlterVol		$CD
	dc.b	$04
	smpsAlterVol		$22
	dc.b	$08
	smpsAlterVol		$DE
	dc.b	$04
	smpsAlterVol		$33
	smpsLoop		$00, $1C, JustDay_Loop65, Target
	dc.b	$88, $08
	smpsAlterVol		$CD
	dc.b	$04
	smpsAlterVol		$33
	dc.b	nRst, $24, nRst, $30

JustDay_Loop66:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $10, JustDay_Loop66, Target

JustDay_Loop67:
	dc.b	nRst, $0C, $88
	smpsLoop		$00, $1E, JustDay_Loop67, Target
	dc.b	nRst, $30
	smpsAlterVol		$53

JustDay_Loop68:
	dc.b	$88, $06
	smpsAlterVol		$AB
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$55
	smpsLoop		$00, $10, JustDay_Loop68, Target
	dc.b	$88, $06
	smpsAlterVol		$AB
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$55
	dc.b	nRst, $18, nRst, $60
	smpsAlterVol		$CD

JustDay_Loop69:
	smpsAlterVol		$FD
	dc.b	nRst, $0C, $88, $06, $06
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $0C, $88, $06, $06
	smpsAlterVol		$30
	smpsLoop		$00, $10, JustDay_Loop69, Target

JustDay_Loop70:
	dc.b	$88, $06
	smpsAlterVol		$CD
	dc.b	$06
	smpsAlterVol		$22
	dc.b	$06
	smpsAlterVol		$DE
	dc.b	$06
	smpsAlterVol		$33
	smpsLoop		$00, $10, JustDay_Loop70, Target

JustDay_Loop71:
	smpsAlterVol		$FD
	dc.b	nRst, $06, $88, $03, $03
	smpsAlterVol		$03
	smpsAlterVol		$D0
	dc.b	nRst, $06, $88, $03, $03
	smpsAlterVol		$30
	smpsLoop		$00, $08, JustDay_Loop71, Target

JustDay_Loop72:
	smpsCall		JustDay_Call50, Target
	smpsLoop		$00, $07, JustDay_Loop72, Target
	dc.b	$96, $0C, nRst, $06
	smpsAlterVol		$D0
	dc.b	$88, $03, $03
	smpsAlterVol		$30

JustDay_Loop73:
	smpsCall		JustDay_Call50, Target
	smpsLoop		$00, $08, JustDay_Loop73, Target
	dc.b	nRst, $60

JustDay_Loop74:
	smpsCall		JustDay_Call51, Target
	smpsLoop		$00, $05, JustDay_Loop74, Target
	smpsCall		JustDay_Call52, Target

JustDay_Loop75:
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $0C
	smpsAlterVol		$50
	smpsLoop		$00, $04, JustDay_Loop75, Target
	smpsAlterVol		$FB
	dc.b	$91, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsCall		JustDay_Call51, Target
	smpsCall		JustDay_Call51, Target
	smpsStop

JustDay_Call50:
	dc.b	nRst, $06
	smpsAlterVol		$FD
	dc.b	$88, $03, $03
	smpsAlterVol		$03
	dc.b	nRst, $06
	smpsAlterVol		$D0
	dc.b	$88, $03, $03
	smpsAlterVol		$30
	smpsReturn

JustDay_Call51:
	smpsCall		JustDay_Call52, Target
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $0C
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $06, $06
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsReturn

JustDay_Call52:
	smpsAlterVol		$FB
	dc.b	$91, $0C, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $06
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90
	smpsAlterVol		$50
	smpsAlterVol		$FB
	dc.b	$91, $0C
	smpsAlterVol		$05
	smpsAlterVol		$B0
	dc.b	$90, $0C, $0C
	smpsAlterVol		$50
	smpsReturn

JustDay_Patches:

	
	dc.b	$3A
	dc.b	$01, $05, $32, $71,	$CF, $95, $1F, $1F
	dc.b	$0E, $0F, $05, $0C,	$17, $06, $06, $07
	dc.b	$8F, $4F, $4F, $4F,	$21, $13, $24, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$12, $11, $13, $01,	$1F, $1F, $1F, $1E
	dc.b	$02, $0C, $13, $07,	$12, $0A, $05, $07
	dc.b	$0F, $3F, $5F, $3F,	$16, $10, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$01, $06, $00, $00,	$5F, $5F, $15, $1F
	dc.b	$11, $0D, $12, $05,	$07, $14, $09, $02
	dc.b	$5D, $5D, $2A, $1F,	$0E, $80, $07, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1C
	dc.b	$32, $02, $04, $34,	$5A, $5F, $5F, $FF
	dc.b	$05, $05, $05, $07,	$15, $14, $21, $17
	dc.b	$9F, $8F, $5F, $AF,	$30, $80, $02, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3B
	dc.b	$08, $02, $02, $02,	$5F, $7F, $7F, $5F
	dc.b	$17, $07, $06, $0C,	$15, $10, $10, $15
	dc.b	$FF, $FF, $FF, $FF,	$23, $20, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $01, $01, $01,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$15, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$02, $09, $01, $02,	$8E, $8E, $8D, $55
	dc.b	$0E, $0E, $0E, $04,	$00, $00, $00, $09
	dc.b	$1F, $FF, $3F, $4F,	$16, $29, $1E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1F
	dc.b	$66, $30, $53, $22,	$1C, $9C, $1F, $1F
	dc.b	$12, $0F, $0F, $0F,	$00, $00, $00, $00
	dc.b	$FF, $0F, $0F, $0F,	$84, $80, $80, $87
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$06, $05, $04, $10,	$1F, $5F, $5F, $5F
	dc.b	$05, $07, $0C, $0C,	$17, $17, $12, $18
	dc.b	$9F, $9C, $9C, $9C,	$2D, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$06
	dc.b	$03, $02, $01, $03,	$1F, $0A, $0A, $0D
	dc.b	$08, $08, $08, $08,	$01, $01, $00, $00
	dc.b	$3F, $2F, $1F, $1F,	$20, $84, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$01
	dc.b	$76, $75, $72, $33,	$D5, $57, $9F, $FF
	dc.b	$02, $0B, $05, $0B,	$0A, $0A, $0F, $09
	dc.b	$FF, $2F, $3F, $FF,	$1E, $28, $16, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $0C, $08, $03,	$00, $11, $10, $0C
	dc.b	$0F, $4C, $4C, $1C,	$22, $83, $82, $82
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$43, $08, $73, $54,	$5E, $5E, $5E, $9E
	dc.b	$0C, $0C, $08, $08,	$0C, $0C, $15, $15
	dc.b	$8F, $9F, $8F, $CF,	$41, $80, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$01
	dc.b	$75, $75, $71, $31,	$D5, $55, $96, $94
	dc.b	$02, $0B, $05, $0D,	$0A, $0A, $0F, $06
	dc.b	$FF, $2F, $3F, $6F,	$25, $2B, $0F, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$76
	dc.b	$7A, $32, $51, $11,	$1F, $7F, $9F, $9D
	dc.b	$0A, $0E, $0B, $0A,	$01, $02, $05, $02
	dc.b	$AF, $8F, $9F, $8F,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$07
	dc.b	$38, $02, $01, $08,	$FF, $CF, $FF, $BF
	dc.b	$07, $0B, $0B, $00,	$05, $00, $00, $00
	dc.b	$6F, $1F, $2F, $0F,	$80, $80, $80, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$33
	dc.b	$11, $08, $11, $02,	$5F, $9F, $5F, $1F
	dc.b	$0B, $0F, $02, $09,	$10, $13, $13, $10
	dc.b	$05, $15, $25, $3A,	$0A, $1D, $09, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
