HPZ_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	HPZ_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$02, $20
	sHeaderDAC	HPZ_DAC
	sHeaderFM	HPZ_FM1, $00, $06
	sHeaderFM	HPZ_FM2, $0C, $10
	sHeaderFM	HPZ_FM3, $00, $14
	sHeaderFM	HPZ_FM4, $00, $0E
	sHeaderFM	HPZ_FM5, $F4, $14
	sHeaderPSG	HPZ_PSG1, $F4, $06, $00, v00
	sHeaderPSG	HPZ_PSG2, $F4, $08, $00, $2F
	sHeaderPSG	HPZ_PSG3, $00, $08, $00, $2F

HPZ_FM5:
	sPan		spRight
	ssModZ80	$19, $01, $FE, $05
	sPatFM		$03
	ssDetune	$02
	sJump		HPZ_Loop3

HPZ_FM4:
	ssModZ80	$0D, $01, $FD, $06
	sPatFM		$00
	ssDetune	$02
	dc.b nRst, $06
	sJump		HPZ_Jump3

HPZ_PSG1:
	ssModZ80	$0D, $01, $01, $05
	sJump		HPZ_Jump3

HPZ_PSG2:
	ssModZ80	$0D, $01, $FF, $05
	ssDetune	$FF
	dc.b nRst, $06
	sJump		HPZ_Jump3

HPZ_FM1:
	ssModZ80	$0D, $01, $03, $06
	sPatFM		$00

HPZ_Jump3:
	dc.b nRst, $18

HPZ_Loop1:
	dc.b nF4, $06, nG4, nA4, $18, nG4, $0C, nA4
	dc.b $18, nC5, $0C, nB4, nA4, nG4, nA4, $18
	dc.b nF4, $06, nG4, nA4, $18, nG4, $0C, nA4
	dc.b $18, nC5, $0C, nD5, nB4, nG4, nA4, $18
	dc.b nF4, $0C, nG4, $18, nF4, $0C, nG4, $18
	dc.b nC5, $0C, nA4, $24, nG4, $18, nF4, $0C
	dc.b nA4, $24, nB4, nC5, nB4, $18
	sLoop		$01, $02, HPZ_Loop1
	dc.b sHold, nB4, $0C, nF5, $24, $0C, nG5, nF5
	dc.b nE5, $24, nCs5, $18
	sJump		HPZ_Loop1

HPZ_FM2:
	sPatFM		$01

HPZ_Loop2:
	dc.b nRst, $18, nA1, $0C, nD2, $06, nRst, $12
	dc.b nA1, $0C

HPZ_Jump1:
	dc.b nD2, $06, nRst, $12, nA1, $0C, nG1, $06
	dc.b nRst, $12, nG1, $0C, nD2, $06, nRst, $12
	dc.b nA1, $0C, nD2, $06, nRst, $12, nA1, $0C
	dc.b nD2, $06, nRst, $12, nA1, $0C, nG1, $06
	dc.b nRst, $12, nG1, $0C, nD2, $06, nRst, $12
	dc.b nD2, $0C, nG1, $06, nRst, $12, nD2, $0C
	dc.b nG1, $06, nRst, $12, nG1, $0C, nF1, $06
	dc.b nRst, $12, nC2, $0C, nF1, $06, nRst, $12
	dc.b nC2, $0C, nD2, $06, nRst, $12, nA1, $0C
	dc.b nD2, $06, nRst, $12, nA1, $0C, nD2, $06
	dc.b nRst, $12, nA1, $0C
	sLoop		$00, $02, HPZ_Loop2
	dc.b nD2, $06, nRst, $12, nA1, $0C, nBb1, $18
	dc.b $0C, $18, $0C, nC2, $18, $0C, nCs2, $18
	dc.b nA1, $0C, nD2, $06, nRst, $12, nA1, $0C
	sJump		HPZ_Jump1

HPZ_FM3:
	sPan		spLeft
	saTranspose	$F4
	ssModZ80	$19, $01, $02, $05
	sPatFM		$02

HPZ_Loop3:
	dc.b nD4, $0C, nA4, nF4

