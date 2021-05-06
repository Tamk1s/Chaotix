Target	EQU	$40000
	smpsHeaderVoice	DMR_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$05, $0F
	smpsHeaderFM	DMR_FM1, Target, $00, $0E
	smpsHeaderFM	DMR_FM2, Target, $00, $0E
	smpsHeaderFM	DMR_FM3, Target, $00, $0E
	smpsHeaderFM	DMR_FM4, Target, $00, $0E
	smpsHeaderFM	DMR_FM5, Target, $00, $0E
	smpsHeaderFM	DMR_FM6, Target, $00, $0E
	smpsHeaderPSG	DMR_PSG1, Target, $00, $02, $00, $00
	smpsHeaderPSG	DMR_PSG2, Target, $00, $02, $00, $00
	smpsHeaderPSG	DMR_PSG3, Target, $00, $05, $00, $12
	smpsHeaderPWM	DMR_PWM1, Target, $00, $7F
	smpsHeaderPWM	DMR_PWM2, Target, $00, $7F
	smpsHeaderPWM	DMR_PWM3, Target, $00, $7F
	smpsHeaderPWM	DMR_PWM4, Target, $00, $7F

DMR_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nC3

DMR_Loop1:
	dc.b	$01, nRst, nB2
	smpsLoop		$00, $03, DMR_Loop1, Target
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB1, $01

DMR_Loop2:
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $02, DMR_Loop2, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nC3, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nB1, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nG2, nG2, nRst, nE2, nE2, nRst, nE3, nC3
	dc.b	nRst, nB2, nB2, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nB2, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nB2, $01, nRst, $02, nB1, $01, $01, nRst
	dc.b	nB1, nB1, nRst, nB1, nRst, $02, nB2, $01
	dc.b	nRst, $02, nB2, $01, $01, nRst, nG2, nG2
	dc.b	nRst, nE2, nE2, nRst, nE3, nC3, nRst, nB2

DMR_Loop3:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nB2, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop3, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nB2, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nB1, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nB2, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nG2, nG2, nRst, nE2, nE2, nRst, nE3, nC3
	dc.b	nRst, nB2

DMR_Loop4:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop4, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nC3, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB1, $01
	dc.b	$01, nRst, nB1, nB1, nRst, nB1, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nG2, nG2, nRst, nE2, nE2, nRst, nE3, nC3
	dc.b	nRst, nB2

DMR_Loop5:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop5, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3

DMR_Loop7:
	dc.b	nF1, nRst, nE2

DMR_Loop6:
	dc.b	nE2, nRst, nE2, nE2, nRst, nE2, nRst, $02
	dc.b	nF2, $01, nRst, $02, nE2, $01
	smpsLoop		$00, $03, DMR_Loop6, Target
	dc.b	$01, nRst, nC2, nC2, nRst, nA1, nA1, nRst
	dc.b	nA2
	smpsLoop		$01, $02, DMR_Loop7, Target
	dc.b	nC3, nRst, nB2

DMR_Loop8:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop8, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nBb1, nRst, nA2, nA2, nRst, nA2, nA2
	dc.b	nRst, nA2, nRst, $02, nA2, $01, nRst, $02
	dc.b	nA2, $01, $01, nRst, nA2, nA2, nRst, nA2
	dc.b	nRst, $02, nA2, $01, nRst, $02, nG2, $01
	dc.b	$01, nRst, nG2, nG2, nRst, nG2, nRst, $02
	dc.b	nG2, $01, nRst, $02, nG2, $01, $01, nRst
	dc.b	nFs2, nFs2, nRst, nB1, nB1, nRst, nD3, nC3
	dc.b	nRst, nB2

DMR_Loop9:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop9, Target

DMR_Loop10:
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nC3, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB1, $01
	dc.b	$01, nRst, nB1, nB1, nRst, nB1, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop10, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nB2, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nB1, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nB2, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nG2, nG2, nRst, nE2, nE2, nRst, nE3, nC3
	dc.b	nRst, nB2

DMR_Loop11:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop11, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nC3, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB1, $01
	dc.b	$01, nRst, nB1, nB1, nRst, nB1, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nG2, nG2, nRst, nE2, nE2, nRst, nE3, nC3
	dc.b	nRst, nB2

DMR_Loop12:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop12, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3

DMR_Loop14:
	dc.b	nF1, nRst, nE2

DMR_Loop13:
	dc.b	nE2, nRst, nE2, nE2, nRst, nE2, nRst, $02
	dc.b	nF2, $01, nRst, $02, nE2, $01
	smpsLoop		$00, $03, DMR_Loop13, Target
	dc.b	$01, nRst, nC2, nC2, nRst, nA1, nA1, nRst
	dc.b	nA2
	smpsLoop		$01, $02, DMR_Loop14, Target
	dc.b	nC3, nRst, nB2

DMR_Loop15:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop15, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nBb1, nRst, nA2, nA2, nRst, nA2, nA2
	dc.b	nRst, nA2, nRst, $02, nA2, $01, nRst, $02
	dc.b	nA2, $01, $01, nRst, nA2, nA2, nRst, nA2
	dc.b	nRst, $02, nA2, $01, nRst, $02, nG2, $01
	dc.b	$01, nRst, nG2, nG2, nRst, nG2, nRst, $02
	dc.b	nG2, $01, nRst, $02, nG2, $01, $01, nRst
	dc.b	nFs2, nFs2, nRst, nB1, nB1, nRst, nD3

DMR_Loop16:
	dc.b	nC3, nRst, nB2, nB2, nRst, nB2, nB2, nRst
	dc.b	nB2, nRst, $02, nC3, $01, nRst, $02, nB2
	dc.b	$01, $01, nRst, nB2, nB2, nRst, nB2, nRst
	dc.b	$02, nC3, $01, nRst, $02, nB1, $01, $01
	dc.b	nRst, nB1, nB1, nRst, nB1, nRst, $02, nC3
	dc.b	$01, nRst, $02, nB2, $01, $01, nRst, nG2
	dc.b	nG2, nRst, nE2, nE2, nRst, nE3
	smpsLoop		$00, $04, DMR_Loop16, Target
	;!@ dc.b	nRst, $30, $30, $30, $30, $30, $30
	dc.b	nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30

DMR_Loop17:
	dc.b	nC3, $01, nRst, nB1, nB1, nRst, $02, nB1
	dc.b	$01, nRst, $05, nB1, $01, nRst, $04, nE3
	dc.b	$01, nC3, nRst, $02, nB1, $01, nRst, nB1
	smpsLoop		$00, $04, DMR_Loop17, Target
	dc.b	nRst, $30, nF1, $01, nRst, nE2, nE2, nRst
	dc.b	$02, nE2, $01, nRst, $05, nE2, $01, nRst
	dc.b	$04, nA2, $01, nF2, nRst, $02, nE2, $01
	dc.b	nRst, nE2, nF2, nRst, nE2, nE2, nRst, $02
	dc.b	nE2, $01, nRst, $04, nF2, $01, nRst, $02
	dc.b	nE2, $01, nRst, $02, nC2, $01, nRst, $02
	dc.b	nA1, $01, nRst, $02, nA2, $01, nF1, nRst
	dc.b	nE2, nE2, nRst, $02, nE2, $01, nRst, $05
	dc.b	nE2, $01, nRst, $04, nA2, $01, nF2, nRst
	dc.b	$02, nE2, $01, nRst, nE2, nF2, nRst, nE2
	dc.b	nE2, nRst, $02, nE2, $01, nRst, $05, nF2
	dc.b	$01, nRst, nE2, nRst, $02, nC2, $01, nRst
	dc.b	$02, nA1, $01, nRst, $02, nA2, $01, nC3
	dc.b	nRst, nB2, nB2, nRst, $02, nB2, $01, nRst
	dc.b	$05, nC3, $01, nRst, $04, nB2, $01, $01
	dc.b	nRst, nB2, nRst, $03, nC3, $01, nRst, nB2
	dc.b	nB2, nRst, $02, nB2, $01, nRst, $04, nC3
	dc.b	$01, nRst, $02, nB2, $01, nRst, $02, nG2
	dc.b	$01, nRst, $02, nE2, $01, nRst, $02, nE3
	dc.b	$01, nBb1, nRst, nA2, nA2, nRst, $02, nA2
	dc.b	$01, nRst, $04, nA2, $01, nRst, $02, nA2
	dc.b	$01, $01, nRst, $02, nA2, $01, nRst, nA2
	dc.b	nRst, $03, nBb1, $01, nRst, nA2, nA2, nRst
	dc.b	$02, nA2, $01, nRst, $04, nA2, $01, nRst
	dc.b	$02, nA2, $01, $01, nRst, $07, nA2, $01
	dc.b	nG2, nRst, $02, nG2, $01, nRst, nG2

DMR_Loop18:
	dc.b	nRst, $02, nG2, $01
	smpsLoop		$00, $03, DMR_Loop18, Target
	dc.b	nRst, $21

