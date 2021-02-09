
Target	EQU	$400BE
	smpsHeaderVoice	Electoria_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $19
	smpsHeaderFM	Electoria_FM1, Target, $00, $0B
	smpsHeaderFM	Electoria_FM2, Target, $00, $14
	smpsHeaderFM	Electoria_FM3, Target, $00, $14
	smpsHeaderFM	Electoria_FM4, Target, $00, $14
	smpsHeaderFM	Electoria_FM5, Target, $00, $14
	smpsHeaderFM	Electoria_FM6, Target, $00, $14
	smpsHeaderPSG	Electoria_PSG1, Target, $00, $03, $00, $0C
	smpsHeaderPSG	Electoria_PSG2, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	Electoria_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	Electoria_PWM1, Target, $00, $AA
	smpsHeaderPWM	Electoria_PWM2, Target, $00, $BB
	smpsHeaderPWM	Electoria_PWM3, Target, $00, $99
	smpsHeaderPWM	Electoria_PWM4, Target, $00, $65

Electoria_FM1:
	smpsFMvoice		$00
	dc.b	nD1, $06, nD2, nD2, nE1, nE2, nE2, nE1
	dc.b	nE2, nE2, nG1, nG2, nG2, nA1, nA2, nD1
	dc.b	$0C

Electoria_Loop1:
	smpsCall		Electoria_Call1, Target
	smpsLoop		$00, $08, Electoria_Loop1, Target

Electoria_Loop2:
	smpsCall		Electoria_Call1, Target
	smpsLoop		$00, $08, Electoria_Loop2, Target
	smpsAlterPitch	$FC

Electoria_Loop3:
	smpsCall		Electoria_Call1, Target
	smpsLoop		$00, $07, Electoria_Loop3, Target
	smpsAlterPitch	$04
	dc.b	nEb1, $0C, nEb2, $06, nRst, nEb1, nRst, nEb2
	dc.b	nEb1, nRst, nRst, nEb2, nRst
	smpsModSet	$01, $08, $EC, $00
	dc.b	nEb1, $18
	smpsModSet	$00, $00, $00, $00

Electoria_Loop4:
	smpsCall		Electoria_Call1, Target
	smpsLoop		$00, $07, Electoria_Loop4, Target
	dc.b	nD1, $0C, nD2, nE1, nE2, nF1, $06, nF2
	dc.b	nF1, nRst, nD1, nD2, nD1, nRst

Electoria_Loop5:
	smpsCall		Electoria_Call1, Target
	smpsLoop		$00, $08, Electoria_Loop5, Target

Electoria_Loop6:
	smpsCall		Electoria_Call1, Target
	smpsLoop		$00, $08, Electoria_Loop6, Target
	smpsJump		Electoria_Loop2, Target

Electoria_Call1:
	dc.b	nG1, $0C, nG2, $06, nRst, nG1, $0C, nRst
	dc.b	$06, nG1, nRst, nG1, nG1, $0C, nF1, nFs1
	smpsReturn

Electoria_FM2:
	smpsFMvoice		$03
	dc.b	nRst, $60

Electoria_Loop7:
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $03, Electoria_Loop7, Target
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	dc.b	nRst, $0C, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsAlterPitch	$FF
	smpsAlterVol		$FA
	smpsFMvoice		$05
	smpsAlterVol		$FB
	dc.b	nBb4, $0C

