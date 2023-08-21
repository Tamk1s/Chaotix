Target	EQU	$46B1E

FMPitch	EQU	$00
;!@
FMVol1	EQU	$23
FMVol2	EQU	$14
FMVol3	EQU	$19
FMVol4	EQU	$16
FMVol5	EQU	$08
FMVol6	EQU	$16
;FMVol1	EQU	$23
;FMVol2	EQU	$14
;FMVol3	EQU	$14
;FMVol4	EQU	$14
;FMVol5	EQU	$08
;FMVol6	EQU	$14

PSGVol1	EQU	$02
PSGVol2	EQU	$02
PSGNull	EQU	$00
;!@
;PSGVoi1	EQU	$2D
;PSGVoi2	EQU	$28
PSGVoi1	EQU	$06
PSGVoi2	EQU	$01
PSGPitch	EQU	PSGDelta

PWMVol	EQU	$00
PWMPitch	EQU	$00

	smpsHeaderVoice	GSX_Intro_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $33
	smpsHeaderFM	GSX_Intro_FM1, Target, FMPitch, FMVol1
	smpsHeaderFM	GSX_Intro_FM2, Target, FMPitch, FMVol2
	smpsHeaderFM	GSX_Intro_FM3, Target, FMPitch, FMVol3
	smpsHeaderFM	GSX_Intro_FM4, Target, FMPitch, FMVol4
	smpsHeaderFM	GSX_Intro_FM5, Target, FMPitch, FMVol5
	smpsHeaderFM	GSX_Intro_FM6, Target, FMPitch, FMVol6
	smpsHeaderPSG	GSX_Intro_PSG1, Target, PSGPitch, PSGVol1, PSGNull, PSGVoi1
	smpsHeaderPSG	GSX_Intro_NOP, Target, PSGPitch, PSGVol2, PSGNull, PSGVoi2
	smpsHeaderPSG	GSX_Intro_NOP, Target, PSGPitch, PSGVol2, PSGNull, PSGNull
	smpsHeaderPWM	GSX_Intro_PWM, Target, PWMPitch, PWMVol
	smpsHeaderPWM	GSX_Intro_PWM, Target, PWMPitch, PWMVol
	smpsHeaderPWM	GSX_Intro_PWM, Target, PWMPitch, PWMVol
	smpsHeaderPWM	GSX_Intro_PWM, Target, PWMPitch, PWMVol

GSX_Intro_FM1:
	smpsAlterNote	$04
	dc.b nRst, $7F, nRst, nRst, $22
	smpsAlterNote	$00
	smpsFMvoice		$02
	dc.b nBb1, $48, $48, $48, $47
	smpsFMvoice		$04
	smpsAlterVol		$EF

GSX_Intro_Loop1:
	dc.b $05, nG2, $04, nRst, $05, $04, nRst, $05
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05, $04, nG2
	dc.b $05, nRst, $04, nBb1, $05, nG2, $04, nRst
	dc.b $05, $04, nRst, $05, nBb1, $04, nG2, $05
	dc.b nRst, $04, nBb1, $05, nG2, $04, nBb1, $05
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	smpsLoop		$00, $02, GSX_Intro_Loop1, Target
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
	smpsAlterVol		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	smpsAlterVol		$03
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	smpsAlterVol		$02
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	smpsAlterVol		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05
	smpsAlterVol		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	smpsAlterVol		$02
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	smpsAlterVol		$03
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	smpsAlterVol		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04
	smpsStop

GSX_Intro_FM2:
	smpsFMvoice		$00
	dc.b nBb0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	dc.b nRst, $7F, nRst, $10, $7F, smpsNoAttack, $7F, smpsNoAttack
	dc.b $7F, smpsNoAttack, $33
	smpsStop

GSX_Intro_FM3:
	;!@
	smpsAlterNote	$02
	;smpsAlterNote	$00
	smpsFMvoice		$00
	dc.b nEb1, $7F, smpsNoAttack, $11, nD1, $48, nEb1, nD1
	dc.b $7F, smpsNoAttack, $11, nRst, $7F, nRst, $10, nEb1
	dc.b $7F, smpsNoAttack, $11, nD1, $48, nEb1, nD1, $7F
	dc.b smpsNoAttack, $11
	smpsStop

