Target	EQU	$40000

PSGVol	EQU $05
PSGModCtrl EQU $00
;PSGVoi1	EQU	$2B
;PSGVoi2	EQU	PSGVoi1
;PSGVoi3	EQU	$2D
PSGVoi1	EQU	$04
PSGVoi2	EQU	PSGVoi1
PSGVoi3	EQU	$06

PWMPitch EQU $00
PWMVolL	EQU	$09
PWMVolR	EQU	PWMVolL

	smpsHeaderVoice	SB_City_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $20
	smpsHeaderFM	SB_City_FM1, Target, $00, $10
	smpsHeaderFM	SB_City_FM2, Target, $00, $10
	smpsHeaderFM	SB_City_FM3, Target, $00, $1D
	smpsHeaderFM	SB_City_FM4, Target, $00, $10
	smpsHeaderFM	SB_City_FM5, Target, $00, $10
	smpsHeaderFM	SB_City_FM6, Target, $00, $0F
	smpsHeaderPSG	SB_City_PSG1, Target, PSGDelta, PSGVol, PSGModCtrl, PSGVoi1
	smpsHeaderPSG	SB_City_PSG2, Target, PSGDelta, PSGVol, PSGModCtrl, PSGVoi2
	smpsHeaderPSG	SB_City_PSG3, Target, $00, PSGVol, PSGModCtrl, PSGVoi3
	smpsHeaderPWM	SB_City_PWM1, Target, PWMPitch, PWMVolL, PWMVolR
	smpsHeaderPWM	SB_City_PWM2, Target, PWMPitch, PWMVolL, PWMVolR
	smpsHeaderPWM	SB_City_PWM3, Target, PWMPitch, PWMVolL, PWMVolR
	smpsHeaderPWM	SB_City_PWM4, Target, PWMPitch, PWMVolL, PWMVolR

SB_City_FM1:
	smpsFMvoice		$00

SB_City_PSG3:
SB_City_Jump1:
	smpsPan		panRight

SB_City_Loop1:
	dc.b	nC2, $06, nBb1, $09, nRst, $03, nC2, nRst
	dc.b	nG1, $06, nEb1, $09, nRst, $03, nEb1, nRst
	dc.b	nF1, $06, nFs1, $09, nRst, $03, nF1, nRst
	dc.b	nEb1, $06, nC1, $09, $03, $03, nRst
	smpsLoop		$00, $14, SB_City_Loop1, Target
	smpsJump		SB_City_Jump1, Target

SB_City_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	dc.b	nRst, $0C, nC4, $03, nRst, nC4, $06, nEb4
	dc.b	nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst
	dc.b	nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst
	dc.b	$0C, nC4, $03, nRst, nC4, $06, nEb4, nF4
	dc.b	nRst, nF4, $03, nFs4, nF4, $09, nRst, nEb4
	dc.b	nRst, $03, nG4, $09, nRst, $15, nC4, $03
	dc.b	nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03
	dc.b	nFs4, nF4, $09, nRst, nEb4, $0C, nRst, $12
	dc.b	nEb4, $03, nF4, $02, nEb4, $03, nRst, $04
	dc.b	nBb3, $06, nC4, nRst, nEb4, $09, nRst, $03
	dc.b	nF4, $06, nRst, $1E, nG4, $06, nRst, $7F
	dc.b	nRst, $7F, nRst, $7F, nRst, $1B

SB_City_Loop2:
	dc.b	nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst
	dc.b	nF4, $03, nFs4, nF4, $09, nRst, nEb4, nRst
	dc.b	$03, nF4, $06, nRst, nBb3, nRst, $0C, nC4
	dc.b	$03, nRst, nC4, $06, nEb4, nF4, nRst, nF4
	dc.b	$03, nFs4, nF4, $09, nRst, nEb4, nRst, $03
	dc.b	nG4, $09, nRst, $15, nC4, $03, nRst, nC4
	dc.b	$06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4
	dc.b	$09, nRst, nEb4, $0C, nRst, $12, nEb4, $03
	dc.b	nF4, $02, nEb4, $03, nRst, $04, nBb3, $06
	dc.b	nC4, nRst, nEb4, $09, nRst, $03, nF4, $06
	dc.b	nRst, $1E, nG4, $06, nRst, $18
	smpsLoop		$00, $02, SB_City_Loop2, Target
	dc.b	nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4
	dc.b	nRst, nF4, $03, nFs4, nF4, $0C, nRst, $06
	dc.b	nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b	$09, nBb4, $03, nRst, $06, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $30, nAb3, $03, nBb3, nB3
	dc.b	nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21
	dc.b	nEb4, $03, nF4, nG4, $09, nBb4, $03, nRst
	dc.b	$06, nF4, $03, nFs4, nF4, $0C, nRst, $24
	smpsJump		SB_City_FM2, Target

