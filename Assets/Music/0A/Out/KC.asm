Target	EQU	$40000
PSGVoi1	EQU	$00
PSGVoi2	EQU	$00
PSGVoi3	EQU	$00
;!@ PSGVol1	EQU	$0A
;!@ PSGVol2	EQU	$0F
;!@ PSGVol3	EQU	$0A
PSGVol1	EQU	$01
PSGVol2	EQU	$06
PSGVol3	EQU	$05

;!@ PWMVol	EQU	$7F
PWMVol	EQU	$64

	smpsHeaderVoice	MKW_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$05, $1E
	smpsHeaderFM	MKW_FM1, Target, $00, $0E
	smpsHeaderFM	MKW_FM2, Target, $00, $1B
	smpsHeaderFM	MKW_FM3, Target, $00, $18	
	smpsHeaderFM	MKW_FM4, Target, $00, $24
	;!@ smpsHeaderFM	MKW_FM5, Target, $00, $13
	;!@ smpsHeaderFM	MKW_FM6, Target, $00, $13
	smpsHeaderFM	MKW_FM5, Target, $F4, $13
	smpsHeaderFM	MKW_FM6, Target, $F4, $13
	smpsHeaderPSG	MKW_PSG1, Target, $00, PSGVol1, $00, PSGVoi1
	smpsHeaderPSG	MKW_PSG2, Target, $00, PSGVol2, $00, PSGVoi2
	smpsHeaderPSG	MKW_PSG3, Target, $00, PSGVol3, $00, PSGVoi3	;!@
	smpsHeaderPWM	MKW_PWM1, Target, $00, PWMVol
	smpsHeaderPWM	MKW_PWM2, Target, $00, PWMVol
	smpsHeaderPWM	MKW_PWM3, Target, $00, PWMVol
	smpsHeaderPWM	MKW_PWM4, Target, $00, PWMVol

MKW_FM1:
	smpsFMvoice		$00
	dc.b	nC1, $04, nRst, $02, nC1, nG1, nC2, nRst
	dc.b	nC1, nRst, nC1, nRst, nG1, $03, nRst, $01
	dc.b	nC2, $02, nC1

MKW_Loop1:
	dc.b	nC1, nC1, $04, nRst, $02, nC1, nG1, nC2
	dc.b	nRst, nC1, nRst, nC1, nRst, nG1, $03, nRst
	dc.b	$01, nC1, nRst, nC1, nRst, nC1, nRst, nC1
	dc.b	$04, nRst, $02, nC1, nG1, nC2, nRst, nC1
	dc.b	nRst, nC1, nRst, nG1, $03, nRst, $01, nC2
	dc.b	$02, nC1, nC1
	smpsAlterVol		$FA
	dc.b	nEb1, $04, nRst, $02, nEb1
	smpsAlterVol		$06
	dc.b	nBb1
	smpsAlterVol		$FA
	dc.b	nEb1, nRst
	smpsAlterVol		$06
	dc.b	nF1, nRst, nF1, nRst, nBb0, $03, nRst, $01
	dc.b	nBb0, $02, nF1, $03, nRst, $01, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nC2, $02
	dc.b	nBb0, nB0, nC1, $04, nRst, $02, nC1, nG1
	dc.b	nC2, nRst, nC1, nRst, nC1, nRst, nG1, $03
	dc.b	nRst, $01, nG1, $02, nBb0, nB0, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nC2, $02
	dc.b	nC1, nG1
	smpsAlterVol		$FA
	dc.b	nEb1, $04, nRst, $02, nEb1
	smpsAlterVol		$06
	dc.b	nBb1
	smpsAlterVol		$FA
	dc.b	nEb1, nRst
	smpsAlterVol		$06
	dc.b	nF1, nRst, nF1, nRst, nBb0, $03, nRst, $01
	dc.b	nF1, $02, nCs2, $03, nRst, $01, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nG1, nRst
	dc.b	nC1, $02
	smpsLoop		$00, $04, MKW_Loop1, Target
	;!@ dc.b	$02, $04, nRst, $02, nC1, nG1, nC2, nRst
	dc.b	nC1, $02, nC1, $04, nRst, $02, nC1, nG1, nC2, nRst
	dc.b	nC1, nRst, nC1, nRst, nG1, $03, nRst, $01
	dc.b	nC1, nRst, nC1, nRst, nC1, nRst, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nC2, $02
	dc.b	nC1, nC1
	smpsAlterVol		$FA
	dc.b	nEb1, $04, nRst, $02, nEb1
	smpsAlterVol		$06
	dc.b	nBb1
	smpsAlterVol		$FA
	dc.b	nEb1, nRst
	smpsAlterVol		$06
	dc.b	nF1, nRst, nF1, nRst, nBb0, $03, nRst, $01
	dc.b	nBb0, $02, nF1, $03, nRst, $01, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nC2, $02
	dc.b	nBb0, nB0, nC1, $04, nRst, $02, nC1, nG1
	dc.b	nC2, nRst, nC1, nRst, nC1, nRst, nG1, $03
	dc.b	nRst, $01, nG1, $02, nBb0, nB0, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nC2, $02
	dc.b	nC1, nG1
	smpsAlterVol		$FA
	dc.b	nEb1, $04, nRst, $02, nEb1
	smpsAlterVol		$06
	dc.b	nBb1
	smpsAlterVol		$FA
	dc.b	nEb1, nRst
	smpsAlterVol		$06
	dc.b	nF1, nRst, nF1, nRst, nBb0, $03, nRst, $01
	dc.b	nF1, $02, nCs2, $03, nRst, $01, nC1, $04
	dc.b	nRst, $02, nC1, nG1, nC2, nRst, nC1, nRst
	dc.b	nC1, nRst, nG1, $03, nRst, $01, nC2, $02
	smpsJump		MKW_FM1, Target

MKW_FM2:
	smpsFMvoice		$01
	dc.b	nBb3

MKW_Loop2:
	dc.b	$0E, nC4, $12, nEb4, $0E, nC4, $12, nBb3
	dc.b	$0E, nC4, $12, $0E, nBb3, $12
	smpsLoop		$00, $02, MKW_Loop2, Target

MKW_Loop3:
	dc.b	$0E, nC4, $12, nEb4, $0E, nC4, $12, nEb4
	dc.b	$0E, nC4, $12, $0E, nBb3, $12
	smpsLoop		$00, $02, MKW_Loop3, Target
	smpsLoop		$01, $02, MKW_Loop2, Target

MKW_Loop4:
	dc.b	$0E, nC4, $12, nEb4, $0E, nC4, $12, nBb3
	dc.b	$0E, nC4, $12, $0E, nBb3, $12
	smpsLoop		$00, $02, MKW_Loop4, Target
	dc.b	$0E, nRst
	smpsJump		MKW_FM2, Target

MKW_FM3:
	smpsFMvoice		$01

MKW_Loop5:
	dc.b	nG3, $0E, $12, $0E, $12, $0E, $12, nEb3
	dc.b	$0E, nD3, $12
	smpsLoop		$00, $0A, MKW_Loop5, Target
	dc.b	nG3, $0E, nRst
	smpsJump		MKW_FM3, Target

MKW_FM4:
	smpsFMvoice		$02
	;!@ dc.b	nRst

