GSX_Intro_Header:
	sHeaderInit						; Z80 offset is $8A84
	sHeaderPatch	GSX_Intro_Patches
	sHeaderCh	$07, $02
	sHeaderTempo	$02, $33
	sHeaderDAC	GSX_Intro_DAC
	sHeaderFM	GSX_Intro_FM1, $00, $23
	sHeaderFM	GSX_Intro_FM2, $00, $14
	sHeaderFM	GSX_Intro_FM3, $00, $19
	sHeaderFM	GSX_Intro_FM4, $00, $16
	sHeaderFM	GSX_Intro_FM5, $00, $08
	sHeaderFM	GSX_Intro_FM6, $00, $16
	sHeaderPSG	GSX_Intro_PSG1, $0C, $00, $00, $2D
	sHeaderPSG	GSX_Intro_PSG2, $0C, $05, $00, $28

GSX_Intro_FM1:
	ssDetune	$04
	dc.b nRst, $7F, nRst, nRst, $22
	ssDetune	$00
	sPatFM		$02
	dc.b nBb1, $48, $48, $48, $47
	sPatFM		$04
	saVolFM		$EF

GSX_Intro_Loop1:
	dc.b $05, nG2, $04, nRst, $05, $04, nRst, $05
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05, $04, nG2
	dc.b $05, nRst, $04, nBb1, $05, nG2, $04, nRst
	dc.b $05, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b nRst, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	sLoop		$00, $02, GSX_Intro_Loop1
	dc.b $05, nG2, $04, nRst, $05, $04, nRst, $05
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05, $04, nG2
	dc.b $05, nRst, $04, nBb1, $05, nG2, $04, nRst
	dc.b $05, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b nRst, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b $04, nG2, $05, nBb1, $04, $04, nRst, $05
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05, $04, nG2
	dc.b $05, nBb1, $04, $05, nRst, $04, $05, nG2
	dc.b $04, nRst, $05, nBb1, $04, nG2, $05, nRst
	dc.b $04, $05, nRst, $04, nBb1, $05, nG2, $04
	dc.b nRst, $05, nBb1, $04, nG2, $05, nBb1, $04
	dc.b $05, nG2, $04, nBb1, $05, $04, nRst, $05
	saVolFM		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	saVolFM		$03
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	saVolFM		$02
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	saVolFM		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05
	saVolFM		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	saVolFM		$02
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	saVolFM		$03
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	saVolFM		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04
	sStop

GSX_Intro_FM2:
	sPatFM		$00
	dc.b nBb0, $7F, sHold, $7F, sHold, $7F, sHold, $33
	dc.b nRst, $7F, nRst, $10, $7F, sHold, $7F, sHold
	dc.b $7F, sHold, $33
	sStop

GSX_Intro_FM3:
	ssDetune	$02
	sPatFM		$00
	dc.b nEb1, $7F, sHold, $11, nD1, $48, nEb1, nD1
	dc.b $7F, sHold, $11, nRst, $7F, nRst, $10, nEb1
	dc.b $7F, sHold, $11, nD1, $48, nEb1, nD1, $7F
	dc.b sHold, $11
	sStop

GSX_Intro_FM4:
	ssDetune	$07
	sPatFM		$00
	dc.b nG0, $7F, sHold, $7F, sHold, $7F, sHold, $33
	dc.b nRst, $7F, nRst, $10, $7F, sHold, $7F, sHold
	dc.b $7F, sHold, $33
	sStop

GSX_Intro_FM5:
	ssDetune	$04
	dc.b nRst, $7F, nRst, nRst, $22
	ssDetune	$00
	sPatFM		$03
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nBb1, $05, $04
	dc.b nG2, $05, nBb1, $04, $05, nRst, $04, $05
	dc.b nG2, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b nRst, $04, $05, nRst, $04, nBb1, $05, nG2
	dc.b $04, nRst, $05, nBb1, $04, nG2, $05, nBb1
	dc.b $04, $05, nG2, $04, nBb1, $05, $04, nRst
	dc.b $05, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nBb1, $05, $04
	dc.b nG2, $05, nBb1, $04, $05, nRst, $04, $05
	dc.b nG2

