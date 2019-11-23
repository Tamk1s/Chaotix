

Target	EQU	$12345
	smpsHeaderVoice	Title_Patches, Target
	smpsHeaderChan	6,3
	smpsHeaderTempoC	$02, $15
	;smpsHeaderTempo	$02, $12	
	smpsHeaderFM	Title_FM1, Target, $00, $0D
	smpsHeaderFM	Title_FM2, Target, $00, $0A
	smpsHeaderFM	Title_FM3, Target, $00, $19
	smpsHeaderFM	Title_FM4, Target, $00, $0D
	smpsHeaderFM	Title_FM5, Target, $00, $17
	smpsHeaderFM	Title_FM6, Target, $00, $09
	smpsHeaderPSG	Title_PSG1, Target, $00, $02, $00, $00
	smpsHeaderPSG	Title_PSG2, Target, $00, $08, $00, $00
	smpsHeaderPSG	Title_PSG3, Target, $00, $02, $00, $00
	smpsHeaderPWM	Title_PWM1, Target, $00, $FF
	smpsHeaderPWM	Title_PWM2, Target, $00, $FF
	smpsHeaderPWM	Title_PWM3, Target, $00, $FF
	smpsHeaderPWM	Title_PWM4, Target, $00, $FF

Title_FM1:
	smpsFMvoice		$01
	dc.b nRst, $7F, $41
	smpsFMvoice		$00
	dc.b nD2, $24, $06, $12, $06, $12, $06, $36
	dc.b $06, nC2, nD2, nF2, $0C, nG2, $06, nF2
	dc.b nD2
	smpsFMvoice		$01
	dc.b $06

Title_Loop1:
	dc.b $06, nRst, $24, nD2, $06
	smpsLoop		$00, $03, Title_Loop1, Target
	dc.b $06, $06, nD3, $0C, $06, nC3, nD3, nD2
	dc.b nD2, nRst, $24, nD2, $06, $06, nRst, nG2
	dc.b $1E, nD2, $06, $06, nRst, $24, nD2, $06
	dc.b $06

Title_Loop2:
	dc.b $06, $06, nRst, $18, nD2, $0C
	smpsLoop		$00, $08, Title_Loop2, Target
	dc.b $06, $06, nRst, $18, nC3, $24, $06, nB2
	dc.b $12, $06, nBb2, $12, $06, nA2, $12, nD3
	dc.b $18, nD2, $3C

Title_Loop3:
	dc.b $0C, nRst, $06, nD2, $1E
	smpsLoop		$00, $03, Title_Loop3, Target
	dc.b $06, nF2, nG2, nF2, nG2, nA2, nG2, $0C
	dc.b nD2, nRst, $06, nD2, $1E, $0C, nRst, $06
	dc.b nD2, $1E, $0C, nRst, $06, nD2, $1E, $06
	dc.b nG3, nF3, nD3, nF3, nD3, nC3, nA2, nF2
	dc.b nG2, nRst, nG2, $1E, nAb2, $06, nG2, nF2
	dc.b nD2, $1E, nF2, $06, nG2, nRst, nG2, $12
	dc.b nF2, $0C, nD2, nD3, $24, nF2, $06, nG2
	dc.b nRst, nG2, $12, nF2, $06, nG2, nAb2, nG2
	dc.b nF2, nD2, $12, $0C, nF2, $06, $06, nRst
	dc.b nF2, $12, $06, nA2, $36, nRst, $30, nG2
	dc.b $06, nF2, nG2, nAb2, $0C, nG2, $06, nD2
	dc.b nC2

Title_Loop4:
	dc.b nD2
	smpsLoop		$00, $08, Title_Loop4, Target
	dc.b nF2, nF2, nF3, nF2, $0C, $06, $06, $06
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nA2, nA2
	dc.b nD2, nD2, nD3, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF3, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA3, nA3, nG3, nF3, nG3, nA3
	dc.b nD2, nD2, nD2, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nC3, nD3
	dc.b nRst, $0C
	smpsFMvoice		$00
	dc.b nF3, $06, nE3, $12, nC3, $06, nD3, nRst
	dc.b $0C
	smpsFMvoice		$01
	dc.b nA2, $24, nD2, $5A, nD3, $12, nD2, $3C
	dc.b nA2, $06, nBb2, nB2, nC3, $12, nD2, $4E
	dc.b nD3, $36, nD2, $06, nC2, nD2, nF2, $0C
	dc.b nG2, $06, nF2, nD2

Title_Loop5:
	dc.b nD2, $0C, $06, $06, nRst, $18
	smpsLoop		$00, $08, Title_Loop5, Target
	dc.b nD2

Title_Loop6:
	dc.b $0C, nRst, $06, nD2, $1E
	smpsLoop		$00, $03, Title_Loop6, Target
	dc.b $06, nF2, nG2, nF2, nG2, nA2, nG2, $0C
	dc.b nD2, nRst, $06, nD2, $1E, $0C, nRst, $06
	dc.b nD2, $1E, $0C, nRst, $06, nD2, $1E, $06
	dc.b nG3, nF3, nD3, nF3, nD3, nC3, nA2, nF2
	dc.b nG2, nRst, nG2, $1E, nAb2, $06, nG2, nF2
	dc.b nD2, $1E, nF2, $06, nG2, nRst, nG2, $12
	dc.b nF2, $0C, nD2, nD3, $24, nF2, $06, nG2
	dc.b nRst, nG2, $12, nF2, $06, nG2, nAb2, nG2
	dc.b nF2, nD2, $12, $0C, nF2, $06, $06, nRst
	dc.b nF2, $12, $06, nA2, $36, nG2, $06, nF2
	dc.b nG2, nAb2, $0C, nG2, $06, nD2, nC2

Title_Loop7:
	dc.b nD2
	smpsLoop		$00, $08, Title_Loop7, Target
	dc.b nF2, nF2, nF3, nF2, $0C, $06, $06, $06
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nA2, nA2
	dc.b nD2, nD2, nD3, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF3, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA3, nA3, nG3, nF3, nG3, nA3
	dc.b nD2, nD2, nD2, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nC3, nD3
	dc.b nRst, $0C
	smpsFMvoice		$00
	dc.b nF3, $06, nE3, $12, nC3, $06, nD3, nRst
	dc.b $30
	smpsFMvoice		$01
	dc.b nG2, $06, nF2, nG2, nAb2, $0C, nG2, $06
	dc.b nD2, nC2

Title_Loop8:
	dc.b nD2
	smpsLoop		$00, $08, Title_Loop8, Target
	dc.b nF2, nF2, nF3, nF2, $0C, $06, $06, $06
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nA2, nA2

Title_Loop9:
	dc.b nD3
	smpsLoop		$00, $08, Title_Loop9, Target

Title_Loop10:
	dc.b nC3
	smpsLoop		$00, $08, Title_Loop10, Target

Title_Loop11:
	dc.b nB2
	smpsLoop		$00, $08, Title_Loop11, Target

