
	sHeaderInit
	smpsHeaderVoice	HDN_BlueTwl_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$02, $03
	sHeaderDAC	HDN_BlueTwl_DAC
	smpsHeaderFM	HDN_BlueTwl_FM1, Target, $00, $14
	smpsHeaderFM	HDN_BlueTwl_FM2, Target, $00, $1F
	smpsHeaderFM	HDN_BlueTwl_FM3, Target, $00, $0F
	smpsHeaderFM	HDN_BlueTwl_FM4, Target, $00, $15
	smpsHeaderFM	HDN_BlueTwl_FM5, Target, $00, $14
	smpsHeaderFM	HDN_BlueTwl_FM6, Target, $00, $1F
	smpsHeaderPSG	HDN_BlueTwl_PSG1, Target, $00, $0C, $00, $00
	smpsHeaderPSG	HDN_BlueTwl_PSG2, Target, $00, $0A, $00, $00
	smpsHeaderPSG	HDN_BlueTwl_PSG3, Target, $00, $0C, $00, $00

HDN_BlueTwl_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nRst, $0C, nA3, $06, nE3, $1C, nRst, $0E
	dc.b	nE3, $06, nG3, $1C, nRst, $0E, nC4, $08
	dc.b	nB3, nA3, $13, nRst, $01, nF3, $17, nRst
	dc.b	$25, nC3, $06, nF3, nE3, $17, nRst, $0D
	dc.b	nG3, $0B, nRst, $01, nD3, $17, nRst, $0D
	dc.b	nB2, $06, nC3, $0B, nRst, $01, nD3, $11
	dc.b	nRst, $01, nA2, $17, nRst, $25, nE3, $11
	dc.b	nRst, $01, nA3, $11, nRst, $01, nB3, $11
	dc.b	nRst, $01, nD4, $11, nRst, $07, nD4, $03
	dc.b	nCs4, nC4, $17, nRst, $19, nD4, $11, nRst
	dc.b	$01, nC4, $11, nRst, $01, nA3, $0B, nRst
	dc.b	$0D, nE3, $11, nRst, $01, nG3, $11, nRst
	dc.b	$01, nA3, $22, nRst, $0B, nC4, $03, nB3
	dc.b	$17, nRst, $19, nAb3, $09, nA3, nB3, $06
	dc.b	nC4, $09, nD4, nE4, $06, nRst, $0C, nE3
	dc.b	$11, nRst, $01, nA3, $11, nRst, $01, nB3
	dc.b	$11, nRst, $01, nD4, $11, nRst, $07, nD4
	dc.b	$03, nCs4, nC4, $17, nRst, $19, nD4, $11
	dc.b	nRst, $01, nC4, $11, nRst, $01, nA3, $0B
	dc.b	nRst, $0D, nE3, $11, nRst, $01, nG3, $11
	dc.b	nRst, $01, nA3, $22, nRst, $0B, nC4, $03
	dc.b	nAb3, $09, nB3, nD4, $06, nB3, $09, nD4
	dc.b	nF4, $06, nA3, $22, nRst, $1A, nA3, $06
	dc.b	nE3, $1C, nRst, $0E, nE3, $06, nG3, $1C
	dc.b	nRst, $0E, nC4, $08, nB3, nA3, $13, nRst
	dc.b	$01, nF3, $17, nRst, $25, nC3, $06, nF3
	dc.b	nE3, $17, nRst, $0D, nG3, $0B, nRst, $01
	dc.b	nD3, $17, nRst, $0D, nB2, $06, nC3, $0B
	dc.b	nRst, $01, nD3, $11, nRst, $01, nA2, $17
	dc.b	nRst, $0D, nG3, $06, nA3, nBb3, $17, nRst
	dc.b	$0A, nAb3, $09, nG3, $0B, nRst, $01, nF3
	dc.b	$1C, nRst, $0E, nEb3, $17, nRst, $0A, nEb3
	dc.b	$09, nF3, $0B, nRst, $01, nG3, $1C, nRst
	dc.b	$0E, nC3, $17, nRst, $0A, nD3, $09, nEb3
	dc.b	$06, nF3, $22, nRst, $0E, nC3, $09, nEb3
	dc.b	nF3, $06, nEb3, $09, nF3, nAb3, $06, nG3
	dc.b	$22, nRst, $0E, nAb3, $17, nRst, $0A, nAb3
	dc.b	$09, nBb3, $0B, nRst, $01, nBb3, $1C, nRst
	dc.b	$0E, nB3, $17, nRst, $0A, nAb3, $09, nG3
	dc.b	$06, nD3, $22, nRst, $0E, nC3, $17, nRst
	dc.b	$0A, nD3, $09, nEb3, $06, nF3, $17, nRst
	dc.b	$01, nBb2, $17, nRst, $01, nAb2, $03, nC3
	dc.b	nBb2, nC3, nAb2, nC3, nBb2, nC3, nBb2, nD3
	dc.b	nC3, nD3, nB2, nG2, nAb2, nBb2, nC3, $2E
	dc.b	nRst, $09
	smpsJump		HDN_BlueTwl_FM1, Target

