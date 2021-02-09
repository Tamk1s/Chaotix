
Target	EQU	$45C41
	smpsHeaderVoice	EveningStar_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $46
	smpsHeaderFM	EveningStar_FM1, Target, $00, $0A
	smpsHeaderFM	EveningStar_FM2, Target, $00, $10
	smpsHeaderFM	EveningStar_FM3, Target, $00, $10
	smpsHeaderFM	EveningStar_FM4, Target, $00, $10
	smpsHeaderFM	EveningStar_FM5, Target, $00, $13
	smpsHeaderFM	EveningStar_FM6, Target, $00, $10
	smpsHeaderPSG	EveningStar_PSG1, Target, $F4, $01, $00, $0C
	smpsHeaderPSG	EveningStar_PSG2, Target, $F4, $02, $00, $0C
	smpsHeaderPSG	EveningStar_PSG3, Target, $23, $02, $00, $02
	smpsHeaderPWM	EveningStar_PWM1, Target, $00, $AA
	smpsHeaderPWM	EveningStar_PWM2, Target, $00, $99
	smpsHeaderPWM	EveningStar_PWM3, Target, $00, $AA
	smpsHeaderPWM	EveningStar_PWM4, Target, $00, $75

EveningStar_FM1:
	smpsFMvoice		$00
	dc.b	nEb2, $60, nD2, $60, nG1, $60, smpsNoAttack, $30
	dc.b	nG1, $08, nG2, $0C, nG1, $04, nBb1, $08
	dc.b	nA1, $04, nG1, $08, nF1, $04

EveningStar_Loop1:
	smpsCall		EveningStar_Call1, Target
	dc.b	nRst, $0C, nG2, nRst, $08, nC2, $04, nD2
	dc.b	$08, nF2, $04, nG1, $04, nF1, nG1, nG2
	dc.b	$08, nG1, $04, nRst, $08, nG2, $04, nRst
	dc.b	$0C, nRst, $18, nRst, $08, nG1, $04, nG2
	dc.b	$08, nF2, $04
	smpsCall		EveningStar_Call1, Target
	dc.b	nRst, $0C, nG2, $08, nRst, $04, nRst, $08
	dc.b	nG2, $0C, $04, nG1, $08, nG2, $0C, $04
	dc.b	nA1, $08, nA2, $0C, $04, nBb1, $08, nBb2
	dc.b	$0C, $04, nC2, $08, nC3, $0C, $04
	smpsLoop		$00, $02, EveningStar_Loop1, Target
	smpsJump		EveningStar_Loop1, Target

EveningStar_Call1:
	dc.b	nEb2, $04, nD2, nEb2, nEb3, $08, nEb2, $04
	dc.b	nRst, $08, nEb2, $04, nRst, $0C, nRst, $0C
	dc.b	nEb2, nRst, $08, nD2, $04, nEb2, $08, nF2
	dc.b	$04, nD2, $04, nC2, nD2, nD3, $08, nD2
	dc.b	$04, nRst, $18, nRst, $0C, nD2, nRst, $08
	dc.b	nC2, $04, nD2, $08, nF2, $04, nG1, $04
	dc.b	nF1, nG1, nG2, $08, nG1, $04, nRst, $08
	dc.b	nG2, $04, nRst, $0C
	smpsReturn

EveningStar_FM2:
	smpsFMvoice		$01
	smpsAlterPitch	$F9
	smpsCall		EveningStar_Call2, Target
	smpsAlterPitch	$04
	smpsCall		EveningStar_Call3, Target
	smpsAlterPitch	$FF
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call4, Target
	smpsAlterPitch	$04
	smpsFMvoice		$02

EveningStar_Loop2:
	smpsCall		EveningStar_Call5, Target
	dc.b	nRst, $60
	smpsLoop		$00, $02, EveningStar_Loop2, Target
	smpsJump		EveningStar_Loop2, Target

EveningStar_Call5:
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

EveningStar_FM3:
	smpsFMvoice		$01
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call3, Target
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call4, Target
	smpsAlterVol		$FB

EveningStar_Loop3:
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call3, Target
	smpsCall		EveningStar_Call2, Target
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
	smpsCall		EveningStar_Call6, Target
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call3, Target
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call4, Target
	smpsLoop		$01, $02, EveningStar_Loop3, Target
	smpsJump		EveningStar_Loop3, Target

EveningStar_Call2:
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

EveningStar_Call3:
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

EveningStar_Call6:
	smpsAlterVol		$FE
	dc.b	nRst, $08, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $04
	smpsAlterVol		$02
	smpsReturn

