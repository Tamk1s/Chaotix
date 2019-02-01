Target	EQU	$40000

Maniax_Header:
	smpsHeaderVoice	Maniax_Patches,Target
	smpsHeaderChan	6,3
	;smpsHeaderTempo	$04, $04
	smpsHeaderTempo	$04, $40
	smpsHeaderFM	Maniax_FM1, Target, $00, $0E
	smpsHeaderFM	Maniax_FM2, Target, $00, $1B
	smpsHeaderFM	Maniax_FM3, Target, $00, $18
	smpsHeaderFM	Maniax_FM4, Target, $00, $24
	smpsHeaderFM	Maniax_FM5, Target, $00, $13
	smpsHeaderFM	Maniax_FM6, Target, $00, $13
	smpsHeaderPSG	Maniax_PSG1, Target, $00, $05, $00, $00
	smpsHeaderPSG	Maniax_PSG2, Target, $00, $00, $00, $00
	smpsHeaderPSG	Maniax_PSG3, Target, $00, $00, $00, $01
	smpsHeaderPWM	Maniax_PWM1, Target, $00, $1A
	smpsHeaderPWM	Maniax_PWM2, Target, $00, $1A
	smpsHeaderPWM	Maniax_PWM3, Target, $00, $1A
	smpsHeaderPWM	Maniax_PWM4, Target, $00, $1A

Maniax_FM1:
	smpsFMvoice		$00
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02

Maniax_Jump1:
	dc.b nC1, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nG1, $03, nRst, $01, nC2, $02, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nG1, $01, nRst, $01, nC1, $02
	dc.b nC1, $02, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $01
	dc.b nRst, $01, nC1, $01, nRst, $01, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nC1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nBb0, $02, nF1, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02, nBb0, $02, nB0, $02
	dc.b nC1, $04, nRst, $02, nC1, $02, nG1, $02
	dc.b nC2, $02, nRst, $02, nC1, $02, nRst, $02
	dc.b nC1, $02, nRst, $02, nG1, $03, nRst, $01
	dc.b nG1, $02, nBb0, $02, nB0, $02, nC1, $04
	dc.b nRst, $02, nC1, $02, nG1, $02, nC2, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nG1, $03, nRst, $01, nC2, $02
	dc.b nC1, $02, nG1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $04, nRst, $02, nEb1, $02
	smpsAlterVol		$06
	dc.b nBb1, $02
	smpsAlterVol		$FA
	dc.b nEb1, $02, nRst, $02
	smpsAlterVol		$06
	dc.b nF1, $02, nRst, $02, nF1, $02, nRst, $02
	dc.b nBb0, $03, nRst, $01, nF1, $02, nCs2, $03
	dc.b nRst, $01, nC1, $04, nRst, $02, nC1, $02
	dc.b nG1, $02, nC2, $02, nRst, $02, nC1, $02
	dc.b nRst, $02, nC1, $02, nRst, $02, nG1, $03
	dc.b nRst, $01, nC2, $02
	smpsJump		Maniax_Jump1,Target

Maniax_FM2:
	smpsFMvoice		$01
	dc.b nBb3, $0E

Maniax_Jump2:
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nEb4, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nC4, $12, nEb4, $0E, nC4, $12, nBb3, $0E
	dc.b nC4, $12, nC4, $0E, nBb3, $12, nBb3, $0E
	dc.b nRst, $0E
	smpsJump		Maniax_Jump2,Target

Maniax_FM3:
	smpsFMvoice		$01
	dc.b nG3, $0E

Maniax_Jump3:
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nG3, $12, nG3, $0E, nG3, $12, nG3, $0E
	dc.b nG3, $12, nEb3, $0E, nD3, $12, nG3, $0E
	dc.b nRst, $0E
	smpsJump		Maniax_Jump3,Target

Maniax_FM4:
	smpsFMvoice		$02
	dc.b nRst, $0E

Maniax_Jump4:
	dc.b nRst, $3F, $3F, $3F, $35, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04, nF4, $01, nRst
	dc.b $03, nE4, $01, nRst, $03, nC4, $04, nG3
	dc.b $02, nF4, $01, nRst, $03, nE4, $01, nRst
	dc.b $03, nC4, $06, nG3, $04, nEb4, $01, nRst
	dc.b $03, nD4, $01, nRst, $03, nC4, $04, nF3
	dc.b $02, nEb4, $01, nRst, $03, nD4, $01, nRst
	dc.b $03, nC4, $06, nC4, $04
	smpsAlterVol		$F2
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nC4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $04, nF3, $02
	dc.b nC4, $04
	smpsAlterVol		$0E
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	smpsAlterVol		$F7
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $06, nC4, $04
	dc.b nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b nD4, $01, nRst, $03, nC4, $04, nF3, $02
	dc.b nC4, $04, nRst, $1C
	smpsAlterVol		$09
	smpsJump		Maniax_Jump4,Target

Maniax_FM5:
	smpsFMvoice		$03
	dc.b nRst, $0E

