Maniax_Header:
	sHeaderInit						; Z80 offset is $C8FA
	sHeaderPatch	Maniax_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderFM	Maniax_FM1, $00, $09
	sHeaderFM	Maniax_FM2, $00, $1A
	sHeaderFM	Maniax_FM3, $FB, $1A
	sHeaderFM	Maniax_FM4, $00, $10
	sHeaderFM	Maniax_FM5, $07, $11
	sHeaderFM	Maniax_FM6, $00, $23
	sHeaderPSG	Maniax_PSG1, $E8, $01, $00, v00
	sHeaderPSG	Maniax_PSG2, $E8, $05, $00, v00
	sHeaderPSG	Maniax_PSG3, $23, $00, $00, v00
	sHeaderPWM	Maniax_PWM1, $00, $CC
	sHeaderPWM	Maniax_PWM2, $00, $72
	sHeaderPWM	Maniax_PWM3, $00, $00
	sHeaderPWM	Maniax_PWM4, $00, $55

Maniax_FM1:
	sPatFM		$00
	sPan		spCenter

Maniax_Jump1:
	dc.b nA2, $0C, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b nEb3, nE3, nD3, nB2, nF3, nE3, nD3, nC3
	dc.b nB2, nA2, nE2, nFs2, nG2, nA2, nC3, nD3
	dc.b nEb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b nC3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b nAb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b nAb3, nA3, nC4, nB3, nBb3, nA3, nG3, nE3
	dc.b nF3, nE3, nB2, nCs3, nD3, nE3, nG3, nA3
	dc.b nBb3, nA3, nG3, nE3, nBb3, nA3, nG3, nF3
	dc.b nE3, nD3, nA2, nB2, nC3, nD3, nF3, nG3
	dc.b nAb3, nE3, nG3, nFs3, nF3, nE3, nD3, nB2
	dc.b nC3
	sJump		Maniax_Jump1

Maniax_FM2:
	sPatFM		$01
	sPan		spCenter
	sCall		Maniax_Call1

Maniax_Call1:
	saVolFM		$FE
	dc.b nA4, $06, nE4, $03, nRst, nG4, $06, nE4
	dc.b $03, nRst
	saVolFM		$FD
	dc.b nA4, $06, nE4, $03, nRst, nG4, $06, nE4
	dc.b $03, nRst
	sLoop		$00, $04, Maniax_Call1
	dc.b nA4, $0C, nBb4, $54, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C

Maniax_Loop1:
	saVolFM		$FE
	dc.b nD5, $06, nA4, $03, nRst, nC5, $06, nA4
	dc.b $03, nRst
	saVolFM		$FD
	dc.b nD5, $06, nA4, $03, nRst, nC5, $06, nA4
	dc.b $03, nRst
	sLoop		$00, $04, Maniax_Loop1
	dc.b nD5, $0C, nEb5, $54, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$02
	dc.b $0C, sHold
	saVolFM		$03
	dc.b $0C, sHold
	saVolFM		$F6
	dc.b nE4, $60, nD4, $60, sHold, $60, sHold, $30
	dc.b nRst, $06, nD4, nEb4, nE4, nF4, nFs4, nG4
	dc.b nAb4
	saVolFM		$0A
	sJump		Maniax_Call1

Maniax_FM3:
	sPatFM		$01
	sPan		spCenter
	sCall		Maniax_Call1

Maniax_FM4:
	sPatFM		$02
	sPan		spLeft

Maniax_Loop2:
	dc.b nA2, $12, nA2, $06, nRst, $24, nA2, $06
	dc.b nRst, $0C, nA2, $12
	sLoop		$00, $04, Maniax_Loop2

Maniax_Loop3:
	dc.b nD3, $12, nD3, $06, nRst, $24, nD3, $06
	dc.b nRst, $0C, nD3, $12
	sLoop		$00, $04, Maniax_Loop3
	dc.b nE3, $12, nE3, $06, nRst, $24, nE3, $06
	dc.b nRst, $0C, nE3, $12, nD3, $12, nD3, $06
	dc.b nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b nD3, nD3, $06, nRst, $24, nD3, $06, nRst
	dc.b $0C, nD3, $12, nA2, nA2, $06, nRst, $24
	dc.b nA2, $06, nRst, $0C, nA2, $12
	sJump		Maniax_Loop2