GSX_Intro_FM4:
	;!@
	smpsAlterNote	$07
	;smpsAlterNote	$00
	smpsFMvoice		$00
	dc.b nG0, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	dc.b nRst, $7F, nRst, $10, $7F, smpsNoAttack, $7F, smpsNoAttack
	dc.b $7F, smpsNoAttack, $33
	smpsStop

GSX_Intro_FM5:
	smpsAlterNote	$04
	dc.b nRst, $7F, nRst, nRst, $22
	smpsAlterNote	$00
	smpsFMvoice		$03
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
	smpsLoop		$00, $02, GSX_Intro_Loop2, Target

GSX_Intro_Loop3:
	dc.b nBb1, $05, nG2, $04, nBb1, $05, $04, nG2
	dc.b $05, nBb1, $04, $05, nRst, $04, $05, nG2
	dc.b $04, nRst, $05, $04, nRst, $05, nBb1, $04
	dc.b nG2, $05, nBb1, $04, $05, nG2, $04, nBb1
	dc.b $05, $04, nRst, $05, $04, nG2, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05, $04
	dc.b nRst, $05, nBb1, $04, nG2, $05, nRst, $04
	smpsLoop		$00, $03, GSX_Intro_Loop3, Target
	dc.b nBb1, $05, nG2, $04, nBb1, $05, $04, nG2
	dc.b $05, nBb1, $04, $04, nRst, $05, $04, nG2
	dc.b $05, nRst, $04, $05, nRst, $04, nBb1, $05
	dc.b nG2, $04, nBb1, $05, $04, nG2, $05, nBb1
	dc.b $04, $05, nRst, $04, $05, nG2, $04, nRst
	dc.b $05, nBb1, $04, nG2, $05, nRst, $04, $05
	dc.b nRst, $04, nBb1, $05, nG2, $04, nRst, $05
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05
	smpsAlterVol		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	smpsAlterVol		$03
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	smpsAlterVol		$02
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	smpsAlterVol		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04, nRst, $05
	smpsAlterVol		$03
	dc.b $04, nG2, $05, nRst, $04, $05, nRst, $04
	dc.b nBb1, $05, nG2, $04, nBb1, $05
	smpsAlterVol		$02
	dc.b $04, nG2, $05, nBb1, $04, $05, nRst, $04
	dc.b $05, nG2, $04, nRst, $05
	smpsAlterVol		$03
	dc.b nBb1, $04, nG2, $05, nRst, $04, $05, nRst
	dc.b $04, nBb1, $05, nG2, $04, nRst, $05
	smpsAlterVol		$03
	dc.b nBb1, $04, nG2, $05, nBb1, $04, $05, nG2
	dc.b $04, nBb1, $05, $04
	smpsStop

GSX_Intro_FM6:
	smpsFMvoice		$01
	dc.b nG1, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	dc.b nRst, $7F, nRst, $10, $7F, smpsNoAttack, $7F, smpsNoAttack
	dc.b $7F, smpsNoAttack, $33
	smpsStop

GSX_Intro_PSG1:
	smpsAlterNote	$65
	dc.b nRst, $7F, nRst, nRst, $22
	smpsAlterNote	$62
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
	smpsLoop		$00, $02, GSX_Intro_Loop4, Target

GSX_Intro_Loop5:
	dc.b nC0, $05, nG0, $04, nC0, $05, $04, nG0
	dc.b $05, nC0, $04, $05, nRst, $04, $05, nG0
	dc.b $04, nRst, $05, $04, nRst, $05, nC0, $04
	dc.b nG0, $05, nC0, $04, $05, nG0, $04, nC0
	dc.b $05, $04, nRst, $05, $04, nG0, $05, nRst
	dc.b $04, nC0, $05, nG0, $04, nRst, $05, $04
	dc.b nRst, $05, nC0, $04, nG0, $05, nRst, $04
	smpsLoop		$00, $02, GSX_Intro_Loop5, Target
	dc.b nC0, $05, nG0, $04, nC0, $05, $04, nG0
	dc.b $05, nC0, $04, $05, nRst, $07
	smpsAlterNote	$65
	;!@ smpsPSGvoice	$2E
	smpsSetVol	$06
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
	smpsSetVol	$01
	dc.b $04, nG0, $05, nRst, $04, $05, nRst, $04
	dc.b nC0, $05, nG0, $04, nC0, $05
	smpsSetVol	$01
	dc.b $04, nG0, $05, nC0, $04, $05, nRst, $04
	dc.b $05, nG0, $04, nRst, $05
	smpsSetVol	$01
	dc.b nC0, $04, nG0, $05, nRst, $04, $05, nRst
	dc.b $04, nC0, $05, nG0, $04, nRst, $05
	smpsSetVol	$01
	smpsLoop		$00, $02, GSX_Intro_Loop6, Target
	dc.b nC0, $04, nG0, $05, nC0, $04, $05, nG0
	dc.b $04, nC0, $05, $04
	smpsStop