Maniax_Jump5:
	dc.b nRst, $3F, $29
	smpsFMvoice		$04
	dc.b nD5, $01, nBb5, $01, nF5, $01, nBb4, $01
	dc.b nG4, $02, nF5, $01, nG5, $01, nBb5, $01
	dc.b nG6, $03
	smpsAlterVol		$02
	dc.b nF5, $02
	smpsAlterVol		$02
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nG6, $02
	smpsAlterVol		$03
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$02
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nG6, $02
	smpsAlterVol		$04
	dc.b nBb4, $01
	smpsAlterVol		$02
	dc.b nF5, $01
	smpsAlterVol		$02
	dc.b nG5, $01
	smpsAlterVol		$02
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nG6, $03, nRst, $3F, $25
	smpsAlterVol		$E4
	dc.b nF5, $02, nBb5, $01, nC6, $02, nF6, $01
	dc.b nG6, $01, nC7, $03
	smpsAlterVol		$03
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nC6, $02
	smpsAlterVol		$02
	dc.b nF6, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$02
	dc.b nC7, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$02
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nC6, $01
	smpsAlterVol		$02
	dc.b nD6, $01
	smpsAlterVol		$02
	dc.b nF6, $01
	smpsAlterVol		$02
	dc.b nG6, $01
	smpsAlterVol		$02
	dc.b nC7, $03, nRst, $3F, $1F
	smpsAlterVol		$EB
	dc.b nD6, $04, nRst, $02
	smpsAlterVol		$03
	dc.b nD6, $04, nRst, $02
	smpsAlterVol		$05
	dc.b nD6, $01, nG6, $04, nRst, $3F, $30
	smpsFMvoice		$03
	smpsAlterVol		$F7
	dc.b nB4, $10
	smpsFMvoice		$04
	dc.b nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b nC6, $04, nG5, $02, nF6, $01, nRst, $03
	dc.b nE6, $01, nRst, $03, nC6, $06, nG5, $04
	dc.b nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b nBb5, $04, nF5, $02, nEb6, $01, nRst, $03
	dc.b nD6, $01, nRst, $03, nBb5, $06, nC6, $04
	dc.b nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b nC6, $04, nG5, $02, nF6, $01, nRst, $03
	dc.b nE6, $01, nRst, $03, nC6, $04, nG5, $02
	dc.b nC6, $04, nEb6, $01, nRst, $03, nD6, $01
	dc.b nRst, $03, nBb5, $04, nF5, $02, nEb6, $01
	dc.b nRst, $03, nD6, $01, nRst, $03, nD5, $01
	dc.b nBb5, $01, nF5, $01, nBb4, $01, nF4, $01
	dc.b nBb4, $01, nC6, $01, nG5, $01, nBb5, $01
	dc.b nG6, $01, nF6, $01
	smpsAlterVol		$01
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$FD
	smpsAlterVol		$04
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$01
	dc.b nG4, $01
	smpsAlterVol		$02
	dc.b nBb4, $01
	smpsAlterVol		$F8
	smpsAlterVol		$09
	smpsAlterVol		$F7
	dc.b nC5, $01
	smpsAlterVol		$0B
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nG6, $01
	smpsAlterVol		$F2
	dc.b nG4, $01
	smpsAlterVol		$12
	dc.b nBb4, $01
	smpsAlterVol		$EE
	dc.b nF5, $01
	smpsAlterVol		$16
	dc.b nG5, $01
	smpsAlterVol		$02
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nG6, $01
	smpsAlterVol		$E4
	dc.b nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b nBb5, $04, nF5, $02, nEb6, $01, nRst, $03
	dc.b nD6, $01, nRst, $03, nBb5, $04, nF5, $02
	dc.b nC6, $04, nF6, $01, nRst, $03, nE6, $01
	dc.b nRst, $03, nC6, $04, nG5, $02, nF6, $01
	dc.b nRst, $03, nE6, $01, nRst, $03, nC6, $04
	dc.b nG5, $02, nC6, $04, nEb6, $01, nRst, $03
	dc.b nD6, $01, nRst, $03, nBb5, $04, nF5, $02
	dc.b nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b nG6, $02
	smpsAlterVol		$FB
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$05
	dc.b nF6, $01
	smpsAlterVol		$FB
	smpsAlterVol		$05
	dc.b nG6, $01
	smpsAlterVol		$FB
	smpsAlterVol		$05
	dc.b nC7, $02
	smpsAlterVol		$FB
	dc.b nG6, $01, nC7, $01
	smpsAlterVol		$0D
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$FB
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nC6, $01
	smpsAlterVol		$04
	dc.b nD6, $01, nF6, $01
	smpsAlterVol		$FF
	dc.b nG6, $01
	smpsAlterVol		$01
	dc.b nC7, $01
	smpsAlterVol		$02
	dc.b nF5, $01
	smpsAlterVol		$FF
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nC6, $01
	smpsAlterVol		$02
	dc.b nD6, $01
	smpsAlterVol		$FD
	dc.b nF6, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$08
	dc.b nC7, $01
	smpsAlterVol		$FB
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nC6, $01
	smpsAlterVol		$01
	dc.b nD6, $01
	smpsAlterVol		$02
	dc.b nF6, $01
	smpsAlterVol		$02
	dc.b nG6, $01
	smpsAlterVol		$02
	dc.b nC7, $04, nRst, $3F, $15
	smpsAlterVol		$E5
	dc.b nBb5, $04, nRst, $02
	smpsAlterVol		$03
	dc.b nBb5, $04, nRst, $02
	smpsAlterVol		$05
	dc.b nBb5, $02, nG6, $04, nRst, $3F, $3C
	smpsAlterVol		$F3
	dc.b nG4, $02, nC5, $02, nF6, $02, nRst, $02
	dc.b nE6, $02, nRst, $04, nC6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nF6, $02, nRst, $02
	dc.b nE6, $06, nC6, $02, nD6, $02, nEb6, $02
	dc.b nRst, $02, nD6, $02, nRst, $04, nBb5, $02
	dc.b nRst, $02, nC6, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nC6, $06, nG6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $02, nRst, $04
	dc.b nC6, $02, nRst, $02, nF6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $04, nC6, $02
	dc.b nD6, $02, nEb6, $04, nRst, $02, nD6, $02
	dc.b nRst, $04, nBb5, $02, nRst, $02, nC6, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nC5, $04
	smpsAlterVol		$04
	dc.b nG4, $01
	smpsAlterVol		$FC
	smpsAlterVol		$04
	dc.b nBb4, $01
	smpsAlterVol		$FC
	dc.b nG6, $01
	smpsAlterVol		$04
	dc.b nG5, $01, nBb5, $01, nG6, $01
	smpsAlterVol		$FC
	smpsAlterVol		$04
	dc.b nG4, $01
	smpsAlterVol		$01
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$F9
	smpsAlterVol		$08
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$01
	dc.b nG4, $01
	smpsAlterVol		$02
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$02
	dc.b nG5, $01
	smpsAlterVol		$01
	smpsAlterVol		$F0
	dc.b nC5, $01
	smpsAlterVol		$12
	dc.b nG6, $01
	smpsAlterVol		$02
	dc.b nG4, $01
	smpsAlterVol		$02
	dc.b nBb4, $01
	smpsAlterVol		$EA
	dc.b nF6, $01
	smpsAlterVol		$1A
	dc.b nG5, $01
	smpsAlterVol		$02
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nG6, $01
	smpsAlterVol		$E0
	dc.b nF5, $02, nRst, $02, nE6, $06, nC5, $02
	dc.b nD5, $02, nEb6, $02, nRst, $02, nD6, $02
	dc.b nRst, $04, nBb5, $02, nRst, $02, nC6, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nC6, $04
	dc.b nG5, $01, nC6, $01, nG6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $02, nRst, $04
	dc.b nC6, $02, nRst, $02, nF6, $02, nRst, $02
	dc.b nF6, $02, nRst, $02, nE6, $04, nC6, $02
	dc.b nD6, $02, nEb6, $04, nRst, $02, nD6, $02
	dc.b nEb6, $02, nF6, $02, nG6, $02, nRst, $02
	dc.b nG6, $02, nRst, $02, nC6, $02, nRst, $02
	dc.b nG6, $02
	smpsAlterVol		$04
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$FC
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b nF6, $01
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b nG5, $01
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b nF6, $01
	smpsAlterVol		$04
	dc.b nF6, $01, nG6, $01, nC7, $01
	smpsAlterVol		$08
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$FB
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nC6, $01
	smpsAlterVol		$04
	dc.b nD6, $01, nF6, $01
	smpsAlterVol		$FF
	dc.b nG6, $01, nC7, $01
	smpsAlterVol		$03
	dc.b nF5, $01
	smpsAlterVol		$FF
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nC6, $01
	smpsAlterVol		$02
	dc.b nD6, $01
	smpsAlterVol		$FD
	dc.b nF6, $01
	smpsAlterVol		$01
	dc.b nG6, $01, nC7, $01
	smpsAlterVol		$03
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nC6, $01
	smpsAlterVol		$01
	dc.b nD6, $01
	smpsAlterVol		$02
	dc.b nF6, $01
	smpsAlterVol		$02
	dc.b nG6, $01, nC7, $04, nRst, $01
	smpsAlterVol		$E6
	smpsJump		Maniax_Jump5,Target

