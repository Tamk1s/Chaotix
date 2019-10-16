Target	EQU	$40000

Maniax_Header:
	smpsHeaderVoice	Maniax_Patches,Target
	smpsHeaderChan	6,3
	;smpsHeaderTempo	$02, $00
	smpsHeaderTempo	$02, $01
	smpsHeaderFM	Maniax_FM1, Target, $00, $17
	smpsHeaderFM	Maniax_FM2, Target, $00, $25
	smpsHeaderFM	Maniax_FM3, Target, $00, $19
	smpsHeaderFM	Maniax_FM4, Target, $00, $12
	smpsHeaderFM	Maniax_FM5, Target, $00, $0E
	smpsHeaderFM	Maniax_FM6, Target, $00, $1E
	smpsHeaderPSG	Maniax_PSG1, Target, $00, $02, $00, $00
	smpsHeaderPSG	Maniax_PSG2, Target, $00, $02, $00, $0D
	smpsHeaderPSG	Maniax_PSG3, Target, $00, $02, $00, $26
	smpsHeaderPWM	Maniax_PWM1, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM2, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM3, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM4, Target, $00, $AA

Maniax_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b nRst, $0C, nF4, $04
	smpsAlterNote	$06
	dc.b smpsNoAttack, nE4, $01, smpsNoAttack, nD4, $01
	smpsAlterNote	$F7
	dc.b smpsNoAttack, nC4, $01
	smpsAlterNote	$F2
	dc.b smpsNoAttack, nBb3, $01
	smpsAlterNote	$F5
	dc.b smpsNoAttack, nAb3, $01
	smpsAlterNote	$F8
	dc.b smpsNoAttack, nFs3, $01
	smpsAlterNote	$15
	dc.b smpsNoAttack, nEb3, $01
	smpsAlterNote	$14
	dc.b smpsNoAttack, nCs3, $01
	smpsAlterNote	$00
	dc.b nF4, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $0C
	dc.b nF3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nBb2, $02, nRst, $04, nBb3, $12
	dc.b nBb2, $02, nRst, $04, nF4, $06, nF3, $02
	dc.b nRst, $04, nF4, $06, nBb3, $02, nRst, $04
	dc.b nBb3, $06, nBb3, $06, nF3, $02, nRst, $04
	dc.b nBb3, $06, nF3, $02, nRst, $04, nF3, $06
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nC4, $0C, nF3, $02
	dc.b nRst, $04, nAb3, $06, nAb3, $02, nRst, $04
	dc.b nEb3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nEb4, $0C, nAb3, $02, nRst, $04
	dc.b nEb4, $26
	smpsAlterNote	$07
	dc.b smpsNoAttack, nD4, $01
	smpsAlterNote	$EF
	dc.b smpsNoAttack, nCs4, $01
	smpsAlterNote	$F3
	dc.b smpsNoAttack, nB3, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, nA3, $01
	smpsAlterNote	$18
	dc.b smpsNoAttack, nG3, $01
	smpsAlterNote	$E7
	dc.b smpsNoAttack, nFs3, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nE3, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, nC3, $01, smpsNoAttack, nB2, $01
	smpsAlterNote	$00
	dc.b nAb2, $06, nC3, $06, nEb3, $06, nAb3, $18
	dc.b nBb2, $0C, nF3, $06, nBb3, $06, nEb4, $06
	dc.b nRst, $06, nD4, $0C, nRst, $06, nG3, $06
	dc.b nBb3, $06, nEb4, $06, nG4, $0C, nAb4, $12
	dc.b nC4, $30, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nEb3, $06, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nBb2, $06, nF2, $02
	dc.b nRst, $04, nF2, $02, nRst, $04, nAb2, $06
	dc.b nEb2, $02, nRst, $04, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nEb3, $06
	dc.b nBb2, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nEb3, $06, nBb2, $02, nRst, $04, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nF2, $02
	dc.b nRst, $04, nAb2, $06, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nAb2, $30
	dc.b nBb2, $36, nF4, $06, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $06, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $0C, nF3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nBb3, $12, nBb2, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nF4, $06, nBb3, $02
	dc.b nRst, $04, nBb3, $06, nBb3, $06, nF3, $02
	dc.b nRst, $04, nBb3, $06, nF3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF4, $06, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nC4, $0C
	dc.b nF3, $02, nRst, $04, nAb3, $06, nAb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nEb4, $0C, nAb3, $02
	dc.b nRst, $04, nEb4, $26
	smpsAlterNote	$07
	dc.b smpsNoAttack, nD4, $01
	smpsAlterNote	$EF
	dc.b smpsNoAttack, nCs4, $01
	smpsAlterNote	$F3
	dc.b smpsNoAttack, nB3, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, nA3, $01
	smpsAlterNote	$18
	dc.b smpsNoAttack, nG3, $01
	smpsAlterNote	$E7
	dc.b smpsNoAttack, nFs3, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nE3, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, nC3, $01, smpsNoAttack, nB2, $01
	smpsAlterNote	$00
	dc.b nRst, $7F, $41, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nEb3, $06, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nBb2, $06, nF2
	dc.b $02, nRst, $04, nF2, $02, nRst, $04, nAb2
	dc.b $06, nEb2, $02, nRst, $04, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nEb3
	dc.b $06, nBb2, $02, nRst, $04, nBb2, $02, nRst
	dc.b $04, nEb3, $06, nBb2, $02, nRst, $04, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nF2
	dc.b $02, nRst, $04, nAb2, $06, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nAb2
	dc.b $30, nBb2, $36, nF2, $06, nRst, $02, nG2
	dc.b $06, nRst, $02, nAb2, $06, nRst, $02, nBb2
	dc.b $06, nRst, $02, nC3, $06, nRst, $02, nD3
	dc.b $06, nRst, $02, nEb3, $06, nRst, $12, nEb3
	dc.b $48, nEb3, $04
	smpsAlterNote	$07
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, nC3, $01
	smpsAlterNote	$10
	dc.b smpsNoAttack, nBb2, $01
	smpsAlterNote	$1A
	dc.b smpsNoAttack, nAb2, $01
	smpsAlterNote	$EC
	dc.b smpsNoAttack, nG2, $01
	smpsAlterNote	$F9
	dc.b smpsNoAttack, nF2, $01
	smpsAlterNote	$F2
	dc.b smpsNoAttack, nEb2, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nCs2, $01
	smpsAlterNote	$00
	smpsStop

