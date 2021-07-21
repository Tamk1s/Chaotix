Target	EQU	$4D443

PWMVol	EQU	$87
FMVolChords1	EQU	$0E+$04
FMVolChords2	EQU	$18+$0F
PSGVoi0	EQU	$00
PSGVoi1	EQU $00
PSGVoi2	EQU	$00


;!@ PSGVol1	EQU	$07
;!@ PSGVol2	EQU	$0B
;!@ PSGVol3	EQU	$08
PSGVol1	EQU	$03+$03
PSGVol2	EQU	$06
PSGVol3	EQU	$04+$01
PSGOff	EQU	$0C
	smpsHeaderVoice	SAdv3_Options_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempoC	$03, $05
	smpsHeaderFM	SAdv3_Options_FM1, Target, $00, FMVolChords1
	smpsHeaderFM	SAdv3_Options_FM2, Target, $00, FMVolChords1
	smpsHeaderFM	SAdv3_Options_FM3, Target, $00, FMVolChords2
	smpsHeaderFM	SAdv3_Options_FM4, Target, $00, FMVolChords2
	smpsHeaderFM	SAdv3_Options_FM5, Target, $00, FMVolChords2
	smpsHeaderFM	SAdv3_Options_FM6, Target, $00, FMVolChords2
	smpsHeaderPSG	SAdv3_Options_PSG1, Target, PSGOff, PSGVoi0, $00, PSGVol1
	smpsHeaderPSG	SAdv3_Options_PSG2, Target, PSGOff, PSGVoi0, $00, PSGVol2
	smpsHeaderPSG	SAdv3_Options_PSG3, Target, $00, PSGVoi2, $00, PSGVol3
	smpsHeaderPWM	SAdv3_Options_PWM1, Target, $00, PWMVol
	smpsHeaderPWM	SAdv3_Options_PWM2, Target, $00, PWMVol
	smpsHeaderPWM	SAdv3_Options_PWM3, Target, $00, PWMVol
	smpsHeaderPWM	SAdv3_Options_PWM4, Target, $00, PWMVol

SAdv3_Options_FM1:
	smpsPan		panLeft
	smpsFMvoice		$00
	;!@ dc.b	nRst, $01, nG4, nRst, $05, nG5, $01, nRst
	dc.b	nRst, $01, nG4, $01, nRst, $05, nG5, $01, nRst
	dc.b	$02, nF5, $01, nRst, $05, nG5, $01, nRst
	dc.b	$20, nG4, $01, nRst, $05, nG5, $01, nRst
	dc.b	$02, nF5, $01, nRst, $05, nF5, $01, nRst
	dc.b	$20, nG4, $01, nRst, $05, nG5, $01, nRst
	dc.b	$02, nF5, $01, nRst, $05, nG5, $01, nRst
	dc.b	$20, nG4, $01, nRst, $05, nG5, $01, nRst
	dc.b	$02, nF5, $01, nRst, $05, nBb5, $01, nRst
	dc.b	$20, nG4, $01, nRst, $05, nG5, $01, nRst
	dc.b	$02, nF5, $01, nRst, $26, nD5, $01, nRst
	dc.b	$02, nD5, $01, nRst, $05, nG4, $01, nRst
	dc.b	$26, nG4, $01, nRst, $05, nG5, $01, nRst
	dc.b	$02, nF5, $01, nRst, $05, nG5, $01, nRst
	dc.b	$20, nF5, $01, nRst, $08, nD5, $01, nRst
	dc.b	$02, nD5, $01, nRst, $05, nBb5, $01, nRst
	dc.b	$1C

SAdv3_Options_Jump1:
	dc.b	nRst, $01, nG4

SAdv3_Options_Loop1:
	dc.b	nRst, $05, nG5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $05, nG5, $01, nRst, $20, nG4, $01
	dc.b	nRst, $05, nG5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $05, nF5, $01, nRst, $20, nG4, $01
	dc.b	nRst, $05, nG5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $05, nG5, $01, nRst, $20, nG4, $01
	dc.b	nRst, $05, nG5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $05, nBb5, $01, nRst, $20, nG4, $01
	smpsLoop		$00, $02, SAdv3_Options_Loop1, Target
	dc.b	nRst, $05, nG5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $26, nD5, $01, nRst, $02, nD5, $01
	dc.b	nRst, $05, nG4, $01, nRst, $26, nG4, $01
	dc.b	nRst, $05, nG5, $01, nRst, $02, nF5, $01
	dc.b	nRst, $05, nG5, $01, nRst, $20, nF5, $01
	dc.b	nRst, $08, nD5, $01, nRst, $02, nD5, $01
	dc.b	nRst, $05, nBb5, $01, nRst, $1C
	smpsJump		SAdv3_Options_Jump1, Target