Title_Loop12:
	dc.b nCs3
	smpsLoop		$00, $08, Title_Loop12, Target
	dc.b nD2, nD2, nD2, nD3, nD2, nD2, nD2, nD2
	dc.b nF2, nF2, nF2, nF3, nF2, nF2, nF2, nF2
	dc.b nG2, nG2, nG3, nG3, nG2, nG2, nG2, nG2
	dc.b nA2, nA2, nA2, nA3, nA2, nA2, nC2, nD2
	dc.b nRst, $0C, nF2, $06, nE2, nRst, $0C, nC2
	dc.b $06, nD2, nRst, $7F, $7F, $22
	smpsJump		Title_FM1, Target

Title_FM2:
	smpsPan		panLeft
	smpsFMvoice		$02
	dc.b nC3, $24, $06, nB2, $12, $06, nBb2, $12
	dc.b $06, nA2, $4E, $06, nBb2, nB2, nC3, $2A
	dc.b $06, nB2, $12, $06, nBb2, $12, $06, nA2
	dc.b $66, nD3, $0C, nRst, $06, nF3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nG3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nAb3, $0C, nG3
	dc.b $06, nF3, nD3, nD2, $2D, nRst, $03, nD3
	dc.b $0C, nRst, $06, nF3, $1B, nRst, $03, nD3
	dc.b $0C, nRst, $06, nG3, $1B, nRst, $03, nD3
	dc.b $0C, nRst, $06, nAb3, $0C, nG3, $06, nF3
	dc.b nD3, nD2, $2D, nRst, $7F, $7F, $7F, $06
	dc.b nC4, $24, $06, nB3, $12, $06, nBb3, $12
	dc.b $06, nA3, $12, nD3, $54, $0C, nRst, $06
	dc.b nF3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nG3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nAb3, $0C, nG3, $06, nF3, nD3, nD2, $2D
	dc.b nRst, $03, nD3, $0C, nRst, $06, nF3, $1B
	dc.b nRst, $03, nD3, $0C, nRst, $06, nG3, $1B
	dc.b nRst, $03, nD3, $0C, nRst, $06, nAb3, $0C
	dc.b nG3, $06, nF3, nD3, nD2, $2D, nRst, $03
	dc.b nF3, $06, nG3, nRst, nG3, $0C, $06, nF3
	dc.b nG3, nAb3, nG3, nF3, nD3, $0C, nD4, $09
	dc.b nRst, nF3, $06, nG3, nRst, nG3, $12, nF3
	dc.b $0C, nD3, nA3, nD4, nD3, nF3, $06, nG3
	dc.b nRst, nG3, $0C, $06, nF3, nG3, nAb3, nG3
	dc.b nF3, nD3, $0C, nD4, $06, nD3, $03, nRst
	dc.b nD3, nRst, nF3, $06, nF4, nRst, nF4, $0C
	dc.b $06, nF3, nA3, $12, $06, $06, $06, $06
	dc.b $0C
	smpsAlterVol		$05
	dc.b nG3, $06, nF3, nG3, nAb3, $0C, nG3, $06
	dc.b nD3, nF3
	smpsAlterVol		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3

Title_Loop13:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	smpsLoop		$00, $02, Title_Loop13, Target
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3, nRst, $0C, nA2, $24, nC4, nC4
	dc.b $06, nB3, $12, $06, nBb3, $12, $06, nA3
	dc.b $4E, $06, nBb3, nB3, nC4, $2A, $06, nB3
	dc.b $12, $06, nBb3, $12, $06, nA3, $66
	smpsFMvoice		$08

Title_Loop14:
	dc.b nD2, $12, nRst, $1E
	smpsLoop		$00, $08, Title_Loop14, Target
	smpsFMvoice		$02

Title_Loop15:
	dc.b nD3, $0C, nRst, $06, nF3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nG3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nAb3, $0C, nG3, $06
	dc.b nF3, nD3, nD2, $2D, nRst, $03
	smpsLoop		$00, $02, Title_Loop15, Target
	dc.b nF3, $06, nG3, nRst, nG3, $0C, $06, nF3
	dc.b nG3, nAb3, nG3, nF3, nD3, $0C, nD4, $09
	dc.b nRst, nF3, $06, nG3, nRst, nG3, $12, nF3
	dc.b $0C, nD3, nA3, nD4, nD3, nF3, $06, nG3
	dc.b nRst, nG3, $0C, $06, nF3, nG3, nAb3, nG3
	dc.b nF3, nD3, $0C, nD4, $06, nD3, $03, nRst
	dc.b nD3, nRst, nF3, $06, $06, nRst, nF3, $0C
	dc.b $06, $06, nA3, $12, $06, $06, $06, $06
	dc.b $0C, nG3, $06, nF3, nG3, nAb3, $0C, nG3
	dc.b $06, nD3, nC3

Title_Loop16:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	smpsLoop		$00, $02, Title_Loop16, Target
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3
	smpsAlterVol		$05
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nF3
	smpsAlterVol		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3, nD3, $30, nF3, nG3, nA3, $24, nG3
	dc.b $03, nA3, $09, nD3, $30, nC3, nB2, nCs3
	dc.b nD3, nF3, nG3, nA3, $24, nC3, $06, nD3
	dc.b nRst, $0C, nF3, $06, nE3, $12, nC3, $06
	dc.b nD3, nRst, $7F, $7F, $22
	smpsJump		Title_FM2, Target

Title_FM3:
	smpsPan		panRight
	smpsFMvoice		$02
	dc.b nRst, $06, nC3, $24, $06, nB2, $12, $06
	dc.b nBb2, $12, $06, nA2, $4E, $06, nBb2, nB2
	dc.b nC3, $2A, $06, nB2, $12, $06, nBb2, $12
	dc.b $06, nA2, $66, nD3, $0C, nRst, $06, nF3
	dc.b $1B, nRst, $03, nD3, $0C, nRst, $06, nG3
	dc.b $1B, nRst, $03, nD3, $0C, nRst, $06, nAb3
	dc.b $0C, nG3, $06, nF3, nD3, nD2, $2D, nRst
	dc.b $03, nD3, $0C, nRst, $06, nF3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nG3, $1B, nRst
	dc.b $03, nD3, $0C, nRst, $06, nAb3, $0C, nG3
	dc.b $06, nF3, nD3, nD2, $2D, nRst, $7F, $7F
	dc.b $7F, $06, nC4, $24, $06, nB3, $12, $06
	dc.b nBb3, $12, $06, nA3, $12, nD3, $54, $0C
	dc.b nRst, $06, nF3, $1B, nRst, $03, nD3, $0C
	dc.b nRst, $06, nG3, $1B, nRst, $03, nD3, $0C
	dc.b nRst, $06, nAb3, $0C, nG3, $06, nF3, nD3
	dc.b nD2, $2D, nRst, $03, nD3, $0C, nRst, $06
	dc.b nF3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nG3, $1B, nRst, $03, nD3, $0C, nRst, $06
	dc.b nAb3, $0C, nG3, $06, nF3, nD3, nD2, $2D
	dc.b nRst, $03, nF3, $06, nG3, nRst, nG3, $0C
	dc.b $06, nF3, nG3, nAb3, nG3, nF3, nD3, $0C
	dc.b nD4, $09, nRst, nF3, $06, nG3, nRst, nG3
	dc.b $12, nF3, $0C, nD3, nA3, nD4, nD3, nF3
	dc.b $06, nG3, nRst, nG3, $0C, $06, nF3, nG3
	dc.b nAb3, nG3, nF3, nD3, $0C, nD4, $06, nD3
	dc.b $03, nRst, nD3, nRst, nF3, $06, nF4, nRst
	dc.b nF4, $0C, $06, nF3, nA3, $12, $06, $06
	dc.b $06, $06, $0C
	smpsAlterVol		$05
	dc.b nG3, $06, nF3, nG3, nAb3, $0C, nG3, $06
	dc.b nD3, nF3
	smpsAlterVol		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3