MKW_Loop6:
	;!@ dc.b	$20
	dc.b	nRst, $20
	smpsLoop		$00, $08, MKW_Loop6, Target

MKW_Loop7:
	dc.b	nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b	nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b	nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b	nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b	nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b	nD4, $01, nRst, $03, nC4, $06, $04
	smpsLoop		$00, $04, MKW_Loop7, Target
	smpsAlterVol		$F2
	dc.b	nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b	nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b	nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b	nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b	nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b	nD4, $01, nRst, $03, nC4, $06, $04, nF4
	dc.b	$01, nRst, $03, nC4, $01

MKW_Loop8:
	dc.b	nRst, $03, nC4, $04, nG3, $02, nF4, $01
	dc.b	nRst, $03, nE4, $01, nRst, $03, nC4, $06
	dc.b	nG3, $04, nEb4, $01, nRst, $03, nD4, $01
	dc.b	nRst, $03, nC4, $04, nF3, $02, nEb4, $01
	dc.b	nRst, $03, nD4, $01, nRst, $03, nC4, $06
	dc.b	$04, nF4, $01, nRst, $03, nE4, $01
	smpsLoop		$00, $02, MKW_Loop8, Target
	dc.b	nRst, $03, nC4, $04, nG3, $02, nF4, $01
	dc.b	nRst, $03, nE4, $01, nRst, $03, nC4, $06
	dc.b	nG3, $04

MKW_Loop9:
	dc.b	nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b	nC4, $04, nF3, $02
	smpsLoop		$00, $02, MKW_Loop9, Target
	dc.b	nC4, $04
	smpsAlterVol		$0E

MKW_Loop10:
	dc.b	nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b	nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b	nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b	nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b	nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b	nD4, $01, nRst, $03, nC4, $06, $04
	smpsLoop		$00, $04, MKW_Loop10, Target
	smpsAlterVol		$F7

MKW_Loop11:
	dc.b	nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b	nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b	nE4, $01, nRst, $03, nC4, $06, nG3, $04
	dc.b	nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b	nC4, $04, nF3, $02, nEb4, $01, nRst, $03
	dc.b	nD4, $01, nRst, $03, nC4, $06, $04
	smpsLoop		$00, $03, MKW_Loop11, Target
	dc.b	nF4, $01, nRst, $03, nE4, $01, nRst, $03
	dc.b	nC4, $04, nG3, $02, nF4, $01, nRst, $03
	dc.b	nE4, $01, nRst, $03, nC4, $06, nG3, $04

MKW_Loop12:
	dc.b	nEb4, $01, nRst, $03, nD4, $01, nRst, $03
	dc.b	nC4, $04, nF3, $02
	smpsLoop		$00, $02, MKW_Loop12, Target
	dc.b	nC4, $04, nRst, $1C
	smpsAlterVol		$09
	smpsJump		MKW_FM4, Target

MKW_FM5:
	smpsFMvoice		$03
	;!@ dc.b	nRst, $33, $33, $10
	dc.b	nRst, $33, nRst, $33, nRst, $10
	smpsFMvoice		$04
	dc.b	nD5, $01, nBb5, nF5, nBb4, nG4, $02, nF5
	dc.b	$01, nG5, nBb5, nG6, $03
	smpsAlterVol		$02
	dc.b	nF5, $02
	smpsAlterVol		$02
	dc.b	nBb5, $01
	smpsAlterVol		$01
	dc.b	nG6, $02
	smpsAlterVol		$03
	dc.b	nBb4, $01
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$02
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nG6, $02
	smpsAlterVol		$04
	dc.b	nBb4, $01
	smpsAlterVol		$02
	dc.b	nF5
	smpsAlterVol		$02
	dc.b	nG5
	smpsAlterVol		$02
	dc.b	nBb5
	smpsAlterVol		$04
	;!@ dc.b	nG6, $03, nRst, $33, $31
	dc.b	nG6, $03, nRst, $33, nRst, $31
	smpsAlterVol		$E4
	dc.b	nF5, $02, nBb5, $01, nC6, $02, nF6, $01
	dc.b	nG6, nC7, $03
	smpsAlterVol		$03
	dc.b	nBb5, $01
	smpsAlterVol		$01
	dc.b	nC6, $02
	smpsAlterVol		$02
	dc.b	nF6, $01
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$02
	dc.b	nC7
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$02
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$02
	dc.b	nD6
	smpsAlterVol		$02
	dc.b	nF6
	smpsAlterVol		$02
	dc.b	nG6
	smpsAlterVol		$02
	;!@ dc.b	nC7, $03, nRst, $33, $2B
	dc.b	nC7, $03, nRst, $33, nRst, $2B
	smpsAlterVol		$EB
	dc.b	nD6, $04, nRst, $02
	smpsAlterVol		$03
	dc.b	nD6, $04, nRst, $02
	smpsAlterVol		$05
	;!@ dc.b	nD6, $01, nG6, $04, nRst, $33, $33, $09
	dc.b	nD6, $01, nG6, $04, nRst, $33, nRst, $33, nRst, $09
	smpsFMvoice		$03
	smpsAlterVol		$F7
	dc.b	nB4, $10
	smpsFMvoice		$04
	dc.b	nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b	nC6, $04, nG5, $02, nF6, $01, nRst, $03
	dc.b	nE6, $01, nRst, $03, nC6, $06, nG5, $04
	dc.b	nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b	nBb5, $04, nF5, $02, nEb6, $01, nRst, $03
	dc.b	nD6, $01, nRst, $03, nBb5, $06, nC6, $04

MKW_Loop13:
	dc.b	nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b	nC6, $04, nG5, $02
	smpsLoop		$00, $02, MKW_Loop13, Target
	dc.b	nC6, $04, nEb6, $01, nRst, $03, nD6, $01
	dc.b	nRst, $03, nBb5, $04, nF5, $02, nEb6, $01
	dc.b	nRst, $03, nD6, $01, nRst, $03, nD5, $01
	dc.b	nBb5, nF5, nBb4, nF4, nBb4, nC6, nG5, nBb5
	dc.b	nG6, nF6
	smpsAlterVol		$01
	dc.b	nBb4
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$01
	dc.b	nG4
	smpsAlterVol		$02
	dc.b	nBb4
	smpsAlterVol		$F8
	dc.b	nC5
	smpsAlterVol		$0B
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nG6
	smpsAlterVol		$F2
	dc.b	nG4
	smpsAlterVol		$12
	dc.b	nBb4
	smpsAlterVol		$EE
	dc.b	nF5
	smpsAlterVol		$16
	dc.b	nG5
	smpsAlterVol		$02
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nG6
	smpsAlterVol		$E4
	dc.b	nE5, nRst, $03, nC5, $06, nG4, $04

MKW_Loop14:
	dc.b	nEb6, $01, nRst, $03, nD6, $01, nRst, $03
	dc.b	nBb5, $04, nF5, $02
	smpsLoop		$00, $02, MKW_Loop14, Target
	dc.b	nC6, $04