GSX_Intro_Loop2:
	dc.b $04, nRst, $05, nBb1, $04, nG2, $05, nRst
	dc.b $04
	sLoop		$00, $02, GSX_Intro_Loop2

GSX_Intro_Loop3:
	dc.b nBb1, $05, nG2, $04, nBb1, $05, $04, nG2
	dc.b $05, nBb1, $04, $05, nRst, $04, $05, nG2
	dc.b $04, nRst, $05, $04, nRst, $05, nBb1, $04
	dc.b nG2, $05, nBb1, $04, $05, nG2, $04, nBb1
	dc.b $05, $04, nRst, $05, $04, nG2, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05, $04
	dc.b nRst, $05, nBb1, $04, nG2, $05, nRst, $04
	sLoop		$00, $03, GSX_Intro_Loop3
	dc.b nBb1, $05, nG2, $04, nBb1, $05, $04, nG2
	dc.b $05, nBb1, $04, $04, nRst, $05, $04, nG2
	dc.b $05, nRst, $04, $05, nRst, $04, nBb1, $05
	dc.b nG2, $04, nBb1, $05, $04, nG2, $05, nBb1
	dc.b $04, $05, nRst, $04, $05, nG2, $04, nRst
	dc.b $05, nBb1, $04, nG2, $05, nRst, $04, $05
	dc.b nRst, $04, nBb1, $05, nG2, $04, nRst, $05
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05
	saVolFM		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	saVolFM		$03
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	saVolFM		$02
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	saVolFM		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05
	saVolFM		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	saVolFM		$02
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	saVolFM		$03
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	saVolFM		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04
	sStop

GSX_Intro_FM6:
	sPatFM		$01
	dc.b nG1, $7F, sHold, $7F, sHold, $7F, sHold, $33
	dc.b nRst, $7F, nRst, $10, $7F, sHold, $7F, sHold
	dc.b $7F, sHold, $33
	sStop

GSX_Intro_PSG1:
	ssDetune	$65
	dc.b nRst, $7F, nRst, nRst, $22
	ssDetune	$62
	dc.b nC0, $04, nG0, $05, nRst, $04, $05, nRst
	dc.b $04, nC0, $05, nG0, $04, nC0, $05, $04
	dc.b nG0, $05, nC0, $04, $05, nRst, $04, $05
	dc.b nG0, $04, nRst, $05, nC0, $04, nG0, $05
	dc.b nRst, $04, $05, nRst, $04, nC0, $05, nG0
	dc.b $04, nRst, $05, nC0, $04, nG0, $05, nC0
	dc.b $04, $05, nG0, $04, nC0, $05, $04, nRst
	dc.b $05, $04, nG0, $05, nRst, $04, $05, nRst
	dc.b $04, nC0, $05, nG0, $04, nC0, $05, $04
	dc.b nG0, $05, nC0, $04, $05, nRst, $04, $05
	dc.b nG0

GSX_Intro_Loop4:
	dc.b $04, nRst, $05, nC0, $04, nG0, $05, nRst
	dc.b $04
	sLoop		$00, $02, GSX_Intro_Loop4

GSX_Intro_Loop5:
	dc.b nC0, $05, nG0, $04, nC0, $05, $04, nG0
	dc.b $05, nC0, $04, $05, nRst, $04, $05, nG0
	dc.b $04, nRst, $05, $04, nRst, $05, nC0, $04
	dc.b nG0, $05, nC0, $04, $05, nG0, $04, nC0
	dc.b $05, $04, nRst, $05, $04, nG0, $05, nRst
	dc.b $04, nC0, $05, nG0, $04, nRst, $05, $04
	dc.b nRst, $05, nC0, $04, nG0, $05, nRst, $04
	sLoop		$00, $02, GSX_Intro_Loop5
	dc.b nC0, $05, nG0, $04, nC0, $05, $04, nG0
	dc.b $05, nC0, $04, $05, nRst, $07
	ssDetune	$65
	sVolEnvPSG	$2E
	saVolPSG	$06
	dc.b $05, nG0, $04, nRst, $05, $04, nRst, $05
	dc.b nC0, $04, nG0, $05, nC0, $04, $05, nG0
	dc.b $04, nC0, $05, $04, nRst, $05, $04, nG0
	dc.b $05, nRst, $04, nC0, $05, nG0, $04, nRst
	dc.b $05, $04, nRst, $05, nC0, $04, nG0, $05
	dc.b nRst, $04, nC0, $05, nG0, $04, nC0, $05
	dc.b $04, nG0, $05, nC0, $04, $04, nRst, $05
	dc.b $04, nG0, $05, nRst, $04, $05, nRst, $04
	dc.b nC0, $05, nG0, $04, nC0, $05, $04, nG0
	dc.b $05, nC0, $04, $05, nRst, $04, $05, nG0
	dc.b $04, nRst, $05, nC0, $04, nG0, $05, nRst
	dc.b $04, $05, nRst, $04, nC0, $05, nG0, $04
	dc.b nRst, $05