DMR_Loop20:
	dc.b	nC3

DMR_Loop19:
	dc.b	$01, nRst, nB2
	smpsLoop		$00, $03, DMR_Loop19, Target
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB1, $01, $01, nRst
	dc.b	nB1, nB1, nRst, nB1, nRst, $02, nC3, $01
	dc.b	nRst, $02, nB2, $01, $01, nRst, nG2, nG2
	dc.b	nRst, nE2, nE2, nRst, nE3
	smpsLoop		$01, $04, DMR_Loop20, Target
	dc.b	nB1, nRst, nA2, nA2, nRst, nA2, nA2, nRst
	dc.b	nA2, nRst, $02, nB2, $01, nRst, $02, nA2
	dc.b	$01, $01, nRst, nA2, nA2, nRst, nA2, nRst
	dc.b	$02, nB1, $01, nRst, $02, nG1, $01, $01
	dc.b	nRst, nG1, nG1, nRst, nG1, nRst, $02, nB2
	dc.b	$01, nRst, $02, nG2, $01, $01, nRst, nFs2
	dc.b	nFs2, nRst, nB1, nB1, nRst, nB2, nC3, nRst
	dc.b	nB2

DMR_Loop21:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop21, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nC2, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nB2, nB2, nRst, nB2
	dc.b	nRst, $02, nC3, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nB1, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nG2, nG2, nRst, nE2, nE2, nRst, nE3, nC3
	dc.b	nRst, nB2

DMR_Loop22:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop22, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nC3, nRst, nB2, nB2, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $05, nB2, $01, $01, nRst
	dc.b	nB2, nB2, nRst, nB2, nRst, $02, nC3, $01
	dc.b	nRst, $02, nB2, $01, $01, nRst, nB2, nB2
	dc.b	nRst, nB2, nRst, $02, nB1, $01, nRst, $02
	dc.b	nB2, $01, $01, nRst, nG2, nG2, nRst, nE2
	dc.b	nE2, nRst, nE3, nB1, nRst, nA2, nA2, nRst
	dc.b	nA2, nA2, nRst, nA2, nRst, $02, nB2, $01
	dc.b	nRst, $02, nA2, $01, $01, nRst, nA2, nA2
	dc.b	nRst, nA2, nRst, $02, nB1, $01, nRst, $02
	dc.b	nG1, $01, $01, nRst, nG1, nG1, nRst, nG1
	dc.b	nRst, $02, nB2, $01, nRst, $02, nG2, $01
	dc.b	$01, nRst, nFs2, nFs2, nRst, nB1, nB1, nRst
	dc.b	nB2

DMR_Loop25:
	dc.b	nC3

DMR_Loop23:
	dc.b	$01, nRst, nB2
	smpsLoop		$00, $03, DMR_Loop23, Target
	dc.b	nRst, $02, nC2, $01, nRst, $02, nB2, $01
	dc.b	$01, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01, $01, nRst
	dc.b	nB2, nB2, nRst, nB2, nRst, $02, nB1, $01
	dc.b	nRst, $02, nB2, $01, $01, nRst, nG2, nG2
	dc.b	nRst, nE2, nE2, nRst, nE3, nC3, nRst, nB2

DMR_Loop24:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loop24, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3
	smpsLoop		$01, $02, DMR_Loop25, Target
	dc.b	nC3, nRst, nB2, nB2, nRst, nB2, nB2, nRst
	dc.b	nB2, nRst, $02, nC2, $01, nRst, $02, nB2
	dc.b	$01, $01, nRst, nB2, nB2, nRst, nB2, nRst
	dc.b	$02, nC3, $01, nRst, $02, nB2, $01, $01
	dc.b	nRst, nB2, nB2, nRst, nB2, nRst, $02, nB1
	dc.b	$01, nRst, $02, nB2, $01, $01, nRst, nG2
	dc.b	nG2, nRst, nE2, nE2, nRst, nE3, nRst, $30
	smpsJump		DMR_Loop25, Target

DMR_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01
	;!@ dc.b	nRst, $33, $24
	dc.b	nRst, $33, nRst, $24
	smpsAlterNote	$E3
	dc.b	nBb4, $01
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$19
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$DF
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	;!@ dc.b	smpsNoAttack, nA4, nRst, $06, $33, $1E
	dc.b	smpsNoAttack, nA4, nRst, $06, nRst, $33, nRst, $1E
	smpsAlterNote	$13
	dc.b	nA4, $01
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$EC
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$EA
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$02
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	;!@ dc.b	nRst, $33, $33, $33, $21, nE3, $06, nE4
	dc.b	nRst, $33, nRst, $33, nRst, $33, nRst, $21, nE3, $06, nE4
	dc.b	$18, nFs4, $09, nG4, nD5, nRst, $15, nFs4
	dc.b	$09, nG4, nD5, $06, nB4, $18, nCs5, $09
	dc.b	nD5, nE5, $06, nA4, $18, nG4, nRst, $33
	;!@ dc.b	$33, $33, $1E, nA4, $01
	dc.b	nRst, $33, nRst, $33, nRst, $1E, nRst, nA4, nRst, $01
	smpsAlterNote	$FA
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$0A
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$1D
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$EF
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$0A
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$FE
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$FC
	dc.b	nRst, $15, nB4, $01, nRst, nFs4

DMR_Loop26:
	dc.b	nG4, $03, nD5, $01, nRst, $2B, nFs4, $01
	smpsLoop		$00, $03, DMR_Loop26, Target
	dc.b	nG4, $03, nD5, $01, nRst, $14, nE4, $18
	dc.b	nFs4, $09, nG4, nD5, nRst, $15, nFs4, $09
	dc.b	nG4, nD5, $06, nB4, $18, nCs5, $09, nD5
	;!@ dc.b	nE5, $06, nA4, $18, nG4, nRst, $33, $33
	dc.b	nE5, $06, nA4, $18, nG4, nRst, $33, nRst, $33
	;!@ dc.b	$33, $1E
	dc.b	nRst, $33, nRst, $1E
	smpsAlterNote	$00
	dc.b	nA4, $01
	smpsAlterNote	$FA
	dc.b	smpsNoAttack, nB4
	smpsAlterNote	$0A
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$1D
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote	$F4
	dc.b	smpsNoAttack, nA4
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote	$F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$13
	dc.b	smpsNoAttack, nG4
	;!@ smpsAlterNote	$FC
	;!@ dc.b	nRst
	smpsAlterNote	$00

DMR_Loop27:
	;!@ dc.b	$2F
	dc.b	nRst, $2F
	smpsLoop		$00, $09, DMR_Loop27, Target			;!@ MAY need decremented!
	;!@ dc.b	$05, nE3, $03, nE4, $18, nFs4, $09, nG4
	dc.b	nRst, $05, nE3, $03, nE4, $18, nFs4, $09, nG4
	dc.b	nD5, nRst, $15, nFs4, $09, nG4, nD5, $06
	dc.b	nB4, $18, nCs5, $09, nD5, nE5, $06, nA4
	;!@ dc.b	$30, nG4, $18, nRst
	dc.b	$30, nG4, $18

DMR_Loop28:
	;!@ dc.b	$2A
	dc.b	nRst, $2A
	smpsLoop		$00, $0C, DMR_Loop28, Target			;!@ MAY need decremented!

DMR_Jump1:
	dc.b	nB1

DMR_Loop29:
	dc.b	$0C
	smpsLoop		$00, $10, DMR_Loop29, Target

DMR_Loop30:
	dc.b	$06
	smpsLoop		$00, $10, DMR_Loop30, Target
	smpsJump		DMR_Jump1, Target

DMR_FM3:
	smpsPan		panCenter
	smpsFMvoice		$02
	;!@ dc.b	nRst

DMR_Loop31:
	;!@ dc.b	$26
	dc.b	nRst, $26
	smpsLoop		$00, $0F, DMR_Loop31, Target
	dc.b	nB3, $06, nFs4, nRst, $03, nB4, $06, nFs4
	dc.b	nRst, $15, nB3, $06, nG4, nB4, nRst, $03
	dc.b	nG4, $06, nRst, $15, nB4, $06, nA4, nRst
	dc.b	nA4, nCs5, nRst, $12, nB3, $06, nG4, nB4
	;!@ dc.b	nRst, $03, nG4, $06, nRst
	dc.b	nRst, $03, nG4, $06

DMR_Loop32:
	;!@ dc.b	$2D
	dc.b	nRst, $2D
	smpsLoop		$00, $09, DMR_Loop32, Target
	dc.b	nB3, $06, nFs4, nRst, $03, nB4, $06, nFs4
	dc.b	nRst, $15, nB3, $06, nG4, nB4, nRst, $03
	dc.b	nG4, $06, nRst, $15, nB4, $06, nA4, nRst
	dc.b	nA4, nCs5, nRst, $12, nB3, $06, nG4, nB4
	;!@ dc.b	nRst, $03, nG4, $06, nRst
	dc.b	nRst, $03, nG4, $06, nRst