MKW_Loop15:
	dc.b	nF6, $01, nRst, $03, nE6, $01, nRst, $03
	dc.b	nC6, $04, nG5, $02
	smpsLoop		$00, $02, MKW_Loop15, Target
	dc.b	nC6, $04, nEb6, $01, nRst, $03, nD6, $01
	dc.b	nRst, $03, nBb5, $04, nF5, $02, nEb6, $01
	dc.b	nRst, $03, nD6, $01, nRst, $03, nG6, $02
	smpsAlterVol		$FB
	dc.b	nF5, $01, nG5
	smpsAlterVol		$05
	dc.b	nF6
	smpsAlterVol		$00
	dc.b	nG6
	smpsAlterVol		$00
	dc.b	nC7, $02
	smpsAlterVol		$FB
	dc.b	nG6, $01, nC7
	smpsAlterVol		$0D
	dc.b	nF5, nG5
	smpsAlterVol		$FB
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$04
	dc.b	nD6, nF6
	smpsAlterVol		$FF
	dc.b	nG6
	smpsAlterVol		$01
	dc.b	nC7
	smpsAlterVol		$02
	dc.b	nF5
	smpsAlterVol		$FF
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nC6
	smpsAlterVol		$02
	dc.b	nD6
	smpsAlterVol		$FD
	dc.b	nF6
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$08
	dc.b	nC7
	smpsAlterVol		$FB
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nD6
	smpsAlterVol		$02
	dc.b	nF6
	smpsAlterVol		$02
	dc.b	nG6
	smpsAlterVol		$02
	;!@ dc.b	nC7, $04, nRst, $33, $21
	dc.b	nC7, $04, nRst, $33, nRst, $21
	smpsAlterVol		$E5
	dc.b	nBb5, $04, nRst, $02
	smpsAlterVol		$03
	dc.b	nBb5, $04, nRst, $02
	smpsAlterVol		$05
	;!@ dc.b	nBb5, nG6, $04, nRst, $33, $33, $15
	dc.b	nBb5, nG6, $04, nRst, $33, nRst, $33, nRst, $15
	smpsAlterVol		$F3
	dc.b	nG4, $02, nC5, nF6, nRst, nE6, nRst, $04
	dc.b	nC6, $02, nRst, nF6, nRst, nF6, nRst, nE6
	dc.b	$06, nC6, $02, nD6, nEb6, nRst, nD6, nRst
	dc.b	$04, nBb5, $02, nRst, nC6, nRst, nF5, nRst
	dc.b	nC6, $06, nG6, $02, nRst, nF6, nRst, nE6
	dc.b	nRst, $04, nC6, $02, nRst, nF6, nRst, nF6
	dc.b	nRst, nE6, $04, nC6, $02, nD6, nEb6, $04
	dc.b	nRst, $02, nD6, nRst, $04, nBb5, $02, nRst
	dc.b	nC6, nRst, nF5, nRst, nC5, $04
	smpsAlterVol		$04
	dc.b	nG4, $01
	smpsAlterVol		$00
	dc.b	nBb4
	smpsAlterVol		$FC
	dc.b	nG6
	smpsAlterVol		$04
	dc.b	nG5, nBb5, nG6
	smpsAlterVol		$00
	dc.b	nG4
	smpsAlterVol		$01
	dc.b	nBb4
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$01
	dc.b	nG4
	smpsAlterVol		$02
	dc.b	nBb4
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$02
	dc.b	nG5
	smpsAlterVol		$F1
	dc.b	nC5
	smpsAlterVol		$12
	dc.b	nG6
	smpsAlterVol		$02
	dc.b	nG4
	smpsAlterVol		$02
	dc.b	nBb4
	smpsAlterVol		$EA
	dc.b	nF6
	smpsAlterVol		$1A
	dc.b	nG5
	smpsAlterVol		$02
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nG6
	smpsAlterVol		$E0
	dc.b	nF5, $02, nRst, nE6, $06, nC5, $02, nD5
	dc.b	nEb6, nRst, nD6, nRst, $04, nBb5, $02, nRst
	dc.b	nC6, nRst, nF5, nRst, nC6, $04, nG5, $01
	dc.b	nC6, nG6, $02, nRst, nF6, nRst, nE6, nRst
	dc.b	$04, nC6, $02, nRst, nF6, nRst, nF6, nRst
	dc.b	nE6, $04, nC6, $02, nD6, nEb6, $04, nRst
	dc.b	$02, nD6, nEb6, nF6, nG6, nRst, nG6, nRst
	dc.b	nC6, nRst, nG6
	smpsAlterVol		$04
	dc.b	nF5, $01, nG5
	smpsAlterVol		$FC
	dc.b	nF6
	smpsAlterVol		$00
	dc.b	nG5
	smpsAlterVol		$00
	dc.b	nF6
	smpsAlterVol		$04
	dc.b	$01, nG6, nC7
	smpsAlterVol		$08
	dc.b	nF5, nG5
	smpsAlterVol		$FB
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$04
	dc.b	nD6, nF6
	smpsAlterVol		$FF
	dc.b	nG6, nC7
	smpsAlterVol		$03
	dc.b	nF5
	smpsAlterVol		$FF
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nC6
	smpsAlterVol		$02
	dc.b	nD6
	smpsAlterVol		$FD
	dc.b	nF6
	smpsAlterVol		$01
	dc.b	nG6, nC7
	smpsAlterVol		$03
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nD6
	smpsAlterVol		$02
	dc.b	nF6
	smpsAlterVol		$02
	dc.b	nG6, nC7, $04, nRst, $01
	smpsAlterVol		$E6
	smpsJump		MKW_FM5, Target

MKW_FM6:
	smpsFMvoice		$04
	;!@ dc.b	nRst, $33, $33, $15, nBb4, $03, nRst, $02
	dc.b	nRst, $33, nRst, $33, nRst, $15, nBb4, $03, nRst, $02
	dc.b	nG4, $01
	smpsAlterVol		$01
	dc.b	nBb4, $02
	smpsAlterVol		$02
	dc.b	nG5, $03
	smpsAlterVol		$03
	dc.b	nG4, nRst
	smpsAlterVol		$0A
	dc.b	nG4
	smpsAlterVol		$06
	;!@ dc.b	nG5, nRst, $33, $33, $01
	dc.b	nG5, nRst, $33, nRst, $33, nRst, $01
	smpsAlterVol		$EA
	dc.b	nG5, $03, nD6, nC7, $02
	smpsAlterVol		$02
	dc.b	nG5, $03
	smpsAlterVol		$03
	dc.b	nD6, nRst, $02
	smpsAlterVol		$07
	dc.b	nG5, $03
	smpsAlterVol		$04
	dc.b	nD6
	smpsAlterVol		$06
	;!@ dc.b	nC7, nRst, $33, $2A
	dc.b	nC7, nRst, $33, nRst, $2A
	smpsAlterVol		$EB
	dc.b	nBb5, $04, nRst, $02
	smpsAlterVol		$03
	dc.b	nBb5, $04, nRst, $02
	smpsAlterVol		$05
	;!@ dc.b	nBb5, nG6, $04, nRst, $33, $33, $19
	dc.b	nBb5, nG6, $04, nRst, $33, nRst, $33, nRst, $19
	smpsAlterVol		$F7
	dc.b	nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b	nC5, $04, nG4, $02, nF5, $01, nRst, $03
	dc.b	nE5, $01, nRst, $03, nC5, $06, nG4, $04
	dc.b	nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b	nBb4, $04, nF4, $02, nEb5, $01, nRst, $03
	dc.b	nD5, $01, nRst, $03, nBb4, $06, nC5, $04