EveningStar_Call4:
	smpsAlterVol		$0A
	smpsPan		panLeft
	dc.b	nD4, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsLoop		$00, $08, EveningStar_Call4, Target
	smpsReturn

EveningStar_FM4:
	smpsFMvoice		$01
	smpsAlterPitch	$FC
	smpsCall		EveningStar_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		EveningStar_Call8, Target
	smpsAlterPitch	$FD
	smpsCall		EveningStar_Call7, Target
	smpsCall		EveningStar_Call9, Target
	smpsAlterPitch	$09
	smpsAlterVol		$FB

EveningStar_Loop4:
	smpsAlterPitch	$FC
	smpsCall		EveningStar_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		EveningStar_Call8, Target
	smpsAlterPitch	$FD
	smpsCall		EveningStar_Call7, Target
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
	smpsCall		EveningStar_Call10, Target
	smpsAlterPitch	$FC
	smpsCall		EveningStar_Call7, Target
	smpsAlterPitch	$FE
	smpsCall		EveningStar_Call8, Target
	smpsAlterPitch	$FD
	smpsCall		EveningStar_Call7, Target
	smpsCall		EveningStar_Call9, Target
	smpsAlterPitch	$09
	smpsLoop		$01, $02, EveningStar_Loop4, Target
	smpsJump		EveningStar_Loop4, Target

EveningStar_Call10:
	smpsPan		panRight
	smpsAlterVol		$08
	dc.b	nRst, $0B, nF3, $04, nG3, $08, nBb3, $0C
	dc.b	nG3, $04, nBb3, $08, nC4, $01
	smpsPan		panCenter
	smpsAlterVol		$F8
	smpsReturn

EveningStar_Call7:
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

EveningStar_Call8:
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

EveningStar_Call9:
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	nD4, $08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsLoop		$00, $08, EveningStar_Call9, Target
	smpsReturn

EveningStar_FM5:
	smpsFMvoice		$02
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsPan		panRight
	smpsModSet	$05, $01, $03, $02

EveningStar_Jump1:
	dc.b	nRst, $04
	smpsCall		EveningStar_Call5, Target
	dc.b	nRst, $60
	smpsCall		EveningStar_Call5, Target
	dc.b	nRst, $5C
	smpsJump		EveningStar_Jump1, Target

EveningStar_FM6:
	smpsFMvoice		$01
	smpsAlterVol		$05
	smpsAlterNote	$03
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call3, Target
	smpsCall		EveningStar_Call2, Target
	smpsCall		EveningStar_Call4, Target
	smpsAlterVol		$FB
	smpsAlterNote	$FD
	smpsAlterVol		$FB

EveningStar_Loop6:
	smpsCall		EveningStar_Call11, Target
	smpsCall		EveningStar_Call12, Target
	smpsAlterPitch	$03
	smpsCall		EveningStar_Call11, Target
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
	smpsCall		EveningStar_Call11, Target
	smpsCall		EveningStar_Call12, Target
	smpsAlterPitch	$03
	smpsCall		EveningStar_Call11, Target
	smpsAlterPitch	$FD
	smpsCall		EveningStar_Call13, Target
	smpsLoop		$01, $02, EveningStar_Loop6, Target
	smpsJump		EveningStar_Loop6, Target

EveningStar_Call11:
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

EveningStar_Call12:
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

EveningStar_Call13:
	dc.b	nRst, $08, nBb3, $04

EveningStar_Loop5:
	smpsAlterVol		$0A
	smpsPan		panRight
	dc.b	$08
	smpsAlterVol		$F6
	smpsPan		panCenter
	dc.b	$04
	smpsLoop		$00, $07, EveningStar_Loop5, Target
	smpsReturn

EveningStar_PSG1:
	smpsPSGvoice	$04
	dc.b	nRst, $60, nRst, nRst, nRst, $30, nG3, $0C
	dc.b	nA3, nBb3, $08, nC4, $04, nD4, $08, nEb4
	dc.b	$04

EveningStar_Jump2:
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4
	dc.b	$60, smpsNoAttack, $18, nC4, nBb3, nC4, nG3, $60
	dc.b	nFs3, $30, nD3, nG3, $60, nG3, $18, nA3
	dc.b	nBb3, nC4, nF4, $60, smpsNoAttack, $18, nEb4, nD4
	dc.b	nEb4, nD4, $60, smpsNoAttack, $30, nRst, $20, nBb3
	dc.b	$04, nC4, $08, nD4, $04, nG3, $60, nFs3
	dc.b	$30, nD3, nG3, $60, nG3, $18, nA3, nBb3
	dc.b	$0C, nC4, nD4, nEb4
	smpsJump		EveningStar_Jump2, Target