Maniax_FM6:
	smpsFMvoice		$04
	dc.b nRst, $0E

Maniax_Jump6:
	dc.b nRst, $3F, $2E, nBb4, $03, nRst, $02, nG4
	dc.b $01
	smpsAlterVol		$01
	dc.b nBb4, $02
	smpsAlterVol		$02
	dc.b nG5, $03
	smpsAlterVol		$03
	dc.b nG4, $03, nRst, $03
	smpsAlterVol		$0A
	dc.b nG4, $03
	smpsAlterVol		$06
	dc.b nG5, $03, nRst, $3F, $28
	smpsAlterVol		$EA
	dc.b nG5, $03, nD6, $03, nC7, $02
	smpsAlterVol		$02
	dc.b nG5, $03
	smpsAlterVol		$03
	dc.b nD6, $03, nRst, $02
	smpsAlterVol		$07
	dc.b nG5, $03
	smpsAlterVol		$04
	dc.b nD6, $03
	smpsAlterVol		$06
	dc.b nC7, $03, nRst, $3F, $1E
	smpsAlterVol		$EB
	dc.b nBb5, $04, nRst, $02
	smpsAlterVol		$03
	dc.b nBb5, $04, nRst, $02
	smpsAlterVol		$05
	dc.b nBb5, $02, nG6, $04, nRst, $3F, $3F, $01
	smpsAlterVol		$F7
	dc.b nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b nC5, $04, nG4, $02, nF5, $01, nRst, $03
	dc.b nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b nBb4, $04, nF4, $02, nEb5, $01, nRst, $03
	dc.b nD5, $01, nRst, $03, nBb4, $06, nC5, $04
	dc.b nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b nC5, $04, nG4, $02, nF5, $01, nRst, $03
	dc.b nE5, $01, nRst, $03, nC5, $04, nG4, $02
	dc.b nC5, $04, nEb5, $01, nRst, $03, nD5, $01
	dc.b nRst, $03, nBb4, $04, nF4, $02, nEb5, $01
	dc.b nRst, $03, nD5, $01, nRst, $03, nD5, $01
	dc.b nBb5, $01, nF5, $01, nBb4, $01, nF4, $01
	dc.b nBb4, $01, nC6, $01, nG5, $01, nBb5, $01
	dc.b nG6, $01, nF6, $01
	smpsAlterVol		$01
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$FD
	smpsAlterVol		$04
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$01
	dc.b nG4, $01
	smpsAlterVol		$02
	dc.b nBb4, $01
	smpsAlterVol		$F8
	smpsAlterVol		$09
	smpsAlterVol		$F7
	dc.b nC5, $01
	smpsAlterVol		$0B
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nG6, $01
	smpsAlterVol		$F2
	dc.b nG4, $01
	smpsAlterVol		$12
	dc.b nBb4, $01
	smpsAlterVol		$EE
	dc.b nF5, $01
	smpsAlterVol		$16
	dc.b nG5, $01
	smpsAlterVol		$02
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nG6, $01
	smpsAlterVol		$E4
	dc.b nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b nBb4, $04, nF4, $02, nEb5, $01, nRst, $03
	dc.b nD5, $01, nRst, $03, nBb4, $04, nF4, $02
	dc.b nC5, $04, nF5, $01, nRst, $03, nE5, $01
	dc.b nRst, $03, nC5, $04, nG4, $02, nF5, $01
	dc.b nRst, $03, nE5, $01, nRst, $03, nC5, $04
	dc.b nG4, $02, nC5, $04, nEb5, $01, nRst, $03
	dc.b nD5, $01, nRst, $03, nBb4, $04, nF4, $02
	dc.b nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b nG6, $02
	smpsAlterVol		$FB
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$05
	dc.b nF6, $01
	smpsAlterVol		$FB
	smpsAlterVol		$05
	dc.b nG6, $01
	smpsAlterVol		$FB
	smpsAlterVol		$05
	dc.b nC7, $01
	smpsAlterVol		$FB
	dc.b nF6, $01, nG6, $01, nC7, $01
	smpsAlterVol		$0D
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$FB
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nC6, $01
	smpsAlterVol		$04
	dc.b nD6, $01, nF6, $01
	smpsAlterVol		$FF
	dc.b nG6, $01
	smpsAlterVol		$01
	dc.b nC7, $01
	smpsAlterVol		$02
	dc.b nF5, $01
	smpsAlterVol		$FF
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nC6, $01
	smpsAlterVol		$02
	dc.b nD6, $01
	smpsAlterVol		$FD
	dc.b nF6, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$08
	dc.b nC7, $01
	smpsAlterVol		$FB
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nC6, $01
	smpsAlterVol		$01
	dc.b nD6, $01
	smpsAlterVol		$02
	dc.b nF6, $01
	smpsAlterVol		$02
	dc.b nG6, $01
	smpsAlterVol		$02
	dc.b nC7, $04, nRst, $3F, $16
	smpsAlterVol		$E5
	dc.b nD6, $04, nRst, $02
	smpsAlterVol		$03
	dc.b nD6, $04, nRst, $02
	smpsAlterVol		$05
	dc.b nD6, $01, nG6, $04, nRst, $3F, $3D
	smpsAlterVol		$F3
	dc.b nA4, $02, nD5, $02, nRst, $03, nE5, $02
	dc.b nRst, $04, nC5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nE5, $06
	dc.b nC5, $02, nD5, $02, nEb5, $02, nRst, $02
	dc.b nD5, $02, nRst, $04, nBb4, $02, nRst, $02
	dc.b nC5, $02, nRst, $02, nF4, $02, nRst, $02
	dc.b nC5, $06, nG5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nE5, $02, nRst, $08, nF5, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nE5, $04
	dc.b nC5, $02, nD5, $02, nEb5, $04, nRst, $02
	dc.b nD5, $02, nRst, $04, nBb4, $02, nRst, $02
	dc.b nC5, $02, nRst, $02, nF4, $02, nRst, $02
	dc.b nC5, $04
	smpsAlterVol		$04
	dc.b nG4, $01
	smpsAlterVol		$FC
	smpsAlterVol		$04
	dc.b nBb4, $01
	smpsAlterVol		$FC
	dc.b nG6, $01
	smpsAlterVol		$04
	dc.b nG5, $01, nBb5, $01, nG6, $01
	smpsAlterVol		$FC
	smpsAlterVol		$04
	dc.b nG4, $01
	smpsAlterVol		$01
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$F9
	smpsAlterVol		$08
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nG6, $01
	smpsAlterVol		$01
	dc.b nG4, $01
	smpsAlterVol		$02
	dc.b nBb4, $01
	smpsAlterVol		$01
	dc.b nF5, $01
	smpsAlterVol		$02
	dc.b nG5, $01
	smpsAlterVol		$01
	smpsAlterVol		$F0
	dc.b nC5, $01
	smpsAlterVol		$12
	dc.b nG6, $01
	smpsAlterVol		$02
	dc.b nG4, $01
	smpsAlterVol		$02
	dc.b nBb4, $01
	smpsAlterVol		$EA
	dc.b nF6, $01
	smpsAlterVol		$1A
	dc.b nG5, $01
	smpsAlterVol		$02
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nG6, $01
	smpsAlterVol		$E0
	dc.b nF5, $02, nRst, $02, nE6, $06, nC5, $02
	dc.b nD5, $02, nEb5, $02, nRst, $02, nD5, $02
	dc.b nRst, $04, nBb4, $02, nRst, $02, nC5, $02
	dc.b nRst, $02, nF4, $02, nRst, $02, nC5, $04
	dc.b nC5, $02, nG5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nE5, $02, nRst, $04, nC5, $02
	dc.b nRst, $02, nF5, $02, nRst, $02, nF5, $02
	dc.b nRst, $02, nE5, $04, nC5, $02, nD5, $02
	dc.b nEb5, $04, nRst, $02, nD5, $02, nEb5, $02
	dc.b nF5, $02, nG5, $02, nRst, $02, nG5, $02
	dc.b nRst, $06, nG6, $02
	smpsAlterVol		$04
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$FC
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b nF6, $01
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b nG5, $01
	smpsAlterVol		$04
	smpsAlterVol		$FC
	dc.b nF6, $01
	smpsAlterVol		$04
	dc.b nF6, $01, nG6, $01, nC7, $01
	smpsAlterVol		$08
	dc.b nF5, $01, nG5, $01
	smpsAlterVol		$FB
	dc.b nBb5, $01
	smpsAlterVol		$01
	dc.b nC6, $01
	smpsAlterVol		$04
	dc.b nD6, $01, nF6, $01
	smpsAlterVol		$FF
	dc.b nG6, $01, nC7, $01
	smpsAlterVol		$03
	dc.b nF5, $01
	smpsAlterVol		$FF
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$04
	dc.b nC6, $01
	smpsAlterVol		$02
	dc.b nD6, $01
	smpsAlterVol		$FD
	dc.b nF6, $01
	smpsAlterVol		$01
	dc.b nG6, $01, nC7, $01
	smpsAlterVol		$03
	dc.b nF5, $01
	smpsAlterVol		$01
	dc.b nG5, $01
	smpsAlterVol		$01
	dc.b nBb5, $01
	smpsAlterVol		$02
	dc.b nC6, $01
	smpsAlterVol		$01
	dc.b nD6, $01
	smpsAlterVol		$02
	dc.b nF6, $01
	smpsAlterVol		$02
	dc.b nG6, $01, nC7, $04, nRst, $01
	smpsAlterVol		$E6
	smpsJump		Maniax_Jump6,Target