DMR_Loop33:
	;!@ dc.b	$21
	dc.b	nRst, $21
	smpsLoop		$00, $15, DMR_Loop33, Target
	dc.b	nB3, $06, nFs4, nRst, $03, nB4, $06, nFs4
	dc.b	nRst, $15, nB3, $06, nG4, nB4, nRst, $03
	dc.b	nG4, $06, nRst, $15, nB4, $06, nA4, nRst
	dc.b	nA4, nCs5, nRst, $12, nB3, $06, nG4, nB4
	dc.b	nRst, $03, nG4, $06, nRst, $15, nB4, $06
	dc.b	nA4, $03, nRst, $01, nFs4, $05, nB4, $03
	dc.b	nA4, nB4, nCs5, nD5, $09, nRst, $0C, nB3
	dc.b	$06, nFs4, nRst, $03, nB4, $06, nFs4, nRst
	dc.b	$15, nB3, $06, nG4, nB4, nRst, $03, nG4
	dc.b	$06, nRst, $15, nB4, $06, nA4, nRst, nA4
	dc.b	nCs5, nRst, $12, nB3, $06, nG4, nB4, nRst
	dc.b	$03, nG4, $06, nRst, $15, nB4, $06, nA4
	dc.b	$03, nRst, $01, nFs4, $05, nB4, $03, nA4
	dc.b	nB4, nCs5, nD5, $09, nRst, $12

DMR_Loop34:
	dc.b	nB3, $03, nFs4, nCs5, nD4, nG4, nD5, nRst
	dc.b	$09, nA4, $03, nE5, nB3, nFs4, nCs5, nRst
	dc.b	$06
	smpsLoop		$00, $06, DMR_Loop34, Target
	smpsJump		DMR_Loop34, Target

DMR_FM4:
	smpsPan		panCenter
	smpsFMvoice		$03
	;!@ dc.b	nRst, $24, $24, $24, $24, $24, $24
	dc.b	nRst, $24, nRst, $24, nRst, $24, nRst, $24, nRst, $24, nRst, $24
	smpsAlterNote	$07
	dc.b	nG2, $01
	smpsAlterNote	$16
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$13
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$F4
	dc.b	smpsNoAttack, nA2
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$09
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$08
	dc.b	smpsNoAttack, nG2
	smpsAlterNote	$07
	dc.b	smpsNoAttack, $03
	smpsAlterNote	$00
	dc.b	nRst, $24
	smpsAlterNote	$0E
	dc.b	nG2, $01
	smpsAlterNote	$F7
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$E3
	dc.b	smpsNoAttack, nA2, $04
	smpsAlterNote	$1A
	dc.b	smpsNoAttack, nG2, $01
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nA2
	smpsAlterNote	$E8
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$FA
	dc.b	smpsNoAttack, nG2, $03
	smpsAlterNote	$00
	dc.b	nRst, $24
	smpsAlterNote	$04
	dc.b	nAb2, $01
	smpsAlterNote	$E1
	dc.b	smpsNoAttack, nA2
	smpsAlterNote	$EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote	$EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$16
	dc.b	smpsNoAttack, nG2
	smpsAlterNote	$11
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote	$00
	dc.b	nRst, $24, nG2, $06
	smpsAlterNote	$1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nA2
	smpsAlterNote	$11
	dc.b	smpsNoAttack, nG2
	smpsAlterNote	$FA
	dc.b	smpsNoAttack, $03
	smpsAlterNote	$00
	;!@ dc.b	nRst, $33, $33, $33, $03, nA1, $18, nG1
	;!@ dc.b	nRst
	dc.b	nRst, $33, nRst, $33, nRst, $33, nRst, $03, nA1, $18, nG1

DMR_Loop35:
	;!@ dc.b	$30
	dc.b	nRst, $30
	smpsLoop		$00, $08, DMR_Loop35, Target
	dc.b	nE3, $18, nFs3, nG3, nB3, nRst, $30, nA1
	;!@ dc.b	$18, nG1, nRst
	dc.b	$18, nG1

DMR_Loop36:
	;!@ dc.b	$30
	dc.b	nRst, $30
	smpsLoop		$00, $12, DMR_Loop36, Target
	;!@ dc.b	nFs4, nG4, nFs4, nG4, nFs4, $18, nG4, nFs4
	dc.b	nFs4, $30, nG4, nFs4, nG4, nFs4, $18, nG4, nFs4
	dc.b	$30, nG4, nFs4, nG4, nFs4, $18, nG4

DMR_Jump2:
	;!@ dc.b	nRst, $30, $30, $30, $30, $30, $30
	dc.b	nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30
	smpsJump		DMR_Jump2, Target

DMR_FM5:
	smpsFMvoice		$04
	smpsPan		panCenter
	;!@ dc.b	nRst

DMR_Loop37:
	;!@ dc.b	$30
	dc.b	nRst, $30
	smpsLoop		$00, $1C, DMR_Loop37, Target

DMR_Loop38:
	dc.b	nE2, $18, nC2, $0C, nD2
	smpsLoop		$00, $04, DMR_Loop38, Target
	dc.b	nG2, $18

DMR_Loop39:
	dc.b	nC2, $0C, nD2, nE2, $18
	smpsLoop		$00, $06, DMR_Loop39, Target
	dc.b	nB1, $0C, nD2, nB1, $18, nFs1, $0C, nG1
	;!@ dc.b	nA1, $18, nFs1, $0C, nB1, nG1, $18, nRst
	dc.b	nA1, $18, nFs1, $0C, nB1, nG1, $18

DMR_Loop40:
	;!@ dc.b	$2A
	dc.b	nRst, $2A
	smpsLoop		$00, $0C, DMR_Loop40, Target

DMR_Jump3:
	;!@ dc.b	nRst, $30, $30, $30, $30, $30, $30
	dc.b	nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30
	smpsJump		DMR_Jump3, Target

DMR_FM6:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $18
	dc.b	nC2, $01, nRst, $22, nB1, $01, nRst, $0C
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB1, nB1, nRst, nB1
	dc.b	nRst, $0F, nC2, $01, nRst, $2F, nC2, $01
	dc.b	nRst, $16, nB1, $01, nRst, $18, nC2, $01
	dc.b	nRst, $22, nC2, $01, nRst, $0C, nC2, $01
	dc.b	nRst, $16, nC2, $01, nRst, $02, nB1, $01
	dc.b	$01, nRst, nB1, nB1, nRst, nB1, nRst, $0F
	dc.b	nC2, $01, nRst, $2F, nF1, $01, nRst, $2F
	dc.b	nF1, $01, nRst, $2F, nC2, $01, nRst, $2F
	dc.b	nG2, $01, nRst, $2F

DMR_Loop41:
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB1, nB1, nRst, nB1
	dc.b	nRst, $0F
	smpsLoop		$00, $04, DMR_Loop41, Target
	dc.b	nC2, $01, nRst, $16, nB1, $01, nRst, $18
	dc.b	nC2, $01, nRst, $22, nC2, $01, nRst, $0C
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB1, nB1, nRst, nB1
	dc.b	nRst, $0F, nC2, $01, nRst, $2F, nF1, $01
	dc.b	nRst, $2F, nF1, $01, nRst, $2F, nC2, $01
	dc.b	nRst, $2F, nG2, $01, nRst, $2F

DMR_Loop42:
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB1, nB1, nRst, nB1
	dc.b	nRst, $0F
	smpsLoop		$00, $03, DMR_Loop42, Target
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB1, nB1, nRst, nB1
	dc.b	nRst

DMR_Loop43:
	dc.b	$25
	smpsLoop		$00, $0B, DMR_Loop43, Target
	dc.b	$28, nF1, $01, nRst, $2F, nF1, $01, nRst
	dc.b	$2F, nC2, $01, nRst, $2F, nG2, $01, nRst
	;!@ dc.b	$17, nG2, $01, nRst, $33, $14
	dc.b	$17, nG2, $01, nRst, $33, nRst, $14

DMR_Loop44:
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $02
	dc.b	nB1, $01, $01, nRst, nB1, nB1, nRst, nB1
	dc.b	nRst, $0F
	smpsLoop		$00, $04, DMR_Loop44, Target
	dc.b	nB1, $01, nRst, $16, nB1, $01, nRst, $02
	dc.b	nG1, $01, $01, nRst, nG1, nG1, nRst, nG1
	dc.b	nRst, $0F

DMR_Loop45:
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $18
	dc.b	nC2, $01, nRst, $22, nB1, $01, nRst, $0C
	smpsLoop		$00, $02, DMR_Loop45, Target
	dc.b	nB1, $01, nRst, $16, nB1, $01, nRst, $02
	dc.b	nG1, $01, $01, nRst, nG1, nG1, nRst, nG1
	dc.b	nRst, $0F