Electoria_Jump1:
	dc.b	smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C
	dc.b	nC5, nD5, smpsNoAttack, $0C, nF5, $18, nC5, nCs5
	dc.b	$0C, nC5, nBb4, nF4, $12, nG4, $4E
	smpsPan		panLeft
	smpsFMvoice		$02
	smpsAlterVol		$0A
	smpsCall		Electoria_Call3, Target
	smpsPan		panCenter
	smpsFMvoice		$05
	smpsAlterVol		$F6
	dc.b	nBb4, $0C, smpsNoAttack, $0C, nF4, nRst, nG4, $18
	dc.b	nBb4, $0C, nC5, nF5, smpsNoAttack, $0C, nG5, nG5
	dc.b	nE5, $18, nEb5, $0C, nD5, nCs5, nBb4, $12
	dc.b	nG4, $4E
	smpsPan		panLeft
	smpsFMvoice		$02
	smpsAlterVol		$0A
	smpsCall		Electoria_Call4, Target
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsAlterVol		$F6
	dc.b	nRst, $18, nBb3, $30, nC4, $18, nD4, $18
	dc.b	nF4, $30, nG4, $18, nBb4, $24, nG4, nA4
	dc.b	$18, smpsNoAttack, $30, nG4, $18, nD4, nRst, $18
	dc.b	nBb3, $30, nG3, $18, nA3, nBb3, nC4, nD4
	dc.b	nF4, $60
	smpsFMvoice		$02
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nC5, $06, nBb4, nG4, nFs4, nF4, nEb4, nD4
	dc.b	nBb3, nRst, $30
	smpsPan		panCenter
	dc.b	nRst, $0C, nG4, nG5, $18, nF5, nD5, $12
	dc.b	nG4, $06, smpsNoAttack, $0C, nG5, $0C, nF5, nD5
	dc.b	nB4, $12, nC5, nD5, $0C, nRst, $0C, nG4
	dc.b	nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack
	dc.b	$0C, nC5, nB4, nC5, nF5, $06, nE5, $0C
	dc.b	nD5, $06, nRst, $0C, nD5, smpsNoAttack, $0C, nD5
	dc.b	nD5, nB4, nD5, $12, nE5, $06, nRst, $0C
	dc.b	nD5, $0C, smpsNoAttack, $0C, nB4, nD5, nB4, nD5
	dc.b	$12, nE5, $06, nRst, $0C, nF5, smpsNoAttack, $60
	smpsPan		panLeft
	smpsCall		Electoria_Call4, Target
	smpsPan		panCenter
	dc.b	nRst, $0C, nG4, nG5, $18, nF5, nD5, $12
	dc.b	nG4, $06, smpsNoAttack, $0C, nG5, $0C, nF5, nD5
	dc.b	nB4, $12, nC5, nD5, $0C, nRst, $0C, nG4
	dc.b	nG5, $18, nF5, nD5, $12, nB4, $06, smpsNoAttack
	dc.b	$0C, nC5, nB4, nC5, nF5, $06, nE5, $0C
	dc.b	nD5, $06, nRst, $0C, nD5, smpsNoAttack, $0C, nD5
	dc.b	nD5, nB4, nD5, $12, nE5, $06, nRst, $0C
	dc.b	nD5, $0C, smpsNoAttack, $0C, nB4, nD5, nB4, nD5
	dc.b	$12, nE5, $06, nRst, $0C, nF5, smpsNoAttack, $60
	smpsPan		panLeft
	smpsCall		Electoria_Call5, Target
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	dc.b	$0C
	smpsAlterVol		$F6
	dc.b	nRst, $48
	smpsPan		panCenter
	smpsAlterVol		$01
	smpsFMvoice		$03
	dc.b	nG2, $60, $60, $30, nRst

Electoria_Loo$8:
	dc.b	nG2, $60
	smpsLoop		$00, $03, Electoria_Loo$8, Target
	dc.b	nG2, $54
	smpsFMvoice		$05
	smpsAlterVol		$F5
	dc.b	nBb4, $0C
	smpsJump		Electoria_Jump1, Target

Electoria_Call2:
	dc.b	nRst, $0C, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsReturn

Electoria_Call3:
	dc.b	nC5, $12
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nB4, $12, nC5, $06, nA4, nG4
	smpsAlterVol		$0A
	dc.b	nG4
	smpsAlterVol		$F6
	dc.b	nG4, $12
	smpsReturn

Electoria_Call4:
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nFs4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nE4, $0C
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nF4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	dc.b	nFs4
	smpsAlterVol		$0A
	dc.b	$06
	smpsAlterVol		$F6
	smpsReturn