Maniax_PSG1:
	dc.b nRst, $0E

Maniax_Jump7:
	dc.b nRst, $3F, $3F, $3F, $35, nC3, $01, nRst
	dc.b $03, nC3, $01, nC3, $01, nRst, $02, nC3
	dc.b $01, nC3, $01, nRst, $01, nG3, $01, nF3
	dc.b $01, nRst, $01, nE3, $01, nRst, $03, nC3
	dc.b $01, nRst, $03, nG2, $01, nRst, $09, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nEb3, $01, nRst, $01, nD3
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nF2
	dc.b $01, nRst, $09, nC3, $01, nRst, $03, nC3
	dc.b $01, nBb2, $01, nC3, $01, nRst, $01, nC3
	dc.b $01, nBb2, $01, nC3, $01, nF3, $01, nF3
	dc.b $01, nRst, $01, nE3, $01, nRst, $03, nC3
	dc.b $01, nRst, $03, nG2, $01, nRst, $09, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nEb3, $01, nRst, $01, nD3
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nF2
	dc.b $01, nRst, $09, nC3, $01, nRst, $03, nC3
	dc.b $01, nC3, $01, nRst, $02, nC3, $01, nC3
	dc.b $01, nRst, $01, nG3, $01, nF3, $01, nRst
	dc.b $01, nE3, $01, nRst, $03, nC3, $01, nRst
	dc.b $03, nG2, $01, nRst, $09, nBb2, $01, nRst
	dc.b $03, nBb2, $01, nRst, $03, nBb2, $01, nRst
	dc.b $03, nEb3, $01, nRst, $01, nD3, $01, nRst
	dc.b $03, nBb2, $01, nRst, $03, nF2, $01, nRst
	dc.b $09, nC3, $01, nRst, $03, nC3, $01, nBb2
	dc.b $01, nC3, $01, nRst, $01, nC3, $01, nBb2
	dc.b $01, nC3, $01, nF3, $01, nF3, $01, nRst
	dc.b $01, nE3, $01, nRst, $03, nC3, $01, nRst
	dc.b $03, nG2, $01, nRst, $09, nBb2, $01, nRst
	dc.b $03, nBb2, $01, nRst, $03, nBb2, $01, nRst
	dc.b $03, nEb3, $01, nRst, $01, nD3, $01, nRst
	dc.b $03, nBb2, $01, nBb2, $01, nC3, $01, nF3
	dc.b $01, nF2, $01, nRst, $35, $35, $35, $35
	dc.b $35, nC3, $01, nRst, $03, nG2, $01, nC3
	dc.b $01, nRst, $02, nC3, $01, nC3, $01, nRst
	dc.b $01, nG3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nF2, $01, nRst, $09, nC3
	dc.b $01, nRst, $03, nC3, $01, nBb2, $01, nC3
	dc.b $01, nRst, $01, nC3, $01, nBb2, $01, nC3
	dc.b $01, nF3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nF2, $01, nRst, $09, nC3
	dc.b $01, nRst, $03, nC3, $01, nC3, $01, nRst
	dc.b $01, nG3, $01, nC3, $01, nC3, $01, nRst
	dc.b $01, nG3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nF2, $01, nRst, $09, nC3
	dc.b $01, nRst, $03, nC3, $01, nBb2, $01, nC3
	dc.b $01, nRst, $01, nC3, $01, nBb2, $01, nC3
	dc.b $01, nF3, $01, nF3, $01, nRst, $01, nE3
	dc.b $01, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b $01, nRst, $09, nBb2, $01, nRst, $03, nBb2
	dc.b $01, nRst, $03, nBb2, $01, nRst, $03, nEb3
	dc.b $01, nRst, $01, nD3, $01, nRst, $03, nBb2
	dc.b $01, nBb2, $01, nC3, $01, nF3, $01, nF2
	dc.b $01, nRst, $3A, $3A, $3A, $3A, $3A, $03	
	dc.b nRst, smpsNoAttack	
	smpsJump		Maniax_Jump7,Target

