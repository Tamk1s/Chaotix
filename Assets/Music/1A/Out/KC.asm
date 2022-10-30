Target	EQU	$40000

FMPitch		EQU	$00

PSGPitch	EQU	PSGDelta
PSGMod		EQU	$00
PSGVol1		EQU	$02
PSGVol2		EQU	PSGVol1+$01
PSGVoi		EQU $00

PWMPitch1	EQU $00
PWMPitch2	EQU	$02*PSGDelta
PWMVol		EQU	$AA
	smpsHeaderVoice		Elegy_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$02, $09
	smpsHeaderFM		Elegy_FM1, Target, FMPitch, $1F
	smpsHeaderFM		Elegy_FM2, Target, FMPitch, $24
	smpsHeaderFM		Elegy_FM3, Target, FMPitch, $15
	smpsHeaderFM		Elegy_FM4, Target, FMPitch, $17
	smpsHeaderFM		Elegy_FM5, Target, FMPitch, $17
	smpsHeaderFM		Elegy_FM6, Target, FMPitch, $16
	;!@ smpsHeaderPSG		Elegy_PSG1, Target, $00, $06, $00, $00
	;!@ smpsHeaderPSG		Elegy_PSG2, Target, $00, $06, $00, $00
	;!@ smpsHeaderPSG		Elegy_PSG3, Target, $00, $07, $00, $00
	smpsHeaderPSG		Elegy_PSG1, Target, PSGPitch, PSGVol1, PSGMod, PSGVoi
	smpsHeaderPSG		Elegy_PSG2, Target, PSGPitch, PSGVol1, PSGMod, PSGVoi
	smpsHeaderPSG		Elegy_PSG3, Target, PSGPitch, PSGVol2, PSGMod, PSGVoi
	smpsHeaderPWM		Elegy_PWM1, Target, PWMPitch1, PWMVol
	smpsHeaderPWM		Elegy_PWM2, Target, PWMPitch1, PWMVol
	smpsHeaderPWM		Elegy_PWM3, Target, PWMPitch1, PWMVol
	smpsHeaderPWM		Elegy_PWM4, Target, PWMPitch2, PWMVol

Elegy_FM1:
	smpsPan		panCenter
	smpsAlterNote	$02
	smpsFMvoice		$00

Elegy_Loop1:
	dc.b	nB4, $14, nC5, nCs5, nD5
	smpsLoop		$00, $04, Elegy_Loop1, Target

Elegy_Jump1:
	smpsAlterNote	$FB
	smpsAlterVol	$FC
	dc.b	nA4, $05
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nAb4, $01
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$F0
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nE4
	smpsAlterNote	$19
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nA4, $1B, nB4, $05
	smpsAlterNote	$EB
	dc.b	smpsNoAttack, nBb4, $01
	smpsAlterNote	$0B
	dc.b	smpsNoAttack, nG4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nF4
	smpsAlterNote	$EB
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nC4
	smpsAlterNote	$0D
	dc.b	smpsNoAttack, nD4
	smpsAlterNote	$EF
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nB4, $1C, nC5, $05
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nB4, $01
	smpsAlterNote	$E4
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$15
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nE4
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, nD4
	smpsAlterNote	$F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nG4
	smpsAlterNote	$0E
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nC5, $1B, nD5, $05
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nCs5, $01
	smpsAlterNote	$0E
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$10
	dc.b	smpsNoAttack, nF4
	smpsAlterNote	$F5
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nD5, $1C, nE5, $05
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nEb5, $01
	smpsAlterNote	$EE
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote	$1A
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$12
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nE5, $1B, nF5, $05
	smpsAlterNote	$F1
	dc.b	smpsNoAttack, nE5, $01
	smpsAlterNote	$08
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$13
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nD5
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nF5, $1C
	smpsAlterNote	$FC
	dc.b	nG5, $05
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nFs5, $01
	smpsAlterNote	$EB
	dc.b	smpsNoAttack, nE5
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F7
	dc.b	smpsNoAttack, nD5
	smpsAlterNote	$16
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nG5, $1B, nA5, $05
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, nAb5, $01
	smpsAlterNote	$0B
	dc.b	smpsNoAttack, nF5
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote	$EE
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$0B
	dc.b	smpsNoAttack, nC5
	smpsAlterNote	$F1
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nA5, $08, nB5, $05
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nBb5, $01
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nG5
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nF5
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nC5
	smpsAlterNote	$10
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote	$09
	dc.b	smpsNoAttack, nBb5
	smpsAlterNote	$02
	;!@ dc.b	smpsNoAttack, nB5, $07, nRst
	dc.b	smpsNoAttack, nB5, $07

Elegy_Loop2:
	;!@ dc.b	$50
	dc.b	nRst, $50
	smpsLoop		$00, $08, Elegy_Loop2, Target
	smpsAlterVol	$04
	smpsJump		Elegy_Jump1, Target

Elegy_FM2:
	smpsFMvoice		$00
	smpsPan		panCenter
	smpsAlterNote	$02

Elegy_Loop3:
	dc.b	nB3, $14, nC4, nCs4, nD4
	smpsLoop		$00, $04, Elegy_Loop3, Target

