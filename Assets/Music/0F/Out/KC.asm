Target	EQU	$40000
PWMVol1	EQU	$22
PWMVol2	EQU	$10

;!@ PSGVoi1	EQU	$01
;!@ PSGVoi2	EQU	$04
;!@ PSGVoi3	EQU	$05
PSGVoi1	EQU	$00
PSGVoi2	EQU	$00
PSGVoi3	EQU	$00

;!@ PSGVol1	EQU	$07
;!@ PSGVol2	EQU	$0B
;!@ PSGVol3	EQU	$0A
PSGVol1	EQU	$03
PSGVol2	EQU	$06
PSGVol3	EQU	$04

;!@
PSGFOff EQU	$0C
	smpsHeaderVoice		SH_SystemMenu_Patches, Target
	smpsHeaderChan		6,3
	smpsHeaderTempoC	$02, $0F
	smpsHeaderFM	SH_SystemMenu_FM1, Target, $00, $11
	smpsHeaderFM	SH_SystemMenu_FM2, Target, $00, $23+$08
	smpsHeaderFM	SH_SystemMenu_FM3, Target, $00, $14+$08
	smpsHeaderFM	SH_SystemMenu_FM4, Target, $00, $23
	smpsHeaderFM	SH_SystemMenu_FM5, Target, $F4, $20	;!@ $18 
	smpsHeaderFM	SH_SystemMenu_FM6, Target, $00, $21
	smpsHeaderPSG	SH_SystemMenu_PSG1, Target, PSGFOff, PSGVol1, $00, PSGVoi1
	smpsHeaderPSG	SH_SystemMenu_PSG2, Target, PSGFOff, PSGVol2, $00, PSGVoi2
	smpsHeaderPSG	SH_SystemMenu_PSG3, Target, PSGFOff, PSGVol3, $00, PSGVoi2
	smpsHeaderPWM	SH_SystemMenu_PWM1, Target, $00, PWMVol1
	smpsHeaderPWM	SH_SystemMenu_PWM2, Target, $00, PWMVol2
	smpsHeaderPWM	SH_SystemMenu_PWM3, Target, $00, PWMVol2
	smpsHeaderPWM	SH_SystemMenu_PWM4, Target, $00, PWMVol2

SH_SystemMenu_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b	nRst, $05

SH_SystemMenu_Loop2:
	dc.b	nG4

SH_SystemMenu_Loop1:
	dc.b	$06, nC5, $03, nRst, nG5, $0C
	; dc.b	nG5, $06, nC5, $03, nRst, nG5, $0C
	smpsLoop		$00, $02, SH_SystemMenu_Loop1, Target
	dc.b	nG4, $06, nC5, nD5, nG4, nG4, $03, nRst
	dc.b	nF4, $06, nG4, $18, nRst, $54
	smpsLoop		$01, $03, SH_SystemMenu_Loop2, Target
	dc.b	nG4

SH_SystemMenu_Loop3:
	dc.b	$06, nC5, $03, nRst, nG5, $0C
	;dc.b	nG5, $06, nC5, $03, nRst, nG5, $0C
	smpsLoop		$00, $02, SH_SystemMenu_Loop3, Target
	dc.b	nG4, $06, nC5, nD5, nG4, nG4, $03, nRst
	;!@ dc.b	nF4, $06, nG4, $18, nRst, $7F, $77
	dc.b	nF4, $06, nG4, $18, nRst, $7F, nRst, $77

SH_SystemMenu_Loop4:
	;!@ dc.b	nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b	nG5, $03, nG5, $03, nRst, $06, nG5, $03, nG5, $03
	dc.b	nRst, $4E
	smpsLoop		$00, $03, SH_SystemMenu_Loop4, Target
	;!@ dc.b	nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b	nG5, $03, nG5, $03, nRst, $06, nG5, $03, nG5, $03
	dc.b	nRst, $07

SH_SystemMenu_Jump1:
	;!@ dc.b	nRst, $7F, $4C, nA5, $06, nRst, nC6, nA5
	dc.b	nRst, $7F, nRst, $4C, nA5, $06, nRst, nC6, nA5
	dc.b	nRst, nC6, $0C, nA5, $06, nC6, nA5, nC6
	dc.b	nRst, nEb5, nD5, $03, nRst, $09, nC6, $1E
	dc.b	nEb5, $06, nD5, $03, nRst, $09, nC6, $0C
	dc.b	nAb5, $06, nC6, $0C, nD6, $03, nRst, nD6
	dc.b	nRst, $09, nC6, $57, nRst, $4B

SH_SystemMenu_Loop5:
	;!@ dc.b	nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b	nG5, $03, nG5, $03, nRst, $06, nG5, $03, nG5, $03
	dc.b	nRst, $4E
	smpsLoop		$00, $02, SH_SystemMenu_Loop5, Target
	;!@ dc.b	nG5, $03, $03, nRst, $06, nG5, $03, $03
	dc.b	nG5, $03, nG5, $03, nRst, $06, nG5, $03, nG5, $03
	smpsAlterNote	$00
	dc.b	nRst, $07
	smpsJump		SH_SystemMenu_Jump1, Target

SH_SystemMenu_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	;!@ dc.b	nRst

