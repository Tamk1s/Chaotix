Target	EQU	$4180B

FMPitch	EQU	$00
FMVol1	EQU	$13
FMVol2	EQU	$0F
PSGVol	EQU	$04
PSGVoi	EQU	$00
PSGNull	EQU	$00
PWMPitch	EQU	$00
PWMVol	EQU	$CC

	smpsHeaderVoice	S2Cabar_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $55	
	smpsHeaderFM	S2Cabar_FM1, Target, FMPitch, FMVol1
	smpsHeaderFM	S2Cabar_FM2, Target, FMPitch, FMVol1
	smpsHeaderFM	S2Cabar_FM3, Target, FMPitch, FMVol2
	smpsHeaderFM	S2Cabar_FM4, Target, FMPitch, FMVol1
	smpsHeaderFM	S2Cabar_FM5, Target, FMPitch, FMVol1
	smpsHeaderFM	S2Cabar_NOP, Target, FMPitch, FMVol2
	smpsHeaderPSG	S2Cabar_PSG1, Target, PSGDelta, PSGVol, PSGNull, PSGVoi
	smpsHeaderPSG	S2Cabar_PSG2, Target, PSGDelta, PSGVol, PSGNull, PSGVoi
	smpsHeaderPSG	S2Cabar_PSG3, Target, PSGDelta, PSGVol, PSGNull, PSGVoi
	smpsHeaderPWM	S2Cabar_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM	S2Cabar_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	S2Cabar_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	S2Cabar_NOP, Target, PWMPitch, PWMVol

S2Cabar_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00

S2Cabar_Loop1:
	dc.b nA2, $0C, nC3, nE2, nC3
	smpsLoop		$00, $04, S2Cabar_Loop1, Target
	dc.b nD3, nF3, nA2, nF3, nD3, nF3, nA2, nF3
	dc.b nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop2:
	dc.b nA2, nC3, nE2, nC3
	smpsLoop		$00, $06, S2Cabar_Loop2, Target
	dc.b nD3, nF3, nA2, nF3, nD3, nF3, nA2, nF3

S2Cabar_Loop4:
	dc.b nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop3:
	dc.b nA2, nC3, nE2, nC3
	smpsLoop		$00, $04, S2Cabar_Loop3, Target
	dc.b nC3, nE3, nG2, nE3, nC3, nE3, nAb2, $06
	dc.b nA2, nBb2, nB2, nF3, $0C, nAb3, nC3, nAb3
	dc.b nF3, nAb3, nC3, nAb3
	smpsLoop		$01, $02, S2Cabar_Loop4, Target

S2Cabar_Loop6:
	dc.b nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop5:
	dc.b nA2, nC3, nE2, nC3
	smpsLoop		$00, $06, S2Cabar_Loop5, Target
	dc.b nD3, nF3, nA2, nF3, nD3, nF3, nA2, nF3
	smpsLoop		$01, $02, S2Cabar_Loop6, Target

S2Cabar_Loo$8:
	dc.b nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop7:
	dc.b nA2, nC3, nE2, nC3
	smpsLoop		$00, $04, S2Cabar_Loop7, Target
	dc.b nC3, nE3, nG2, nE3, nC3, nE3, nAb2, $06
	dc.b nA2, nBb2, nB2, nF3, $0C, nAb3, nC3, nAb3
	dc.b nF3, nAb3, nC3, nAb3
	smpsLoop		$01, $02, S2Cabar_Loo$8, Target
	dc.b nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3
	dc.b nA2, nC3, nE2, nC3, nA2, nC3, nE2, nC3
	smpsPan		panCenter
	smpsFMvoice		$00
	;!@ smpsStop
	smpsJump	S2Cabar_FM1, Target

S2Cabar_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01

S2Cabar_Loo$9:
	dc.b nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F
	dc.b nC5, $0C, nRst, nC5, $03, nRst, nC5, nRst
	dc.b $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop		$00, $03, S2Cabar_Loo$9, Target
	dc.b nRst, $0C, nB4, $03, nRst, nB4, nRst, $0F
	dc.b nB4, $0C, nRst, nB4, $03, nRst, nB4, nRst
	dc.b $09, nB4, $03, nRst, nB4, nRst, nB4, nB4
	dc.b nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F
	dc.b nC5, $0C, nRst, nC5, $03, nRst, nC5, nRst
	dc.b $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop		$01, $02, S2Cabar_Loo$9, Target