Title_Loop17:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	smpsLoop		$00, $02, Title_Loop17, Target
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3, nRst, $0C, nA2, $24, nC4, nC4
	dc.b $06, nB3, $12, $06, nBb3, $12, $06, nA3
	dc.b $4E, $06, nBb3, nB3, nC4, $2A, $06, nB3
	dc.b $12, $06, nBb3, $12, $06, nA3, $60
	smpsFMvoice		$08
	dc.b smpsNoAttack, $06, nRst, $2A

Title_Loop18:
	dc.b nD3, $12, nRst, $1E
	smpsLoop		$00, $06, Title_Loop18, Target
	dc.b nD3, $12, nRst, $24
	smpsFMvoice		$02

Title_Loop19:
	dc.b nD3, $0C, nRst, $06, nF3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nG3, $1B, nRst, $03
	dc.b nD3, $0C, nRst, $06, nAb3, $0C, nG3, $06
	dc.b nF3, nD3, nD2, $2D, nRst, $03
	smpsLoop		$00, $02, Title_Loop19, Target
	dc.b nF3, $06, nG3, nRst, nG3, $0C, $06, nF3
	dc.b nG3, nAb3, nG3, nF3, nD3, $0C, nD4, $09
	dc.b nRst, nF3, $06, nG3, nRst, nG3, $12, nF3
	dc.b $0C, nD3, nA3, nD4, nD3, nF3, $06, nG3
	dc.b nRst, nG3, $0C, $06, nF3, nG3, nAb3, nG3
	dc.b nF3, nD3, $0C, nD4, $06, nD3, $03, nRst
	dc.b nD3, nRst, nF3, $06, $06, nRst, nF3, $0C
	dc.b $06, $06, nA3, $12, $06, $06, $06, $06
	dc.b $0C, nG3, $06, nF3, nG3, nAb3, $0C, nG3
	dc.b $06, nD3, nC3

Title_Loop20:
	dc.b nD3, $30, nF3, nG3, nA3, $24, nG3, $03
	dc.b nA3, $09
	smpsLoop		$00, $02, Title_Loop20, Target
	dc.b nD3, $30, nF3, nG3, nA3, $24, nC3, $06
	dc.b nD3, nRst, $0C, nF3, $06, nE3, $12, nC3
	dc.b $06, nD3
	smpsAlterVol		$05
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nF3
	smpsAlterVol		$FB
	dc.b nG3, nF3, nG3, nAb3, $0C, nG3, $06, nD3
	dc.b nC3, nD3, $30, nF3, nG3, nA3, $24, nG3
	dc.b $03, nA3, $09, nD3, $30, nC3, nB2, nCs3
	dc.b nD3, nF3, nG3, nA3, $24, nC3, $06, nD3
	dc.b nRst, $0C, nF3, $06, nE3, $12, nC3, $06
	dc.b nD3, nRst, $7F, $7F, $1C
	smpsJump		Title_FM3, Target

Title_FM4:
	smpsPan		panCenter
	smpsFMvoice		$05
	dc.b nRst, $7F, $11
	smpsFMvoice		$04
	dc.b nD6, $0C, nA5, nG6, nFs6, $7F, smpsNoAttack, $1D
	dc.b nG6, $0C, nFs6, nD6, nA5, nRst, $7F, $7F
	dc.b $7F, $15

Title_Loop21:
	dc.b nD5, $06, nD6, nD5, nRst, $1E
	smpsLoop		$00, $07, Title_Loop21, Target
	dc.b nD5, $06, nD6, nD5, nRst, $7F, $41
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b $0C, $06, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, $1E, nRst, $06, nA4
	dc.b nA4, nA4, nA4, $09, $09, $09, nRst, $03
	dc.b nD4, $06, nC4, nD4, $09, nC4, $03, nD4
	dc.b $09, $09, nRst, $0C, nA4, $06, $0C, nD4
	dc.b $06, $06, nC4, nA4, $0C, nD4, $12, $1E
	dc.b nG4, $0C, $0C, $06, $12, nF4, $06, nG4
	dc.b nAb4, nAb4, nA4, $0C, $0C, nD4, $06, $06
	dc.b nF4, nG4, $0C, $0C, nF4, nA4, $1E, nRst
	dc.b $12, nD4, $06, nF4, nG4, nG4, nG4, $0C
	dc.b $06, nF4, nG4, nAb4, nAb4, nAb4, nA4, $0C
	dc.b nD4, $06, $06, $06, nG4, $0C, $06, $0C
	dc.b nF4, nA4, $36, nRst, $60
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $36
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4, $1E
	dc.b nRst, $18, nD4, $0C, $06, nA4, $0C, $06
	dc.b nF4, $0C, nE4, $24, nC4, $06, nD4, nRst
	dc.b $0C, nF4, $06, nE4, $12, nC4, $06, nD4
	dc.b nRst, $0C, nA4, $24, nRst, $7F, $11
	smpsFMvoice		$04
	smpsAlterVol		$02
	dc.b nD4, $0C, nA3, nG4, nFs4, $7F, smpsNoAttack, $1D
	dc.b nG4, $0C, nFs4, nD4, nA3
	smpsFMvoice		$03
	dc.b nD3, $03, nRst, nD3, nRst, nD3

