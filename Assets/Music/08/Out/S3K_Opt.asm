
Target	EQU	$40000
	smpsHeaderVoice	MTPO_ThemeR_Patches, Target
	smpsHeaderChan	$07, $03
	smpsHeaderTempo	$03, $1A
	sHeaderDAC	MTPO_ThemeR_DAC
	smpsHeaderFM	MTPO_ThemeR_FM1, Target, $00, $08
	smpsHeaderFM	MTPO_ThemeR_FM2, Target, $00, $08
	smpsHeaderFM	MTPO_ThemeR_FM3, Target, $00, $08
	smpsHeaderFM	MTPO_ThemeR_FM4, Target, $00, $08
	smpsHeaderFM	MTPO_ThemeR_FM5, Target, $00, $08
	smpsHeaderFM	MTPO_ThemeR_FM6, Target, $00, $0E
	smpsHeaderPSG	MTPO_ThemeR_PSG1, Target, $0C, $07, $00, $29
	smpsHeaderPSG	MTPO_ThemeR_PSG2, Target, $0C, $04, $00, $28
	smpsHeaderPSG	MTPO_ThemeR_PSG3, Target, $0C, $04, $00, $28

MTPO_ThemeR_FM1:
	smpsPan		panLeft

MTPO_ThemeR_Jump1:
	smpsFMvoice		$00
	dc.b	nE3, $03, nE2, nE2, nE2, nE2, nE3, nE3
	dc.b	nD3, $06, nD2

MTPO_ThemeR_Loop1:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop1, Target
	dc.b	nC3, nC2, nC2, nC2, nC2, nC3, nC3, nD3
	dc.b	$06, nD2, $03, $03, $03, $03, $03, $03
	dc.b	nD3, nE3, nE2, nE2, nE3, nE2, nE2, nE3

MTPO_ThemeR_Loop2:
	dc.b	nE2, nE3, nE2, nE3, nE2, nE2
	smpsLoop		$00, $02, MTPO_ThemeR_Loop2, Target
	dc.b	nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3
	dc.b	nE2, nE2, nE2, nE3, nE2, nD3, nD2, nD2
	dc.b	nD3, nD2, nD2, nD3, nD2, nD3, nD2, nD3
	dc.b	nD2, nG3, $06, nD3, nE3, $03, nE2, nE2
	dc.b	nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3
	dc.b	nE2, nE2, nE2, nE3, nE2, nB2, nB1, nB1
	dc.b	nB2, nB1, nB1, nB2, nB1, nB2, nB1, nB2
	dc.b	nB1, nB2, $06, nD3, nE3, $03, nE2, nE2
	dc.b	nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3
	dc.b	nE2, nE2, nE2, nE3, nE2, nD3, nD2, nD2
	dc.b	nD3, nD2, nD2, nD3, nD2, nD3, nD2, nD3
	dc.b	nD2, nD2, nD2, nD3, nD2, nC3, nC2, nC2
	dc.b	nC3, nC2, nC2, nC3, nC2, nC3, nC2, nC3
	dc.b	nC2, nC2, nC2, nC3, nC2

MTPO_ThemeR_Loop3:
	dc.b	nB2, nB1, nB1
	smpsLoop		$00, $04, MTPO_ThemeR_Loop3, Target
	dc.b	nB2, $02, $01, nB1, $03, nB2, $02, $01
	dc.b	nB1

MTPO_ThemeR_Loop4:
	dc.b	$03, nE3, nE2
	smpsLoop		$00, $03, MTPO_ThemeR_Loop4, Target
	dc.b	nE3, nE2, nE3, nE2, nE2, nE2, nE3, nE2
	dc.b	nD3, nD2, nD2, nD3, nD2, nD2, nD3, nD2
	dc.b	nD3, nD2, nD3, nD2, nG3, $06, nD3, nE3
	dc.b	$03, nE2, nE2, nE3, nE2, nE2, nE3, nE2
	dc.b	nE3, nE2, nE3, nE2, nE2, nE2, nE3, nE2
	dc.b	nB2, nB1, nB1, nB2, nB1, nB1, nB2, nB1
	dc.b	nB2, nB1, nB2, nB1, nB2, $06, nD3, nE3
	dc.b	$03, nE2, nE2, nE3, nE2, nE2, nE3, nE2
	dc.b	nE3, nE2, nE3, nE2, nE2, nE2, nE3, nE2
	dc.b	nD3, nD2, nD2, nD3, nD2, nD2, nD3, nD2
	dc.b	nD3, nD2, nD3, nD2, nD2, nD2, nD3, nD2
	dc.b	nC3, nC2, nC2, nC3, nC2, nC2, nC3, nC2
	dc.b	nC3, nC2, nC3, nC2, nC2, nC2, nC3, nC2