S2Cabar_Loop10:
	dc.b nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F
	dc.b nC5, $0C, nRst, nC5, $03, nRst, nC5, nRst
	dc.b $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	dc.b nRst, $0C, nE5, $03, nRst, nE5, nRst, $0F
	dc.b nE5, $0C, nRst, nE5, $03, nRst, nE5, nRst
	dc.b $09, nE5, $03, nRst, nE5, nRst, nE5, nE5
	dc.b nRst, $0C, nF4, $03, nRst, nF4, nRst, $0F
	dc.b nF4, $0C, nRst, nF4, $03, nRst, nF4, nRst
	dc.b $09, nF4, $03, nRst, nF4, nRst, nF4, nF4
	dc.b nRst, $0C, nB4, $03, nRst, nB4, nRst, $0F
	dc.b nB4, $0C, nRst, nB4, $03, nRst, nB4, nRst
	dc.b $09, nB4, $03, nRst, nB4, nRst, nB4, nB4
	dc.b nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F
	dc.b nC5, $0C, nRst, nC5, $03, nRst, nC5, nRst
	dc.b $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop		$00, $02, S2Cabar_Loop10, Target
	smpsLoop		$02, $02, S2Cabar_Loo$9, Target
	smpsPan		panCenter
	smpsFMvoice		$01
	;!@ smpsStop
	smpsJump	S2Cabar_FM2, Target

S2Cabar_FM3:
	smpsFMvoice		$02

S2Cabar_Loop11:
	smpsPan		panRight
	dc.b nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F
	dc.b nA4, $0C
	smpsPan		panLeft
	dc.b nRst, nA4, $03, nRst, nA4, nRst, $09, nA4
	dc.b $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop		$00, $03, S2Cabar_Loop11, Target
	smpsPan		panRight
	dc.b nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F
	dc.b nAb4, $0C
	smpsPan		panLeft
	dc.b nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4
	dc.b $03, nRst, nAb4, nRst, nAb4, nAb4

S2Cabar_Loop12:
	dc.b nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F
	dc.b nA4, $0C, nRst, nA4, $03, nRst, nA4, nRst
	dc.b $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop		$00, $04, S2Cabar_Loop12, Target
	dc.b nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F
	dc.b nAb4, $0C

S2Cabar_Loop15:
	dc.b nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4
	dc.b $03, nRst, nAb4, nRst, nAb4, nAb4

S2Cabar_Loop13:
	dc.b nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F
	dc.b nA4, $0C, nRst, nA4, $03, nRst, nA4, nRst
	dc.b $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop		$00, $02, S2Cabar_Loop13, Target

S2Cabar_Loop14:
	dc.b nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F
	dc.b nC5, $0C, nRst, nC5, $03, nRst, nC5, nRst
	dc.b $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop		$00, $02, S2Cabar_Loop14, Target
	smpsPan		panRight
	dc.b nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F
	dc.b nAb4, $0C
	smpsPan		panLeft
	smpsLoop		$01, $02, S2Cabar_Loop15, Target
	dc.b nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4
	dc.b $03, nRst, nAb4, nRst, nAb4, nAb4, nRst, $0C
	dc.b nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C

S2Cabar_Loop16:
	dc.b nRst, nA4, $03, nRst, nA4, nRst, $09, nA4
	dc.b $03, nRst, nA4, nRst, nA4, nA4
	smpsPan		panRight
	dc.b nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F
	dc.b nA4, $0C
	smpsPan		panLeft
	smpsLoop		$00, $03, S2Cabar_Loop16, Target
	dc.b nRst, nA4, $03, nRst, nA4, nRst, $09, nA4
	dc.b $03, nRst, nA4, nRst, nA4, nA4
	smpsPan		panRight
	dc.b nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F
	dc.b nAb4, $0C
	smpsPan		panLeft
	dc.b nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4
	dc.b $03, nRst, nAb4, nRst, nAb4, nAb4

S2Cabar_Loop17:
	dc.b nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F
	dc.b nA4, $0C, nRst, nA4, $03, nRst, nA4, nRst
	dc.b $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop		$00, $04, S2Cabar_Loop17, Target
	dc.b nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F
	dc.b nAb4, $0C

S2Cabar_Loop20:
	dc.b nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4
	dc.b $03, nRst, nAb4, nRst, nAb4, nAb4

S2Cabar_Loop18:
	dc.b nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F
	dc.b nA4, $0C, nRst, nA4, $03, nRst, nA4, nRst
	dc.b $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop		$00, $02, S2Cabar_Loop18, Target