;GSX_Intro_PSG2:
	;!@
	;smpsAlterNote	$7F
	;dc.b nC2, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $33
	;dc.b nRst, $7F, nRst, $10, $7F, smpsNoAttack, $7F, smpsNoAttack
	;dc.b $7F, smpsNoAttack, $33
GSX_Intro_PWM:
	dc.b nRst, $01, pSilence
GSX_Intro_NOP:
	smpsStop

GSX_Intro_Patches:

	; Patch $00
	dc.b	$2C
	dc.b	$48, $48, $08, $08,	$01, $05, $01, $05
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$01, $02, $01, $02,	$18, $80, $18, $80
	;smpsVcAlgorithm	$04
	;smpsVcFeedback	$05
	;smpsVcDetune	$04, $00, $04, $00
	;smpsVcCoarseFreq	$08, $08, $08, $08
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$01, $01, $05, $05
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $00, $00, $00
	;smpsVcDecayRate2	$00, $00, $00, $00
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$01, $01, $02, $02
	;smpsVcTotalLevel	$18, $18, $00, $00

	; Patch $01
	dc.b	$3C
	dc.b	$41, $41, $04, $01,	$04, $06, $04, $06
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$11, $12, $11, $12,	$1C, $80, $1F, $80
	;smpsVcAlgorithm	$04
	;smpsVcFeedback	$07
	;smpsVcDetune	$04, $00, $04, $00
	;smpsVcCoarseFreq	$01, $04, $01, $01
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$04, $04, $06, $06
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $00, $00, $00
	;smpsVcDecayRate2	$01, $01, $01, $01
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$01, $01, $02, $02
	;smpsVcTotalLevel	$1C, $1F, $00, $00

	; Patch $02
	dc.b	$3D
	dc.b	$71, $72, $72, $72,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$06, $04, $04, $04
	dc.b	$0B, $0B, $0B, $0B,	$1B, $80, $80, $80
	;smpsVcAlgorithm	$05
	;smpsVcFeedback	$07
	;smpsVcDetune	$07, $07, $07, $07
	;smpsVcCoarseFreq	$01, $02, $02, $02
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $00, $00, $00
	;smpsVcDecayRate2	$00, $00, $00, $00
	;smpsVcDecayLevel	$06, $04, $04, $04
	;smpsVcReleaseRate	$0B, $0B, $0B, $0B
	;smpsVcTotalLevel	$1B, $00, $00, $00

	; Patch $03
	dc.b	$3D
	dc.b	$00, $42, $02, $40,	$1F, $1F, $1F, $1F
	dc.b	$0A, $0A, $0A, $07,	$01, $01, $01, $01
	dc.b	$24, $24, $24, $24,	$1E, $A3, $A3, $80
	;smpsVcAlgorithm	$05
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $04, $04
	;smpsVcCoarseFreq	$00, $02, $02, $00
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0A, $0A, $0A, $07
	;smpsVcDecayRate2	$02, $02, $02, $02
	;smpsVcDecayLevel	$01, $01, $01, $01
	;smpsVcTotalLevel	$1E, $23, $23, $00
	;smpsVcReleaseRate	$04, $04, $04, $04

	; Patch $04
	dc.b	$3B
	dc.b	$7D, $43, $70, $71,	$1B, $1F, $1F, $1F
	dc.b	$0E, $0C, $13, $0C,	$00, $00, $00, $06
	dc.b	$37, $37, $57, $08,	$1C, $2D, $11, $80
	;smpsVcAlgorithm	$03
	;smpsVcFeedback	$07
	;smpsVcDetune	$07, $07, $04, $07
	;smpsVcCoarseFreq	$0D, $00, $03, $01
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1B, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0E, $13, $0C, $0C
	;smpsVcDecayRate2	$03, $05, $03, $00
	;smpsVcDecayLevel	$00, $00, $00, $06
	;smpsVcReleaseRate	$07, $07, $07, $08
	;smpsVcTotalLevel	$1C, $11, $2D, $00