Elegy_Jump2:
	smpsAlterNote	$FB
	smpsAlterVol	$FC
	dc.b	nA3, $05
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nAb3, $01
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, nFs3
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote	$F0
	dc.b	smpsNoAttack, nB2
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nE3
	smpsAlterNote	$19
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nA3, $1B, nB3, $05
	smpsAlterNote	$EB
	dc.b	smpsNoAttack, nBb3, $01
	smpsAlterNote	$0B
	dc.b	smpsNoAttack, nG3
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nF3
	smpsAlterNote	$EB
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nC3
	smpsAlterNote	$0D
	dc.b	smpsNoAttack, nD3
	smpsAlterNote	$EF
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nB3, $1C, nC4, $05
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nB3, $01
	smpsAlterNote	$E4
	dc.b	smpsNoAttack, nA3
	smpsAlterNote	$15
	dc.b	smpsNoAttack, nFs3
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nE3
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, nD3
	smpsAlterNote	$F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nG3
	smpsAlterNote	$0E
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nC4, $1B, nD4, $05
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nCs4, $01
	smpsAlterNote	$0E
	dc.b	smpsNoAttack, nBb3
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, nFs3
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote	$10
	dc.b	smpsNoAttack, nF3
	smpsAlterNote	$F5
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nD4, $1C, nE4, $05
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nEb4, $01
	smpsAlterNote	$EE
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$1A
	dc.b	smpsNoAttack, nBb3
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, nFs3
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$12
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nE4, $1B, nF4, $05
	smpsAlterNote	$F1
	dc.b	smpsNoAttack, nE4, $01
	smpsAlterNote	$08
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nA3
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nFs3
	smpsAlterNote	$13
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nD4
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nF4, $1C
	smpsAlterNote	$FC
	dc.b	nG4, $05
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nFs4, $01
	smpsAlterNote	$EB
	dc.b	smpsNoAttack, nE4
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nB3
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nA3
	smpsAlterNote	$E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F7
	dc.b	smpsNoAttack, nD4
	smpsAlterNote	$16
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nG4, $1B, nA4, $05
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, nAb4, $01
	smpsAlterNote	$0B
	dc.b	smpsNoAttack, nF4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$EE
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nBb3
	smpsAlterNote	$0B
	dc.b	smpsNoAttack, nC4
	smpsAlterNote	$F1
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nA4, $08, nB4, $05
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nBb4, $01
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nG4
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nF4
	smpsAlterNote	$ED
	dc.b	smpsNoAttack, nEb4
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nC4
	smpsAlterNote	$10
	dc.b	smpsNoAttack, nCs4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote	$09
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$02
	;!@ dc.b	smpsNoAttack, nB4, $07, nRst
	dc.b	smpsNoAttack, nB4, $07

Elegy_Loop4:
	;!@ dc.b	$50
	dc.b	nRst, $50
	smpsLoop		$00, $08, Elegy_Loop4, Target
	smpsAlterVol	$04
	smpsJump		Elegy_Jump2, Target

Elegy_FM3:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b	nE2, $03

Elegy_Loop6:
	dc.b	$02, $03, $02, $03, nRst, $02, nE2, $03
	dc.b	$02, nRst, $03, nE2, $02, $03, nRst, $02
	dc.b	nE2, $03, $02, $03, $02, $03

Elegy_Loop5:
	dc.b	nRst, $02, nE2, $03
	smpsLoop		$00, $08, Elegy_Loop5, Target
	smpsLoop		$01, $03, Elegy_Loop6, Target
	dc.b	$02, $03, $02, $03, nRst, $02, nE2, $03
	dc.b	$02, nRst, $03, nE2, $02, $03, nRst, $02
	dc.b	nE2, $03, $02, $03, $02, $03

Elegy_Loop7:
	dc.b	nRst, $02, nE2, $03
	smpsLoop		$00, $07, Elegy_Loop7, Target
	dc.b	nRst, $02

Elegy_Jump3:
	dc.b	nA2, $03, $02, nRst, $03, nA2, $02, $03
	dc.b	nRst, $02, nA2, $03, $02, nRst, $05, nA2

Elegy_Loo$8:
	dc.b	$03, $02
	smpsLoop		$00, $04, Elegy_Loo$8, Target
	dc.b	nRst, $03, nA2

Elegy_Loo$9:
	dc.b	$02, $03, nRst, $02, nA2, $03
	smpsLoop		$00, $02, Elegy_Loo$9, Target
	dc.b	nRst, $02, nB2, $0A, nA2, $03, $02, nRst
	dc.b	$03, nA2, $02, $03, nRst, $02, nA2, $03
	dc.b	$02, nRst, $05, nA2

Elegy_Loop10:
	dc.b	$03, $02
	smpsLoop		$00, $04, Elegy_Loop10, Target
	dc.b	nRst, $03, nA2

Elegy_Loop11:
	dc.b	$02, $03, nRst, $02, nA2, $03
	smpsLoop		$00, $02, Elegy_Loop11, Target
	dc.b	nRst, $02, nF2, $0A, nA2, $03, $02, nRst
	dc.b	$03, nA2, $02, $03, nRst, $02, nA2, $03
	dc.b	$02, nRst, $05, nA2