Maniax_FM2:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b nRst, $12, nF4, $04
	smpsAlterNote	$06
	dc.b smpsNoAttack, nE4, $01, smpsNoAttack, nD4, $01
	smpsAlterNote	$F7
	dc.b smpsNoAttack, nC4, $01
	smpsAlterNote	$F2
	dc.b smpsNoAttack, nBb3, $01
	smpsAlterNote	$F5
	dc.b smpsNoAttack, nAb3, $01
	smpsAlterNote	$F8
	dc.b smpsNoAttack, nFs3, $01
	smpsAlterNote	$15
	dc.b smpsNoAttack, nEb3, $01
	smpsAlterNote	$14
	dc.b smpsNoAttack, nCs3, $01
	smpsAlterNote	$00
	dc.b nF4, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $0C
	dc.b nF3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nBb2, $02, nRst, $04, nBb3, $12
	dc.b nBb2, $02, nRst, $04, nF4, $06, nF3, $02
	dc.b nRst, $04, nF4, $06, nBb3, $02, nRst, $04
	dc.b nBb3, $06, nBb3, $06, nF3, $02, nRst, $04
	dc.b nBb3, $06, nF3, $02, nRst, $04, nF3, $06
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nC4, $0C, nF3, $02
	dc.b nRst, $04, nAb3, $06, nAb3, $02, nRst, $04
	dc.b nEb3, $02, nRst, $04, nEb4, $06, nEb3, $02
	dc.b nRst, $04, nEb4, $0C, nAb3, $02, nRst, $04
	dc.b nEb4, $26
	smpsAlterNote	$07
	dc.b smpsNoAttack, nD4, $01
	smpsAlterNote	$EF
	dc.b smpsNoAttack, nCs4, $01
	smpsAlterNote	$F3
	dc.b smpsNoAttack, nB3, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, nA3, $01
	smpsAlterNote	$18
	dc.b smpsNoAttack, nG3, $01
	smpsAlterNote	$E7
	dc.b smpsNoAttack, nFs3, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nE3, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, nC3, $01, smpsNoAttack, nB2, $01
	smpsAlterNote	$00
	dc.b nAb2, $06, nC3, $06, nEb3, $06, nAb3, $18
	dc.b nBb2, $0C, nF3, $06, nBb3, $06, nEb4, $06
	dc.b nRst, $06, nD4, $0C, nRst, $06, nG3, $06
	dc.b nBb3, $06, nEb4, $06, nG4, $0C, nAb4, $12
	dc.b nC4, $30, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nEb3, $06, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $02, nRst, $04, nBb2, $06, nF2, $02
	dc.b nRst, $04, nF2, $02, nRst, $04, nAb2, $06
	dc.b nEb2, $02, nRst, $04, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nEb3, $06
	dc.b nBb2, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nEb3, $06, nBb2, $02, nRst, $04, nBb2, $02
	dc.b nRst, $04, nEb3, $06, nBb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nF2, $02
	dc.b nRst, $04, nAb2, $06, nEb2, $02, nRst, $04
	dc.b nBb2, $06, nF2, $02, nRst, $04, nAb2, $30
	dc.b nBb2, $36, nF4, $06, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nF3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nC3, $02, nRst, $04, nF3, $06, nC3, $02
	dc.b nRst, $04, nF3, $06, nC3, $02, nRst, $04
	dc.b nF3, $0C, nF3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nBb2, $02, nRst, $04
	dc.b nBb3, $12, nBb2, $02, nRst, $04, nF4, $06
	dc.b nF3, $02, nRst, $04, nF4, $06, nBb3, $02
	dc.b nRst, $04, nBb3, $06, nBb3, $06, nF3, $02
	dc.b nRst, $04, nBb3, $06, nF3, $02, nRst, $04
	dc.b nF3, $06, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $04, nC3, $02
	dc.b nRst, $04, nC3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nF4, $06, nF3, $02, nRst, $04
	dc.b nF4, $06, nF3, $02, nRst, $04, nC4, $0C
	dc.b nF3, $02, nRst, $04, nAb3, $06, nAb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $04, nEb4, $06
	dc.b nEb3, $02, nRst, $04, nEb4, $0C, nAb3, $02
	dc.b nRst, $04, nEb4, $26
	smpsAlterNote	$07
	dc.b smpsNoAttack, nD4, $01
	smpsAlterNote	$EF
	dc.b smpsNoAttack, nCs4, $01
	smpsAlterNote	$F3
	dc.b smpsNoAttack, nB3, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, nA3, $01
	smpsAlterNote	$18
	dc.b smpsNoAttack, nG3, $01
	smpsAlterNote	$E7
	dc.b smpsNoAttack, nFs3, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nE3, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, nC3, $01, smpsNoAttack, nB2, $01
	smpsAlterNote	$00
	dc.b nRst, $7F, $41, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nEb3, $06, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $02, nRst, $04, nBb2, $06, nF2
	dc.b $02, nRst, $04, nF2, $02, nRst, $04, nAb2
	dc.b $06, nEb2, $02, nRst, $04, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nEb3
	dc.b $06, nBb2, $02, nRst, $04, nBb2, $02, nRst
	dc.b $04, nEb3, $06, nBb2, $02, nRst, $04, nBb2
	dc.b $02, nRst, $04, nEb3, $06, nBb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nF2
	dc.b $02, nRst, $04, nAb2, $06, nEb2, $02, nRst
	dc.b $04, nBb2, $06, nF2, $02, nRst, $04, nAb2
	dc.b $30, nBb2, $36, nF2, $06, nRst, $02, nG2
	dc.b $06, nRst, $02, nAb2, $06, nRst, $02, nBb2
	dc.b $06, nRst, $02, nC3, $06, nRst, $02, nD3
	dc.b $06, nRst, $02, nEb3, $06, nRst, $12, nEb3
	dc.b $48, nEb3, $04
	smpsAlterNote	$07
	dc.b smpsNoAttack, nD3, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, nC3, $01
	smpsAlterNote	$10
	dc.b smpsNoAttack, nBb2, $01
	smpsAlterNote	$1A
	dc.b smpsNoAttack, nAb2, $01
	smpsAlterNote	$EC
	dc.b smpsNoAttack, nG2, $01
	smpsAlterNote	$F9
	dc.b smpsNoAttack, nF2, $01
	smpsAlterNote	$F2
	dc.b smpsNoAttack, nEb2, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, nCs2, $01
	smpsAlterNote	$00
	smpsStop

