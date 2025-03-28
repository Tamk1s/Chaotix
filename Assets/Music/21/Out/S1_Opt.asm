
	sHeaderInit
	smpsHeaderVoice	S2DEZ_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $60
	sHeaderDAC	S2DEZ_DAC
	smpsHeaderFM	S2DEZ_FM1, Target, $00, $16
	smpsHeaderFM	S2DEZ_FM2, Target, $00, $08
	smpsHeaderFM	S2DEZ_FM3, Target, $00, $10
	smpsHeaderFM	S2DEZ_FM4, Target, $00, $10
	smpsHeaderFM	S2DEZ_FM5, Target, $00, $06
	smpsHeaderPSG	S2DEZ_PSG1, Target, $E8, $06, $00, $00
	smpsHeaderPSG	S2DEZ_PSG2, Target, $E8, $06, $00, $00
	smpsHeaderPSG	S2DEZ_PSG3, Target, $00, $02, $00, $01

S2DEZ_FM1:
	smpsFMvoice		$00

S2DEZ_Jump1:
	dc.b nA5, $04, nG5, nBb5, nFs5, nA5, nF5, nAb5
	dc.b nFs5, nB5, nF5, nA5, nG5, nBb5, nFs5, nAb5
	dc.b nF5, nA5, nG5, nB5, nF5, nBb5, nFs5, nC6
	dc.b nF5, nBb5, nG5, nB5, nFs5, nA5, nF5, nAb5
	dc.b nFs5, nBb5, nE5, nG5, nEb5, nA5, nF5, nBb5
	dc.b nFs5, nB5, nG5, nA5, nF5, nAb5, nFs5, nBb5
	dc.b nG5, nB5, nAb5, nC6, nA5, nCs6, nG5, nC6
	dc.b nF5, nB5, nFs5, nBb5, nG5, nA5, nF5, nAb5
	dc.b nE5, nG5, nEb5, nA5, nF5, nBb5, nFs5, nB5
	dc.b nG5, nC6, nAb5, nEb6, nG5, nD6, nF5, nC6
	dc.b nG5, nB5, nFs5, nBb5, nG5, nA5, nF5, nAb5
	dc.b nFs5, nB5, nF5, nA5, nG5, nBb5, nFs5, nC6
	dc.b nF5, nBb5, nFs5, nB5, nF5, nA5, nE5, nAb5
	dc.b nEb5, nA5, nE5, nBb5, nF5, nB5, nFs5, nC6
	dc.b nG5, nD6, nF5, nBb5, nFs5, nA5, nG5, nB5
	dc.b nFs5, nBb5, nF5, nB5, nE5, nA5, nF5, nBb5
	dc.b nG5, nB5, nFs5, nA5, nF5, nBb5, nFs5, nC6
	dc.b nE5, nD6, nEb5, nCs6, nF5, nC6, nFs5, nB5
	dc.b nF5, nBb5, nG5, nA5, nFs5, nAb5, nF5, nA5
	dc.b nFs5, nBb5, nG5, nB5, nAb5, nC6, nF5, nA5
	dc.b nFs5, nBb5, nF5, nB5, nE5, nC6, nF5, nB5
	dc.b nFs5, nA5, nG5, nBb5, nFs5, nAb5, nF5, nA5
	dc.b nG5, nBb5, nFs5, nB5, nF5, nC6, nE5, nBb5
	dc.b nF5, nA5, nFs5, nB5, nG5, nAb5, nF5, nA5
	dc.b nFs5, nBb5, nF5, nB5, nE5, nC6, nEb5, nCs6
	dc.b nE5, nBb5, nF5, nA5, nFs5, nAb5, nG5, nB5
	dc.b nF5, nA5, nFs5, nBb5, nG5, nAb5, nF5, nB5
	dc.b nE5, nC6, nEb5, nBb5, nF5, nA5, nFs5, nB5
	dc.b nG5, nBb5, nF5, nA5, nFs5, nAb5, nG5, nB5
	dc.b nF5, nBb5, nFs5, nC6, nD5, nB5, nF5, nA5
	dc.b nFs5, nBb5, nG5, nAb5, nFs5, nA5, nF5, nBb5
	dc.b nE5, nB5, nEb5, nC6, nF5, nCs6, nFs5, nB5
	dc.b nG5, nBb5, nFs5, nA5, nF5, nAb5, nEb5, nG5
	dc.b nF5, nA5, nFs5, nBb5, nG5, nB5, nAb5, nC6
	dc.b nG5

S2DEZ_Loop1:
	dc.b nBb5, nFs5, nA5, nG5, nB5, nF5
	smpsLoop		$00, $02, S2DEZ_Loop1, Target
	dc.b nBb5, nFs5, nA5, nF5
	smpsJump		S2DEZ_Jump1, Target