Elegy_Loop12:
	dc.b	$03, $02
	smpsLoop		$00, $04, Elegy_Loop12, Target
	dc.b	nRst, $03, nA2

Elegy_Loop13:
	dc.b	$02, $03, nRst, $02, nA2, $03
	smpsLoop		$00, $02, Elegy_Loop13, Target
	dc.b	nRst, $02, nB2, $0A, nA2, $03, $02, nRst
	dc.b	$03, nA2, $02, $03, nRst, $02, nA2, $03
	dc.b	$02, nRst, $05, nA2, $03, $02, $03, $02
	dc.b	$03, $02, nD3, $03, nC3, $02, nE3, $03
	dc.b	nD3, $05, nRst, $02, nF3, $03, nE3, $02
	dc.b	nD3, $03, nE3, $05, nRst, $0C
	smpsAlterVol		$01
	dc.b	nA2, $03, $02, $03, nRst, $07, nA2, $03
	dc.b	$02, $03, nRst, $02, nA2, $03, $02, $03
	dc.b	$02, $03, $02, nG2, $03, $02, $03, nRst
	dc.b	$02, nG2, $03, nRst

Elegy_Loop14:
	dc.b	$02, nG2, $03
	smpsLoop		$00, $04, Elegy_Loop14, Target
	dc.b	nRst, $02, nG2, $03, $02, nF2, $03, $02
	dc.b	$03, nRst, $02, nF2, $03, nRst

Elegy_Loop15:
	dc.b	$02, nF2, $03
	smpsLoop		$00, $04, Elegy_Loop15, Target
	dc.b	nRst, $02, nF2, $03, $02, nE2, $03, $02
	dc.b	$03, nRst, $02, nE2, $03, nRst

Elegy_Loop16:
	dc.b	$02, nE2, $03
	smpsLoop		$00, $04, Elegy_Loop16, Target
	dc.b	nRst, $02, nE2, $03, $02, nD2, $03, $02
	dc.b	$03, nRst, $02, nD2, $03, nRst

Elegy_Loop17:
	dc.b	$02, nD2, $03
	smpsLoop		$00, $04, Elegy_Loop17, Target
	dc.b	nRst, $02, nD2, $03, $02, nC2, $03, $02
	dc.b	$03, nRst, $02, nC2, $03, nRst

Elegy_Loop18:
	dc.b	$02, nC2, $03
	smpsLoop		$00, $04, Elegy_Loop18, Target
	dc.b	nRst, $02, nC2, $03

Elegy_Loop20:
	dc.b	$02, nE2, $03, $02, $03, nRst, $02, nE2
	dc.b	$03, nRst

Elegy_Loop19:
	dc.b	$02, nE2, $03
	smpsLoop		$00, $04, Elegy_Loop19, Target
	dc.b	nRst, $02, nE2, $03
	smpsLoop		$01, $02, Elegy_Loop20, Target
	dc.b	$02, nA2, $03, $02, $03, nRst, $07, nA2
	dc.b	$03, $02, $03, nRst, $02, nA2, $03, $02
	dc.b	$03, $02, $03, $02, nG2, $03, $02, $03
	dc.b	nRst, $02, nG2, $03, nRst

Elegy_Loop21:
	dc.b	$02, nG2, $03
	smpsLoop		$00, $04, Elegy_Loop21, Target
	dc.b	nRst, $02, nG2, $03, $02, nF2, $03, $02
	dc.b	$03, nRst, $02, nF2, $03, nRst

Elegy_Loop22:
	dc.b	$02, nF2, $03
	smpsLoop		$00, $04, Elegy_Loop22, Target
	dc.b	nRst, $02, nF2, $03, $02, nE2, $03, $02
	dc.b	$03, nRst, $02, nE2, $03, nRst

Elegy_Loop23:
	dc.b	$02, nE2, $03
	smpsLoop		$00, $04, Elegy_Loop23, Target
	dc.b	nRst, $02, nE2, $03, $02, nF2, $03, $02
	dc.b	$03, nRst, $02, nF2, $03, nRst

Elegy_Loop24:
	dc.b	$02, nF2, $03
	smpsLoop		$00, $04, Elegy_Loop24, Target
	dc.b	nRst, $02, nF2, $03, $02, nG2, $03, $02
	dc.b	$03, nRst, $02, nG2, $03, nRst

Elegy_Loop25:
	dc.b	$02, nG2, $03
	smpsLoop		$00, $04, Elegy_Loop25, Target
	dc.b	nRst, $02, nG2, $03, $02, nAb2, $03, $02
	dc.b	$03, nRst, $02, nAb2, $03, nRst

Elegy_Loop26:
	dc.b	$02, nAb2, $03
	smpsLoop		$00, $04, Elegy_Loop26, Target
	dc.b	nRst, $02, nAb2, $03, $02, nA2, $03, $02
	dc.b	$03, nRst, $02, nA2, $03, nRst

Elegy_Loop27:
	dc.b	$02, nA2, $03
	smpsLoop		$00, $04, Elegy_Loop27, Target
	dc.b	nRst, $02, nA2, $03, $02
	smpsAlterVol		$FF
	smpsJump		Elegy_Jump3, Target