SAdv3_Options_FM2:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nRst, $01, nG5, $02, nRst, $04, nG6, $02
	dc.b	nRst, $01, nF6, $02, nRst, $04, nG6, $02
	dc.b	nRst, $1F, nG5, $02, nRst, $04, nG6, $02
	dc.b	nRst, $01, nF6, $02, nRst, $04, nF6, $02
	dc.b	nRst, $1F, nG5, $02, nRst, $04, nG6, $02
	dc.b	nRst, $01, nF6, $02, nRst, $04, nG6, $02
	dc.b	nRst, $1F, nG5, $02, nRst, $04, nG6, $02
	dc.b	nRst, $01, nF6, $02, nRst, $04, nBb6, $02
	dc.b	nRst, $1F, nG5, $02, nRst, $04, nG6, $02
	dc.b	nRst, $01, nF6, $02, nRst, $25, nD6, $02
	dc.b	nRst, $01, nD6, $02, nRst, $04, nG5, $02
	dc.b	nRst, $25, nG5, $02, nRst, $04, nG6, $02
	dc.b	nRst, $01, nF6, $02, nRst, $04, nG6, $02
	dc.b	nRst, $1F, nF6, $02, nRst, $07, nD6, $02
	dc.b	nRst, $01, nD6, $02, nRst, $04, nBb6, $02
	dc.b	nRst, $1B

SAdv3_Options_Jump2:
	dc.b	nRst, $01

SAdv3_Options_Loop2:
	dc.b	nG5, $02, nRst, $04, nG6, $02, nRst, $01
	dc.b	nF6, $02, nRst, $04, nG6, $02, nRst, $1F
	dc.b	nG5, $02, nRst, $04, nG6, $02, nRst, $01
	dc.b	nF6, $02, nRst, $04, nF6, $02, nRst, $1F
	dc.b	nG5, $02, nRst, $04, nG6, $02, nRst, $01
	dc.b	nF6, $02, nRst, $04, nG6, $02, nRst, $1F
	dc.b	nG5, $02, nRst, $04, nG6, $02, nRst, $01
	dc.b	nF6, $02, nRst, $04, nBb6, $02, nRst, $1F
	smpsLoop		$00, $02, SAdv3_Options_Loop2, Target
	dc.b	nG5, $02, nRst, $04, nG6, $02, nRst, $01
	dc.b	nF6, $02, nRst, $25, nD6, $02, nRst, $01
	dc.b	nD6, $02, nRst, $04, nG5, $02, nRst, $25
	dc.b	nG5, $02, nRst, $04, nG6, $02, nRst, $01
	dc.b	nF6, $02, nRst, $04, nG6, $02, nRst, $1F
	dc.b	nF6, $02, nRst, $07, nD6, $02, nRst, $01
	dc.b	nD6, $02, nRst, $04, nBb6, $02, nRst, $1B
	smpsJump		SAdv3_Options_Jump2, Target

SAdv3_Options_FM3:
	smpsPan		panLeft
	smpsFMvoice		$01
	;!@ dc.b	nRst, $01, nG4, nRst, $05, nG4, $01, nRst
	dc.b	nRst, $01, nG4, $01, nRst, $05, nG4, $01, nRst
	dc.b	$05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop3:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop3, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop4:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop4, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop5:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop5, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop6:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop6, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01

SAdv3_Options_Loop9:
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop7:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop7, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop8:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop8, Target
	dc.b	nRst, $02, nG4, $01, nRst, $05, nG4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop9, Target
	dc.b	nRst, $04

SAdv3_Options_Jump3:
	dc.b	nRst, $01, nG4

SAdv3_Options_Loop12:
	dc.b	nRst, $05, nG4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $02, nF4, $01

SAdv3_Options_Loop10:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop10, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop11:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop11, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$01, $03, SAdv3_Options_Loop12, Target
	dc.b	nRst, $05, nG4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $02, nF4, $01

SAdv3_Options_Loop13:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop13, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop14:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop14, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01

SAdv3_Options_Loop17:
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop15:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop15, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop16:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop16, Target
	dc.b	nRst, $02, nG4, $01, nRst, $05, nG4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop17, Target
	dc.b	nRst, $04
	smpsJump		SAdv3_Options_Jump3, Target