GSX_Intro_Loop6:
	dc.b nC0, $04, nG0, $05, nC0, $04, $05, nG0
	dc.b $04, nC0, $05, $04, nRst, $05
	saVolPSG	$01
	dc.b $04, nG0, $05, nRst, $04, $05, nRst, $04
	dc.b nC0, $05, nG0, $04, nC0, $05
	saVolPSG	$01
	dc.b $04, nG0, $05, nC0, $04, $05, nRst, $04
	dc.b $05, nG0, $04, nRst, $05
	saVolPSG	$01
	dc.b nC0, $04, nG0, $05, nRst, $04, $05, nRst
	dc.b $04, nC0, $05, nG0, $04, nRst, $05
	saVolPSG	$01
	sLoop		$00, $02, GSX_Intro_Loop6
	dc.b nC0, $04, nG0, $05, nC0, $04, $05, nG0
	dc.b $04, nC0, $05, $04
	sStop

GSX_Intro_PSG2:
	ssDetune	$7F
	dc.b nC0, $7F, sHold, $7F, sHold, $7F, sHold, $33
	dc.b nRst, $7F, nRst, $10, $7F, sHold, $7F, sHold
	dc.b $7F, sHold, $33
	sStop

GSX_Intro_DAC:
	sStop

GSX_Intro_Patches:

	; Patch $00
	; $2C
	; $48, $48, $08, $08,	$01, $05, $01, $05
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $01, $02, $01, $02,	$18, $80, $18, $80
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$04, $00, $04, $00
	spMultiple	$08, $08, $08, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$01, $01, $05, $05
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$01, $01, $02, $02
	spTotalLv	$18, $18, $00, $00

	; Patch $01
	; $3C
	; $41, $41, $04, $01,	$04, $06, $04, $06
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $11, $12, $11, $12,	$1C, $80, $1F, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $00, $04, $00
	spMultiple	$01, $04, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$04, $04, $06, $06
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$01, $01, $02, $02
	spTotalLv	$1C, $1F, $00, $00

	; Patch $02
	; $3D
	; $71, $72, $72, $72,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$06, $04, $04, $04
	; $0B, $0B, $0B, $0B,	$1B, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$07, $07, $07, $07
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$06, $04, $04, $04
	spReleaseRt	$0B, $0B, $0B, $0B
	spTotalLv	$1B, $00, $00, $00

	; Patch $03
	; $3D
	; $00, $42, $02, $40,	$1F, $1F, $1F, $1F
	; $0A, $0A, $0A, $07,	$01, $01, $01, $01
	; $24, $24, $24, $24,	$1E, $A3, $A3, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $04, $04
	spMultiple	$00, $02, $02, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0A, $0A, $07
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$01, $01, $01, $01
	spReleaseRt	$04, $04, $04, $04
	spTotalLv	$1E, $23, $23, $00

	; Patch $04
	; $3B
	; $7D, $43, $70, $71,	$1B, $1F, $1F, $1F
	; $0E, $0C, $13, $0C,	$00, $00, $00, $06
	; $37, $37, $57, $08,	$1C, $2D, $11, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$07, $07, $04, $07
	spMultiple	$0D, $00, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1B, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $13, $0C, $0C
	spSustainLv	$03, $05, $03, $00
	spDecayRt	$00, $00, $00, $06
	spReleaseRt	$07, $07, $07, $08
	spTotalLv	$1C, $11, $2D, $00
