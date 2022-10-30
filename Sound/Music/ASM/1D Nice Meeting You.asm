Target	EQU	$4D029

FMVoi_SteelGit1	EQU	$00
FMVoi_Bass		EQU	$01
FMVoi_SteelGit2	EQU	$02

PSGVol1	EQU	$06
PSGVol2	EQU	PSGVol1+$03
PSGVoi1	EQU	$00
PSGVoi2	EQU	$05
PWMVol 		EQU	$47
PWMPitch	EQU	$00
	smpsHeaderVoice	SSBB_WRoom_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$02, $00
	smpsHeaderFM	SSBB_WRoom_FM1, Target, $00, $0E
	smpsHeaderFM	SSBB_WRoom_FM2, Target, $00, $13
	smpsHeaderFM	SSBB_WRoom_FM3, Target, $00, $1A
	smpsHeaderFM	SSBB_WRoom_FM4, Target, $00, $1E+$08
	smpsHeaderFM	SSBB_WRoom_FM5, Target, $00, $1E+$08
	smpsHeaderFM	SSBB_WRoom_FM6, Target, $00, $1A+$0C
	smpsHeaderPSG	SSBB_WRoom_PSG1, Target, PSGDelta, PSGVol1, $00, PSGVoi1
	smpsHeaderPSG	SSBB_WRoom_PSG2, Target, PSGDelta, PSGVol2, $00, PSGVoi2
	smpsHeaderPSG	SSBB_WRoom_PSG3, Target, PSGDelta, PSGVol2, $00, PSGVoi2
	smpsHeaderPWM	SSBB_WRoom_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SSBB_WRoom_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SSBB_WRoom_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SSBB_WRoom_PWM4, Target, PWMPitch, PWMVol

SSBB_WRoom_FM1:
	smpsFMvoice		FMVoi_SteelGit1
	smpsPan		panCenter
	;!@ ssMod68k	$00, $01, $01, $04
	;!@ sModOn
	;!@ sModOn
	dc.b	nB3, $01, nRst, nCs4, $0A, nB3, $06, nA3

SSBB_WRoom_Loop1:
	dc.b	nAb3, $30, nRst, $12, nE3, $01, nRst, nFs3
	dc.b	$0A, nAb3, $06, nA3, nB3
	smpsLoop		$00, $02, SSBB_WRoom_Loop1, Target
	dc.b	nAb3, $30, nRst, $0C, nEb3, $06, nE3, nE3
	dc.b	$01, nRst, nFs3, $0A, nE3, $06, nEb3, nCs3
	dc.b	$0C, nFs3, $01, nRst, nAb3, $22, nRst, $18
	dc.b	nB3, $01, nRst, nCs4, $0A, nB3, $06, nA3

SSBB_WRoom_Loop2:
	dc.b	nAb3, $30, nRst, $12, nE3, $01, nRst, nFs3
	;!@ dc.b	$0A, nAb3, $06, nA3, nB3
	dc.b	$0A, nAb3, $06, nA3, $06, nB3, $06
	smpsLoop		$00, $02, SSBB_WRoom_Loop2, Target
	dc.b	nAb3, $30, nRst, $0C, nEb3, $06, nE3, nE3
	dc.b	$01, nRst, nFs3, $0A, nE3, $06, nEb3, nD3
	dc.b	$01, nRst, nE3, $0A, nCs3, $30, nRst, $0C
	smpsFMvoice		FMVoi_SteelGit1
	dc.b	nB3, $01, nRst, nCs4, $0A, nB3, $06, nA3
	smpsAlterNote	$00
	smpsJump		SSBB_WRoom_Loop1, Target

SSBB_WRoom_FM2:
	smpsFMvoice		FMVoi_Bass
	smpsPan		panCenter
	dc.b	nRst, $18

SSBB_WRoom_Loop3:
	dc.b	nCs3, $0C, nAb2, nB2, nC3, nCs3, nAb2, nB2
	dc.b	nFs2
	smpsLoop		$00, $02, SSBB_WRoom_Loop3, Target
	;!@ dc.b	nCs3, nAb2, nB2, nAb2, nFs2, nFs2, nAb2, nAb2
	dc.b	nCs3, $0C, nAb2, nB2, nAb2, nFs2, nFs2, nAb2, nAb2