SB_City_FM3:
	smpsPan		panLeft
	smpsFMvoice		$01
	dc.b	nRst, $12, nC4, $03, nRst, nC4, $06, nEb4
	dc.b	nF4, nRst, nF4, $03, nFs4, nF4, $09, nRst
	dc.b	nEb4, nRst, $03, nF4, $06, nRst, nBb3, nRst
	dc.b	$0C, nC4, $03, nRst, nC4, $06, nEb4, nF4
	dc.b	nRst, nF4, $03, nFs4, nF4, $09, nRst, nEb4
	dc.b	nRst, $03, nG4, $09, nRst, $15, nC4, $03
	dc.b	nRst, nC4, $06, nEb4, nF4, nRst, nF4, $03
	dc.b	nFs4, nF4, $09, nRst, nEb4, $0C, nRst, $12
	dc.b	nEb4, $03, nF4, $02, nEb4, $03, nRst, $04
	dc.b	nBb3, $06, nC4, nRst, nEb4, $09, nRst, $03
	dc.b	nF4, $06, nRst, $1E, nG4, $06, nRst, $7F
	dc.b	nRst, $7F, nRst, $7F, nRst, $1B

SB_City_Loop3:
	dc.b	nC4, $03, nRst, nC4, $06, nEb4, nF4, nRst
	dc.b	nF4, $03, nFs4, nF4, $09, nRst, nEb4, nRst
	dc.b	$03, nF4, $06, nRst, nBb3, nRst, $0C, nC4
	dc.b	$03, nRst, nC4, $06, nEb4, nF4, nRst, nF4
	dc.b	$03, nFs4, nF4, $09, nRst, nEb4, nRst, $03
	dc.b	nG4, $09, nRst, $15, nC4, $03, nRst, nC4
	dc.b	$06, nEb4, nF4, nRst, nF4, $03, nFs4, nF4
	dc.b	$09, nRst, nEb4, $0C, nRst, $12, nEb4, $03
	dc.b	nF4, $02, nEb4, $03, nRst, $04, nBb3, $06
	dc.b	nC4, nRst, nEb4, $09, nRst, $03, nF4, $06
	dc.b	nRst, $1E, nG4, $06, nRst, $18
	smpsLoop		$00, $02, SB_City_Loop3, Target
	dc.b	nAb3, $03, nBb3, nB3, nC4, nEb4, $06, nF4
	dc.b	nRst, nF4, $03, nFs4, nF4, $0C, nRst, $06
	dc.b	nEb4, $0F, nRst, $21, nEb4, $03, nF4, nG4
	dc.b	$09, nBb4, $03, nRst, $06, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $30, nAb3, $03, nBb3, nB3
	dc.b	nC4, nEb4, $06, nF4, nRst, nF4, $03, nFs4
	dc.b	nF4, $0C, nRst, $06, nEb4, $0F, nRst, $21
	dc.b	nEb4, $03, nF4, nG4, $09, nBb4, $03, nRst
	dc.b	$06, nF4, $03, nFs4, nF4, $0C, nRst, $1E
	smpsJump		SB_City_FM3, Target