MTPO_ThemeR_Loop5:
	dc.b	nB2, nB1, nB1
	smpsLoop		$00, $04, MTPO_ThemeR_Loop5, Target
	dc.b	nB2, $02, $01, nB1, $03, nB2, $02, $01
	dc.b	nB1, $03
	smpsJump		MTPO_ThemeR_Jump1, Target

MTPO_ThemeR_FM2:
	smpsFMvoice		$01

MTPO_ThemeR_Jump2:
	smpsPan		panRight
	dc.b	nA3, $03, nA2, nA2, nA2, nA2, nA3, nA3
	dc.b	nG3, $06, nG2

MTPO_ThemeR_Loop6:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop6, Target
	dc.b	nF3, nF2, nF2, nF2, nF2, nF3, nF3, nG3
	dc.b	$06, nG2, $03, $03, $03, $03, $03, $03
	dc.b	nG3, nA3, nA2, nA2, nA3, nA2, nA2, nA3

MTPO_ThemeR_Loop7:
	dc.b	nA2, nA3, nA2, nA3, nA2, nA2
	smpsLoop		$00, $02, MTPO_ThemeR_Loop7, Target
	dc.b	nA3, nA2, nA2, nA3, nA2, nA3, nA2, nA3
	dc.b	nA2, nA2, nA2, nA3, nA2, nG3, nG2, nG2
	dc.b	nG3, nG2, nG2, nG3, nG2, nG3, nG2, nG3
	dc.b	nG2, nC4, $06, nG3, nA3, $03, nA2, nA2
	dc.b	nA3, nA2, nA2, nA3, nA2, nA3, nA2, nA3
	dc.b	nA2, nA2, nA2, nA3, nA2, nE3, nE2, nE2
	dc.b	nE3, nE2, nE2, nE3, nE2, nE3, nE2, nE3
	dc.b	nE2, nE3, $06, nG3, nA3, $03, nA2, nA2
	dc.b	nA3, nA2, nA2, nA3, nA2, nA3, nA2, nA3
	dc.b	nA2, nA2, nA2, nA3, nA2, nG3, nG2, nG2
	dc.b	nG3, nG2, nG2, nG3, nG2, nG3, nG2, nG3
	dc.b	nG2, nG2, nG2, nG3, nG2, nF3, nF2, nF2
	dc.b	nF3, nF2, nF2, nF3, nF2, nF3, nF2, nF3
	dc.b	nF2, nF2, nF2, nF3, nF2

MTPO_ThemeR_Loo$8:
	dc.b	nE3, nE2, nE2
	smpsLoop		$00, $04, MTPO_ThemeR_Loo$8, Target
	dc.b	nE3, $02, $01, nE2, $03, nE3, $02, $01
	dc.b	nE2

MTPO_ThemeR_Loo$9:
	dc.b	$03, nA3, nA2
	smpsLoop		$00, $03, MTPO_ThemeR_Loo$9, Target
	dc.b	nA3, nA2, nA3, nA2, nA2, nA2, nA3, nA2
	dc.b	nG3, nG2, nG2, nG3, nG2, nG2, nG3, nG2
	dc.b	nG3, nG2, nG3, nG2, nC4, $06, nG3, nA3
	dc.b	$03, nA2, nA2, nA3, nA2, nA2, nA3, nA2
	dc.b	nA3, nA2, nA3, nA2, nA2, nA2, nA3, nA2
	dc.b	nE3, nE2, nE2, nE3, nE2, nE2, nE3, nE2
	dc.b	nE3, nE2, nE3, nE2, nE3, $06, nG3, nA3
	dc.b	$03, nA2, nA2, nA3, nA2, nA2, nA3, nA2
	dc.b	nA3, nA2, nA3, nA2, nA2, nA2, nA3, nA2
	dc.b	nG3, nG2, nG2, nG3, nG2, nG2, nG3, nG2
	dc.b	nG3, nG2, nG3, nG2, nG2, nG2, nG3, nG2
	dc.b	nF3, nF2, nF2, nF3, nF2, nF2, nF3, nF2
	dc.b	nF3, nF2, nF3, nF2, nF2, nF2, nF3, nF2