S2Cabar_Loop19:
	dc.b nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F
	dc.b nC5, $0C, nRst, nC5, $03, nRst, nC5, nRst
	dc.b $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop		$00, $02, S2Cabar_Loop19, Target
	smpsPan		panRight
	dc.b nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F
	dc.b nAb4, $0C
	smpsPan		panLeft
	smpsLoop		$01, $02, S2Cabar_Loop20, Target
	dc.b nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4
	dc.b $03, nRst, nAb4, nRst, nAb4, nAb4, nRst, $0C
	dc.b nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C
	dc.b nRst, nA4, $03, nRst, nA4, nRst, $09, nA4
	dc.b $03, nRst, nA4, nRst, nA4, nA4
	smpsPan		panLeft
	smpsFMvoice		$02
	smpsJump	S2Cabar_FM3, Target
	
S2Cabar_FM4:
	;!@ smpsPan		panCenter
	smpsPan		panLeft
	smpsFMvoice		$03

S2Cabar_Loop21:
	dc.b nA1, $0C, nC2, nE1, nC2
	smpsLoop		$00, $04, S2Cabar_Loop21, Target
	dc.b nD2, nF2, nA1, nF2, nD2, nF2, nA1, nF2
	dc.b nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop22:
	dc.b nA1, nC2, nE1, nC2
	smpsLoop		$00, $06, S2Cabar_Loop22, Target
	dc.b nD2, nF2, nA1, nF2, nD2, nF2, nA1, nF2

S2Cabar_Loop24:
	dc.b nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop23:
	dc.b nA1, nC2, nE1, nC2
	smpsLoop		$00, $04, S2Cabar_Loop23, Target
	dc.b nC2, nE2, nG1, nE2, nC2, nE2, nG1, nE2
	dc.b nF2, nAb2, nC2, nAb2, nF2, nAb2, nC2, nAb2
	smpsLoop		$01, $02, S2Cabar_Loop24, Target

S2Cabar_Loop26:
	dc.b nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop25:
	dc.b nA1, nC2, nE1, nC2
	smpsLoop		$00, $06, S2Cabar_Loop25, Target
	dc.b nD2, nF2, nA1, nF2, nD2, nF2, nA1, nF2
	smpsLoop		$01, $02, S2Cabar_Loop26, Target

S2Cabar_Loop28:
	dc.b nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop27:
	dc.b nA1, nC2, nE1, nC2
	smpsLoop		$00, $04, S2Cabar_Loop27, Target
	dc.b nC2, nE2, nG1, nE2, nC2, nE2, nG1, nE2
	dc.b nF2, nAb2, nC2, nAb2, nF2, nAb2, nC2, nAb2
	smpsLoop		$01, $02, S2Cabar_Loop28, Target
	dc.b nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2
	dc.b nA1, nC2, nE1, nC2, nA1, nC2, nE1, nC2
	;!@
	;smpsPan		panCenter
	;smpsFMvoice		$03
	smpsJump	S2Cabar_FM4, Target

S2Cabar_FM5:
	smpsPan		panCenter
	smpsFMvoice		$04
	dc.b nC5, $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$05
	dc.b $03
	smpsAlterVol		$01
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03, $03, $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$F8
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$07
	dc.b $03
	smpsAlterVol		$01
	dc.b $03, $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03
	smpsAlterVol		$FE

S2Cabar_Loop29:
	dc.b $03
	smpsAlterVol		$FF
	smpsLoop		$00, $04, S2Cabar_Loop29, Target
	dc.b $03, nRst, $0C
	smpsAlterVol		$02

S2Cabar_Loop30:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $04, S2Cabar_Loop30, Target
	dc.b nC5, $06, $06, nRst, $0C, nC5, $06, nRst
	dc.b $12, nC5, $06, $06, nRst, nC5, $03, nRst
	dc.b nC5, $06, $03, $03, nRst, $0C

S2Cabar_Loop31:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $04, S2Cabar_Loop31, Target
	dc.b nC5, $06, $06, nRst, $0C, nC5, $06, nRst
	dc.b $12, nC5, $06, $06, nRst, nC5, nC5, $03
	dc.b $03, $03, $03, nRst, $0C

S2Cabar_Loop32:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $03, S2Cabar_Loop32, Target
	dc.b nC5, $06, $06, $03, nRst, nC5, nRst, nC5
	dc.b $06, nRst, nC5, $03, $03, $03, nRst, nC5
	dc.b $06, nRst, $12, nC5, $06, nRst, nC5, $03
	dc.b $03, nRst, $06, nC5, nRst, nC5, $03, nRst
	dc.b nC5, nRst, nC5, nRst, nC5, $06, nRst, $0C
	dc.b nC5, $06, nRst, nC5, $03, $03, nRst, $06
	dc.b nC5, nC5, nRst, nC5, $03, nRst, nC5, $06
	dc.b $03, $03, $03, nRst, nC5, nRst, nC5, nRst
	dc.b nC5, $06, nRst, $0C, nC5, $06, $03, nRst
	dc.b $0F