SH_SystemMenu_Loop6:
	;!@ dc.b	$55
	dc.b	nRst, $55
	smpsLoop		$00, $09, SH_SystemMenu_Loop6, Target
	;!@ dc.b	$02, nG4, $03, nA4, $01
	dc.b	nRst, $02, nG4, $03, nA4, $01
	smpsFMvoice		$01
	smpsAlterVol		$FA
	dc.b	smpsNoAttack, $02, nB4, $03, nC5, nA4, nB4, nC5
	dc.b	nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	dc.b	nFs5
	smpsAlterVol		$01
	dc.b	nD5, nE5, nFs5, nG5, nE5, nFs5, nG5, nA5
	dc.b	nFs5, nG5, nA5, nB5, nG5, nA5
	smpsAlterVol		$FF
	dc.b	nB5
	smpsAlterVol		$01
	dc.b	nC6, nA5
	smpsAlterVol		$FF
	dc.b	nB5, nC6
	smpsAlterVol		$02
	dc.b	nD6, nB5
	smpsAlterVol		$01
	dc.b	nC6, nD6, nE6, nC6, nD6
	smpsAlterVol		$FF
	dc.b	nE6, nFs6, nD6, nE6, nFs6, nG6, nE6, nFs6
	dc.b	nG6, nA6, nFs6, nG6, nA6, nB6, nG6, nA6
	dc.b	nB6, nC7, nA6
	smpsAlterVol		$01
	dc.b	nB6
	smpsAlterVol		$01
	dc.b	nC7, nD7, nRst, $06
	smpsAlterVol		$F3
	dc.b	nG3, $01
	smpsFMvoice		$06
	smpsAlterVol		$1B
	dc.b	smpsNoAttack, $02, nA3, $03, nC4, $06, nRst, $03
	smpsAlterVol		$01
	dc.b	nC4, nRst, $06, nE4
	smpsAlterVol		$01
	dc.b	nC4, $03, nRst, $0F, nG3, $03
	smpsAlterVol		$01
	dc.b	nA3, nC4, nRst, nC4, nRst, nD4, $06, nG3
	dc.b	$03, nA3, nC4, nRst
	smpsAlterVol		$FF
	dc.b	nD4, nRst
	smpsAlterVol		$FF
	dc.b	nEb4, nE4, nG3, nA3, nC4, nG3, nA3, nC4
	dc.b	nRst, nC4, nRst, $06, nEb4, $03, nE4, nRst
	dc.b	$0C, nEb4, $03, nRst, nEb4, nRst
	smpsAlterVol		$08
	dc.b	nEb4, nRst, nE4
	smpsAlterVol		$F8
	dc.b	$03
	smpsAlterVol		$08
	;!@ dc.b	$03
	dc.b	nE4, $03
	smpsAlterVol		$F8
	;!@ dc.b	$03
	dc.b	nE4, $03
	smpsAlterVol		$0B
	dc.b	nC4
	smpsAlterVol		$F5
	dc.b	$03, nA3, nG3, nRst
	smpsAlterVol		$02
	dc.b	nF3, nG3, nA3
	smpsAlterVol		$FF
	dc.b	nC4, nRst, nC4, nRst
	smpsAlterVol		$FF
	dc.b	nC4, nRst
	smpsAlterVol		$0B
	dc.b	nE4, nRst
	smpsAlterVol		$F5
	dc.b	nEb4
	smpsAlterVol		$0B
	dc.b	nE4, $06, nC4, $03, nRst
	smpsAlterVol		$F6
	dc.b	nC4, nRst
	smpsAlterVol		$02
	dc.b	nC4
	smpsAlterVol		$FF
	dc.b	$03, nRst, nC4, nRst
	smpsAlterVol		$09
	dc.b	nG3
	smpsAlterVol		$F7
	dc.b	nA3
	smpsAlterVol		$FF
	dc.b	nC4, nRst
	smpsAlterVol		$0A
	dc.b	nG3
	smpsAlterVol		$F5
	dc.b	nA3
	smpsAlterVol		$02
	dc.b	nC4
	smpsAlterVol		$FE
	dc.b	nD4, nRst, $01

SH_SystemMenu_Jump2:
	dc.b	nRst, $06
	smpsFMvoice		$07
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsAlterVol		$F6
	dc.b	nB4, nRst, $02, nFs5, $01, nRst, $02, nC6
	dc.b	$01, nRst, $02, nG6, $01, nRst, nC7, nRst
	dc.b	$03, nC7, $01, nB6, nRst, $03, nC6, $01
	dc.b	nRst, nA5, nRst, $2F
	smpsAlterVol		$08
	dc.b	nG5, $01
	smpsFMvoice		$01
	smpsAlterVol		$E8
	dc.b	smpsNoAttack, $05, nF5, $06, nE5, nD5, nD5, nF5
	dc.b	nA5, $0C, nF5, $06, nD5, nB4
	smpsAlterNote	$00
	;!@ dc.b	nRst, $7F, $7F, $23
	dc.b	nRst, $7F, nRst, $7F, nRst, $23
	smpsFMvoice		$07
	;!@ dc.b	$04
	dc.b	nRst, $04
	smpsAlterVol		$10
	dc.b	nB4, $01, nRst, $02, nFs5, $01, nRst, $02
	dc.b	nC6, $01, nRst, $02, nG6, $01, nRst, nC7
	dc.b	nRst, $03, nC7, $01, nB6, nRst, $03, nC6
	dc.b	$01, nRst, nA5, nRst, $02, nD5, $01, nRst
	dc.b	$02, nG4, $01, nRst, nG4, nRst, $02, nD5
	;!@ dc.b	$01, nRst, $02, nA5, $01, nRst, nRst, $04
	dc.b	$01, nRst, $02, nA5, $01, nRst, $01, nRst, $04
	dc.b	nB6, $01, nRst, $06
	smpsAlterVol		$FA
	dc.b	nG3, $01
	smpsFMvoice		$06
	smpsAlterVol		$0F
	dc.b	smpsNoAttack, $02, nA3, $03, nC4, $06, nRst, $03
	smpsAlterVol		$01
	dc.b	nC4, nRst, $06, nE4
	smpsAlterVol		$01
	dc.b	nC4, $03, nRst, $0F, nG3, $03
	smpsAlterVol		$01
	dc.b	nA3, nC4, nRst, nC4, nRst, nD4, $06, nG3
	dc.b	$03, nA3, nC4, nRst
	smpsAlterVol		$FF
	dc.b	nD4, nRst
	smpsAlterVol		$FF
	dc.b	nEb4, nE4, nG3, nA3, nC4, nG3, nA3, nC4
	dc.b	nRst, nC4, nRst, $06, nEb4, $03, nE4, nRst
	dc.b	$0C, nEb4, $03, nRst, nEb4, nRst
	smpsAlterVol		$08
	dc.b	nEb4, nRst, nE4
	smpsAlterVol		$F8
	dc.b	$03
	smpsAlterVol		$08
	;!@ dc.b	$03
	dc.b	nE4, $03
	smpsAlterVol		$F8
	;!@ dc.b	$03
	dc.b	nE4, $03
	smpsAlterVol		$0B
	dc.b	nC4
	smpsAlterVol		$F5
	dc.b	$03, nA3, nG3, nRst
	smpsAlterVol		$02
	dc.b	nF3, nG3, nA3
	smpsAlterVol		$FF
	dc.b	nC4, nRst, nC4, nRst
	smpsAlterVol		$FF
	dc.b	nC4, nRst
	smpsAlterVol		$0B
	dc.b	nE4, nRst
	smpsAlterVol		$F5
	dc.b	nEb4
	smpsAlterVol		$0B
	dc.b	nE4, $06, nC4, $03, nRst
	smpsAlterVol		$F6
	dc.b	nC4, nRst
	smpsAlterVol		$02
	dc.b	nC4
	smpsAlterVol		$FF
	dc.b	$03, nRst, nC4, nRst
	smpsAlterVol		$09
	dc.b	nG3
	smpsAlterVol		$F7
	dc.b	nA3
	smpsAlterVol		$FF
	dc.b	nC4, nRst
	smpsAlterVol		$0A
	dc.b	nG3
	smpsAlterVol		$F5
	dc.b	nA3
	smpsAlterVol		$02
	dc.b	nC4
	smpsAlterVol		$FE
	dc.b	nD4, nRst, $01
	smpsJump		SH_SystemMenu_Jump2, Target

