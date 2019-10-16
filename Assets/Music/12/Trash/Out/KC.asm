Target	EQU	$40000

Maniax_Header:
	smpsHeaderVoice	Maniax_Patches, Target
	smpsHeaderChan	6,3
	smpsHeaderTempo	$01, $20
	smpsHeaderFM	Maniax_FM1, Target, $F4, $11
	smpsHeaderFM	Maniax_FM2, Target, $F4, $07
	smpsHeaderFM	Maniax_FM3, Target, $E8, $0F
	smpsHeaderFM	Maniax_FM4, Target, $E8, $0F
	smpsHeaderFM	Maniax_FM5, Target, $F4, $11
	smpsHeaderFM	Maniax_PSG1, Target, $F4, $11
	smpsHeaderPSG	Maniax_PSG1, Target, $D0, $05, $00, $05
	smpsHeaderPSG	Maniax_PSG1, Target, $DC, $05, $00, $05
	smpsHeaderPSG	Maniax_PSG2, Target, $00, $03, $00, $04
	smpsHeaderPWM	Maniax_PWM1, Target, $00, $AA
	smpsHeaderPWM	Maniax_PSG1, Target, $00, $AA
	smpsHeaderPWM	Maniax_PSG1, Target, $00, $AA
	smpsHeaderPWM	Maniax_PSG1, Target, $00, $AA

Maniax_FM5:
	smpsAlterNote	$03

Maniax_FM1:
	smpsFMvoice		$00
	dc.b nRst, $30

Maniax_Jump1:
	dc.b nRst, $0C, nCs6, $15, nRst, $03, nCs6, $06
	dc.b nRst, nD6, $0F, nRst, $03, nB5, $18, nRst
	dc.b $06, nCs6, $06, nRst, nCs6, nRst, nCs6, nRst
	dc.b nA5, nRst, nG5, $0F, nRst, $03, nB5, $18
	dc.b nRst, $06, nRst, $0C, nCs6, $15, nRst, $03
	dc.b nCs6, $06, nRst, nD6, $0F, nRst, $03, nB5
	dc.b $18, nRst, $06, nCs6, $06, nRst, nCs6, nRst
	dc.b nCs6, nRst, nA5, nRst, nG5, $0F, nRst, $03
	dc.b nB5, $18, nRst, $06
	smpsAlterVol		$FD
	dc.b nRst, $30, nRst, nA5, $04, nB5, nCs6, nD6
	dc.b nE6, nFs6, nB5, nCs6, nEb6, nE6, nFs6, nAb6
	dc.b nCs6, nEb6, nF6, nFs6, nAb6, nBb6, nF6, nFs6
	dc.b nAb6, nBb6, nC7, nCs7
	smpsAlterVol		$03
	smpsJump		Maniax_Jump1,Target

Maniax_FM2:
	smpsE2		$01
	smpsFMvoice		$01
	dc.b nRst, $30

Maniax_Loop1:
	dc.b nA3, $06, nRst, nA3, nRst, nE3, nRst, nE3
	dc.b nRst, nG3, $12, nFs3, $0C, nG3, $06, nFs3
	dc.b $0C, nA3, $06, nRst, nA3, nRst, nE3, nRst
	dc.b nE3, nRst, nD4, $12, nCs4, $0C, nD4, $06
	dc.b nCs4, $0C
	smpsLoop		$00, $02, Maniax_Loop1,Target

Maniax_Loop2:
	dc.b nB2, $06, nG2, $12, nA2, $06, nRst, nB2
	dc.b nRst
	smpsLoop		$00, $02, Maniax_Loop2,Target
	dc.b nA2, $0C, nB2, nCs3, nEb3, nB2, $06, nCs3
	dc.b nEb3, nF3, nCs3, nEb3, nF3, nFs3
	smpsE2		$01
	smpsJump		Maniax_Loop1,Target

Maniax_FM3:
	smpsFMvoice		$00
	dc.b nRst, $30

Maniax_Loop3:
	dc.b nE6, $06, nRst, nE6, nRst, nCs6, nRst, nCs6
	dc.b nRst, nD6, $12, nD6, $1E, nE6, $06, nRst
	dc.b nE6, nRst, nCs6, nRst, nCs6, nRst, nG6, $12
	dc.b nG6, $1E
	smpsLoop		$00, $02, Maniax_Loop3,Target