Electoria_Call5:
	dc.b	nG3, $0C, nG4, nFs4, nFs3, $06, nF3, $0C
	dc.b	$06, nF4, $0C, nE4, nF4
	smpsReturn
	dc.b	$F8, $0D, $91, $B3, $0C, $E7, $06, $E6	; Unused
	dc.b	$0A, $E0, $40, $B3, $E6, $F6, $E0, $C0	; Unused
	dc.b	$B3, $18, $B0, $06, $E6, $0A, $E0, $40	; Unused
	dc.b	$B0, $E6, $F6, $E0, $C0, $B3, $12, $B5	; Unused
	dc.b	$0C, $E6, $0A, $E0, $40, $06, $E6, $F6	; Unused
	dc.b	$E0, $C0, $B6, $0C, $E7, $06, $E6, $0A	; Unused
	dc.b	$E0, $40, $B6, $E6, $F6, $E0, $C0, $B5	; Unused
	dc.b	$E6, $0A, $E0, $40, $B5, $E6, $F6, $E0	; Unused
	dc.b	$C0, $B6, $B5, $E6, $0A, $E0, $40, $B5	; Unused
	dc.b	$E6, $F6, $E0, $C0, $B3, $0C, $E6, $0A	; Unused
	dc.b	$E0, $40, $06, $E6, $F6, $E0, $C0, $B1	; Unused
	dc.b	$E6, $0A, $E0, $40, $B1, $E6, $F6, $E0	; Unused
	dc.b	$C0, $B1, $0C, $B3, $06, $E6, $0A, $E0	; Unused
	dc.b	$40, $B3, $E6, $F6, $E0, $C0, $F9, $F8	; Unused
	dc.b	$0D, $91, $B6, $0C, $E7, $06, $E6, $0A	; Unused
	dc.b	$E0, $40, $B6, $E6, $F6, $E0, $C0, $B6	; Unused
	dc.b	$18, $B3, $06, $E6, $0A, $E0, $40, $B3	; Unused
	dc.b	$E6, $F6, $E0, $C0, $B6, $12, $B8, $0C	; Unused
	dc.b	$E6, $0A, $E0, $40, $06, $E6, $F6, $E0	; Unused
	dc.b	$C0, $BC, $0C, $E7, $06, $E6, $0A, $E0	; Unused
	dc.b	$40, $BC, $E6, $F6, $E0, $C0, $BD, $E6	; Unused
	dc.b	$0A, $E0, $40, $BD, $E6, $F6, $E0, $C0	; Unused
	dc.b	$BC, $BA, $E6, $0A, $E0, $40, $BA, $E6	; Unused
	dc.b	$F6, $E0, $C0, $BF, $0C, $E6, $0A, $E0	; Unused
	dc.b	$40, $06, $E6, $F6, $E0, $C0, $B6, $E6	; Unused
	dc.b	$0A, $E0, $40, $B6, $E6, $F6, $E0, $C0	; Unused
	dc.b	$B6, $0C, $B8, $06, $E6, $0A, $E0, $40	; Unused
	dc.b	$B8, $E6, $F6, $E0, $C0, $F9, $80, $0C	; Unused
	dc.b	$B6, $B8, $06, $80, $06, $E6, $0A, $E0	; Unused
	dc.b	$40, $B8, $80, $E6, $F6, $E0, $C0, $BC	; Unused
	dc.b	$12, $B8, $06, $E6, $0A, $E0, $40, $06	; Unused
	dc.b	$80, $E6, $F6, $E0, $C0, $BD, $0C, $E7	; Unused
	dc.b	$0C, $BC, $06, $E6, $0A, $E0, $40, $BC	; Unused
	dc.b	$E6, $F6, $E0, $C0, $BD, $BF, $E6, $0A	; Unused
	dc.b	$E0, $40, $BF, $E6, $F6, $E0, $C0, $BD	; Unused
	dc.b	$0C, $E6, $0A, $E0, $40, $06, $E6, $F6	; Unused
	dc.b	$E0, $C0, $BC, $0C, $E6, $0A, $E0, $40	; Unused
	dc.b	$06, $E6, $F6, $E0, $C0, $BA, $12, $E6	; Unused
	dc.b	$0A, $E0, $40, $0C, $E6, $F6, $E0, $C0	; Unused
	dc.b	$B6, $B8, $06, $80, $06, $E6, $0A, $E0	; Unused
	dc.b	$40, $B8, $80, $E6, $F6, $E0, $C0, $BC	; Unused
	dc.b	$12, $B8, $06, $E6, $0A, $E0, $40, $0C	; Unused
	dc.b	$E6, $F6, $E0, $C0, $B6, $E7, $06, $E6	; Unused
	dc.b	$0A, $E0, $40, $B6, $E6, $F6, $E0, $C0	; Unused
	dc.b	$B8, $E6, $0A, $E0, $40, $B8, $E6, $F6	; Unused
	dc.b	$E0, $C0, $B6, $B5, $E6, $0A, $E0, $40	; Unused
	dc.b	$B5, $E6, $F6, $E0, $C0, $B3, $1E, $E6	; Unused
	dc.b	$0A, $E0, $40, $0C, $E6, $F6, $E0, $C0	; Unused
	dc.b	$F9	; Unused

Electoria_FM3:
	smpsFMvoice		$03
	dc.b	nRst, $60
	smpsAlterPitch	$FA