S2Cabar_Loop33:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $05, S2Cabar_Loop33, Target
	dc.b nC5, $06, $06, $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$05
	dc.b $03
	smpsAlterVol		$01
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03, $03, $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$F8
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$07
	dc.b $03
	smpsAlterVol		$01
	dc.b $03, $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03
	smpsAlterVol		$FE

S2Cabar_Loop34:
	dc.b $03
	smpsAlterVol		$FF
	smpsLoop		$00, $04, S2Cabar_Loop34, Target
	dc.b $03, nRst, $0C
	smpsAlterVol		$02

S2Cabar_Loop35:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $03, S2Cabar_Loop35, Target

S2Cabar_Loop37:
	dc.b nC5, $06

S2Cabar_Loop36:
	dc.b nRst, nC5, $03
	smpsLoop		$00, $04, S2Cabar_Loop36, Target
	dc.b nC5, nC5, nRst, $09
	smpsLoop		$01, $02, S2Cabar_Loop37, Target
	dc.b nC5, $06, $06, nRst, $0C

S2Cabar_Loop38:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $04, S2Cabar_Loop38, Target
	dc.b nC5, $06, $06, nRst, $0C, nC5, $06, nRst
	dc.b $12, nC5, $06, $06, nRst, nC5, nC5, $03
	dc.b $03

S2Cabar_Loop40:
	dc.b $03, $03, nRst, $0C

S2Cabar_Loop39:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $03, S2Cabar_Loop39, Target
	dc.b nC5, $06
	smpsLoop		$01, $02, S2Cabar_Loop40, Target

S2Cabar_Loop41:
	dc.b nRst, nC5, $03
	smpsLoop		$00, $04, S2Cabar_Loop41, Target
	dc.b nC5, nC5, nRst, $09, nC5, $06
	smpsLoop		$01, $02, S2Cabar_Loop41, Target
	dc.b $06, nRst, $0C

S2Cabar_Loop42:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $07, S2Cabar_Loop42, Target
	dc.b nC5, $06, $06, $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$05
	dc.b $03
	smpsAlterVol		$01
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03, $03, $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$F8
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$07
	dc.b $03
	smpsAlterVol		$01
	dc.b $03, $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03
	smpsAlterVol		$FE

S2Cabar_Loop43:
	dc.b $03
	smpsAlterVol		$FF
	smpsLoop		$00, $04, S2Cabar_Loop43, Target
	dc.b $03, nRst, $0C
	smpsAlterVol		$02

S2Cabar_Loop44:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $04, S2Cabar_Loop44, Target
	dc.b nC5, $06, $06, nRst, $0C, nC5, $06, nRst
	dc.b $12, nC5, $06, $06, nRst, nC5, $03, nRst
	dc.b nC5, $06, $03, $03, nRst, $0C

S2Cabar_Loop45:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $04, S2Cabar_Loop45, Target
	dc.b nC5, $06, $06, nRst, $0C, nC5, $06, nRst
	dc.b $12, nC5, $06, $06, nRst, nC5, nC5, $03
	dc.b $03, $03, $03, nRst, $0C

S2Cabar_Loop46:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $03, S2Cabar_Loop46, Target
	dc.b nC5, $06, $06, $03, nRst, nC5, nRst, nC5
	dc.b $06, nRst, nC5, $03, $03, $03, nRst, nC5
	dc.b $06, nRst, $12, nC5, $06, nRst, nC5, $03
	dc.b $03, nRst, $06, nC5, nRst, nC5, $03, nRst
	dc.b nC5, nRst, nC5, nRst, nC5, $06, nRst, $0C
	dc.b nC5, $06, nRst, nC5, $03, $03, nRst, $06
	dc.b nC5, nC5, nRst, nC5, $03, nRst, nC5, $06
	dc.b $03, $03, $03, nRst, nC5, nRst, nC5, nRst
	dc.b nC5, $06, nRst, $0C, nC5, $06, $03, nRst
	dc.b $0F

S2Cabar_Loop47:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $05, S2Cabar_Loop47, Target
	dc.b nC5, $06, $06, $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$05
	dc.b $03
	smpsAlterVol		$01
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03, $03, $03
	smpsAlterVol		$02
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$03
	dc.b $03
	smpsAlterVol		$F8
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FA
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03, $03
	smpsAlterVol		$04
	dc.b $03
	smpsAlterVol		$07
	dc.b $03
	smpsAlterVol		$01
	dc.b $03, $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FC
	dc.b $03
	smpsAlterVol		$FD
	dc.b $03
	smpsAlterVol		$FE