SSBB_WRoom_Loop4:
	;!@ dc.b	nCs3, nAb2, nB2, nC3, nCs3, nAb2, nB2, nFs2
	dc.b	nCs3, $0C, nAb2, nB2, nC3, nCs3, nAb2, nB2, nFs2
	smpsLoop		$00, $02, SSBB_WRoom_Loop4, Target
	;!@ dc.b	nCs3, nAb2, nB2, nC3, nCs3, nAb2, nB2, nAb2
	dc.b	nCs3, $0C, nAb2, nB2, nC3, nCs3, nAb2, nB2, nAb2
	dc.b	nCs3, nAb2, nB2, nAb2, nFs2, nFs2, nAb2, nAb2
	dc.b	nCs3, $48
	smpsFMvoice		FMVoi_Bass
	dc.b	smpsNoAttack, $18
	smpsAlterNote	$00
	smpsJump		SSBB_WRoom_Loop3, Target

SSBB_WRoom_FM3:
	smpsPan		panLeft
	smpsFMvoice		FMVoi_SteelGit2
	dc.b	nRst, $18

SSBB_WRoom_Jump1:
	dc.b	nAb3, $06, nRst, $03, nAb4, $06, nRst, $03
	dc.b	nAb3, nRst, nAb4, $06, nRst, $03, nAb3, $06
	dc.b	nRst, $03, nAb4, nRst, nAb3, $06, nRst, $03
	dc.b	nAb4, $06, nRst, $03, nAb3, nRst, nFs4, $06
	dc.b	nRst, $03, nFs3, $06, nRst, $03, nFs4, nRst
	smpsAlterVol		$FF
	dc.b	nAb3, $06, nRst, $03, nAb4, $06, nRst, $03
	dc.b	nAb3, nRst, nAb4, $06, nRst, $03, nAb3, $06
	dc.b	nRst, $03, nAb4, nRst, nAb3, $06, nRst, $03
	dc.b	nAb4, $06, nRst, $03, nAb3, nRst, nFs4, $06
	dc.b	nRst, $03, nFs3, $06, nRst, $03, nFs4, nRst
	dc.b	nAb3, $06, nRst, $03, nAb4, $06, nRst, $03
	dc.b	nAb3, nRst, nAb4, $06, nRst, $03, nAb3, $06
	dc.b	nRst, $03, nAb4, nRst, nFs3, $06, nRst, $03
	dc.b	nFs4, $06, nRst, $03, nFs3

SSBB_WRoom_Loop5:
	;!@ dc.b	nRst, nAb4, $06, nRst, $03, nAb3, $06, nRst
	dc.b	nRst, $03, nAb4, $06, nRst, $03, nAb3, $06, nRst
	dc.b	$03, nAb4, nRst, nAb3, $06, nRst, $03, nAb4
	;!@ dc.b	$06, nRst, $03, nAb3
	dc.b	$06, nRst, $03, nAb3, $03
	smpsLoop		$00, $02, SSBB_WRoom_Loop5, Target
	;!@ dc.b	nRst, nFs4, $06, nRst, $03, nFs3, $06, nRst
	dc.b	nRst, $03, nFs4, $06, nRst, $03, nFs3, $06, nRst
	dc.b	$03, nFs4, nRst, nAb3, $06, nRst, $03, nAb4
	dc.b	$06, nRst, $03, nAb3, nRst, nAb4, $06, nRst
	dc.b	$03, nAb3, $06, nRst, $03, nAb4, nRst, nAb3
	dc.b	$06, nRst, $03, nAb4, $06, nRst, $03
	smpsAlterVol		$FF
	dc.b	nAb3, nRst, nFs4, $06, nRst, $03, nFs3, $06
	dc.b	nRst, $03, nFs4, nRst, nAb3, $06, nRst, $03
	dc.b	nAb4, $06, nRst, $03, nAb3, nRst, nAb4, $06
	dc.b	nRst, $03, nAb3, $06, nRst, $03, nAb4, nRst
	dc.b	nAb3, $06, nRst, $03, nAb4, $06, nRst, $03
	dc.b	nAb3, nRst, nFs4, $06, nRst, $03, nFs3, $06
	dc.b	nRst, $03, nFs4, nRst, nAb3, $06, nRst, $03
	dc.b	nAb4, $06, nRst, $03, nAb3, nRst, nAb4, $06
	dc.b	nRst, $03, nAb3, $06, nRst, $03, nAb4, nRst
	dc.b	nFs3, $06, nRst, $03, nFs4, $06, nRst, $03
	dc.b	nFs3, nRst
	smpsAlterVol		$FE
	dc.b	nAb4, $06, nRst, $03, nAb3, $06, nRst, $03
	dc.b	nAb4, nRst, nAb3, $48
	smpsFMvoice		FMVoi_SteelGit2
	;!@ ?
	dc.b	smpsNoAttack, $12, nRst, $04
	smpsAlterNote	$00
	;!@ dc.b	$02
	dc.b	nRst, $02
	smpsAlterVol		$04
	smpsJump		SSBB_WRoom_Jump1, Target