DMR_Loop46:
	dc.b	nC2, $01, nRst, $22, nB1, $01, nRst, $0C
	dc.b	nC2, $01, nRst, $16, nC2, $01, nRst, $18
	smpsLoop		$00, $02, DMR_Loop46, Target
	dc.b	nC2, $01, nRst, $22, nB1, $01, nRst, $33
	dc.b	$09
	smpsJump		DMR_Loop46, Target

DMR_PSG1:
	;!@ dc.b	nRst, $33, $21
	dc.b	nRst, $33, nRst, $21
	smpsPSGvoice	$00
	dc.b	$03
	smpsAlterNote	$06
	dc.b	nBb1, $01
	smpsAlterNote	$05
	dc.b	smpsNoAttack, nB1
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$02
	dc.b	smpsNoAttack, nB1
	smpsAlterNote	$00
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote	$07
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$05
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$00
	;!@ dc.b	smpsNoAttack, nA1, nRst, $06, $33, $1E
	dc.b	smpsNoAttack, nA1, nRst, $06, nRst, $33, nRst, $1E
	smpsAlterNote	$FC
	dc.b	nA1, $01
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nB1
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote	$05
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$02
	dc.b	smpsNoAttack, nB1
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nA1
	smpsAlterNote	$00
	dc.b	smpsNoAttack, $01, nRst, $18

DMR_Loop47:
	smpsAlterNote	$7F
	;!@ dc.b	$0C
	dc.b	nRst, $0C
	smpsAlterNote	$00
	;!@ dc.b	$24
	dc.b	nRst, $24
	smpsLoop		$00, $02, DMR_Loop47, Target
	smpsAlterNote	$7F
	;!@ dc.b	$03
	dc.b	nRst, $03
	smpsAlterNote	$00
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$7F
	;!@ dc.b	$08
	dc.b	nRst, $08
	smpsAlterNote	$00
	;!@ dc.b	$2A
	dc.b	nRst, $2A
	smpsAlterNote	$7F
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterNote	$00
	;!@ dc.b	$06, nC0, nE0, $18, nFs0, $09, nG0, nD1
	dc.b	nRst, $06, nC0, nE0, $18, nFs0, $09, nG0, nD1
	dc.b	nRst, $15, nFs0, $09, nG0, nD1, $06, nB0
	dc.b	$18, nCs1, $09, nD1, nE1, $06, nA0, $18
	;!@ dc.b	nG0, nRst, $33, $33, $33, $1E, nA0, $01
	dc.b	nG0, nRst, $33, nRst, $33, nRst, $33, nRst, $1E, nA0, $01
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nB0
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nBb0
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nA0
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, nBb0, smpsNoAttack, nB0
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nBb0
	smpsAlterNote	$01
	dc.b	smpsNoAttack, nA0
	smpsAlterNote	$02
	;!@ dc.b	nRst, $15, nB0, $01, nRst, $33, $33, $33	
	dc.b	nRst, $15, nB0, $01, nRst, $33, nRst, $33, nRst, $33
	dc.b	$0B, nC0, $06, nE0, $18, nFs0, $09, nG0
	dc.b	nD1, nRst, $15, nC0, $09, nG0, nD1, $06
	dc.b	nC0, $18, nCs1, $09, nD1, nE1, $06, nA0
	;!@ dc.b	$18, nG0, nRst, $33, $33, $33, $1E
	dc.b	$18, nG0, nRst, $33, nRst, $33, nRst, $33, nRst, $1E
	smpsAlterNote	$00
	dc.b	nA0, $01
	smpsAlterNote	$04
	dc.b	smpsNoAttack, nB0
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, nBb0
	smpsAlterNote	$F3
	dc.b	smpsNoAttack, nA0
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, nBb0
	smpsAlterNote	$06
	dc.b	smpsNoAttack, nA0
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, nAb0
	smpsAlterNote	$08
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F5
	dc.b	smpsNoAttack, nG0
	;!@ smpsAlterNote	$02
	;!@ dc.b	nRst
	;!@ smpsAlterNote	$00

DMR_Loop48:
	;!@ dc.b	$22
	dc.b	nRst, $22
	smpsLoop		$00, $0D, DMR_Loop48, Target
	;!@ dc.b	$25, nE0, $18, nRst, $33, $15, nE1, $30
	dc.b	nRst, $25, nE0, $18, nRst, $33, nRst, $15, nE1, $30
	;!@ dc.b	nD1, nRst, $33, $15
	dc.b	nD1, nRst, $33, nRst, $15
	smpsPSGvoice	$36
	;!@ dc.b	$18, nB0, $30, $30, nA0, $18, nB0, nRst
	dc.b	nRst, $18, nB0, $30, $30, nA0, $18, nB0, nRst
	dc.b	$01, nFs0, $2F, nRst, $01, nG0, $2F, nB0
	;!@ dc.b	$30, $30, nA0, $18, nB0
	dc.b	$30, nB0, $30, nA0, $18, nB0

DMR_Jump4:
	;!@ dc.b	nRst, $30, $30, $30, $30, $30, $30
	dc.b	nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30
	smpsJump		DMR_Jump4, Target

DMR_PSG2:
	;!@ dc.b	nRst, $33, $24
	dc.b	nRst, $33, nRst, $24
	smpsAlterNote	$7F
	;!@ dc.b	$05
	dc.b	nRst, $05
	smpsAlterNote	$00
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$7F
	;!@ dc.b	$02
	dc.b	nRst, $02
	smpsAlterNote	$00
	;!@ dc.b	$07, $33, $1E
	dc.b	nRst, $07, nRst, $33, nRst, $1E
	smpsAlterNote	$7F
	;!@ dc.b	$02
	dc.b	nRst, $02
	smpsAlterNote	$00
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$7F
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterNote	$00
	;!@ dc.b	$18
	dc.b	nRst, $18

DMR_Loop49:
	smpsAlterNote	$7F
	;!@ dc.b	$0C
	dc.b	nRst, $0C
	smpsAlterNote	$00
	;!@ dc.b	$24
	dc.b	nRst, $24
	smpsLoop		$00, $02, DMR_Loop49, Target
	smpsAlterNote	$7F
	;!@ dc.b	$03
	dc.b	nRst, $03
	smpsAlterNote	$00
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$7F
	;!@ dc.b	$08
	dc.b	nRst, $08
	smpsAlterNote	$00
	;!@ dc.b	$24
	dc.b	nRst, $24
	smpsPSGvoice	$00
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterNote	$7F
	;!@ dc.b	$06
	dc.b	nRst, $06
	smpsAlterNote	$00
	;!@ dc.b	$06, nC0, nC0, $18, $09, $09, nD0, $06
	dc.b	nRst, $06, nC0, nC0, $18, $09, $09, nD0, $06
	dc.b	nE0, $18, nC0, $09, $09, nD0, $06, nC0
	dc.b	$18, nCs0, $09, nD0, nE0, $06, nC0, $18
	;!@ dc.b	$18, nRst, $33, $33, $33, $1F
	dc.b	nC0, $18, nRst, $33, nRst, $33, nRst, $33, nRst, $1F
	smpsAlterNote	$7F
	;!@ dc.b	$08, $33, $33, $33, $21, nC0, $06, $18
	dc.b	nRst, $08, nRst, $33, nRst, $33, nRst, $33, nRst, $21, nC0, $06, nC0, $18
	;!@ dc.b	$09, $09, nD0, $06, nE0, $18, nC0, $09
	dc.b	nC0, $09, nC0, $09, nD0, $06, nE0, $18, nC0, $09
	;!@ dc.b	$09, nD0, $06, nC0, $18, nCs0, $09, nD0
	dc.b	nC0, $09, nD0, $06, nC0, $18, nCs0, $09, nD0
	;!@ dc.b	nE0, $06, nC0, $18, $18, nRst, $33, $33
	dc.b	nE0, $06, nC0, $18, nC0, $18, nRst, $33, nRst, $33
	;!@ dc.b	$33, $1E
	dc.b	nRst, $33, nRst, $1E
	smpsAlterNote	$00
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$04
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$FC
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F3
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$0C
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$06
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F8
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$08
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F5
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$02
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$00

DMR_Loop50:
	;!@ dc.b	$29
	dc.b	nRst, $29
	smpsLoop		$00, $0D, DMR_Loop50, Target
	;!@ dc.b	$2A, nA0, $30, nG0
	dc.b	nRst, $2A, nA0, $30, nG0
	smpsPSGvoice	$36
	dc.b	nB0, nB0, nD1, nD1, nCs1, $18, nD1, nB0
	;!@ dc.b	$30, $30, nD1, nD1, nCs1, $18, nD1
	dc.b	$30, nB0, $30, nD1, nD1, nCs1, $18, nD1

DMR_Jump5:
	smpsPSGvoice	$00
	;!@ dc.b	nC0

DMR_Loop51:
	;!@ dc.b	$0C
	dc.b	nC0, $0C
	smpsLoop		$00, $10, DMR_Loop51, Target