Elegy_FM4:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nE3

Elegy_Loop29:
	dc.b	$03, $02, $03, $02, $05, $03, $05, $02
	dc.b	$05, $03, $02, $03, $02

Elegy_Loop28:
	dc.b	$05
	smpsLoop		$00, $08, Elegy_Loop28, Target
	smpsLoop		$01, $04, Elegy_Loop29, Target

Elegy_Jump4:
	dc.b	nA3, $03, $05, $02, $05, $03, $07, $03
	dc.b	$02, $03, $02, $03, $02, $03, $05, $02
	dc.b	$05, $03, $02, $05, $05, nB3, $0A, nA3
	dc.b	$03, $05, $02, $05, $03, $07, $03, $02
	dc.b	$03, $02, $03, $02, $03, $05, $02, $05
	dc.b	$03, $02, $05, $05, nF3, $0A, nA3, $03
	dc.b	$05, $02, $05, $03, $07, $03, $02, $03
	dc.b	$02, $03, $02, $03, $05, $02, $05, $03
	dc.b	$02, $05, $05, nB3, $0A, nA3, $03, $05
	dc.b	$02, $05, $03, $07, $03, $02, $03, $02
	dc.b	$03, $02, nD4, $03, nC4, $02, nE4, $03
	dc.b	nD4, $07, nF4, $03, nE4, $02, nD4, $03
	dc.b	nE4, $11
	smpsAlterVol		$01
	dc.b	nA3, $03, $02, $0A, $03, $02, $05, $03
	dc.b	$02, $03, $02, $03, $02, nG3, $03, $02
	dc.b	$05, $05, $03, $02, $03, $02, $03, $02
	dc.b	$05, $03, $02, nF3, $03, $02, $05, $05
	dc.b	$03, $02, $03, $02, $03, $02, $05, $03
	dc.b	$02, nE3, $03, $02, $05, $05, $03, $02
	dc.b	$03, $02, $03, $02, $05, $03, $02, nD3
	dc.b	$03, $02, $05, $05, $03, $02, $03, $02
	dc.b	$03, $02, $05, $03, $02, nC3, $03

Elegy_Loop30:
	dc.b	$02, $05, $05, $03, $02, $03, $02, $03
	dc.b	$02, $05, $03, $02, nE3, $03
	smpsLoop		$00, $02, Elegy_Loop30, Target
	dc.b	$02, $05, $05, $03, $02, $03, $02, $03
	dc.b	$02, $05, $03, $02, nA3, $03, $02, $0A
	dc.b	$03, $02, $05, $03, $02, $03, $02, $03
	dc.b	$02, nG3, $03, $02, $05, $05, $03, $02
	dc.b	$03, $02, $03, $02, $05, $03, $02, nF3
	dc.b	$03, $02, $05, $05, $03, $02, $03, $02
	dc.b	$03, $02, $05, $03, $02, nE3, $03, $02
	dc.b	$05, $05, $03, $02, $03, $02, $03, $02
	dc.b	$05, $03, $02, nF3, $03, $02, $05, $05
	dc.b	$03, $02, $03, $02, $03, $02, $05, $03
	dc.b	$02, nG3, $03, $02, $05, $05, $03, $02
	dc.b	$03, $02, $03, $02, $05, $03, $02, nAb3
	dc.b	$03, $02, $05, $05, $03, $02, $03, $02
	dc.b	$03, $02, $05, $03, $02, nA3, $03, $02
	dc.b	$05, $05, $03, $02, $03, $02, $03, $02
	dc.b	$05, $03, $02
	smpsAlterVol		$FF
	smpsJump		Elegy_Jump4, Target

Elegy_FM5:
	;smpsFMvoice		$02
	;smpsPan		panCenter

;Elegy_Loop31:
	;dc.b	nE5, $28, nRst
	;smpsLoop		$00, $04, Elegy_Loop31, Target

;Elegy_Jump5:
	;smpsAlterVol	$10

;Elegy_Loop32:
	;dc.b	nA4, $05, nRst, $03, nG4, $05, nRst, $02
	;smpsLoop		$00, $02, Elegy_Loop32, Target
	;dc.b	nA4, $05, nG4
	;smpsAlterVol	$FF
	;dc.b	nA4, nRst, $03, nG4, $05, nRst, $02, nA4
	;dc.b	$05, nRst, $14, nA4, $05, nRst, $03, nG4
	;dc.b	$05, nRst, $02
	;smpsAlterVol	$FF
	;dc.b	nA4, $05, nRst, $03, nG4, $05, nRst, $02
	;dc.b	nA4, $05, nG4, nA4, nRst, $03, nG4, $05
	;dc.b	nRst, $02, nF4, $05, nRst, $14

;Elegy_Loop33:
	;dc.b	nA4, $05, nRst, $03, nG4, $05, nRst, $02
	;smpsLoop		$00, $02, Elegy_Loop33, Target
	;dc.b	nA4, $05, nG4, nA4, nRst, $03, nG4, $05
	;dc.b	nRst, $02, nA4, $05, nRst, $14