Maniax_PSG2:
	dc.b nRst, $0E

Maniax_Jump8:
	dc.b nRst, $3F, $3F, $3F, $35, nC2, $02, nG2
	dc.b $02, nF2, $02, nG2, $02, nC2, $02, nG2
	dc.b $02, nF2, $02, nG2, $02, nC2, $02, nG2
	dc.b $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02
	smpsSetVol	$FF
	dc.b nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nRst, $36, nC3, $01, nC3, $01, nC3, $01
	dc.b nC3, $01, nC3, $01, nC3, $01, nC3, $01
	dc.b nC3, $01, nC3, $01, nC3, $01, nRst, $3F
	dc.b $37, nC3, $01, nC3, $01, nC3, $01, nC3
	dc.b $01, nC3, $01, nC3, $01, nC3, $01, nC3
	dc.b $01, nC3, $01, nC3, $01, nRst, $3F, $01
	smpsSetVol	$05
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02
	smpsSetVol	$FF
	dc.b nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	smpsSetVol	$FF
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC2, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nC3, $02, nG2, $02, nF2, $02, nG2, $02
	dc.b nRst, $2F, $2F, $2F, $2F, $2F, $2F, $02
	smpsSetVol	$05
	dc.b nRst, smpsNoAttack
	smpsJump		Maniax_Jump8,Target

Maniax_PSG3:
	dc.b nRst, $0E

Maniax_Jump9:
	dc.b nRst, $3F, $3F, $3F, $35, nC1, $01, nRst
	dc.b $03, nBb0, $01, nRst, $03, nBb0, $04, nRst
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nRst
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b $03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b $02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b $03, nBb0, $06, nC1, $04
	smpsSetVol	$FB
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nC1, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $04, nF0, $02
	dc.b nBb0, $04
	smpsSetVol	$05
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nC1, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nBb0, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	smpsSetVol	$FD
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nC1, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nC1, $06, nC1, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b nC1, $01, nRst, $03, nBb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $1C
	smpsSetVol	$03
	dc.b	smpsNoAttack
	smpsJump		Maniax_Jump9,Target
	
Maniax_PWM1:
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01