SAdv3_Options_FM4:
	smpsPan		panRight
	smpsFMvoice		$01
	;!@ dc.b	nRst, $01, nC4, nRst, $05, nC4, $01, nRst
	dc.b	nRst, $01, nC4, $01, nRst, $05, nC4, $01, nRst
	dc.b	$05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop18:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop18, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop19:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop19, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop20:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop20, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop21:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop21, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01

SAdv3_Options_Loop24:
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop22:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop22, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop23:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop23, Target
	dc.b	nRst, $02, nC4, $01, nRst, $05, nC4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop24, Target
	dc.b	nRst, $04

SAdv3_Options_Jump4:
	dc.b	nRst, $01, nC4

SAdv3_Options_Loop27:
	dc.b	nRst, $05, nC4, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $02, nBb3, $01

SAdv3_Options_Loop25:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop25, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop26:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop26, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$01, $03, SAdv3_Options_Loop27, Target
	dc.b	nRst, $05, nC4, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $02, nBb3, $01

SAdv3_Options_Loop28:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop28, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop29:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop29, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01

SAdv3_Options_Loop32:
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop30:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop30, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop31:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop31, Target
	dc.b	nRst, $02, nC4, $01, nRst, $05, nC4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop32, Target
	dc.b	nRst, $04
	smpsJump		SAdv3_Options_Jump4, Target

SAdv3_Options_FM5:
	smpsPan		panLeft
	smpsFMvoice		$02
	;!@ dc.b	nRst, $01, nG4, nRst, $05, nG4, $01, nRst
	dc.b	nRst, $01, nG4, $01, nRst, $05, nG4, $01, nRst
	dc.b	$05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop33:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop33, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop34:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop34, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop35:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop35, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop36:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop36, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01

SAdv3_Options_Loop39:
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop37:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop37, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop38:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop38, Target
	dc.b	nRst, $02, nG4, $01, nRst, $05, nG4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop39, Target
	dc.b	nRst, $04

SAdv3_Options_Jump5:
	dc.b	nRst, $01, nG4

SAdv3_Options_Loop42:
	dc.b	nRst, $05, nG4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $02, nF4, $01

SAdv3_Options_Loop40:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop40, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop41:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop41, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$01, $03, SAdv3_Options_Loop42, Target
	dc.b	nRst, $05, nG4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $02, nF4, $01

SAdv3_Options_Loop43:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop43, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nG4, $01, nRst, $05, nG4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop44:
	dc.b	nRst, $05, nG4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop44, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nBb4, $01

SAdv3_Options_Loop47:
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop45:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop45, Target
	dc.b	nRst, $02, nF4, $01, nRst, $05, nF4, $01
	dc.b	nRst, $05, nEb4, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nF4, $01, nRst, $02, nF4, $01

SAdv3_Options_Loop46:
	dc.b	nRst, $05, nEb4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop46, Target
	dc.b	nRst, $02, nG4, $01, nRst, $05, nG4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop47, Target
	dc.b	nRst, $04
	smpsJump		SAdv3_Options_Jump5, Target

SAdv3_Options_FM6:
	smpsPan		panRight
	smpsFMvoice		$02
	;!@ dc.b	nRst, $01, nC4, nRst, $05, nC4, $01, nRst
	dc.b	nRst, $01, nC4, $01, nRst, $05, nC4, $01, nRst
	dc.b	$05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop48:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop48, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop49:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop49, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop50:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop50, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop51:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop51, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01

SAdv3_Options_Loop54:
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop52:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop52, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop53:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop53, Target
	dc.b	nRst, $02, nC4, $01, nRst, $05, nC4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop54, Target
	dc.b	nRst, $04

SAdv3_Options_Jump6:
	;!@ dc.b	nRst, $01, nC4
	dc.b	nRst, $01, nC4, $01

SAdv3_Options_Loop57:
	dc.b	nRst, $05, nC4, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $02, nBb3, $01

SAdv3_Options_Loop55:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop55, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop56:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop56, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$01, $03, SAdv3_Options_Loop57, Target
	dc.b	nRst, $05, nC4, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $02, nBb3, $01

SAdv3_Options_Loop58:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop58, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nC4, $01, nRst, $05, nC4, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop59:
	dc.b	nRst, $05, nC4, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop59, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nEb4, $01