DMR_Loop52:
	;!@ dc.b	$06
	dc.b	nC0, $06
	smpsLoop		$00, $10, DMR_Loop52, Target
	smpsJump		DMR_Jump5, Target

DMR_PSG3:
	;!@ dc.b	nRst, $24, $24, $24, $24, $24, $24
	dc.b	nRst, $24, nRst, $24, nRst, $24, nRst, $24, nRst, $24, nRst, $24
	smpsPSGvoice	$12
	smpsAlterNote	$FC
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F2
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F6
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$06
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$04
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$FB
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$08
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$0F
	;!@ dc.b	nAb0
	dc.b	nAb0, $01
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nG0
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, $03
	smpsAlterNote	$00
	dc.b	nRst, $24
	smpsAlterNote	$F8
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$05
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$0E
	;!@ dc.b	$04
	dc.b	nRst, $04
	smpsAlterNote	$F0
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$05
	dc.b	nA0
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, nAb0
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nG0, $03
	smpsAlterNote	$00
	dc.b	nRst, $24
	smpsAlterNote	$FE
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$0F
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$0A
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$00
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$02
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$09
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F2
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$F6
	dc.b	nG0
	smpsAlterNote	$F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote	$F9
	dc.b	smpsNoAttack, $02
	smpsAlterNote	$00
	dc.b	nRst, $2A
	smpsAlterNote	$F0
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterNote	$05
	dc.b	nA0
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nG0
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $03
	smpsAlterNote	$00
	;!@ dc.b	nRst, $33, $33, $33, $03, nC0, $18, $18
	dc.b	nRst, $33, nRst, $33, nRst, $33, nRst, $03, nC0, $18, nC0, $18
	smpsPSGvoice	$12
	dc.b	nRst, $12, nCs2, $06, nRst, $21, nCs2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $1C, nFs1, $05
	dc.b	nRst, $03, nA1, $06, nCs2, nRst, $12, nB0
	dc.b	$06, nG1, nRst, $03, nCs2, $06, nRst, $03
	dc.b	nD2, $06, nRst, $18
	smpsPSGvoice	$12
	;!@ dc.b	$33, $33, $33, $0F
	dc.b	nRst, $33, nRst, $33, nRst, $33, nRst, $0F
	smpsPSGvoice	$36
	;!@ dc.b	$18, nC0, nC0, nC0, nE0, nD0, $30, nC0
	dc.b	nRst, $18, nC0, nC0, nC0, nE0, nD0, $30, nC0
	;!@ dc.b	$18, $18
	dc.b	$18, nC0, $18
	smpsPSGvoice	$12
	dc.b	nFs0, $06, nRst, $03, nB0, $06, nFs0, $03
	dc.b	nCs1, $06, nRst, $12, nC0, $06, nG0, nB0
	dc.b	$03, nCs1, $06, nG0, $03, nD1, $06, nRst
	dc.b	$12, nB0, $06, nRst, $04, nFs0, $05, nB0
	dc.b	$06, nRst, $1B, nC0, $06, nG0, nB0, $03
	;!@ dc.b	nCs1, $06, nG0, $03, nD1, $06, nRst
	dc.b	nCs1, $06, nG0, $03, nD1, $06

DMR_Loop53:
	;!@ dc.b	$30
	dc.b	nRst, $30
	smpsLoop		$00, $0B, DMR_Loop53, Target
	smpsPSGvoice	$20
	;!@ dc.b	$18, nC0, nC0, $0C, $0C, $18, $0C, $0C
	dc.b	nRst, $18, nC0, nC0, $0C, nC0, $0C, nC0, $18, nC0, $0C, nC0, $0C
	;!@ dc.b	$18
	dc.b	nC0, $18
	smpsPSGvoice	$12
	dc.b	nRst, $12, nC0, $06, nFs0, nRst, $03, nB0
	dc.b	$06, nFs0, $03, nCs1, $06, nRst, $12, nC0
	dc.b	$06, nG0, nB0, $03, nCs1, $06, nG0, $03
	dc.b	nD1, $06, nRst, $12, nB0, $06, nRst, $04
	dc.b	nFs0, $05, nB0, $06, nRst, $03, nCs1, $06
	dc.b	nRst, $12, nC0, $06, nG0, nB0, $03, nCs1
	dc.b	$06, nG0, $03, nD1, $06, nRst, $12, nB0
	dc.b	$06, nA0, $03, nRst, $01, nFs0, $05, nB0
	dc.b	$03, nA0, nB0, nCs1, nD1, $09, nRst, $0C
	dc.b	nC0, $06, nFs0, nRst, $03, nB0, $06, nFs0
	dc.b	$03, nCs1, $06, nRst, $12, nC0, $06, nG0
	dc.b	nB0, $03, nCs1, $06, nG0, $03, nD1, $06
	dc.b	nRst, $12, nB0, $06, nRst, $04, nFs0, $05
	dc.b	nB0, $06, nRst, $03, nCs1, $06, nRst, $12
	dc.b	nC0, $06, nG0, nB0, $03, nCs1, $06, nG0
	dc.b	$03, nD1, $06, nRst, $12, nB0, $06, nA0
	dc.b	$03, nRst, $01, nFs0, $05, nB0, $03, nA0
	dc.b	nB0, nCs1, nD1, $09, nRst, $12

DMR_Jump6:
	;!@ dc.b	nRst, $30, $30, $30, $30, $30, $30
	dc.b	nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30, nRst, $30
	smpsJump		DMR_Jump6, Target
	
DMR_PWM1:
	smpsPan		panCenter
	dc.b	pOpenHH

DMR_PWM1_Loop1:
	dc.b	$03, pClosedHH, $02, $01, $03, pOpenHH
	smpsLoop		$00, $08, DMR_PWM1_Loop1, Target
	dc.b	pOpenHH, pClosedHH, $02, $01, $03, pOpenHH, $02, pESnare
	dc.b	$03, $03, pClosedHH, $01, $03, pOpenHH, pBongoLo, pClosedHH
	dc.b	$02, $01, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, $02, pESnare, $01
	dc.b	pBongoLo, $03, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pOpenHH, pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pBongoLo, $02, pESnare, $01, pTomMid, $03, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, $02, pESnare, $01
	dc.b	pBongoLo, $03, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pOpenHH, pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, pESnare, $03
	dc.b	pBongoLo, $02, pESnare, $01, pTomLow, $02, $01, pClosedHH
	dc.b	$02, $01, pESnare, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH
	dc.b	$02, $01, pESnare, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, $03, pBongoLo, $02, pESnare, $01
	dc.b	pOpenHH, $03, pClosedHH, $02, $01, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, $03, pBongoLo, $02
	dc.b	pESnare, $01, pTomMid, $03, pClosedHH, $02, $01, $03
	dc.b	pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01, pESnare
	dc.b	$03, pBongoLo, pBongoLo, pClosedHH, $02, $01, pESnare, $03
	dc.b	pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $01, pOpenHH, $03, pClosedHH
	dc.b	$02, $01, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, pEKick, $02, $01
	dc.b	pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02, pESnare
	dc.b	$03, $03, pClosedHH, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $01, pBongoLo, $03, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	$03, pBongoLo, pBongoLo, pClosedHH, $02, $01, $03, pOpenHH
	dc.b	$02, pESnare, $03, $03, pClosedHH, $01, $03, pOpenHH
	dc.b	$02, pESnare, $01, pTomLow, $02, $01, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pBongoLo, pOpenHH, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, $02, pASnare, $01, $02, $01, pSplashCymb
	dc.b	$06, pBongoLo, pEKick, $03, pOpenHH, pBongoLo, pOpenHH, pOpenHH
	dc.b	pOpenHH, pESnare, $06, pEKick, $03