Maniax_Loop4:
	dc.b nRst, $06, nG5, $12, nA5, $06, nRst, $12
	smpsLoop		$00, $04, Maniax_Loop4,Target
	smpsJump		Maniax_Loop3,Target

Maniax_FM4:
	smpsFMvoice		$00
	dc.b nRst, $30

Maniax_Loop5:
	dc.b nCs6, $06, nRst, nCs6, nRst, nA5, nRst, nA5
	dc.b nRst, nB5, $12, nB5, $1E, nCs6, $06, nRst
	dc.b nCs6, nRst, nA5, nRst, nA5, nRst, nD6, $12
	dc.b nD6, $1E
	smpsLoop		$00, $02, Maniax_Loop5,Target

Maniax_Loop6:
	dc.b nRst, $06, nB5, $12, nCs6, $06, nRst, $12
	smpsLoop		$00, $04, Maniax_Loop6,Target
	smpsJump		Maniax_Loop5,Target

Maniax_PSG1:
	smpsStop

Maniax_PSG2:
	smpsPSGform	$E7
	dc.b nRst, $30

Maniax_Jump2:
	smpsNoteFill	$03
	dc.b nA5, $0C
	smpsNoteFill	$0C
	dc.b $0C
	smpsNoteFill	$03
	dc.b $0C
	smpsNoteFill	$0C
	dc.b $0C
	smpsJump		Maniax_Jump2,Target

Maniax_PWM1:
	dc.b dSnare, $06, dSnare, dSnare, dSnare, dSnare, $02, dSnare
	dc.b $04, dKick, $12

Maniax_Loop7:
	dc.b dKick, $0C, dSnare, dKick, dSnare, dKick, $0C, dSnare
	dc.b dKick, dSnare, dKick, $0C, dSnare, dKick, dSnare, dKick
	dc.b $0C, dSnare, dKick, $04, nRst, dSnare, dSnare, $0C
	smpsLoop		$00, $02, Maniax_Loop7,Target
	dc.b dKick, $06, dSnare, $12, dKick, $0C, dSnare, dSnare
	dc.b $06, dKick, $12, dKick, $0C, dSnare, dSnare, $06
	dc.b dKick, $12, dKick, $0C, dSnare, dSnare, $04, dSnare
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	dc.b dSnare, dSnare
	smpsJump		Maniax_Loop7,Target
	dc.b $F2	; Unused

Maniax_Patches:
	dc.b	$3A, $01, $07, $01, $01, $8E, $8E, $8D, $53, $0E, $0E, $0E, $03, $00, $00, $00, $00, $1F, $FF, $1F, $0F, $18, $28, $27, $80
	dc.b	$3A, $61, $3C, $14, $31, $9C, $DB, $9C, $DA, $04, $09, $04, $03, $03, $01, $03, $00, $1F, $0F, $0F, $AF, $21, $47, $31, $80
	even
	; Patch $00
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
	;spAlgorithm	$02
	;spFeedback	$07
	;spDetune	$00, $00, $00, $00
	;spMultiple	$01, $01, $07, $01
	;spRateScale	$02, $02, $02, $01
	;spAttackRt	$0E, $0D, $0E, $13
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$0E, $0E, $0E, $03
	;spSustainLv	$01, $01, $0F, $00
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$18, $27, $28, $00

	; Patch $01
	; $3A
	; $61, $3C, $14, $31,	$9C, $DB, $9C, $DA
	; $04, $09, $04, $03,	$03, $01, $03, $00
	; $1F, $0F, $0F, $AF,	$21, $47, $31, $80
	;spAlgorithm	$02
	;spFeedback	$07
	;spDetune	$06, $01, $03, $03
	;spMultiple	$01, $04, $0C, $01
	;spRateScale	$02, $02, $03, $03
	;spAttackRt	$1C, $1C, $1B, $1A
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$04, $04, $09, $03
	;spSustainLv	$01, $00, $00, $0A
	;spDecayRt	$03, $03, $01, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$21, $31, $47, $00