S2Cabar_Loop48:
	dc.b $03
	smpsAlterVol		$FF
	smpsLoop		$00, $04, S2Cabar_Loop48, Target
	dc.b $03, nRst, $0C
	smpsAlterVol		$02

S2Cabar_Loop49:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $03, S2Cabar_Loop49, Target

S2Cabar_Loop51:
	dc.b nC5, $06

S2Cabar_Loop50:
	dc.b nRst, nC5, $03
	smpsLoop		$00, $04, S2Cabar_Loop50, Target
	dc.b nC5, nC5, nRst, $09
	smpsLoop		$01, $02, S2Cabar_Loop51, Target
	dc.b nC5, $06, $06, nRst, $0C

S2Cabar_Loop52:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $04, S2Cabar_Loop52, Target
	dc.b nC5, $06, $06, nRst, $0C, nC5, $06, nRst
	dc.b $12, nC5, $06, $06, nRst, nC5, nC5, $03
	dc.b $03

S2Cabar_Loop54:
	dc.b $03, $03, nRst, $0C

S2Cabar_Loop53:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $03, S2Cabar_Loop53, Target
	dc.b nC5, $06
	smpsLoop		$01, $02, S2Cabar_Loop54, Target

S2Cabar_Loop55:
	dc.b nRst, nC5, $03
	smpsLoop		$00, $04, S2Cabar_Loop55, Target
	dc.b nC5, nC5, nRst, $09, nC5, $06
	smpsLoop		$01, $02, S2Cabar_Loop55, Target
	dc.b $06, nRst, $0C

S2Cabar_Loop56:
	dc.b nC5, $06, nRst, $12
	smpsLoop		$00, $07, S2Cabar_Loop56, Target
	dc.b nC5, $06, $06
	smpsPan		panCenter
	smpsFMvoice		$04
	smpsJump	S2Cabar_FM5, Target

S2Cabar_PSG1:
	dc.b nRst, $54, nE1, $0C, nB1, nA1, nRst, nE1
	dc.b nB1, nA1, $09, nRst, $03, nA1, $06, nAb1
	dc.b nG1, nFs1, nF1, $48, nRst, $0C, nF1, $06
	dc.b nRst, nE1, $0C, nEb1, $18, nE1, $0C, nC2
	dc.b $24, nAb1, $0C, nB1, $5D, nRst, $57, nE1
	dc.b $0C, nB1, nA1, nRst, nE1, nB1, nA1, $09
	dc.b nRst, $03, nA1, $06, nAb1, nG1, nFs1, nF1
	dc.b $48, nRst, $0C, nF1, $06, nRst, nE1, $0C
	dc.b nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C
	dc.b nA1, $5D, nRst, $57, nA1, $0C, nG1, nB0
	dc.b $18, nC1, $0C, nG1, $18, nFs1, nF1, $48
	dc.b nRst, $0C, nF1, nE1, nEb1, $18, nE1, $0C
	dc.b nC2, $24, nAb1, $0C, nB1, $5D, nRst, $57
	dc.b nA1, $0C, nG1, nB0, $18, nC1, $0C, nG1
	dc.b $18, nFs1, nF1, $48, nRst, $0C, nF1, nE1
	dc.b nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C
	dc.b nA1, $5D, nRst, $57, nE1, $0C, nB1, nA1
	dc.b nRst, nE1, nB1, nA1, $09, nRst, $03, nA1
	dc.b $06, nAb1, nG1, nFs1, nF1, $48, nRst, $0C
	dc.b nF1, $06, nRst, nE1, $0C, nEb1, $18, nE1
	dc.b $0C, nC2, $24, nAb1, $0C, nB1, $5D, nRst
	dc.b $57, nE1, $0C, nB1, nA1, nRst, nE1, nB1
	dc.b nA1, $09, nRst, $03, nA1, $06, nAb1, nG1
	dc.b nFs1, nF1, $48, nRst, $0C, nF1, $06, nRst
	dc.b nE1, $0C, nEb1, $18, nE1, $0C, nC2, $24
	dc.b nAb1, $0C, nA1, $5D, nRst, $57, nA1, $0C
	dc.b nG1, nB0, $18, nC1, $0C, nG1, $18, nFs1
	dc.b nF1, $48, nRst, $0C, nF1, nE1, nEb1, $18
	dc.b nE1, $0C, nC2, $24, nAb1, $0C, nB1, $5D
	dc.b nRst, $57, nA1, $0C, nG1, nB0, $18, nC1
	dc.b $0C, nG1, $18, nFs1, nF1, $48, nRst, $0C
	dc.b nF1, nE1, nEb1, $18, nE1, $0C, nC2, $24
	dc.b nAb1, $0C, nA1, $5D, nRst, $03
	smpsPSGvoice	$00
	smpsJump	S2Cabar_PSG1, Target