DMR_PWM1_Loop2:
	dc.b	pOpenHH
	smpsLoop		$00, $07, DMR_PWM1_Loop2, Target
	dc.b	pEKick, pOpenHH, pBongoLo, pBongoLo, pEKick, $02, $01, pOpenHH
	dc.b	$03, pBongoLo, $06, pEKick, $03, pOpenHH, pOpenHH, pESnare
	dc.b	pEKick, $02, $01, pOpenHH, $03, $03, $03, pEKick
	dc.b	pOpenHH, pESnare, pBongoLo, pOpenHH, pOpenHH, pBongoLo, $06, pOpenHH
	dc.b	$03, $03, $03, pBongoLo, pOpenHH, pOpenHH, pBongoLo, $06
	dc.b	pOpenHH, $03, $03, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pOpenHH
	dc.b	pOpenHH, pOpenHH, pOpenHH, pESnare, pOpenHH, pTomMid, pClosedHH, $02
	dc.b	$01, pESnare, $03, pOpenHH, $02, pESnare, $03, $03
	dc.b	pClosedHH, $01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH, $02
	dc.b	$01, $03, pOpenHH, $02, pESnare, $03, $03, pClosedHH
	dc.b	$01, pESnare, $03, pBongoLo, $02, pESnare, $01, pBongoLo
	dc.b	$03, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, $03, pBongoLo, $02
	dc.b	pESnare, $01, pTomLow, $02, $01, pClosedHH, $02, $01
	dc.b	pESnare, $03, pOpenHH, $02, pESnare, $03, $03, pClosedHH
	dc.b	$01, pESnare, $03, pOpenHH, pBongoLo, pClosedHH, $02, $01
	dc.b	pESnare, $03, pOpenHH, $02, pESnare, $03, $03, pClosedHH
	dc.b	$01, pESnare, $03, pBongoLo, $02, pESnare, $01, pBongoLo
	dc.b	$03, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	pBongoLo, pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pASnare, $02, $01
	dc.b	$02, $01, $02, $01, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	pESnare, $03, pBongoLo, pOpenHH, pClosedHH, $02, $01, $03
	dc.b	pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $01, pASnare, $02, $01
	dc.b	pClosedHH, $02, $01, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, pESnare, $03, pBongoLo, pOpenHH, pClosedHH
	dc.b	$02, $01, pESnare, $03, pOpenHH, $02, pESnare, $03
	dc.b	$03, pClosedHH, $01, $03, pOpenHH, $02, pESnare, $01
	dc.b	pTomLow, $02, pASnare, $01, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	pESnare, $03, pBongoLo, pBongoLo, pClosedHH, $02, $01, pESnare
	dc.b	$03, pOpenHH, $02, pESnare, $03, $03, pClosedHH, $01
	dc.b	pESnare, $03, pOpenHH, $02, pESnare, $01, pBongoLo, $03
	dc.b	pClosedHH, $02, $01, pESnare, $03, pOpenHH, $02, pESnare
	dc.b	$03, $03, pClosedHH, $01, $03, pBongoLo, pEKick, $02
	dc.b	pTomLow, $01, pClosedHH, $02, $01, $03, pOpenHH, $02
	dc.b	pESnare, $03, $03, pClosedHH, $01, pESnare, $03, pOpenHH
	dc.b	$02, pESnare, $01, pOpenHH, $03, $03, pBongoLo, $06
	dc.b	pOpenHH, $03, $03, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pBongoLo
	dc.b	$06, pOpenHH, $03, $03, pESnare, pOpenHH, pOpenHH, pOpenHH
	dc.b	pOpenHH, pOpenHH, pEKick, pOpenHH, pBongoLo, pBongoLo, pOpenHH, pOpenHH
	dc.b	pBongoLo, $06, pEKick, $03, pOpenHH, pOpenHH, pBongoLo, pOpenHH
	dc.b	pOpenHH, pBongoLo, $06, pOpenHH, $03, $03, pBongoLo, pESnare
	dc.b	pEKick, $02, $01, pOpenHH, $03, $03, $03, pEKick
	dc.b	pOpenHH, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pBongoLo, $06, pEKick
	dc.b	$03, pOpenHH, pOpenHH, pOpenHH, pOpenHH, pOpenHH, pBongoLo, $06
	dc.b	pOpenHH, $03, $03, pBongoLo, pOpenHH, pClosedHH, $06, $06
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05
	dc.b	pSplashCymb, $06, pClosedHH, pESnare, pClosedHH, pEKick, pClosedHH, pESnare
	dc.b	pClosedHH, pClosedHH, pEKick, pESnare, pClosedHH, pEKick, pClosedHH, pESnare
	dc.b	$07, pClosedHH, $05, pSplashCymb, $06, pEKick

DMR_PWM1_Loop3:
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, DMR_PWM1_Loop3, Target
	dc.b	pESnare, $07, pClosedHH, $05, pSplashCymb, $06

DMR_PWM1_Loop4:
	dc.b	pOpenHH
	smpsLoop		$00, $07, DMR_PWM1_Loop4, Target
	dc.b	pClosedHH, pClosedHH, pESnare, pClosedHH

DMR_PWM1_Loop6:
	dc.b	pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05, pSplashCymb

DMR_PWM1_Loop5:
	dc.b	$06, pClosedHH, pESnare, pClosedHH
	smpsLoop		$00, $03, DMR_PWM1_Loop5, Target
	smpsLoop		$01, $02, DMR_PWM1_Loop6, Target
	dc.b	pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05, $06, $06
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare, $07, pClosedHH, $05
	dc.b	pSplashCymb, $06, pClosedHH, pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare
	dc.b	pClosedHH, $0C, $06, pESnare, pClosedHH, pClosedHH, pClosedHH, pEKick
	dc.b	$03, $03, pASnare, $06, pSplashCymb, pBongoLo

DMR_PWM1_Loop7:
	dc.b	pOpenHH, $03, $03, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pBongoLo
	dc.b	$06
	smpsLoop		$00, $07, DMR_PWM1_Loop7, Target
	dc.b	pOpenHH, $03, $03, pBongoLo, pOpenHH, pEKick, $02, $01
	dc.b	pClosedHH, $03, $03, $03, pEKick, pOpenHH, pBongoLo, pClosedHH
	dc.b	pEKick, $02, $01, pOpenHH, $03, pESnare, $06, pOpenHH
	dc.b	$03, $03, $03, pESnare

DMR_PWM1_Loop8:
	dc.b	pOpenHH
	smpsLoop		$00, $0A, DMR_PWM1_Loop8, Target
	dc.b	pESnare, $06, pEKick, $03, pOpenHH, pOpenHH, pBongoLo, pEKick
	dc.b	$02, $01, pOpenHH, $03, $03, $03, pEKick, pOpenHH
	dc.b	pESnare, pOpenHH, pOpenHH, pOpenHH, pBongoLo, $06, pEKick, $03
	dc.b	pOpenHH, pESnare, pOpenHH, pEKick, $02, $01, pOpenHH, $03
	dc.b	$03, $03, $03, $03, pBongoLo, pOpenHH, pOpenHH, pOpenHH
	dc.b	pESnare, $06, pOpenHH, $03, $03, pESnare, pESnare, pEKick
	dc.b	$02, $01, pClosedHH, $03, pBongoLo, $06, pOpenHH, $03
	dc.b	$03, $03, pESnare, pOpenHH, pOpenHH, pESnare, $06, pEKick
	dc.b	$03, pOpenHH, pOpenHH, pBongoLo, pEKick, $02, $01, pOpenHH
	dc.b	$03, $03, $03, pEKick, pOpenHH, pESnare, pOpenHH, pEKick
	dc.b	$02, $01, pOpenHH, $03, pBongoLo, $06, pEKick, $03
	dc.b	pOpenHH, pBongoLo, pESnare

DMR_PWM1_Jump1:
	dc.b	pEKick, $02, $01, pOpenHH, $03, pESnare, $06, pEKick
	dc.b	$03, pOpenHH, pBongoLo, pESnare, pOpenHH, pOpenHH, pESnare, $06
	dc.b	pEKick, $03, pOpenHH, pBongoLo, pBongoLo, pOpenHH, pOpenHH, pESnare
	dc.b	$06, pOpenHH, $03, $03, pBongoLo, pBongoLo, pEKick, $02
	dc.b	$01, pOpenHH, $03, $03, $03, pEKick, pOpenHH, pOpenHH
	dc.b	pOpenHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pOpenHH, pOpenHH, pOpenHH
	dc.b	pClosedHH, pOpenHH, pOpenHH, pBongoLo, $06, pEKick, $03, pOpenHH
	dc.b	pBongoLo, pOpenHH, pEKick, $02, $01, pOpenHH, $03, pESnare
	dc.b	$06, pEKick, $03, pOpenHH, pBongoLo, pESnare, pOpenHH, pOpenHH
	dc.b	pESnare, $06, pEKick, $03, pOpenHH, pBongoLo, pBongoLo, pOpenHH
	dc.b	pOpenHH, pESnare, $06, pOpenHH, $03, $03, pBongoLo, pBongoLo
	dc.b	pEKick, $02, $01, pOpenHH, $03, $03, $03, pEKick
	dc.b	pOpenHH, pOpenHH, pBongoLo, pEKick, $02, $01, pOpenHH, $03
	dc.b	pBongoLo, $06, pEKick, $03, pOpenHH, pESnare, pBongoLo, pOpenHH
	dc.b	pOpenHH, $02, pClosedHH, $01, pASnare, $02, $01, pOpenHH
	dc.b	$03, $03, pClosedHH, $02, $07
	smpsJump		DMR_PWM1_Jump1, Target
	
DMR_PWM2:
	dc.b	nRst, $33, $2A, pBongoLo, $03, pTomMid, $06, pESnare
	dc.b	pOpenHH, $03, pClosedHH, pESnare, $06, pOpenHH, pESnare, pOpenHH
	dc.b	$03, pClosedHH