MKW_Loop16:
	dc.b	nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b	nC5, $04, nG4, $02
	smpsLoop		$00, $02, MKW_Loop16, Target
	dc.b	nC5, $04, nEb5, $01, nRst, $03, nD5, $01
	dc.b	nRst, $03, nBb4, $04, nF4, $02, nEb5, $01
	dc.b	nRst, $03, nD5, $01, nRst, $03, nD5, $01
	dc.b	nBb5, nF5, nBb4, nF4, nBb4, nC6, nG5, nBb5
	dc.b	nG6, nF6
	smpsAlterVol		$01
	dc.b	nBb4
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$01
	dc.b	nG4
	smpsAlterVol		$02
	dc.b	nBb4
	smpsAlterVol		$F8
	dc.b	nC5
	smpsAlterVol		$0B
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nG6
	smpsAlterVol		$F2
	dc.b	nG4
	smpsAlterVol		$12
	dc.b	nBb4
	smpsAlterVol		$EE
	dc.b	nF5
	smpsAlterVol		$16
	dc.b	nG5
	smpsAlterVol		$02
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nG6
	smpsAlterVol		$E4
	dc.b	nE5, nRst, $03, nC5, $06, nG4, $04

MKW_Loop17:
	dc.b	nEb5, $01, nRst, $03, nD5, $01, nRst, $03
	dc.b	nBb4, $04, nF4, $02
	smpsLoop		$00, $02, MKW_Loop17, Target
	dc.b	nC5, $04

MKW_Loop18:
	dc.b	nF5, $01, nRst, $03, nE5, $01, nRst, $03
	dc.b	nC5, $04, nG4, $02
	smpsLoop		$00, $02, MKW_Loop18, Target
	dc.b	nC5, $04, nEb5, $01, nRst, $03, nD5, $01
	dc.b	nRst, $03, nBb4, $04, nF4, $02, nEb5, $01
	dc.b	nRst, $03, nD5, $01, nRst, $03, nG6, $02
	smpsAlterVol		$FB
	dc.b	nF5, $01, nG5
	smpsAlterVol		$05
	dc.b	nF6
	smpsAlterVol		$00
	dc.b	nG6
	smpsAlterVol		$00
	dc.b	nC7
	smpsAlterVol		$FB
	dc.b	nF6, nG6, nC7
	smpsAlterVol		$0D
	dc.b	nF5, nG5
	smpsAlterVol		$FB
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$04
	dc.b	nD6, nF6
	smpsAlterVol		$FF
	dc.b	nG6
	smpsAlterVol		$01
	dc.b	nC7
	smpsAlterVol		$02
	dc.b	nF5
	smpsAlterVol		$FF
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nC6
	smpsAlterVol		$02
	dc.b	nD6
	smpsAlterVol		$FD
	dc.b	nF6
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$08
	dc.b	nC7
	smpsAlterVol		$FB
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nD6
	smpsAlterVol		$02
	dc.b	nF6
	smpsAlterVol		$02
	dc.b	nG6
	smpsAlterVol		$02
	;!@ dc.b	nC7, $04, nRst, $33, $22
	dc.b	nC7, $04, nRst, $33, nRst, $22
	smpsAlterVol		$E5
	dc.b	nD6, $04, nRst, $02
	smpsAlterVol		$03
	dc.b	nD6, $04, nRst, $02
	smpsAlterVol		$05
	;!@ dc.b	nD6, $01, nG6, $04, nRst, $33, $33, $16
	dc.b	nD6, $01, nG6, $04, nRst, $33, nRst, $33, nRst, $16
	smpsAlterVol		$F3
	dc.b	nA4, $02, nD5, nRst, $03, nE5, $02, nRst
	dc.b	$04, nC5, $02, nRst, nF5, nRst, nF5, nRst
	dc.b	nE5, $06, nC5, $02, nD5, nEb5, nRst, nD5
	dc.b	nRst, $04, nBb4, $02, nRst, nC5, nRst, nF4
	dc.b	nRst, nC5, $06, nG5, $02, nRst, nF5, nRst
	dc.b	nE5, nRst, $08, nF5, $02, nRst, nF5, nRst
	dc.b	nE5, $04, nC5, $02, nD5, nEb5, $04, nRst
	dc.b	$02, nD5, nRst, $04, nBb4, $02, nRst, nC5
	dc.b	nRst, nF4, nRst, nC5, $04
	smpsAlterVol		$04
	dc.b	nG4, $01
	smpsAlterVol		$00
	dc.b	nBb4
	smpsAlterVol		$FC
	dc.b	nG6
	smpsAlterVol		$04
	dc.b	nG5, nBb5, nG6
	smpsAlterVol		$00
	dc.b	nG4
	smpsAlterVol		$01
	dc.b	nBb4
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nG6
	smpsAlterVol		$01
	dc.b	nG4
	smpsAlterVol		$02
	dc.b	nBb4
	smpsAlterVol		$01
	dc.b	nF5
	smpsAlterVol		$02
	dc.b	nG5
	smpsAlterVol		$F1
	dc.b	nC5
	smpsAlterVol		$12
	dc.b	nG6
	smpsAlterVol		$02
	dc.b	nG4
	smpsAlterVol		$02
	dc.b	nBb4
	smpsAlterVol		$EA
	dc.b	nF6
	smpsAlterVol		$1A
	dc.b	nG5
	smpsAlterVol		$02
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nG6
	smpsAlterVol		$E0
	dc.b	nF5, $02, nRst, nE6, $06, nC5, $02, nD5
	dc.b	nEb5, nRst, nD5, nRst, $04, nBb4, $02, nRst
	dc.b	nC5, nRst, nF4, nRst, nC5, $04, $02, nG5
	dc.b	nRst, nF5, nRst, nE5, nRst, $04, nC5, $02
	dc.b	nRst, nF5, nRst, nF5, nRst, nE5, $04, nC5
	dc.b	$02, nD5, nEb5, $04, nRst, $02, nD5, nEb5
	dc.b	nF5, nG5, nRst, nG5, nRst, $06, nG6, $02
	smpsAlterVol		$04
	dc.b	nF5, $01, nG5
	smpsAlterVol		$FC
	dc.b	nF6
	smpsAlterVol		$00
	dc.b	nG5
	smpsAlterVol		$00
	dc.b	nF6
	smpsAlterVol		$04
	dc.b	$01, nG6, nC7
	smpsAlterVol		$08
	dc.b	nF5, nG5
	smpsAlterVol		$FB
	dc.b	nBb5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$04
	dc.b	nD6, nF6
	smpsAlterVol		$FF
	dc.b	nG6, nC7
	smpsAlterVol		$03
	dc.b	nF5
	smpsAlterVol		$FF
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$04
	dc.b	nC6
	smpsAlterVol		$02
	dc.b	nD6
	smpsAlterVol		$FD
	dc.b	nF6
	smpsAlterVol		$01
	dc.b	nG6, nC7
	smpsAlterVol		$03
	dc.b	nF5
	smpsAlterVol		$01
	dc.b	nG5
	smpsAlterVol		$01
	dc.b	nBb5
	smpsAlterVol		$02
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nD6
	smpsAlterVol		$02
	dc.b	nF6
	smpsAlterVol		$02
	dc.b	nG6, nC7, $04, nRst, $01
	smpsAlterVol		$E6
	smpsJump		MKW_FM6, Target

