
Target	EQU	$4DD76
	smpsHeaderVoice	Maniax_Patches,Target
	smpsHeaderChan	6,3
	smpsHeaderTempoC	$02, $03	
	;smpsHeaderTempo	$02, $55
	smpsHeaderFM	Maniax_FM1, Target, $F4, $0A
	smpsHeaderFM	Maniax_FM2, Target, $DC, $0A
	smpsHeaderFM	Maniax_FM3, Target, $F4, $15
	smpsHeaderFM	Maniax_FM4, Target, $F4, $15
	smpsHeaderFM	Maniax_FM5, Target, $F4, $14
	smpsHeaderFM	Maniax_FM6, Target, $00, $00
	smpsHeaderPSG	Maniax_PSG1, Target, $D0, $05, $00, $05
	smpsHeaderPSG	Maniax_PSG2, Target, $DC, $07, $00, $05
	smpsHeaderPSG	Maniax_PSG3, Target, $DC, $00, $00, $04
	smpsHeaderPWM	Maniax_PWM1, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM2, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM3, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM4, Target, $00, $AA

Maniax_FM1:
	smpsFMvoice		$00

Maniax_PSG1:
	dc.b nRst, $06, nG4, nA4, nB4, nC5, nD5, nE5
	dc.b nF5, nG5, $0C, nB6, $02, smpsNoAttack, nC7, $01
	dc.b nB6, $03, nG6
	smpsModSet	$0C, $01, $08, $04
	dc.b nA6, $33
	smpsStop

Maniax_FM2:
	smpsFMvoice		$01
	smpsNoteFill	$0B
	smpsE2		$01
	dc.b nG5, $03, nG5, nG4, $06, nG4, nG5, $03
	dc.b nG5, nG4, $06, nG4, nG5, $03, nG5, nRst
	dc.b $06, nRst, $0C, nG4, $09
	smpsNoteFill	$00
	dc.b nA4, $33
	smpsE2		$01
	smpsStop

Maniax_FM3:
	smpsPan		panLeft
	smpsFMvoice		$02
	smpsNoteFill	$06
	dc.b nC6, $03, nC6, nRst, $0C, nC6, $03, nC6
	dc.b nRst, $0C, nC6, $03, nC6, nRst, $12
	smpsNoteFill	$00
	dc.b nC6, $09, nD6, $33
	smpsStop

Maniax_FM4:
	smpsPan		panRight
	smpsFMvoice		$02
	smpsNoteFill	$06
	dc.b nA5, $03, nA5, nRst, $0C, nA5, $03, nA5
	dc.b nRst, $0C, nA5, $03, nA5, nRst, $12
	smpsNoteFill	$00
	dc.b nA5, $09, nB5, $33
	smpsStop

Maniax_FM5:
	smpsFMvoice		$03
	smpsModSet	$0D, $01, $02, $05

Maniax_PSG2:
	dc.b nG5, $06, nC6, nB5, nG5, nC6, nB5, nG5
	dc.b nC6, nB5, $0C, nC6, $09, nB5, $33

Maniax_FM6:
Maniax_PSG3:
	smpsStop

Maniax_PWM1:
	dc.b dSnare, $03, dSnare, dKick, $06, dKick, dSnare, $03
	dc.b dSnare, dKick, $06, dKick, dSnare, $03, dSnare, dHiTimpani
	dc.b dHiTimpani, dFloorTimpani, dFloorTimpani, $03, dFloorTimpani, dFloorTimpani, dSnare, $09
	dc.b $33
	smpsStop
	
Maniax_PWM2:
Maniax_PWM3:
Maniax_PWM4:
	smpsStop

Maniax_Patches:
	dc.b	$3D, $01, $02, $00, $01, $1F, $0E, $0E, $0E, $07, $1F, $1F, $1F, $00, $00, $00, $00, $1F, $0F, $0F, $0F, $17, $8D, $8C, $8C
	dc.b	$3A, $61, $3C, $14, $31, $9C, $DB, $9C, $DA, $04, $09, $04, $03, $03, $01, $03, $00, $1F, $0F, $0F, $0F, $21, $47, $31, $80
	dc.b	$3D, $01, $01, $01, $01, $8E, $52, $14, $4C, $08, $08, $0E, $03, $00, $00, $00, $00, $1F, $1F, $1F, $1F, $1B, $80, $80, $9B
	dc.b	$3D, $01, $01, $01, $01, $8E, $52, $14, $4C, $08, $08, $0E, $03, $00, $00, $00, $00, $1F, $1F, $1F, $1F, $1B, $80, $80, $9B
	dc.b	$3D, $01, $02, $02, $02, $10, $50, $50, $50, $07, $08, $08, $08, $01, $00, $00, $00, $2F, $1F, $1F, $1F, $1C, $82, $82, $82
	even
	; Patch $00
	; $3D
	; $01, $02, $00, $01,	$1F, $0E, $0E, $0E
	; $07, $1F, $1F, $1F,	$00, $00, $00, $00
	; $1F, $0F, $0F, $0F,	$17, $8D, $8C, $8C
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $00, $02, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $0E, $0E, $0E
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$07, $1F, $1F, $1F
	;spSustainLv	$01, $00, $00, $00
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$17, $0C, $0D, $0C

	; Patch $01
	; $3A
	; $61, $3C, $14, $31,	$9C, $DB, $9C, $DA
	; $04, $09, $04, $03,	$03, $01, $03, $00
	; $1F, $0F, $0F, $0F,	$21, $47, $31, $80
	;spAlgorithm	$02
	;spFeedback	$07
	;spDetune	$06, $01, $03, $03
	;spMultiple	$01, $04, $0C, $01
	;spRateScale	$02, $02, $03, $03
	;spAttackRt	$1C, $1C, $1B, $1A
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$04, $04, $09, $03
	;spSustainLv	$01, $00, $00, $00
	;spDecayRt	$03, $03, $01, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$21, $31, $47, $00

	; Patch $02
	; $3D
	; $01, $01, $01, $01,	$8E, $52, $14, $4C
	; $08, $08, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1B, $80, $80, $9B
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $01, $01, $01
	;spRateScale	$02, $00, $01, $01
	;spAttackRt	$0E, $14, $12, $0C
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$08, $0E, $08, $03
	;spSustainLv	$01, $01, $01, $01
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$1B, $00, $00, $1B

	; Patch $03
	; $3D
	; $01, $01, $01, $01,	$8E, $52, $14, $4C
	; $08, $08, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1B, $80, $80, $9B
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $01, $01, $01
	;spRateScale	$02, $00, $01, $01
	;spAttackRt	$0E, $14, $12, $0C
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$08, $0E, $08, $03
	;spSustainLv	$01, $01, $01, $01
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$1B, $00, $00, $1B

	; Patch $04
	; $3D
	; $01, $02, $02, $02,	$10, $50, $50, $50
	; $07, $08, $08, $08,	$01, $00, $00, $00
	; $2F, $1F, $1F, $1F,	$1C, $82, $82, $82
	;spAlgorithm	$05
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $02, $02, $02
	;spRateScale	$00, $01, $01, $01
	;spAttackRt	$10, $10, $10, $10
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$07, $08, $08, $08
	;spSustainLv	$02, $01, $01, $01
	;spDecayRt	$01, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$1C, $02, $02, $02
