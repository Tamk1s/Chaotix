
Target	EQU	$4BBFF
	smpsHeaderVoice	TachyT_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $55
	smpsHeaderFM	TachyT_FM1, Target, $F4, $0E
	smpsHeaderFM	TachyT_FM2, Target, $00, $07
	smpsHeaderFM	TachyT_FM3, Target, $FC, $0A
	smpsHeaderFM	TachyT_FM4, Target, $00, $15
	smpsHeaderFM	TachyT_FM5, Target, $FC, $18
	smpsHeaderFM	TachyT_FM6, Target, $00, $1C
	smpsHeaderPSG	TachyT_PSG1, Target, $E8, $01, $00, $00
	smpsHeaderPSG	TachyT_PSG2, Target, $E8, $02, $00, $00
	smpsHeaderPSG	TachyT_PSG3, Target, $23, $02, $00, $00
	smpsHeaderPWM	TachyT_PWM1, Target, $00, $FF
	smpsHeaderPWM	TachyT_PWM2, Target, $00, $DD
	smpsHeaderPWM	TachyT_PWM3, Target, $00, $BB
	smpsHeaderPWM	TachyT_PWM4, Target, $00, $00

TachyT_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nRst, $40, nRst, $40, nRst, $40, nCs3, $04
	dc.b	nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3
	dc.b	nRst, nCs4, nRst, nC3, $02, nCs3, $0E

TachyT_Loop1:
	dc.b	nEb3, $04, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nEb3, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nCs3, $04, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3, nCs3, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3
	smpsLoop		$00, $04, TachyT_Loop1, Target
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08
	dc.b	nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $08, nRst, nBb3
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nCs3, $08
	dc.b	nRst, nAb3, nRst, $04, nCs3, $08, nRst, $1C
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08
	dc.b	nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $40, nCs3, $20
	dc.b	nRst, $08, nCs3, nC4, $02, nCs3, $0E
	smpsJump		TachyT_Loop1, Target

TachyT_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsCall		TachyT_Call1, Target
	smpsCall		TachyT_Call2, Target

TachyT_Loop2:
	smpsCall		TachyT_Call1, Target
	smpsLoop		$00, $03, TachyT_Loop2, Target
	smpsCall		TachyT_Call2, Target
	smpsFMvoice		$02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump		TachyT_Loop2, Target

TachyT_Call1:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $02, nRst
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $02, nRst
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $02, nRst
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $04, nF5, $08
	smpsReturn

TachyT_Call2:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $02, nRst
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nF4, $04, nRst, $20
	smpsReturn

TachyT_FM3:
	smpsPan		panCenter
	smpsFMvoice		$01
	smpsCall		TachyT_Call1, Target
	smpsCall		TachyT_Call2, Target

TachyT_Loop3:
	smpsCall		TachyT_Call1, Target
	smpsLoop		$00, $03, TachyT_Loop3, Target
	smpsCall		TachyT_Call2, Target
	smpsFMvoice		$02
	smpsAlterPitch	$FF
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsAlterPitch	$01
	smpsJump		TachyT_Loop3, Target

TachyT_FM4:
	smpsFMvoice		$01
	smpsPan		panLeft
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall		TachyT_Call1, Target
	smpsCall		TachyT_Call2, Target

TachyT_Loop4:
	smpsCall		TachyT_Call1, Target
	smpsLoop		$00, $03, TachyT_Loop4, Target
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $02, nRst
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nF4, $04, nRst, $1C
	smpsFMvoice		$03
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$03

TachyT_Loop5:
	dc.b	nG4, $40, nF4
	smpsLoop		$00, $04, TachyT_Loop5, Target
	dc.b	nRst, $04
	smpsFMvoice		$01
	smpsModSet	$01, $01, $02, $05
	smpsAlterVol		$FD
	smpsJump		TachyT_Loop4, Target

TachyT_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall		TachyT_Call1, Target
	smpsCall		TachyT_Call2, Target