MTPO_ThemeR_Loop10:
	dc.b	nE3, nE2, nE2
	smpsLoop		$00, $04, MTPO_ThemeR_Loop10, Target
	dc.b	nE3, $02, $01, nE2, $03, nE3, $02, $01
	dc.b	nE2, $03
	smpsJump		MTPO_ThemeR_Jump2, Target

MTPO_ThemeR_FM3:
	smpsPan		panLeft

MTPO_ThemeR_Jump3:
	smpsFMvoice		$02
	dc.b	nA3

MTPO_ThemeR_Loop11:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop11, Target
	dc.b	nG3, $06

MTPO_ThemeR_Loop12:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop12, Target

MTPO_ThemeR_Loop13:
	dc.b	nF3
	smpsLoop		$00, $07, MTPO_ThemeR_Loop13, Target
	dc.b	nG3, $06

MTPO_ThemeR_Loop14:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop14, Target
	dc.b	nA3
	smpsLoop		$01, $04, MTPO_ThemeR_Loop14, Target

MTPO_ThemeR_Loop15:
	dc.b	nA3
	smpsLoop		$00, $07, MTPO_ThemeR_Loop15, Target

MTPO_ThemeR_Loop16:
	dc.b	nG3
	smpsLoop		$00, $0C, MTPO_ThemeR_Loop16, Target
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop17:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop17, Target

MTPO_ThemeR_Loop18:
	dc.b	nE3
	smpsLoop		$00, $0E, MTPO_ThemeR_Loop18, Target
	dc.b	nG3, nG3

MTPO_ThemeR_Loop19:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop19, Target

MTPO_ThemeR_Loop20:
	dc.b	nG3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop20, Target

MTPO_ThemeR_Loop21:
	dc.b	nF3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop21, Target

MTPO_ThemeR_Loop22:
	dc.b	nE3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop22, Target

MTPO_ThemeR_Loop23:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop23, Target

MTPO_ThemeR_Loop24:
	dc.b	nG3
	smpsLoop		$00, $0C, MTPO_ThemeR_Loop24, Target
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop25:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop25, Target

MTPO_ThemeR_Loop26:
	dc.b	nE3
	smpsLoop		$00, $0E, MTPO_ThemeR_Loop26, Target
	dc.b	nG3, nG3

MTPO_ThemeR_Loop27:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop27, Target

MTPO_ThemeR_Loop28:
	dc.b	nG3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop28, Target

MTPO_ThemeR_Loop29:
	dc.b	nF3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop29, Target

MTPO_ThemeR_Loop30:
	dc.b	nE3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop30, Target
	smpsJump		MTPO_ThemeR_Jump3, Target

MTPO_ThemeR_FM4:
	smpsPan		panLeft
	smpsFMvoice		$03
	dc.b	nE4, $03, nRst, $0C, nE4, $03, $03, nD4
	dc.b	$06, nRst, $15, nC4, $03, nRst, $0C, nC4
	dc.b	$03, $03, nD4, $06, nRst, $12, nD4, $03
	dc.b	nE4, nRst, $2D, nA4, $12, nB4, $06, $02
	dc.b	nC5, $04, $06, nB4, $03, nA4, $09, nG4
	dc.b	$02, nA4, $07, nG4, $09, $02, nA4, $07
	dc.b	nG4, $09, nB4, $02, nC5, $04, nB4, $06
	dc.b	nA4, $12, nB4, $06, $02, nC5, $04, $06
	dc.b	nB4, $03, nC5, $09, nD5, $02, nE5, $07
	dc.b	nD5, $09, $02, nE5, $07, nD5, $09, $02
	dc.b	nE5, $01, nD5, $03, $02, nE5, $01, nD5
	dc.b	$03, nA4, $12, nB4, $03, nC5, $06, nA5
	dc.b	nB5, $02, nC6, $04, nB5, $06, nG5, $15
	dc.b	nA5, $03, nB5, $06, $02, nC6, $04, nB5
	dc.b	$06, $02, nC6, $01, nB5, $03, nF5, $15
	dc.b	nG5, $03, nA5, $06, $06, $03, nB5, $02
	dc.b	nC6, $01, nB5, $09, nE5, $30, nA4, $12
	dc.b	nB4, $06, $02, nC5, $04, $06, nB4, $03
	dc.b	nA4, $09, nG4, $02, nA4, $07, nG4, $09
	dc.b	$02, nA4, $07, nG4, $09, nB4, $02, nC5
	dc.b	$04, nB4, $06, nA4, $12, nB4, $06, $02
	dc.b	nC5, $04, $06, nB4, $03, nC5, $09, nD5
	dc.b	$02, nE5, $07, nD5, $09, $02, nE5, $07
	dc.b	nD5, $09, $02, nE5, $01, nD5, $03, $02
	dc.b	nE5, $01, nD5, $03, nA4, $12, nB4, $03
	dc.b	nC5, $06, nA5, nB5, $02, nC6, $04, nB5
	dc.b	$06, nG5, $15, nA5, $03, nB5, $06, $02
	dc.b	nC6, $04, nB5, $06, $02, nC6, $01, nB5
	dc.b	$03, nF5, $15, nG5, $03, nA5, $06, $06
	dc.b	$03, nB5, $02, nC6, $01, nB5, $09, nE6
	dc.b	$30
	smpsJump		MTPO_ThemeR_FM4, Target