HDN_BlueTwl_FM2:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nRst, $0E, nA3, $05, nRst, $01, nE3, $1C
	dc.b	nRst, $0E, nE3, $05, nRst, $01, nG3, $1C
	dc.b	nRst, $0E, nC4, $07, nRst, $01, nB3, $07
	dc.b	nRst, $01, nA3, $12, nRst, $02, nF3, $16
	dc.b	nRst, $26, nC3, $05, nRst, $01, nF3, $05
	dc.b	nRst, $01, nE3, $16, nRst, $0E, nG3, $0B
	dc.b	nRst, $01, nD3, $16, nRst, $0E, nB2, $05
	dc.b	nRst, $01, nC3, $0B, nRst, $01, nD3, $11
	dc.b	nRst, $01, nA2, $16, nRst, $26, nE3, $11
	dc.b	nRst, $01, nA3, $11, nRst, $01, nB3, $11
	dc.b	nRst, $01, nD4, $11, nRst, $07, nD4, $02
	dc.b	nRst, $01, nCs4, $02, nRst, $01, nC4, $16
	dc.b	nRst, $1A, nD4, $11, nRst, $01, nC4, $11
	dc.b	nRst, $01, nA3, $0B, nRst, $0D, nE3, $11
	dc.b	nRst, $01, nG3, $11, nRst, $01, nA3, $22
	dc.b	nRst, $0B, nC4, $02, nRst, $01, nB3, $16
	dc.b	nRst, $1A, nAb3, $08, nRst, $01, nA3, $08
	dc.b	nRst, $01, nB3, $05, nRst, $01, nC4, $08
	dc.b	nRst, $01, nD4, $08, nRst, $01, nE4, $05
	dc.b	nRst, $0D, nE3, $11, nRst, $01, nA3, $11
	dc.b	nRst, $01, nB3, $11, nRst, $01, nD4, $11
	dc.b	nRst, $07, nD4, $02, nRst, $01, nCs4, $02
	dc.b	nRst, $01, nC4, $16, nRst, $1A, nD4, $11
	dc.b	nRst, $01, nC4, $11, nRst, $01, nA3, $0B
	dc.b	nRst, $0D, nE3, $11, nRst, $01, nG3, $11
	dc.b	nRst, $01, nA3, $22, nRst, $0B, nC4, $02
	dc.b	nRst, $01, nAb3, $08, nRst, $01, nB3, $08
	dc.b	nRst, $01, nD4, $05, nRst, $01, nB3, $08
	dc.b	nRst, $01, nD4, $08, nRst, $01, nF4, $05
	dc.b	nRst, $01, nA3, $22, nRst, $1A, nA3, $05
	dc.b	nRst, $01, nE3, $1C, nRst, $0E, nE3, $05
	dc.b	nRst, $01, nG3, $1C, nRst, $0E, nC4, $07
	dc.b	nRst, $01, nB3, $07, nRst, $01, nA3, $12
	dc.b	nRst, $02, nF3, $16, nRst, $26, nC3, $05
	dc.b	nRst, $01, nF3, $05, nRst, $01, nE3, $16
	dc.b	nRst, $0E, nG3, $0B, nRst, $01, nD3, $16
	dc.b	nRst, $0E, nB2, $05, nRst, $01, nC3, $0B
	dc.b	nRst, $01, nD3, $11, nRst, $01, nA2, $16
	dc.b	nRst, $0E, nG3, $05, nRst, $01, nA3, $05
	dc.b	nRst, $01, nBb3, $16, nRst, $0B, nAb3, $08
	dc.b	nRst, $01, nG3, $0B, nRst, $01, nF3, $1C
	dc.b	nRst, $0E, nEb3, $16, nRst, $0B, nEb3, $08
	dc.b	nRst, $01, nF3, $0B, nRst, $01, nG3, $1C
	dc.b	nRst, $0E, nC3, $16, nRst, $0B, nD3, $08
	dc.b	nRst, $01, nEb3, $05, nRst, $01, nF3, $22
	dc.b	nRst, $0E, nC3, $08, nRst, $01, nEb3, $08
	dc.b	nRst, $01, nF3, $05, nRst, $01, nEb3, $08
	dc.b	nRst, $01, nF3, $08, nRst, $01, nAb3, $05
	dc.b	nRst, $01, nG3, $22, nRst, $0E, nAb3, $16
	dc.b	nRst, $0B, nAb3, $08, nRst, $01, nBb3, $0B
	dc.b	nRst, $01, nBb3, $1C, nRst, $0E, nB3, $16
	dc.b	nRst, $0B, nAb3, $08, nRst, $01, nG3, $05
	dc.b	nRst, $01, nD3, $22, nRst, $0E, nC3, $16
	dc.b	nRst, $0B, nD3, $08, nRst, $01, nEb3, $05
	dc.b	nRst, $01, nF3, $16, nRst, $02, nBb2, $16
	dc.b	nRst, $02, nAb2, nRst, $01, nC3, $02, nRst
	dc.b	$01, nBb2, $02, nRst, $01, nC3, $02, nRst
	dc.b	$01, nAb2, $02

