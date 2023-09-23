SmpsModOff	EQU	$F4
SmpsModF1	EQU	$08010504
SmpsModF2	EQU	$1001FFFF
SmpsModF3	EQU	$1001FEFF
SmpsModF4	EQU	$000110FF
SmpsModP1	EQU	$0602FEFF
SmpsModP2	EQU	$060101FF
SmpsModP3	EQU	$0001FAFF
SmpsModP4	EQU	$0001FDFF
SmpsModP5	EQU	$0001FCFF
SmpsModP6	EQU	$000101FF

FMPitch	EQU	$00
FMVol1	EQU	$16
FMVol2	EQU	$08
FMVol3	EQU	$10
FMVol4	EQU	$06

PSGPitch1	EQU	$E8
PSGPitch2	EQU	$00
PSGVol1		EQU	$06
PSGVol2		EQU	$02
PSGVoi1		EQU	$00
PSGVoi2		EQU	$01
PWMPitch	EQU	$00
PWMVol		EQU	$99

	smpsHeaderVoice	S2DEZ_Patches
	smpsHeaderChan	$06, $03
	;!@ smpsHeaderTempoC	$01, $60	
	smpsHeaderTempo	$01, $97
	smpsHeaderDAC	S2DEZ_NOP
	smpsHeaderFM	S2DEZ_FM1, FMPitch, FMVol1
	smpsHeaderFM	S2DEZ_NOP, FMPitch, FMVol2
	smpsHeaderFM	S2DEZ_NOP, FMPitch, FMVol3
	smpsHeaderFM	S2DEZ_NOP, FMPitch, FMVol3
	smpsHeaderFM	S2DEZ_NOP, FMPitch, FMVol4
	smpsHeaderPSG	S2DEZ_PSG1, PSGPitch1, PSGVol1, PSGVoi1
	smpsHeaderPSG	S2DEZ_NOP, PSGPitch1, PSGVol1, PSGVoi1
	smpsHeaderPSG	S2DEZ_NOP, PSGPitch2, PSGVol2, PSGVoi2

S2DEZ_FM1:
	smpsModSet2	SmpsModF1
	dc.b	SmpsModOff
	smpsModSet2	SmpsModF2
	dc.b	SmpsModOff
	smpsModSet2	SmpsModF3
	dc.b	SmpsModOff
	smpsModSet2	SmpsModF4
	dc.b	SmpsModOff
	smpsStop

S2DEZ_PSG1:
	smpsModSet2	SmpsModP1
	dc.b	SmpsModOff
	smpsModSet2	SmpsModP2
	dc.b	SmpsModOff
	smpsModSet2	SmpsModP3
	dc.b	SmpsModOff
	smpsModSet2	SmpsModP4
	dc.b	SmpsModOff
	smpsModSet2	SmpsModP5
	dc.b	SmpsModOff
	smpsModSet2	SmpsModP6
	dc.b	SmpsModOff
	smpsStop
		
S2DEZ_NOP:
	smpsStop

S2DEZ_Patches:
	; Patch $00
	dc.b	$30
	dc.b	$75, $75, $71, $31,	$D8, $58, $96, $94
	dc.b	$01, $1B, $03, $08,	$01, $04, $01, $01
	dc.b	$FF, $2F, $3F, $3F,	$34, $29, $10, $80
	;smpsVcAlgorithm	$00
	;smpsVcFeedback	$06
	;smpsVcDetune	$07, $07, $07, $03
	;smpsVcCoarseFreq	$05, $01, $05, $01
	;smpsVcRateScale	$03, $02, $01, $02
	;smpsVcAttackRate	$18, $16, $18, $14
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$01, $03, $1B, $08
	;smpsVcDecayRate2	$0F, $03, $02, $03
	;smpsVcDecayLevel	$01, $01, $04, $01
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$34, $10, $29, $00

	; Patch $01
	dc.b	$3A
	dc.b	$32, $11, $72, $11,	$1F, $1F, $9F, $1F
	dc.b	$03, $0A, $03, $0A,	$02, $02, $02, $02
	dc.b	$AF, $7F, $AF, $7F,	$1E, $00, $28, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$03, $07, $01, $01
	;smpsVcCoarseFreq	$02, $02, $01, $01
	;smpsVcRateScale	$00, $02, $00, $00
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$03, $03, $0A, $0A
	;smpsVcDecayRate2	$0A, $0A, $07, $07
	;smpsVcDecayLevel	$02, $02, $02, $02
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$1E, $28, $00, $00

	; Patch $02
	dc.b	$3A
	dc.b	$11, $15, $01, $11,	$59, $59, $5C, $4E
	dc.b	$0A, $0B, $0D, $04,	$00, $00, $00, $00
	dc.b	$1F, $5F, $2F, $0F,	$1A, $0E, $2E, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$01, $00, $01, $01
	;smpsVcCoarseFreq	$01, $01, $05, $01
	;smpsVcRateScale	$01, $01, $01, $01
	;smpsVcAttackRate	$19, $1C, $19, $0E
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0A, $0D, $0B, $04
	;smpsVcDecayRate2	$01, $02, $05, $00
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$1A, $2E, $0E, $00

	; Patch $03
	dc.b	$06
	dc.b	$01, $33, $72, $31,	$0A, $8C, $4C, $52
	dc.b	$00, $00, $00, $00,	$01, $00, $01, $00
	dc.b	$0F, $0F, $2F, $0F,	$4D, $87, $80, $91
	;smpsVcAlgorithm	$06
	;smpsVcFeedback	$00
	;smpsVcDetune	$00, $07, $03, $03
	;smpsVcCoarseFreq	$01, $02, $03, $01
	;smpsVcRateScale	$00, $01, $02, $01
	;smpsVcAttackRate	$0A, $0C, $0C, $12
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $00, $00, $00
	;smpsVcDecayRate2	$00, $02, $00, $00
	;smpsVcDecayLevel	$01, $01, $00, $00
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$4D, $00, $07, $11

	; Patch $04
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$10, $0E, $14, $10
	dc.b	$0C, $0E, $0E, $0E,	$00, $00, $00, $00
	dc.b	$0F, $FF, $7F, $1F,	$1C, $28, $31, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$01, $01, $02, $01
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$10, $14, $0E, $10
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0C, $0E, $0E, $0E
	;smpsVcDecayRate2	$00, $07, $0F, $01
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$1C, $31, $28, $00

	; Patch $05
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	;smpsVcAlgorithm	$01
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$02, $02, $01, $01
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $00, $00, $00
	;smpsVcDecayRate2	$00, $00, $00, $00
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$1B, $28, $32, $00
