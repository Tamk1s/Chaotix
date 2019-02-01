Target	EQU	$40000

;PWM Remapping:
p98 	EQU		$8B	;Acoustic Kick
p99 	EQU		$81 ;Electric Kick
p9B 	EQU		$82 ;Electric Snare
p9D 	EQU		$8C ;Acoustic Snare
p9F 	EQU		$88	;Electric Hi-hiat
pA1 	EQU		$8E ;Fingers Snapping
pA3		EQU		$90	;High click
pA6 	EQU		$89 ;Crash Cymbal
pB0 	EQU		$84 ;Ride Bell
				
Maniax_Header:
	smpsHeaderVoice	Maniax_Patches,Target
	smpsHeaderChan	6,3
	;sHeaderTempo	$02, $08
	smpsHeaderTempo	$02, $20
	smpsHeaderFM	Maniax_FM1, Target, $00, $14
	smpsHeaderFM	Maniax_FM2, Target, $00, $0B
	smpsHeaderFM	Maniax_FM3, Target, $00, $0B
	smpsHeaderFM	Maniax_FM4, Target, $00, $14
	smpsHeaderFM	Maniax_FM5, Target, $00, $0F
	smpsHeaderFM	Maniax_FM6, Target, $00, $29
	smpsHeaderPSG	Maniax_PSG1, Target, $00, $07, $00, $1E
	smpsHeaderPSG	Maniax_PSG2, Target, $00, $05, $00, $31
	smpsHeaderPSG	Maniax_PSG3, Target, $00, $0E, $00, $1B
	smpsHeaderPWM	Maniax_PWM1, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM2, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM3, Target, $00, $AA
	smpsHeaderPWM	Maniax_PWM4, Target, $00, $AA

Maniax_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06
	dc.b nG2, $06, nG2, $06, nG2, $06, nBb2, $06
	dc.b nG2, $06, nG2, $06, nBb2, $06, nG2, $06
	dc.b nG2, $06, nBb2, $06, nG2, $06, nG2, $06
	dc.b nBb2, $06, nF2, $06, nF2, $06, nFs2, $06

Maniax_Jump1:
	dc.b nRst, $72, $72, $72, $72, $72, $72, $72
	dc.b $72, $72, $72
	smpsAlterVol		$F4
	dc.b nBb2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nBb2, $02, nRst, $01, nBb2, $02, nRst, $01
	dc.b nG2, $09, nG2, $09, nBb2, $09, nG2, $09
	dc.b nBb2, $03, nRst, $03, nBb2, $03, nG2, $09
	dc.b nBb2, $09, nG2, $09, nBb2, $09, nF2, $09
	dc.b nFs2, $06, nG2, $09, nG2, $09, nBb2, $09
	dc.b nG2, $09, nBb2, $03, nRst, $03, nBb2, $03
	dc.b nG2, $09, nBb2, $09, nG2, $09, nBb2, $03
	dc.b nG2, $03, nBb2, $03, nF2, $09, nFs2, $06
	dc.b nG2, $09, nG2, $09, nBb2, $09, nG2, $09
	dc.b nBb2, $03, nRst, $03, nBb2, $03, nG2, $09
	dc.b nBb2, $09, nG2, $09, nBb2, $09, nF2, $09
	dc.b nFs2, $06, nG2, $09, nG2, $09, nBb2, $09
	dc.b nG2, $09, nBb2, $03, nRst, $03, nBb2, $03
	dc.b nG2, $09, nBb2, $09, nG2, $09, nBb2, $03
	dc.b nG2, $03, nBb2, $03, nF2, $09, nFs3, $06
	dc.b nG3, $09, nG3, $09, nBb3, $09, nG3, $09
	dc.b nBb3, $03, nRst, $03, nBb3, $03, nG3, $09
	dc.b nBb3, $09, nG3, $09, nBb3, $09, nF3, $09
	dc.b nFs3, $06, nG3, $09, nG3, $09, nBb3, $09
	dc.b nG3, $09, nBb3, $03, nRst, $03, nBb3, $03
	dc.b nG3, $09, nBb3, $09, nG3, $09, nBb3, $03
	dc.b nG3, $03, nBb3, $03, nF3, $09, nFs2, $06
	dc.b nG2, $09, nG2, $09, nBb2, $09, nG2, $09
	dc.b nBb2, $03, nRst, $03, nBb2, $03, nG2, $09
	dc.b nBb2, $09, nG2, $09, nBb2, $09, nF2, $09
	dc.b nFs2, $06, nG2, $09, nG2, $09, nBb2, $09
	dc.b nG2, $09, nBb2, $03, nRst, $03, nBb2, $03
	dc.b nG2, $09, nBb2, $09, nG2, $09, nBb2, $03
	dc.b nG2, $03, nBb2, $03, nF2, $09, nFs2, $06
	dc.b nRst, $60, $60, $60, $60, $60, $60
	smpsAlterVol		$0C
	smpsJump		Maniax_Jump1,Target