HDN_BlueTwl_Loop1:
	dc.b	nRst, $01, nC3, $02, nRst, $01, nBb2, $02
	smpsLoop		$00, $02, HDN_BlueTwl_Loop1, Target
	dc.b	nRst, $01, nD3, $02, nRst, $01, nC3, $02
	dc.b	nRst, $01, nD3, $02, nRst, $01, nB2, $02
	dc.b	nRst, $01, nG2, $02, nRst, $01, nAb2, $02
	dc.b	nRst, $01, nBb2, $02, nRst, $01, nC3, $2D
	dc.b	nRst, $08
	smpsJump		HDN_BlueTwl_FM2, Target

HDN_BlueTwl_FM3:
	smpsPan		panLeft
	smpsFMvoice		$01
	dc.b	nA2, $06, nE3, nG3, nB3, nRst, $18, nG2
	dc.b	$06, nE3, nG3, nB3, nRst, $18, nF2, $06
	dc.b	nE3, nG3, nC4, nRst, $18, nB2, $06, nF3
	dc.b	nA3, nB3, nRst, $18, nA2, $06, nE3, nG3
	dc.b	nC4, nRst, $18, nG2, $06, nE3, nG3, nC4
	dc.b	nRst, $18, nF2, $06, nC3, nF3, nF3

HDN_BlueTwl_Loop2:
	dc.b	nRst, $18, nA2, $06, nE3, nG3, nB3
	smpsLoop		$00, $02, HDN_BlueTwl_Loop2, Target
	dc.b	nRst, $18, nB2, $06, nF3, nA3, nD4, nRst
	dc.b	$18, nG2, $06, nE3, nG3, nC4, nRst, $18
	dc.b	nA2, $06, nF3, nA3, nD4, nRst, $18, nE2
	dc.b	$06, nB2, nE3, nG3, nRst, $18, nF2, $06
	dc.b	nC3, nF3, nA3, nRst, $18, nG2, $06, nD3
	dc.b	nG3, nB3, nRst, $18, nE2, $06, nB2, nD3
	dc.b	nAb3, nRst, $18, nA2, $06, nE3, nG3, nB3
	dc.b	nRst, $18, nB2, $06, nF3, nA3, nD4, nRst
	dc.b	$18, nG2, $06, nE3, nG3, nC4, nRst, $18
	dc.b	nA2, $06, nF3, nA3, nD4, nRst, $18, nE2
	dc.b	$06, nB2, nE3, nG3, nRst, $18, nF2, $06
	dc.b	nC3, nF3, nA3, nRst, $18, nAb2, $06, nD3
	dc.b	nF3