Maniax_JumpP1:
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $84, $02
	;!@
	;smpsSetTempoMod		$04							
	;smpsSetTempoMod		$40
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $84, $02
	dc.b dKick, $02, $84, $02, $8E, $02, dKick, $01
	dc.b $84, $01, dKick, $02, $84, $02, $8E, $02
	dc.b dKick, $01, $84, $01, $84, $02, $84, $02
	dc.b dSnare, $01, $84, $01, $84, $02, dKick, $01
	dc.b $84, $05, $84, $02, dKick, $02, $84, $02
	dc.b $8E, $02, dKick, $01, $84, $01, dKick, $02
	dc.b $84, $02, $8E, $02, dKick, $01, $84, $01
	dc.b $84, $02, $84, $02, dSnare, $01, $84, $01
	dc.b dSnare, $01, dSnare, $01, dSnare, $01, dSnare, $01
	dc.b dSnare, $02, dFloorTimpani, $02, $84, $02, dKick, $02
	dc.b $84, $02, $8E, $02, dKick, $01, $84, $01
	dc.b dKick, $02, $84, $02, $8E, $02, dKick, $01
	dc.b $84, $01, $84, $02, $84, $02, dSnare, $01
	dc.b $84, $01, $84, $02, dKick, $01, $84, $03
	dc.b $8E, $02, $84, $02, dKick, $02, $84, $02
	dc.b $84, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b dSnare, $01, $8E, $01, dSnare, $01, dSnare, $01
	dc.b dSnare, $02, dSnare, $01, dKick, $01, $84, $01
	dc.b dSnare, $01, dKick, $02, $84, $02, $8E, $02
	dc.b dKick, $01, $84, $01, dKick, $02, $84, $02
	dc.b $8E, $02, dKick, $01, $84, $01, $84, $02
	dc.b $84, $02, dSnare, $01, $84, $01, $84, $02
	dc.b dKick, $01, $84, $04, dKick, $01, $84, $01
	dc.b $8E, $01, dKick, $02, $84, $02, $8E, $02
	dc.b dKick, $01, $84, $01, dKick, $02, $84, $02
	dc.b $8E, $02, dKick, $01, $84, $01, $84, $02
	dc.b $84, $02, dSnare, $01, $84, $01, dSnare, $01
	dc.b dSnare, $01, dSnare, $01, dSnare, $01, dSnare, $02
	dc.b dFloorTimpani, $02, $84, $02, dKick, $02, $84, $02
	dc.b $8E, $02, dKick, $01, $84, $01, dKick, $02
	dc.b $84, $02, $8E, $02, dKick, $01, $84, $01
	dc.b $84, $02, $84, $02, dSnare, $01, $84, $01
	dc.b $84, $02, dKick, $01, $84, $03, $8E, $02
	dc.b dKick, $01, $8E, $01, dKick, $02, $84, $02
	dc.b $84, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b dSnare, $01, $8E, $01, dSnare, $01, dSnare, $01
	dc.b dSnare, $02, dSnare, $01, dKick, $01, $84, $01
	dc.b dSnare, $01, dKick, $02, $84, $02, $8E, $02
	dc.b dKick, $01, $84, $01, dKick, $02, $84, $02
	dc.b $8E, $02, dKick, $01, $84, $01, $84, $02
	dc.b $84, $02, $8E, $01, $84, $01, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, $8E, $02
	dc.b $84, $02, $84, $02, $84, $02, $8E, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $8E, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $8E, $01, $84, $01, dKick, $03
	dc.b $84, $01, $84, $02, $8E, $02, $84, $02
	dc.b $84, $02, $84, $02, $8E, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $8E, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $8E, $01, $84, $01, dKick, $03, $84, $01
	dc.b $84, $02, $8E, $02, $84, $02, $84, $02
	dc.b $84, $02, $8E, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $02, $8E, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $8E, $01
	dc.b $84, $01, dFloorTimpani, $01, dFloorTimpani, $02, dFloorTimpani, $01
	dc.b dKick, $01, dKick, $01, $8E, $02, $84, $02
	dc.b dKick, $02, $84, $02, $8E, $02, dKick, $01
	dc.b $84, $01, dKick, $02, $84, $02, $8E, $02
	dc.b dKick, $01, $84, $01, $84, $02, $84, $02
	dc.b $8E, $01, $84, $01, $84, $03, $84, $01
	dc.b $84, $02, $8E, $02, $84, $02, $84, $02
	dc.b $84, $02, $8E, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $02, $8E, $02, $84, $01
	dc.b $84, $01, $84, $02, $84, $02, $8E, $01
	dc.b $84, $01, dKick, $03, $84, $01, $84, $02
	dc.b $8E, $02, $84, $02, $84, $02, $84, $02
	dc.b $8E, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $8E, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $02, $8E, $01, $84, $01
	dc.b dKick, $03, $84, $01, $84, $02, $8E, $02
	dc.b $84, $02, $84, $02, $84, $02, $8E, $02
	dc.b $84, $01, $84, $01, $84, $02, $84, $02
	dc.b $8E, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $8E, $01, $84, $01, dFloorTimpani, $01
	dc.b dFloorTimpani, $02, dFloorTimpani, $01, dKick, $01, dKick, $01
	dc.b $8E, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $01, $84, $01, $84, $02
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, $84, $01, $84, $01, $84, $02
	smpsJump		Maniax_JumpP1,Target

Maniax_PWM2:
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02