MTPO_ThemeR_FM5:
	smpsFMvoice		$04

MTPO_ThemeR_Jump4:
	smpsPan		panRight
	dc.b	nC4, $03, nRst, $0C, nC4, $03, $03, nB3
	dc.b	$06, nRst, $15, nA3, $03, nRst, $0C, nA3
	dc.b	$03, $03, nB3, $06, nRst, $12, nB3, $03
	dc.b	nC4, nRst, $2D, nE4, $12, $06, nG4, $02
	dc.b	nA4, $04, $06, nE4, $03, $09, nD4, $02
	dc.b	nE4, $07, nD4, $09, $02, nE4, $07, nD4
	dc.b	$09, nF4, $02, nG4, $04, nD4, $06, nE4
	dc.b	$12, $06, nG4, $02, nA4, $04, $06, nE4
	dc.b	$03, nA4, $09, nB4, $02, nC5, $07, nB4
	dc.b	$09, $02, nC5, $07, nB4, $09, $02, nC5
	dc.b	$01, nB4, $03, $02, nC5, $01, nB4, $03
	dc.b	nE4, $12, $03, nA4, $06, nE5, nG5, $02
	dc.b	nA5, $04, nG5, $06, nD5, $15, $03, nG5
	dc.b	$06, $02, nA5, $04, nG5, $06, $02, nA5
	dc.b	$01, nG5, $03, nC5, $15, $03, nF5, $06
	dc.b	$06, $03, nG5, $02, nA5, $01, nG5, $09
	dc.b	nB4, $30, nE4, $12, $06, nG4, $02, nA4
	dc.b	$04, $06, nE4, $03, $09, nD4, $02, nE4
	dc.b	$07, nD4, $09, $02, nE4, $07, nD4, $09
	dc.b	nF4, $02, nG4, $04, nD4, $06, nE4, $12
	dc.b	$06, nG4, $02, nA4, $04, $06, nE4, $03
	dc.b	nA4, $09, nB4, $02, nC5, $07, nB4, $09
	dc.b	$02, nC5, $07, nB4, $09, $02, nC5, $01
	dc.b	nB4, $03, $02, nC5, $01, nB4, $03, nE4
	dc.b	$12, $03, nA4, $06, nE5, nG5, $02, nA5
	dc.b	$04, nG5, $06, nD5, $15, $03, nG5, $06
	dc.b	$02, nA5, $04, nG5, $06, $02, nA5, $01
	dc.b	nG5, $03, nC5, $15, $03, nF5, $06, $06
	dc.b	$03, nG5, $02, nA5, $01, nG5, $09, nB5
	dc.b	$30
	smpsJump		MTPO_ThemeR_Jump4, Target

MTPO_ThemeR_FM6:
	smpsPan		panRight
	smpsFMvoice		$05

MTPO_ThemeR_Jump5:
	dc.b	nA3

MTPO_ThemeR_Loop31:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop31, Target
	dc.b	nG3, $06

MTPO_ThemeR_Loop32:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop32, Target