;Elegy_Loop34:
	;dc.b	nA4, $05, nRst, $03, nG4, $05, nRst, $02
	;smpsLoop		$00, $02, Elegy_Loop34, Target
	;dc.b	nA4, $05, nG4
	;smpsAlterNote	$00
	;!@ dc.b	nRst

;Elegy_Loop35:
	;!@ dc.b	$55
	;dc.b		nRst, $55
	;smpsLoop		$00, $08, Elegy_Loop35, Target
	;smpsAlterVol	$F2
	;smpsJump		Elegy_Jump5, Target

Elegy_FM6:
	;smpsFMvoice		$02
	;smpsPan		panCenter

;Elegy_Loop36:
	;dc.b	nE4, $28, nRst
	;smpsLoop		$00, $04, Elegy_Loop36, Target

;Elegy_Jump6:
	;!@ dc.b	nRst, $7F, $7F, $1A
	;dc.b	nRst, $7F, nRst, $7F, nRst, $1A
	;smpsAlterNote	$00

;Elegy_Loop37:
	;!@ dc.b	$55
	;dc.b		nRst, $55
	;smpsLoop		$00, $08, Elegy_Loop37, Target
	;smpsJump		Elegy_Jump6, Target
	smpsStop

Elegy_PSG1:
	dc.b	nRst, $28
	smpsPSGvoice	PSGVoi

Elegy_Loop38:
	dc.b	nB0, $03, nD1, $02, nF1, $03
	smpsSetVol	$FF
	dc.b	nAb1, $02, nB1, $03, nAb1, $02, nF1, $03
	dc.b	nD1, $02, nB0, $03, nF1, $02, nAb1, $03
	dc.b	nB1, $02, nD2, $03, nB1, $02, nAb1, $03
	dc.b	nE1, $02, nRst, $28
	smpsSetVol	$01
	smpsLoop		$00, $02, Elegy_Loop38, Target
	dc.b	nB0, $03, nD1, $02, nF1, $03
	smpsSetVol	$FF
	dc.b	nAb1, $02, nB1, $03, nAb1, $02, nF1, $03
	dc.b	nD1, $02, nB0, $03, nF1, $02, nAb1, $03
	dc.b	nB1, $02, nD2, $03, nB1, $02, nAb1, $03
	dc.b	nE1, $02, nRst, $28, nB0, $03, nD1, $02
	dc.b	nF1, $03, nAb1, $02, nRst, $05, nB0, $03
	dc.b	nD1, $02, nB0, $03, nF1, $02, nAb1, $03
	dc.b	nB1, $02, nRst, $0A

Elegy_Jump7:
	;!@ dc.b	nRst, $7F, $7F, $42
	dc.b	nRst, $7F, nRst, $7F, nRst, $42
	smpsAlterNote	$00
	;!@ dc.b	$0A
	dc.b	nRst, $0A
	smpsSetVol	$01
	smpsAlterNote	$FF
	dc.b	nE2, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nA2, $04, nG2, $05, nA2, $0A, nE2
	dc.b	$05
	smpsAlterNote	$02
	dc.b	smpsNoAttack, nF2, $01, smpsNoAttack, nG2
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nC3
	smpsAlterNote	$00
	dc.b	$08, nB2, $07, nG2, $12
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $02
	smpsAlterNote	$02
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$04
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nF2
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$02
	dc.b	nRst, $0A
	smpsAlterNote	$FD
	dc.b	nA2, $01
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nC3, $04
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nB2, $0A, nA2, $07, nRst, $01, nG2
	dc.b	$07
	smpsAlterNote	$01
	dc.b	$01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nAb2, $23
	smpsAlterNote	$02
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nG2
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote	$FD
	dc.b	nAb2
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nA2, $0E
	smpsAlterNote	$03
	dc.b	nBb2, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nB2, $0E
	smpsAlterNote	$01
	dc.b	$01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nC3, $0E, nBb2, $01, smpsNoAttack, nB2, $07
	dc.b	nC3, nCs3, $01, smpsNoAttack, nD3, $0F
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nC3, nRst, $05
	smpsAlterNote	$FE
	dc.b	nA2, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nB2, $04, nC3, $05, nB2, $0A, nD3
	dc.b	$08, nC3, $07, nB2, $03, nC3, $02, nB2
	dc.b	$1E
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nBb2, smpsNoAttack, nA2
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $01, nA1, $05, nC2, nE2, nA2, nC3
	dc.b	nD3
	smpsAlterNote	$FF
	dc.b	nEb3, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nE3, $0C
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nEb3, $01
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nD3
	smpsAlterNote	$00
	dc.b	$05, nE3, nF3
	smpsAlterNote	$FE
	dc.b	nD3, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nE3, $07
	smpsAlterNote	$02
	dc.b	nF3, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $06, nFs3, $01, smpsNoAttack, nG3, $04
	smpsAlterNote	$FE
	dc.b	nF3, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nG3, $0E, nF3, $0F, nE3, $0A, nD3
	dc.b	$23
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$02
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nC3, nRst, $05, nA2, $03, nB2, $02
	dc.b	nC3, $05, nB2, $0A, nG2, $05, nA2, $06
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FD
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nG2
	smpsAlterNote	$00
	dc.b	nRst, $05, nG2, $03, nA2, $02, nB2, $05
	dc.b	nC3, $0A, nD3, $05, nB2, $06
	smpsAlterNote	$01
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote	$02
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b	smpsNoAttack, nA2
	smpsAlterNote	$00
	dc.b	nRst, $0A
	smpsSetVol	$FE
	smpsAlterNote	$02
	dc.b	nEb3, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nF3, $04, nD3, $0A, nAb2, $05, nB2
	dc.b	nF3, nEb3, $01, smpsNoAttack, nA3, $13
	smpsSetVol	$02
	dc.b	smpsNoAttack, $01
	smpsSetVol	$01
	dc.b	smpsNoAttack, $03