S2DEZ_FM3:
	smpsFMvoice		$02
	ssMod68k	$08, $01, $05, $04

S2DEZ_Loop3:
	dc.b nRst, $30

S2DEZ_Loop2:
	dc.b nRst, $08, nEb6, $02, nCs6, nA5, nRst, nEb6
	dc.b nCs6, nA5, nRst
	smpsLoop		$01, $02, S2DEZ_Loop2, Target
	smpsLoop		$00, $02, S2DEZ_Loop3, Target
	smpsCall		S2DEZ_Call1, Target
	dc.b nA4, $10, nB4, $08, nCs5, $10, nA4, $08
	dc.b nE5, $0C, nFs5, $04, nE5, $08, nCs5, $10
	dc.b nA4, $08, nA5, $10, nFs5, $04, nA5, nFs5
	dc.b $10, nE5, $04, nFs5, nE5, $18, nFs5, $10
	dc.b nCs5, $08, nA4, $10, nB4, $08, nCs5, $10
	dc.b nA4, $08, nE5, $0C, nFs5, $04, nE5, $08
	dc.b nCs5, $10, nA4, $08, nA5, $60

S2DEZ_Loop4:
	dc.b nE6, $04, nD6, nCs6, $10
	smpsLoop		$00, $03, S2DEZ_Loop4, Target
	dc.b nE6, $04, nD6, nCs6, $08, nA5, nCs6, $30
	dc.b nRst
	smpsJump		S2DEZ_FM3, Target

S2DEZ_Call1:
	smpsFMvoice		$03
	dc.b nA4, $10, nB4, $08, nCs5, $10, nA4, $08
	dc.b nE5, $0C, nFs5, $04, nE5, $08, nCs5, $10
	dc.b nA4, $08, nA5, $18, nFs5, nE5, nCs5, nA4
	dc.b $10, nB4, $08, nCs5, $10, nA4, $08, nE5
	dc.b $0C, nFs5, $04, nE5, $08, nCs5, $10, nA4
	dc.b $08, nA5, $20, nFs5, $08, nAb5, nA5, $30
	smpsReturn

S2DEZ_FM4:
	smpsFMvoice		$02
	ssMod68k	$08, $01, $05, $04

S2DEZ_Loop6:
	smpsAlterNote	$02
	dc.b nRst, $30

S2DEZ_Loop5:
	dc.b nRst, $08, nEb6, $02, nCs6, nA5, nRst, nEb6
	dc.b nCs6, nA5, nRst
	smpsLoop		$01, $02, S2DEZ_Loop5, Target
	smpsLoop		$00, $02, S2DEZ_Loop6, Target
	smpsCall		S2DEZ_Call1, Target
	dc.b nCs5, $10, nD5, $08, nE5, $10, nCs5, $08
	dc.b nAb5, $0C, nA5, $04, nAb5, $08, nE5, $10
	dc.b nCs5, $08, nCs6, $10, nA5, $04, nCs6, nA5
	dc.b $10, nAb5, $04, nA5, nAb5, $18, nA5, $10
	dc.b nE5, $08, nCs5, $10, nD5, $08, nE5, $10
	dc.b nCs5, $08, nAb5, $0C, nA5, $04, nAb5, $08
	dc.b nE5, $10, nCs5, $08, nCs6, $60

S2DEZ_Loop7:
	dc.b nCs6, $04, nB5, nA5, $10
	smpsLoop		$00, $03, S2DEZ_Loop7, Target
	dc.b nCs6, $04, nB5, nA5, $08, nFs5, nA5, $30
	dc.b nRst
	smpsJump		S2DEZ_Loop6, Target

S2DEZ_FM5:
	smpsFMvoice		$05
	smpsNoteFill	$00
	smpsAlterVol		$0C
	dc.b nA2, $30
	ssMod68k	$10, $01, $FF, $FF
	dc.b smpsNoAttack, $30, smpsNoAttack
	ssMod68k	$00, $01, $10, $FF
	dc.b nG2, $08
	sModOff
	dc.b nC3, $40
	ssMod68k	$10, $01, $FE, $FF
	dc.b smpsNoAttack, $18
	smpsAlterVol		$F4
	smpsFMvoice		$04
	smpsNoteFill	$09

S2DEZ_Loo$8:
	dc.b nA2, $04, nRst, $28, nAb2, $04, nA2, nA2
	dc.b $02, nRst, $2A, nA2, $04, nRst, $28, nAb2
	dc.b $04, nA2, nA2, nRst, $18, nA4, $04, nB4
	dc.b nC5, nCs5
	smpsLoop		$00, $04, S2DEZ_Loo$8, Target