MTPO_ThemeR_Loop33:
	dc.b	nF3
	smpsLoop		$00, $07, MTPO_ThemeR_Loop33, Target
	dc.b	nG3, $06

MTPO_ThemeR_Loop34:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop34, Target
	dc.b	nA3
	smpsLoop		$01, $04, MTPO_ThemeR_Loop34, Target

MTPO_ThemeR_Loop35:
	dc.b	nA3
	smpsLoop		$00, $07, MTPO_ThemeR_Loop35, Target

MTPO_ThemeR_Loop36:
	dc.b	nG3
	smpsLoop		$00, $0C, MTPO_ThemeR_Loop36, Target
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop37:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop37, Target

MTPO_ThemeR_Loop38:
	dc.b	nE3
	smpsLoop		$00, $0E, MTPO_ThemeR_Loop38, Target
	dc.b	nG3, nG3

MTPO_ThemeR_Loop39:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop39, Target

MTPO_ThemeR_Loop40:
	dc.b	nG3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop40, Target

MTPO_ThemeR_Loop41:
	dc.b	nF3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop41, Target

MTPO_ThemeR_Loop42:
	dc.b	nE3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop42, Target

MTPO_ThemeR_Loop43:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop43, Target

MTPO_ThemeR_Loop44:
	dc.b	nG3
	smpsLoop		$00, $0C, MTPO_ThemeR_Loop44, Target
	dc.b	nC4, nC4, nG3, nG3

MTPO_ThemeR_Loop45:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop45, Target

MTPO_ThemeR_Loop46:
	dc.b	nE3
	smpsLoop		$00, $0E, MTPO_ThemeR_Loop46, Target
	dc.b	nG3, nG3

MTPO_ThemeR_Loop47:
	dc.b	nA3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop47, Target

MTPO_ThemeR_Loop48:
	dc.b	nG3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop48, Target

MTPO_ThemeR_Loop49:
	dc.b	nF3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop49, Target

MTPO_ThemeR_Loop50:
	dc.b	nE3
	smpsLoop		$00, $10, MTPO_ThemeR_Loop50, Target
	smpsJump		MTPO_ThemeR_Jump5, Target

MTPO_ThemeR_PSG1:
	dc.b	nA1, $03, nA0, nA0, nA0, nA0, nA1, nA1
	dc.b	nG1, $06, nG0

MTPO_ThemeR_Loop51:
	dc.b	$03
	smpsLoop		$00, $07, MTPO_ThemeR_Loop51, Target
	dc.b	nF1, nF0, nF0, nF0, nF0, nF1, nF1, nG1
	dc.b	$06, nG0, $03, $03, $03, $03, $03, $03
	dc.b	nG1, nA1, nA0, nA0, nA1, nA0, nA0, nA1

MTPO_ThemeR_Loop52:
	dc.b	nA0, nA1, nA0, nA1, nA0, nA0
	smpsLoop		$00, $02, MTPO_ThemeR_Loop52, Target
	dc.b	nA1, nA0, nA0, nA1, nA0, nA1, nA0, nA1
	dc.b	nA0, nA0, nA0, nA1, nA0, nG1, nG0, nG0
	dc.b	nG1, nG0, nG0, nG1, nG0, nG1, nG0, nG1
	dc.b	nG0, nC2, $06, nG1, nA1, $03, nA0, nA0
	dc.b	nA1, nA0, nA0, nA1, nA0, nA1, nA0, nA1
	dc.b	nA0, nA0, nA0, nA1, nA0, nE1, nE0, nE0
	dc.b	nE1, nE0, nE0, nE1, nE0, nE1, nE0, nE1
	dc.b	nE0, nE1, $06, nG1, nA1, $03, nA0, nA0
	dc.b	nA1, nA0, nA0, nA1, nA0, nA1, nA0, nA1
	dc.b	nA0, nA0, nA0, nA1, nA0, nG1, nG0, nG0
	dc.b	nG1, nG0, nG0, nG1, nG0, nG1, nG0, nG1
	dc.b	nG0, nG0, nG0, nG1, nG0, nF1, nF0, nF0
	dc.b	nF1, nF0, nF0, nF1, nF0, nF1, nF0, nF1
	dc.b	nF0, nF0, nF0, nF1, nF0