Title_Loop22:
	dc.b nRst, nF4
	smpsLoop		$00, $05, Title_Loop22, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop23:
	dc.b nRst, nG4
	smpsLoop		$00, $05, Title_Loop23, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nAb4
	dc.b nRst, nAb4, nRst, nG4, nRst, nF4, nRst, nD4
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop24:
	dc.b nRst, nD4
	smpsLoop		$00, $05, Title_Loop24, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop25:
	dc.b nRst, nF4
	smpsLoop		$00, $05, Title_Loop25, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop26:
	dc.b nRst, nG4
	smpsLoop		$00, $05, Title_Loop26, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nAb4
	dc.b nRst, nAb4, nRst, nG4, nRst, nF4, nRst, nD4
	dc.b nRst
	smpsFMvoice		$04
	dc.b nD4, $0C, nA3, nG4
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b nC4, nD4, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, nRst, $06
	smpsFMvoice		$04
	smpsAlterVol		$02
	dc.b nG4, $0C, nFs4, nD4, nA3
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nA4, $09, $09, $0C, nD4, $06, nC4, nD4
	dc.b nC4, nD4, nD4, $0C, nRst, nA4, $06, $0C
	dc.b nD4, $06, $06, nC4, nA4, $0C, nD4, nD4
	dc.b $24, nG4, $0C, nF4, $06, nG4, nRst, nG4
	dc.b $0C, $06, nF4, nG4, nAb4, $0C, nA4, nA4
	dc.b nD4, $06, $06, nF4, nG4, nRst, nG4, $0C
	dc.b nF4, nA4, $36, nG4, $0C, $06, $0C, $06
	dc.b nF4, nG4, nA3, nAb3, nF3, nD4, $12, $0C
	dc.b nF4, $06, $06, nRst, nC5, $0C, nG4, nA4
	dc.b $36, nRst, $30
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $36
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nG4, nA4, $06, nG4, $0C, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4, $1E
	dc.b nRst, $18, nD4, $0C, $06, nA4, $0C, $06
	dc.b nF4, $0C, nE4, $24, nC4, $06, nD4, nRst
	dc.b $0C, nF4, $06, nE4, $12, nC4, $06, nD4
	dc.b nRst, $60
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nG4, $06, nA4, $0C, nG4, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $1E, nRst
	dc.b $18
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD5, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nG4, $09, nA4, nG4, $0C, nF4, $12, nG4
	dc.b $09, nF4, nG4, $0C, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD6, $0C, $0C, $0C, $0C
	smpsFMvoice		$05
	smpsAlterVol		$FE
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, $0C
	dc.b nE4, $24, nC4, $06, nD4, nRst, $0C, nF4
	dc.b $06, nE4, nRst, $0C, nC4, $06, nRst
	smpsFMvoice		$07
	smpsAlterVol		$02
	dc.b nD3, $30, nD5, $08, $07, $08, $07, nRst
	dc.b $12, $7F, $41
	smpsJump		Title_FM4, Target

Title_FM5:
	smpsPan		panLeft
	smpsFMvoice		$05
	dc.b nRst

Title_Loop27:
	dc.b $59
	smpsLoop		$00, $0F, Title_Loop27, Target
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b $0C, $06, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, $1E, nRst, $06, nA4
	dc.b nA4, nA4, nA4, $09, $09, $09, nRst, $03
	dc.b nD4, $06, nC4, nD4, $09, nC4, $03, nD4
	dc.b $09, $09, nRst, $0C, nA4, $06, $0C, nD4
	dc.b $06, $06, nC4, nA4, $0C, nD4, $12, $1E
	dc.b nG4, $0C, $0C, $06, $12, nF4, $06, nG4
	dc.b nAb4, nAb4, nA4, $0C, $0C, nD4, $06, $06
	dc.b nF4, nG4, $0C, $0C, nF4, nA4, $1E, nRst
	dc.b $12, nD4, $06, nF4, nG4, nG4, nG4, $0C
	dc.b $06, nF4, nG4, nAb4, nAb4, nAb4, nA4, $0C
	dc.b nD4, $06, $06, $06, nG4, $0C, $06, $0C
	dc.b nF4, nA4, $36, nRst, $5D
	smpsFMvoice		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nA4, $33
	smpsFMvoice		$07
	dc.b $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nE4, $36
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, nD4
	dc.b $1E, nRst, $18, nD4, $0C, $06, nA4, $0C
	dc.b $06, nF4, $0C, nE4, $24, nC4, $06, nD4
	dc.b nRst, $0C, nF4, $06, nE4, $12, nC4, $06
	dc.b nD4, nRst, $0C, nA4, $24, nRst, $7F, $7F
	dc.b $7F
	smpsFMvoice		$03
	dc.b nD3, $03, nRst, nD3, nRst, nD3

Title_Loop28:
	dc.b nRst, nC4
	smpsLoop		$00, $05, Title_Loop28, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop29:
	dc.b nRst, nD4
	smpsLoop		$00, $05, Title_Loop29, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nEb4
	dc.b nRst, nEb4, nRst, nD4, nRst, nC4, nRst, nA3
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop30:
	dc.b nRst, nA3
	smpsLoop		$00, $05, Title_Loop30, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop31:
	dc.b nRst, nC4
	smpsLoop		$00, $05, Title_Loop31, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop32:
	dc.b nRst, nD4
	smpsLoop		$00, $05, Title_Loop32, Target
	dc.b nRst, nD3, nRst, nD3, nRst, nD3, nRst, nEb4
	dc.b nRst, nEb4, nRst, nD4, nRst, nC4, nRst, nA3
	dc.b nRst, nD3, nRst, nD3, nRst, nD3

Title_Loop33:
	dc.b nRst, nD4
	smpsLoop		$00, $04, Title_Loop33, Target
	smpsFMvoice		$05
	dc.b nA4, $06, $0C, nD4, $06, $06, nC4, nD4
	dc.b nC4, nD4, nC4, nD4, $09, nRst, $03, nD4
	dc.b $0C, nRst, nA4, $06, $0C, nD4, $06, $06
	dc.b nC4, nF4, $09, $09, $12, nRst, nAb4, $06
	dc.b $0C, nA4, $09, $09, $0C, nD4, $06, nC4
	dc.b nD4, nC4, nD4, nD4, $0C, nRst, nA4, $06
	dc.b $0C, nD4, $06, $06, nC4, nA4, $0C, nD4
	dc.b nD4, $24, nG4, $0C, nF4, $06, nG4, nRst
	dc.b nG4, $0C, $06, nF4, nG4, nAb4, $0C, nA4
	dc.b nA4, nD4, $06, $06, nF4, nG4, nRst, nG4
	dc.b $0C, nF4, nA4, $36, nG4, $0C, $06, $0C
	dc.b $06, nF4, nG4, nA3, nAb3, nF3, nD4, $12
	dc.b $0C, nF4, $06, $06, nRst, nC5, $0C, nG4
	dc.b nA4, $36, nRst, $2D
	smpsFMvoice		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nA4, $33
	smpsFMvoice		$07
	dc.b $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nG4, $0C, nA4, $06, nG4, $0C, nF4, $12
	dc.b nG4, $06, nF4, $0C, nG4, nF4, nE4, $36
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, nD4
	dc.b $1E, nRst, $18, nD4, $0C, $06, nA4, $0C
	dc.b $06, nF4, $0C, nE4, $24, nC4, $06, nD4
	dc.b nRst, $0C, nF4, $06, nE4, $12, nC4, $06
	dc.b nD4, nRst, $5D
	smpsFMvoice		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nG4, $06, nA4, $0C, nG4, nF4, $12, nG4
	dc.b $06, nF4, $0C, nG4, nF4, nA4, $1E, nRst
	dc.b $15
	smpsFMvoice		$07
	dc.b nA4, $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nG4, $09, nA4, nG4, $0C, nF4, $12, nG4
	dc.b $09, nF4, nG4, $0C, nF4, nE4, $36, nD4
	dc.b $06, $0C, nA4, nA4, $06, nF4, nD4, $03
	smpsFMvoice		$07
	dc.b nA5, $0C, $0C, $0C, $0C, nRst, $03
	smpsFMvoice		$05
	dc.b nD4, $06, $0C, nA4, nA4, $06, nF4, $0C
	dc.b nE4, $24, nC4, $06, nD4, nRst, $0C, nF4
	dc.b $06, nE4, nRst, $0C, nC4, $06, nRst, $03
	smpsFMvoice		$07
	dc.b nD3, $30, nA4, $08, $07, $08, $07, nRst
	dc.b $12, $7F, $41
	smpsJump		Title_FM5, Target