EveningStar_PSG2:
	smpsPSGvoice	$04
	smpsModSet	$04, $01, $01, $03
	dc.b	nRst, $04, nRst, $60, nRst, nRst, nRst, $30
	dc.b	nG3, $0C, nA3, nBb3, $08, nC4, $04, nD4
	dc.b	$08, nEb4, $04

EveningStar_Jump3:
	dc.b	nF4, $60, smpsNoAttack, $18, nEb4, nD4, nEb4, nD4
	dc.b	$60, smpsNoAttack, $18, nC4, nBb3, nC4, nG3, $60
	dc.b	nFs3, $30, nD3, nG3, $60, nG3, $18, nA3
	dc.b	nBb3, nC4, nF4, $60, smpsNoAttack, $18, nEb4, nD4
	dc.b	nEb4, nD4, $60, smpsNoAttack, $30, nRst, $20, nBb3
	dc.b	$04, nC4, $08, nD4, $04, nG3, $60, nFs3
	dc.b	$30, nD3, nG3, $60, nG3, $18, nA3, nBb3
	dc.b	$0C, nC4, nD4, nEb4
	smpsJump		EveningStar_Jump3, Target
	dc.b	$A0, $08, $04, $A7, $08, $A0, $04, $F7	; Unused
	dc.b	$00, $04, $C4, $ED, $F9, $9F, $08, $04	; Unused
	dc.b	$A5, $08, $9F, $04, $F7, $00, $04, $D1	; Unused
	dc.b	$ED, $F9	; Unused

EveningStar_PSG3:
	smpsPSGform	$E7

EveningStar_Loop7:
	smpsCall		EveningStar_Call14, Target
	smpsCall		EveningStar_Call15, Target
	smpsLoop		$01, $02, EveningStar_Loop7, Target

EveningStar_Loo$8:
	smpsCall		EveningStar_Call14, Target
	smpsCall		EveningStar_Call15, Target
	smpsLoop		$01, $04, EveningStar_Loo$8, Target
	smpsCall		EveningStar_Call14, Target
	smpsCall		EveningStar_Call15, Target
	smpsCall		EveningStar_Call14, Target
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $08, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04, nRst, $18, nRst, $08, nC4, $04
	smpsPSGvoice	$05
	dc.b	$08
	smpsPSGvoice	$02
	dc.b	$04
	smpsCall		EveningStar_Call14, Target
	smpsCall		EveningStar_Call15, Target
	smpsCall		EveningStar_Call14, Target
	smpsCall		EveningStar_Call15, Target
	smpsJump		EveningStar_Loo$8, Target

EveningStar_Call14:
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04
	smpsLoop		$00, $02, EveningStar_Call14, Target
	smpsReturn

EveningStar_Call15:
	smpsPSGvoice	$02
	dc.b	nC4, $08, $04, $08, $04, $04, $04, $04
	dc.b	$08, $04, $08, $04, $08, $04, $04, $04
	dc.b	$04
	smpsPSGvoice	$05
	dc.b	$0C
	smpsReturn

EveningStar_PWM1:
	dc.b	$96, $18, $8B, nRst, $8B, nRst, $8B, nRst
	dc.b	$8B, nRst, $8B, nRst, $8B, nRst, $8B, $8B
	dc.b	$0C, $0C, nRst, $08, $8B, $04, nRst, $08
	dc.b	$8B, $04

EveningStar_Loo$9:
	dc.b	$8B, $0C, $0C, nRst, $24, $8B, $0C, nRst
	dc.b	$08, $8B, $04, nRst, $08, $8B, $04
	smpsLoop		$00, $0B, EveningStar_Loo$9, Target
	dc.b	$8B, $0C, $8B, nRst, $38, $8B, $04, nRst
	dc.b	$08, $8B, $04

EveningStar_Loop10:
	dc.b	$8B, $0C, $0C, nRst, $24, $8B, $0C, nRst
	dc.b	$08, $8B, $04, nRst, $08, $8B, $04
	smpsLoop		$00, $04, EveningStar_Loop10, Target
	smpsJump		EveningStar_Loo$9, Target