MTPO_ThemeR_Loop53:
	dc.b	nE1, nE0, nE0
	smpsLoop		$00, $04, MTPO_ThemeR_Loop53, Target
	dc.b	nE1, $02, $01, nE0, $03, nE1, $02, $01
	dc.b	nE0

MTPO_ThemeR_Loop54:
	dc.b	$03, nA1, nA0
	smpsLoop		$00, $03, MTPO_ThemeR_Loop54, Target
	dc.b	nA1, nA0, nA1, nA0, nA0, nA0, nA1, nA0
	dc.b	nG1, nG0, nG0, nG1, nG0, nG0, nG1, nG0
	dc.b	nG1, nG0, nG1, nG0, nC2, $06, nG1, nA1
	dc.b	$03, nA0, nA0, nA1, nA0, nA0, nA1, nA0
	dc.b	nA1, nA0, nA1, nA0, nA0, nA0, nA1, nA0
	dc.b	nE1, nE0, nE0, nE1, nE0, nE0, nE1, nE0
	dc.b	nE1, nE0, nE1, nE0, nE1, $06, nG1, nA1
	dc.b	$03, nA0, nA0, nA1, nA0, nA0, nA1, nA0
	dc.b	nA1, nA0, nA1, nA0, nA0, nA0, nA1, nA0
	dc.b	nG1, nG0, nG0, nG1, nG0, nG0, nG1, nG0
	dc.b	nG1, nG0, nG1, nG0, nG0, nG0, nG1, nG0
	dc.b	nF1, nF0, nF0, nF1, nF0, nF0, nF1, nF0
	dc.b	nF1, nF0, nF1, nF0, nF0, nF0, nF1, nF0

MTPO_ThemeR_Loop55:
	dc.b	nE1, nE0, nE0
	smpsLoop		$00, $04, MTPO_ThemeR_Loop55, Target
	dc.b	nE1, $02, $01, nE0, $03, nE1, $02, $01
	dc.b	nE0, $03
	smpsJump		MTPO_ThemeR_PSG1, Target

MTPO_ThemeR_PSG2:
	dc.b	nE1, $03, nRst, $0C, nE1, $03, $03, nD1
	dc.b	$06, nRst, $15, nC1, $03, nRst, $0C, nC1
	dc.b	$03, $03, nD1, $06, nRst, $12, nD1, $03
	dc.b	nE1, nRst, $2D, nA1, $12, nB1, $06, $02
	dc.b	nC2, $04, $06, nB1, $03, nA1, $09, nG1
	dc.b	$02, nA1, $07, nG1, $09, $02, nA1, $07
	dc.b	nG1, $09, nB1, $02, nC2, $04, nB1, $06
	dc.b	nA1, $12, nB1, $06, $02, nC2, $04, $06
	dc.b	nB1, $03, nC2, $09, nD2, $02, nE2, $07
	dc.b	nD2, $09, $02, nE2, $07, nD2, $09, $02
	dc.b	nE2, $01, nD2, $03, $02, nE2, $01, nD2
	dc.b	$03, nA1, $12, nB1, $03, nC2, $06, nA2
	dc.b	nB2, $02, nC3, $04, nB2, $06, nG2, $15
	dc.b	nA2, $03, nB2, $06, $02, nC3, $04, nB2
	dc.b	$06, $02, nC3, $01, nB2, $03, nF2, $15
	dc.b	nG2, $03, nA2, $06, $06, $03, nB2, $02
	dc.b	nC3, $01, nB2, $09, nE2, $30, nA1, $12
	dc.b	nB1, $06, $02, nC2, $04, $06, nB1, $03
	dc.b	nA1, $09, nG1, $02, nA1, $07, nG1, $09
	dc.b	$02, nA1, $07, nG1, $09, nB1, $02, nC2
	dc.b	$04, nB1, $06, nA1, $12, nB1, $06, $02
	dc.b	nC2, $04, $06, nB1, $03, nC2, $09, nD2
	dc.b	$02, nE2, $07, nD2, $09, $02, nE2, $07
	dc.b	nD2, $09, $02, nE2, $01, nD2, $03, $02
	dc.b	nE2, $01, nD2, $03, nA1, $12, nB1, $03
	dc.b	nC2, $06, nA2, nB2, $02, nC3, $04, nB2
	dc.b	$06, nG2, $15, nA2, $03, nB2, $06, $02
	dc.b	nC3, $04, nB2, $06, $02, nC3, $01, nB2
	dc.b	$03, nF2, $15, nG2, $03, nA2, $06, $06
	dc.b	$03, nB2, $02, nC3, $01, nB2, $09, nE3
	dc.b	$30
	smpsJump		MTPO_ThemeR_PSG2, Target