Maniax_FM3:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b nRst, $7F, $7F, $7F, $21
	smpsAlterNote	$04
	dc.b nF5, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, $01
	smpsAlterNote	$16
	dc.b smpsNoAttack, $01
	smpsAlterNote	$EB
	dc.b smpsNoAttack, nFs5, $01
	smpsAlterNote	$F3
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FD
	dc.b smpsNoAttack, $01
	smpsAlterNote	$05
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0E
	dc.b smpsNoAttack, $01
	smpsAlterNote	$18
	dc.b smpsNoAttack, $01
	smpsAlterNote	$EA
	dc.b smpsNoAttack, nG5, $01
	smpsAlterNote	$F2
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FD
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $0E
	smpsAlterNote	$EA
	dc.b smpsNoAttack, $01
	smpsAlterNote	$08
	dc.b smpsNoAttack, nFs5, $01
	smpsAlterNote	$EB
	dc.b smpsNoAttack, $01
	smpsAlterNote	$06
	dc.b smpsNoAttack, nF5, $01
	smpsAlterNote	$00
	dc.b nEb5, $06, nC5, $06, nEb5, $24, nBb4, $06
	dc.b nEb5, $06, nF5, $06, nG5, $1E, nAb5, $06
	dc.b nBb5, $0C, nBb5, $12, nAb5, $03, nG5, $03
	dc.b nAb5, $18, nG5, $06, nRst, $06, nG5, $06
	dc.b nAb5, $06, nRst, $06, nG5, $0C, nRst, $06
	dc.b nF5, $0C, nRst, $06, nEb5, $0C, nRst, $06
	dc.b nF5, $0C, nG5, $06, nRst, $06, nG5, $06
	dc.b nAb5, $06, nRst, $06, nG5, $0C, nAb5, $03
	dc.b nG5, $03, nF5, $12, nEb5, $12, nF5, $06
	dc.b nEb5, $30, nRst, $7F, $7F, $7F, $39
	smpsAlterNote	$02
	dc.b nBb5, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, $01
	smpsAlterNote	$19
	dc.b smpsNoAttack, $01
	smpsAlterNote	$EF
	dc.b smpsNoAttack, nB5, $01
	smpsAlterNote	$F4
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FB
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $01
	smpsAlterNote	$06
	dc.b smpsNoAttack, $01
	smpsAlterNote	$0D
	dc.b smpsNoAttack, $01
	smpsAlterNote	$EE
	dc.b smpsNoAttack, nC6, $01
	smpsAlterNote	$F4
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FB
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $0F
	smpsAlterNote	$FA
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, nB5, $01
	smpsAlterNote	$0C
	dc.b smpsNoAttack, nBb5, $01
	smpsAlterNote	$00
	dc.b nBb5, $06, nG5, $06, nBb5, $24
	smpsAlterNote	$02
	dc.b nBb4, $01
	smpsAlterNote	$0F
	dc.b smpsNoAttack, nB4, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, nC5, $04, nEb5, $06, nF5, $06
	smpsAlterNote	$01
	dc.b nF5, $01
	smpsAlterNote	$F5
	dc.b smpsNoAttack, nFs5, $01
	smpsAlterNote	$E7
	dc.b smpsNoAttack, nG5, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $1B, nAb5, $06, nBb5, $0C, nEb5, $30
	dc.b nG5, $06, nRst, $06, nG5, $06, nAb5, $06
	dc.b nRst, $06, nG5, $0C, nAb5, $03, nG5, $03
	dc.b nF5, $0C, nRst, $06, nEb5, $0C, nF5, $06
	dc.b nG5, $06, nAb5, $06, nBb5, $06, nRst, $06
	dc.b nBb5, $06, nAb5, $06, nRst, $06, nG5, $0C
	dc.b nAb5, $03, nG5, $03, nF5, $12, nEb5, $0C
	dc.b nF5, $0C, nEb5, $30
	smpsStop