Maniax_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54

Maniax_Jump2:
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54, nG2, $06, nG2, $06
	dc.b nRst, $54, nG2, $06, nG2, $06, nRst, $54
	dc.b nG2, $06, nG2, $06, nRst, $54, nG2, $06
	dc.b nG2, $06, nRst, $54
	smpsJump		Maniax_Jump2,Target

Maniax_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b nRst, $7F, $41, nC4, $02, nD4, $0A, nG3
	dc.b $06, nF4, $02, nG4, $04, nRst, $48, nC4
	dc.b $02, nD4, $0A, nG3, $06, nF4, $02, nG4
	dc.b $04, nRst, $18, nC4, $02, nD4, $0A, nG3
	dc.b $06, nF4, $02, nG4, $07, nD4, $09, nG3
	dc.b $06, nG4, $06

Maniax_Jump3:
	dc.b nC4, $02, nD4, $0A, nG3, $06, nF4, $02
	dc.b nG4, $04, nRst, $7F, $29, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $48, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nG3, $06, nRst, $06, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $48, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $48, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $48, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nG3, $06, nG4, $06, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $18, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $07, nD4, $09, nG3, $06, nG4
	dc.b $06, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nG3, $06, nG4, $06, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $04, nRst
	dc.b $18, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $07, nD4, $09, nG3, $06, nG4
	dc.b $06, nC4, $02, nD4, $0A, nG3, $06, nF4
	dc.b $02, nG4, $04, nRst, $18, nC4, $02, nD4
	dc.b $0A, nG3, $06, nF4, $02, nG4, $07, nD4
	dc.b $09, nRst, $61, $61, $61, $61, $61, $61
	dc.b $61, $61, $61, $61, $61, $61, nC4, $02
	dc.b nD4, $0A, nG3, $06, nF4, $02, nG4, $04
	dc.b nRst, $48, nC4, $02, nD4, $0A, nG3, $06
	dc.b nF4, $02, nG4, $04, nRst, $18, nC4, $02
	dc.b nD4, $0A, nG3, $06, nF4, $02, nG4, $07
	dc.b nD4, $09, nG3, $06, nG4, $06
	smpsJump		Maniax_Jump3,Target

Maniax_FM4:
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump4:
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nBb3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nBb3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nBb3, $03, nBb3, $03, nBb3, $03
	dc.b nBb3, $03, nRst, $09, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nF3, $03, nF3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nBb3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nBb3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nBb3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nBb3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nRst, $09, nG3, $06, nG3, $09
	dc.b nG3, $09, nG3, $06, nG3, $03, nG3, $03
	dc.b nG3, $03, nRst, $09, nG3, $06, nG3, $09
	dc.b nG3, $09, nG3, $06, nF3, $03, nF3, $03
	dc.b nF3, $03, nRst, $09, nF3, $06, nF3, $09
	dc.b nF3, $09, nF3, $06, nF3, $03, nF3, $03
	dc.b nF3, $03, nRst, $09, nF3, $06, nF3, $09
	dc.b nF3, $09, nF3, $06, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nG3, $03, nG3, $03
	dc.b nG3, $03, nG3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03, nF3, $03, nF3, $03
	dc.b nF3, $03, nF3, $03
	smpsJump		Maniax_Jump4,Target