SB_City_FM4:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03
	dc.b	nC3, $06, nRst, nBb2, nC3, nRst, nC3, nRst
	dc.b	nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst
	dc.b	nBb2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst
	dc.b	nBb2, nC3, nBb2, nRst, nFs2, nRst, nFs2, nRst
	dc.b	nFs2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst
	dc.b	nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3, nRst
	dc.b	nBb2, nC3, nRst, nBb2, nC3, nRst, nC3, nRst
	dc.b	nBb2, nC3, nBb2, nRst, nF3, nRst, nEb3, nRst
	dc.b	$0C, nC3, $06, nRst, nBb2, nC3, nRst, nC3
	dc.b	nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3
	dc.b	nRst, nBb2, nC3, nRst, nBb2, nC3, nRst, nC3
	dc.b	nRst, nBb2, nC3, nBb2, nRst, nFs2, nRst, nFs2
	dc.b	nRst, nFs2, nC3, nRst, nBb2, nC3, nRst, nC3
	dc.b	nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst, nEb3
	dc.b	nRst, nBb2, nC3, nRst, nBb2, nC3, nRst, nC3
	dc.b	nRst, nBb2, nC3, nBb2, nRst, nFs2, nRst, nEb2
	dc.b	nRst, $0C, nC3, $06, nRst, nBb2, nC3, nRst
	dc.b	nC3, nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst
	dc.b	nEb3, nRst, nBb2, nC3, nRst, nBb2, nC3, nRst
	dc.b	nC3, nRst, nBb2, nC3, nBb2, nRst, nFs2, nRst
	dc.b	nFs2, nRst, nFs2, nC3, nRst, nBb2, nC3, nRst
	dc.b	nC3, nRst, nBb2, nC3, nRst, nBb2, nEb3, nRst
	dc.b	nEb3, nRst, nBb2, nC3, nRst, nBb2, nC3, nRst
	dc.b	nC3, nRst, nBb2, nC3, nBb2, nRst, nF3, nRst
	dc.b	nEb3, nRst, $7F, nRst, $7F, nRst, $7F, nRst
	dc.b	$0F
	smpsJump		SB_City_FM4, Target

SB_City_FM5:
	smpsPan		panLeft
	smpsFMvoice		$03
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03

SB_City_Loop4:
	dc.b	nC2, $06, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b	nBb1, nC2, nRst, nBb1, nEb2, nRst, nEb2, nRst
	dc.b	nBb1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b	nBb1, nC2, nBb1, nRst, nFs1, nRst, nFs1, nRst
	dc.b	nFs1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b	nBb1, nC2, nRst, nBb1, nEb2, nRst, nEb2, nRst
	dc.b	nBb1, nC2, nRst, nBb1, nC2, nRst, nC2, nRst
	dc.b	nBb1, nC2, nBb1, nRst, nF2, nRst, nEb2, nRst
	dc.b	$7F, nRst, $7F, nRst, $7F, nRst, $0F
	smpsLoop		$00, $02, SB_City_Loop4, Target
	smpsJump		SB_City_FM5, Target

SB_City_FM6:
	smpsFMvoice		$04

SB_City_Jump2:
	smpsPan		panCenter
	dc.b	nG4, $21, nRst, $0F, nF4, $21, nRst, $0F
	dc.b	nBb4, $15, nRst, $03, nG4, $15, nRst, $03
	dc.b	nEb4, $27, nRst, $09, nG4, $21, nRst, $0F
	dc.b	nF4, $21, nRst, $0F, nBb4, $15, nRst, $03
	dc.b	nG4, $15, nRst, $03, nEb4, $27, nRst, $57
	dc.b	nF3, $03, nG3, nBb3, nC4, nEb4, nRst, nEb4
	dc.b	$06, nF4, $2A, nRst, $1E, nF4, $03, nFs4
	dc.b	nF4, nEb4, nBb3, nRst, nBb3, $2A, nF4, $03
	dc.b	nE4, nEb4, $1E, nD4, $03, nEb4, nD4, nCs4
	dc.b	nG3, nRst, nC4, $27, nRst, $03, nG3, nFs3
	dc.b	nF3, $06, nG3, nBb3, nC4, nEb4, nF4, nRst
	dc.b	$0C

SB_City_Loop5:
	dc.b	nG4, $21, nRst, $0F, nF4, $21, nRst, $0F
	dc.b	nBb4, $15, nRst, $03, nG4, $15, nRst, $03
	dc.b	nEb4, $27, nRst, $09
	smpsLoop		$00, $04, SB_City_Loop5, Target