Electoria_Loo$9:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $07, Electoria_Loo$9, Target
	dc.b	nRst, $0C, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsAlterPitch	$06
	smpsAlterVol		$FC
	smpsFMvoice		$05
	smpsPan		panLeft
	smpsModSet	$01, $01, $02, $03
	dc.b	nRst, $06, nBb4, $0C

Electoria_Jump2:
	dc.b	smpsNoAttack, $0C, nF4, nRst, nG4, $18, nBb4, $0C
	dc.b	nC5, nD5, smpsNoAttack, $0C, nF5, $18, nC5, nCs5
	dc.b	$0C, nC5, nBb4, nF4, $12, nG4, $48
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsModSet	$00, $00, $00, $00
	smpsPan		panRight
	smpsAlterPitch	$F4
	smpsCall		Electoria_Call3, Target
	smpsModSet	$01, $01, $01, $05
	smpsPan		panLeft
	smpsAlterPitch	$0C
	smpsFMvoice		$05
	smpsAlterVol		$FD
	dc.b	nRst, $06, nBb4, $0C, smpsNoAttack, $0C, nF4, nRst
	dc.b	nG4, $18, nBb4, $0C, nC5, nF5, smpsNoAttack, $0C
	dc.b	nG5, nG5, nE5, $18, nEb5, $0C, nD5, nCs5
	dc.b	nBb4, $12, nG4, $48
	smpsModSet	$00, $00, $00, $00
	smpsPan		panRight
	smpsAlterPitch	$F4
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsCall		Electoria_Call4, Target
	smpsPan		panLeft
	smpsFMvoice		$01
	smpsAlterVol		$FD
	smpsModSet	$01, $01, $02, $03
	smpsAlterPitch	$0C
	dc.b	nRst, $06, nRst, $18, nBb3, $30, nC4, $18
	dc.b	nD4, $18, nF4, $30, nG4, $18, nBb4, $24
	dc.b	nG4, nA4, $18, smpsNoAttack, $30, nG4, $18, nD4
	dc.b	nRst, $18, nBb3, $30, nG3, $18, nA3, nBb3
	dc.b	nC4, nD4, nF4, $5A
	smpsModSet	$00, $00, $00, $00
	smpsAlterPitch	$F4
	smpsFMvoice		$02
	smpsAlterVol		$03
	smpsPan		panRight
	dc.b	nC5, $06, nBb4, nG4, nFs4, nF4, nEb4, nD4
	dc.b	nBb3, nRst, $30
	smpsAlterPitch	$0C
	smpsFMvoice		$02
	smpsAlterVol		$07
	smpsPan		panCenter
	smpsModSet	$01, $01, $04, $05
	smpsPan		panLeft
	dc.b	nRst, $06, nRst, $0C, nG4, nG5, $18, nF5
	dc.b	nD5, $12, nG4, $06, smpsNoAttack, $0C, nG5, $0C
	dc.b	nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst
	dc.b	$0C, nG4, nG5, $18, nF5, nD5, $12, nB4
	dc.b	$06, smpsNoAttack, $0C, nC5, nB4, nC5, nF5, $06
	dc.b	nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack
	dc.b	$0C, nD5, nD5, nB4, nD5, $12, nE5, $06
	dc.b	nRst, $0C, nD5, $0C, smpsNoAttack, $0C, nB4, nD5
	dc.b	nB4, nD5, $12, nE5, $06, nRst, $0C, nF5
	dc.b	smpsNoAttack, $5A
	smpsPan		panRight
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$F9
	smpsCall		Electoria_Call4, Target
	smpsPan		panCenter
	smpsAlterPitch	$0C
	smpsAlterVol		$07
	smpsModSet	$01, $01, $04, $05
	smpsPan		panLeft
	dc.b	nRst, $06, nRst, $0C, nG4, nG5, $18, nF5
	dc.b	nD5, $12, nG4, $06, smpsNoAttack, $0C, nG5, $0C
	dc.b	nF5, nD5, nB4, $12, nC5, nD5, $0C, nRst
	dc.b	$0C, nG4, nG5, $18, nF5, nD5, $12, nB4
	dc.b	$06, smpsNoAttack, $0C, nC5, nB4, nC5, nF5, $06
	dc.b	nE5, $0C, nD5, $06, nRst, $0C, nD5, smpsNoAttack
	dc.b	$0C, nD5, nD5, nB4, nD5, $12, nE5, $06
	dc.b	nRst, $0C, nD5, $0C, smpsNoAttack, $0C, nB4, nD5
	dc.b	nB4, nD5, $12, nE5, $06, nRst, $0C, nF5
	dc.b	smpsNoAttack, $5A
	smpsPan		panRight
	smpsAlterPitch	$F4
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$F9
	smpsCall		Electoria_Call5, Target
	dc.b	nG4, $0C
	smpsAlterVol		$0A
	dc.b	$0C
	smpsAlterVol		$F6
	dc.b	nRst, $48
	smpsPan		panCenter
	smpsAlterVol		$01
	smpsFMvoice		$03
	smpsAlterPitch	$03