Elegy_Loop39:
	smpsSetVol	$01
	dc.b	smpsNoAttack, $02
	smpsLoop		$00, $04, Elegy_Loop39, Target
	smpsSetVol	$01
	dc.b	smpsNoAttack, $01
	smpsSetVol	$01
	dc.b	smpsNoAttack, $02
	smpsSetVol	$01
	dc.b	smpsNoAttack, $03
	smpsSetVol	$01
	dc.b	smpsNoAttack, $02
	smpsSetVol	$F6
	smpsJump		Elegy_Jump7, Target

Elegy_PSG2:
	;!@ dc.b	nRst, $7F, $7F, $42
	dc.b	nRst, $7F, nRst, $7F, nRst, $42

Elegy_Jump8:
	smpsPSGvoice	PSGVoi

Elegy_Loop40:
	dc.b	nA2, $05, nRst, $03, nG2, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop40, Target
	dc.b	nA2, $05, nG2, nA2, nRst, $03, nG2, $05
	dc.b	nRst, $02, nA2, $05, nRst, $14

Elegy_Loop41:
	dc.b	nA2, $05, nRst, $03, nG2, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop41, Target
	dc.b	nA2, $05, nG2, nA2, nRst, $03, nG2, $05
	dc.b	nRst, $02, nF2, $05
	smpsSetVol	$02
	dc.b	nE3, $03, nC3, $02, nA2, $03, nC3, $02
	dc.b	nA2, $03, nE3, $02, nB2, $03, nE3, $02
	smpsSetVol	$FE

Elegy_Loop42:
	dc.b	nA2, $05, nRst, $03, nG2, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop42, Target
	dc.b	nA2, $05, nG2, nA2, nRst, $03, nG2, $05
	dc.b	nRst, $02, nA2, $05, nRst, $14

Elegy_Loop43:
	dc.b	nA2, $05, nRst, $03, nG2, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop43, Target
	dc.b	nA2, $05, nG2, nD3, $03, nC3, $02, nE3
	dc.b	$03, nD3, $07, nF3, $03, nE3, $02, nD3
	dc.b	$03, nE3, $0C, nRst, $41, nE2, $05, nRst
	dc.b	$03, nD2, $05, nRst, $02, nC2, $05, nRst
	dc.b	$28, nE1, $05, nRst, $03, nAb1, $05, nRst
	dc.b	$02, nB1, $05, nD2, nRst, $03, nE2, $05
	dc.b	nRst, $02, nF2, $05, nE2, nRst, $37, nG2
	dc.b	$05, $05, nA2, nB2, nRst, $0A, nE3, $0F
	dc.b	$0F, nF3, $05, nRst, $03, nE3, $05, nRst
	dc.b	$02, nD3, $05, nC3, nRst, $03, nB2, $05
	dc.b	nRst, $02, nBb2, $05, nA2, nRst, $1E, nE2
	dc.b	$03, nF2, $02, nG2, $0F, nD2, nB1, $0A
	dc.b	nC2, $26, $01, nEb2, nE2, nAb2, $07, nF2
	dc.b	nE2, $05, nD2, $08, nB1, $07, nAb1, $05
	dc.b	nA1, nC2, $03, nD2, $02, nE2, $05, nD2
	dc.b	$0A, nB1, $05, nC2, $0D, nRst, $02, nB1
	dc.b	$03, nC2, $02, nD2, $05, nE2, $0A, nF2
	dc.b	$05, nD2, $0D, nRst, $07, nB1, $0A, nD2
	dc.b	nF2, nA1, $03, nC2, $02, nE2, $03, nA2
	dc.b	$16
	smpsAlterNote	$00
	dc.b	nRst, $0A
	smpsJump		Elegy_Jump8, Target

Elegy_PSG3:
	;!@ dc.b	nRst, $7F, $7F, $42
	dc.b	nRst, $7F, nRst, $7F, nRst, $42

Elegy_Jump9:
	smpsPSGvoice	PSGVoi

Elegy_Loop44:
	dc.b	nC2, $05, nRst, $03, nB1, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop44, Target
	dc.b	nC2, $05, nB1, nC2, nRst, $03, nB1, $05
	dc.b	nRst, $02, nC2, $05, nRst, $14