Title_FM6:
	smpsFMvoice		$06
	smpsPan		panRight
	dc.b nRst

Title_Loop34:
	dc.b $5E
	smpsLoop		$00, $0F, Title_Loop34, Target
	dc.b nG4, $1E, nRst, $12, nAb4, $0C, nG4, $06
	dc.b nF4, nD4, nRst, $42, nF4, $1E, nRst, $12
	dc.b nG4, $06, nD4, $18, nRst, $12, nAb4, $0C
	dc.b nG4, $06, nF4, nD4, nRst, $7F, $7F, $7F
	dc.b $63, nG5, $06, nF5, nG5, nAb5, $0C, nG5
	dc.b $06, nD5, nC5

Title_Loop35:
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $60
	smpsLoop		$00, $02, Title_Loop35, Target
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst

Title_Loop36:
	dc.b $7A
	smpsLoop		$00, $07, Title_Loop36, Target
	dc.b $7C, nF4, $1E, nRst, $12, nG4, $1E, nRst
	dc.b $12, nAb4, $0C, nG4, $06, nF4, nD4, nRst
	dc.b $42, nF4, $1E, nRst, $12, nG4, $1E, nRst
	dc.b $12, nAb4, $0C, nG4, $06, nF4, nD4, nRst
	dc.b $7F, $7F, $7F, $33, nG5, $06, nF5, nG5
	dc.b nAb5, $0C, nG5, $06, nD5, nC5

Title_Loop37:
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $60
	smpsLoop		$00, $02, Title_Loop37, Target
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $7F, $41, nG5
	dc.b $06, nF5, nG5, nAb5, $0C, nG5, $06, nD5
	dc.b nC5

Title_Loop38:
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $60
	smpsLoop		$00, $02, Title_Loop38, Target
	dc.b nD5, $18, nF5, $0C, nE5, nC5, nG4, $06
	dc.b nF4, $0C, nE4, $12, nRst, $7F, $7F, $7F
	dc.b $33
	smpsJump		Title_FM6, Target

Title_PSG1:
	dc.b nRst, $7F, $05, nD1, $3C, nRst, $7F, $05
	dc.b nD1, $3C

Title_Loop39:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	smpsLoop		$00, $02, Title_Loop39, Target
	dc.b nRst, $7F, $7F, $7F, $03, nG0, $24, $06
	dc.b nFs0, $12, $06, nF0, $12, $06, nE0, $12
	dc.b nRst, $18, nD1, $3C

Title_Loop40:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	smpsLoop		$00, $02, Title_Loop40, Target
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C
	smpsSetVol	$02
	dc.b nD0, $06, nC0, nD0, nEb0, $0C, nD0, $06
	dc.b nC0, nC0
	smpsSetVol	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nD0, nE0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $0C, nC0, $24, nD0, $7F, smpsNoAttack
	dc.b $41, $7F, smpsNoAttack, $05, nD1, $3C, nRst, $7F
	dc.b $7F, $7F, $03

Title_Loop41:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	smpsLoop		$00, $02, Title_Loop41, Target
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C, nD0, $06, nC0, nD0, nEb0, $0C, nD0
	dc.b $06, nC0, nC0, nC0, $30, $30, nD0, nE0
	dc.b nC0, nC0, nD0, nE0, nC0, nC0, nD0, nE0
	dc.b $24, nC0, $06, $06, nRst, $0C, nC0, $06
	dc.b $12, $06, $06
	smpsSetVol	$02
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0
	smpsSetVol	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nC0, nC0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $7F, $7F, $22
	smpsJump		Title_PSG1, Target

Title_PSG2:
	dc.b nRst, $7F, $05, nD1, $3C, nRst, $7F, $05
	dc.b nD1, $3C

Title_Loop42:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	smpsLoop		$00, $02, Title_Loop42, Target
	dc.b nRst, $7F, $7F, $7F, $03, nG0, $24, $06
	dc.b nFs0, $12, $06, nF0, $12, $06, nE0, $12
	dc.b nRst, $18, nD1, $3C

Title_Loop43:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	smpsLoop		$00, $02, Title_Loop43, Target
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C
	smpsSetVol	$02
	dc.b nD0, $06, nC0, nD0, nEb0, $0C, nD0, $06
	dc.b nC0, nC0
	smpsSetVol	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nD0, nE0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $0C, nC0, $24, nD0, $7F, smpsNoAttack
	dc.b $41, $7F, smpsNoAttack, $05, nD1, $3C, nRst, $7F
	dc.b $7F, $7F, $03

Title_Loop44:
	dc.b nC0, $0C, nRst, $06, nC0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nD0, $1B, nRst, $03
	dc.b nC0, $0C, nRst, $06, nEb0, $0C, nRst, $1E
	dc.b nD1, $24
	smpsLoop		$00, $02, Title_Loop44, Target
	dc.b nC0, $06, nD0, nRst, nD0, $0C, $06, nC0
	dc.b nD0, nEb0, nD0, nC0, nC0, $0C, nA0, $09
	dc.b nRst, nC0, $06, nD0, nRst, nD0, $12, nC0
	dc.b $0C, $0C, $0C, nD0, nC0, nC0, $06, nD0
	dc.b nRst, nD0, $0C, $06, nC0, nD0, nEb0, nD0
	dc.b nC0, nRst, $0C, nA0, $06, nC0, $03, nRst
	dc.b nC0, nRst, nC0, $06, nC1, nRst, nC1, $0C
	dc.b $06, nC0, nE0, $12, $06, $06, $06, $06
	dc.b $0C, nD0, $06, nC0, nD0, nEb0, $0C, nD0
	dc.b $06, nC0, nC0, nC0, $30, $30, nD0, nE0
	dc.b nC0, nC0, nD0, nE0, nC0, nC0, nD0, nE0
	dc.b $24, nC0, $06, $06, nRst, $0C, nC0, $06
	dc.b $12, $06, $06
	smpsSetVol	$02
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0
	smpsSetVol	$FE
	dc.b nD0, nC0, nD0, nEb0, $0C, nD0, $06, nC0
	dc.b nC0, nC0, $30, $30, nD0, nE0, nC0, nC0
	dc.b nC0, nC0, nC0, nC0, nD0, nE0, $24, nC0
	dc.b $06, $06, nRst, $0C, nC0, $06, $12, $06
	dc.b $06, nRst, $7F, $7F, $22
	smpsJump		Title_PSG2, Target