Maniax_FM5:
	smpsFMvoice		$03
	smpsPan		panCenter
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump5:
	dc.b nRst, $7C, $7C, $7C, $7C, $7C, $7C, nAb4
	dc.b $18, nG4, $7F, smpsNoAttack, $11, nAb4, $30, nG4
	dc.b $60, nBb4, $60, nRst, $70, $70, $70, $70
	dc.b $70, $70, $70, $70, $70, $70, $70, $70
	smpsJump		Maniax_Jump5,Target

Maniax_FM6:
	smpsFMvoice		$04
	smpsPan		panCenter
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump6:
	dc.b nRst, $76, $76, $76, $76, $76, $76, $76
	dc.b $76, $76, $76, $76, $01, nC5, $03
	smpsAlterVol		$F8
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F9
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FB
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FE
	dc.b nC5, $03, nRst, $7F, $14
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F8
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F9
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FB
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FE
	dc.b nC5, $03, nRst, $7F, $14
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F8
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F9
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FB
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FE
	dc.b nC5, $03, nRst, $7F, $14
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F8
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F9
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FB
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FE
	dc.b nC5, $03, nRst, $6A, $6A, $6A, $6A, $6A
	dc.b $01
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F8
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$1E
	dc.b nC5, $03
	smpsAlterVol		$F9
	dc.b nC5, $03
	smpsAlterVol		$FA
	dc.b nC5, $03
	smpsAlterVol		$FB
	dc.b nC5, $03
	smpsAlterVol		$FC
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FD
	dc.b nC5, $03
	smpsAlterVol		$FE
	dc.b nC5, $03
	smpsAlterVol		$1E
	smpsJump		Maniax_Jump6,Target

Maniax_PSG1:
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54

Maniax_Jump7:
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54, nC0, $06, nC0, $06
	dc.b nRst, $54, nC0, $06, nC0, $06, nRst, $54
	dc.b nC0, $06, nC0, $06, nRst, $54, nC0, $06
	dc.b nC0, $06, nRst, $54
	smpsJump		Maniax_Jump7,Target

Maniax_PSG2:
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump8:
	dc.b nRst, $7C, $7C, $7C, $7C, $7C, $7C, nEb1
	dc.b $18, nD1, $7F, smpsNoAttack, $11, nEb1, $30, nD1
	dc.b $60, nF1, $60, nRst, $70, $70, $70, $70
	dc.b $70, $70, $70, $70, $70, $70, $70, $70
	smpsJump		Maniax_Jump8,Target

Maniax_PSG3:
	dc.b nRst, $7F, $7F, $7F, $03

Maniax_Jump9:
	dc.b nRst, $76, $76, $76, $76, $76, $76, $76
	dc.b $76, $76, $76, $76, $01, nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FD
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$0A
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03, nRst, $7F, $14
	smpsSetVol	$0B
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FD
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$0A
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03, nRst, $7F, $14
	smpsSetVol	$0B
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FD
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$0A
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03, nRst, $7F, $14
	smpsSetVol	$0B
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FD
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$0A
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03, nRst, $6A, $6A, $6A, $6A, $6A
	dc.b $01
	smpsSetVol	$0B
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FD
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$0A
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$FE
	dc.b nG1, $03
	smpsSetVol	$FF
	dc.b nG1, $03
	smpsSetVol	$0B
	smpsJump		Maniax_Jump9,Target
	
Maniax_PWM1:
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	smpsAlterVol		$11
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$9A
	dc.b p9D, $02
	smpsAlterVol		$66
	dc.b p9D, $01
	smpsAlterVol		$89
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b p99, $03, p98, $03, nRst, $03, p98, $03
	dc.b nRst, $30