SSBB_WRoom_FM4:
	smpsFMvoice		FMVoi_SteelGit2
	dc.b	nRst, $18

SSBB_WRoom_Jump2:
	dc.b	nRst, $01, nCs4, $05, nRst, $04, nE4, $05
	dc.b	nRst, $04, nCs4, $02, nRst, $04, nE4, $05
	dc.b	nRst, $04, nCs4, $05, nRst, $04, nE4, $02
	dc.b	nRst, $04, nCs4, $05, nRst, $04, nE4, $05
	dc.b	nRst, $04, nCs4, $02, nRst, $04, nEb4, $05
	dc.b	nRst, $04, nB3, $05, nRst, $04, nEb4, $02
	dc.b	nRst, $04
	smpsAlterVol		$FF
	dc.b	nCs4, $05, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $02, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $02, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $02, nRst, $04, nEb4, $05, nRst, $04
	dc.b	nB3, $05, nRst, $04, nEb4, $02, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $02, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $02, nRst, $04
	dc.b	nA3, $05, nRst, $04, nCs4, $05, nRst, $04
	dc.b	nA3, $02, nRst, $04, nEb4, $05, nRst, $04
	dc.b	nC4, $05, nRst, $04, nEb4, $02, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $02, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $02, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $02, nRst, $04, nEb4, $05, nRst, $04
	dc.b	nB3, $05, nRst, $04, nEb4, $02, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $02, nRst, $04, nE4, $05, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nE4, $02, nRst, $04
	dc.b	nCs4, $05, nRst, $04
	smpsAlterVol		$FF
	dc.b	nE4, $05, nRst, $04, nCs4, $02, nRst, $04
	dc.b	nEb4, $05, nRst, $04, nB3, $05, nRst, $04
	dc.b	nEb4, $02, nRst, $04, nCs4, $05, nRst, $04
	dc.b	nE4, $05, nRst, $04, nCs4, $02, nRst, $04
	dc.b	nE4, $05, nRst, $04, nCs4, $05, nRst, $04
	dc.b	nE4, $02, nRst, $04, nCs4, $05, nRst, $04
	dc.b	nE4, $05, nRst, $04, nCs4, $02, nRst, $04
	dc.b	nEb4, $05, nRst, $04, nB3, $05, nRst, $04
	dc.b	nEb4, $02, nRst, $04, nCs4, $05, nRst, $04
	dc.b	nE4, $05, nRst, $04, nCs4, $02, nRst, $04
	dc.b	nE4, $05, nRst, $04, nCs4, $05, nRst, $04
	dc.b	nE4, $02, nRst, $04, nA3, $05, nRst, $04
	dc.b	nCs4, $05, nRst, $04, nA3, $02, nRst, $04
	smpsAlterVol		$FE
	dc.b	nEb4, $05, nRst, $04, nC4, $05, nRst, $04
	dc.b	nEb4, $02, nRst, $05, nCs4, $5A, nRst, $04
	smpsAlterVol		$04
	smpsJump		SSBB_WRoom_Jump2, Target