Title_PSG3:
	dc.b nRst

Title_Loop45:
	dc.b $5E
	smpsLoop		$00, $0F, Title_Loop45, Target
	dc.b nD1, $1E, nRst, $12, nEb1, $0C, nRst, $54
	dc.b nC1, $1E, nRst, $12, nD1, $1E, nRst, $12
	dc.b nEb1, $0C, nRst, $7F, $7F, $7F, $75, nD2
	dc.b $06, nC2, nD2, nEb2, $0C, nD2, $06, nA1
	dc.b nG1, nRst

Title_Loop46:
	dc.b $51
	smpsLoop		$00, $12, Title_Loop46, Target
	dc.b nC1, $1E, nRst, $12, nD1, $1E, nRst, $12
	dc.b nEb1, $0C, nRst, $54, nC1, $1E, nRst, $12
	dc.b nD1, $1E, nRst, $12, nEb1, $0C, nRst, $7F
	dc.b $7F, $7F, $45, nD2, $06, nC2, nD2, nEb2
	dc.b $0C, nD2, $06, nA1, nG1, nRst, $70, $70
	dc.b $70, $70, $70, $70, nD2, $06, nC2, nD2
	dc.b nEb2, $0C, nD2, $06, nA1, nG1, nRst

Title_Loop47:
	dc.b $72
	smpsLoop		$00, $08, Title_Loop47, Target
	smpsJump		Title_PSG3, Target
	
Title_PWM1:
	dc.b dHiTimpani, $03, $03, $84, $06
	smpsLoop		$00, $1C, Title_PWM1, Target

Title_PWM1_Loop1:
	dc.b $85, $03, dSnare, $86, dSnare, dSnare, dSnare
	smpsLoop		$00, $02, Title_PWM1_Loop1, Target
	dc.b $85, dSnare, $86, dSnare, dHiTimpani

Title_PWM1_Loop2:
	dc.b $06
	smpsLoop		$00, $0B, Title_PWM1_Loop2, Target

Title_PWM1_Loop4:
	dc.b $84

Title_PWM1_Loop3:
	dc.b dHiTimpani
	smpsLoop		$00, $0F, Title_PWM1_Loop3, Target
	smpsLoop		$01, $08, Title_PWM1_Loop4, Target
	dc.b $84

Title_PWM1_Loop5:
	dc.b dHiTimpani
	smpsLoop		$00, $0C, Title_PWM1_Loop5, Target

Title_PWM1_Loop6:
	dc.b $85, $03, dSnare, $86, dSnare, dSnare, dSnare
	smpsLoop		$00, $02, Title_PWM1_Loop6, Target
	dc.b $85, dSnare, $86, dSnare, dHiTimpani

Title_PWM1_Loop7:
	dc.b $06
	smpsLoop		$00, $0B, Title_PWM1_Loop7, Target

Title_PWM1_Loop9:
	dc.b $84

Title_PWM1_Loop8:
	dc.b dHiTimpani
	smpsLoop		$00, $0F, Title_PWM1_Loop8, Target
	smpsLoop		$01, $07, Title_PWM1_Loop9, Target
	dc.b $84, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, $36

Title_PWM1_Loop10:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	smpsLoop		$00, $04, Title_PWM1_Loop10, Target

Title_PWM1_Loop11:
	dc.b $84, dHiTimpani
	smpsLoop		$00, $2F, Title_PWM1_Loop11, Target
	dc.b $84, dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84
	dc.b $06, dHiTimpani, $36, $03

Title_PWM1_Loop12:
	dc.b $03, $84, $06, dHiTimpani, $03
	smpsLoop		$00, $1B, Title_PWM1_Loop12, Target
	dc.b $03, $84, $06, $85, $03, dSnare, $86, $06
	dc.b dSnare, $85, $86, $03, dSnare, dSnare, dSnare, $85
	dc.b dSnare, $86, dSnare, dHiTimpani

Title_PWM1_Loop13:
	dc.b $06
	smpsLoop		$00, $0B, Title_PWM1_Loop13, Target

Title_PWM1_Loop15:
	dc.b $84

Title_PWM1_Loop14:
	dc.b dHiTimpani
	smpsLoop		$00, $0F, Title_PWM1_Loop14, Target
	smpsLoop		$01, $0B, Title_PWM1_Loop15, Target
	dc.b $84, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani

Title_PWM1_Loop16:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	smpsLoop		$00, $04, Title_PWM1_Loop16, Target

Title_PWM1_Loop17:
	dc.b $84, dHiTimpani
	smpsLoop		$00, $06, Title_PWM1_Loop17, Target
	dc.b $84, $03, dSnare

Title_PWM1_Loop18:
	dc.b dHiTimpani, $06, $84
	smpsLoop		$00, $29, Title_PWM1_Loop18, Target
	dc.b dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84, $06
	dc.b dHiTimpani, $03, nRst, $33

Title_PWM1_Loop19:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	smpsLoop		$00, $04, Title_PWM1_Loop19, Target

Title_PWM1_Loop20:
	dc.b $84, dHiTimpani
	smpsLoop		$00, $2F, Title_PWM1_Loop20, Target
	dc.b $84, dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84
	dc.b $06, dHiTimpani, $03, nRst, dTimpani, $7F, nRst, nRst
	dc.b $22
	smpsJump		Title_PWM1, Target
	
Title_PWM2:
	dc.b dKick

Title_PWM2_Loop1:
	dc.b $0C
	smpsLoop		$00, $0F, Title_PWM2_Loop1, Target
	dc.b dSnare, $03, $03, $06, dKick

Title_PWM2_Loop2:
	dc.b $0C
	smpsLoop		$00, $0C, Title_PWM2_Loop2, Target
	dc.b $86, $06, dSnare, $87, $86, dSnare, $87, $86
	dc.b dSnare, $12, $06

Title_PWM2_Loop3:
	dc.b dKick, $0C, $06, dSnare, $0C, dKick, dSnare, $06
	smpsLoop		$00, $12, Title_PWM2_Loop3, Target
	dc.b dKick, $0C, $06, dSnare, $0C, $86, $06, dSnare
	dc.b $87, $86, dSnare, $87, $86, dSnare, dMidTimpani, $0C

Title_PWM2_Loop4:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $0B, Title_PWM2_Loop4, Target
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dMidTimpani

Title_PWM2_Loop5:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $04, Title_PWM2_Loop5, Target
	dc.b dKick, dKick, dKick, $86, $06, $06, $87, $85
	dc.b $86, $87, $85, $86

Title_PWM2_Loop6:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $03, dSnare, dKick, $06
	dc.b dSnare, $0C
	smpsLoop		$00, $05, Title_PWM2_Loop6, Target
	dc.b dKick, dSnare, $06, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $03, dSnare, dKick, $06, dSnare
	dc.b dSnare, $12, $06, $12, $06, $12, $85, $03
	dc.b $86, $94, $06, $85, $03, $86, $94, $94
	dc.b $85, $06, $94, dKick