Maniax_JumpP1:
	dc.b nRst, $09
	smpsAlterVol		$0C
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $2D, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $2D, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $39, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $39
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $09
	dc.b p99, $03, nRst, $0C, p99, $03, p9B, $03
	dc.b p99, $03, p98, $03, nRst, $06, p9B, $06
	dc.b nRst, $09, p99, $03, nRst, $0C, p99, $03
	dc.b p9B, $03, p99, $03, p98, $03, nRst, $06
	dc.b p9B, $06, nRst, $09, p99, $03, nRst, $0C
	dc.b p99, $03, p9B, $03, p99, $03, p98, $03
	dc.b nRst, $06, p9B, $06, nRst, $09, p99, $03
	dc.b nRst, $0C, p99, $03, p9B, $03, p99, $03
	dc.b p98, $03, nRst, $06, p9B, $06, nRst, $60
	dc.b $60, $60, $60, $60, $60
	smpsAlterVol		$F4
	smpsJump		Maniax_JumpP1, Target
	
Maniax_PWM2:
	dc.b pA6, $03, nRst, $03, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $09
	dc.b p9F, $03, nRst, $1B, pA6, $03, nRst, $03
	dc.b p9F, $03, nRst, $03, pB0, $03, nRst, $03
	dc.b p9F, $03, nRst, $03, pB0, $03, nRst, $03
	dc.b p9F, $03, nRst, $03, pB0, $03, nRst, $03
	dc.b p9F, $03, nRst, $09, p9F, $03, nRst, $03
	dc.b pB0, $03, nRst, $03, p9F, $03, nRst, $03
	dc.b pB0, $03, nRst, $03, p9F, $03, nRst, $03
	dc.b pB0, $03, nRst, $03, p9F, $03, nRst, $03
	dc.b pA6, $03, nRst, $03, p9F, $03, nRst, $03
	dc.b pB0, $03, nRst, $03, p9F, $03, nRst, $03
	dc.b pB0, $03, nRst, $03, p9F, $03, nRst, $03
	dc.b pB0, $03, nRst, $03, p9F, $03, nRst, $33

Maniax_JumpP2:
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA3, $03, nRst, $09, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA3, $03, pA1, $03, nRst, $30, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA3, $03
	dc.b pA1, $03, pA3, $03, pA1, $03, nRst, $30
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA3, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b p9F, $0C, p9F, $0C, p9F, $0C, p9F, $03
	dc.b pA1, $03, p9F, $03, pA1, $03, p9F, $0C
	dc.b p9F, $0C, p9F, $0C, p9F, $03, pA1, $03
	dc.b p9F, $03, pA1, $03, p9F, $0C, p9F, $0C
	dc.b p9F, $0C, p9F, $03, pA1, $03, p9F, $03
	dc.b pA1, $03, p9F, $0C, p9F, $0C, p9F, $0C
	dc.b p9F, $03, pA1, $03, p9F, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b pA1, $03, pA1, $03, pA1, $03, pA1, $03
	dc.b nRst, $30
	smpsJump		Maniax_JumpP2, Target
	
Maniax_PWM3:
	dc.b nRst, $06, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $21, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $33

Maniax_JumpP3:
	dc.b pA6, $03, nRst, $7F, $3E, pA6, $03, nRst
	dc.b $7F, $3E, pA6, $03, nRst, $03, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $03, pA6, $03
	dc.b nRst, $03, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $33, pA6, $03
	dc.b nRst, $03, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $03, pA6, $03, nRst, $03, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $27
	smpsAlterVol		$FD
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C5
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C5
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C5
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C8
	dc.b pA6, $03, nRst, $7F, $3E, pA6, $03, nRst
	dc.b $7F, $3E, pA6, $03, nRst, $7F, $3E, pA6
	dc.b $03, nRst, $7F, $3E, pA6, $03, nRst, $7F
	dc.b $3E, pA6, $0C, nRst, $7F, $35, pA6, $03
	dc.b nRst, $7F, $3E
	smpsJump		Maniax_JumpP3,Target
	