DMR_PWM2_Loop1:
	dc.b	pClosedHH, pOpenHH, pOpenHH, $06, pClosedHH, pOpenHH, $03, pEKick
	dc.b	pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH, $03, pEKick
	smpsLoop		$00, $03, DMR_PWM2_Loop1, Target
	dc.b	pClosedHH, pOpenHH, pEKick, $02, $04, pClosedHH, $06, pOpenHH
	dc.b	$03, pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH, $03
	dc.b	pClosedHH, pESnare, pOpenHH, pEKick, $02, $04, pESnare, $06
	dc.b	pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH
	dc.b	$03, pEKick, pESnare, pOpenHH, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$03, pClosedHH, pClosedHH, pOpenHH, pOpenHH, $06, pClosedHH, pOpenHH
	dc.b	$03, pClosedHH, pClosedHH, $06, pASnare, $02, pTomLow, $04
	dc.b	pESnare, $06, pOpenHH, $03, pClosedHH, pClosedHH, pOpenHH, pTomLow
	dc.b	$02, $04, pClosedHH, $06, pOpenHH, $03, pClosedHH, pClosedHH
	dc.b	$06, pTomLow, $02, pEKick, $04, pClosedHH, $06, pOpenHH
	dc.b	$03, pClosedHH, pESnare, pOpenHH, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$03, pEKick, pESnare, $06, pASnare, $02, pEKick, $04
	dc.b	pClosedHH, $06, pOpenHH, $03, pEKick, pClosedHH, pOpenHH, pTomLow
	dc.b	$02, $04, pClosedHH, $06, pOpenHH, $03, pEKick, pESnare
	dc.b	pOpenHH, $02, pESnare, $01, pEKick, $02, $01, pClosedHH
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, $05, $04, pESnare, $03
	dc.b	pEKick, $02, $04, pBongoLo, $06, pOpenHH, $05, pEKick
	dc.b	$04, pESnare, $03, pEKick, $02, $04, pESnare, $06
	dc.b	pOpenHH, $05, pEKick, $04, pOpenHH, $03, $06, $03
	dc.b	$03, $05, pEKick, $04, pBongoLo, $03, pOpenHH, $06
	dc.b	pESnare, pOpenHH, $09, $03, pEKick, $02, $04, pOpenHH
	dc.b	$03, $03, pEKick, $05, pClosedHH, $04, pESnare, $03
	dc.b	pEKick, $02, $04, pESnare, $06, pEKick, $05, pClosedHH
	dc.b	$04, pOpenHH, $03, pEKick, $02, $04, pBongoLo, $06
	dc.b	pEKick, $05, pClosedHH, $04, pESnare, $03, pOpenHH, $06
	dc.b	pClosedHH, pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pESnare
	dc.b	pOpenHH, $03, pClosedHH, pClosedHH, pOpenHH, pOpenHH, $06, pClosedHH
	dc.b	pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH
	dc.b	$03, pClosedHH, pESnare, pOpenHH, pEKick, $02, $04, pClosedHH
	dc.b	$06, pOpenHH, $03, pClosedHH, pClosedHH, $06, pTomLow, $02
	dc.b	$04, pClosedHH, $06, pOpenHH, $03, pEKick, pClosedHH, pOpenHH
	dc.b	pEKick, $02, pTomLow, $04, pClosedHH, $06, pOpenHH, $03
	dc.b	pEKick, pClosedHH, $06, pOpenHH, pClosedHH, pOpenHH, $03, pClosedHH
	dc.b	pESnare, pOpenHH, $02, pESnare, $01, pTomMid, $06, pClosedHH
	dc.b	pOpenHH, $03, pClosedHH, pClosedHH, pOpenHH, pBongoLo, $06, pESnare
	dc.b	pOpenHH, $03, pEKick, pClosedHH, $06, pOpenHH, pESnare, pOpenHH
	dc.b	$03, pEKick, pClosedHH, pOpenHH, pTomLow, $02, $04, pClosedHH
	dc.b	$06, pOpenHH, $03, pEKick, pESnare, $06, pEKick, $02
	dc.b	pTomLow, $04, pClosedHH, $06, pOpenHH, $03, pEKick, pClosedHH
	dc.b	pOpenHH, pOpenHH, $06, pClosedHH, pOpenHH, $03, pEKick, pClosedHH
	dc.b	$06, pTomLow, $02, pASnare, $04, pClosedHH, $06, pOpenHH
	dc.b	$03, pEKick, pESnare, pOpenHH, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$03, pEKick, pClosedHH, $06, pEKick, $02, $01, pClosedHH
	dc.b	$03, pOpenHH, pClosedHH, pEKick, $05, pClosedHH, $04, pOpenHH
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, $03, pEKick
	dc.b	$05, pClosedHH, $04, pESnare, $03, pEKick, $02, $04
	dc.b	pESnare, $06, pOpenHH, $05, pClosedHH, $04, pOpenHH, $03
	dc.b	pEKick, $02, $04, pESnare, $06, pOpenHH, $09, pESnare
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, $03, pEKick
	dc.b	$05, pClosedHH, $04, pBongoLo, $03, pOpenHH, $06, pBongoLo
	dc.b	pOpenHH, $09, $03, pEKick, $02, $04, pOpenHH, $03
	dc.b	$03, $09, pESnare, $03, pEKick, $02, $04, pOpenHH
	dc.b	$03, $03, pEKick, $05, pClosedHH, $04, pESnare, $03
	dc.b	pEKick, $06, $12, $18, pClosedHH, $06, pEKick, $12
	dc.b	pClosedHH, $18, pEKick, $06, pClosedHH, $12, $18, $06
	dc.b	$12, pEKick, $18, $06, $12, $18, pClosedHH, $06
	dc.b	$06, pESnare, pClosedHH, pClosedHH, pClosedHH, pESnare, pClosedHH, pEKick
	dc.b	pEKick

DMR_PWM2_Loop2:
	dc.b	$12, $18, pClosedHH, $06, pEKick, $12, $18, $06
	smpsLoop		$00, $02, DMR_PWM2_Loop2, Target
	dc.b	$12, $18, $06, $12, $18, pClosedHH, $06, pEKick
	dc.b	$12, $18, pClosedHH, $06, pEKick, $12, $09, $03
	dc.b	pESnare, $07, pClosedHH, $05, pOpenHH, $03, $03, $03

DMR_PWM2_Loop3:
	dc.b	$03, pEKick, $05, pClosedHH, $04, pOpenHH, $03, pEKick
	dc.b	$02, $04, pOpenHH, $03
	smpsLoop		$00, $07, DMR_PWM2_Loop3, Target
	dc.b	$03, pEKick, $05, pClosedHH, $04, pESnare, $03, pClosedHH
	dc.b	pOpenHH, pESnare, $06, pClosedHH, $05, $04, pBongoLo, $03
	dc.b	pOpenHH, $06, pBongoLo, pEKick, $05, $04, pOpenHH, $03
	dc.b	pEKick, $02, $04, pESnare, $06, pEKick, $05, $04
	dc.b	pESnare, $03, pEKick, $02, $04, pOpenHH, $03, $03
	dc.b	$05, pClosedHH, $04, pOpenHH, $03, $06, pESnare, pOpenHH
	dc.b	$05, pEKick, $04, pESnare, $03, pEKick, $02, $04
	dc.b	pOpenHH, $03, $03, $05, pClosedHH, $04, pBongoLo, $03
	dc.b	pOpenHH, $06, pBongoLo, pEKick, $09, pBongoLo, $03, pEKick
	dc.b	$02, $04, pBongoLo, $06, pEKick, $09, pOpenHH, $03
	dc.b	pClosedHH, pOpenHH, pOpenHH, pClosedHH, pEKick, $05, pClosedHH, $04
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, $03, $05
	dc.b	pClosedHH, $04, pOpenHH, $03, $06, pESnare, pOpenHH, $05
	dc.b	pEKick, $04, pESnare, $03, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$05, pClosedHH, $04, pOpenHH, $03

DMR_PWM2_Jump1:
	dc.b	pOpenHH, $06, pBongoLo, pOpenHH, $09, pBongoLo, $03, pEKick
	dc.b	$02, $04, pBongoLo, $06, pOpenHH, $05, pEKick, $04
	dc.b	pESnare, $03, pEKick, $02, $04, pOpenHH, $03, $03
	dc.b	pEKick, $09, pESnare, $03, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$05, pEKick, $04, pESnare, $03, pSplashCymb, $06, pBongoLo
	dc.b	pEKick, $05, $04, pESnare, $03, pEKick, $02, $04
	dc.b	pOpenHH, $03, $03, $05, pClosedHH, $04, pESnare, $03
	dc.b	pOpenHH, $06, pBongoLo, pOpenHH, $09, pBongoLo, $03, pEKick
	dc.b	$02, $04, pBongoLo, $06, pOpenHH, $05, pEKick, $04
	dc.b	pESnare, $03, pEKick, $02, $04, pOpenHH, $03, $03
	dc.b	pEKick, $09, pESnare, $03, pOpenHH, $06, pESnare, pOpenHH
	dc.b	$05, pEKick, $04, pOpenHH, $03, $06, $03, $03
	dc.b	$09, $03, pClosedHH, $02, $01, $03, pBongoLo, $06
	dc.b	pClosedHH, $02, $01, pBongoLo, $02, pASnare, $01, pSplashCymb
	dc.b	$06
	smpsJump		DMR_PWM2_Jump1, Target
	
