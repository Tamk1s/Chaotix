
	sHeaderInit
	smpsHeaderVoice	DMR_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$05, $0F
	sHeaderDAC	DMR_DAC
	smpsHeaderFM	DMR_FM1, Target, $00, $0E
	smpsHeaderFM	DMR_FM2, Target, $00, $0E
	smpsHeaderFM	DMR_FM3, Target, $00, $0E
	smpsHeaderFM	DMR_FM4, Target, $00, $0E
	smpsHeaderFM	DMR_FM5, Target, $00, $0E
	smpsHeaderFM	DMR_FM6, Target, $00, $0E
	smpsHeaderPSG	DMR_PSG1, Target, $00, $02, $00, $00
	smpsHeaderPSG	DMR_PSG2, Target, $00, $02, $00, $00
	smpsHeaderPSG	DMR_PSG3, Target, $00, $05, $00, $12

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

DMR_Loo$8:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loo$8, Target
	dc.b	$01, nRst, nG2, nG2, nRst, nE2, nE2, nRst
	dc.b	nE3, nBb1, nRst, nA2, nA2, nRst, nA2, nA2
	dc.b	nRst, nA2, nRst, $02, nA2, $01, nRst, $02
	dc.b	nA2, $01, $01, nRst, nA2, nA2, nRst, nA2
	dc.b	nRst, $02, nA2, $01, nRst, $02, nG2, $01
	dc.b	$01, nRst, nG2, nG2, nRst, nG2, nRst, $02
	dc.b	nG2, $01, nRst, $02, nG2, $01, $01, nRst
	dc.b	nFs2, nFs2, nRst, nB1, nB1, nRst, nD3, nC3
	dc.b	nRst, nB2

DMR_Loo$9:
	dc.b	nB2, nRst, nB2, nB2, nRst, nB2, nRst, $02
	dc.b	nC3, $01, nRst, $02, nB2, $01
	smpsLoop		$00, $03, DMR_Loo$9, Target

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
	dc.b	nRst, $30, $30, $30, $30, $30, $30

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
	dc.b	nRst, $33, $24
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
	dc.b	smpsNoAttack, nA4, nRst, $06, $33, $1E
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
	dc.b	nRst, $33, $33, $33, $21, nE3, $06, nE4
	dc.b	$18, nFs4, $09, nG4, nD5, nRst, $15, nFs4
	dc.b	$09, nG4, nD5, $06, nB4, $18, nCs5, $09
	dc.b	nD5, nE5, $06, nA4, $18, nG4, nRst, $33
	dc.b	$33, $33, $1E, nA4, $01
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
	dc.b	nE5, $06, nA4, $18, nG4, nRst, $33, $33
	dc.b	$33, $1E
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
	smpsAlterNote	$FC
	dc.b	nRst
	smpsAlterNote	$00

DMR_Loop27:
	dc.b	$2F
	smpsLoop		$00, $09, DMR_Loop27, Target
	dc.b	$05, nE3, $03, nE4, $18, nFs4, $09, nG4
	dc.b	nD5, nRst, $15, nFs4, $09, nG4, nD5, $06
	dc.b	nB4, $18, nCs5, $09, nD5, nE5, $06, nA4
	dc.b	$30, nG4, $18, nRst

DMR_Loop28:
	dc.b	$2A
	smpsLoop		$00, $0C, DMR_Loop28, Target

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
	dc.b	nRst

DMR_Loop31:
	dc.b	$26
	smpsLoop		$00, $0F, DMR_Loop31, Target
	dc.b	nB3, $06, nFs4, nRst, $03, nB4, $06, nFs4
	dc.b	nRst, $15, nB3, $06, nG4, nB4, nRst, $03
	dc.b	nG4, $06, nRst, $15, nB4, $06, nA4, nRst
	dc.b	nA4, nCs5, nRst, $12, nB3, $06, nG4, nB4
	dc.b	nRst, $03, nG4, $06, nRst

DMR_Loop32:
	dc.b	$2D
	smpsLoop		$00, $09, DMR_Loop32, Target
	dc.b	nB3, $06, nFs4, nRst, $03, nB4, $06, nFs4
	dc.b	nRst, $15, nB3, $06, nG4, nB4, nRst, $03
	dc.b	nG4, $06, nRst, $15, nB4, $06, nA4, nRst
	dc.b	nA4, nCs5, nRst, $12, nB3, $06, nG4, nB4
	dc.b	nRst, $03, nG4, $06, nRst

DMR_Loop33:
	dc.b	$21
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
	dc.b	nRst, $24, $24, $24, $24, $24, $24
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
	dc.b	nRst, $33, $33, $33, $03, nA1, $18, nG1
	dc.b	nRst

DMR_Loop35:
	dc.b	$30
	smpsLoop		$00, $08, DMR_Loop35, Target
	dc.b	nE3, $18, nFs3, nG3, nB3, nRst, $30, nA1
	dc.b	$18, nG1, nRst