SB_City_Loop6:
	dc.b	nG4, $03, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol		$04
	dc.b	nG4, $03, nRst
	smpsAlterVol		$05
	dc.b	nG4, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol		$04
	dc.b	nG4, $03, nRst, nG4, nRst, $06
	smpsAlterVol		$0A
	dc.b	nG4, $03, nRst, $06, nG4, $03, nRst
	smpsAlterVol		$14
	dc.b	nG4, nRst, $06, nG4, $03, nRst, $06
	smpsAlterVol		$15
	dc.b	nG4, $03, nRst
	smpsAlterVol		$C0
	dc.b	nG4, nRst, nG4, nRst, $06, nG4, $03, nRst
	dc.b	$06
	smpsAlterVol		$09
	dc.b	nG4, $03, nRst, $06
	smpsAlterVol		$0B
	dc.b	nG4, $03, nRst, $06
	smpsAlterVol		$06
	dc.b	nG4, $03, nRst, nG4, nRst
	smpsAlterVol		$0C
	dc.b	nG4, nRst, nG4, nRst, $06
	smpsAlterVol		$0B
	dc.b	nG4, $03, nRst, $06, nG4, $03, nRst, nG4
	dc.b	nRst, nG4, nRst
	smpsAlterVol		$CF
	smpsLoop		$00, $02, SB_City_Loop6, Target
	smpsJump		SB_City_Jump2, Target

SB_City_PSG1:
	dc.b	nEb1, $27, nRst, $09, nEb1, $24, nRst, $0C
	dc.b	nG1, $12, nRst, $06, nD1, $15, nRst, $03
	dc.b	nCs1, $24, nRst, $0C, nEb1, $27, nRst, $09
	dc.b	nEb1, $24, nRst, $0C, nG1, $12, nRst, $06
	dc.b	nD1, $15, nRst, $03, nCs1, $24, nRst, $6C
	dc.b	nBb0, $06, nC1, $33, nRst, $27, nG0, $2D
	dc.b	nRst, $03, nC1, $21, nRst, $0F, nBb0, $2A
	dc.b	nRst, $24, nEb1, $06

SB_City_Loop7:
	dc.b	nRst, $0C, nEb1, $27, nRst, $09, nEb1, $24
	dc.b	nRst, $0C, nG1, $12, nRst, $06, nD1, $15
	dc.b	nRst, $03, nCs1, $24
	smpsLoop		$00, $04, SB_City_Loop7, Target
	dc.b	nRst, $0C

SB_City_Loop8:
	dc.b	nEb1, $03, nRst, $06, nEb1, $03, nRst, $06
	dc.b	nEb1, $03, nRst
	smpsSetVol	$03
	dc.b	nEb1, nRst, $06, nEb1, $03, nRst, $06
	smpsSetVol	$02
	dc.b	nEb1, $03, nRst, nEb1, nRst, $06
	smpsSetVol	$04
	dc.b	nEb1, $03, nRst, $06, nEb1, $03, nRst
	smpsSetVol	$01
	dc.b	nEb1, nRst, $06, nEb1, $03, nRst, $0C
	smpsSetVol	$F6
	dc.b	nCs1, $03, nRst, nCs1, nRst, $06, nCs1, $03
	dc.b	nRst, $06
	smpsSetVol	$03
	dc.b	nCs1, $03, nRst, $06
	smpsSetVol	$05
	dc.b	nCs1, $03, nRst, $06
	smpsSetVol	$01
	dc.b	nCs1, $03, nRst, nCs1, nRst
	smpsSetVol	$01
	dc.b	nCs1, nRst, nRst, nRst, $15, nRst, $03, nRst
	dc.b	$03, nRst, $03, nRst, $03
	smpsSetVol	$F6
	smpsLoop		$00, $02, SB_City_Loop8, Target
	smpsJump		SB_City_PSG1, Target

SB_City_PSG2:
	dc.b	nAb0, $2A, nRst, $06, nBb0, $27, nRst, $09
	dc.b	nC1, $15, nRst, $03, nBb0, $12, nRst, $06
	dc.b	nBb0, $27, nRst, $09, nAb0, $2A, nRst, $06
	dc.b	nBb0, $27, nRst, $09, nC1, $15, nRst, $03
	dc.b	nBb0, $12, nRst, $06, nBb0, $27, nRst, $69
	dc.b	nG0, $24, nRst, $3C, nC1, $30, nG0, $24
	dc.b	nRst, $0C, nG0, $2A, nRst, $24, nC1, $06
	dc.b	nRst, $0C, nAb0, $2A, nRst, $06, nBb0, $27
	dc.b	nRst, $09, nC1, $15, nRst, $03, nBb0, $12
	dc.b	nRst, $06, nBb0, $27, nRst, $09, nAb0, $2A
	dc.b	nRst, $06, nBb0, $27, nRst, $09, nC1, $15
	dc.b	nRst, $03, nBb0, $12, nRst, $06, nBb0, $27
	dc.b	nRst, $7F, nRst, $1A, nBb0, $27, nRst, $7F
	dc.b	nRst, $1A, nBb0, $27, nRst, $09