SH_SystemMenu_FM3:
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b	nG4, $0B

SH_SystemMenu_Loop8:
	dc.b	nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b	$06, nRst, $0C, nG4, $06, nRst, $0C, nG4
	dc.b	nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b	$06, nRst, $0C, nG4, $06, nRst, $0C
	smpsAlterVol		$01

SH_SystemMenu_Loop7:
	dc.b	nF4, nRst, $06, nF4, nRst, $0C, nF4, nRst
	dc.b	nF4, $06, nRst, $0C, nF4, $06, nRst, $0C
	smpsLoop		$00, $02, SH_SystemMenu_Loop7, Target
	smpsAlterVol		$FF
	;!@ dc.b	nG4
	dc.b	nG4, $0C
	smpsLoop		$01, $02, SH_SystemMenu_Loop8, Target
	dc.b	nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b	$06, nRst, $0C, nG4, $06, nRst, $0C, nG4
	dc.b	nRst, $06, nG4, nRst, $0C, nG4, nRst, nG4
	dc.b	$06, nRst, $0C, nG4, $06, nRst, $0C
	smpsAlterVol		$FA
	dc.b	nE5, $01
	smpsAlterVol		$0B
	smpsFMvoice		$02
	dc.b	smpsNoAttack, $05, nRst, $06, nC5, nRst, nD5, nRst
	dc.b	nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b	$12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b	nG5, nRst, nF5, nE5, nC5, nA4, nG4, nRst
	dc.b	$12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b	nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b	$12
	smpsAlterVol		$06
	;!@ Issues
	;dc.b	nE5, $01
	dc.b	nRst, $01

SH_SystemMenu_Jump3:
	smpsAlterVol		$F4
	smpsFMvoice		$03
	;!@ dc.b	smpsNoAttack, $0B, nG5, $06, nB5, $12, nG5, $06
	dc.b	nRst, $0B, nG5, $06, nB5, $12, nG5, $06
	;!@ dc.b	nE5, $24, nRst, $12, nF5, $06, $06, nG5
	dc.b	nE5, $24, nRst, $12, nF5, $06, nF5, $06, nG5
	dc.b	nA5, $0C, nA4, $06, nC5, nB4, nG4, nB4
	dc.b	nG5, nB5, nG5, nE5, nG5, nA5, $24, nRst
	dc.b	$4E, nAb4, $0C, nC5, nEb5, $06, nG5, nD5
	dc.b	$0C, nF5, $06, nD5, nBb4, $0C, nG5, $06
	dc.b	nF5, $03, nRst, $09, nE5, $36, nRst, $24
	smpsAlterVol		$FA
	dc.b	nE5, $01
	smpsFMvoice		$02
	smpsAlterVol		$0C
	dc.b	smpsNoAttack, $05, nRst, $06, nC5, nRst, nD5, nRst
	dc.b	nG5, nRst, nF5, nE5, nD5, nC5, nD5, nRst
	dc.b	$12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b	nG5, nRst, nF5, nE5, nC5, nA4, nG4, nRst
	dc.b	$12, nE5, $06, nRst, nC5, nRst, nD5, nRst
	dc.b	nG5, nRst, nF5, nE5, nD5, nC5, nD5
	smpsAlterNote	$00
	dc.b	nRst, $12
	smpsAlterVol		$06
	;!@ dc.b	$01
	dc.b	nRst, $01
	smpsJump		SH_SystemMenu_Jump3, Target

SH_SystemMenu_FM4:
	smpsPan		panCenter
	smpsFMvoice		$04
	dc.b	nRst, $6B, nG5, $0C
	smpsAlterVol		$02
	dc.b	nA5
	smpsAlterVol		$FE
	dc.b	nG5
	smpsAlterVol		$FE
	dc.b	nF5, $12
	smpsAlterVol		$FB
	dc.b	nE5
	smpsAlterVol		$FD
	dc.b	nC6, $0C
	smpsAlterVol		$03
	dc.b	nD5, $24, nRst, $3C
	smpsAlterVol		$03
	dc.b	nG5, $0C, nF5
	smpsAlterVol		$FE
	dc.b	nE5, $09, nF5, $03
	smpsAlterVol		$01
	;!@ dc.b	nF6, $0C, nG5, $0F, $09, nA5
	dc.b	nF6, $0C, nG5, $0F, nG5, $09, nA5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nB5, $06
	smpsAlterVol		$FF
	dc.b	nG5, $30, nRst, $3C, nG5, $0C, nA5, nG5
	dc.b	nF5, $12, nE5, nC6, $0C, nD5, $24, nRst
	dc.b	$3C
	smpsAlterVol		$FD
	dc.b	nG5, $0C, nF5, nE5, nRst
	smpsAlterVol		$02
	;!@ dc.b	nG5, $0F, $09, nA5, nC6, nB5, $06, nG5
	dc.b	nG5, $0F, nG5, $09, nA5, nC6, nB5, $06, nG5
	;!@ dc.b	$30, nRst, $7F, $11, nG5, $42, nE5, $06
	dc.b	$30, nRst, $7F, nRst, $11, nG5, $42, nE5, $06
	dc.b	nF5, nE5
	smpsAlterVol		$01
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nG5, $48
	smpsAlterVol		$FF
	dc.b	nA5, $06, nC6, nD5, nE5, nF5, nG5, $48
	dc.b	nRst, $06, nA5
	smpsAlterVol		$FF
	dc.b	nC6, nD5
	smpsAlterVol		$F9
	dc.b	nE5, $01

SH_SystemMenu_Jump4:
	;!@ dc.b	smpsNoAttack, $0B
	dc.b	nRst, $0B
	smpsAlterVol		$04
	dc.b	nG5, $06
	smpsAlterVol		$FF
	dc.b	nB5, $12
	smpsAlterVol		$01
	dc.b	nG6, $06
	smpsAlterVol		$01
	dc.b	nE5, $24, nRst, $12
	smpsAlterVol		$07
	;!@ dc.b	nB5, $06, $06
	dc.b	nB5, $06, nB5, $06
	smpsAlterVol		$FB
	;!@ dc.b	nD5, nF5, $0C, $06, nA5, nG5, nE5
	dc.b	nD5, nF5, $0C, nF5, $06, nA5, nG5, nE5
	smpsAlterVol		$01
	dc.b	nG5, nB5, nD5
	smpsAlterVol		$FC
	dc.b	nB5
	smpsAlterVol		$FE
	;!@ Issues?
	;!@ dc.b	nG5, nB5, nC6, $7F, smpsNoAttack, $17
	dc.b	nG5, nB5, nC6, $7F, smpsNoAttack, nC6, $17
	smpsAlterVol		$03
	;!@ dc.b	nBb5, $0C, $0C, $0C
	dc.b	nBb5, $0C, nBb5, $0C, nBb5, $0C
	smpsAlterVol		$02
	dc.b	nG5, $06, nF5, $0C
	smpsAlterVol		$01
	dc.b	nC6, $5A
	smpsAlterVol		$FE
	dc.b	nG5, $42
	smpsAlterVol		$FF
	dc.b	nE5, $06, nF5
	smpsAlterVol		$FE
	dc.b	nE5
	smpsAlterVol		$FF
	dc.b	nC6
	smpsAlterVol		$01
	dc.b	nG5, $48
	smpsAlterVol		$02
	dc.b	nA5, $06, nC6
	smpsAlterVol		$FF
	dc.b	nD5
	smpsAlterVol		$FA
	dc.b	nE5, nF5
	smpsAlterVol		$FE
	dc.b	nG5, $48, nRst, $06
	smpsAlterVol		$0B
	dc.b	nA5
	smpsAlterVol		$01
	dc.b	nC6, nD5
	smpsAlterVol		$01
	smpsAlterNote	$00
	dc.b	nRst, $01
	smpsAlterVol		$F7
	smpsJump		SH_SystemMenu_Jump4, Target