Electoria_Loop10:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $02, Electoria_Loop10, Target
	smpsAlterPitch	$FF
	smpsCall		Electoria_Call6, Target
	smpsAlterPitch	$01

Electoria_Loop11:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $03, Electoria_Loop11, Target
	smpsAlterVol		$FF
	dc.b	nRst, $0C, nB3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	smpsAlterPitch	$09
	smpsAlterVol		$FD
	smpsFMvoice		$05
	smpsPan		panLeft
	smpsModSet	$01, $01, $02, $03
	dc.b	nRst, $06, nBb4, $0C
	smpsJump		Electoria_Jump2, Target

Electoria_FM4:
	smpsFMvoice		$03
	dc.b	nRst, $60
	smpsAlterPitch	$F7

Electoria_Loop12:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $08, Electoria_Loop12, Target
	smpsAlterPitch	$09

Electoria_Loop13:
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $04, Electoria_Loop13, Target

Electoria_Loop14:
	smpsAlterPitch	$FF
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$02
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $03, Electoria_Loop14, Target
	smpsAlterPitch	$FF
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call6, Target

Electoria_Loop15:
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $03, Electoria_Loop15, Target
	smpsCall		Electoria_Call2, Target
	dc.b	nRst, $60

Electoria_Loop16:
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $05, Electoria_Loop16, Target
	smpsCall		Electoria_Call2, Target
	smpsCall		Electoria_Call6, Target

Electoria_Loop17:
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$FF
	smpsLoop		$00, $02, Electoria_Loop17, Target
	smpsJump		Electoria_Loop13, Target

Electoria_Call6:
	dc.b	nRst, $0C, nC4, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C, $06, nRst, $30
	smpsReturn

Electoria_FM5:
	smpsFMvoice		$03
	dc.b	nRst, $60

Electoria_Loop18:
	dc.b	nG2, $60
	smpsLoop		$00, $08, Electoria_Loop18, Target
	smpsAlterPitch	$FA

Electoria_Loop19:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $08, Electoria_Loop19, Target
	smpsAlterPitch	$06

Electoria_Loop20:
	smpsAlterPitch	$FC
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$02
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$02
	smpsLoop		$00, $03, Electoria_Loop20, Target
	smpsAlterPitch	$FC
	smpsCall		Electoria_Call2, Target
	smpsAlterPitch	$01
	smpsCall		Electoria_Call6, Target
	smpsAlterPitch	$03
	smpsAlterPitch	$FA

Electoria_Loop21:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $07, Electoria_Loop21, Target
	dc.b	nRst, $60

Electoria_Loop22:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $0B, Electoria_Loop22, Target
	smpsAlterPitch	$FF
	smpsCall		Electoria_Call6, Target
	smpsAlterPitch	$01

Electoria_Loop23:
	smpsCall		Electoria_Call2, Target
	smpsLoop		$00, $04, Electoria_Loop23, Target
	smpsJump		Electoria_Loop19, Target

Electoria_FM6:
	smpsFMvoice		$03

Electoria_Loop24:
	dc.b	nRst, $60
	smpsLoop		$00, $09, Electoria_Loop24, Target

Electoria_Loop25:
	smpsCall		Electoria_Call7, Target
	smpsLoop		$00, $08, Electoria_Loop25, Target
	smpsAlterPitch	$03

Electoria_Loop26:
	smpsCall		Electoria_Call7, Target
	smpsLoop		$00, $07, Electoria_Loop26, Target
	smpsAlterPitch	$FD
	smpsCall		Electoria_Call8, Target

Electoria_Loop27:
	smpsCall		Electoria_Call7, Target
	smpsLoop		$00, $07, Electoria_Loop27, Target
	dc.b	nRst, $60

Electoria_Loop28:
	smpsCall		Electoria_Call7, Target
	smpsLoop		$00, $08, Electoria_Loop28, Target