HDN_BlueTwl_Loop3:
	dc.b	nB3, nRst, $18, nA2, $06, nE3, nG3
	smpsLoop		$00, $02, HDN_BlueTwl_Loop3, Target
	dc.b	nB3, nRst, $18, nG2, $06, nE3, nG3, nB3
	dc.b	nRst, $18, nF2, $06, nE3, nG3, nC4, nRst
	dc.b	$18, nB2, $06, nF3, nA3, nB3, nRst, $18
	dc.b	nA2, $06, nE3, nG3, nC4, nRst, $18, nG2
	dc.b	$06, nE3, nG3, nC4, nRst, $18, nF2, $06
	dc.b	nC3, nF3, nF3, nRst, $18, nA2, $06, nE3
	dc.b	nG3, nB3, nRst, $18, nBb2, $06, nF3, nBb3
	dc.b	nD4, nRst, $18, nAb2, $06, nF3, nAb3, nC4
	dc.b	nRst, $18, nEb2, $06, nBb2, nEb3, nG3, nRst
	dc.b	$18, nG2, $06, nB2, nD3, nF3, nRst, $18
	dc.b	nC3, $06, nG2, nC3, nEb3, nRst, $18, nBb2
	dc.b	$06, nF3, nBb3, nD4, nRst, $18, nAb2, $06
	dc.b	nEb3, nAb3, nC4, nRst, $18, nG2, $06, nB2
	dc.b	nD3, nF3, nRst, $18, nAb2, $06, nEb3, nAb3
	dc.b	nC4, nRst, $18, nBb2, $06, nD3, nF3, nBb3
	dc.b	nRst, $18, nB2, $06, nD3, nF3, nAb3, nRst
	dc.b	$18, nC3, $06, nG2, nEb3, nG3, nRst, $18
	dc.b	nF2, $06, nC3, nF3, nAb3, nRst, $18, nG2
	dc.b	$06, nD3, nF3, nBb3, nRst, $18, nAb2, $06
	dc.b	nC3, nEb3, nAb3, nBb2, nD3, nF3, nBb3, nC3
	dc.b	nG2, nC3, nEb3, nRst, $1F
	smpsJump		HDN_BlueTwl_FM3, Target

HDN_BlueTwl_FM4:
	smpsPan		panRight
	smpsFMvoice		$01
	dc.b	nA1, $06, nE2, nG2, nB2, nRst, $18, nG1
	dc.b	$06, nE2, nG2, nB2, nRst, $18, nF1, $06
	dc.b	nE2, nG2, nC3, nRst, $18, nB1, $06, nF2
	dc.b	nA2, nB2, nRst, $18, nA1, $06, nE2, nG2
	dc.b	nC3, nRst, $18, nG1, $06, nE2, nG2, nC3
	dc.b	nRst, $18, nF1, $06, nC2, nF2, nF2

HDN_BlueTwl_Loop4:
	dc.b	nRst, $18, nA1, $06, nE2, nG2, nB2
	smpsLoop		$00, $02, HDN_BlueTwl_Loop4, Target
	dc.b	nRst, $18, nB1, $06, nF2, nA2, nD3, nRst
	dc.b	$18, nG1, $06, nE2, nG2, nC3, nRst, $18
	dc.b	nA1, $06, nF2, nA2, nD3, nRst, $18, nE1
	dc.b	$06, nB1, nE2, nG2, nRst, $18, nF1, $06
	dc.b	nC2, nF2, nA2, nRst, $18, nG1, $06, nD2
	dc.b	nG2, nB2, nRst, $18, nE1, $06, nB1, nD2
	dc.b	nAb2, nRst, $18, nA1, $06, nE2, nG2, nB2
	dc.b	nRst, $18, nB1, $06, nF2, nA2, nD3, nRst
	dc.b	$18, nG1, $06, nE2, nG2, nC3, nRst, $18
	dc.b	nA1, $06, nF2, nA2, nD3, nRst, $18, nE1
	dc.b	$06, nB1, nE2, nG2, nRst, $18, nF1, $06
	dc.b	nC2, nF2, nA2, nRst, $18, nAb1, $06, nD2
	dc.b	nF2