SH_SystemMenu_FM5:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b	nG2, $08

SH_SystemMenu_Loop9:
	dc.b	nD2, $09, nG2, $0C, nD2, $06, nG2, nD3
	dc.b	nG2, $09
	smpsLoop		$00, $03, SH_SystemMenu_Loop9, Target
	dc.b	nD2, nG2, $0C, nD2, $06, nG2, nD3

SH_SystemMenu_Loop10:
	dc.b	nF2, $09, nC2, nF2, $0C, nC2, $06, nF2
	dc.b	nC3
	smpsLoop		$00, $04, SH_SystemMenu_Loop10, Target
	dc.b	nG2, $09
	smpsLoop		$01, $02, SH_SystemMenu_Loop9, Target

SH_SystemMenu_Loop11:
	dc.b	nD2, nG2, $0C, nD2, $06, nG2, nD3, nG2
	dc.b	$09
	smpsLoop		$00, $03, SH_SystemMenu_Loop11, Target
	dc.b	nD2, nG2, $0C, nD2, $06, nG2, nD3
	smpsAlterVol		$06
	dc.b	$09, nA2, nD3, $0C, nA2, nAb2, $06, nG2
	dc.b	nD3, $0C, nG3, nF3, $06, nA2, nG2, nD3
	dc.b	$09, nA2, nD3, $0C, nA2, nAb2, $06, nG2
	dc.b	nD3, nAb3, $03, nRst, nG3, $0C, nF3, $06
	dc.b	nD3, nAb2, nD3, $09, nA2, nD3, $0C, nA2
	dc.b	nAb2, $06, nG2, nD3, $0C, nG3, nF3, $06
	dc.b	nA2, nG2, nE3, $01

SH_SystemMenu_Jump5:
	;!@ dc.b	smpsNoAttack, $05, nRst, $03, nE3, nB2, $06, nE3
	dc.b	nRst, $05, nRst, $03, nE3, nB2, $06, nE3
	dc.b	$09, nRst, $03, nE3, $06, nB2, nE3, nEb3
	dc.b	$0C, nBb2, nE3, nB2, nF3, $09, nC3, nF2
	dc.b	$12, nC3, $06, nF3, nB2, nRst, $03, nB2
	dc.b	nRst, $06, nE2, $12, nB2, $06, nG2, nA2
	;!@ dc.b	nRst, $03, nA2, nRst, $06, nE2, $0C, $06
	dc.b	nRst, $03, nA2, nRst, $06, nE2, $0C, nE2, $06
	;!@ dc.b	$06, nG2, nAb2, $09, nEb3, nEb2, $0C, $06
	dc.b	nE2, $06, nG2, nAb2, $09, nEb3, nEb2, $0C, nEb2, $06
	;!@ dc.b	$06, nG2, nAb2, $09, nEb2, nAb2, $0C, nRst
	dc.b	nEb2, $06, nG2, nAb2, $09, nEb2, nAb2, $0C, nRst
	dc.b	$06, nAb2, $03, nRst, nAb2, nRst, nBb2, $0C
	dc.b	nF2, nBb1, nBb2, $06, nG2, nC3, nRst, $03
	dc.b	nC3, nRst, $06, nC3, $18, nG2, $06, nC3
	dc.b	$09, nG2, nC2, $1E, nD3, $09, nA2, nD3
	dc.b	$0C, nA2, nAb2, $06, nG2, nD3, $0C, nG3
	dc.b	nF3, $06, nA2, nG2, nD3, $09, nA2, nD3
	dc.b	$0C, nA2, nAb2, $06, nG2, nD3, nAb3, $03
	dc.b	nRst, nG3, $0C, nF3, $06, nD3, nAb2, nD3
	dc.b	$09, nA2, nD3, $0C, nA2, nAb2, $06, nG2
	dc.b	nD3, $0C, nG3, nF3, $06, nA2, nG2
	smpsAlterNote	$00
	dc.b	nRst, $01
	smpsJump		SH_SystemMenu_Jump5, Target

SH_SystemMenu_FM6:
	smpsPan		panCenter
	smpsFMvoice		$05
	;!@ dc.b	nRst

SH_SystemMenu_Loop12:
	;!@ dc.b	$57
	dc.b	nRst, $57
	smpsLoop		$00, $0B, SH_SystemMenu_Loop12, Target
	;!@ dc.b	$02, nE4, $03, nRst, $06, nE4, $01
	dc.b	nRst, $02, nE4, $03, nRst, $06, nE4, $01
	smpsFMvoice		$05
	dc.b	smpsNoAttack, $02, nRst, $06, nE4, $03, nRst, $09
	dc.b	nE4, $03, nRst, $06, nE4, $03, nB4, nE4
	dc.b	nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop13:
	dc.b	nRst, $06, nB3, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop13, Target
	dc.b	nRst, nB3, nC4, nE4, $06, nRst, $03, nE4
	dc.b	nRst, $06, nE4, $03, nRst, $09, nE4, $03
	dc.b	nRst, $06, nE4, nRst, $03, nB3, $06, nRst
	dc.b	$03, nB3, nRst, $06, nB3, $03, nRst, $09
	dc.b	nB3, $03, nRst, nB3, nRst, nB3, nC4, nE4
	dc.b	nRst, $06, nE4, $03, nRst, $06, nE4, $03
	dc.b	nRst, $09, nE4, $03, nRst, $06, nE4, $03
	dc.b	nB4, nE4, nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop14:
	dc.b	nRst, $06, nB3, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop14, Target
	dc.b	nRst, nB3, nC4, nRst, $01