Maniax_FM5:
	sPatFM		$02
	sPan		spRight

Maniax_Loop4:
	dc.b nA2, $12, nA2, $06, nRst, $24, nA2, $06
	dc.b nRst, $0C, nA2, $12
	sLoop		$00, $04, Maniax_Loop4

Maniax_Loop5:
	dc.b nD3, $12, nD3, $06, nRst, $24, nD3, $06
	dc.b nRst, $0C, nD3, $12
	sLoop		$00, $04, Maniax_Loop5
	dc.b nE3, $12, nE3, $06, nRst, $24, nE3, $06
	dc.b nRst, $0C, nE3, $12, nD3, $12, nD3, $06
	dc.b nRst, $24, nD3, $06, nRst, $0C, nD3, $12
	dc.b nD3, nD3, $06, nRst, $24, nD3, $06, nRst
	dc.b $0C, nD3, $12, nA2, nA2, $06, nRst, $24
	dc.b nA2, $06, nRst, $0C, nA2, $12
	sJump		Maniax_Loop4

Maniax_FM6:
	sPatFM		$01
	sPan		spCenter
	ssModZ80	$01, $01, $05, $08
	dc.b nRst, $06
	sCall		Maniax_Call1

Maniax_PSG1:
	sVolEnvPSG	v08
	dc.b nRst, $60
	sLoop		$00, $03, Maniax_PSG1
	dc.b nCs5, $08, nE5, nB5, nBb5, $48

Maniax_Loop6:
	dc.b nRst, $60
	sLoop		$00, $03, Maniax_Loop6
	dc.b nFs5, $08, nA5, nE6, nEb6, $30, nRst, $18
	saTranspose	$0C
	sVolEnvPSG	v02
	dc.b nE4, $06, nFs4, nG4, nE4, nA4, nG4, nFs4
	dc.b nA4, nG4, nFs4, nE4, nB3, nA3, nB3, nCs4
	dc.b nEb4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b nG4, nF4, nE4, nD4, nA3, nG3, nA3, nB3
	dc.b nCs4, nD4, nE4, nF4, nD4, nG4, nF4, nE4
	dc.b nG4, nA3, nE4, nG4
	sVolEnvPSG	v08
	dc.b nA4, $1E, sHold, $36
	sVolEnvPSG	v02
	dc.b nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nAb4
	saTranspose	$F4
	sJump		Maniax_PSG1

Maniax_PSG2:
	ssModZ80	$01, $01, $02, $04
	dc.b nRst, $08

Maniax_Loop7:
	sVolEnvPSG	v08
	dc.b nRst, $60
	sLoop		$00, $03, Maniax_Loop7
	dc.b nCs5, $08, nE5, nB5, nBb5, $30, nRst, $18

Maniax_Loop8:
	dc.b nRst, $60
	sLoop		$00, $03, Maniax_Loop8
	dc.b nFs5, $08, nA5, nE6, nEb6, $30, nRst, $10
	saTranspose	$0C
	sVolEnvPSG	v02
	dc.b nRst, $06, nE4, $06, nFs4, nG4, nE4, nA4
	dc.b nG4, nFs4, nA4, nG4, nFs4, nE4, nB3, nA3
	dc.b nB3, nCs4, nEb4, nD4, nE4, nF4, nD4, nG4
	dc.b nF4, nE4, nG4, nF4, nE4, nD4, nA3, nG3
	dc.b nA3, nB3, nCs4, nD4, nE4, nF4, nD4, nG4
	dc.b nF4, nE4, nG4, nA3, nE4, nG4
	sVolEnvPSG	v08
	dc.b nA4, $1E, sHold, $36
	sVolEnvPSG	v02
	dc.b nD4, $06, nEb4, nE4, nF4, nFs4, nG4, nRst
	dc.b $08
	saTranspose	$F4
	sJump		Maniax_Loop7

Maniax_PSG3:
	sNoisePSG	$E7

Maniax_Jump2:
	sVolEnvPSG	v02
	dc.b nC4, $0C
	sVolEnvPSG	v05
	dc.b $0C
	sJump		Maniax_Jump2

Maniax_PWM1:
	dc.b p84, $0C
	saVolFM		$DE
	dc.b p84, $0C
	saVolFM		$22
	sJump		Maniax_PWM1