HDN_BlueTwl_Loop5:
	dc.b	nB2, nRst, $18, nA1, $06, nE2, nG2
	smpsLoop		$00, $02, HDN_BlueTwl_Loop5, Target
	dc.b	nB2, nRst, $18, nG1, $06, nE2, nG2, nB2
	dc.b	nRst, $18, nF1, $06, nE2, nG2, nC3, nRst
	dc.b	$18, nB1, $06, nF2, nA2, nB2, nRst, $18
	dc.b	nA1, $06, nE2, nG2, nC3, nRst, $18, nG1
	dc.b	$06, nE2, nG2, nC3, nRst, $18, nF1, $06
	dc.b	nC2, nF2, nF2, nRst, $18, nA1, $06, nE2
	dc.b	nG2, nB2, nRst, $18, nBb1, $06, nF2, nBb2
	dc.b	nD3, nRst, $18, nAb1, $06, nF2, nAb2, nC3
	dc.b	nRst, $18, nEb1, $06, nBb1, nEb2, nG2, nRst
	dc.b	$18, nG1, $06, nB1, nD2, nF2, nRst, $18
	dc.b	nC2, $06, nG1, nC2, nEb2, nRst, $18, nBb1
	dc.b	$06, nF2, nBb2, nD3, nRst, $18, nAb1, $06
	dc.b	nEb2, nAb2, nC3, nRst, $18, nG1, $06, nB1
	dc.b	nD2, nF2, nRst, $18, nAb1, $06, nEb2, nAb2
	dc.b	nC3, nRst, $18, nBb1, $06, nD2, nF2, nBb2
	dc.b	nRst, $18, nB1, $06, nD2, nF2, nAb2, nRst
	dc.b	$18, nC2, $06, nG1, nEb2, nG2, nRst, $18
	dc.b	nF1, $06, nC2, nF2, nAb2, nRst, $18, nG1
	dc.b	$06, nD2, nF2, nBb2, nRst, $18, nAb1, $06
	dc.b	nC2, nEb2, nAb2, nBb1, nD2, nF2, nBb2, nC2
	dc.b	nG1, nC2, nEb2, nRst, $1F
	smpsJump		HDN_BlueTwl_FM4, Target

HDN_BlueTwl_FM5:
	smpsPan		panLeft
	smpsFMvoice		$02
	dc.b	nA3, $2E, nRst, $02, nG3, $2E, nRst, $02
	dc.b	nF3, $2E, nRst, $02, nB3, $2E, nRst, $02
	dc.b	nA3, $2E, nRst, $02, nG3, $2E, nRst, $02
	dc.b	nF3, $2E, nRst, $02, nE3, $2E, nRst, $02
	dc.b	nE3, $2E, nRst, $02, nD3, $2E, nRst, $02
	dc.b	nC3, $2E, nRst, $02, nD3, $2E, nRst, $02
	dc.b	nG3, $2E, nRst, $02, nA3, $2E, nRst, $02
	dc.b	nB3, $2E, nRst, $02, nAb3, $2E, nRst, $02
	dc.b	nE3, $2E, nRst, $02, nD3, $2E, nRst, $02
	dc.b	nC3, $2E, nRst, $02, nD3, $2E, nRst, $02
	dc.b	nG3, $2E, nRst, $02, nA3, $2E, nRst, $02
	dc.b	nAb3, $2E, nRst, $02, nA3, $2E, nRst, $02
	dc.b	nA3, $2E, nRst, $02, nG3, $2E, nRst, $02
	dc.b	nF3, $2E, nRst, $02, nB3, $2E, nRst, $02
	dc.b	nA3, $2E, nRst, $02, nG3, $2E, nRst, $02
	dc.b	nF3, $2E, nRst, $02, nE3, $2E, nRst, $02
	dc.b	nBb3, $2E, nRst, $02, nF3, $2E, nRst, $02
	dc.b	nEb3, $2E, nRst, $02, nG3, $2E, nRst, $02
	dc.b	nC3, $2E, nRst, $02, nF3, $2E, nRst, $02
	dc.b	nC3, $2E, nRst, $02, nB2, $2E, nRst, $02
	dc.b	nAb3, $2E, nRst, $02, nBb3, $2E, nRst, $02
	dc.b	nB3, $2E, nRst, $02, nC3, $2E, nRst, $02
	dc.b	nC3, $2E, nRst, $02, nF3, $2E, nRst, $02
	dc.b	nEb3, $06, nBb4, nAb4, nRst, nF3, $17, nRst
	dc.b	$01, nC4, $2E, nRst, $09
	smpsJump		HDN_BlueTwl_FM5, Target