Maniax_PWM4:
	dc.b nRst, $7F, $47, pB0, $03, nRst, $21, pB0
	dc.b $03, nRst, $09, pB0, $03, nRst, $21, pB0
	dc.b $03, nRst, $09, pB0, $03, nRst, $21, pB0
	dc.b $03, nRst, $03, $30

Maniax_JumpP4:
	smpsAlterVol		$FD
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, nRst, $03
	dc.b p98, $03, p9B, $03, p98, $03, p99, $03
	dc.b p98, $03, p9B, $03, p98, $03, p99, $03
	dc.b p98, $03, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b nRst, $03, p98, $03, p9B, $03, p98, $03
	dc.b p99, $03, p98, $03, p9B, $03, nRst, $09
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $36, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06
	smpsAlterVol		$44
	dc.b p9B, $01, $80, $01
	smpsAlterVol		$FF
	dc.b $80, $01
	smpsAlterVol		$F1
	dc.b p9B, $01, $80, $01
	smpsAlterVol		$FF
	dc.b $80, $01
	smpsAlterVol		$F7
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$F9
	dc.b p9B, $01, $80, $01
	smpsAlterVol		$FF
	dc.b $80, $01
	smpsAlterVol		$FB
	dc.b p9B, $01
	smpsAlterVol		$FF
	dc.b $80, $01, $80, $01
	smpsAlterVol		$FB
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$FC
	dc.b p9B, $01, $80, $01
	smpsAlterVol		$FF
	dc.b $80, $01
	smpsAlterVol		$FD
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$FF
	smpsAlterVol		$FD
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$FD
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$FD
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$FE
	smpsAlterVol		$FF
	dc.b p9B, $01, $80, $01, $80, $01
	smpsAlterVol		$FE
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $06, p99, $03, p99, $03
	dc.b p9D, $03, nRst, $09, p99, $06, p9D, $06
	dc.b p99, $03, p9D, $03, p99, $06, p99, $06
	dc.b p99, $03, p99, $03, p9D, $03, nRst, $09
	dc.b p99, $06, p9D, $06, p99, $03, p9D, $03
	dc.b p99, $06, p99, $06, p99, $03, p98, $03
	dc.b p99, $03, nRst, $09, p99, $06, p99, $03
	dc.b p98, $03, p99, $03, p9D, $03, p99, $06
	dc.b p99, $06, p99, $03, p98, $03, p99, $03
	dc.b nRst, $03, p9D, $03, p98, $03, p99, $03
	dc.b p98, $03, p9D, $03, p98, $03, p99, $03
	dc.b p98, $03, p99, $03, p98, $03, p99, $03
	dc.b nRst, $24, p9D, $03, p98, $03, p99, $03
	dc.b p98, $03, nRst, $27, p99, $03, p98, $03
	dc.b p99, $03, nRst, $45, p9D, $03, p9D, $03
	dc.b p99, $03, p99, $03, p9D, $03, p9D, $03
	dc.b p99, $06, p99, $06, p99, $03, p99, $03
	dc.b p9D, $03, nRst, $09, p99, $06, p9D, $06
	dc.b p99, $03, p9D, $03, p99, $06, p99, $06
	dc.b p99, $03, p99, $03, p9D, $03, nRst, $09
	dc.b p99, $06, p9D, $06, p99, $03, p9D, $03
	dc.b p99, $06, p99, $06, p99, $03, p98, $03
	dc.b p99, $03, nRst, $09, p99, $06, p99, $03
	dc.b p98, $03, p99, $03, p9D, $03, nRst, $30
	smpsAlterVol		$03
	smpsJump		Maniax_JumpP4,Target