Maniax_FM4:
	smpsFMvoice		$01
	dc.b nRst, $18, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nBb2, $0C, nBb2, $06, nBb2, $06, nBb2, $06
	dc.b nBb2, $06, nBb2, $06, nBb2, $06, nBb2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nEb2, $30, nAb1, $12, nAb1, $06, nAb1, $06
	dc.b nAb1, $0C, nBb1, $0C, nBb1, $0C, nBb1, $06
	dc.b nBb1, $0C, nBb1, $0C, nEb2, $18, nEb2, $06
	dc.b nF2, $06, nG2, $0C, nAb2, $0C, nAb2, $06
	dc.b nAb2, $0C, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nBb1, $06, nBb1, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nAb1, $06
	dc.b nAb1, $06, nBb1, $06, nBb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nBb1, $0C
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nBb2, $0C, nBb2, $06
	dc.b nBb2, $06, nBb2, $06, nBb2, $06, nBb2, $06
	dc.b nBb2, $06, nBb2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b nF2, $06, nF2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nEb2, $30, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nAb2, $06, nBb2, $0C, nBb2, $06
	dc.b nBb2, $06, nAb2, $0C, nAb2, $06, nBb2, $06
	dc.b nBb2, $06, nC3, $06, nC3, $06, nC3, $06
	dc.b nC3, $0C, nC3, $06, nC3, $0C, nAb2, $0C
	dc.b nAb2, $06, nAb2, $0C, nAb2, $06, nAb2, $06
	dc.b nAb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nBb1, $06
	dc.b nBb1, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nEb2, $06, nEb2, $06, nEb2, $06
	dc.b nEb2, $06, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nAb1, $06, nAb1, $06, nBb1, $06, nBb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nAb1, $06
	dc.b nAb1, $06, nAb1, $06, nAb1, $06, nAb1, $06
	dc.b nBb1, $0C, nBb1, $06, nBb1, $06, nBb1, $06
	dc.b nBb1, $06, nBb1, $06, nBb1, $06, nBb1, $06
	smpsStop

Maniax_FM5:
	smpsPan		panLeft
	smpsFMvoice		$02
	dc.b nRst, $18, nF4, $06, nRst, $06, nC4, $05
	dc.b nRst, $01, nF4, $09, nRst, $03, nG4, $09
	dc.b nRst, $03, nBb4, $09, nRst, $03, nA4, $09
	dc.b nRst, $03, nG4, $09, nRst, $03, nA4, $05
	dc.b nRst, $01, nG4, $09, nRst, $03, nG4, $0F
	dc.b nRst, $03, nF4, $0F, nRst, $03, nG4, $05
	dc.b nRst, $01, nF4, $06, nRst, $30, nF4, $06
	dc.b nRst, $06, nC4, $05, nRst, $01, nF4, $09
	dc.b nRst, $03, nG4, $09, nRst, $03, nBb4, $09
	dc.b nRst, $03, nA4, $09, nRst, $03, nG4, $09
	dc.b nRst, $03, nA4, $05, nRst, $01, nG4, $09
	dc.b nRst, $03, nBb4, $0F, nRst, $03, nBb4, $09
	dc.b nRst, $03, nBb4, $09, nRst, $03, nBb4, $02
	dc.b nRst, $04, nBb4, $30, nRst, $7F, $41, nG4
	dc.b $06, nRst, $06, nG4, $05, nRst, $01, nAb4
	dc.b $09, nRst, $03, nG4, $09, nRst, $09, nF4
	dc.b $0F, nRst, $03, nEb4, $0F, nRst, $03, nF4
	dc.b $09, nRst, $03, nG4, $06, nRst, $06, nG4
	dc.b $05, nRst, $01, nAb4, $09, nRst, $09, nG4
	dc.b $09, nRst, $03, nF4, $0F, nRst, $03, nEb4
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nEb4
	dc.b $30, nRst, $36, nF4, $06, nRst, $06, nC4
	dc.b $05, nRst, $01, nF4, $09, nRst, $03, nG4
	dc.b $09, nRst, $03, nBb4, $09, nRst, $03, nA4
	dc.b $09, nRst, $03, nG4, $09, nRst, $03, nA4
	dc.b $05, nRst, $01, nG4, $09, nRst, $03, nG4
	dc.b $0F, nRst, $03, nF4, $0F, nRst, $03, nG4
	dc.b $05, nRst, $01, nF4, $06, nRst, $06, nBb4
	dc.b $03, nD4, $03, nF4, $03, nRst, $03, nBb4
	dc.b $03, nD4, $03, nF4, $12, nRst, $06, nF4
	dc.b $06, nRst, $06, nC4, $05, nRst, $01, nF4
	dc.b $09, nRst, $03, nG4, $09, nRst, $03, nBb4
	dc.b $09, nRst, $03, nA4, $09, nRst, $03, nG4
	dc.b $09, nRst, $03, nA4, $05, nRst, $01, nG4
	dc.b $09, nRst, $03, nBb4, $0F, nRst, $03, nBb4
	dc.b $09, nRst, $03, nBb4, $09, nRst, $03, nBb4
	dc.b $02, nRst, $04, nBb4, $30, nRst, $7F, $41
	dc.b nG4, $06, nRst, $06, nG4, $05, nRst, $01
	dc.b nAb4, $09, nRst, $03, nG4, $09, nRst, $09
	dc.b nF4, $0F, nRst, $03, nEb4, $0F, nRst, $03
	dc.b nF4, $09, nRst, $03, nG4, $06, nRst, $06
	dc.b nG4, $05, nRst, $01, nAb4, $09, nRst, $09
	dc.b nG4, $09, nRst, $03, nF4, $0F, nRst, $03
	dc.b nEb4, $09, nRst, $03, nF4, $09, nRst, $03
	dc.b nEb4, $30, nF4, $30, nRst, $06, nF4, $06
	dc.b nRst, $02, nG4, $06, nRst, $02, nAb4, $06
	dc.b nRst, $02, nBb4, $06, nRst, $02, nC5, $06
	dc.b nRst, $02, nD5, $06, nRst, $02, nEb5, $06
	dc.b nRst, $12, nEb5, $48
	smpsStop