HDN_BlueTwl_FM6:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b	nRst, $09, nA3, $2E, nRst, $02, nG3, $2E
	dc.b	nRst, $02, nF3, $2E, nRst, $02, nB3, $2E
	dc.b	nRst, $02, nA3, $2E, nRst, $02, nG3, $2E
	dc.b	nRst, $02, nF3, $2E, nRst, $02, nE3, $2E
	dc.b	nRst, $02, nE3, $2E, nRst, $02, nD3, $2E
	dc.b	nRst, $02, nC3, $2E, nRst, $02, nD3, $2E
	dc.b	nRst, $02, nG3, $2E, nRst, $02, nA3, $2E
	dc.b	nRst, $02, nB3, $2E, nRst, $02, nAb3, $2E
	dc.b	nRst, $02, nE3, $2E, nRst, $02, nD3, $2E
	dc.b	nRst, $02, nC3, $2E, nRst, $02, nD3, $2E
	dc.b	nRst, $02, nG3, $2E, nRst, $02, nA3, $2E
	dc.b	nRst, $02, nAb3, $2E, nRst, $02, nA3, $2E
	dc.b	nRst, $02, nA3, $2E, nRst, $02, nG3, $2E
	dc.b	nRst, $02, nF3, $2E, nRst, $02, nB3, $2E
	dc.b	nRst, $02, nA3, $2E, nRst, $02, nG3, $2E
	dc.b	nRst, $02, nF3, $2E, nRst, $02, nE3, $2E
	dc.b	nRst, $02, nBb3, $2E, nRst, $02, nF3, $2E
	dc.b	nRst, $02, nEb3, $2E, nRst, $02, nG3, $2E
	dc.b	nRst, $02, nC3, $2E, nRst, $02, nF3, $2E
	dc.b	nRst, $02, nC3, $2E, nRst, $02, nB2, $2E
	dc.b	nRst, $02, nAb3, $2E, nRst, $02, nBb3, $2E
	dc.b	nRst, $02, nB3, $2E, nRst, $02, nC3, $2E
	dc.b	nRst, $02, nC3, $2E, nRst, $02, nF3, $2E
	dc.b	nRst, $02, nEb3, $06, nBb4, nAb4, nRst, nF3
	dc.b	$17, nRst, $01, nC4, $2E
	smpsJump		HDN_BlueTwl_FM6, Target

HDN_BlueTwl_PSG1:
	smpsPSGvoice	$00
	dc.b	nRst, $0C, nA0, $06, nE0, $1C, nRst, $0E
	dc.b	nE0, $06, nG0, $1C, nRst, $0E, nC1, $08
	dc.b	nB0, nA0, $13, nRst, $01, nF0, $17, nRst
	dc.b	$25, nC0, $06, nF0, nE0, $17, nRst, $0D
	dc.b	nG0, $0B, nRst, $01, nD0, $17, nRst, $0D
	dc.b	nC0, $06, $0B, nRst, $01, nD0, $11, nRst
	dc.b	$01, nC0, $17, nRst, $25, nE0, $11, nRst
	dc.b	$01, nA0, $11, nRst, $01, nB0, $11, nRst
	dc.b	$01, nD1, $11, nRst, $07, nD1, $03, nCs1
	dc.b	nC1, $17, nRst, $19, nD1, $11, nRst, $01
	dc.b	nC1, $11, nRst, $01, nA0, $0B, nRst, $0D
	dc.b	nE0, $11, nRst, $01, nG0, $11, nRst, $01
	dc.b	nA0, $22, nRst, $0B, nC1, $03, nB0, $17
	dc.b	nRst, $19, nAb0, $09, nA0, nB0, $06, nC1
	dc.b	$09, nD1, nE1, $06, nRst, $0C, nE0, $11
	dc.b	nRst, $01, nA0, $11, nRst, $01, nB0, $11
	dc.b	nRst, $01, nD1, $11, nRst, $07, nD1, $03
	dc.b	nCs1, nC1, $17, nRst, $19, nD1, $11, nRst
	dc.b	$01, nC1, $11, nRst, $01, nA0, $0B, nRst
	dc.b	$0D, nE0, $11, nRst, $01, nG0, $11, nRst
	dc.b	$01, nA0, $22, nRst, $0B, nC1, $03, nAb0
	dc.b	$09, nB0, nD1, $06, nB0, $09, nD1, nF1
	dc.b	$06, nA0, $22, nRst, $1A, nA0, $06, nE0
	dc.b	$1C, nRst, $0E, nE0, $06, nG0, $1C, nRst
	dc.b	$0E, nC1, $08, nB0, nA0, $13, nRst, $01
	dc.b	nF0, $17, nRst, $25, nC0, $06, nF0, nE0
	dc.b	$17, nRst, $0D, nG0, $0B, nRst, $01, nD0
	dc.b	$17, nRst, $0D, nC0, $06, $0B, nRst, $01
	dc.b	nD0, $11, nRst, $01, nC0, $17, nRst, $0D
	dc.b	nG0, $06, nA0, nBb0, $17, nRst, $0A, nAb0
	dc.b	$09, nG0, $0B, nRst, $01, nF0, $1C, nRst
	dc.b	$0E, nEb0, $17, nRst, $0A, nEb0, $09, nF0
	dc.b	$0B, nRst, $01, nG0, $1C, nRst, $0E, nC0
	dc.b	$17, nRst, $0A, nD0, $09, nEb0, $06, nF0
	dc.b	$22, nRst, $0E, nC0, $09, nEb0, nF0, $06
	dc.b	nEb0, $09, nF0, nAb0, $06, nG0, $22, nRst
	dc.b	$0E, nAb0, $17, nRst, $0A, nAb0, $09, nBb0
	dc.b	$0B, nRst, $01, nBb0, $1C, nRst, $0E, nB0
	dc.b	$17, nRst, $0A, nAb0, $09, nG0, $06, nD0
	dc.b	$22, nRst, $0E, nC0, $17, nRst, $0A, nD0
	dc.b	$09, nEb0, $06, nF0, $17, nRst, $01, nC0
	dc.b	$17, nRst, $01, nC0