Maniax_Patches:
	dc.b	$39, $03, $22, $61, $21, $1F, $12, $1F, $1F, $05, $05, $05, $0B, $0C, $0C, $0C, $0C, $10, $18, $10, $18, $1E, $15, $1D, $02
	dc.b	$38, $63, $31, $31, $31, $10, $13, $1A, $1B, $0E, $00, $00, $00, $00, $00, $00, $00, $33, $05, $03, $0B, $28, $19, $1A, $00
	dc.b	$2D, $00, $02, $01, $01, $5F, $1F, $19, $1F, $0F, $0A, $0A, $0A, $00, $01, $01, $01, $2F, $1C, $1C, $1C, $26, $04, $02, $0F
	dc.b	$2C, $72, $78, $34, $34, $1F, $12, $1F, $12, $00, $0A, $00, $0A, $00, $00, $00, $00, $0F, $1F, $0F, $1F, $16, $13, $17, $08
	dc.b	$00, $0F, $31, $72, $01, $1F, $1F, $1F, $1F, $00, $00, $14, $0E, $00, $00, $00, $07, $0F, $0F, $2F, $4F, $37, $0B, $17, $09
	even
	; Patch $00
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$0C, $0C, $0C, $0C
	; $10, $18, $10, $18,	$1E, $15, $1D, $02
	;spAlgorithm	$01
	;spFeedback	$07
	;spDetune	$00, $06, $02, $02
	;spMultiple	$03, $01, $02, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $12, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$05, $05, $05, $0B
	;spSustainLv	$01, $01, $01, $01
	;spDecayRt	$0C, $0C, $0C, $0C
	;spReleaseRt	$00, $00, $08, $08
	;spTotalLv	$1E, $1D, $15, $02

	; Patch $01
	; $38
	; $63, $31, $31, $31,	$10, $13, $1A, $1B
	; $0E, $00, $00, $00,	$00, $00, $00, $00
	; $33, $05, $03, $0B,	$28, $19, $1A, $00
	;spAlgorithm	$00
	;spFeedback	$07
	;spDetune	$06, $03, $03, $03
	;spMultiple	$03, $01, $01, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$10, $1A, $13, $1B
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$0E, $00, $00, $00
	;spSustainLv	$03, $00, $00, $00
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$03, $03, $05, $0B
	;spTotalLv	$28, $1A, $19, $00

	; Patch $02
	; $2D
	; $00, $02, $01, $01,	$5F, $1F, $19, $1F
	; $0F, $0A, $0A, $0A,	$00, $01, $01, $01
	; $2F, $1C, $1C, $1C,	$26, $04, $02, $0F
	;spAlgorithm	$05
	;spFeedback	$05
	;spDetune	$00, $00, $00, $00
	;spMultiple	$00, $01, $02, $01
	;spRateScale	$01, $00, $00, $00
	;spAttackRt	$1F, $19, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$0F, $0A, $0A, $0A
	;spSustainLv	$02, $01, $01, $01
	;spDecayRt	$00, $01, $01, $01
	;spReleaseRt	$0F, $0C, $0C, $0C
	;spTotalLv	$26, $02, $04, $0F

	; Patch $03
	; $2C
	; $72, $78, $34, $34,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$16, $13, $17, $08
	;spAlgorithm	$04
	;spFeedback	$05
	;spDetune	$07, $03, $07, $03
	;spMultiple	$02, $04, $08, $04
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $12, $12
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $00, $0A, $0A
	;spSustainLv	$00, $00, $01, $01
	;spDecayRt	$00, $00, $00, $00
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$16, $17, $13, $08

	; Patch $04
	; $00
	; $0F, $31, $72, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $14, $0E,	$00, $00, $00, $07
	; $0F, $0F, $2F, $4F,	$37, $0B, $17, $09
	;spAlgorithm	$00
	;spFeedback	$00
	;spDetune	$00, $07, $03, $00
	;spMultiple	$0F, $02, $01, $01
	;spRateScale	$00, $00, $00, $00
	;spAttackRt	$1F, $1F, $1F, $1F
	;spAmpMod	$00, $00, $00, $00
	;spSustainRt	$00, $14, $00, $0E
	;spSustainLv	$00, $02, $00, $04
	;spDecayRt	$00, $00, $00, $07
	;spReleaseRt	$0F, $0F, $0F, $0F
	;spTotalLv	$37, $17, $0B, $09