MTPO_ThemeR_PSG3:
	dc.b	nC1, $03, nRst, $0C, nC1, $03, $03, nB0
	dc.b	$06, nRst, $15, nA0, $03, nRst, $0C, nA0
	dc.b	$03, $03, nB0, $06, nRst, $12, nB0, $03
	dc.b	nC1, nRst, $2D, nE1, $12, $06, nG1, $02
	dc.b	nA1, $04, $06, nE1, $03, $09, nD1, $02
	dc.b	nE1, $07, nD1, $09, $02, nE1, $07, nD1
	dc.b	$09, nF1, $02, nG1, $04, nD1, $06, nE1
	dc.b	$12, $06, nG1, $02, nA1, $04, $06, nE1
	dc.b	$03, nA1, $09, nB1, $02, nC2, $07, nB1
	dc.b	$09, $02, nC2, $07, nB1, $09, $02, nC2
	dc.b	$01, nB1, $03, $02, nC2, $01, nB1, $03
	dc.b	nE1, $12, $03, nA1, $06, nE2, nG2, $02
	dc.b	nA2, $04, nG2, $06, nD2, $15, $03, nG2
	dc.b	$06, $02, nA2, $04, nG2, $06, $02, nA2
	dc.b	$01, nG2, $03, nC2, $15, $03, nF2, $06
	dc.b	$06, $03, nG2, $02, nA2, $01, nG2, $09
	dc.b	nB1, $30, nE1, $12, $06, nG1, $02, nA1
	dc.b	$04, $06, nE1, $03, $09, nD1, $02, nE1
	dc.b	$07, nD1, $09, $02, nE1, $07, nD1, $09
	dc.b	nF1, $02, nG1, $04, nD1, $06, nE1, $12
	dc.b	$06, nG1, $02, nA1, $04, $06, nE1, $03
	dc.b	nA1, $09, nB1, $02, nC2, $07, nB1, $09
	dc.b	$02, nC2, $07, nB1, $09, $02, nC2, $01
	dc.b	nB1, $03, $02, nC2, $01, nB1, $03, nE1
	dc.b	$12, $03, nA1, $06, nE2, nG2, $02, nA2
	dc.b	$04, nG2, $06, nD2, $15, $03, nG2, $06
	dc.b	$02, nA2, $04, nG2, $06, $02, nA2, $01
	dc.b	nG2, $03, nC2, $15, $03, nF2, $06, $06
	dc.b	$03, nG2, $02, nA2, $01, nG2, $09, nB2
	dc.b	$30
	smpsJump		MTPO_ThemeR_PSG3, Target

MTPO_ThemeR_DAC:
	smpsStop

MTPO_ThemeR_Patches:

	
	dc.b	$39
	dc.b	$33, $01, $51, $01,	$5F, $5F, $5F, $5F
	dc.b	$0F, $00, $00, $1F,	$01, $01, $01, $01
	dc.b	$33, $1A, $1A, $17,	$1E, $19, $18, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$00, $00, $00, $00,	$0C, $0C, $16, $16
	dc.b	$17, $17, $00, $00,	$09, $09, $09, $09
	dc.b	$02, $02, $02, $02,	$21, $10, $12, $8C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$00, $00, $01, $05,	$5F, $5E, $5B, $5B
	dc.b	$05, $0C, $0E, $0E,	$00, $04, $08, $07
	dc.b	$B0, $19, $39, $FC,	$21, $8A, $8A, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$03, $22, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$04, $04, $04, $04
	dc.b	$10, $18, $10, $18,	$1E, $15, $1D, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$02
	dc.b	$01, $24, $61, $21,	$1F, $12, $1F, $1F
	dc.b	$05, $05, $05, $0B,	$04, $04, $04, $04
	dc.b	$10, $18, $10, $18,	$1C, $1C, $1C, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1D
	dc.b	$00, $10, $21, $31,	$9F, $5F, $5F, $5F
	dc.b	$00, $0F, $0F, $0F,	$09, $06, $06, $00
	dc.b	$0F, $18, $18, $27,	$19, $88, $88, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