SH_SystemMenu_Jump6:
	;!@ dc.b	nRst, $7F, $7F, $7F, $62, nE4, $03, nRst
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $62, nE4, $03, nRst
	dc.b	$06, nE4, $01
	smpsFMvoice		$05
	dc.b	smpsNoAttack, $02, nRst, $06, nE4, $03, nRst, $09
	dc.b	nE4, $03, nRst, $06, nE4, $03, nB4, nE4
	dc.b	nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop15:
	dc.b	nRst, $06, nB3, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop15, Target
	dc.b	nRst, nB3, nC4, nE4, $06, nRst, $03, nE4
	dc.b	nRst, $06, nE4, $03, nRst, $09, nE4, $03
	dc.b	nRst, $06, nE4, nRst, $03, nB3, $06, nRst
	dc.b	$03, nB3, nRst, $06, nB3, $03, nRst, $09
	dc.b	nB3, $03, nRst, nB3, nRst, nB3, nC4, nE4
	dc.b	nRst, $06, nE4, $03, nRst, $06, nE4, $03
	dc.b	nRst, $09, nE4, $03, nRst, $06, nE4, $03
	dc.b	nB4, nE4, nB3, $06, nRst, $03, nB3

SH_SystemMenu_Loop16:
	dc.b	nRst, $06, nB3, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop16, Target
	dc.b	nRst, nB3, nC4
	smpsAlterNote	$00
	dc.b	nRst, $01
	smpsJump		SH_SystemMenu_Jump6, Target

SH_SystemMenu_PSG1:
	dc.b	nRst, $05

SH_SystemMenu_Loop18:
	dc.b	nG0
	;smpsPSGvoice	PSGVoi1

SH_SystemMenu_Loop17:
	dc.b	$06, nC1, $03, nRst, nG1, $0C
	;dc.b	nG1, $06, nC1, $03, nRst, nG1, $0C
	smpsLoop		$00, $02, SH_SystemMenu_Loop17, Target
	dc.b	nG0, $06, nC1, nD1, nG0, nG0, $03, nRst
	dc.b	nF0, $06, nG0, $18, nRst, $54
	smpsLoop		$01, $03, SH_SystemMenu_Loop18, Target
	;!@ Issues
	dc.b	nG0

SH_SystemMenu_Loop19:
	dc.b	$06, nC1, $03, nRst, nG1, $0C
	;dc.b	nG1, $06, nC1, $03, nRst, nG1, $0C
	smpsLoop		$00, $02, SH_SystemMenu_Loop19, Target
	dc.b	nG0, $06, nC1, nD1, nG0, nG0, $03, nRst
	;!@ dc.b	nF0, $06, nG0, $18, nRst, $7F, $77, nG1
	dc.b	nF0, $06, nG0, $18, nRst, $7F, nRst, $77, nG1
	;!@ dc.b	$03, $03, nRst, $06, nG1, $03, $03, nRst
	dc.b	$03, nG1, $03, nRst, $06, nG1, $03, nG1, $03, nRst
	;!@ dc.b	$4E, nG3, $03, $03, nRst, $06, nG3, $03
	dc.b	$4E, nG3, $03, nG3, $03, nRst, $06, nG3, $03

SH_SystemMenu_Loop20:
	;!@ dc.b	$03, nRst, $4E, nG1, $03, $03, nRst, $06
	dc.b	nG1, $03, nRst, $4E, nG1, $03, nG1, $03, nRst, $06
	dc.b	nG1, $03
	smpsLoop		$00, $02, SH_SystemMenu_Loop20, Target
	;!@ dc.b	$03, nRst, $07
	dc.b	nG1, $03, nRst, $07

SH_SystemMenu_Jump7:
	;!@ dc.b	nRst, $7F, $4C, nA1, $06, nRst, nC2, nA1
	dc.b	nRst, $7F, nRst, $4C, nA1, $06, nRst, nC2, nA1
	dc.b	nRst, nC2, $0C, nA1, $06, nC2, nA1, nC2
	dc.b	nRst, nEb3, nD3, $03, nRst, $09, nC2, $1E
	dc.b	nEb3, $06, nD3, $03, nRst, $09, nC2, $0C
	dc.b	nAb1, $06, nC2, $0C, nEb3, $06, nD3, $03
	dc.b	nRst, $4B
	smpsSetVol	$03
	;!@ dc.b	nG3, $03, $03, nRst, $09, nG3, $03, nRst
	dc.b	nG3, $03, nG3, $03, nRst, $09, nG3, $03, nRst
	dc.b	$4E
	smpsSetVol	$FD
	;!@ dc.b	nG3, $03, $03, nRst, $06, nG3, $03
	dc.b	nG3, $03, nG3, $03, nRst, $06, nG3, $03

SH_SystemMenu_Loop21:
	;!@ dc.b	$03, nRst, $4E, nG1, $03, $03, nRst, $06
	dc.b	nG1, $03, nRst, $4E, nG1, $03, nG1, $03, nRst, $06
	dc.b	nG1, $03
	smpsLoop		$00, $02, SH_SystemMenu_Loop21, Target
	;!@ dc.b	$03
	dc.b	nG1, $03
	smpsAlterNote	$00
	dc.b	nRst, $07
	smpsJump		SH_SystemMenu_Jump7, Target

SH_SystemMenu_PSG2:
	dc.b	nC1, $0B

SH_SystemMenu_Loop22:
	dc.b	nRst, $06, nC1, nRst, $0C, nC1, nRst, nC1
	dc.b	$06, nRst, $0C, nC1, $06, nRst, $0C, nC1
	smpsLoop		$00, $07, SH_SystemMenu_Loop22, Target
	dc.b	nRst, $06, nC1, nRst, $0C, nC1, nRst, nC1
	dc.b	$06, nRst, $0C, nC1, $06, nRst, $0C
	smpsSetVol	$00
	dc.b	nC1, $04
	smpsSetVol	$FD
	dc.b	smpsNoAttack, $08, nRst, $06, nC1, nRst, $0C, nC1
	dc.b	nRst, nC1, $06, nRst, $0C, nC1, $06, nRst
	dc.b	$0C, nC1, nRst, $06, nC1, nRst, $0C, nC1
	dc.b	nRst, nC1, $06, nRst, $0C, nC1, $06, nRst
	dc.b	$0C
	smpsSetVol	$03
	dc.b	nE1, $03, nRst, $06, nA0, $01
	smpsPSGvoice	PSGVoi2
	smpsSetVol	$01
	dc.b	smpsNoAttack, $02, nRst, $06, nA0, $03, nRst, $09
	dc.b	nA0, $03, nRst, $06, nA0, $03, nE1, nA0
	dc.b	nE0, $06, nRst, $03, nE0