Maniax_FM6:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b nRst, $1E, nC4, $06, nRst, $06, nC3, $05
	dc.b nRst, $01, nF3, $09, nRst, $03, nG3, $09
	dc.b nRst, $03, nF4, $09, nRst, $03, nF4, $09
	dc.b nRst, $03, nF4, $09, nRst, $03, nA4, $05
	dc.b nRst, $01, nF4, $09, nRst, $03, nEb4, $0F
	dc.b nRst, $03, nEb4, $0F, nRst, $03, nEb4, $05
	dc.b nRst, $01, nD4, $06, nRst, $30, nC4, $06
	dc.b nRst, $06, nC3, $05, nRst, $01, nF3, $09
	dc.b nRst, $03, nG3, $09, nRst, $03, nF4, $09
	dc.b nRst, $03, nF4, $09, nRst, $03, nF4, $09
	dc.b nRst, $03, nF4, $05, nRst, $01, nF4, $09
	dc.b nRst, $03, nAb4, $0F, nRst, $03, nAb4, $09
	dc.b nRst, $03, nAb4, $09, nRst, $03, nAb4, $02
	dc.b nRst, $04, nG4, $30, nRst, $7F, $41, nEb4
	dc.b $06, nRst, $06, nEb4, $05, nRst, $01, nEb4
	dc.b $09, nRst, $03, nEb4, $09, nRst, $09, nD4
	dc.b $0F, nRst, $03, nC4, $0F, nRst, $03, nD4
	dc.b $09, nRst, $03, nEb4, $06, nRst, $06, nEb4
	dc.b $05, nRst, $01, nEb4, $09, nRst, $09, nEb4
	dc.b $09, nRst, $03, nD4, $0F, nRst, $03, nC4
	dc.b $09, nRst, $03, nD4, $09, nRst, $03, nC4
	dc.b $30, nRst, $36, nC4, $06, nRst, $06, nC3
	dc.b $05, nRst, $01, nF3, $09, nRst, $03, nG3
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nF4
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nF4
	dc.b $05, nRst, $01, nF4, $09, nRst, $03, nEb4
	dc.b $0F, nRst, $03, nEb4, $0F, nRst, $03, nEb4
	dc.b $05, nRst, $01, nD4, $06, nRst, $06, nBb3
	dc.b $03, nD4, $03, nF4, $03, nRst, $03, nBb3
	dc.b $03, nD4, $03, nF4, $12, nRst, $06, nC4
	dc.b $06, nRst, $06, nC3, $05, nRst, $01, nF3
	dc.b $09, nRst, $03, nG3, $09, nRst, $03, nF4
	dc.b $09, nRst, $03, nF4, $09, nRst, $03, nF4
	dc.b $09, nRst, $03, nF4, $05, nRst, $01, nF4
	dc.b $09, nRst, $03, nAb4, $0F, nRst, $03, nAb4
	dc.b $09, nRst, $03, nAb4, $09, nRst, $03, nAb4
	dc.b $02, nRst, $04, nG4, $30, nRst, $7F, $41
	dc.b nEb4, $06, nRst, $06, nEb4, $05, nRst, $01
	dc.b nEb4, $09, nRst, $03, nEb4, $09, nRst, $09
	dc.b nD4, $0F, nRst, $03, nC4, $0F, nRst, $03
	dc.b nD4, $09, nRst, $03, nEb4, $06, nRst, $06
	dc.b nEb4, $05, nRst, $01, nEb4, $09, nRst, $09
	dc.b nEb4, $09, nRst, $03, nD4, $0F, nRst, $03
	dc.b nC4, $09, nRst, $03, nD4, $09, nRst, $03
	dc.b nC4, $30, nD4, $30, nRst, $06, nF3, $06
	dc.b nRst, $02, nG3, $06, nRst, $02, nAb3, $06
	dc.b nRst, $02, nBb3, $06, nRst, $02, nC4, $06
	dc.b nRst, $02, nD4, $06, nRst, $02, nEb4, $06
	dc.b nRst, $12, nEb4, $48
	smpsStop