Maniax_JumpP2:
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	;!@
	;smpsSetTempoMod		$04							
	;smpsSetTempoMod		$40
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dSnare, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $8E, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, dSnare, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $8E, $02, $8E, $04, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, dSnare, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $02, $84, $02
	dc.b dHiTimpani, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, dKick, $02
	dc.b $84, $02, $84, $02, dFloorTimpani, $01, dFloorTimpani, $01
	dc.b dFloorTimpani, $04, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $8E, $02, $84, $01, dSnare, $01, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, dSnare, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $8E, $02
	dc.b $8E, $04, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $04
	dc.b $84, $01, dSnare, $01, $84, $02, $84, $02
	dc.b dHiTimpani, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, dKick, $02
	dc.b $84, $02, $84, $02, dFloorTimpani, $01, dFloorTimpani, $01
	dc.b dFloorTimpani, $04, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dSnare, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b $84, $02, dKick, $01, dKick, $01, dFloorTimpani, $01
	dc.b dKick, $01, dFloorTimpani, $01, dFloorTimpani, $01, dKick, $02
	dc.b $84, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dKick, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dKick, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, dSnare, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b $84, $02, $84, $02, $84, $02, $84, $02
	dc.b dKick, $02, $84, $02, $84, $02, $84, $02
	dc.b dKick, $01, dKick, $01, dFloorTimpani, $01, dKick, $01
	dc.b dFloorTimpani, $01, dFloorTimpani, $01, dKick, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $02, $84, $02
	smpsJump		Maniax_JumpP2,Target

Maniax_PWM3:
	dc.b nRst, $04, $84, $08, $84, $04

Maniax_JumpP3:
	dc.b nRst, $04, $84, $08, $84, $04
	;!@
	;smpsSetTempoMod		$04							
	;smpsSetTempoMod		$40
	dc.b nRst, $04, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, $84, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, dHiTimpani, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, dHiTimpani, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, dHiTimpani, $08, $84, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $08, $84, $08, dHiTimpani, $08, dHiTimpani, $08
	dc.b dHiTimpani, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b dSnare, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, $84, $01, $8E, $01, dFloorTimpani, $01
	dc.b $84, $01, dFloorTimpani, $02, $8E, $04, $84, $04
	dc.b dHiTimpani, $02, $84, $02, $84, $04, $84, $02
	dc.b $84, $04, dKick, $02, $84, $02, dKick, $02
	dc.b $84, $02, $84, $02, dSnare, $04, $84, $04
	dc.b $84, $02, dKick, $02, dKick, $02, $84, $02
	dc.b dHiTimpani, $02, dKick, $04, $84, $02, dHiTimpani, $02
	dc.b dKick, $01, dSnare, $01, $8E, $01, $84, $03
	dc.b dFloorTimpani, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, dKick, $02, $84, $02, $84, $02
	dc.b dSnare, $04, $84, $04, dHiTimpani, $02, $84, $02
	dc.b $84, $04, $84, $02, $84, $04, dKick, $02
	dc.b $84, $02, $84, $01, $8E, $01, dFloorTimpani, $01
	dc.b $84, $01, dFloorTimpani, $02, $8E, $04, $84, $04
	dc.b dHiTimpani, $02, $84, $02, $84, $04, $84, $02
	dc.b $84, $04, dKick, $02, $84, $02, dKick, $02
	dc.b $84, $02, $84, $02, dSnare, $02, $84, $02
	dc.b $84, $04, $84, $02, dKick, $02, dKick, $02
	dc.b $84, $02, dHiTimpani, $02, dKick, $04, $84, $02
	dc.b dHiTimpani, $02, dKick, $01, dSnare, $01, $8E, $01
	dc.b $84, $03, dFloorTimpani, $04, $84, $04, $84, $02
	dc.b $84, $02, $84, $04, $84, $02, $84, $04
	dc.b dKick, $02, $84, $02, dKick, $02, dKick, $04
	dc.b $84, $04, dKick, $04, dHiTimpani, $02, dKick, $02
	dc.b dKick, $04, dSnare, $02, $84, $04, dKick, $02
	dc.b dHiTimpani, $02, $84, $02, dKick, $04, $84, $04
	dc.b dKick, $04, dHiTimpani, $02, dKick, $02, dKick, $04
	dc.b dSnare, $02, $84, $04, dKick, $02, dHiTimpani, $02
	dc.b $84, $02, dKick, $04, $84, $04, dKick, $04
	dc.b dHiTimpani, $02, dKick, $02, dKick, $04, dSnare, $02
	dc.b $84, $04, dKick, $02, dHiTimpani, $02, $84, $02
	dc.b $84, $01, $84, $01, $84, $02, dFloorTimpani, $04
	dc.b $84, $04, $84, $02, $84, $02, $84, $04
	dc.b $84, $02, $84, $04, dKick, $02, $84, $02
	dc.b dKick, $02, $84, $04, $84, $04, dKick, $04
	dc.b dHiTimpani, $02, dKick, $02, dKick, $04, dSnare, $02
	dc.b $84, $04, dKick, $02, dHiTimpani, $02, $84, $02
	dc.b dKick, $04, $84, $04, dKick, $04, dHiTimpani, $02
	dc.b dKick, $02, dKick, $04, dSnare, $02, $84, $04
	dc.b dKick, $02, dHiTimpani, $02, $84, $02, dKick, $04
	dc.b $84, $04, dKick, $04, dHiTimpani, $02, dKick, $02
	dc.b dKick, $04, dSnare, $02, $84, $04, dKick, $02
	dc.b dHiTimpani, $02, $84, $02, $84, $01, $84, $01
	dc.b $84, $02, dFloorTimpani, $08, $84, $08, $84, $08
	dc.b $84, $08
	smpsJump		Maniax_JumpP3,Target

Maniax_PWM4:
	dc.b nRst, $10

