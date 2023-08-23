Target	EQU	$40000

FMPitch1	EQU	$00
FMPitch2	EQU	$0C
FMPitch3	EQU	$F4
FMVol1		EQU	$06
FMVol2		EQU	$10
FMVol3		EQU	$14
FMVol4		EQU	$0E

PSGPitch1	EQU	$F4
PSGPitch2	EQU	$00
PSGVol1		EQU	$06
PSGVol2		EQU	$08
PSGNull		EQU	$00
;!@ 
;PSGVoi1		EQU	$00
;PSGVoi2		EQU	$2F
PSGVoi1		EQU	$00
PSGVoi2		EQU	$08

PWMPitch	EQU	$00
PWMVol		EQU	$EE
	smpsHeaderVoice	HPZ_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $20	
	smpsHeaderFM	HPZ_FM1, Target, FMPitch1, FMVol1
	smpsHeaderFM	HPZ_FM2, Target, FMPitch2, FMVol2
	smpsHeaderFM	HPZ_FM3, Target, FMPitch1, FMVol3
	smpsHeaderFM	HPZ_FM4, Target, FMPitch1, FMVol4
	smpsHeaderFM	HPZ_FM5, Target, FMPitch3, FMVol3
	smpsHeaderFM	HPZ_NOP, Target, FMPitch1, FMVol1
	smpsHeaderPSG	HPZ_PSG1, Target, PSGPitch1, PSGVol1, PSGNull, PSGVoi1
	smpsHeaderPSG	HPZ_PSG2, Target, PSGPitch1, PSGVol2, PSGNull, PSGVoi2
	smpsHeaderPSG	HPZ_PSG3, Target, PSGPitch2, PSGVol2, PSGNull, PSGVoi2
	smpsHeaderPWM 	HPZ_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM 	HPZ_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM 	HPZ_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM 	HPZ_NOP, Target, PWMPitch, PWMVol

HPZ_FM5:
	smpsPan		panRight
	smpsModSet	$19, $01, $FE, $05
	smpsFMvoice		$03
	smpsAlterNote	$02
	smpsJump		HPZ_Loop3, Target

HPZ_FM4:
	smpsModSet	$0D, $01, $FD, $06
	smpsFMvoice		$00
	smpsAlterNote	$02
	dc.b nRst, $06
	smpsJump		HPZ_Jump3, Target

HPZ_PSG1:
	smpsModSet	$0D, $01, $01, $05
	smpsJump		HPZ_Jump3, Target

HPZ_PSG2:
	smpsModSet	$0D, $01, $FF, $05
	smpsAlterNote	$FF
	dc.b nRst, $06
	smpsJump		HPZ_Jump3, Target

HPZ_FM1:
	smpsModSet	$0D, $01, $03, $06
	smpsFMvoice		$00

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
	smpsLoop		$01, $02, HPZ_Loop1, Target
	dc.b smpsNoAttack, nB4, $0C, nF5, $24, $0C, nG5, nF5
	dc.b nE5, $24, nCs5, $18
	smpsJump		HPZ_Loop1, Target

HPZ_FM2:
	smpsFMvoice		$01

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
	smpsLoop		$00, $02, HPZ_Loop2, Target
	dc.b nD2, $06, nRst, $12, nA1, $0C, nBb1, $18
	dc.b $0C, $18, $0C, nC2, $18, $0C, nCs2, $18
	dc.b nA1, $0C, nD2, $06, nRst, $12, nA1, $0C
	smpsJump		HPZ_Jump1, Target

HPZ_FM3:
	smpsPan		panLeft
	smpsAlterPitch	$F4
	smpsModSet	$19, $01, $02, $05
	smpsFMvoice		$02

HPZ_Loop3:
	dc.b nD4, $0C, nA4, nF4

HPZ_Jump2:
	dc.b nC5, $24, smpsNoAttack, nC5, nB4, nE5, $18, nA4
	dc.b $0C, nC5, $24, smpsNoAttack, nC5, nB4, nD5, nRst
	dc.b $0C, nG4, nA4, nB4, $18, nA4, $0C, nRst
	dc.b nA4, nB4, nC5, nB4, nC5, nD5, $24, smpsNoAttack
	dc.b $18, nE5, $0C, nD5, $24
	smpsLoop		$00, $02, HPZ_Loop3, Target
	smpsAlterPitch	$0C
	dc.b smpsNoAttack, nD4, $24, nD4, nBb3, $0C, nD4, nA4
	dc.b nG4, $24
	smpsAlterPitch	$F4
	dc.b nE4, $0C, nA4, nF4
	smpsJump		HPZ_Jump2, Target

HPZ_PSG3:
	;!@
	;dc.b nRst, $24, $0A, $10
	dc.b nRst, $24
	;!@ smpsNoteFill        $10
	dc.b	$E8, $08