SB_City_Loop9:
	dc.b	nAb0, $03, nRst, $06, nAb0, $03, nRst, $06
	dc.b	nAb0, $03, nRst
	smpsSetVol	$03
	dc.b	nAb0, nRst, $06, nAb0, $03, nRst, $06
	smpsSetVol	$02
	dc.b	nAb0, $03, nRst, nAb0, nRst, $06
	smpsSetVol	$04
	dc.b	nAb0, $03, nRst, $06, nAb0, $03, nRst
	smpsSetVol	$01
	dc.b	nAb0, nRst, $06, nAb0, $03, nRst, $0C
	smpsSetVol	$F6
	dc.b	nAb0, $03, nRst, nAb0, nRst, $06, nAb0, $03
	dc.b	nRst, $06
	smpsSetVol	$03
	dc.b	nAb0, $03, nRst, $06
	smpsSetVol	$05
	dc.b	nAb0, $03, nRst, $06
	smpsSetVol	$01
	dc.b	nAb0, $03, nRst, nAb0, nRst
	smpsSetVol	$01
	dc.b	nAb0, nRst, nRst, nRst, $15, nRst, $03, nRst
	dc.b	$03, nRst, $03, nRst, $03
	smpsSetVol	$F6
	smpsLoop		$00, $02, SB_City_Loop9, Target
	smpsJump		SB_City_PSG2, Target

;!@
;SB_City_PSG3:	
	;dc.b	nC0, $06, $09, nRst

;SB_City_Loop10:
	;dc.b	$03, nC0, nRst
	;smpsLoop		$00, $03, SB_City_PSG3, Target

;SB_City_Loop11:
	;dc.b	nC0, $06, $09
	;smpsLoop		$01, $02, SB_City_Loop10, Target
	;dc.b	nRst, $03, nC0, nRst
	;smpsLoop		$02, $13, SB_City_Loop11, Target
	;dc.b	nC0, $06, $09, $03, $03, nRst
	;smpsJump		SB_City_PSG3, Target
	
SB_City_PWM1:
	dc.b	pEKick, $03, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pClosedHH, nRst, pOpenHH
	dc.b	pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pEKick, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pClosedHH
	dc.b	pClap, pOpenHH, nRst, pClap, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F2
	dc.b	pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick

SB_City_PWM1_Loop03:
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH
	smpsLoop            $00, $02, SB_City_PWM1_Loop03, Target
	dc.b	pClosedHH, pOpenHH, pClosedHH, pClosedHH

SB_City_PWM1_Loop04:
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick
	smpsLoop            $00, $03, SB_City_PWM1_Loop04, Target
	dc.b	pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pEKick, pClosedHH, pEKick
	dc.b	pClosedHH, pEKick, pClosedHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, nRst, $0C, pEHiHat, $03
	dc.b	nRst, $0C, pEHiHat, $03, nRst
	smpsAlterVol        $08
	dc.b	pESnare
	smpsAlterVol        $FD
	dc.b	pClap, nRst, $09
	smpsAlterVol        $FB
	dc.b	pEKick, $03, pClosedHH, pOpenHH, pClosedHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA

SB_City_PWM1_Loop05:
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	smpsLoop            $00, $03, SB_City_PWM1_Loop05, Target
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4

SB_City_PWM1_Loop06:
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pEKick
	smpsLoop            $00, $02, SB_City_PWM1_Loop06, Target
	dc.b	pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $05
	dc.b	pEHiHat
	smpsAlterVol        $FB
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F7
	dc.b	pEHiHat
	smpsAlterVol        $FB
	dc.b	pClosedHH
	smpsAlterVol        $05
	dc.b	pEKick
	smpsAlterVol        $FB
	dc.b	pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4

SB_City_PWM1_Loop07:
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH
	smpsLoop            $00, $02, SB_City_PWM1_Loop07, Target
	dc.b	pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F2
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH

SB_City_PWM1_Loop08:
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick
	smpsLoop            $00, $02, SB_City_PWM1_Loop08, Target
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick

SB_City_PWM1_Loop09:
	dc.b	pClosedHH, pEKick, pClosedHH, pOpenHH
	smpsLoop            $00, $03, SB_City_PWM1_Loop09, Target
	dc.b	pClosedHH, pClosedHH

SB_City_PWM1_Loop0A:
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick
	smpsLoop            $00, $03, SB_City_PWM1_Loop0A, Target
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $05
	dc.b	pEHiHat
	smpsAlterVol        $FB
	dc.b	pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F2
	dc.b	pEKick, pClosedHH, pEHiHat, pEKick, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap
	dc.b	pClosedHH, nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pEKick, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, pClap, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH
	smpsAlterVol        $07
	dc.b	pClap
	smpsAlterVol        $F9
	dc.b	pClosedHH
	smpsAlterVol        $07
	dc.b	pClap, pClap, nRst
	smpsAlterVol        $01
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH
	smpsJump            SB_City_PWM1, Target

SB_City_PWM2:
	dc.b	pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $15
	dc.b	pClosedHH, $03

SB_City_PWM2_Loop00:
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15, pEKick, $03
	smpsLoop            $00, $02, SB_City_PWM2_Loop00, Target
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $0F, pOpenHH, $03
	dc.b	nRst, pClosedHH, nRst, $09, pClap, $03, nRst, $09, pClosedHH, $03, nRst, $15
	dc.b	pClosedHH, $03, nRst, $09, pClap, $03, nRst, $09, pEKick, $03, nRst, $15
	dc.b	pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15
	dc.b	pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $08
	dc.b	pClosedHH, $03, nRst
	smpsAlterVol        $F8
	dc.b	pEKick, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick
	dc.b	$03, nRst, $06, pClosedHH, $03, $03, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06, pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pEKick, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pEKick, nRst, $09, pEKick, $03, nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH
	dc.b	$03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pEKick, nRst, $09, pEKick, $03

SB_City_PWM2_Loop01:
	dc.b	nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH
	smpsLoop            $00, $02, SB_City_PWM2_Loop01, Target
	dc.b	nRst, pOpenHH, nRst, pEKick, nRst, $09
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pEKick, nRst, $06, pClosedHH
	dc.b	$03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pOpenHH, nRst, $0F
	smpsAlterVol        $05
	dc.b	pClap, $03, nRst, $0C
	smpsAlterVol        $03
	dc.b	pESnare, $03, nRst
	smpsAlterVol        $F8
	dc.b	pEHiHat
	smpsAlterVol        $08
	dc.b	pESnare, nRst, $09
	smpsAlterVol        $F8
	dc.b	pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $06, pClosedHH, $03, pEKick, nRst
	dc.b	$06, pClosedHH, $03, $03, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, $09, pClosedHH, $03, nRst
	dc.b	$09, pEKick, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, $06, pClosedHH, $03
	dc.b	$03, nRst, $09, pEKick, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick
	dc.b	$03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pEKick, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst
	dc.b	pEKick, nRst
	smpsAlterVol        $06
	dc.b	pEHiHat, nRst, $06
	smpsAlterVol        $06
	dc.b	pESnare, $03
	smpsAlterVol        $F4
	dc.b	pEKick, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03
	smpsAlterVol        $F4
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, $03, nRst, $06
	smpsAlterVol        $05
	dc.b	pEHiHat, $03
	smpsAlterVol        $FB
	dc.b	pEKick, nRst, pOpenHH, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06, pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pEKick, nRst, $06, pClosedHH, $03, pEKick, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, $09, pClosedHH, $03, nRst
	dc.b	$09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06, pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03
	smpsAlterVol        $F4
	dc.b	pEKick, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pClosedHH, nRst, pEKick, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $06, pESnare, $03
	smpsAlterVol        $F4
	dc.b	pClosedHH, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pEKick, nRst, pEKick, nRst, pClosedHH, nRst, pEKick, nRst
	smpsAlterVol        $0C
	dc.b	pESnare, nRst, $06, pESnare, $03
	smpsAlterVol        $F4
	dc.b	pClosedHH, nRst, $06, pClosedHH, $03, pEKick, nRst, pEKick, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, pEKick, nRst, $06, pClosedHH, $03, $03, nRst, pOpenHH, pESnare, pEKick
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $15, pClosedHH, $03
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15, pEKick, $03
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15, pClosedHH, $03
	dc.b	nRst, $09, pClap, $03, nRst, $09, pClosedHH, $03, nRst, $0F, pOpenHH, $03
	dc.b	nRst, $0F, pClosedHH, $03