TachyT_Loop6:
	smpsCall		TachyT_Call1, Target
	smpsLoop		$00, $03, TachyT_Loop6, Target
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $02, nRst
	smpsAlterVol		$09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nC5, $02, nRst
	smpsAlterVol		$09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsAlterVol		$F7
	dc.b	nF4, $04, nRst, $1C
	smpsFMvoice		$03
	smpsAlterPitch	$FF
	smpsAlterVol		$03

TachyT_Loop7:
	dc.b	nG4, $40, nF4
	smpsLoop		$00, $04, TachyT_Loop7, Target
	smpsAlterPitch	$01
	dc.b	nRst, $04
	smpsFMvoice		$01
	smpsModSet	$00, $00, $00, $00
	smpsAlterVol		$FD
	smpsJump		TachyT_Loop6, Target

TachyT_FM6:
	smpsPan		panCenter
	dc.b	nRst, $40, $40, $40, $40
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $04

TachyT_Loo$8:
	smpsFMvoice		$04
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	smpsLoop		$00, $04, TachyT_Loo$8, Target
	smpsFMvoice		$02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump		TachyT_Loo$8, Target

TachyT_PSG1:
	smpsPSGvoice	$08
	dc.b	nRst, $40, $40, $40, $40

TachyT_Loo$9:
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst
	smpsLoop		$00, $04, TachyT_Loo$9, Target
	smpsSetVol	$FF

TachyT_Loop10:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop		$00, $04, TachyT_Loop10, Target

TachyT_Loop11:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop		$00, $02, TachyT_Loop11, Target
	smpsSetVol	$01
	smpsJump		TachyT_Loo$9, Target

TachyT_PSG2:
	smpsPSGvoice	$08
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

TachyT_Loop12:
	smpsAlterPitch	$FE
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst
	smpsAlterPitch	$02
	smpsLoop		$00, $04, TachyT_Loop12, Target
	smpsSetVol	$03
	smpsModSet	$01, $01, $03, $06
	dc.b	nRst, $08

TachyT_Loop13:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop		$00, $03, TachyT_Loop13, Target
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06
	smpsModSet	$00, $00, $00, $00
	smpsSetVol	$FD
	smpsSetVol	$FE

TachyT_Loop14:
	smpsAlterPitch	$07
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsAlterPitch	$F9
	smpsLoop		$00, $02, TachyT_Loop14, Target
	smpsSetVol	$02
	smpsJump		TachyT_Loop12, Target

TachyT_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02

TachyT_Loop15:
	dc.b	nRst, $08, nC4, $04, nC4, nRst, $08, nC4
	dc.b	$04, nC4, nRst, $08, nC4, $04, nC4, nRst
	dc.b	$04, nC4, nRst, $08
	smpsLoop		$00, $04, TachyT_Loop15, Target
	smpsSetVol	$FE

TachyT_Jump1:
	smpsPSGvoice	$05
	dc.b	nC4, $04
	smpsPSGvoice	$02
	smpsSetVol	$03
	dc.b	nC4, $04
	smpsSetVol	$FE
	dc.b	nC4, $04
	smpsSetVol	$02
	dc.b	nC4, $04
	smpsSetVol	$FD

TachyT_Loop16:
	dc.b	nC4, $04
	smpsSetVol	$03
	dc.b	nC4, $04
	smpsSetVol	$FE
	dc.b	nC4, $04
	smpsSetVol	$02
	dc.b	nC4, $04
	smpsSetVol	$FD
	smpsLoop		$00, $03, TachyT_Loop16, Target
	smpsJump		TachyT_Jump1, Target

TachyT_PWM1:
	dc.b	$96, $40, $40, $40, $40

TachyT_Loop17:
	dc.b	$8B, $10, $8B, $8B, $8B, $8B, $8B, $8B
	dc.b	$8B, $0C, $8B, $04
	smpsLoop		$00, $04, TachyT_Loop17, Target