Maniax_JumpP4:
	dc.b nRst, $10
	;!@
	;smpsSetTempoMod		$04							
	;smpsSetTempoMod		$40
	dc.b $25, $25, $25, $25, $25, $25, $25, $25
	dc.b $25, $25, $25, $25, $25, $25, $25, $25
	dc.b $25, $25, $25, $25, $84, $08, $84, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, $84, $08
	dc.b dHiTimpani, $02, dKick, $02, dKick, $04, dSnare, $08
	dc.b $84, $08, $84, $08, dHiTimpani, $08, $84, $08
	dc.b dSnare, $08, $8E, $08, $8E, $02, dFloorTimpani, $02
	dc.b $84, $02, $84, $02, $84, $08, $84, $08
	dc.b $84, $08, dHiTimpani, $08, $84, $08, $84, $08
	dc.b $84, $08, dHiTimpani, $02, dKick, $02, dKick, $04
	dc.b dSnare, $08, $84, $08, $84, $08, dHiTimpani, $08
	dc.b $84, $08, dSnare, $08, $8E, $08, $8E, $02
	dc.b dFloorTimpani, $02, $84, $02, $84, $02, $84, $08
	dc.b dHiTimpani, $08, $84, $08, $84, $08, $84, $08
	dc.b dSnare, $08, dHiTimpani, $08, $84, $04, $84, $04
	dc.b $84, $08, dSnare, $08, dHiTimpani, $08, $84, $04
	dc.b $84, $04, $84, $08, dSnare, $08, dHiTimpani, $08
	dc.b $84, $02, $84, $02, dKick, $02, $84, $02
	dc.b dSnare, $08, dHiTimpani, $08, $84, $08, $84, $04
	dc.b dKick, $04, $84, $08, dSnare, $08, dHiTimpani, $08
	dc.b $84, $04, $84, $04, $84, $08, dSnare, $08
	dc.b dHiTimpani, $08, $84, $04, $84, $04, $84, $08
	dc.b dSnare, $08, dHiTimpani, $08, $84, $02, $84, $02
	dc.b dKick, $02, $84, $02, dSnare, $20
	smpsJump		Maniax_JumpP4,Target
	
Maniax_Patches:
	dc.b	$20, $60, $64, $60, $60, $DF, $DF, $9F, $9F, $1F, $0A, $1F, $0A, $1C, $0F, $09, $02, $25, $44, $15, $F5, $2A, $29, $15, $02
	dc.b	$3A, $71, $07, $33, $01, $9C, $96, $5D, $92, $04, $07, $04, $06, $00, $01, $03, $00, $15, $12, $16, $B5, $25, $34, $25, $06
	dc.b	$31, $30, $30, $30, $30, $DF, $DF, $9F, $9F, $0C, $07, $0C, $09, $09, $0A, $09, $08, $2F, $1F, $1F, $2F, $0E, $48, $16, $00
	dc.b	$3D, $0F, $0F, $00, $00, $08, $05, $45, $05, $00, $00, $12, $05, $00, $0F, $0F, $0F, $00, $0D, $47, $07, $00, $0F, $0E, $0F
	dc.b	$05, $36, $32, $7C, $72, $1F, $5F, $1F, $1F, $07, $0B, $0A, $0B, $00, $07, $07, $07, $59, $4E, $59, $4E, $23, $0D, $23, $0C
	even

	; Patch $00
	; $20
	; $60, $64, $60, $60,	$DF, $DF, $9F, $9F
	; $1F, $0A, $1F, $0A,	$1C, $0F, $09, $02
	; $25, $44, $15, $F5,	$2A, $29, $15, $02
	;spAlgorithm	$00
	;spFeedback	$04
	;spDetune	$06, $06, $06, $06
	;spMultiple	$00, $00, $04, $00
	;spRateScale	$03, $02, $03, $02
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$1F, $1F, $0A, $0A
	;spSustainLv	$02, $01, $04, $0F
	;spDecayRt	$1C, $09, $0F, $02
	;spReleaseRt	$05, $05, $04, $05
	;spTotalLv	$2A, $15, $29, $02

	; Patch $01
	; $3A
	; $71, $07, $33, $01,	$9C, $96, $5D, $92
	; $04, $07, $04, $06,	$00, $01, $03, $00
	; $15, $12, $16, $B5,	$25, $34, $25, $06
	;spAlgorithm	$02
	;spFeedback	$07
	;spDetune	$07, $03, $00, $00
	;spMultiple	$01, $03, $07, $01
	;spRateScale	$02, $01, $02, $02
	;spAttackRt	$1C, $1D, $16, $12
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$04, $04, $07, $06
	;spSustainLv	$01, $01, $01, $0B
	;spDecayRt	$00, $03, $01, $00
	;spReleaseRt	$05, $06, $02, $05
	;spTotalLv	$25, $25, $34, $06

	; Patch $02
	; $31
	; $30, $30, $30, $30,	$DF, $DF, $9F, $9F
	; $0C, $07, $0C, $09,	$09, $0A, $09, $08
	; $2F, $1F, $1F, $2F,	$0E, $48, $16, $00
	;spAlgorithm	$01
	;spFeedback	$06
	;spDetune	$03, $03, $03, $03
	;spMultiple	$00, $00, $00, $00
	;spRateScale	$03, $02, $03, $02
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$0C, $0C, $07, $09
	;spSustainLv	$02, $01, $01, $02
	;spDecayRt	$09, $09, $0A, $08
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$0E, $16, $48, $00

	; Patch $03
	; $3D
	; $0F, $0F, $00, $00,	$08, $05, $45, $05
	; $00, $00, $12, $05,	$00, $0F, $0F, $0F
	; $00, $0D, $47, $07,	$00, $0F, $0E, $0F
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$0F, $00, $0F, $00
	;spRateScale	$00, $01, $00, $00
	;spAttackRt	$08, $05, $05, $05
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $12, $00, $05
	;spSustainLv	$00, $04, $00, $00
	;spDecayRt	$00, $0F, $0F, $0F
	;spReleaseRt	$00, $07, $0D, $07
	;spTotalLv	$00, $0E, $0F, $0F

	; Patch $04
	; $05
	; $36, $32, $7C, $72,	$1F, $5F, $1F, $1F
	; $07, $0B, $0A, $0B,	$00, $07, $07, $07
	; $59, $4E, $59, $4E,	$23, $0D, $23, $0C
	;spAlgorithm	$05
	;spFeedback	$00
	;spDetune	$03, $07, $03, $07
	;spMultiple	$06, $0C, $02, $02
	;spRateScale	$00, $00, $01, $00
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$07, $0A, $0B, $0B
	;spSustainLv	$05, $05, $04, $04
	;spDecayRt	$00, $07, $07, $07
	;spReleaseRt	$09, $09, $0E, $0E
	;spTotalLv	$23, $23, $0D, $0C