HDN_BlueTwl_Loop6:
	dc.b	$03
	smpsLoop		$00, $09, HDN_BlueTwl_Loop6, Target
	dc.b	nD0, nC0, nD0, nC0, nC0, nC0, nC0, nC0
	dc.b	$2E, nRst, $09
	smpsJump		HDN_BlueTwl_PSG1, Target

HDN_BlueTwl_PSG2:
	smpsPSGvoice	$00

HDN_BlueTwl_Loop7:
	dc.b	nC0, $06, nE0, nG0, nB0, nRst, $18
	smpsLoop		$00, $02, HDN_BlueTwl_Loop7, Target
	dc.b	nC0, $06, nE0, nG0, nC1, nRst, $18, nC0
	dc.b	$06, nF0, nA0, nB0

HDN_BlueTwl_Loo$8:
	dc.b	nRst, $18, nC0, $06, nE0, nG0, nC1
	smpsLoop		$00, $02, HDN_BlueTwl_Loo$8, Target
	dc.b	nRst, $18, nC0, $06, $06, nF0, nF0

HDN_BlueTwl_Loo$9:
	dc.b	nRst, $18, nC0, $06, nE0, nG0, nB0
	smpsLoop		$00, $02, HDN_BlueTwl_Loo$9, Target
	dc.b	nRst, $18, nC0, $06, nF0, nA0, nD1, nRst
	dc.b	$18, nC0, $06, nE0, nG0, nC1, nRst, $18
	dc.b	nC0, $06, nF0, nA0, nD1, nRst, $18, nC0
	dc.b	$06, $06, nE0, nG0, nRst, $18, nC0, $06
	dc.b	$06, nF0, nA0, nRst, $18, nC0, $06, nD0
	dc.b	nG0, nB0, nRst, $18, nC0, $06, $06, nD0
	dc.b	nAb0, nRst, $18, nC0, $06, nE0, nG0, nB0
	dc.b	nRst, $18, nC0, $06, nF0, nA0, nD1, nRst
	dc.b	$18, nC0, $06, nE0, nG0, nC1, nRst, $18
	dc.b	nC0, $06, nF0, nA0, nD1, nRst, $18, nC0
	dc.b	$06, $06, nE0, nG0, nRst, $18, nC0, $06
	dc.b	$06, nF0, nA0, nRst, $18, nC0, $06, nD0
	dc.b	nF0

HDN_BlueTwl_Loop10:
	dc.b	nB0, nRst, $18, nC0, $06, nE0, nG0
	smpsLoop		$00, $04, HDN_BlueTwl_Loop10, Target
	dc.b	nC1, nRst, $18, nC0, $06, nF0, nA0, nB0