TachyT_Loop18:
	dc.b	$8B, $10, $8B, $8B, $8B
	smpsLoop		$00, $08, TachyT_Loop18, Target
	smpsJump		TachyT_Loop17, Target

TachyT_PWM2:
	dc.b	$96, $40, $96, $40, $96, $40, $96, $20
	dc.b	$82, $04, $08, $04, $08, $08

TachyT_Jump2:
	smpsCall		TachyT_Call3, Target
	dc.b	nRst, $10, $82, $0C, $04, nRst, $04, $82
	dc.b	$04, $08, $10, nRst, $10, $82, $0C, $04
	dc.b	nRst, $04, $82, $04, $08, $82, $08, $04
	dc.b	$04, nRst, $10, $82, $0C, $04, nRst, $04
	dc.b	$82, $04, $08, $10, nRst, $10, $82, $0C
	dc.b	$04, $82, $04, $08, $04, $82, $08, $08

TachyT_Loop19:
	smpsCall		TachyT_Call3, Target
	smpsLoop		$00, $02, TachyT_Loop19, Target
	smpsJump		TachyT_Jump2, Target

TachyT_Call3:
	dc.b	nRst, $10, $82, $0C, $04, nRst, $04, $82
	dc.b	$04, $08, $10, nRst, $10, $82, $0C, $04
	dc.b	nRst, $04, $82, $04, $08, $08, $04, $04
	dc.b	nRst, $10, $82, $0C, $04, nRst, $04, $82
	dc.b	$04, $08, $10, nRst, $10, $82, $0C, $04
	dc.b	nRst, $04, $82, $82, $82, $82, $08, $04
	dc.b	$04
	smpsReturn

TachyT_PWM3:
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

TachyT_Loop20:
	dc.b	nRst, $40
	smpsLoop		$00, $08, TachyT_Loop20, Target

TachyT_Loop21:
	dc.b	$84, $08, $96, $84, $96, $84, $08, $96
	dc.b	$04, $84, $04, smpsNoAttack, $04, $96, $84, $08
	dc.b	$96, $08, $84, $04, $96, $84, $08, $96
	dc.b	$84, $08, $96, $04, $84, $04, smpsNoAttack, $04
	dc.b	$96, $84, $04, $96
	smpsLoop		$00, $03, TachyT_Loop21, Target
	dc.b	$84, $08, $96, $84, $96, $84, $08, $96
	dc.b	$04, $84, $04, smpsNoAttack, $04, $96, $84, $08
	dc.b	$96, $08, $84, $04, $96, $84, $08, $96
	dc.b	$84, $08, $96, $04, $84, $04, smpsNoAttack, $04
	dc.b	$96, nRst, $08
	smpsJump		TachyT_Loop20, Target

TachyT_PWM4:
	smpsStop

TachyT_Patches:

	
	dc.b	$3D
	dc.b	$01, $00, $01, $02,	$1F, $1F, $1F, $1F
	dc.b	$0D, $0C, $0C, $0C,	$0D, $0A, $0A, $0A
	dc.b	$F6, $97, $A7, $A7,	$1C, $80, $80, $85
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $02, $01, $01,	$14, $14, $17, $14
	dc.b	$0A, $0C, $03, $07,	$02, $08, $08, $03
	dc.b	$07, $E9, $A8, $18,	$1C, $2B, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $0F, $01, $01,	$0F, $0F, $0F, $14
	dc.b	$0A, $0A, $0A, $05,	$02, $02, $02, $08
	dc.b	$56, $A6, $56, $17,	$19, $28, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $22, $51, $01,	$0F, $0F, $0F, $4F
	dc.b	$0A, $05, $05, $05,	$00, $00, $00, $00
	dc.b	$56, $28, $28, $28,	$23, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$39
	dc.b	$02, $01, $02, $01,	$5F, $5F, $1F, $0F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $76,	$1B, $32, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