MKW_PSG1:
	smpsPSGvoice	PSGVoi1
	;!@ dc.b	nRst

MKW_Loop19:
	;!@ dc.b	$20
	dc.b	nRst, $20
	smpsLoop		$00, $08, MKW_Loop19, Target
	dc.b	nC3, $01, nRst, $03, nC3, $01, $01, nRst
	dc.b	$02, nC3, $01, $01, nRst, nG3, nF3, nRst
	dc.b	nE3, nRst, $03, nC3, $01, nRst, $03, nG2
	dc.b	$01, nRst, $09

MKW_Loop20:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop20, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nRst, $03, nF2, $01, nRst, $09, nC3, $01
	dc.b	nRst, $03, nC3, $01, nBb2, nC3, nRst, nC3
	dc.b	nBb2, nC3, nF3, nF3, nRst, nE3, nRst, $03
	dc.b	nC3, $01, nRst, $03, nG2, $01, nRst, $09

MKW_Loop21:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop21, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nRst, $03, nF2, $01, nRst, $09, nC3, $01
	dc.b	nRst, $03, nC3, $01, $01, nRst, $02, nC3
	dc.b	$01, $01, nRst, nG3, nF3, nRst, nE3, nRst
	dc.b	$03, nC3, $01, nRst, $03, nG2, $01, nRst
	dc.b	$09

MKW_Loop22:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop22, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nRst, $03, nF2, $01, nRst, $09, nC3, $01
	dc.b	nRst, $03, nC3, $01, nBb2, nC3, nRst, nC3
	dc.b	nBb2, nC3, nF3, nF3, nRst, nE3, nRst, $03
	dc.b	nC3, $01, nRst, $03, nG2, $01, nRst, $09

MKW_Loop23:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop23, Target
	;!@ dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	;!@ dc.b	$01, nC3, nF3, nF2, nRst, $2C, $2C, $2C
	;!@ dc.b	$2C, $2C, $2D, nC3, $01, nRst, $03, nG2
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nBb2, $01, nC3, nF3, nF2, nRst, $2C, nRst, $2C, nRst, $2C
	dc.b	nRst, $2C, nRst, $2C, nRst, $2D, nC3, $01, nRst, $03, nG2
	;!@ dc.b	$01, nC3, nRst, $02, nC3, $01, $01, nRst
	dc.b	$01, nC3, nRst, $02, nC3, $01, nC3, $01, nRst
	dc.b	nG3, nF3, nRst, nE3, nRst, $03, nC3, $01
	dc.b	nRst, $03, nG2, $01, nRst, $09

MKW_Loop24:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop24, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nRst, $03, nF2, $01, nRst, $09, nC3, $01
	dc.b	nRst, $03, nC3, $01, nBb2, nC3, nRst, nC3
	dc.b	nBb2, nC3, nF3, nF3, nRst, nE3, nRst, $03
	dc.b	nC3, $01, nRst, $03, nG2, $01, nRst, $09

MKW_Loop25:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop25, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nRst, $03, nF2, $01, nRst, $09, nC3, $01
	;!@ dc.b	nRst, $03, nC3, $01, $01, nRst, nG3, nC3
	dc.b	nRst, $03, nC3, $01, nC3, $01, nRst, nG3, nC3
	dc.b	nC3, nRst, nG3, nF3, nRst, nE3, nRst, $03
	dc.b	nC3, $01, nRst, $03, nG2, $01, nRst, $09

MKW_Loop26:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop26, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	dc.b	nRst, $03, nF2, $01, nRst, $09, nC3, $01
	dc.b	nRst, $03, nC3, $01, nBb2, nC3, nRst, nC3
	dc.b	nBb2, nC3, nF3, nF3, nRst, nE3, nRst, $03
	dc.b	nC3, $01, nRst, $03, nG2, $01, nRst, $09

MKW_Loop27:
	dc.b	nBb2, $01, nRst, $03
	smpsLoop		$00, $03, MKW_Loop27, Target
	dc.b	nEb3, $01, nRst, nD3, nRst, $03, nBb2, $01
	;!@ dc.b	$01, nC3, nF3, nF2, nRst
	dc.b	nBb2, $01, nC3, nF3, nF2

MKW_Loop28:
	;! dc.b	$1D
	dc.b	nRst, $1D
	smpsLoop		$00, $09, MKW_Loop28, Target
	;!@ dc.b	$20
	dc.b	nRst, $20
	smpsJump		MKW_PSG1, Target

MKW_PSG2:
	smpsPSGvoice	PSGVoi2
	;!@ dc.b	nRst

MKW_Loop29:
	;!@ dc.b	$20
	dc.b	nRst, $20
	smpsLoop		$00, $08, MKW_Loop29, Target

MKW_Loop30:
	dc.b	nC2, $02, nG2, nF2, nG2
	smpsLoop		$00, $03, MKW_Loop30, Target
	smpsSetVol	$FF
	dc.b	nC3, nG2, nF2, nG2, nC2, nG2, nF2, nG2
	dc.b	nC2
	smpsSetVol	$FF
	dc.b	nG2, nF2, nG2
	smpsSetVol	$FF
	dc.b	nC2, nG2, nF2, nG2
	smpsSetVol	$FF
	dc.b	nC3, nG2, nF2, nG2
	smpsSetVol	$FF

MKW_Loop31:
	dc.b	nC2, nG2, nF2, nG2
	smpsLoop		$00, $03, MKW_Loop31, Target
	dc.b	nC3, nG2, nF2, nG2
	smpsLoop		$01, $06, MKW_Loop31, Target
	;!@ dc.b	nRst, $33, $03, nC3
	dc.b	nRst, $33, nRst, $03

MKW_Loop32:
	;!@ dc.b	$01
	dc.b	nC3, $01
	smpsLoop		$00, $0A, MKW_Loop32, Target
	;!@ dc.b	nRst, $33, $33, $10, nC3
	dc.b	nRst, $33, nRst, $33, nRst, $10

MKW_Loop33:
	;!@ dc.b	$01
	dc.b	nC3, $01
	smpsLoop		$00, $0A, MKW_Loop33, Target
	;!@ dc.b	nRst, $33, $0D
	dc.b	nRst, $33, nRst, $0D
	smpsSetVol	$05

MKW_Loop34:
	dc.b	nC2, $02, nG2, nF2, nG2
	smpsLoop		$00, $03, MKW_Loop34, Target
	smpsSetVol	$FF
	dc.b	nC3, nG2, nF2, nG2, nC2, nG2, nF2, nG2
	dc.b	nC2
	smpsSetVol	$FF
	dc.b	nG2, nF2, nG2
	smpsSetVol	$FF
	dc.b	nC2, nG2, nF2, nG2
	smpsSetVol	$FF
	dc.b	nC3, nG2, nF2, nG2
	smpsSetVol	$FF

MKW_Loop35:
	dc.b	nC2, nG2, nF2, nG2
	smpsLoop		$00, $03, MKW_Loop35, Target
	dc.b	nC3, nG2, nF2, nG2
	smpsLoop		$01, $06, MKW_Loop35, Target
	;!@ dc.b	nRst, $2F, $2F, $2F, $2F, $2F, $31
	dc.b	nRst, $2F, nRst, $2F, nRst, $2F, nRst, $2F, nRst, $2F, nRst, $31
	smpsSetVol	$05
	smpsJump		MKW_PSG2, Target