DMR_Loop36:
	dc.b	$30
	smpsLoop		$00, $12, DMR_Loop36, Target
	dc.b	nFs4, nG4, nFs4, nG4, nFs4, $18, nG4, nFs4
	dc.b	$30, nG4, nFs4, nG4, nFs4, $18, nG4

DMR_Jump2:
	dc.b	nRst, $30, $30, $30, $30, $30, $30
	smpsJump		DMR_Jump2, Target

DMR_FM5:
	smpsFMvoice		$04
	smpsPan		panCenter
	dc.b	nRst

DMR_Loop37:
	dc.b	$30
	smpsLoop		$00, $1C, DMR_Loop37, Target

DMR_Loop38:
	dc.b	nE2, $18, nC2, $0C, nD2
	smpsLoop		$00, $04, DMR_Loop38, Target
	dc.b	nG2, $18

DMR_Loop39:
	dc.b	nC2, $0C, nD2, nE2, $18
	smpsLoop		$00, $06, DMR_Loop39, Target
	dc.b	nB1, $0C, nD2, nB1, $18, nFs1, $0C, nG1
	dc.b	nA1, $18, nFs1, $0C, nB1, nG1, $18, nRst

DMR_Loop40:
	dc.b	$2A
	smpsLoop		$00, $0C, DMR_Loop40, Target

DMR_Jump3:
	dc.b	nRst, $30, $30, $30, $30, $30, $30
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
	dc.b	$17, nG2, $01, nRst, $33, $14

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
	dc.b	nRst, $33, $21
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
	dc.b	smpsNoAttack, nA1, nRst, $06, $33, $1E
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
	dc.b	$0C
	smpsAlterNote	$00
	dc.b	$24
	smpsLoop		$00, $02, DMR_Loop47, Target
	smpsAlterNote	$7F
	dc.b	$03
	smpsAlterNote	$00
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$08
	smpsAlterNote	$00
	dc.b	$2A
	smpsAlterNote	$7F
	dc.b	$06
	smpsAlterNote	$00
	dc.b	$06, nC0, nE0, $18, nFs0, $09, nG0, nD1
	dc.b	nRst, $15, nFs0, $09, nG0, nD1, $06, nB0
	dc.b	$18, nCs1, $09, nD1, nE1, $06, nA0, $18
	dc.b	nG0, nRst, $33, $33, $33, $1E, nA0, $01
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
	dc.b	nRst, $15, nB0, $01, nRst, $33, $33, $33
	dc.b	$0B, nC0, $06, nE0, $18, nFs0, $09, nG0
	dc.b	nD1, nRst, $15, nC0, $09, nG0, nD1, $06
	dc.b	nC0, $18, nCs1, $09, nD1, nE1, $06, nA0
	dc.b	$18, nG0, nRst, $33, $33, $33, $1E
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
	smpsAlterNote	$02
	dc.b	nRst
	smpsAlterNote	$00

DMR_Loop48:
	dc.b	$22
	smpsLoop		$00, $0D, DMR_Loop48, Target
	dc.b	$25, nE0, $18, nRst, $33, $15, nE1, $30
	dc.b	nD1, nRst, $33, $15
	smpsPSGvoice	$36
	dc.b	$18, nB0, $30, $30, nA0, $18, nB0, nRst
	dc.b	$01, nFs0, $2F, nRst, $01, nG0, $2F, nB0
	dc.b	$30, $30, nA0, $18, nB0

DMR_Jump4:
	dc.b	nRst, $30, $30, $30, $30, $30, $30
	smpsJump		DMR_Jump4, Target

DMR_PSG2:
	dc.b	nRst, $33, $24
	smpsAlterNote	$7F
	dc.b	$05
	smpsAlterNote	$00
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$02
	smpsAlterNote	$00
	dc.b	$07, $33, $1E
	smpsAlterNote	$7F
	dc.b	$02
	smpsAlterNote	$00
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$06
	smpsAlterNote	$00
	dc.b	$18

DMR_Loop49:
	smpsAlterNote	$7F
	dc.b	$0C
	smpsAlterNote	$00
	dc.b	$24
	smpsLoop		$00, $02, DMR_Loop49, Target
	smpsAlterNote	$7F
	dc.b	$03
	smpsAlterNote	$00
	dc.b	$01
	smpsAlterNote	$7F
	dc.b	$08
	smpsAlterNote	$00
	dc.b	$24
	smpsPSGvoice	$00
	dc.b	$06
	smpsAlterNote	$7F
	dc.b	$06
	smpsAlterNote	$00
	dc.b	$06, nC0, nC0, $18, $09, $09, nD0, $06
	dc.b	nE0, $18, nC0, $09, $09, nD0, $06, nC0
	dc.b	$18, nCs0, $09, nD0, nE0, $06, nC0, $18
	dc.b	$18, nRst, $33, $33, $33, $1F
	smpsAlterNote	$7F
	dc.b	$08, $33, $33, $33, $21, nC0, $06, $18
	dc.b	$09, $09, nD0, $06, nE0, $18, nC0, $09
	dc.b	$09, nD0, $06, nC0, $18, nCs0, $09, nD0
	dc.b	nE0, $06, nC0, $18, $18, nRst, $33, $33
	dc.b	$33, $1E
	smpsAlterNote	$00
	dc.b	$01
	smpsAlterNote	$04
	dc.b	$01
	smpsAlterNote	$FC
	dc.b	$01
	smpsAlterNote	$F3
	dc.b	$01
	smpsAlterNote	$0C
	dc.b	$01
	smpsAlterNote	$06
	dc.b	$01
	smpsAlterNote	$F8
	dc.b	$01
	smpsAlterNote	$08
	dc.b	$01
	smpsAlterNote	$F5
	dc.b	$01
	smpsAlterNote	$02
	dc.b	$01
	smpsAlterNote	$00