SB_City_PWM2_Loop02:
	dc.b	nRst, $2D, pClap, $03
	smpsLoop            $00, $03, SB_City_PWM2_Loop02, Target
	dc.b	nRst, $0F, pOpenHH, $03, nRst, pClap, nRst, $09
	smpsJump            SB_City_PWM2, Target

SB_City_PWM3:
	dc.b	nRst, $7F, $7F, $7F, $0F, pEKick, $03, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $18, pEKick, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $12, pEHiHat, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $06, pESnare, $03, nRst, $09, pESnare, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	pEKick, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $09, pESnare, $03, nRst, $18
	smpsAlterVol        $FC
	dc.b	pESnare, $03, nRst, $0C
	smpsAlterVol        $FD
	dc.b	pClap, $03, nRst, pClap
	smpsAlterVol        $FB
	dc.b	pEHiHat, nRst, $15
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $09, pESnare, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	pEKick, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $FE
	dc.b	pESnare, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pEHiHat, $03, nRst, $12
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $18, pEKick, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09, pEHiHat, $03, nRst, $18
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $06
	smpsAlterVol        $F7
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $FB
	dc.b	pClosedHH, $03
	smpsAlterVol        $05
	dc.b	pESnare, nRst, $15
	smpsAlterVol        $FB
	dc.b	pEKick, $03, nRst, $06, pClosedHH, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pEKick, $03, nRst, $06, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $18
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $12
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $09
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09, pEHiHat, $03, nRst, $18
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $06
	smpsAlterVol        $F7
	dc.b	pESnare, $03, nRst, $09, pEHiHat, $03, $03, nRst
	smpsAlterVol        $FB
	dc.b	pEKick, pEHiHat, nRst, $7F, $7F, $7F, $03
	smpsJump            SB_City_PWM3, Target

SB_City_PWM4:
	dc.b	nRst, $7F, $7F, $7F, $0F, pESnare, $03, nRst, $2D
	smpsAlterVol        $FA
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $02
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	pEHiHat, $03, nRst, $2D, pEHiHat, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $5D
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F2
	dc.b	pEKick, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $FE
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $15, pClosedHH, $03, nRst, $15, pClosedHH, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $2D, pClosedHH, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $15
	smpsAlterVol        $05
	dc.b	pESnare, $03, nRst
	smpsAlterVol        $FB
	dc.b	pESnare, pClosedHH, nRst, $7F, $7F, $7F, $03
	smpsAlterVol        $0C
	smpsJump            SB_City_PWM4, Target

SB_City_Patches:
	;Voice $00
	dc.b	$38
	dc.b	$72, $13, $71, $11,	$D1, $52, $14, $14
	dc.b	$01, $07, $01, $01,	$00, $00, $00, $00
	dc.b	$FF, $FF, $FF, $FF,	$1E, $1E, $1E, $80

	;Voice $01
	dc.b	$2A
	dc.b	$01, $08, $06, $04,	$53, $1F, $1F, $50
	dc.b	$12, $14, $11, $1F,	$00, $00, $00, $00
	dc.b	$29, $15, $36, $0B,	$17, $33, $1C, $80

	;Voice $02
	dc.b	$3B
	dc.b	$3E, $42, $41, $33,	$DE, $14, $1E, $14
	dc.b	$14, $0F, $0F, $00,	$01, $00, $00, $00
	dc.b	$36, $25, $26, $29,	$14, $13, $0A, $80

	;Voice $03
	dc.b	$3A
	dc.b	$01, $07, $31, $71,	$8E, $8E, $8D, $53
	dc.b	$0E, $0E, $0E, $06,	$00, $00, $00, $00
	dc.b	$1F, $FF, $1F, $2F,	$18, $28, $27, $80

	;Voice $04
	dc.b	$3A
	dc.b	$71, $0C, $33, $01,	$1C, $16, $1D, $1F
	dc.b	$04, $06, $04, $08,	$00, $01, $03, $00
	dc.b	$16, $17, $16, $A6,	$25, $2F, $25, $80