MKW_PSG3:
	smpsPSGvoice	PSGVoi3
	;!@ dc.b	nRst

MKW_Loop36:
	;!@ dc.b	$20
	dc.b	nRst, $20
	smpsLoop		$00, $08, MKW_Loop36, Target
	dc.b	nC1, $01, nRst, $03, nBb0, $01, nRst, $03
	dc.b	nBb0, $04, nRst, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b	nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nG0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nG0, $04, nC1
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nF0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nC1, $04, $01
	dc.b	nRst, $03, nC1, $01, nRst, $03, nBb0, $04
	dc.b	nRst, $02, nC1, $01, nRst, $03, nC1, $01
	dc.b	nRst, $03, nBb0, $06, nG0, $04, nC1, $01
	dc.b	nRst, $03, nC1, $01, nRst, $03, nBb0, $04
	dc.b	nF0, $02, nC1, $01, nRst, $03, nC1, $01
	dc.b	nRst, $03, nBb0, $06, nC1, $04, $01, nRst
	dc.b	$03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b	$02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b	$03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b	$03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b	$02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b	$03, nBb0, $06, nC1, $04
	smpsSetVol	$FB
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nG0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nG0, $04, nC1
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nF0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nC1, $04, $01
	dc.b	nRst, $03, nC1, $01, nRst, $03, nBb0, $04
	dc.b	nG0, $02, nC1, $01, nRst, $03, nC1, $01
	dc.b	nRst, $03, nBb0, $06, nG0, $04, nC1, $01
	dc.b	nRst, $03, nC1, $01, nRst, $03, nC1, $04

MKW_Loop37:
	dc.b	nF0, $02, nC1, $01, nRst, $03, nC1, $01
	;!@ dc.b	nRst, $03, nBb0, $06, nC1, $04, $01, nRst
	dc.b	nRst, $03, nBb0, $06, nC1, $04, nC1, $01, nRst
	dc.b	$03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b	$02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b	$03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b	$03, nC1, $01, nRst, $03, nBb0, $04
	smpsLoop		$00, $02, MKW_Loop37, Target
	dc.b	nF0, $02, nC1, $01, nRst, $03, nC1, $01
	dc.b	nRst, $03, nBb0, $04, nF0, $02, nBb0, $04
	smpsSetVol	$05
	dc.b	nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b	nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $06, nC1, $04
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nG0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nC1, $06, nG0, $04, nC1
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nF0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nC1, $04, $01
	dc.b	nRst, $03, nC1, $01, nRst, $03, nBb0, $04
	dc.b	nG0, $02, nC1, $01, nRst, $03, nC1, $01
	dc.b	nRst, $03, nBb0, $06, nG0, $04, nC1, $01
	dc.b	nRst, $03, nC1, $01, nRst, $03, nBb0, $04
	dc.b	nF0, $02, nC1, $01, nRst, $03, nC1, $01
	dc.b	nRst, $03, nBb0, $06, nC1, $04, $01, nRst
	dc.b	$03, nC1, $01, nRst, $03, nBb0, $04, nG0
	dc.b	$02, nC1, $01, nRst, $03, nBb0, $01, nRst
	dc.b	$03, nBb0, $06, nG0, $04, nC1, $01, nRst
	dc.b	$03, nC1, $01, nRst, $03, nBb0, $04, nF0
	dc.b	$02, nC1, $01, nRst, $03, nC1, $01, nRst
	dc.b	$03, nBb0, $06, nC1, $04
	smpsSetVol	$FB
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nG0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nG0, $04, nC1
	dc.b	$01, nRst, $03, nC1, $01, nRst, $03, nBb0
	dc.b	$04, nF0, $02, nC1, $01, nRst, $03, nC1
	dc.b	$01, nRst, $03, nBb0, $06, nC1

;!@ Issues within this loop?
MKW_Loop38:
	dc.b	$04, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b	nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nC1, $06
	smpsLoop		$00, $02, MKW_Loop38, Target
	dc.b	$04, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nG0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $06, nG0, $04
	dc.b	nC1, $01, nRst, $03, nC1, $01, nRst, $03
	dc.b	nBb0, $04, nF0, $02, nC1, $01, nRst, $03
	dc.b	nC1, $01, nRst, $03, nBb0, $04, nRst, $02
	dc.b	nBb0, $04, nRst, $1C
	;!@ smpsSetVol	$03
	smpsSetVol	$05
	smpsJump		MKW_PSG3, Target

MKW_PWM1:
	dc.b	pClosedHH, $02, $02, $02, $01, $01, $02, $02
	dc.b	$02, $01, $01, $02, $02, $01, $01, $02
	dc.b	$01, $01, $02, $02, $02

MKW_PWM1_Loop1:
	dc.b	$02, $02, $02, $01, $01, $02, $02, $02
	dc.b	$01, $01, $02, $02, $01, $01, $02, $01
	dc.b	$01, $02, $02, $02
	smpsLoop		$00, $17, MKW_PWM1_Loop1, Target
	dc.b	pEKick, pClosedHH, pFingSnap, pEKick, $01, pClosedHH, pEKick, $02
	dc.b	pClosedHH, pFingSnap, pEKick, $01, pClosedHH, pClosedHH, $02, $02
	dc.b	pESnare, $01, pClosedHH, pClosedHH, $02, pEKick, $01, pClosedHH
	dc.b	$05, $02, pEKick, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH, pClosedHH
	dc.b	$02, $02, pESnare, $01, pClosedHH, pESnare, pESnare, pESnare
	dc.b	pESnare, pESnare, $02, pAKick, pClosedHH, pEKick, pClosedHH, pFingSnap
	dc.b	pEKick, $01, pClosedHH, pEKick, $02, pClosedHH, pFingSnap, pEKick
	dc.b	$01, pClosedHH, pClosedHH, $02, $02, pESnare, $01, pClosedHH
	dc.b	pClosedHH, $02, pEKick, $01, pClosedHH, $03, pFingSnap, $02
	dc.b	pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, $01, $01, $02
	dc.b	$02, $02, $01, $01, $02, $02, $01, $01
	dc.b	pESnare, pFingSnap, pESnare, pESnare, pESnare, $02, $01, pEKick
	dc.b	pClosedHH, pESnare

MKW_PWM1_Loop2:
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	smpsLoop		$00, $02, MKW_PWM1_Loop2, Target
	dc.b	pClosedHH, $02, $02, pESnare, $01, pClosedHH, pClosedHH, $02
	dc.b	pEKick, $01, pClosedHH, $04, pEKick, $01, pClosedHH, pFingSnap

MKW_PWM1_Loop3:
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	smpsLoop		$00, $02, MKW_PWM1_Loop3, Target
	dc.b	pClosedHH, $02, $02, pESnare, $01, pClosedHH, pESnare, pESnare
	dc.b	pESnare, pESnare, pESnare, $02, pAKick, pClosedHH, pEKick, pClosedHH
	dc.b	pFingSnap, pEKick, $01, pClosedHH, pEKick, $02, pClosedHH, pFingSnap
	dc.b	pEKick, $01, pClosedHH, pClosedHH, $02, $02, pESnare, $01
	dc.b	pClosedHH, pClosedHH, $02, pEKick, $01, pClosedHH, $03, pFingSnap
	dc.b	$02, pEKick, $01, pFingSnap, pEKick, $02, pClosedHH, pClosedHH
	dc.b	pClosedHH, $01, $01, $02, $02, $02, $01, $01
	dc.b	$02, $02, $01, $01, pESnare, pFingSnap, pESnare, pESnare
	dc.b	pESnare, $02, $01, pEKick, pClosedHH, pESnare