S2DEZ_Loo$9:
	dc.b nA2, $04, nRst, nA4, nA4, nFs4, nA4
	smpsLoop		$00, $04, S2DEZ_Loo$9, Target
	dc.b nA2, nRst, $28, nAb2, $04, nA2, nA2, nA4
	dc.b nB4, nC5, nCs5, nRst, $08, nA4, $04, nB4
	dc.b nC5, nCs5
	smpsJump		S2DEZ_FM5, Target

S2DEZ_FM2:
	smpsFMvoice		$01
	smpsNoteFill	$0A

S2DEZ_Jump2:
	dc.b nA1, $04, nA2, nA2, nA1, nG2, nA1, nFs2
	dc.b nA1, nF2, nF2, nA1, nE2, nA1, $02, nRst
	dc.b $2E, nA1, $04, nA2, nA2, nA1, nG2, nA1
	dc.b nFs2, nA1, nC3, nC3, nA1, nC3, nA1, $02
	dc.b nRst, $2E
	smpsJump		S2DEZ_Jump2, Target

S2DEZ_PSG2:
	smpsAlterNote	$FE

S2DEZ_PSG1:
	dc.b nRst, $18
	smpsLoop		$00, $18, S2DEZ_PSG1, Target

S2DEZ_Loop10:
	ssMod68k	$06, $02, $FE, $FF
	dc.b nG2, $18
	sModOff
	dc.b nA2, $30
	ssMod68k	$06, $01, $01, $FF
	dc.b smpsNoAttack, $18
	ssMod68k	$00, $01, $FA, $FF
	dc.b nG2, $08
	sModOff
	dc.b nC3, $40
	ssMod68k	$00, $01, $01, $FF
	dc.b smpsNoAttack, $18
	smpsLoop		$00, $02, S2DEZ_Loop10, Target

S2DEZ_Loop11:
	ssMod68k	$00, $01, $FD, $FF
	dc.b nG2, $08
	sModOff
	dc.b nA2, $10
	ssMod68k	$00, $01, $FC, $FF
	dc.b $08
	sModOff
	dc.b nC3, $10
	smpsLoop		$00, $02, S2DEZ_Loop11, Target
	ssMod68k	$00, $01, $FD, $FF
	dc.b nG2, $08
	sModOff
	dc.b nA2, $40
	ssMod68k	$06, $01, $01, $FF
	dc.b smpsNoAttack, $18
	smpsJump		S2DEZ_PSG1, Target

S2DEZ_DAC:
	dc.b nRst, $30, pESnare, $04, pEKick, pEKick, $10, pESnare
	dc.b $04, pEKick, pEKick, $10, nRst, $30, pESnare, $04
	dc.b pEKick, nRst, pEKick, nRst, pEKick, pEKick, pEKick, pESnare
	dc.b $08, pESnare, pEKick, $08, pESnare, $04, $04, $08
	dc.b pEKick, pESnare, pESnare, pEKick, pESnare, $0C

S2DEZ_Loop13:
	dc.b $04, pEKick, $08, pESnare, pESnare, pEKick, pESnare, $04
	dc.b $08
	smpsLoop		$00, $02, S2DEZ_Loop13, Target
	dc.b $04

S2DEZ_Loop14:
	dc.b pEKick, $08, pESnare, $04, $04, $08, pEKick, pESnare
	dc.b pESnare, pEKick, pESnare, $04, $08, $04, pEKick, $08
	dc.b pESnare, pESnare
	smpsLoop		$00, $02, S2DEZ_Loop14, Target
	dc.b pEKick, pESnare, $04, pESnare, pEKick, pESnare, pEKick, $08
	dc.b pESnare, pESnare, pEKick, pESnare, $04, $08, $04, pEKick
	dc.b $08, pESnare, pESnare, pEKick, $08, pESnare, $04, $04
	dc.b $08, pEKick, pESnare, pESnare, pEKick, pESnare, $04, $08
	dc.b $04, pEKick, $08, pESnare, pESnare, pEKick, $04, pEKick
	dc.b pESnare, pEKick, pESnare, pEKick, pEKick, $08, pESnare, pESnare
	dc.b pEKick, pESnare, $04, $08, $04, pEKick, $08, pESnare
	dc.b pESnare, pEKick, pESnare, $04, $04, $08, pEKick, pESnare
	dc.b pESnare, pEKick, pESnare, $04, $08, $04, pEKick, $08
	dc.b pESnare, pESnare, pESnare, $04, pEKick, $08, $04, pESnare
	dc.b pEKick

S2DEZ_Loop15:
	dc.b pEKick, $08, pESnare, pESnare, pEKick, $08, pESnare, $04
	dc.b pESnare, pESnare, pESnare
	smpsLoop		$00, $02, S2DEZ_Loop15, Target
	dc.b pEKick, $08, pESnare, pESnare, pEKick, $08, pESnare, $04
	dc.b $08, $04, $04, pEKick, $08, $04, pESnare, pEKick
	dc.b pESnare, $04, pEKick, $08, $04, pESnare, pEKick
	smpsJump		S2DEZ_DAC, Target