Maniax_PWM2:
	dc.b nRst, $60
	sLoop		$00, $08, Maniax_PWM2

Maniax_Loop9:
	dc.b p8A, $18
	sLoop		$00, $10, Maniax_Loop9
	sJump		Maniax_PWM2

Maniax_PWM3:
	sStop

Maniax_PWM4:
	saVolFM		$FD
	dc.b p93, $0C
	saVolFM		$03
	saVolFM		$D0
	dc.b p92, nRst, $06, p92
	saVolFM		$30
	saVolFM		$FD
	dc.b p93, p93
	saVolFM		$03

Maniax_Loop10:
	saVolFM		$33
	saVolFM		$D0
	dc.b p92
	saVolFM		$CD
	saVolFM		$30
	saVolFM		$FD
	dc.b p93, p93
	saVolFM		$03
	saVolFM		$D0
	dc.b p92
	saVolFM		$30
	saVolFM		$FD
	dc.b p93, p93
	saVolFM		$03
	saVolFM		$D0
	dc.b p92
	saVolFM		$30
	saVolFM		$FD
	dc.b p93
	saVolFM		$03
	sLoop		$00, $03, Maniax_Loop10
	saVolFM		$44
	saVolFM		$FE
	dc.b p93, $06, $06
	saVolFM		$DE
	dc.b $06, $06, p93, $06, $06
	saVolFM		$DE
	dc.b $06, $06, p93, $06, $06
	saVolFM		$EF
	dc.b $03, $03, $03, $03, p93, $03, $03, $03
	dc.b $03
	saVolFM		$EF
	dc.b $03, $03, $03, $03
	saVolFM		$66
	saVolFM		$02
	saVolFM		$BC
	saVolFM		$44
	saVolFM		$E0
	dc.b p92, $06, $06
	saVolFM		$DE
	dc.b $06, $06, p92, $06, $06
	saVolFM		$DE
	dc.b $06, $06, p92, $06, $06
	saVolFM		$EF
	dc.b $03, $03, $03, $03, p92, $03, $03, $03
	dc.b $03
	saVolFM		$EF
	dc.b $03, $03, $03, $03
	saVolFM		$66
	saVolFM		$20
	saVolFM		$BC
	sLoop		$01, $02, Maniax_PWM4

Maniax_Loop11:
	dc.b nRst, $0C
	saVolFM		$D0
	dc.b p92, $0C
	saVolFM		$30
	dc.b nRst, $0C
	saVolFM		$FD
	dc.b p93, $06, p93
	saVolFM		$03
	sLoop		$00, $07, Maniax_Loop11
	saVolFM		$22
	dc.b p90, $06, $0C, $06, p91, $06, $06, $06
	dc.b $06
	saVolFM		$DE
	sJump		Maniax_PWM4

Maniax_Patches:

	; Patch $00
	; $3A
	; $20, $23, $60, $00,	$1E, $1F, $1F, $1F
	; $0A, $0A, $0B, $09,	$05, $07, $0A, $00
	; $A4, $85, $96, $D7,	$21, $25, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $06, $02, $00
	spMultiple	$00, $00, $03, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0B, $0A, $09
	spSustainLv	$0A, $09, $08, $0D
	spDecayRt	$05, $0A, $07, $00
	spReleaseRt	$04, $06, $05, $07
	spTotalLv	$21, $28, $25, $00

	; Patch $01
	; $3A
	; $01, $02, $01, $01,	$14, $14, $17, $14
	; $0A, $0C, $03, $07,	$02, $08, $08, $03
	; $07, $E9, $A8, $18,	$1C, $2B, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $17, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $03, $0C, $07
	spSustainLv	$00, $0A, $0E, $01
	spDecayRt	$02, $08, $08, $03
	spReleaseRt	$07, $08, $09, $08
	spTotalLv	$1C, $28, $2B, $00

	; Patch $02
	; $07
	; $78, $06, $72, $31,	$9F, $DF, $5F, $DF
	; $0A, $0A, $00, $00,	$00, $00, $00, $00
	; $17, $17, $07, $07,	$88, $8A, $80, $83
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$07, $07, $00, $03
	spMultiple	$08, $02, $06, $01
	spRateScale	$02, $01, $03, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $00, $0A, $00
	spSustainLv	$01, $00, $01, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$07, $07, $07, $07
	spTotalLv	$08, $00, $0A, $03