MKW_PWM1_Loop4:
	dc.b	pEKick, $02, pClosedHH, pFingSnap, pEKick, $01, pClosedHH
	smpsLoop		$00, $02, MKW_PWM1_Loop4, Target
	dc.b	pClosedHH, $02, $02, pFingSnap, $01, pClosedHH, pClosedHH, $02
	dc.b	$01, $01

MKW_PWM1_Loop6:
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop5:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop5, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pEKick, $03, pClosedHH, $01
	smpsLoop		$01, $02, MKW_PWM1_Loop6, Target
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop7:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop7, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pAKick, pAKick, $02, $01
	dc.b	pEKick, pEKick, pFingSnap, $02, pClosedHH, pEKick, pClosedHH, pFingSnap
	dc.b	pEKick, $01, pClosedHH, pEKick, $02, pClosedHH, pFingSnap, pEKick
	dc.b	$01, pClosedHH, pClosedHH, $02, $02, pFingSnap, $01, pClosedHH
	dc.b	pClosedHH, $03, $01

MKW_PWM1_Loop9:
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop8:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop8, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pEKick, $03, pClosedHH, $01
	smpsLoop		$01, $02, MKW_PWM1_Loop9, Target
	dc.b	$02, pFingSnap, pClosedHH, pClosedHH

MKW_PWM1_Loop10:
	dc.b	pClosedHH, pFingSnap, pClosedHH, $01, $01, $02
	smpsLoop		$00, $02, MKW_PWM1_Loop10, Target
	dc.b	$02, pFingSnap, $01, pClosedHH, pAKick, pAKick, $02, $01
	dc.b	pEKick, pEKick, pFingSnap, $02, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, $01, $01, $02, $02, $02, $01, $01
	dc.b	$02, $02, $01, $01, $02, $01, $01, $02
	smpsJump		MKW_PWM1, Target
	
MKW_PWM2:
	dc.b	pClosedHH

MKW_PWM2_Loop1:
	dc.b	$02, $02, pOpenHH, pClosedHH
	smpsLoop		$00, $04, MKW_PWM2_Loop1, Target
	dc.b	$02, $02, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH

MKW_PWM2_Loop2:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop2, Target

MKW_PWM2_Loop3:
	dc.b	pOpenHH

MKW_PWM2_Loop4:
	dc.b	pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, MKW_PWM2_Loop3, Target
	dc.b	pClosedHH
	smpsLoop		$01, $02, MKW_PWM2_Loop4, Target

MKW_PWM2_Loop5:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop5, Target

MKW_PWM2_Loop7:
	dc.b	pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH

MKW_PWM2_Loop6:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop6, Target
	smpsLoop		$01, $05, MKW_PWM2_Loop7, Target

MKW_PWM2_Loop8:
	dc.b	pClosedHH
	smpsLoop		$00, $10, MKW_PWM2_Loop8, Target
	dc.b	pOpenHH, pClosedHH, pClosedHH, pClosedHH

MKW_PWM2_Loop10:
	dc.b	pOpenHH

MKW_PWM2_Loop9:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop9, Target
	smpsLoop		$01, $02, MKW_PWM2_Loop10, Target

MKW_PWM2_Loop11:
	dc.b	pClosedHH
	smpsLoop		$00, $08, MKW_PWM2_Loop11, Target
	smpsLoop		$02, $02, MKW_PWM2_Loop10, Target

MKW_PWM2_Loop13:
	dc.b	pOpenHH

MKW_PWM2_Loop12:
	dc.b	pClosedHH
	smpsLoop		$00, $0B, MKW_PWM2_Loop12, Target
	smpsLoop		$01, $02, MKW_PWM2_Loop13, Target
	dc.b	pClosedHH, pClosedHH, pClosedHH, pClosedHH

MKW_PWM2_Loop15:
	dc.b	pOpenHH

MKW_PWM2_Loop14:
	dc.b	pClosedHH
	smpsLoop		$00, $0F, MKW_PWM2_Loop14, Target
	smpsLoop		$01, $08, MKW_PWM2_Loop15, Target
	dc.b	pClosedHH, pClosedHH, pClosedHH, pClosedHH, pESnare

MKW_PWM2_Loop16:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop16, Target
	dc.b	pFingSnap

MKW_PWM2_Loop17:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop17, Target
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pFingSnap, pFingSnap
	dc.b	$04, pClosedHH

MKW_PWM2_Loop18:
	dc.b	$02
	smpsLoop		$00, $07, MKW_PWM2_Loop18, Target
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	$04, $02, $02, $02, pOpenHH, pClosedHH, pClosedHH, pESnare
	dc.b	pClosedHH, pClosedHH, pClosedHH, pEKick, pClosedHH, pClosedHH, pAKick, $01
	dc.b	$01, $04, pClosedHH

MKW_PWM2_Loop19:
	dc.b	$02
	smpsLoop		$00, $07, MKW_PWM2_Loop19, Target
	dc.b	pESnare

MKW_PWM2_Loop20:
	dc.b	pClosedHH
	smpsLoop		$00, $07, MKW_PWM2_Loop20, Target
	dc.b	pFingSnap, pClosedHH, $01, pESnare, pClosedHH, $02, $02, $02
	dc.b	$02, $02, $02, pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pFingSnap, pFingSnap, $04, pClosedHH

MKW_PWM2_Loop21:
	dc.b	$02
	smpsLoop		$00, $07, MKW_PWM2_Loop21, Target
	dc.b	pESnare, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH
	dc.b	$04, $01, pESnare, pClosedHH, $02, $02, pOpenHH, pClosedHH
	dc.b	pClosedHH, pESnare, pClosedHH, pClosedHH, pClosedHH, pEKick, pClosedHH, pClosedHH
	dc.b	pAKick, $01, $01, $04

MKW_PWM2_Loop22:
	dc.b	pClosedHH, $02, $02, $02, pESnare
	smpsLoop		$00, $04, MKW_PWM2_Loop22, Target

MKW_PWM2_Loop23:
	dc.b	pClosedHH
	smpsLoop		$00, $08, MKW_PWM2_Loop23, Target
	dc.b	pEKick, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pClosedHH, pESnare
	smpsLoop		$01, $02, MKW_PWM2_Loop23, Target

MKW_PWM2_Loop24:
	dc.b	pClosedHH
	smpsLoop		$00, $08, MKW_PWM2_Loop24, Target
	dc.b	pEKick, pClosedHH, pClosedHH, pClosedHH, pEKick, $01, $01, pAKick
	dc.b	pEKick, pAKick, pAKick, pEKick, $02
	smpsLoop		$02, $02, MKW_PWM2_Loop22, Target

MKW_PWM2_Loop25:
	dc.b	pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsLoop		$00, $03, MKW_PWM2_Loop25, Target
	dc.b	pClosedHH, pClosedHH, pClosedHH
	smpsJump		MKW_PWM2, Target
	