S2DEZ_PSG3:
	smpsPSGform	$E7

S2DEZ_Jump3:
	dc.b nRst, $08, nA5, nA5, nRst, $08, nA5, nA5
	dc.b nRst, $38, nA5, $08, nA5, nRst, $08, nA5
	dc.b nA5, nRst, $30

S2DEZ_Loop12:
	dc.b nRst, $18
	smpsLoop		$00, $28, S2DEZ_Loop12, Target
	smpsJump		S2DEZ_Jump3, Target

S2DEZ_Patches:

	; Patch $00
	; $30
	; $75, $75, $71, $31,	$D8, $58, $96, $94
	; $01, $1B, $03, $08,	$01, $04, $01, $01
	; $FF, $2F, $3F, $3F,	$34, $29, $10, $80
	smpsVcAlgorithm	$00
	smpsVcFeedback	$06
	smpsVcDetune	$07, $07, $07, $03
	smpsVcCoarseFreq	$05, $01, $05, $01
	smpsVcRateScale	$03, $02, $01, $02
	smpsVcAttackRate	$18, $16, $18, $14
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$01, $03, $1B, $08
	smpsVcDecayRate2	$0F, $03, $02, $03
	smpsVcDecayLevel	$01, $01, $04, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$34, $10, $29, $00

	; Patch $01
	; $3A
	; $32, $11, $72, $11,	$1F, $1F, $9F, $1F
	; $03, $0A, $03, $0A,	$02, $02, $02, $02
	; $AF, $7F, $AF, $7F,	$1E, $00, $28, $80
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$03, $07, $01, $01
	smpsVcCoarseFreq	$02, $02, $01, $01
	smpsVcRateScale	$00, $02, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$03, $03, $0A, $0A
	smpsVcDecayRate2	$0A, $0A, $07, $07
	smpsVcDecayLevel	$02, $02, $02, $02
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$1E, $28, $00, $00

	; Patch $02
	; $3A
	; $11, $15, $01, $11,	$59, $59, $5C, $4E
	; $0A, $0B, $0D, $04,	$00, $00, $00, $00
	; $1F, $5F, $2F, $0F,	$1A, $0E, $2E, $80
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$01, $00, $01, $01
	smpsVcCoarseFreq	$01, $01, $05, $01
	smpsVcRateScale	$01, $01, $01, $01
	smpsVcAttackRate	$19, $1C, $19, $0E
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0A, $0D, $0B, $04
	smpsVcDecayRate2	$01, $02, $05, $00
	smpsVcDecayLevel	$00, $00, $00, $00
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$1A, $2E, $0E, $00

	; Patch $03
	; $06
	; $01, $33, $72, $31,	$0A, $8C, $4C, $52
	; $00, $00, $00, $00,	$01, $00, $01, $00
	; $0F, $0F, $2F, $0F,	$4D, $87, $80, $91
	smpsVcAlgorithm	$06
	smpsVcFeedback	$00
	smpsVcDetune	$00, $07, $03, $03
	smpsVcCoarseFreq	$01, $02, $03, $01
	smpsVcRateScale	$00, $01, $02, $01
	smpsVcAttackRate	$0A, $0C, $0C, $12
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$00, $00, $00, $00
	smpsVcDecayRate2	$00, $02, $00, $00
	smpsVcDecayLevel	$01, $01, $00, $00
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$4D, $00, $07, $11

	; Patch $04
	; $3A
	; $01, $02, $01, $01,	$10, $0E, $14, $10
	; $0C, $0E, $0E, $0E,	$00, $00, $00, $00
	; $0F, $FF, $7F, $1F,	$1C, $28, $31, $80
	smpsVcAlgorithm	$02
	smpsVcFeedback	$07
	smpsVcDetune	$00, $00, $00, $00
	smpsVcCoarseFreq	$01, $01, $02, $01
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$10, $14, $0E, $10
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$0C, $0E, $0E, $0E
	smpsVcDecayRate2	$00, $07, $0F, $01
	smpsVcDecayLevel	$00, $00, $00, $00
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$1C, $31, $28, $00

	; Patch $05
	; $39
	; $02, $01, $02, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	smpsVcAlgorithm	$01
	smpsVcFeedback	$07
	smpsVcDetune	$00, $00, $00, $00
	smpsVcCoarseFreq	$02, $02, $01, $01
	smpsVcRateScale	$00, $00, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod	$00, $00, $00, $00
	smpsVcDecayRate1	$00, $00, $00, $00
	smpsVcDecayRate2	$00, $00, $00, $00
	smpsVcDecayLevel	$00, $00, $00, $00
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$1B, $28, $32, $00