Elegy_Loop45:
	dc.b	nC2, $05, nRst, $03, nB1, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop45, Target
	dc.b	nC2, $05, nB1, nC2, nRst, $03, nB1, $05
	dc.b	nRst, $02, nA1, $05, nRst, $01
	smpsSetVol	$04
	dc.b	nE3, $02, nC3, $03, nA2, $02, nC3, $03
	dc.b	nA2, $02, nE3, $03, nB2, $02, nE3
	smpsSetVol	$FC

Elegy_Loop46:
	dc.b	nC2, $05, nRst, $03, nB1, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop46, Target
	dc.b	nC2, $05, nB1, nC2, nRst, $03, nB1, $05
	dc.b	nRst, $02, nC2, $05, nRst, $14

Elegy_Loop47:
	dc.b	nC2, $05, nRst, $03, nB1, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_Loop47, Target
	dc.b	nC2, $05, nB1, nF2, $03, nE2, $02, nG2
	dc.b	$03, nF2, $07, nA2, $03, nG2, $02, nF2
	dc.b	$03, nG2, $0C, nRst, $46
	smpsSetVol	$05
	dc.b	nE2, $05, nRst, $03, nD2, $05, nRst, $02
	dc.b	nC2, $05, nRst, $28, nE1, $05, nRst, $03
	dc.b	nAb1, $05, nRst, $02, nB1, $05, nD2, nRst
	dc.b	$03, nE2, $05, nRst, $02, nF2, $05, nE2
	dc.b	nRst, $37, nG2, $05, $05, nA2, nB2, nRst
	dc.b	$0A, nE3, $0F, $0F, nF3, $05, nRst, $03
	dc.b	nE3, $05, nRst, $02, nD3, $05, nC3, nRst
	dc.b	$03, nB2, $05, nRst, $02, nBb2, $05, nA2
	dc.b	nRst, $1E, nE2, $03, nF2, $02, nG2, $0F
	dc.b	nD2, nB1, $0A, nC2, $26, $01, nEb2, nE2
	dc.b	nAb2, $07, nF2, nE2, $05, nD2, $08, nB1
	dc.b	$07, nAb1, $05, nA1, nC2, $03, nD2, $02
	dc.b	nE2, $05, nD2, $0A, nB1, $05, nC2, $0D
	dc.b	nRst, $02, nB1, $03, nC2, $02, nD2, $05
	dc.b	nE2, $0A, nF2, $05, nD2, $0D, nRst, $07
	dc.b	nB1, $0A, nD2, nF2, nA1, $03, nC2, $02
	dc.b	nE2, $03, nA2, $16
	smpsAlterNote	$00
	dc.b	nRst, $05
	smpsSetVol	$FB
	smpsJump		Elegy_Jump9, Target

Elegy_PWM1:
	smpsPan		panCenter
	dc.b pCrashCymb, $28

Elegy_PWM1_Loop1:
	dc.b pEKick, $0A, pESnare
	smpsLoop		$00, $0C, Elegy_PWM1_Loop1, Target
	dc.b pCrashCymb, $14, pSplashCymb

Elegy_PWM1_Jump1:
	dc.b pCrashCymb, $28

Elegy_PWM1_Loop2:
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pEKick, pESnare, pClosedHH
	dc.b $05, $05, $05, $05
	smpsLoop		$00, $02, Elegy_PWM1_Loop2, Target
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pClosedHH

Elegy_PWM1_Loop3:
	dc.b $05
	smpsLoop		$00, $08, Elegy_PWM1_Loop3, Target
	dc.b pCrashCymb, $14, pSplashCymb

Elegy_PWM1_Loop5:
	dc.b pCrashCymb, $28

Elegy_PWM1_Loop4:
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pEKick, pESnare, pClosedHH
	dc.b $05, $05, $05, $05
	smpsLoop		$00, $03, Elegy_PWM1_Loop4, Target
	dc.b pEKick, $0A, pESnare, pEKick, pESnare
	smpsLoop		$01, $02, Elegy_PWM1_Loop5, Target
	smpsJump		Elegy_PWM1_Jump1, Target

Elegy_PWM2:
	dc.b pEKick, $0A, pESnare, pEKick, pESnare, pClosedHH

Elegy_PWM2_Loop1:
	dc.b $05
	smpsLoop		$00, $08, Elegy_PWM2_Loop1, Target
	dc.b $03, $02, $03, $02, $05, $03, $05, $02
	dc.b $05, $03, $02, $03, $02
	smpsLoop		$01, $03, Elegy_PWM2_Loop1, Target
	dc.b pEKick, $03, $02, $03, $07, $03, $02, $85
	dc.b $03, $02, $86, $03, $87, $0C

Elegy_PWM2_Jump1:
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop2:
	dc.b $05
	smpsLoop		$00, $10, Elegy_PWM2_Loop2, Target
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop3:
	dc.b $05
	smpsLoop		$00, $0C, Elegy_PWM2_Loop3, Target
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop4:
	dc.b $05
	smpsLoop		$00, $07, Elegy_PWM2_Loop4, Target
	dc.b $2D, pEKick, $03, $02, $03, $07, $03, $02
	dc.b $85, $03, $02, $86, $03, $87, $0C

Elegy_PWM2_Loop9:
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop5:
	dc.b $05
	smpsLoop		$00, $10, Elegy_PWM2_Loop5, Target