SSBB_WRoom_FM5:
	smpsFMvoice		FMVoi_SteelGit2
	dc.b	nRst, $18

SSBB_WRoom_Jump3:
	dc.b	nRst, $01, nE4, $06, nRst, $03, nCs4, $06
	dc.b	nRst, $03, nE4, nRst, nCs4, $06, nRst, $03
	dc.b	nE4, $06, nRst, $03, nCs4, nRst, nE4, $06
	dc.b	nRst, $03, nCs4, $06, nRst, $03, nE4, nRst
	dc.b	nB3, $06, nRst, $03, nEb4, $06, nRst, $03
	dc.b	nB3, nRst
	smpsAlterVol		$FF
	dc.b	nE4, $06, nRst, $03, nCs4, $06, nRst, $03
	dc.b	nE4, nRst, nCs4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nCs4, nRst, nE4, $06, nRst, $03
	dc.b	nCs4, $06, nRst, $03, nE4, nRst, nB3, $06
	dc.b	nRst, $03, nEb4, $06, nRst, $03, nB3, nRst
	dc.b	nE4, $06, nRst, $03, nCs4, $06, nRst, $03
	dc.b	nE4, nRst, nCs4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nCs4, nRst, nCs4, $06, nRst, $03
	dc.b	nA3, $06, nRst, $03, nCs4, nRst, nC4, $06
	dc.b	nRst, $03, nEb4, $06, nRst, $03, nC4, nRst
	dc.b	nE4, $06, nRst, $03, nCs4, $06, nRst, $03
	dc.b	nE4, nRst, nCs4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nCs4, nRst, nE4, $06, nRst, $03
	dc.b	nCs4, $06, nRst, $03, nE4, nRst, nB3, $06
	dc.b	nRst, $03, nEb4, $06, nRst, $03, nB3, nRst
	dc.b	nE4, $06, nRst, $03, nCs4, $06, nRst, $03
	dc.b	nE4, nRst, nCs4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nCs4, nRst, nE4, $06, nRst, $03
	smpsAlterVol		$FF
	dc.b	nCs4, $06, nRst, $03, nE4, nRst, nB3, $06
	dc.b	nRst, $03, nEb4, $06, nRst, $03, nB3, nRst
	dc.b	nE4, $06, nRst, $03, nCs4, $06, nRst, $03
	dc.b	nE4, nRst, nCs4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nCs4, nRst, nE4, $06, nRst, $03
	dc.b	nCs4, $06, nRst, $03, nE4, nRst, nB3, $06
	dc.b	nRst, $03, nEb4, $06, nRst, $03, nB3, nRst
	dc.b	nE4, $06, nRst, $03, nCs4, $06, nRst, $03
	dc.b	nE4, nRst, nCs4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nCs4, nRst, nCs4, $06, nRst, $03
	dc.b	nA3, $06, nRst, $03, nCs4, nRst
	smpsAlterVol		$FE
	dc.b	nC4, $06, nRst, $03, nEb4, $06, nRst, $03
	dc.b	nC4, nRst, $06, nE4, $5A, nRst, $02
	smpsAlterVol		$04
	smpsJump		SSBB_WRoom_Jump3, Target

SSBB_WRoom_FM6:
	smpsPan		panRight
	smpsFMvoice		FMVoi_SteelGit2
	dc.b	nRst, $18

SSBB_WRoom_Jump4:
	dc.b	nRst, $02, nAb4, $06, nRst, $03, nAb3, $06
	dc.b	nRst, $03, nAb4, nRst, nAb3, $06, nRst, $03
	dc.b	nAb4, $06, nRst, $03, nAb3, nRst, nAb4, $06
	dc.b	nRst, $03, nAb3, $06, nRst, $03, nAb4, nRst
	dc.b	nFs3, $06, nRst, $03, nFs4, $06, nRst, $03
	dc.b	nFs3, nRst
	smpsAlterVol		$FF
	dc.b	nAb4, $06, nRst, $03, nAb3, $06, nRst, $03
	dc.b	nAb4, nRst, nAb3, $06, nRst, $03, nAb4, $06
	dc.b	nRst, $03, nAb3, nRst, nAb4, $06, nRst, $03
	dc.b	nAb3, $06, nRst, $03, nAb4, nRst, nFs3, $06
	dc.b	nRst, $03, nFs4, $06, nRst, $03, nFs3, nRst
	dc.b	nAb4, $06, nRst, $03, nAb3, $06, nRst, $03
	dc.b	nAb4, nRst, nAb3, $06, nRst, $03, nAb4, $06
	dc.b	nRst, $03, nAb3, nRst, nFs4, $06, nRst, $03
	dc.b	nFs3, $06, nRst, $03, nFs4