SAdv3_Options_Loop62:
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop60:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop60, Target
	dc.b	nRst, $02, nBb3, $01, nRst, $05, nBb3, $01
	dc.b	nRst, $05, nAb3, $01, nRst, $05, nAb3, $01
	dc.b	nRst, $05, nBb3, $01, nRst, $02, nBb3, $01

SAdv3_Options_Loop61:
	dc.b	nRst, $05, nAb3, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop61, Target
	dc.b	nRst, $02, nC4, $01, nRst, $05, nC4, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop62, Target
	dc.b	nRst, $04
	smpsJump		SAdv3_Options_Jump6, Target

SAdv3_Options_PSG1:
	;!@ dc.b	nRst, $01, nC0, nRst, $02
	dc.b	nRst, $01, nC0, $01, nRst, $02

SAdv3_Options_Loop64:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop63:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop63, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop64, Target

SAdv3_Options_Loop65:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop65, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop66:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop66, Target
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst
	smpsPSGvoice	PSGVoi0
	dc.b	$01
	;!@ smpsSetVol	$01
	;!@ dc.b	nC3
	dc.b	nC3, $01

SAdv3_Options_Loop67:
	dc.b	nRst, $02, nG2, $01, nRst, $02, nBb2, $01
	dc.b	nRst, $02, nF2, $01, nRst, $02, nC3, $01
	smpsLoop		$00, $07, SAdv3_Options_Loop67, Target
	dc.b	nRst, $02, nG2, $01, nRst, $02, nBb2, $01
	dc.b	nRst, $02, nF2, $01, nRst
	smpsPSGvoice	PSGVoi1
	dc.b	$01
	;!@ smpsSetVol	$FF
	;!@ dc.b	nC0, nRst, $02
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop69:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop68:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop68, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop69, Target

SAdv3_Options_Loop70:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop70, Target
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $02
	smpsLoop		$01, $02, SAdv3_Options_Loop70, Target

SAdv3_Options_Loop72:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop71:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop71, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop72, Target

SAdv3_Options_Loop73:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop73, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop74:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop74, Target
	;!@ dc.b	nC0, $01, nRst, $02, nC0, $01, nRst
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $01

SAdv3_Options_Jump7:
	smpsPSGvoice	PSGVoi2
	;!@ smpsSetVol	$FF
	;!@ Questionable
	dc.b	nEb3, $03, nRst, nD3, nRst, nBb2, nRst, $04
	dc.b	nG2, $14, nF2, $02, nRst, $04, nG2, $01
	dc.b	nRst, $03, nC3, $15, nRst, $03, nBb2, $15
	dc.b	nRst, $02, nEb3, $03, nRst, nD3, nRst, nBb2
	dc.b	nRst, $04, nG2, $14, nF2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $03, nC3, $15, nRst, $03
	
	;!@ Questionable
	dc.b	nD3, $02
	smpsPSGvoice	PSGVoi1
	dc.b	smpsNoAttack, $01
	;!@ smpsSetVol	$01
	;!@ dc.b	nC0
	dc.b	nC0, $01

SAdv3_Options_Loop75:
	dc.b	nRst, $05, nC0, $01, nRst, $02, nC0, $01
	smpsLoop		$00, $02, SAdv3_Options_Loop75, Target
	dc.b	nRst, $02, nC0, $01, nRst, $02

SAdv3_Options_Loop77:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop76:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop76, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop77, Target

SAdv3_Options_Loop78:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop78, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop79:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop79, Target
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst
	smpsPSGvoice	PSGVoi0
	dc.b	$01
	;!@ smpsSetVol	$01
	dc.b	nC3

SAdv3_Options_Loop80:
	dc.b	nRst, $02, nG2, $01, nRst, $02, nBb2, $01
	dc.b	nRst, $02, nF2, $01, nRst, $02, nC3, $01
	smpsLoop		$00, $07, SAdv3_Options_Loop80, Target
	dc.b	nRst, $02, nG2, $01, nRst, $02, nBb2, $01
	dc.b	nRst, $02, nF2, $01, nRst
	smpsPSGvoice	PSGVoi1
	dc.b	$01
	;!@ smpsSetVol	$FF
	;!@ dc.b	nC0, nRst, $02
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop82:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop81:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop81, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop82, Target

SAdv3_Options_Loop83:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop83, Target
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $02
	smpsLoop		$01, $02, SAdv3_Options_Loop83, Target

SAdv3_Options_Loop85:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop84:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop84, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop85, Target