Elegy_PWM2_Loop7:
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop6:
	dc.b $05
	smpsLoop		$00, $0C, Elegy_PWM2_Loop6, Target
	smpsLoop		$01, $02, Elegy_PWM2_Loop7, Target
	dc.b pEKick, $0A, pESnare, pClosedHH

Elegy_PWM2_Loop8:
	dc.b $05
	smpsLoop		$00, $08, Elegy_PWM2_Loop8, Target
	smpsLoop		$02, $02, Elegy_PWM2_Loop9, Target
	smpsJump		Elegy_PWM2_Jump1, Target

Elegy_PWM3:
	dc.b pClosedHH, $03, $02, $03, $02, $05, $03, $05
	dc.b $02, $05, $03, $02, $03, $7F, nRst, nRst
	dc.b $08, pEKick, $03, $02, $03, $0C

Elegy_PWM3_Jump1:
	dc.b pClosedHH, $05, $05, $05, $05, pEKick, $0A, pESnare
	dc.b $7F, nRst, $03, pCrashCymb, $7F, nRst, $0D, pEKick
	dc.b $03, $02, $03, $0C

Elegy_PWM3_Loop1:
	dc.b pClosedHH, $05, $05, $05, $05, pEKick, $0A, pESnare
	dc.b $7F, nRst, nRst, $24
	smpsLoop		$00, $02, Elegy_PWM3_Loop1, Target
	smpsJump		Elegy_PWM3_Jump1, Target
	
Elegy_PWM4:
	smpsPan		panCenter

Elegy_PWM4_Loop1:
	dc.b	pOrchHitHi, $28, nRst
	smpsLoop		$00, $04, Elegy_PWM4_Loop1, Target

Elegy_PWM4_Jump1:
	;smpsAlterVol	$10

Elegy_PWM4_Loop2:
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_PWM4_Loop2, Target
	dc.b	pOrchHitMed, $05, pOrchHitLo
	;smpsAlterVol	$FF
	dc.b	pOrchHitMed, nRst, $03, pOrchHitLo, $05, nRst, $02, pOrchHitMed
	dc.b	$05, nRst, $14, pOrchHitMed, $05, nRst, $03, pOrchHitLo
	dc.b	$05, nRst, $02
	;smpsAlterVol	$FF
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	dc.b	pOrchHitMed, $05, pOrchHitLo, pOrchHitMed, nRst, $03, pOrchHitLo, $05
	dc.b	nRst, $02, pOrchHitLower, $05, nRst, $14

Elegy_PWM4_Loop3:
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_PWM4_Loop3, Target
	dc.b	pOrchHitMed, $05, pOrchHitLo, pOrchHitMed, nRst, $03, pOrchHitLo, $05
	dc.b	nRst, $02, pOrchHitMed, $05, nRst, $14

Elegy_PWM4_Loop4:
	dc.b	pOrchHitMed, $05, nRst, $03, pOrchHitLo, $05, nRst, $02
	smpsLoop		$00, $02, Elegy_PWM4_Loop4, Target
	dc.b	pOrchHitMed, $05, pOrchHitLo
	;!@ smpsAlterNote	$00
	dc.b	nRst

Elegy_PWM4_Loop5:
	dc.b	$55
	smpsLoop		$00, $08, Elegy_PWM4_Loop5, Target
	;smpsAlterVol	$F2
	smpsJump		Elegy_PWM4_Jump1, Target

Elegy_Patches:
	;dc.b	$38
	;dc.b	$75, $13, $71, $11, $D1, $52, $14, $14
	;dc.b	$0A, $07, $01, $01, $00, $00, $00, $00
	;dc.b	$F0, $F0, $F0, $FC, $23, $1E, $1E, $06
	
	;dc.b	$08
	;dc.b	$0A, $70, $30, $00, $1F, $1F, $5F, $5F
	;dc.b	$12, $0E, $0A, $0A, $00, $04, $04, $03
	;dc.b	$2F, $2F, $2F, $2F, $24, $2D, $13, $06
	
	;dc.b	$3A
	;dc.b	$64, $60, $60, $30, $9D, $9D, $50, $4C
	;dc.b	$04, $06, $04, $05, $1F, $05, $01, $01
	;dc.b	$A8, $25, $25, $55, $7F, $06, $14, $00
	
	dc.b	$38
	dc.b	$75, $13, $71, $11, $D1, $52, $14, $14
	dc.b	$0A, $07, $01, $01, $00, $00, $00, $00
	dc.b	$F0, $F0, $F0, $FC, $23, $1E, $1E, $14
	
	dc.b	$08
	dc.b 	$0A, $70, $30, $00, $1F, $1F, $5F, $5F
	dc.b	$12, $0E, $0A, $0A, $00, $04, $04, $03
	dc.b	$2F, $2F, $2F, $2F, $24, $2D, $13, $18
	
	dc.b	$3A
	dc.b	$64, $60, $60, $30, $9D, $9D, $50, $4C
	dc.b	$04, $06, $04, $05, $1F, $05, $01, $01
	dc.b	$A8, $25, $25, $55, $7F, $06, $14, $14