SH_SystemMenu_Loop23:
	dc.b	nRst, $06, nE0, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop23, Target
	;!@ dc.b	nRst, nE0, nF0, nA0, $06, nRst, $03, nA0
	dc.b	nRst, $03, nE0, nF0, nA0, $06, nRst, $03, nA0
	dc.b	nRst, $06, nA0, $03, nRst, $09, nA0, $03
	dc.b	nRst, $06, nA0, nRst, $03, nE0, $06, nRst
	dc.b	$03, nE0, nRst, $06, nE0, $03, nRst, $09
	dc.b	nE0, $03, nRst, nE0, nRst, nE0, nF0, nE1
	dc.b	nRst, $06, nA0, $03, nRst, $06, nA0, $03
	dc.b	nRst, $09, nA0, $03, nRst, $06, nA0, $03
	dc.b	nE1, nA0, nE0, $06, nRst, $03, nE0, nRst
	dc.b	$06, nE0, $03, nRst, $06, nE0, $03, nRst
	dc.b	$06, nE0, $01
	smpsPSGvoice	PSGVoi2
	smpsSetVol	$01
	dc.b	smpsNoAttack, $02, nRst, $03, nE0, nF0, nRst, $01

SH_SystemMenu_Jump8:
	smpsPSGvoice	PSGVoi1
	dc.b	nRst, $06
	smpsSetVol	$FE
	dc.b	nA1, $01, nRst, $02, nE2, $01, nRst, $05
	dc.b	nFs3, $01, nRst, $04, nE4, $01, nRst, $07
	;!@ dc.b	nB2, $01, nRst, nRst, $05, nG3, $06, nE3
	dc.b	nB2, $01, nRst, $01, nRst, $05, nG3, $06, nE3
	dc.b	$24
	smpsSetVol	$03
	dc.b	nG3, $01
	smpsPSGvoice	PSGVoi1
	dc.b	smpsNoAttack, $05
	smpsSetVol	$FC
	dc.b	nF3, $06, nE3
	smpsSetVol	$FD
	dc.b	nF2, nRst, $2A
	smpsAlterNote	$00
	;!@ dc.b	$7F, $7F, $23
	dc.b	nRst, $7F, nRst, $7F, nRst, $23
	smpsPSGvoice	PSGVoi1
	;!@ dc.b	$03, nA1, $01, nRst, $02, nE2, $01, nRst
	dc.b	nRst, $03, nA1, $01, nRst, $02, nE2, $01, nRst
	dc.b	$02, nB2, $01, nRst, $02, nFs3, $01, nRst
	;!@ dc.b	$04, nE4, $01, nRst, $07, nB2, $01, nRst
	   dc.b	$04, nE4, $01, nRst, $07, nB2, $01, nRst, $01
	;!@ dc.b	nRst, $06, nFs1, $01, nG1, nRst, nC2, nRst
	dc.b	nRst, $06, nFs1, $01, nG1, $01, nRst, $01, nC2, $01, nRst
	dc.b	$02, nG2, $01, nRst, nB2, nRst, $03, nA3
	dc.b	$01, nRst
	smpsSetVol	$02
	dc.b	nE1, $03, nRst, $06, nA0, $01
	smpsPSGvoice	PSGVoi2
	smpsSetVol	$03
	dc.b	smpsNoAttack, $02, nRst, $06, nA0, $03, nRst, $09
	dc.b	nA0, $03, nRst, $06, nA0, $03, nE1, nA0
	dc.b	nE0, $06, nRst, $03, nE0

SH_SystemMenu_Loop24:
	dc.b	nRst, $06, nE0, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop24, Target
	;!@ dc.b	nRst, nE0, nF0, nA0, $06, nRst, $03, nA0
	dc.b	nRst, $03, nE0, nF0, nA0, $06, nRst, $03, nA0
	dc.b	nRst, $06, nA0, $03, nRst, $09, nA0, $03
	dc.b	nRst, $06, nA0, nRst, $03, nE0, $06, nRst
	dc.b	$03, nE0, nRst, $06, nE0, $03, nRst, $09
	dc.b	nE0, $03, nRst, nE0, nRst, nE0, nF0, nE1
	dc.b	nRst, $06, nA0, $03, nRst, $06, nA0, $03
	dc.b	nRst, $09, nA0, $03, nRst, $06, nA0, $03
	dc.b	nE1, nA0, nE0, $06, nRst, $03, nE0

SH_SystemMenu_Loop25:
	dc.b	nRst, $06, nE0, $03
	smpsLoop		$00, $03, SH_SystemMenu_Loop25, Target
	;!@ dc.b	nRst, nE0, nF0, nRst, $01
	dc.b	nRst, $03, nE0, nF0, nRst, $01
	smpsSetVol	$01
	smpsJump		SH_SystemMenu_Jump8, Target

SH_SystemMenu_PSG3:
	dc.b	nRst, $6C, nG1, $01
	smpsPSGvoice	PSGVoi3
	dc.b	smpsNoAttack, $0B
	smpsSetVol	$00
	dc.b	nA1, $0C
	smpsSetVol	$00
	dc.b	nG3
	smpsSetVol	$00
	dc.b	nF3, $12
	smpsSetVol	$00
	dc.b	nE3
	smpsSetVol	$00
	dc.b	nC2, $0C
	smpsSetVol	$00
	dc.b	nD3, $24, nRst, $3C
	smpsSetVol	$00
	dc.b	nG3, $0C, nF3
	smpsSetVol	$00
	dc.b	nE3, nRst, nG3, $0F, nG1, $09, nA1
	smpsSetVol	$00
	dc.b	nC2, nB1, $06, nG1, $30, nRst, $3C, nG1
	dc.b	$0C
	smpsSetVol	$00
	dc.b	nA1, nG3, nF3, $12, nE3, nC2, $0C, nD3
	dc.b	$24, nRst, $3C
	smpsSetVol	$00
	dc.b	nG3, $0C, nF3
	smpsSetVol	$00
	dc.b	nE3, nRst, nG3, $0F, nG1, $09, nA1, nC2
	;!@ dc.b	nB1, $06, nG1, $30, nRst, $7F, $11, nG3
	dc.b	nB1, $06, nG1, $30, nRst, $7F, nRst, $11, nG3
	dc.b	$42, nE3, $06, nF3, nE3, nC2
	smpsSetVol	$00
	dc.b	nG1, $48, nA1, $06, nC2, nD3, nE3, nF3
	dc.b	nG3, $48, nRst, $06
	smpsSetVol	$00
	dc.b	nA1, nC2, nD3