SAdv3_Options_Loop86:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop86, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop87:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop87, Target
	;!@ dc.b	nC0, $01, nRst, $02, nC0, $01, nRst
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $01
	smpsJump		SAdv3_Options_Jump7, Target

SAdv3_Options_PSG2:
	;!@ dc.b	nRst, $01, nC0, nRst, $02, nC0, $01, nRst
	dc.b	nRst, $01, nC0, $01, nRst, $02, nC0, $01, nRst
	dc.b	$02

SAdv3_Options_Loop89:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop88:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop88, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop89, Target

SAdv3_Options_Loop90:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop90, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop91:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop91, Target
	dc.b	nC0, $01, nRst
	smpsPSGvoice	PSGVoi0
	dc.b	$02
	;!@ smpsSetVol	$02
	;!@ dc.b	nC3
	dc.b	nC3, $02

SAdv3_Options_Loop92:
	dc.b	nRst, $01, nG2, $02, nRst, $01, nBb2, $02
	dc.b	nRst, $01, nF2, $02, nRst, $01, nC3, $02
	smpsLoop		$00, $07, SAdv3_Options_Loop92, Target
	dc.b	nRst, $01, nG2, $02, nRst, $01, nBb2, $02
	;!@ dc.b	nRst, $01, nF2
	dc.b	nRst, $01, nF2, $01
	smpsPSGvoice	PSGVoi1
	dc.b	smpsNoAttack, $01
	;!@ smpsSetVol	$FE
	;!@ dc.b	nC0, nRst, $02, nC0, $01, nRst, $02
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $02

SAdv3_Options_Loop94:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop93:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop93, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop94, Target

SAdv3_Options_Loop95:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop95, Target
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $02
	smpsLoop		$01, $02, SAdv3_Options_Loop95, Target

SAdv3_Options_Loop97:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop96:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop96, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop97, Target

SAdv3_Options_Loop98:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop98, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop99:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop99, Target
	;!@ dc.b	nC0, $01, nRst
	dc.b	nC0, $01, nRst, $01 

SAdv3_Options_Jump8:
	smpsPSGvoice	PSGVoi2
	;!@ smpsSetVol	$FB
	;!@ Questionable
	dc.b	nEb3, $03, nRst, nD3, nRst, nBb2, nRst, $04
	dc.b	nG2, $14, nF2, $02, nRst, $04, nG2, $01
	dc.b	nRst, $03, nC3, $15, nRst, $03, nBb2, $15
	dc.b	nRst, $02, nEb3, $03, nRst, nD3, nRst, nBb2
	dc.b	nRst, $04, nG2, $14, nF2, $02, nRst, $04
	dc.b	nG2, $01, nRst, $03, nC3, $15, nRst, $03
	dc.b	nD3, $02
	smpsPSGvoice	PSGVoi1
	dc.b	smpsNoAttack, $01
	;!@ smpsSetVol	$05
	;!@ dc.b	nC0
	dc.b	nC0, $01

SAdv3_Options_Loop100:
	dc.b	nRst, $02, nC0, $01, nRst, $05, nC0, $01
	smpsLoop		$00, $02, SAdv3_Options_Loop100, Target

SAdv3_Options_Loop101:
	dc.b	nRst, $02, nC0, $01
	smpsLoop		$00, $03, SAdv3_Options_Loop101, Target

SAdv3_Options_Loop103:
	dc.b	nRst, $05

SAdv3_Options_Loop102:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop102, Target
	dc.b	nC0, $01
	smpsLoop		$01, $02, SAdv3_Options_Loop103, Target

SAdv3_Options_Loop104:
	dc.b	nRst, $05, nC0, $01, nRst, $02, nC0, $01
	smpsLoop		$00, $02, SAdv3_Options_Loop104, Target
	dc.b	nRst, $02

SAdv3_Options_Loop105:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop105, Target
	dc.b	nC0, $01, nRst
	smpsPSGvoice	PSGVoi0
	dc.b	$02
	;!@ smpsSetVol	$02
	;!@ dc.b	nC3
	dc.b	nC3, $02

SAdv3_Options_Loop106:
	dc.b	nRst, $01, nG2, $02, nRst, $01, nBb2, $02
	dc.b	nRst, $01, nF2, $02, nRst, $01, nC3, $02
	smpsLoop		$00, $07, SAdv3_Options_Loop106, Target
	dc.b	nRst, $01, nG2, $02, nRst, $01, nBb2, $02
	dc.b	nRst, $01, nF2
	smpsPSGvoice	PSGVoi1
	dc.b	smpsNoAttack, $01
	;!@ smpsSetVol	$FE
	;!@ dc.b	nC0, nRst, $02, nC0, $01, nRst, $02
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $02