Electoria_Loop29:
	smpsCall		Electoria_Call7, Target
	smpsLoop		$00, $03, Electoria_Loop29, Target
	smpsAlterPitch	$FD
	smpsCall		Electoria_Call8, Target
	smpsAlterPitch	$03

Electoria_Loop30:
	smpsCall		Electoria_Call7, Target
	smpsLoop		$00, $04, Electoria_Loop30, Target
	smpsJump		Electoria_Loop25, Target

Electoria_Call7:
	dc.b	nRst, $0C, nD3, $0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C
	smpsReturn

Electoria_Call8:
	dc.b	nRst, $0C, nF3, $0C
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	$06
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$0C, $06, nRst, $30
	smpsReturn

Electoria_PSG1:
	smpsPSGvoice	$0C
	dc.b	nRst, $60

Electoria_Loop31:
	smpsCall		Electoria_Call9, Target
	smpsLoop		$00, $08, Electoria_Loop31, Target

Electoria_Loop32:
	smpsCall		Electoria_Call9, Target
	smpsLoop		$00, $08, Electoria_Loop32, Target

Electoria_Loop33:
	smpsAlterPitch	$FC
	smpsCall		Electoria_Call9, Target
	smpsAlterPitch	$04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2
	dc.b	nEb2, nEb3, nA2, nEb2, nEb3, nA2, nEb2, nEb3
	dc.b	nA2
	smpsLoop		$00, $03, Electoria_Loop33, Target
	smpsAlterPitch	$FC
	smpsCall		Electoria_Call9, Target
	smpsAlterPitch	$04
	dc.b	nEb2, $06, nEb2, nEb3, nA2, nEb2, nEb3, nA2
	dc.b	nEb2, nRst, $30

Electoria_Loop34:
	smpsCall		Electoria_Call9, Target
	smpsLoop		$00, $07, Electoria_Loop34, Target
	dc.b	nRst, $60

Electoria_Loop35:
	smpsCall		Electoria_Call9, Target
	smpsLoop		$00, $08, Electoria_Loop35, Target

Electoria_Loop36:
	smpsCall		Electoria_Call9, Target
	smpsLoop		$00, $03, Electoria_Loop36, Target
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3
	dc.b	nG2, nRst, $30

Electoria_Loop37:
	smpsCall		Electoria_Call9, Target
	smpsLoop		$00, $04, Electoria_Loop37, Target
	smpsJump		Electoria_Loop32, Target

Electoria_Call9:
	dc.b	nG2, $06, nG2, nG3, nD3, nG2, nG3, nD3
	dc.b	nG2, nG3, nD3, nG2, nG3, nD3, nG2, nG3
	dc.b	nD3
	smpsReturn

Electoria_PSG2:
	smpsPSGvoice	$0C
	dc.b	nRst, $60
	smpsAlterPitch	$0C

Electoria_Loop38:
	smpsCall		Electoria_Call10, Target
	smpsCall		Electoria_Call11, Target
	smpsLoop		$00, $04, Electoria_Loop38, Target

Electoria_Loop39:
	smpsCall		Electoria_Call10, Target
	smpsCall		Electoria_Call11, Target
	smpsLoop		$00, $04, Electoria_Loop39, Target

Electoria_Loop40:
	smpsCall		Electoria_Call12, Target
	smpsCall		Electoria_Call11, Target
	smpsLoop		$00, $03, Electoria_Loop40, Target
	smpsCall		Electoria_Call12, Target
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, $30

Electoria_Loop41:
	smpsCall		Electoria_Call10, Target
	smpsCall		Electoria_Call11, Target
	smpsLoop		$00, $03, Electoria_Loop41, Target
	smpsCall		Electoria_Call10, Target
	dc.b	nRst, $60

Electoria_Loop42:
	smpsCall		Electoria_Call10, Target
	smpsCall		Electoria_Call11, Target
	smpsLoop		$00, $04, Electoria_Loop42, Target
	smpsCall		Electoria_Call10, Target
	smpsCall		Electoria_Call11, Target
	smpsCall		Electoria_Call10, Target
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, $30

Electoria_Loop43:
	smpsCall		Electoria_Call10, Target
	smpsCall		Electoria_Call11, Target
	smpsLoop		$00, $02, Electoria_Loop43, Target
	smpsJump		Electoria_Loop39, Target

Electoria_Call10:
	dc.b	nF3, $06, nG3, nRst, nB3, nRst, nRst, nF3
	dc.b	nG3, nRst, nB3, nRst, nF3, nG3, nRst, nB3
	dc.b	nRst
	smpsReturn