HDN_BlueTwl_Loop11:
	dc.b	nRst, $18, nC0, $06, nE0, nG0, nC1
	smpsLoop		$00, $02, HDN_BlueTwl_Loop11, Target
	dc.b	nRst, $18, nC0, $06, $06, nF0, nF0, nRst
	dc.b	$18, nC0, $06, nE0, nG0, nB0, nRst, $18
	dc.b	nC0, $06, nF0, nBb0, nD1, nRst, $18, nC0
	dc.b	$06, nF0, nAb0, nC1, nRst, $18, nC0, $06
	dc.b	$06, nEb0, nG0, nRst, $18, nC0, $06, $06
	dc.b	nD0, nF0, nRst, $18, nC0, $06, $06, $06
	dc.b	nEb0, nRst, $18, nC0, $06, nF0, nBb0, nD1
	dc.b	nRst, $18, nC0, $06, nEb0, nAb0, nC1, nRst
	dc.b	$18, nC0, $06, $06, nD0, nF0, nRst, $18
	dc.b	nC0, $06, nEb0, nAb0, nC1, nRst, $18, nC0
	dc.b	$06, nD0, nF0, nBb0, nRst, $18, nC0, $06
	dc.b	nD0, nF0, nAb0, nRst, $18, nC0, $06, $06
	dc.b	nEb0, nG0, nRst, $18, nC0, $06, $06, nF0
	dc.b	nAb0, nRst, $18, nC0, $06, nD0, nF0, nBb0
	dc.b	nRst, $18, nC0, $06, $06, nEb0, nAb0, nC0
	dc.b	nD0, nF0, nBb0, nC0, nC0, nC0, nEb0, nRst
	dc.b	$1F
	smpsJump		HDN_BlueTwl_PSG2, Target

HDN_BlueTwl_PSG3:
	smpsPSGvoice	$01
	dc.b	nA0, $2E, nRst, $02, nG0, $2E, nRst, $02
	dc.b	nF0, $2E, nRst, $02, nB0, $2E, nRst, $02
	dc.b	nA0, $2E, nRst, $02, nG0, $2E, nRst, $02
	dc.b	nF0, $2E, nRst, $02, nE0, $2E, nRst, $02
	dc.b	nE0, $2E, nRst, $02, nD0, $2E, nRst, $02
	dc.b	nC0, $2E, nRst, $02, nD0, $2E, nRst, $02
	dc.b	nG0, $2E, nRst, $02, nA0, $2E, nRst, $02
	dc.b	nB0, $2E, nRst, $02, nAb0, $2E, nRst, $02
	dc.b	nE0, $2E, nRst, $02, nD0, $2E, nRst, $02
	dc.b	nC0, $2E, nRst, $02, nD0, $2E, nRst, $02
	dc.b	nG0, $2E, nRst, $02, nA0, $2E, nRst, $02
	dc.b	nAb0, $2E, nRst, $02, nA0, $2E, nRst, $02
	dc.b	nA0, $2E, nRst, $02, nG0, $2E, nRst, $02
	dc.b	nF0, $2E, nRst, $02, nB0, $2E, nRst, $02
	dc.b	nA0, $2E, nRst, $02, nG0, $2E, nRst, $02
	dc.b	nF0, $2E, nRst, $02, nE0, $2E, nRst, $02
	dc.b	nBb0, $2E, nRst, $02, nF0, $2E, nRst, $02
	dc.b	nEb0, $2E, nRst, $02, nG0, $2E, nRst, $02
	dc.b	nC0, $2E, nRst, $02, nF0, $2E, nRst, $02
	dc.b	nC0, $2E, nRst, $02, nC0, $2E, nRst, $02
	dc.b	nAb0, $2E, nRst, $02, nBb0, $2E, nRst, $02
	dc.b	nB0, $2E, nRst, $02, nC0, $2E, nRst, $02
	dc.b	nC0, $2E, nRst, $02, nF0, $2E, nRst, $02
	dc.b	nEb0, $06, nBb1, nAb1, nRst, nF0, $17, nRst
	dc.b	$01, nC1, $2E, nRst, $09
	smpsJump		HDN_BlueTwl_PSG3, Target

HDN_BlueTwl_DAC:
	smpsStop

HDN_BlueTwl_Patches:

	
	dc.b	$2C
	dc.b	$3C, $74, $74, $34,	$58, $58, $5A, $9A
	dc.b	$0E, $0A, $0E, $08,	$00, $00, $00, $00
	dc.b	$F7, $F7, $F6, $F6,	$32, $08, $39, $04
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$0D, $02, $01, $01,	$9F, $1F, $1F, $5F
	dc.b	$0A, $09, $09, $04,	$08, $07, $07, $07
	dc.b	$24, $24, $24, $28,	$2A, $14, $26, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$34
	dc.b	$73, $02, $01, $31,	$52, $5F, $5F, $1F
	dc.b	$05, $05, $05, $0A,	$03, $04, $04, $04
	dc.b	$21, $11, $23, $45,	$1E, $10, $23, $0C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