SH_SystemMenu_Jump9:
	smpsSetVol	$00
	dc.b	nE3, $0C
	smpsSetVol	$00
	dc.b	nG3, $06, nB3, $12, nRst, $06
	smpsSetVol	$00
	dc.b	nE3, $24, nRst, $12
	smpsSetVol	$00
	;!@ dc.b	nB1, $06, $06
	dc.b	nB1, $06, nB1, $06
	smpsSetVol	$00
	dc.b	nD3, nF3, $0C, nF1, $06, nA1, nG1, nE1
	dc.b	nG1, nB1, nD3
	smpsSetVol	$00
	dc.b	nB1
	smpsSetVol	$00
	dc.b	nG1, nB1, nC2, $7F, smpsNoAttack, $17
	smpsSetVol	$00
	dc.b	nD2, $0C, nBb1, nEb3
	smpsSetVol	$00
	dc.b	$06, nD3, $0C, nE3, $5A, nG3, $42
	smpsSetVol	$00
	dc.b	nE3, $06, nF3, nE3
	smpsSetVol	$00
	dc.b	nC2
	smpsSetVol	$00
	dc.b	nG1, $48
	smpsSetVol	$00
	dc.b	nA1, $06, nC2
	smpsSetVol	$00
	dc.b	nD3
	smpsSetVol	$00
	dc.b	nE3, nF3
	smpsSetVol	$00
	dc.b	nG3, $48, nRst, $06
	smpsSetVol	$00
	dc.b	nA1, nC2, nD3
	smpsJump		SH_SystemMenu_Jump9, Target
	
SH_SystemMenu_PWM1:
	smpsPan		panCenter
	dc.b	pRideBell, $02

SH_SystemMenu_PWM1_Loop1:
	dc.b	pEHiHat, $03, $03, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop1, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi, pRideBell
	smpsLoop		$01, $0F, SH_SystemMenu_PWM1_Loop1, Target

SH_SystemMenu_PWM1_Loop2:
	dc.b	pEHiHat, pEHiHat, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop2, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi

SH_SystemMenu_PWM1_Loop3:
	dc.b	pClosedHH, $06, pOpenHH, nRst, pOpenHH, pClosedHH, pOpenHH, pClosedHH
	dc.b	pOpenHH
	smpsLoop		$00, $04, SH_SystemMenu_PWM1_Loop3, Target

SH_SystemMenu_PWM1_Loop4:
	dc.b	pRideBell, $03, pEHiHat, pEHiHat
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop4, Target
	dc.b	pRideBell, pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi
	smpsLoop		$01, $06, SH_SystemMenu_PWM1_Loop4, Target
	dc.b	pRideBell, $01

SH_SystemMenu_PWM1_Jump1:
	dc.b	nRst, $02

SH_SystemMenu_PWM1_Loop5:
	dc.b	pEHiHat, $03, $03, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop5, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi, pRideBell
	smpsLoop		$01, $0F, SH_SystemMenu_PWM1_Loop5, Target

SH_SystemMenu_PWM1_Loop6:
	dc.b	pEHiHat, pEHiHat, pRideBell
	smpsLoop		$00, $03, SH_SystemMenu_PWM1_Loop6, Target
	dc.b	pEHiHat, pRideBell, pRideBell, pEHiHat, pFingSnap, pClickHi, pRideBell, $01
	smpsJump		SH_SystemMenu_PWM1_Jump1, Target
	
SH_SystemMenu_PWM2:
	dc.b	pCowbell, $02

SH_SystemMenu_PWM2_Loop1:
	dc.b	$03, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	smpsLoop		$00, $0F, SH_SystemMenu_PWM2_Loop1, Target
	dc.b	pCowbell, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat

SH_SystemMenu_PWM2_Loop3:
	dc.b	pAKick, pEHiHat, pCowbell

SH_SystemMenu_PWM2_Loop2:
	dc.b	pCowbell, pAKick, $06, pCowbell, $03
	smpsLoop		$00, $03, SH_SystemMenu_PWM2_Loop2, Target
	dc.b	$03, pAKick, pEHiHat, pCowbell, pCowbell, pClap, $06, pCowbell
	dc.b	$03, $03, pAKick, $06, pCowbell, $03, $03, pAKick
	dc.b	$06, pCowbell, $03, $03
	smpsLoop		$01, $02, SH_SystemMenu_PWM2_Loop3, Target
	dc.b	$03

SH_SystemMenu_PWM2_Loop4:
	dc.b	$03, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	smpsLoop		$00, $05, SH_SystemMenu_PWM2_Loop4, Target
	dc.b	pCowbell, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	dc.b	$01

SH_SystemMenu_PWM2_Jump1:
	dc.b	nRst, $02, pCowbell

SH_SystemMenu_PWM2_Loop5:
	dc.b	$03, pFingSnap, pClickHi, pESnare, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pESnare, pCowbell, pBongoHi, pEHiHat, pCowbell
	smpsLoop		$00, $09, SH_SystemMenu_PWM2_Loop5, Target
	dc.b	pCowbell, pFingSnap, pClickHi, pCowbell, pCowbell, pFingSnap, pClickHi, pCowbell
	dc.b	pBongoHi, pFingSnap, pClickHi, pCowbell

SH_SystemMenu_PWM2_Loop6:
	dc.b	pCowbell, pBongoHi, pEHiHat, pCowbell, pCowbell, pFingSnap, pClickHi, pESnare
	dc.b	pCowbell, pFingSnap, pClickHi, pCowbell, pBongoHi, pFingSnap, pClickHi, pESnare
	smpsLoop		$00, $06, SH_SystemMenu_PWM2_Loop6, Target
	dc.b	pCowbell, pBongoHi, pEHiHat, pCowbell, $01
	smpsJump		SH_SystemMenu_PWM2_Jump1, Target
	
SH_SystemMenu_PWM3:
	dc.b	pAKick, $02

SH_SystemMenu_PWM3_Loop1:
	dc.b	pBongoHi, $03, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, $03, pEHiHat, pRideBell
	dc.b	pCowbell, pAKick
	smpsLoop		$00, $0F, SH_SystemMenu_PWM3_Loop1, Target
	dc.b	pBongoHi, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell, pAKick
	dc.b	$06, pCowbell, $03, $03, $03, pEHiHat, pRideBell, pCowbell

SH_SystemMenu_PWM3_Loop2:
	dc.b	pCowbell, pBongoHi, pFingSnap, pClickHi, pCowbell, pEHiHat, pBongoHi, pClickHi
	dc.b	pCowbell, pEHiHat, pFingSnap, pClickHi, pCowbell, pEHiHat, pRideBell, pEHiHat
	dc.b	pCowbell, pBongoHi, pFingSnap, pClickHi, pAKick, $06, pBongoHi, $03
	dc.b	pClickHi, pCowbell, pEHiHat, pFingSnap, pClickHi, pCowbell, pEHiHat, pRideBell
	dc.b	pEHiHat
	smpsLoop		$00, $02, SH_SystemMenu_PWM3_Loop2, Target

SH_SystemMenu_PWM3_Loop3:
	dc.b	pAKick, pBongoHi, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, $03, pEHiHat, pRideBell
	dc.b	pCowbell
	smpsLoop		$00, $06, SH_SystemMenu_PWM3_Loop3, Target
	dc.b	pAKick, $01

SH_SystemMenu_PWM3_Jump1:
	dc.b	nRst, $02