DMR_PWM3:
	dc.b	nRst, $33, $33, $09, pEKick, $18, $18, pClosedHH
	dc.b	pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, $09, pTomMid, $0F
	dc.b	pClosedHH, $09, pTomLow, $02, pEKick, $0D, $09, pTomLow
	dc.b	$02, $0D, pClosedHH, $09, pTomLow, $02, $0D, pClosedHH
	dc.b	$09, pEKick, $02, $0D, $18, $09, $02, $0D
	dc.b	$09, pOpenHH, $0F, pEKick, $09, pTomMid, $0F, pEKick
	dc.b	$18, pClosedHH, $09, pBongoLo, $0F, pClosedHH, $09, pEKick
	dc.b	$02, $0D, pClosedHH, $03, pASnare, $06, pOpenHH, $03
	dc.b	$03, pClosedHH, pOpenHH, pOpenHH, $05, pEKick, $04, pBongoLo
	dc.b	$09, pOpenHH, $03, $08, pClosedHH, $04, pBongoLo, $09
	dc.b	$0F, pESnare, $09, $0B, pClosedHH, $04, pOpenHH, $09
	dc.b	pBongoLo, $0B, pEKick, $04, pESnare, $09, $0B, pEKick
	dc.b	$04, pOpenHH, $09, $03, $0C, pESnare, $09, $21
	dc.b	pClosedHH, $18, pEKick, pClosedHH, pEKick, $09, pTomMid, $0F
	dc.b	pEKick, $09, $02, $0D, pClosedHH, $09, pTomLow, $02
	dc.b	pEKick, $0D, pClosedHH, $09, pTomLow, $02, $0D, pEKick
	dc.b	$03, pClosedHH, pBongoLo, pSplashCymb, $0F, pEKick, $18, pClosedHH
	dc.b	$09, pBongoLo, $0F, pClosedHH, $09, pEKick, $02, $0D
	dc.b	pClosedHH, $09, pOpenHH, $0F, pClosedHH, $18, $09, pEKick
	dc.b	$02, pTomLow, $0D, pClosedHH, $09, pTomLow, $02, pEKick
	dc.b	$0D, pClosedHH, $09, $06, $03, pOpenHH, pClosedHH, $05
	dc.b	$04, pESnare, $09, $0F, pBongoLo, $09, $0F, pESnare
	dc.b	$09, pOpenHH, $03, $08, pEKick, $04, pOpenHH, $09
	dc.b	pESnare, $0F, pOpenHH, $09, pESnare, $0B, pClosedHH, $04
	dc.b	pESnare, $09, $0B, pEKick, $04, pBongoLo, $09, pESnare
	dc.b	$33, nRst, $0F, pEKick, $33, nRst, $2D, pEKick
	dc.b	$33, nRst, $2D, pEKick, $06, $12, $33, nRst
	dc.b	$15, pEKick, $33, nRst, $2D, pEKick, $33, nRst
	dc.b	nRst, $2A, pEKick, $30, $30, $02, $01, pClosedHH
	dc.b	$03, pESnare, $06, pClosedHH, $05, pEKick, $04, pESnare

DMR_PWM3_Loop1:
	dc.b	$09, $0F
	smpsLoop		$00, $06, DMR_PWM3_Loop1, Target
	dc.b	$09, $12, pSplashCymb, $06, pBongoLo, pOpenHH, $05, pClosedHH
	dc.b	$04, pOpenHH, $09, $03, $08, pClosedHH, $04, pBongoLo
	dc.b	$09, $0F, $09, $0F, pESnare, $09, pBongoLo, $0B
	dc.b	pClosedHH, $04, pBongoLo, $09, pESnare, $0F, $09, $0B
	dc.b	pEKick, $04, pESnare, $09, pOpenHH, $03, $08, pEKick
	dc.b	$07, pSplashCymb, $06, pESnare, pClosedHH, $05, $04, pBongoLo
	dc.b	$09, $0F, pESnare, $09, pBongoLo, $0B, pClosedHH, $04
	dc.b	pBongoLo, $09, pOpenHH, $03, $08, pEKick, $04, pBongoLo
	dc.b	$03

DMR_PWM3_Jump1:
	dc.b	nRst, $06, pOpenHH, $03, $08, pEKick, $04, pOpenHH
	dc.b	$09, $03, $08, pClosedHH, $04, pOpenHH, $09, pBongoLo
	dc.b	$0B, pEKick, $04, pOpenHH, $09, pBongoLo, $12, pOpenHH
	dc.b	$03, pClosedHH, pOpenHH, pOpenHH, pClosedHH, $05, $04, pBongoLo
	dc.b	$09, pESnare, $0F, pBongoLo, $09, pOpenHH, $03, $08
	dc.b	pEKick, $04, pOpenHH, $09, $03, $08, pClosedHH, $04
	dc.b	pOpenHH, $09, pBongoLo, $0B, pEKick, $04, pOpenHH, $09
	dc.b	pBongoLo, $0F, pESnare, $09, $0B, pEKick, $04, pESnare
	dc.b	$03, pEKick, $02, $04, pOpenHH, $03, pTomHi, $02
	dc.b	$01, pBongoLo, $02, $01, pASnare, $02, pBongoLo, $01
	dc.b	$06
	smpsJump		DMR_PWM3_Jump1, Target
	
DMR_PWM4:
	dc.b	nRst, $30, $30, $30, $30, $30, $30, pOpenHH
	dc.b	$18, pEKick, $02, pTomLow, $16, pBongoLo, $18, pEKick
	dc.b	$02, $16, pBongoLo, $30, $30, pASnare, $02, pTomLow
	dc.b	$2E, pEKick, $02, pASnare, $2E, pClosedHH, $06, pESnare
	dc.b	$0B, pClosedHH, $04, $2C, $30, $30, pEKick, $18
	dc.b	$33, nRst, nRst, $01, pOpenHH, $18, $18, $18
	dc.b	pEKick, $02, $16, pOpenHH, $30, pTomLow, $02, $2E
	dc.b	pBongoLo, $30, pASnare, $02, pEKick, $33, nRst, $01
	dc.b	pESnare, $0B, pEKick, $04, pClosedHH, $14, pEKick, $18
	dc.b	$18, pClosedHH, pEKick, pEKick, pClosedHH, pEKick, $1A

DMR_PWM4_Loop1:
	dc.b	nRst
	smpsLoop		$00, $19, DMR_PWM4_Loop1, Target
	dc.b	nRst, $03, pClosedHH, $06, $03, $08, $04, $14
	dc.b	pEKick, $18, $18, $18, $18, $18, $18, $07
	dc.b	pOpenHH, $06, $03, $08, pEKick, $04, pESnare, $2C
	dc.b	pClosedHH, $18, pEKick, $30, $18, pClosedHH, pClosedHH, $07
	dc.b	pOpenHH, $06, pClosedHH, $03, pOpenHH, $08, pEKick, $04
	dc.b	pOpenHH, $14, pEKick, $33, nRst, $04

DMR_PWM4_Jump1:
	dc.b	nRst, $11, pClosedHH, $30, $18, $07, pEKick, $02
	dc.b	$04, pESnare, $0B, pClosedHH, $04, pOpenHH, $14, pEKick
	dc.b	$18, pClosedHH, $30, $18, $18, $0D, pESnare, $06
	dc.b	pEKick, $03, pOpenHH, pOpenHH, $06
	smpsJump		DMR_PWM4_Jump1, Target

DMR_Patches:
	dc.b	$3A
	dc.b	$34, $75, $70, $30,	$5F, $97, $5F, $DF
	dc.b	$0E, $10, $0E, $07,	$01, $01, $02, $04
	dc.b	$22, $3C, $3B, $19,	$21, $12, $20, $03
	
	dc.b	$3A
	dc.b	$70, $02, $30, $70,	$1F, $0F, $16, $12
	dc.b	$00, $00, $00, $00,	$02, $02, $02, $02
	dc.b	$00, $01, $01, $04,	$20, $20, $18, $08
	
	dc.b	$0A
	dc.b	$70, $71, $71, $34,	$1F, $1F, $1F, $1E
	dc.b	$10, $00, $10, $10,	$00, $00, $00, $00
	dc.b	$0F, $0F, $1F, $1F,	$20, $18, $19, $06
	
	dc.b	$3E
	dc.b	$32, $71, $33, $73,	$1F, $0A, $0A, $0A
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$04, $06, $06, $06,	$38, $0D, $0D, $0F
	
	dc.b	$2B
	dc.b	$20, $31, $61, $12,	$1F, $1F, $19, $18
	dc.b	$10, $10, $10, $10,	$05, $07, $05, $09
	dc.b	$0F, $0F, $1F, $1F,	$20, $20, $35, $02