S2Cabar_PSG2:
	dc.b nRst, $54, nE2, $0C, nB2, nA2, nRst, nE2
	dc.b nB2, nA2, $09, nRst, $03, nA2, $06, nAb2
	dc.b nG2, nFs2, nF2, $48, nRst, $0C, nF2, $06
	dc.b nRst, nE2, $0C, nEb2, $18, nE2, $0C, nC3
	dc.b $24, nAb2, $0C, nB2, $5D, nRst, $57, nE2
	dc.b $0C, nB2, nA2, nRst, nE2, nB2, nA2, $09
	dc.b nRst, $03, nA2, $06, nAb2, nG2, nFs2, nF2
	dc.b $48, nRst, $0C, nF2, $06, nRst, nE2, $0C
	dc.b nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C
	dc.b nA2, $5D, nRst, $57, nA2, $0C, nG2, nB1
	dc.b $18, nC2, $0C, nG2, $18, nFs2, nF2, $48
	dc.b nRst, $0C, nF2, nE2, nEb2, $18, nE2, $0C
	dc.b nC3, $24, nAb2, $0C, nB2, $5D, nRst, $57
	dc.b nA2, $0C, nG2, nB1, $18, nC2, $0C, nG2
	dc.b $18, nFs2, nF2, $48, nRst, $0C, nF2, nE2
	dc.b nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C
	dc.b nA2, $5D, nRst, $57, nE2, $0C, nB2, nA2
	dc.b nRst, nE2, nB2, nA2, $09, nRst, $03, nA2
	dc.b $06, nAb2, nG2, nFs2, nF2, $48, nRst, $0C
	dc.b nF2, $06, nRst, nE2, $0C, nEb2, $18, nE2
	dc.b $0C, nC3, $24, nAb2, $0C, nB2, $5D, nRst
	dc.b $57, nE2, $0C, nB2, nA2, nRst, nE2, nB2
	dc.b nA2, $09, nRst, $03, nA2, $06, nAb2, nG2
	dc.b nFs2, nF2, $48, nRst, $0C, nF2, $06, nRst
	dc.b nE2, $0C, nEb2, $18, nE2, $0C, nC3, $24
	dc.b nAb2, $0C, nA2, $5D, nRst, $57, nA2, $0C
	dc.b nG2, nB1, $18, nC2, $0C, nG2, $18, nFs2
	dc.b nF2, $48, nRst, $0C, nF2, nE2, nEb2, $18
	dc.b nE2, $0C, nC3, $24, nAb2, $0C, nB2, $5D
	dc.b nRst, $57, nA2, $0C, nG2, nB1, $18, nC2
	dc.b $0C, nG2, $18, nFs2, nF2, $48, nRst, $0C
	dc.b nF2, nE2, nEb2, $18, nE2, $0C, nC3, $24
	dc.b nAb2, $0C, nA2, $5D, nRst, $03
	smpsPSGvoice	$00
	smpsJump	S2Cabar_PSG2, Target

S2Cabar_PSG3:
	;!@
	;dc.b nRst

S2Cabar_Loop57:
	;!@ dc.b $59
	dc.b nRst, $59
	smpsLoop		$00, $0C, S2Cabar_Loop57, Target
	dc.b nG1, $03, nRst, nG1, nRst, $0F, nG1, $0C
	dc.b nRst, nG1, $03, nRst, nG1, nRst, $09, nG1
	dc.b $03, nRst, nG1, nRst, nG1, nG1, nRst, $0C
	dc.b nAb1, $03, nRst, nAb1, nRst, $0F, nAb1, $0C
	dc.b nRst, nAb1, $03, nRst, nAb1, nRst, $09, nAb1
	dc.b $03, nRst, nAb1, nRst, nAb1, nAb1, nRst, $7F
	dc.b nRst, $7F, nRst, $2E, nG1, $03, nRst, nG1
	dc.b nRst, $0F, nG1, $0C, nRst, nG1, $03, nRst
	dc.b nG1, nRst, $09, nG1, $03, nRst, nG1, nRst
	dc.b nG1, nG1, nRst, $0C, nAb1, $03, nRst, nAb1
	dc.b nRst, $0F, nAb1, $0C, nRst, nAb1, $03, nRst
	dc.b nAb1, nRst, $09, nAb1, $03, nRst, nAb1, nRst
	;!@ dc.b nAb1, nAb1, nRst
	dc.b nAb1, nAb1