SH_SystemMenu_PWM3_Loop4:
	dc.b	pBongoHi, $03, pCowbell, pCowbell, pCowbell, pEHiHat, pBongoHi, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, $03, pEHiHat, pRideBell
	dc.b	pCowbell, pAKick
	smpsLoop		$00, $09, SH_SystemMenu_PWM3_Loop4, Target
	dc.b	pBongoHi, pCowbell, pCowbell, pAKick, $06, pBongoHi, $03, pCowbell
	dc.b	pAKick, $06, pCowbell, $03, $03, pAKick, $06

SH_SystemMenu_PWM3_Loop5:
	dc.b	pRideBell, $03, pCowbell, pAKick, pBongoHi, pCowbell, pCowbell, pCowbell
	dc.b	pEHiHat, pBongoHi, pCowbell, pAKick, $06, pCowbell, $03, $03
	dc.b	$03, pEHiHat
	smpsLoop		$00, $06, SH_SystemMenu_PWM3_Loop5, Target
	dc.b	pRideBell, pCowbell, pAKick, $01
	smpsJump		SH_SystemMenu_PWM3_Jump1, Target
	
SH_SystemMenu_PWM4:
	dc.b	nRst, $02

SH_SystemMenu_PWM4_Loop1:
	dc.b	pEHiHat, $09, pClap, $06, pOpenHH, $09, pCowbell, pClap
	dc.b	$06, pOpenHH, $09
	smpsLoop		$00, $0F, SH_SystemMenu_PWM4_Loop1, Target
	dc.b	pEHiHat, pClap, $06, pOpenHH, $09, pCowbell, pClap, $06
	dc.b	pOpenHH, pClap, $09, pESnare, $06, pEHiHat, $03, pRideBell
	dc.b	$09, pBongoHi, pClap, $03, pEHiHat, pFingSnap, $09, pEHiHat
	dc.b	pESnare, $03, pCowbell, pRideBell, $09, pBongoHi, $03, pClap
	dc.b	$09, pEHiHat, $03, pFingSnap, $06, pClap, pESnare, $09
	dc.b	pEHiHat, $03, pRideBell, $09, pBongoHi, $06, pBell, $03
	dc.b	pClap, pEHiHat, pFingSnap, $09, pEHiHat, $06, pClickLo, $03
	dc.b	pESnare, pCowbell, pRideBell, $06, pClickHi, $03, pBongoHi, pClap
	dc.b	$09, pEHiHat, $03, pFingSnap, $09

SH_SystemMenu_PWM4_Loop2:
	dc.b	pEHiHat, pClap, $06, pOpenHH, $09, pCowbell, pClap, $06
	dc.b	pOpenHH, $09
	smpsLoop		$00, $05, SH_SystemMenu_PWM4_Loop2, Target
	dc.b	pEHiHat, pClap, $06, pOpenHH, $09, pCowbell, pClap, $06
	dc.b	pOpenHH, $07

SH_SystemMenu_PWM4_Jump1:
	dc.b	nRst, $02

SH_SystemMenu_PWM4_Loop3:
	dc.b	pEHiHat, $09, pClap, $06, pOpenHH, $09, pCowbell, pClap
	dc.b	$06, pOpenHH, $09
	smpsLoop		$00, $09, SH_SystemMenu_PWM4_Loop3, Target
	dc.b	pEHiHat, $03, pESnare, $06, $06, pOpenHH, $09, pCowbell
	dc.b	$03, pESnare, $06, $03, pEHiHat

SH_SystemMenu_PWM4_Loop4:
	dc.b	pOpenHH, $09, pEHiHat, pClap, $06, pOpenHH, $09, pCowbell
	dc.b	pClap, $06
	smpsLoop		$00, $06, SH_SystemMenu_PWM4_Loop4, Target
	dc.b	pOpenHH, $07
	smpsJump		SH_SystemMenu_PWM4_Jump1, Target
	
SH_Sneep:
	smpsStop

SH_SystemMenu_Patches:	
	;Synth Bass 2
	dc.b	$3A
	dc.b	$02, $0E, $02, $02,	$8E, $8F, $8D, $53
	dc.b	$0E, $10, $0E, $0D,	$00, $00, $00, $00
	dc.b	$13, $68, $13, $08,	$19, $2A, $23, $08+$0D
	
	;SynthString1
	dc.b	$3B
	dc.b	$02, $02, $04, $02,	$59, $59, $59, $4C
	dc.b	$03, $07, $03, $05,	$00, $00, $00, $00
	dc.b	$22, $22, $22, $27,	$40, $18, $24, $08+$07
	
	;S1_7
	dc.b	$05
	dc.b	$36, $32, $7C, $72,	$1F, $5F, $1F, $1F
	dc.b	$07, $0B, $0A, $0B,	$00, $07, $07, $07
	dc.b	$59, $4E, $59, $4E,	$23, $10, $23, $08+$0F
	
	; FM3 ElectricPiano1
	dc.b	$2C
	dc.b	$31, $31, $71, $71,	$5F, $54, $5F, $5F
	dc.b	$05, $0A, $03, $0C,	$00, $03, $03, $03
	dc.b	$00, $87, $00, $A7,	$17, $0E+$04, $19+$04, $08+$04
	
	;FM 4 String Ensemble 1 
	dc.b	$3A
	dc.b	$31, $05, $71, $01,	$59, $59, $5C, $4E
	dc.b	$0A, $0B, $0D, $04,	$01, $01, $01, $01
	dc.b	$15, $58, $26, $16,	$23, $0D, $2D, $06+$0A
	
	;Drawbar Organ
	dc.b	$3D
	dc.b	$00, $30, $70, $00,	$1F, $1F, $1F, $11
	dc.b	$0B, $09, $00, $1F,	$00, $00, $00, $00
	dc.b	$FF, $F9, $0F, $07,	$1E+$05, $1F+$05, $2D+$05, $0A+$05
	
	;Shit
	dc.b	$07
	dc.b	$01, $33, $74, $08,	$DF, $DF, $DF, $DF
	dc.b	$03, $05, $05, $05,	$00, $00, $00, $00
	dc.b	$2A, $2A, $2A, $2A,	$0C+$04, $18+$04, $1F+$04, $0C+$04
	
	;EGuitar (Clean)
	dc.b	$3B
	dc.b	$0D, $01, $00, $00,	$9F, $1F, $1F, $1F
	dc.b	$0E, $0D, $09, $09,	$00, $00, $00, $00
	dc.b	$D6, $D6, $D6, $D7,	$33, $21, $22, $06+$07
	
	dc.b	$3A
	dc.b	$71, $06, $33, $01,	$9C, $96, $5D, $92
	dc.b	$04, $09, $04, $07,	$00, $01, $03, $00
	dc.b	$15, $12, $16, $B5,	$25, $34, $25, $08
	even