SAdv3_Options_Loop108:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop107:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop107, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop108, Target

SAdv3_Options_Loop109:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop109, Target
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $02
	smpsLoop		$01, $02, SAdv3_Options_Loop109, Target

SAdv3_Options_Loop111:
	dc.b	nC0, $01, nRst, $05

SAdv3_Options_Loop110:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop110, Target
	smpsLoop		$01, $02, SAdv3_Options_Loop111, Target

SAdv3_Options_Loop112:
	dc.b	nC0, $01, nRst, $05, nC0, $01, nRst, $02
	smpsLoop		$00, $02, SAdv3_Options_Loop112, Target
	dc.b	nC0, $01, nRst, $02

SAdv3_Options_Loop113:
	dc.b	nC0, $01, nRst, $02, nC0, $01, nRst, $05
	smpsLoop		$00, $02, SAdv3_Options_Loop113, Target
	;!@ dc.b	nC0, $01, nRst
	dc.b	nC0, $01, nRst, $01
	smpsJump		SAdv3_Options_Jump8, Target

SAdv3_Options_PSG3:
	;!@ dc.b	nRst, $55, $0C
	dc.b	nRst, $55, nRst, $0C

SAdv3_Options_Loop114:
	dc.b	nC4, $01, nRst, $02, nG3, $01, nRst, $02
	dc.b	nBb3, $01, nRst, $02, nF3, $01, nRst, $02
	smpsLoop		$00, $07, SAdv3_Options_Loop114, Target
	dc.b	nC4, $01, nRst, $02, nG3, $01, nRst, $02
	dc.b	nBb3, $01, nRst, $02, nF3, $01, nRst, $55
	;!@ dc.b	$55, $17
	dc.b	nRst, $55, nRst, $17

SAdv3_Options_Jump9:
	;!@ dc.b	nRst, $55, $55, $55, $22
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $22

SAdv3_Options_Loop115:
	dc.b	nC4, $01, nRst, $02, nG3, $01, nRst, $02
	dc.b	nBb3, $01, nRst, $02, nF3, $01, nRst, $02
	smpsLoop		$00, $07, SAdv3_Options_Loop115, Target
	dc.b	nC4, $01, nRst, $02, nG3, $01, nRst, $02
	dc.b	nBb3, $01, nRst, $02, nF3, $01, nRst, $55
	;!@ dc.b	$55, $17
	dc.b	nRst, $55, nRst, $17
	smpsJump		SAdv3_Options_Jump9, Target
	
SAdv3_Options_PWM1:
	dc.b	nRst, $01

SAdv3_Options_PWM1_Loop1:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop1, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $02
	smpsLoop		$01, $07, SAdv3_Options_PWM1_Loop1, Target

SAdv3_Options_PWM1_Loop2:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop2, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $01

SAdv3_Options_PWM1_Jump1:
	dc.b	nRst, $01

SAdv3_Options_PWM1_Loop3:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop3, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $02
	smpsLoop		$01, $0B, SAdv3_Options_PWM1_Loop3, Target

SAdv3_Options_PWM1_Loop4:
	dc.b	pEHiHat, $03, pClosedHH, pClosedHH, pClosedHH
	smpsLoop		$00, $03, SAdv3_Options_PWM1_Loop4, Target
	dc.b	pEHiHat, pClosedHH, $01, $02, $01, $02, $01, $01
	smpsJump		SAdv3_Options_PWM1_Jump1, Target

SAdv3_Options_PWM2:
SAdv3_Options_PWM3:
SAdv3_Options_PWM4:
	smpsStop

SAdv3_Options_Patches:
	dc.b	$3D
	dc.b	$02, $01, $02, $01,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $01,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$20, $0A+$0A, $18+$0A, $16+$0A
	
	dc.b	$38
	dc.b	$72, $13, $71, $11,	$D1, $52, $14, $14
	dc.b	$01, $07, $01, $01,	$00, $00, $00, $00
	dc.b	$FF, $FF, $FF, $FF,	$1E, $1E, $1E, $00+$0C
	
	dc.b	$3B
	dc.b	$51, $71, $61, $41,	$51, $16, $18, $1A
	dc.b	$05, $01, $01, $00,	$09, $01, $01, $01
	dc.b	$17, $97, $27, $47,	$1C, $22, $15, $00+$0C