Electoria_Call11:
	dc.b	nF3, $06, nG3, nRst, nC4, nRst, nRst, nF3
	dc.b	nG3, nRst, nC4, nRst, nF3, nG3, nRst, nC4
	dc.b	nRst
	smpsReturn

Electoria_Call12:
	dc.b	nF3, $06, nG3, nRst, nBb3, nRst, nRst, nF3
	dc.b	nG3, nRst, nBb3, nRst, nF3, nG3, nRst, nBb3
	dc.b	nRst
	smpsReturn

Electoria_PSG3:
	smpsPSGform	$E7

Electoria_Loop44:
	smpsCall		Electoria_Call13, Target
	smpsLoop		$01, $09, Electoria_Loop44, Target

Electoria_Loop45:
	smpsCall		Electoria_Call13, Target
	smpsLoop		$01, $0F, Electoria_Loop45, Target
	smpsCall		Electoria_Call14, Target

Electoria_Loop46:
	smpsCall		Electoria_Call13, Target
	smpsLoop		$01, $13, Electoria_Loop46, Target
	smpsCall		Electoria_Call14, Target

Electoria_Loop47:
	smpsCall		Electoria_Call13, Target
	smpsLoop		$01, $04, Electoria_Loop47, Target
	smpsJump		Electoria_Loop45, Target

Electoria_Call13:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsPSGvoice	$05
	dc.b	nC4
	smpsLoop		$00, $04, Electoria_Call13, Target
	smpsReturn

Electoria_Call14:
	smpsPSGvoice	$02
	dc.b	nC4, $0C
	smpsPSGvoice	$05
	dc.b	$0C
	smpsPSGvoice	$02
	dc.b	$0C
	smpsPSGvoice	$05
	dc.b	$06
	smpsPSGvoice	$02
	dc.b	$06, nRst, $30
	smpsReturn

Electoria_PWM1:
	smpsCall		Electoria_Call15, Target
	smpsLoop		$00, $08, Electoria_PWM1, Target
	smpsCall		Electoria_Call16, Target

Electoria_Loop48:
	smpsCall		Electoria_Call15, Target
	smpsLoop		$00, $07, Electoria_Loop48, Target
	dc.b	nRst, $60

Electoria_Loop49:
	smpsCall		Electoria_Call15, Target
	smpsLoop		$00, $07, Electoria_Loop49, Target
	dc.b	$8B, $2A, $06, $96, $30

Electoria_Loop50:
	smpsCall		Electoria_Call15, Target
	smpsLoop		$00, $07, Electoria_Loop50, Target
	smpsCall		Electoria_Call16, Target

Electoria_Loop51:
	smpsCall		Electoria_Call15, Target
	smpsLoop		$00, $07, Electoria_Loop51, Target
	dc.b	nRst, $60

Electoria_Loop52:
	smpsCall		Electoria_Call15, Target
	smpsLoop		$00, $03, Electoria_Loop52, Target
	dc.b	$8B, $2A, $06, $96, $30
	smpsCall		Electoria_Call15, Target
	smpsCall		Electoria_Call15, Target
	smpsCall		Electoria_Call15, Target
	smpsCall		Electoria_Call16, Target
	smpsJump		Electoria_Loop48, Target

Electoria_Call15:
	dc.b	$8B, $0C, $8B, nRst, $12, $8B, $06, nRst
	dc.b	$0C, $8B, nRst, $18
	smpsReturn

Electoria_Call16:
	smpsAlterVol		$8D
	dc.b	$87, $0C, $0C, $0C, $06, $06, nRst, $87
	dc.b	$87, $0C, $0C, $0C
	smpsAlterVol		$73
	smpsReturn

Electoria_PWM2:
	dc.b	$82, $06, nRst, $82, $82, nRst, $82, $82
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82
	smpsAlterVol		$F9
	dc.b	$85
	smpsAlterVol		$07
	dc.b	$86, $82, $82, $86
	smpsAlterVol		$90
	dc.b	$87
	smpsAlterVol		$70
	dc.b	$82

Electoria_Loop53:
	smpsCall		Electoria_Call17, Target
	smpsLoop		$00, $04, Electoria_Loop53, Target

Electoria_Loop54:
	smpsCall		Electoria_Call17, Target
	smpsLoop		$00, $04, Electoria_Loop54, Target