Maniax_PSG1:
	dc.b nRst, $7F, $7F, $7F, $1B
	smpsAlterNote	$FF
	dc.b nF2, $01
	smpsAlterNote	$FE
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, $01
	smpsAlterNote	$04
	dc.b smpsNoAttack, nFs2, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterNote	$01
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FE
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FC
	dc.b smpsNoAttack, $01
	smpsAlterNote	$03
	dc.b smpsNoAttack, nG2, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $01, smpsNoAttack, $0E
	smpsAlterNote	$03
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nFs2, $01
	smpsAlterNote	$04
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nF2, $01
	smpsAlterNote	$00
	dc.b nEb2, $06, nC2, $06, nEb2, $24, nBb1, $06
	dc.b nEb2, $06, nF2, $06, nG2, $1E, nAb2, $06
	dc.b nBb2, $0C, nBb2, $12, nAb2, $03, nG2, $03
	dc.b nAb2, $18, nG2, $06, nRst, $06, nG2, $06
	dc.b nAb2, $06, nRst, $06, nG2, $0C, nRst, $06
	dc.b nF2, $0C, nRst, $06, nEb2, $0C, nRst, $06
	dc.b nF2, $0C, nG2, $06, nRst, $06, nG2, $06
	dc.b nAb2, $06, nRst, $06, nG2, $0C, nAb2, $03
	dc.b nG2, $03, nF2, $12, nEb2, $12, nF2, $06
	dc.b nEb2, $30, nRst, $7F, $7F, $7F, $39, nBb2
	dc.b $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FD
	dc.b smpsNoAttack, $01
	smpsAlterNote	$03
	dc.b smpsNoAttack, nB2, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterNote	$01
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, $01
	smpsAlterNote	$FE
	dc.b smpsNoAttack, $01
	smpsAlterNote	$03
	dc.b smpsNoAttack, nC3, $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, $01
	smpsAlterNote	$01
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $0F
	smpsAlterNote	$01
	dc.b smpsNoAttack, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, nB2, $01
	smpsAlterNote	$FF
	dc.b smpsNoAttack, nBb2, $01
	smpsAlterNote	$00
	dc.b nBb2, $06, nG2, $06, nBb2, $24, nBb1, $01
	smpsAlterNote	$FB
	dc.b smpsNoAttack, nB1, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, nC2, $04, nEb2, $06, nF2, $06, nF2
	dc.b $01
	smpsAlterNote	$02
	dc.b smpsNoAttack, nFs2, $01
	smpsAlterNote	$03
	dc.b smpsNoAttack, nG2, $01
	smpsAlterNote	$00
	dc.b smpsNoAttack, $1B, nAb2, $06, nBb2, $0C, nEb2, $30
	dc.b nG2, $06, nRst, $06, nG2, $06, nAb2, $06
	dc.b nRst, $06, nG2, $0C, nAb2, $03, nG2, $03
	dc.b nF2, $0C, nRst, $06, nEb2, $0C, nF2, $06
	dc.b nG2, $06, nAb2, $06, nBb2, $06, nRst, $06
	dc.b nBb2, $06, nAb2, $06, nRst, $06, nG2, $0C
	dc.b nAb2, $03, nG2, $03, nF2, $12, nEb2, $0C
	dc.b nF2, $0C, nEb2, $30
	smpsStop

Maniax_PSG2:
	dc.b nRst, $18, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $30, nC0, $12, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $0C, nC0, $0C, nC0, $06
	dc.b nC0, $0C, nC0, $0C, nC0, $18, nC0, $06
	dc.b nC0, $06, nC0, $0C, nC0, $0C, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $0C
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $0C, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $30, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $0C, nC0, $06
	dc.b nC0, $06, nC0, $0C, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $0C, nC0, $0C
	dc.b nC0, $06, nC0, $0C, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $0C, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $06, nC0, $06, nC0, $06, nC0, $06
	dc.b nC0, $08, nC0, $08, nC0, $08, nC0, $08
	dc.b nC0, $08, nD0, $08, nEb0, $08, nRst, $10
	dc.b nC0, $48, nC0, $09
	smpsStop

Maniax_PSG3:
	dc.b nRst, $7F, $7F, $6A
	smpsPSGvoice	$00
	dc.b nAb0, $03, nBb0, $03, nEb1, $03, nBb0, $03
	dc.b nEb1, $03, nG1, $03, nBb1, $03, nG1, $03
	dc.b nBb1, $03, nEb2, $03, nG2, $03, nEb2, $03
	dc.b nG2, $03, nBb2, $03, nEb3, $03, nBb2, $03
	smpsPSGvoice	$00
	dc.b nC2, $30, nD2, $12, nEb2, $12, nF2, $0C
	dc.b nG2, $30, nC2, $30, nRst, $68, $68, $68
	dc.b $68, $68, $68
	smpsPSGvoice	$00
	dc.b nG0, $03, nBb0, $03, nEb1, $03, nBb0, $03
	dc.b nEb1, $03, nG1, $03, nBb1, $03, nG1, $03
	dc.b nBb1, $03, nEb2, $03, nG2, $03, nEb2, $03
	dc.b nG2, $03, nBb2, $03, nEb3, $03, nBb2, $03
	smpsPSGvoice	$00
	dc.b nAb2, $2A, nBb2, $18, nAb2, $12, nBb2, $0C
	dc.b nG2, $30, nC3, $30
	smpsStop
	
Maniax_PWM1:
	dc.b nRst, $18, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $06, dKick, $06, dKick, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dKick, $0C, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $06, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dSnare, $03, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dKick, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b $85, $03, $85, $03, $85, $06, $86, $03
	dc.b $86, $03, $86, $06, $87, $03, $87, $03
	dc.b $94, $03, $94, $03, $95, $06, dMidTimpani, $0C
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dHiTimpani, $0C, dKick, $0C, dHiTimpani, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dHiTimpani, $0C, dKick, $0C
	dc.b dHiTimpani, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b dSnare, $01, dSnare, $0B, dMidTimpani, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b dSnare, $06, dKick, $0C, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dMidTimpani, $0C, dHiTimpani, $06, dKick, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b dSnare, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $06, dKick, $06, dHiTimpani, $06
	dc.b dSnare, $06, dKick, $0C, dKick, $06, dSnare, $06
	dc.b dKick, $06, dSnare, $06, dSnare, $03, dSnare, $03
	dc.b dSnare, $03, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, dKick, $06, dSnare, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, dHiTimpani, $06, dSnare, $06, dKick, $06
	dc.b dKick, $06, $85, $03, $85, $03, $85, $06
	dc.b $86, $03, $86, $03, $86, $06, $87, $03
	dc.b $87, $03, $94, $03, $94, $03, $95, $06
	dc.b dMidTimpani, $0C, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dKick, $06, dHiTimpani, $06
	dc.b dKick, $06, dHiTimpani, $06, dKick, $06, dSnare, $06
	dc.b dKick, $06, dHiTimpani, $0C, dKick, $0C, dHiTimpani, $06
	dc.b dKick, $06, dSnare, $06, dKick, $06, dHiTimpani, $0C
	dc.b dKick, $0C, dHiTimpani, $06, dKick, $06, dSnare, $06
	dc.b dKick, $06, dSnare, $01, dSnare, $0B, dMidTimpani, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dKick, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dHiTimpani, $06, dKick, $06
	dc.b dHiTimpani, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b dKick, $06, dSnare, $06, dKick, $0C, dHiTimpani, $06
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $06, dMidTimpani, $0C, dKick, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $06, dHiTimpani, $06, dSnare, $06
	dc.b dHiTimpani, $06, dKick, $08, dSnare, $01, dSnare, $05
	smpsSetTempoMod		$96
	dc.b nRst, $02, dKick, $05
	smpsSetTempoMod		$4B
	dc.b nRst, $03, dKick, $03
	smpsSetTempoMod		$32
	dc.b nRst, $05, dSnare, $01, dSnare, $01
	smpsSetTempoMod		$26
	dc.b nRst, $06, dKick, $01
	smpsSetTempoMod		$1E
	dc.b nRst, $07
	smpsSetTempoMod		$19
	dc.b dKick, $01
	smpsSetTempoMod		$11
	dc.b nRst, $02
	smpsSetTempoMod		$0C
	dc.b nRst, $01
	smpsSetTempoMod		$09
	dc.b nRst, $02
	smpsSetTempoMod		$08
	dc.b nRst, $01
	smpsSetTempoMod		$07
	dc.b nRst, $02
	smpsSetTempoMod		$06
	dc.b nRst, $02
	smpsSetTempoMod		$05
	dc.b nRst, $03
	smpsSetTempoMod		$04
	dc.b nRst, $03
	smpsSetTempoMod		$03
	dc.b nRst, $07
	smpsSetTempoMod		$05
	dc.b dKick, $48, dKick, $03
	smpsStop
	