SSBB_WRoom_Loop6:
	dc.b	nRst, nAb3, $06, nRst, $03, nAb4, $06, nRst
	dc.b	$03, nAb3, nRst, nAb4, $06, nRst, $03, nAb3
	dc.b	$06, nRst, $03, nAb4
	smpsLoop		$00, $02, SSBB_WRoom_Loop6, Target
	dc.b	nRst, nFs3, $06, nRst, $03, nFs4, $06, nRst
	dc.b	$03, nFs3, nRst, nAb4, $06, nRst, $03, nAb3
	dc.b	$06, nRst, $03, nAb4, nRst, nAb3, $06, nRst
	dc.b	$03, nAb4, $06, nRst, $03, nAb3, nRst, nAb4
	dc.b	$06, nRst, $03
	smpsAlterVol		$FF
	dc.b	nAb3, $06, nRst, $03, nAb4, nRst, nFs3, $06
	dc.b	nRst, $03, nFs4, $06, nRst, $03, nFs3, nRst
	dc.b	nAb4, $06, nRst, $03, nAb3, $06, nRst, $03
	dc.b	nAb4, nRst, nAb3, $06, nRst, $03, nAb4, $06
	dc.b	nRst, $03, nAb3, nRst, nAb4, $06, nRst, $03
	dc.b	nAb3, $06, nRst, $03, nAb4, nRst, nFs3, $06
	dc.b	nRst, $03, nFs4, $06, nRst, $03, nFs3, nRst
	dc.b	nAb4, $06, nRst, $03, nAb3, $06, nRst, $03
	dc.b	nAb4, nRst, nAb3, $06, nRst, $03, nAb4, $06
	dc.b	nRst, $03, nAb3, nRst, nFs4, $06, nRst, $03
	dc.b	nFs3, $06, nRst, $03, nFs4, nRst
	smpsAlterVol		$FE
	dc.b	nAb3, $06, nRst, $03, nAb4, $06, nRst, $03
	dc.b	nAb3, nRst, $07, nAb4, $58, nRst, $02
	smpsAlterVol		$04
	smpsJump		SSBB_WRoom_Jump4, Target

SSBB_WRoom_PSG1:
	;!@ dc.b	nB0, $01, nRst, nCs1, $0A, nB0, $06, nA0
	dc.b	nB0, $01, nRst, $01, nCs1, $0A, nB0, $06, nA0

SSBB_WRoom_Loop7:
	;!@ dc.b	nAb0, $30, nRst, $12, nE0, $01, nRst, nFs0
	dc.b	nAb0, $30, nRst, $12, nE0, $01, nRst, $01, nFs0
	dc.b	$0A, nAb0, $06, nA0, nB0
	smpsLoop		$00, $02, SSBB_WRoom_Loop7, Target
	dc.b	nAb0, $30, nRst, $0C, nEb0, $06, nE0, nE0
	dc.b	$01, nRst, nFs0, $0A, nE0, $06, nEb0, nCs0
	dc.b	$0C, nFs0, $01, nRst, nAb0, $22, nRst, $18
	dc.b	nB0, $01, nRst, nCs1, $0A, nB0, $06, nA0

SSBB_WRoom_Loo$8:
	dc.b	nAb0, $30, nRst, $12, nE0, $01, nRst, nFs0
	dc.b	$0A, nAb0, $06, nA0, nB0
	smpsLoop		$00, $02, SSBB_WRoom_Loo$8, Target
	dc.b	nAb0, $30, nRst, $0C, nEb0, $06, nE0, nE0
	dc.b	$01, nRst, nFs0, $0A, nE0, $06, nEb0, nD0
	dc.b	$01, nRst, nE0, $0A, nCs0, $30, nRst, $0C
	dc.b	nB0, $01, nRst, nCs1, $0A, nB0, $06, nA0
	smpsAlterNote	$00
	smpsJump		SSBB_WRoom_Loop7, Target