HPZ_Loop4:
	smpsAlterVol		$FE
	dc.b nF4, $06
	smpsAlterVol		$02
	dc.b nC5, nC5, nF4, nA4, nF4
	smpsAlterVol		$FE
	dc.b nB4
	smpsAlterVol		$02
	dc.b nF4, nC5, nF4, nB4, nF4
	smpsLoop		$01, $10, HPZ_Loop4, Target

HPZ_Loop5:
	dc.b nA5, $06, nF5, nE5, nD5
	smpsLoop		$01, $04, HPZ_Loop5, Target
	dc.b nA5, $06, nF5, nE5, nCs5, nA5, nG5, nE5
	dc.b nCs5
	smpsJump		HPZ_Loop4, Target

HPZ_Call1:
	dc.b pAKick, $12, pASnare, $06, pTomLow, $0C, pAKick, $0C
	dc.b pASnare, $12, pTomLow, $06
	smpsReturn

HPZ_PWM1:
	dc.b pASnare, $06, pTomHi, $0C, pTomMid, $06, pTomLow, $0C

HPZ_Loop6:
	smpsCall		HPZ_Call1, Target
	smpsLoop		$00, $07, HPZ_Loop6, Target
	dc.b pAKick, $12, pASnare, $06, pTomLow, $0C, pAKick, $06
	dc.b pTomHi, $0C, pTomMid, $06, pAKick, $0C

HPZ_Loop7:
	smpsCall		HPZ_Call1, Target
	smpsLoop		$00, $08, HPZ_Loop7, Target
	dc.b pAKick, $12, pASnare, $06, pAKick, $0C, pAKick, $0C
	dc.b pAKick, pASnare, pAKick, $12, pASnare, $06, pAKick, $0C
	smpsJump		HPZ_PWM1, Target
	
HPZ_NOP:
	smpsStop

HPZ_Patches:

	; Patch $00
	dc.b	$3B
	dc.b	$01, $02, $13, $02,	$5D, $5D, $5D, $4A
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$05, $05, $04, $0A,	$1E, $1E, $28, $89
	;smpsVcAlgorithm	$03
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $01, $00, $00
	;smpsVcCoarseFreq	$01, $03, $02, $02
	;smpsVcRateScale	$01, $01, $01, $01
	;smpsVcAttackRate	$1D, $1D, $1D, $0A
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $00, $00, $00
	;smpsVcDecayRate2	$00, $00, $00, $00
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$05, $04, $05, $0A
	;smpsVcTotalLevel	$1E, $28, $1E, $09

	; Patch $01
	dc.b	$3A
	dc.b	$22, $68, $71, $32,	$12, $16, $14, $0C
	dc.b	$0A, $06, $0A, $04,	$00, $00, $00, $00
	dc.b	$16, $26, $56, $06,	$1F, $22, $1C, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$02, $07, $06, $03
	;smpsVcCoarseFreq	$02, $01, $08, $02
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$12, $14, $16, $0C
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0A, $0A, $06, $04
	;smpsVcDecayRate2	$01, $05, $02, $00
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$06, $06, $06, $06
	;smpsVcTotalLevel	$1F, $1C, $22, $00

	; Patch $02
	dc.b	$3B
	dc.b	$32, $32, $32, $72,	$4F, $18, $1A, $11
	dc.b	$0E, $16, $0B, $00,	$04, $00, $00, $00
	dc.b	$50, $10, $00, $0A,	$1B, $1F, $1E, $80
	;smpsVcAlgorithm	$03
	;smpsVcFeedback	$07
	;smpsVcDetune	$03, $03, $03, $07
	;smpsVcCoarseFreq	$02, $02, $02, $02
	;smpsVcRateScale	$01, $00, $00, $00
	;smpsVcAttackRate	$0F, $1A, $18, $11
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0E, $0B, $16, $00
	;smpsVcDecayRate2	$05, $00, $01, $00
	;smpsVcDecayLevel	$04, $00, $00, $00
	;smpsVcReleaseRate	$00, $00, $00, $0A
	;smpsVcTotalLevel	$1B, $1E, $1F, $00

	; Patch $03
	dc.b	$38
	dc.b	$32, $52, $32, $72,	$17, $18, $1A, $11
	dc.b	$17, $16, $0B, $00,	$00, $00, $00, $00
	dc.b	$10, $10, $00, $0A,	$20, $11, $21, $80
	;smpsVcAlgorithm	$00
	;smpsVcFeedback	$07
	;smpsVcDetune	$03, $03, $05, $07
	;smpsVcCoarseFreq	$02, $02, $02, $02
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$17, $1A, $18, $11
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$17, $0B, $16, $00
	;smpsVcDecayRate2	$01, $00, $01, $00
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$00, $00, $00, $0A
	;smpsVcTotalLevel	$20, $21, $11, $00