Maniax_PWM2:
	dc.b nRst, $18, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $0C, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $18, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b $86, $03, $86, $03, $86, $06, $87, $03
	dc.b $87, $03, $87, $06, $94, $03, $94, $03
	dc.b $95, $03, $95, $09, dKick, $12, dFloorTimpani, $06
	dc.b dSnare, $06, dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $0C
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dFloorTimpani, $12
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dFloorTimpani, $12
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dKick, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $12, dSnare, $06
	dc.b dKick, $06, dKick, $0C, dSnare, $06, dKick, $12
	dc.b dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $0C
	dc.b dFloorTimpani, $06, dHiTimpani, $06, dFloorTimpani, $06, dHiTimpani, $18
	dc.b dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C
	dc.b dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $0C, dFloorTimpani, $0C
	dc.b dHiTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, $86, $03, $86, $03
	dc.b $86, $06, $87, $03, $87, $03, $87, $06
	dc.b $94, $03, $94, $03, $95, $03, $95, $09
	dc.b dKick, $12, dFloorTimpani, $06, dSnare, $06, dFloorTimpani, $0C
	dc.b dFloorTimpani, $0C, dFloorTimpani, $0C, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dFloorTimpani, $12, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dFloorTimpani, $12, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dKick, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $0C, dHiTimpani, $06, dFloorTimpani, $06
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0C, dHiTimpani, $06
	dc.b dFloorTimpani, $06, dFloorTimpani, $06, dFloorTimpani, $06, dHiTimpani, $06
	dc.b dFloorTimpani, $12, dSnare, $06, dKick, $06, dKick, $0C
	dc.b dSnare, $06, dKick, $0C, dFloorTimpani, $06, dHiTimpani, $0C
	dc.b dFloorTimpani, $0C, dHiTimpani, $0C, dFloorTimpani, $0E
	smpsSetTempoMod		$96
	dc.b nRst, $02, dFloorTimpani, $05
	smpsSetTempoMod		$4B
	dc.b nRst, $03, dFloorTimpani, $03
	smpsSetTempoMod		$32
	dc.b nRst, $07
	smpsSetTempoMod		$26
	dc.b nRst, $06, dFloorTimpani, $01
	smpsSetTempoMod		$1E
	dc.b nRst, $07
	smpsSetTempoMod		$19
	dc.b dFloorTimpani, $01
	smpsSetTempoMod		$11
	dc.b nRst, $02
	smpsSetTempoMod		$0C
	dc.b nRst, $01
	smpsSetTempoMod		$09
	dc.b nRst, $02
	smpsSetTempoMod		$08
	dc.b nRst, $01
	smpsSetTempoMod		$07
	dc.b nRst, $02
	smpsSetTempoMod		$06
	dc.b nRst, $02
	smpsSetTempoMod		$05
	dc.b nRst, $03
	smpsSetTempoMod		$04
	dc.b nRst, $03
	smpsSetTempoMod		$03
	dc.b nRst, $07
	smpsSetTempoMod		$05
	dc.b dFloorTimpani, $48, dFloorTimpani, $03
	smpsStop
	