Title_PWM2_Loop7:
	dc.b $0C
	smpsLoop		$00, $0F, Title_PWM2_Loop7, Target
	dc.b dSnare, $03, $03, $03, $03, dKick

Title_PWM2_Loop8:
	dc.b $0C
	smpsLoop		$00, $0C, Title_PWM2_Loop8, Target
	dc.b $86, $06, dSnare, $87, $86, dSnare, $87, $86
	dc.b dSnare

Title_PWM2_Loop9:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C
	smpsLoop		$00, $08, Title_PWM2_Loop9, Target
	dc.b dMidTimpani

Title_PWM2_Loop10:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $0B, Title_PWM2_Loop10, Target
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dMidTimpani

Title_PWM2_Loop11:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $03, Title_PWM2_Loop11, Target
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, $85
	dc.b $06, $86, $87, $85, $86, $87, $85, $86
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $06, $06

Title_PWM2_Loop12:
	dc.b dSnare, $0C, dKick, dSnare, $06, dKick, $0C, $06
	dc.b dSnare, $0C, dKick, dSnare, dKick, $03, dSnare, dKick
	dc.b $06
	smpsLoop		$00, $05, Title_PWM2_Loop12, Target
	dc.b dSnare, dSnare, $12, $06, $12, $06, $03, nRst
	dc.b dKick, $0C, $0C, $0C, $0C, $85, $06, $86
	dc.b $87, $85, $86, $87, $85, $86

Title_PWM2_Loop13:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $03, dSnare, dKick, $06
	dc.b dSnare, $0C
	smpsLoop		$00, $05, Title_PWM2_Loop13, Target
	dc.b dKick, dSnare, $06, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $03, dSnare, dKick, $06, dSnare
	dc.b dSnare, $12, $06, $12, $06, $03, nRst, $7F
	dc.b $7F, $25
	smpsJump		Title_PWM2, Target
	
Title_PWM3:
	dc.b dMidTimpani, $7F, nRst, $41, $7F, $11, dSnare, $06
	dc.b $87, $94, dSnare, $87, $94, dSnare, $87, $7F
	dc.b nRst, nRst, nRst, $09, dMidTimpani, $7F, nRst, nRst
	dc.b nRst, $03, dMidTimpani, $7F, nRst, $11, dSnare, $06
	dc.b $87, $94, dSnare, $87, $94, dSnare, $87, dKick
	dc.b $7F, nRst, nRst, nRst, $03, dMidTimpani, $7F, nRst
	dc.b $41, dKick, $7F, nRst, $71, $86, $06, $87
	dc.b $94, $86, $87, $94, $86, $87, dMidTimpani, $7F
	dc.b nRst, $41, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F
	dc.b nRst, nRst, $22, $7F, $35, dKick, $0C, dMidTimpani
	dc.b $7F, nRst, $11, dSnare, $06, $87, $94, dSnare
	dc.b $87, $94, dSnare, $87, dMidTimpani, $7F, nRst, nRst
	dc.b nRst, $03, dKick, $7F, nRst, nRst, nRst, $03
	dc.b dMidTimpani, $7F, nRst, $41, dKick, $7F, nRst, $41
	dc.b $86, $06, $87, $94, $86, $87, $94, $86
	dc.b $87, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F, nRst
	dc.b $41, dMidTimpani, $7F, nRst, $6E, $33, $86, $06
	dc.b $87, $94, $86, $87, $94, $86, $87, dMidTimpani
	dc.b $7F, nRst, $41, dMidTimpani, $7F, nRst, $41, dMidTimpani
	dc.b $7F, nRst, $6E, $7F, $7F, $25
	smpsJump	Title_PWM3, Target
	
Title_PWM4:
	dc.b nRst, $7F, $41, $7F, $17, dKick, $06, $0C
	dc.b $06, $0C

Title_PWM4_Loop1:
	dc.b $54, nRst
	smpsLoop		$00, $05, Title_PWM4_Loop1, Target
	dc.b nRst, dKick, $06, $12, $77, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, $01, dSnare, $0C, dKick
	dc.b dKick, dSnare, $6C, nRst, nRst, nRst, nRst, nRst
	dc.b dMidTimpani, $24, nRst, $7F, $41, $7F, $17, dKick
	dc.b $06, $0C, $06, $0C

Title_PWM4_Loop2:
	dc.b $59, nRst
	smpsLoop		$00, $06, Title_PWM4_Loop2, Target
	dc.b nRst, nRst, $01, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, $4F

Title_PWM4_Loop3:
	dc.b nRst
	smpsLoop		$00, $07, Title_PWM4_Loop3, Target
	dc.b nRst, $01, $33, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, $4F

Title_PWM4_Loop4:
	dc.b nRst
	smpsLoop		$00, $07, Title_PWM4_Loop4, Target
	dc.b nRst, $01, $7F, $7F, $25
	smpsJump		Title_PWM4, Target

Title_Patches:
	dc.b	$28, $39, $35, $30, $31, $1F, $1F, $1F, $1F, $0C, $0A, $07, $0A, $07, $07, $07, $09, $26, $16, $16, $F6, $17, $32, $14, $00
	dc.b	$2A, $30, $70, $08, $01, $1F, $1F, $1F, $1F, $08, $10, $0E, $0C, $00, $03, $06, $05, $30, $20, $29, $28, $22, $14, $2A, $00
	dc.b	$39, $03, $22, $61, $21, $1F, $12, $1F, $1F, $05, $05, $05, $0B, $00, $00, $00, $00, $10, $18, $10, $18, $1E, $15, $1D, $01
	dc.b	$10, $35, $76, $70, $30, $DF, $DF, $5F, $5F, $06, $08, $09, $09, $06, $03, $03, $01, $26, $16, $06, $26, $21, $34, $19, $00
	dc.b	$3A, $32, $01, $52, $31, $1F, $1F, $1F, $18, $01, $1F, $00, $00, $00, $0F, $00, $00, $5A, $0F, $03, $1A, $3B, $30, $4F, $00
	dc.b	$2A, $01, $08, $06, $04, $53, $1F, $1F, $50, $12, $14, $11, $1F, $00, $00, $00, $00, $29, $15, $36, $0B, $17, $33, $1C, $00
	dc.b	$3B, $3E, $42, $41, $33, $DE, $14, $1E, $14, $14, $0F, $0F, $00, $01, $00, $00, $00, $36, $25, $26, $29, $1F, $1E, $19, $00
	dc.b	$3B, $00, $71, $71, $01, $1F, $16, $0F, $12, $00, $00, $00, $88, $00, $00, $00, $00, $00, $01, $01, $16, $19, $17, $19, $00
	dc.b	$2C, $70, $40, $21, $60, $9F, $1F, $1F, $5F, $0C, $09, $0C, $15, $04, $04, $06, $06, $56, $46, $46, $4F, $0C, $00, $10, $00
	even

	; Patch $00
	; $28
	; $39, $35, $30, $31,	$1F, $1F, $1F, $1F
	; $0C, $0A, $07, $0A,	$07, $07, $07, $09
	; $26, $16, $16, $F6,	$17, $32, $14, $00