MKW_PWM3:
	dc.b	nRst, $04, pClosedHH, $08, $08, $08, $04
	dc.b	nRst, pClosedHH, $08, $08, pOpenHH, pOpenHH, pClosedHH, pClosedHH
	dc.b	pClosedHH

MKW_PWM3_Loop1:
	dc.b	pOpenHH, pClosedHH, pClosedHH, pOpenHH
	smpsLoop		$00, $06, MKW_PWM3_Loop1, Target
	dc.b	pOpenHH, pOpenHH, pOpenHH, pOpenHH, pOpenHH, pClosedHH

MKW_PWM3_Loop2:
	dc.b	pClosedHH, pOpenHH, pOpenHH, pClosedHH, pOpenHH, pOpenHH, pOpenHH, pOpenHH
	smpsLoop		$00, $02, MKW_PWM3_Loop2, Target
	dc.b	pClosedHH

MKW_PWM3_Loop3:
	dc.b	pOpenHH, pOpenHH, pClosedHH, pOpenHH
	smpsLoop		$00, $09, MKW_PWM3_Loop3, Target
	dc.b	pOpenHH, pOpenHH, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pEKick, pClosedHH
	dc.b	pClosedHH, pESnare, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pClosedHH, $01
	dc.b	pFingSnap, pAKick, pClosedHH, pAKick, $02, pFingSnap, $04, pClosedHH
	dc.b	pOpenHH, $02, pClosedHH, pClosedHH, $04, $02, $04, pEKick
	dc.b	$02, pClosedHH, pEKick, pClosedHH, pClosedHH, pESnare, $04, pClosedHH
	dc.b	pClosedHH, $02, pEKick, pEKick, pClosedHH, pOpenHH, pEKick, $04
	dc.b	pClosedHH, $02, pOpenHH, pEKick, $01, pESnare, pFingSnap, pClosedHH
	dc.b	$03, pAKick, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pEKick, pClosedHH
	dc.b	pClosedHH, pESnare, $04, pClosedHH, pOpenHH, $02, pClosedHH, pClosedHH
	dc.b	$04, $02, $04, pEKick, $02, pClosedHH, pClosedHH, $01
	dc.b	pFingSnap, pAKick, pClosedHH, pAKick, $02, pFingSnap, $04, pClosedHH
	dc.b	pOpenHH, $02, pClosedHH, pClosedHH, $04, $02, $04, pEKick
	dc.b	$02, pClosedHH, pEKick, pClosedHH, pClosedHH, pESnare, pClosedHH, pClosedHH
	dc.b	$04, $02, pEKick, pEKick, pClosedHH, pOpenHH, pEKick, $04
	dc.b	pClosedHH, $02, pOpenHH, pEKick, $01, pESnare, pFingSnap, pClosedHH
	dc.b	$03, pAKick, $04, pClosedHH, pClosedHH, $02, $02, $04
	dc.b	$02, $04, pEKick, $02, pClosedHH, pEKick

MKW_PWM3_Loop4:
	dc.b	pEKick, $04, pClosedHH, pEKick, pOpenHH, $02, pEKick, pEKick
	dc.b	$04, pESnare, $02, pClosedHH, $04, pEKick, $02, pOpenHH
	dc.b	pClosedHH
	smpsLoop		$00, $03, MKW_PWM3_Loop4, Target
	dc.b	pClosedHH, $01, $01, $02, pAKick, $04, pClosedHH, pClosedHH
	dc.b	$02, $02, $04, $02, $04, pEKick, $02, pClosedHH
	dc.b	pEKick, pClosedHH, $04, $04

MKW_PWM3_Loop5:
	dc.b	pEKick, pOpenHH, $02, pEKick, pEKick, $04, pESnare, $02
	dc.b	pClosedHH, $04, pEKick, $02, pOpenHH, pClosedHH, pEKick, $04
	dc.b	pClosedHH
	smpsLoop		$00, $02, MKW_PWM3_Loop5, Target
	dc.b	pEKick, pOpenHH, $02, pEKick, pEKick, $04, pESnare, $02
	dc.b	pClosedHH, $04, pEKick, $02, pOpenHH, pClosedHH, pClosedHH, $01
	dc.b	$01, $02, pAKick, $08, pClosedHH, pClosedHH, pClosedHH
	smpsJump		MKW_PWM3, Target
	
MKW_PWM4:
	dc.b	nRst, $20

MKW_PWM4_Loop1:
	dc.b	$25
	smpsLoop		$00, $14, MKW_PWM4_Loop1, Target
	dc.b	pClosedHH

MKW_PWM4_Loop2:
	dc.b	$08, $08, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, $02
	dc.b	pEKick, pEKick, $04, pESnare, $08, pClosedHH, pClosedHH, pOpenHH
	dc.b	pClosedHH, pESnare, pFingSnap, pFingSnap, $02, pAKick, pClosedHH, pClosedHH
	dc.b	pClosedHH, $08
	smpsLoop		$00, $02, MKW_PWM4_Loop2, Target
	dc.b	pOpenHH, pClosedHH, pClosedHH, pClosedHH

MKW_PWM4_Loop3:
	dc.b	pESnare, pOpenHH, pClosedHH, $04, $04, $08
	smpsLoop		$00, $02, MKW_PWM4_Loop3, Target
	dc.b	pESnare, pOpenHH, pClosedHH, $02, $02, pEKick, pClosedHH, pESnare
	dc.b	$08, pOpenHH, pClosedHH, pClosedHH, $04, pEKick, pClosedHH

MKW_PWM4_Loop4:
	dc.b	$08, pESnare, pOpenHH, pClosedHH, $04, $04
	smpsLoop		$00, $02, MKW_PWM4_Loop4, Target
	dc.b	$08, pESnare, pOpenHH, pClosedHH, $02, $02, pEKick, pClosedHH
	dc.b	pESnare, $20
	smpsJump		MKW_PWM4, Target

MKW_Patches:
	dc.b	$20
	dc.b	$60, $64, $60, $60,	$DF, $DF, $9F, $9F
	dc.b	$1F, $0A, $1F, $0A,	$1C, $0F, $09, $02
	dc.b	$25, $44, $15, $F5,	$2A, $29, $15, $02
	
	dc.b	$3A
	dc.b	$71, $07, $33, $01,	$9C, $96, $5D, $92
	dc.b	$04, $07, $04, $06,	$00, $01, $03, $00
	dc.b	$15, $12, $16, $B5,	$25, $34, $25, $06
	
	dc.b	$31
	dc.b	$30, $30, $30, $30,	$DF, $DF, $9F, $9F
	dc.b	$0C, $07, $0C, $09,	$09, $0A, $09, $08
	dc.b	$2F, $1F, $1F, $2F,	$0E, $48, $16, $00
	
	dc.b	$3D
	dc.b	$0F, $0F, $00, $00,	$08, $05, $45, $05
	dc.b	$00, $00, $12, $05,	$00, $0F, $0F, $0F
	dc.b	$00, $0D, $47, $07,	$00, $0F, $0E, $0F
	
	dc.b	$05
	dc.b	$36, $32, $7C, $72,	$1F, $5F, $1F, $1F
	dc.b	$07, $0B, $0A, $0B,	$00, $07, $07, $07
	dc.b	$59, $4E, $59, $4E,	$23, $0D, $23, $0C