Maniax_PWM3:
	dc.b nRst, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $12
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12, dMidTimpani, $0C
	dc.b dHiTimpani, $0C, dHiTimpani, $1E, dHiTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $12, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12
	dc.b dHiTimpani, $06, dMidTimpani, $30, dFloorTimpani, $60, dHiTimpani, $30
	dc.b dHiTimpani, $24, dHiTimpani, $0C, dFloorTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $0C, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $06
	dc.b dHiTimpani, $18, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06
	dc.b dHiTimpani, $0C, dMidTimpani, $18, dFloorTimpani, $06, dFloorTimpani, $12
	dc.b dFloorTimpani, $12, dSnare, $0C, dSnare, $0C, dSnare, $0C
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18, dHiTimpani, $12
	dc.b dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $12
	dc.b dHiTimpani, $06, dHiTimpani, $12, dMidTimpani, $0C, dHiTimpani, $0C
	dc.b dHiTimpani, $1E, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $12
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $06
	dc.b dMidTimpani, $30, dFloorTimpani, $60, dHiTimpani, $30, dHiTimpani, $24
	dc.b dHiTimpani, $0C, dFloorTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $0C
	dc.b dHiTimpani, $06, dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $18
	dc.b dHiTimpani, $12, dHiTimpani, $06, dHiTimpani, $06, dHiTimpani, $0C
	dc.b dMidTimpani, $18, dFloorTimpani, $06, dFloorTimpani, $12, dFloorTimpani, $0C
	dc.b dHiTimpani, $12, dHiTimpani, $18, dHiTimpani, $08, dHiTimpani, $06
	smpsSetTempoMod		$96
	dc.b nRst, $02, dHiTimpani, $05
	smpsSetTempoMod		$4B
	dc.b nRst, $03, dHiTimpani, $03
	smpsSetTempoMod		$32
	dc.b nRst, $05, dHiTimpani, $02
	smpsSetTempoMod		$26
	dc.b nRst, $06, dHiTimpani, $01
	smpsSetTempoMod		$1E
	dc.b nRst, $07
	smpsSetTempoMod		$19
	dc.b dSnare, $01
	smpsSetTempoMod		$11
	dc.b nRst, $02
	smpsSetTempoMod		$0C
	dc.b nRst, $01
	smpsSetTempoMod		$09
	dc.b nRst, $02
	smpsSetTempoMod		$08
	dc.b nRst, $01
	smpsSetTempoMod		$07
	dc.b nRst, $02
	smpsSetTempoMod		$06
	dc.b nRst, $02
	smpsSetTempoMod		$05
	dc.b nRst, $03
	smpsSetTempoMod		$04
	dc.b nRst, $03
	smpsSetTempoMod		$03
	dc.b nRst, $07
	smpsSetTempoMod		$05
	dc.b dMidTimpani, $48, dMidTimpani, $03
	smpsStop
	
Maniax_PWM4:
	dc.b nRst, $18, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F
	dc.b nRst, $41, dHiTimpani, $7F, nRst, $41, dHiTimpani, $7F
	dc.b nRst, $7F, nRst, $22, dMidTimpani, $7F, nRst, $41
	dc.b dMidTimpani, $7F, nRst, $41, dHiTimpani, $7F, nRst, $41
	dc.b dHiTimpani, $7F, nRst, $7F, nRst, $30
	smpsSetTempoMod		$96
	dc.b nRst, $07
	smpsSetTempoMod		$4B
	dc.b nRst, $06
	smpsSetTempoMod		$32
	dc.b nRst, $07
	smpsSetTempoMod		$26
	dc.b nRst, $07
	smpsSetTempoMod		$1E
	dc.b nRst, $07
	smpsSetTempoMod		$19
	dc.b dHiTimpani, $01
	smpsSetTempoMod		$11
	dc.b nRst, $02
	smpsSetTempoMod		$0C
	dc.b nRst, $01
	smpsSetTempoMod		$09
	dc.b nRst, $02
	smpsSetTempoMod		$08
	dc.b nRst, $01
	smpsSetTempoMod		$07
	dc.b nRst, $02
	smpsSetTempoMod		$06
	dc.b nRst, $02
	smpsSetTempoMod		$05
	dc.b nRst, $03
	smpsSetTempoMod		$04
	dc.b nRst, $03
	smpsSetTempoMod		$03
	dc.b nRst, $07
	smpsSetTempoMod		$05
	smpsStop

Maniax_Patches:
	dc.b	$39, $03, $22, $61, $21, $1F, $12, $1F, $1F, $05, $05, $05, $0B, $00, $00, $00, $00, $10, $18, $10, $18, $1E, $15, $1D, $09
	dc.b	$3B, $0D, $01, $00, $00, $9F, $1F, $1F, $1F, $0E, $0D, $09, $09, $00, $00, $00, $00, $D6, $D6, $D6, $D7, $33, $15, $17, $10
	dc.b	$3A, $32, $08, $72, $02, $12, $4E, $14, $11, $04, $0E, $00, $04, $02, $00, $02, $01, $18, $58, $08, $38, $1B, $21, $24, $08
	even
	; Patch $00
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1E, $15, $1D, $09
	;spAlgorithm	$01
	;spFeedback	$07
	;spDetune	$00, $06, $02, $02
	;spMultiple	$03, $01, $02, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $12, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$05, $05, $05, $0B
	;spSustainLv	$01, $01, $01, $01
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$00, $00, $08, $08
	;spTotalLv	$1E, $1D, $15, $09

	; Patch $01
	; $3B
	; $0D, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0E, $0D, $09, $09,	$00, $00, $00, $00
	; $D6, $D6, $D6, $D7,	$33, $15, $17, $10
	;spAlgorithm	$03
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$0D, $00, $01, $00
	;spRateScale	$02, $00, $00, $00
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$0E, $09, $0D, $09
	;spSustainLv	$0D, $0D, $0D, $0D
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$06, $06, $06, $07
	;spTotalLv	$33, $17, $15, $10

	; Patch $02
	; $3A
	; $32, $08, $72, $02,	$12, $4E, $14, $11
	; $04, $0E, $00, $04,	$02, $00, $02, $01
	; $18, $58, $08, $38,	$1B, $21, $24, $08
	;spAlgorithm	$02
	;spFeedback	$07
	;spDetune	$03, $07, $00, $00
	;spMultiple	$02, $02, $08, $02
	;spRateScale	$00, $00, $01, $00
	;spAttackRt	$12, $14, $0E, $11
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$04, $00, $0E, $04
	;spSustainLv	$01, $00, $05, $03
	;spDecayRt	$02, $02, $00, $01
	;spReleaseRt	$08, $08, $08, $08
	;spTotalLv	$1B, $24, $21, $08