SSBB_WRoom_PSG2:
	dc.b	nRst, $18

SSBB_WRoom_Jump5:
	dc.b	nRst, $01

SSBB_WRoom_Loo$9:
	dc.b	nCs1, $05, nRst, $04, nE1, $05, nRst, $04
	dc.b	nCs1, $02, nRst, $04, nE1, $05, nRst, $04
	dc.b	nCs1, $05, nRst, $04, nE1, $02, nRst, $04
	dc.b	nCs1, $05, nRst, $04, nE1, $05, nRst, $04
	dc.b	nCs1, $02, nRst, $04, nEb1, $05, nRst, $04
	dc.b	nB0, $05, nRst, $04, nEb1, $02, nRst, $04
	smpsLoop		$00, $02, SSBB_WRoom_Loo$9, Target
	dc.b	nCs1, $05, nRst, $04, nE1, $05, nRst, $04
	dc.b	nCs1, $02, nRst, $04, nE1, $05, nRst, $04
	dc.b	nCs1, $05, nRst, $04, nE1, $02, nRst, $04
	dc.b	nA0, $05, nRst, $04, nCs1, $05, nRst, $04
	dc.b	nA0, $02, nRst, $04, nEb1, $05, nRst, $04
	dc.b	nC1, $05

SSBB_WRoom_Loop10:
	dc.b	nRst, $04, nEb1, $02, nRst, $04, nCs1, $05
	dc.b	nRst, $04, nE1, $05, nRst, $04, nCs1, $02
	dc.b	nRst, $04, nE1, $05, nRst, $04, nCs1, $05
	dc.b	nRst, $04, nE1, $02, nRst, $04, nCs1, $05
	dc.b	nRst, $04, nE1, $05, nRst, $04, nCs1, $02
	dc.b	nRst, $04, nEb1, $05, nRst, $04, nB0, $05
	smpsLoop		$00, $03, SSBB_WRoom_Loop10, Target
	dc.b	nRst, $04, nEb1, $02, nRst, $04, nCs1, $05
	dc.b	nRst, $04, nE1, $05, nRst, $04, nCs1, $02
	dc.b	nRst, $04, nE1, $05, nRst, $04, nCs1, $05
	dc.b	nRst, $04, nE1, $02, nRst, $04, nA0, $05
	dc.b	nRst, $04, nCs1, $05, nRst, $04, nA0, $02
	dc.b	nRst, $04
	smpsSetVol	$FF
	dc.b	nEb1, $05, nRst, $04, nC1, $05, nRst, $04
	dc.b	nEb1, $02, nRst, $05, nCs1, $5A, nRst, $04
	smpsSetVol	$01
	smpsJump		SSBB_WRoom_Jump5, Target

SSBB_WRoom_PSG3:
	dc.b	nRst, $18

SSBB_WRoom_Jump6:
	dc.b	nRst, $01

SSBB_WRoom_Loop11:
	dc.b	nE1, $06, nRst, $03, nCs1, $06, nRst, $03
	dc.b	nE1, nRst, nCs1, $06, nRst, $03, nE1, $06
	dc.b	nRst, $03, nCs1, nRst, nE1, $06, nRst, $03
	dc.b	nCs1, $06, nRst, $03, nE1, nRst, nB0, $06
	dc.b	nRst, $03, nEb1, $06, nRst, $03, nB0, nRst
	smpsLoop		$00, $02, SSBB_WRoom_Loop11, Target
	dc.b	nE1, $06, nRst, $03, nCs1, $06, nRst, $03
	dc.b	nE1, nRst, nCs1, $06, nRst, $03, nE1, $06
	dc.b	nRst, $03, nCs1, nRst, nCs1, $06, nRst, $03
	dc.b	nA0, $06, nRst, $03, nCs1, nRst, nC1, $06
	dc.b	nRst, $03, nEb1, $06, nRst, $03, nC1