EveningStar_PWM2:
	smpsAlterVol		$03
	dc.b	$96, $18, $8A, nRst, $8A, nRst, $8A, nRst
	dc.b	$8A, nRst, $8A, nRst, $8A, nRst, $8A, nRst
	dc.b	$0C
	smpsAlterVol		$FD
	dc.b	$82, $08, $04
	smpsAlterVol		$90
	dc.b	$87, $08, $04, $08, $04
	smpsAlterVol		$70

EveningStar_Loop11:
	smpsCall		EveningStar_Call16, Target
	smpsLoop		$00, $0B, EveningStar_Loop11, Target
	dc.b	nRst, $18, $82, nRst, $20
	smpsAlterVol		$F9
	dc.b	$85, $04
	smpsAlterVol		$07
	dc.b	$86, $08
	smpsAlterVol		$90
	dc.b	$87, $04
	smpsAlterVol		$70

EveningStar_Loop12:
	smpsCall		EveningStar_Call16, Target
	smpsLoop		$00, $04, EveningStar_Loop12, Target
	smpsJump		EveningStar_Loop11, Target

EveningStar_Call16:
	dc.b	nRst, $18, $82, nRst, $82, $08
	smpsAlterVol		$F9
	dc.b	$85, $04
	smpsAlterVol		$07
	dc.b	$86, $08
	smpsAlterVol		$90
	dc.b	$87, $04
	smpsAlterVol		$70
	smpsReturn

EveningStar_PWM3:
	smpsAlterVol		$C0
	dc.b	$89, $60, nRst, $89, $60, nRst, $30
	smpsAlterVol		$40
	smpsAlterVol		$FC
	dc.b	$83, $30
	smpsAlterVol		$04

EveningStar_Jump4:
	smpsCall		EveningStar_Call17, Target

EveningStar_Loop13:
	dc.b	nRst, $8A, nRst, $8A
	smpsLoop		$00, $07, EveningStar_Loop13, Target
	smpsCall		EveningStar_Call17, Target
	dc.b	nRst, $8A, nRst, $8A, nRst, $8A, nRst, $8A
	dc.b	nRst, $8A, $14, $04, nRst, $30

EveningStar_Loop14:
	dc.b	nRst, $18, $8A, nRst, $8A
	smpsLoop		$00, $04, EveningStar_Loop14, Target
	smpsJump		EveningStar_Jump4, Target

EveningStar_Call17:
	smpsAlterVol		$C0
	dc.b	$89, $18
	smpsAlterVol		$40
	dc.b	$8A, nRst, $8A
	smpsReturn

EveningStar_PWM4:
	dc.b	$96, $60
	smpsLoop		$00, $04, EveningStar_PWM4, Target

EveningStar_Loop15:
	smpsCall		EveningStar_Call18, Target
	smpsLoop		$01, $0B, EveningStar_Loop15, Target

EveningStar_Loop16:
	dc.b	$88, $08
	smpsAlterVol		$CD
	dc.b	$04
	smpsAlterVol		$22
	dc.b	$08
	smpsAlterVol		$DE
	dc.b	$04
	smpsAlterVol		$33
	smpsLoop		$00, $02, EveningStar_Loop16, Target
	dc.b	nRst, $30

EveningStar_Loop17:
	smpsCall		EveningStar_Call18, Target
	smpsLoop		$01, $04, EveningStar_Loop17, Target
	smpsJump		EveningStar_Loop15, Target

EveningStar_Call18:
	dc.b	$88, $08
	smpsAlterVol		$CD
	dc.b	$04
	smpsAlterVol		$22
	dc.b	$08
	smpsAlterVol		$DE
	dc.b	$04
	smpsAlterVol		$33
	smpsLoop		$00, $04, EveningStar_Call18, Target
	smpsReturn

EveningStar_Patches:

	
	dc.b	$09
	dc.b	$52, $51, $01, $01,	$DF, $DF, $9F, $9F
	dc.b	$10, $0C, $03, $05,	$12, $0F, $04, $07
	dc.b	$7F, $2F, $4F, $9F,	$20, $1C, $19, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$01
	dc.b	$75, $75, $71, $31,	$D5, $55, $96, $94
	dc.b	$02, $0B, $05, $0D,	$0A, $0A, $0F, $06
	dc.b	$FF, $2F, $3F, $6F,	$25, $2B, $0F, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$0D
	dc.b	$77, $65, $05, $15,	$1F, $5F, $5F, $5F
	dc.b	$00, $10, $08, $10,	$00, $03, $05, $04
	dc.b	$0F, $FC, $8C, $CC,	$1F, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$01, $01, $01, $01,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$FF, $FF, $FF, $FF,	$21, $80, $21, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