HPZ_Jump2:
	dc.b nC5, $24, sHold, nC5, nB4, nE5, $18, nA4
	dc.b $0C, nC5, $24, sHold, nC5, nB4, nD5, nRst
	dc.b $0C, nG4, nA4, nB4, $18, nA4, $0C, nRst
	dc.b nA4, nB4, nC5, nB4, nC5, nD5, $24, sHold
	dc.b $18, nE5, $0C, nD5, $24
	sLoop		$00, $02, HPZ_Loop3
	saTranspose	$0C
	dc.b sHold, nD4, $24, nD4, nBb3, $0C, nD4, nA4
	dc.b nG4, $24
	saTranspose	$F4
	dc.b nE4, $0C, nA4, nF4
	sJump		HPZ_Jump2

HPZ_PSG3:
	dc.b nRst, $24, $0A, $10

HPZ_Loop4:
	saVolFM		$FE
	dc.b nF4, $06
	saVolFM		$02
	dc.b nC5, nC5, nF4, nA4, nF4
	saVolFM		$FE
	dc.b nB4
	saVolFM		$02
	dc.b nF4, nC5, nF4, nB4, nF4
	sLoop		$01, $10, HPZ_Loop4

HPZ_Loop5:
	dc.b nA5, $06, nF5, nE5, nD5
	sLoop		$01, $04, HPZ_Loop5
	dc.b nA5, $06, nF5, nE5, nCs5, nA5, nG5, nE5
	dc.b nCs5
	sJump		HPZ_Loop4

HPZ_Call1:
	dc.b dEchoedClapHit2, $12, dLowerEchoedClapHit2, $06, $D2, $0C, dEchoedClapHit2, $0C
	dc.b dLowerEchoedClapHit2, $12, $D2, $06
	sRet

HPZ_DAC:
	dc.b dLowerEchoedClapHit2, $06, $D0, $0C, $D1, $06, $D2, $0C

HPZ_Loop6:
	sCall		HPZ_Call1
	sLoop		$00, $07, HPZ_Loop6
	dc.b dEchoedClapHit2, $12, dLowerEchoedClapHit2, $06, $D2, $0C, dEchoedClapHit2, $06
	dc.b $D0, $0C, $D1, $06, dEchoedClapHit2, $0C

HPZ_Loop7:
	sCall		HPZ_Call1
	sLoop		$00, $08, HPZ_Loop7
	dc.b dEchoedClapHit2, $12, dLowerEchoedClapHit2, $06, dEchoedClapHit2, $0C, dEchoedClapHit2, $0C
	dc.b dEchoedClapHit2, dLowerEchoedClapHit2, dEchoedClapHit2, $12, dLowerEchoedClapHit2, $06, dEchoedClapHit2, $0C
	sJump		HPZ_DAC

HPZ_Patches:

	; Patch $00
	; $3B
	; $01, $02, $13, $02,	$5D, $5D, $5D, $4A
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $05, $05, $04, $0A,	$1E, $1E, $28, $89
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $01, $00, $00
	spMultiple	$01, $03, $02, $02
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1D, $1D, $1D, $0A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$05, $04, $05, $0A
	spTotalLv	$1E, $28, $1E, $09

	; Patch $01
	; $3A
	; $22, $68, $71, $32,	$12, $16, $14, $0C
	; $0A, $06, $0A, $04,	$00, $00, $00, $00
	; $16, $26, $56, $06,	$1F, $22, $1C, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $07, $06, $03
	spMultiple	$02, $01, $08, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $14, $16, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0A, $06, $04
	spSustainLv	$01, $05, $02, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$06, $06, $06, $06
	spTotalLv	$1F, $1C, $22, $00

	; Patch $02
	; $3B
	; $32, $32, $32, $72,	$4F, $18, $1A, $11
	; $0E, $16, $0B, $00,	$04, $00, $00, $00
	; $50, $10, $00, $0A,	$1B, $1F, $1E, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $03, $03, $07
	spMultiple	$02, $02, $02, $02
	spRateScale	$01, $00, $00, $00
	spAttackRt	$0F, $1A, $18, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0B, $16, $00
	spSustainLv	$05, $00, $01, $00
	spDecayRt	$04, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0A
	spTotalLv	$1B, $1E, $1F, $00

	; Patch $03
	; $38
	; $32, $52, $32, $72,	$17, $18, $1A, $11
	; $17, $16, $0B, $00,	$00, $00, $00, $00
	; $10, $10, $00, $0A,	$20, $11, $21, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$03, $03, $05, $07
	spMultiple	$02, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $1A, $18, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $0B, $16, $00
	spSustainLv	$01, $00, $01, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0A
	spTotalLv	$20, $21, $11, $00