DMR_Loop50:
	dc.b	$29
	smpsLoop		$00, $0D, DMR_Loop50, Target
	dc.b	$2A, nA0, $30, nG0
	smpsPSGvoice	$36
	dc.b	nB0, nB0, nD1, nD1, nCs1, $18, nD1, nB0
	dc.b	$30, $30, nD1, nD1, nCs1, $18, nD1

DMR_Jump5:
	smpsPSGvoice	$00
	dc.b	nC0

DMR_Loop51:
	dc.b	$0C
	smpsLoop		$00, $10, DMR_Loop51, Target

DMR_Loop52:
	dc.b	$06
	smpsLoop		$00, $10, DMR_Loop52, Target
	smpsJump		DMR_Jump5, Target

DMR_PSG3:
	dc.b	nRst, $24, $24, $24, $24, $24, $24
	smpsPSGvoice	$12
	smpsAlterNote	$FC
	dc.b	$01
	smpsAlterNote	$F2
	dc.b	$01
	smpsAlterNote	$F6
	dc.b	$01
	smpsAlterNote	$06
	dc.b	$01
	smpsAlterNote	$04
	dc.b	$01
	smpsAlterNote	$FB
	dc.b	$01
	smpsAlterNote	$08
	dc.b	$01
	smpsAlterNote	$0F
	dc.b	nAb0
	smpsAlterNote	$FB
	dc.b	smpsNoAttack, nG0
	smpsAlterNote	$FC
	dc.b	smpsNoAttack, $03
	smpsAlterNote	$00
	dc.b	nRst, $24
	smpsAlterNote	$F8
	dc.b	$01
	smpsAlterNote	$05
	dc.b	$01
	smpsAlterNote	$0E
	dc.b	$04
	smpsAlterNote	$F0
	dc.b	$01
	smpsAlterNote	$05
	dc.b	nA0
	smpsAlterNote	$0C
	dc.b	smpsNoAttack, nAb0
	smpsAlterNote	$03
	dc.b	smpsNoAttack, nG0, $03
	smpsAlterNote	$00
	dc.b	nRst, $24
	smpsAlterNote	$FE
	dc.b	$01
	smpsAlterNote	$0F
	dc.b	$01
	smpsAlterNote	$0A
	dc.b	$01
	smpsAlterNote	$00
	dc.b	$01
	smpsAlterNote	$02
	dc.b	$01
	smpsAlterNote	$09
	dc.b	$01
	smpsAlterNote	$F2
	dc.b	$01
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
	dc.b	$01
	smpsAlterNote	$05
	dc.b	nA0
	smpsAlterNote	$F6
	dc.b	smpsNoAttack, nG0
	smpsAlterNote	$03
	dc.b	smpsNoAttack, $03
	smpsAlterNote	$00
	dc.b	nRst, $33, $33, $33, $03, nC0, $18, $18
	smpsPSGvoice	$12
	dc.b	nRst, $12, nCs2, $06, nRst, $21, nCs2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $1C, nFs1, $05
	dc.b	nRst, $03, nA1, $06, nCs2, nRst, $12, nB0
	dc.b	$06, nG1, nRst, $03, nCs2, $06, nRst, $03
	dc.b	nD2, $06, nRst, $18
	smpsPSGvoice	$12
	dc.b	$33, $33, $33, $0F
	smpsPSGvoice	$36
	dc.b	$18, nC0, nC0, nC0, nE0, nD0, $30, nC0
	dc.b	$18, $18
	smpsPSGvoice	$12
	dc.b	nFs0, $06, nRst, $03, nB0, $06, nFs0, $03
	dc.b	nCs1, $06, nRst, $12, nC0, $06, nG0, nB0
	dc.b	$03, nCs1, $06, nG0, $03, nD1, $06, nRst
	dc.b	$12, nB0, $06, nRst, $04, nFs0, $05, nB0
	dc.b	$06, nRst, $1B, nC0, $06, nG0, nB0, $03
	dc.b	nCs1, $06, nG0, $03, nD1, $06, nRst

DMR_Loop53:
	dc.b	$30
	smpsLoop		$00, $0B, DMR_Loop53, Target
	smpsPSGvoice	$20
	dc.b	$18, nC0, nC0, $0C, $0C, $18, $0C, $0C
	dc.b	$18
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
	dc.b	nRst, $30, $30, $30, $30, $30, $30
	smpsJump		DMR_Jump6, Target

DMR_DAC:
	smpsStop

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
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