SSBB_WRoom_Loop12:
	dc.b	nRst, nE1, $06, nRst, $03, nCs1, $06, nRst
	dc.b	$03, nE1, nRst, nCs1, $06, nRst, $03, nE1
	dc.b	$06, nRst, $03, nCs1, nRst, nE1, $06, nRst
	dc.b	$03, nCs1, $06, nRst, $03, nE1, nRst, nB0
	dc.b	$06, nRst, $03, nEb1, $06, nRst, $03, nB0
	smpsLoop		$00, $03, SSBB_WRoom_Loop12, Target
	dc.b	nRst, nE1, $06, nRst, $03, nCs1, $06, nRst
	dc.b	$03, nE1, nRst, nCs1, $06, nRst, $03, nE1
	dc.b	$06, nRst, $03, nCs1, nRst, nCs1, $06, nRst
	dc.b	$03, nA0, $06, nRst, $03, nCs1, nRst
	smpsSetVol	$FF
	dc.b	nC1, $06, nRst, $03, nEb1, $06, nRst, $03
	dc.b	nC1, nRst, $06, nE1, $5A, nRst, $02
	smpsSetVol	$01
	smpsJump		SSBB_WRoom_Jump6, Target
	
SSBB_WRoom_PWM1:
	smpsPan		panCenter
	dc.b	nRst, $18

SSBB_WRoom_PWM1_Loop1:
	dc.b	pFingSnapLo, $09, pFingSnapHi, $03, pASnare, $06, pFingSnapHi
	smpsLoop		$00, $1C, SSBB_WRoom_PWM1_Loop1, Target
	dc.b	pFingSnapLo, $09, pFingSnapHi, pFingSnapLo, $0C, pFingSnapHi, $06, $0C
	dc.b	pFingSnapLo, $09, pFingSnapHi, pFingSnapLo, $0C, pFingSnapHi, $06, $03
	dc.b	nRst, $09
	smpsJump		SSBB_WRoom_PWM1_Loop1, Target
	
SSBB_WRoom_PWM2:
	dc.b	nRst, $18

SSBB_WRoom_PWM2_Loop1:
	dc.b	pBongoLo, $09, pBongoHi, pBongoHi, $06
	smpsLoop		$00, $1C, SSBB_WRoom_PWM2_Loop1, Target

SSBB_WRoom_PWM2_Loop2:
	dc.b	pBongoLo, $09, pBongoHi, pBongoLo, $0C, pBongoHi, $06, $0C
	smpsLoop		$00, $02, SSBB_WRoom_PWM2_Loop2, Target
	smpsJump		SSBB_WRoom_PWM2_Loop1, Target
	
SSBB_WRoom_PWM3:
	dc.b	nRst, $18

SSBB_WRoom_PWM3_Loop1:
	dc.b	pEKick, $09, pClosedHH, pClosedHH, $06
	smpsLoop		$00, $1B, SSBB_WRoom_PWM3_Loop1, Target
	dc.b	pEKick, $09, pClosedHH, pClosedHH, $66
	smpsJump		SSBB_WRoom_PWM3_Loop1, Target

SSBB_WRoom_PWM4:
	smpsStop

SSBB_WRoom_Patches:	
	;Accoustic Guitar (Steel) 1
	dc.b	$2B
	dc.b	$36, $03, $00, $01,	$DF, $DC, $DD, $DF
	dc.b	$06, $09, $02, $00,	$06, $04, $01, $04
	dc.b	$23, $33, $13, $05,	$19, $20, $20, $08
	
	;Accoustic Bass
	dc.b	$06
	dc.b	$00, $00, $01, $02,	$9F, $1F, $9F, $1F
	dc.b	$04, $0A, $11, $14,	$0E, $01, $0E, $0E
	dc.b	$F8, $48, $F8, $F8,	$17, $0A, $0A, $0A
	
	;Accoustic Guitar (Steel) 2
	dc.b	$2B
	dc.b	$36, $03, $00, $01,	$DF, $DC, $DD, $DF
	dc.b	$06, $09, $02, $00,	$06, $04, $01, $04
	dc.b	$23, $33, $13, $05,	$19, $20, $20, $08+$12