S2Cabar_Loop58:
	;!@ dc.b $7E
	dc.b nRst, $7E
	smpsLoop		$00, $0A, S2Cabar_Loop58, Target
	dc.b nG1, $03, nRst, nG1, nRst, $0F, nG1, $0C
	dc.b nRst, nG1, $03, nRst, nG1, nRst, $09, nG1
	dc.b $03, nRst, nG1, nRst, nG1, nG1, nRst, $0C
	dc.b nAb1, $03, nRst, nAb1, nRst, $0F, nAb1, $0C
	dc.b nRst, nAb1, $03, nRst, nAb1, nRst, $09, nAb1
	dc.b $03, nRst, nAb1, nRst, nAb1, nAb1, nRst, $7F
	dc.b nRst, $7F, nRst, $2E, nG1, $03, nRst, nG1
	dc.b nRst, $0F, nG1, $0C, nRst, nG1, $03, nRst
	dc.b nG1, nRst, $09, nG1, $03, nRst, nG1, nRst
	dc.b nG1, nG1, nRst, $0C, nAb1, $03, nRst, nAb1
	dc.b nRst, $0F, nAb1, $0C, nRst, nAb1, $03, nRst
	dc.b nAb1, nRst, $09, nAb1, $03, nRst, nAb1, nRst
	dc.b nAb1, nAb1, nRst, $7F, nRst, $41
	smpsPSGvoice	$00
	smpsJump	S2Cabar_PSG3, Target
	
S2Cabar_PWM1:
	; dKick, dSnare, dClap
	smpsPan		panCenter
	dc.b nRst, $60, pAKick, $18, pASnare, pAKick, pASnare, pAKick
	dc.b pASnare, pAKick, pASnare, $12, pTimpaniHi, $06, pAKick, $18
	dc.b pASnare, pAKick, pASnare, pAKick, pASnare, pAKick, pASnare, $12
	dc.b $06, pAKick, $18, pASnare, pAKick, pASnare, pAKick, $06
	dc.b $06, $06, pASnare, $12, pAKick, $06, pTimpaniHi, pAKick
	dc.b $0C, $0C, pASnare, $12, $06, pAKick, $0C, $0C
	dc.b pASnare, pAKick, $06, pASnare, pAKick, pAKick, pAKick, pASnare
	dc.b $0C, $06, pAKick, pTimpaniHi, pAKick, $0C, $0C, pASnare
	dc.b $12, pTimpaniHi, $06, pAKick, $0C, $0C, pASnare, $12
	dc.b $06, pAKick, $18, pASnare, pAKick, pASnare, $12, $66
	dc.b pAKick, $18, pASnare, pAKick, pASnare, pAKick, pASnare, pAKick
	dc.b pASnare, $12, pTimpaniHi, $06, pAKick, $18, pASnare, pAKick
	dc.b pASnare, pAKick

S2Cabar_Loop59:
	dc.b pASnare, pAKick, pASnare, $12, $06, pAKick, $18
	smpsLoop		$00, $02, S2Cabar_Loop59, Target
	dc.b pASnare, pAKick, pASnare, pAKick, pASnare, pAKick, pASnare, $12
	dc.b pTimpaniHi, $06, pAKick, $18, pASnare, pAKick, pASnare, pAKick
	dc.b pASnare, pAKick, pASnare, $12, $66, pAKick, $18, pASnare
	dc.b pAKick, pASnare, pAKick, pASnare, pAKick, pASnare, $12, pTimpaniHi
	dc.b $06, pAKick, $18, pASnare, pAKick, pASnare, pAKick, pASnare
	dc.b pAKick, pASnare, $12, $06, pAKick, $18, pASnare, pAKick
	dc.b pASnare, pAKick, $06, $06, $06, pASnare, $12, pAKick
	dc.b $06, pTimpaniHi, pAKick, $0C, $0C, pASnare, $12, $06
	dc.b pAKick, $0C, $0C, pASnare, pAKick, $06, pASnare, pAKick
	dc.b pAKick, pAKick, pASnare, $0C, $06, pAKick, pTimpaniHi, pAKick
	dc.b $0C, $0C, pASnare, $12, pTimpaniHi, $06, pAKick, $0C
	dc.b $0C, pASnare, $12, $06, pAKick, $18, pASnare, pAKick
	dc.b pASnare, $12, $66, pAKick, $18, pASnare, pAKick, pASnare
	dc.b pAKick, pASnare, pAKick, pASnare, $12, pTimpaniHi, $06, pAKick
	dc.b $18, pASnare, pAKick, pASnare, pAKick