Electoria_Loop55:
	smpsCall		Electoria_Call17, Target
	smpsLoop		$00, $03, Electoria_Loop55, Target
	dc.b	nRst, $18, $82, $12, $06, nRst, $06, $82
	dc.b	$12, $18, $82, $04, $04, $04, $06, $06
	dc.b	$06, $06, $06, $06, nRst, $30

Electoria_Loop56:
	smpsCall		Electoria_Call17, Target
	smpsLoop		$00, $08, Electoria_Loop56, Target
	smpsCall		Electoria_Call17, Target
	dc.b	nRst, $18, $82, $12, $06, nRst, $06, $82
	dc.b	$12, $18, nRst, $06, $82, $12, $18, nRst
	dc.b	$30
	smpsCall		Electoria_Call17, Target
	smpsCall		Electoria_Call17, Target
	smpsJump		Electoria_Loop54, Target

Electoria_Call17:
	dc.b	nRst, $18, $82, $12, $06, nRst, $06, $82
	dc.b	$12, $18, nRst, $06, $82, $12, $18, nRst
	dc.b	$06, $82, $12, $18
	smpsReturn

Electoria_PWM3:
	smpsAlterVol		$C0
	dc.b	$89, $2A
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $36
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst, nRst
	smpsCall		Electoria_Call18, Target

Electoria_Jump3:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	dc.b	nRst
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $60
	smpsAlterVol		$04
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst
	smpsCall		Electoria_Call18, Target
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst

Electoria_Loop57:
	smpsAlterVol		$C0
	dc.b	$89, $60
	smpsAlterVol		$40
	dc.b	nRst, nRst, nRst
	smpsLoop		$00, $02, Electoria_Loop57, Target
	smpsJump		Electoria_Jump3, Target

Electoria_Call18:
	smpsAlterVol		$DB
	dc.b	$86, $0C, $0C, $0C, $06, $06, nRst, $86
	dc.b	$86, $0C, $0C, $0C
	smpsAlterVol		$25
	smpsReturn

Electoria_PWM4:
	smpsCall		Electoria_Call19, Target
	smpsLoop		$00, $24, Electoria_PWM4, Target

Electoria_Loop58:
	smpsCall		Electoria_Call19, Target
	smpsLoop		$00, $3E, Electoria_Loop58, Target
	dc.b	$96, $30

Electoria_Loop59:
	smpsCall		Electoria_Call19, Target
	smpsLoop		$00, $4E, Electoria_Loop59, Target
	dc.b	$96, $30

Electoria_Loop60:
	smpsCall		Electoria_Call19, Target
	smpsLoop		$00, $10, Electoria_Loop60, Target
	smpsJump		Electoria_Loop58, Target

Electoria_Call19:
	dc.b	$88, $06
	smpsAlterVol		$AB
	dc.b	$06
	smpsAlterVol		$44
	dc.b	$06
	smpsAlterVol		$BC
	dc.b	$06
	smpsAlterVol		$55
	smpsReturn

Electoria_Patches:

	
	dc.b	$3B
	dc.b	$12, $11, $13, $01,	$1F, $1F, $1F, $1E
	dc.b	$02, $0C, $13, $07,	$12, $0A, $05, $07
	dc.b	$0F, $3F, $5F, $3F,	$16, $10, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$01, $02, $0F, $04,	$8D, $52, $9F, $1F
	dc.b	$09, $00, $00, $0D,	$00, $00, $00, $00
	dc.b	$2F, $0F, $0F, $FF,	$17, $86, $1F, $86
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$22, $04, $02, $14,	$51, $52, $50, $52
	dc.b	$0D, $00, $06, $04,	$03, $05, $02, $00
	dc.b	$16, $18, $26, $18,	$0F, $80, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$41
	dc.b	$18, $12, $02, $12,	$5F, $5F, $5F, $5F
	dc.b	$0C, $0B, $0B, $0B,	$09, $08, $10, $0A
	dc.b	$AF, $FF, $FF, $FF,	$1D, $23, $1B, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$07, $01, $08, $04,	$5F, $9F, $9F, $5F
	dc.b	$16, $1F, $16, $1F,	$09, $0F, $16, $11
	dc.b	$6F, $0F, $AF, $0F,	$16, $80, $11, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$12, $12, $21, $61,	$3F, $1F, $1F, $1E
	dc.b	$0B, $0A, $0A, $02,	$09, $01, $01, $01
	dc.b	$2F, $3F, $5F, $3F,	$12, $82, $13, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