;	spAlgorithm	$00
;	spFeedback	$05
;	spDetune	$03, $03, $03, $03
;	spMultiple	$09, $00, $05, $01
;	spRateScale	$00, $00, $00, $00
;	spAttackRt	$1F, $1F, $1F, $1F
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$0C, $07, $0A, $0A
;	spSustainLv	$02, $01, $01, $0F
;	spDecayRt	$07, $07, $07, $09
;	spReleaseRt	$06, $06, $06, $06
;	spTotalLv	$17, $14, $32, $00

	; Patch $01
	; $2A
	; $30, $70, $08, $01,	$1F, $1F, $1F, $1F
	; $08, $10, $0E, $0C,	$00, $03, $06, $05
	; $30, $20, $29, $28,	$22, $14, $2A, $00
;;	spAlgorithm	$02
;;	spFeedback	$05
;	spDetune	$03, $00, $07, $00
;	spMultiple	$00, $08, $00, $01
;	spRateScale	$00, $00, $00, $00
;	spAttackRt	$1F, $1F, $1F, $1F
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$08, $0E, $10, $0C
;	spSustainLv	$03, $02, $02, $02
;	spDecayRt	$00, $06, $03, $05
;	spReleaseRt	$00, $09, $00, $08
;	spTotalLv	$22, $2A, $14, $00

	; Patch $02
	; $39
	; $03, $22, $61, $21,	$1F, $12, $1F, $1F
	; $05, $05, $05, $0B,	$00, $00, $00, $00
	; $10, $18, $10, $18,	$1E, $15, $1D, $01
;;	spAlgorithm	$01
;	spFeedback	$07
;	spDetune	$00, $06, $02, $02
;	spMultiple	$03, $01, $02, $01
;	spRateScale	$00, $00, $00, $00
;	spAttackRt	$1F, $1F, $12, $1F
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$05, $05, $05, $0B
;	spSustainLv	$01, $01, $01, $01
;	spDecayRt	$00, $00, $00, $00
;	spReleaseRt	$00, $00, $08, $08
;	spTotalLv	$1E, $1D, $15, $01

	; Patch $03
	; $10
	; $35, $76, $70, $30,	$DF, $DF, $5F, $5F
	; $06, $08, $09, $09,	$06, $03, $03, $01
	; $26, $16, $06, $26,	$21, $34, $19, $00
;;	spAlgorithm	$00
;	spFeedback	$02
;	spDetune	$03, $07, $07, $03
;	spMultiple	$05, $00, $06, $00
;	spRateScale	$03, $01, $03, $01
;	spAttackRt	$1F, $1F, $1F, $1F
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$06, $09, $08, $09
;	spSustainLv	$02, $00, $01, $02
;	spDecayRt	$06, $03, $03, $01
;	spReleaseRt	$06, $06, $06, $06
;	spTotalLv	$21, $19, $34, $00

	; Patch $04
	; $3A
	; $32, $01, $52, $31,	$1F, $1F, $1F, $18
	; $01, $1F, $00, $00,	$00, $0F, $00, $00
	; $5A, $0F, $03, $1A,	$3B, $30, $4F, $00
;;	spAlgorithm	$02
;	spFeedback	$07
;	spDetune	$03, $05, $00, $03
;	spMultiple	$02, $02, $01, $01
;	spRateScale	$00, $00, $00, $00
;	spAttackRt	$1F, $1F, $1F, $18
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$01, $00, $1F, $00
;	spSustainLv	$05, $00, $00, $01
;	spDecayRt	$00, $00, $0F, $00
;	spReleaseRt	$0A, $03, $0F, $0A
;	spTotalLv	$3B, $4F, $30, $00

	; Patch $05
	; $2A
	; $01, $08, $06, $04,	$53, $1F, $1F, $50
	; $12, $14, $11, $1F,	$00, $00, $00, $00
	; $29, $15, $36, $0B,	$17, $33, $1C, $00
;;	spAlgorithm	$02
;;	spFeedback	$05
;	spDetune	$00, $00, $00, $00
;	spMultiple	$01, $06, $08, $04
;	spRateScale	$01, $00, $00, $01
;	spAttackRt	$13, $1F, $1F, $10
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$12, $11, $14, $1F
;	spSustainLv	$02, $03, $01, $00
;	spDecayRt	$00, $00, $00, $00
;	spReleaseRt	$09, $06, $05, $0B
;	spTotalLv	$17, $1C, $33, $00

	; Patch $06
	; $3B
	; $3E, $42, $41, $33,	$DE, $14, $1E, $14
	; $14, $0F, $0F, $00,	$01, $00, $00, $00
	; $36, $25, $26, $29,	$1F, $1E, $19, $00
;;	spAlgorithm	$03
;	spFeedback	$07
;	spDetune	$03, $04, $04, $03
;	spMultiple	$0E, $01, $02, $03
;	spRateScale	$03, $00, $00, $00
;	spAttackRt	$1E, $1E, $14, $14
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$14, $0F, $0F, $00
;	spSustainLv	$03, $02, $02, $02
;	spDecayRt	$01, $00, $00, $00
;	spReleaseRt	$06, $06, $05, $09
;	spTotalLv	$1F, $19, $1E, $00

	; Patch $07
	; $3B
	; $00, $71, $71, $01,	$1F, $16, $0F, $12
	; $00, $00, $00, $88,	$00, $00, $00, $00
	; $00, $01, $01, $16,	$19, $17, $19, $00
;;	spAlgorithm	$03
;	spFeedback	$07
;	spDetune	$00, $07, $07, $00
;	spMultiple	$00, $01, $01, $01
;	spRateScale	$00, $00, $00, $00
;	spAttackRt	$1F, $0F, $16, $12
;	spAmpMod	$00, $00, $00, $01
;	spSustainRt	$00, $00, $00, $08
;	spSustainLv	$00, $00, $00, $01
;	spDecayRt	$00, $00, $00, $00
;	spReleaseRt	$00, $01, $01, $06
;	spTotalLv	$19, $19, $17, $00

	; Patch $08
	; $2C
	; $70, $40, $21, $60,	$9F, $1F, $1F, $5F
	; $0C, $09, $0C, $15,	$04, $04, $06, $06
	; $56, $46, $46, $4F,	$0C, $00, $10, $00
;;	spAlgorithm	$04
;;	spFeedback	$05
;	spDetune	$07, $02, $04, $06
;	spMultiple	$00, $01, $00, $00
;	spRateScale	$02, $00, $00, $01
;	spAttackRt	$1F, $1F, $1F, $1F
;	spAmpMod	$00, $00, $00, $00
;	spSustainRt	$0C, $0C, $09, $15
;	spSustainLv	$05, $04, $04, $04
;	spDecayRt	$04, $06, $04, $06
;	spReleaseRt	$06, $06, $06, $0F
;	spTotalLv	$0C, $10, $00, $00