S2Cabar_Loop60:
	dc.b pASnare, pAKick, pASnare, $12, $06, pAKick, $18
	smpsLoop		$00, $02, S2Cabar_Loop60, Target
	dc.b pASnare, pAKick, pASnare, pAKick, pASnare, pAKick, pASnare, $12
	dc.b pTimpaniHi, $06, pAKick, $18, pASnare, pAKick, pASnare, pAKick
	dc.b pASnare, pAKick, pASnare, $12, $06
	smpsPan		panCenter
	smpsJump	S2Cabar_PWM1, Target
	
S2Cabar_NOP:
	smpsStop

S2Cabar_Patches:
	; Patch $00
	dc.b 	$20
	dc.b	$7A, $31, $00, $00,	$9F, $D8, $DC, $DF
	dc.b	$10, $0A, $04, $04,	$0F, $08, $08, $08
	dc.b	$5F, $5F, $BF, $BF,	$14, $2B, $17, $80
	;smpsVcAlgorithm	$00
	;smpsVcFeedback	$04
	;smpsVcDetune	$07, $00, $03, $00
	;smpsVcCoarseFreq	$0A, $00, $01, $00
	;smpsVcRateScale	$02, $03, $03, $03
	;smpsVcAttackRate	$1F, $1C, $18, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$10, $04, $0A, $04
	;smpsVcDecayRate2	$05, $0B, $05, $0B
	;smpsVcDecayLevel	$0F, $08, $08, $08
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$14, $17, $2B, $00

	; Patch $01
	dc.b	$19
	dc.b	$07, $01, $02, $01,	$5F, $5F, $5F, $5F
	dc.b	$0B, $07, $07, $0D,	$06, $05, $05, $05
	dc.b	$20, $50, $50, $15,	$2D, $28, $23, $80
	;smpsVcAlgorithm	$01
	;smpsVcFeedback	$03
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$07, $02, $01, $01
	;smpsVcRateScale	$01, $01, $01, $01
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0B, $07, $07, $0D
	;smpsVcDecayRate2	$02, $05, $05, $01
	;smpsVcDecayLevel	$06, $05, $05, $05
	;smpsVcReleaseRate	$00, $00, $00, $05
	;smpsVcTotalLevel	$2D, $23, $28, $00

	; Patch $02
	dc.b	$39
	dc.b	$08, $06, $04, $11,	$1F, $1F, $1F, $1F
	dc.b	$14, $09, $09, $02,	$00, $00, $00, $00
	dc.b	$8B, $5A, $3A, $3A,	$10, $28, $29, $80
	;smpsVcAlgorithm	$01
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $00, $01
	;smpsVcCoarseFreq	$08, $04, $06, $01
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$14, $09, $09, $02
	;smpsVcDecayRate2	$08, $03, $05, $03
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$0B, $0A, $0A, $0A
	;smpsVcTotalLevel	$10, $29, $28, $00

	; Patch $03
	dc.b	$3C
	dc.b	$01, $72, $01, $32,	$17, $1F, $1F, $1F
	dc.b	$08, $08, $08, $09,	$04, $03, $04, $04
	dc.b	$0F, $1B, $1B, $2B,	$12, $82, $09, $82
	;smpsVcAlgorithm	$04
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $07, $03
	;smpsVcCoarseFreq	$01, $01, $02, $02
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$17, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$08, $08, $08, $09
	;smpsVcDecayRate2	$00, $01, $01, $02
	;smpsVcDecayLevel	$04, $04, $03, $04
	;smpsVcReleaseRate	$0F, $0B, $0B, $0B
	;smpsVcTotalLevel	$12, $09, $02, $02

	; Patch $04
	dc.b	$3B
	dc.b	$00, $00, $00, $00,	$10, $1F, $00, $1F
	dc.b	$00, $00, $18, $0F,	$00, $00, $00, $00
	dc.b	$00, $F6, $50, $F5,	$00, $00, $21, $80
	;smpsVcAlgorithm	$03
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$00, $00, $00, $00
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$10, $00, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$00, $18, $00, $0F
	;smpsVcDecayRate2	$00, $05, $0F, $0F
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$00, $00, $06, $05
	;smpsVcTotalLevel	$00, $21, $00, $00
