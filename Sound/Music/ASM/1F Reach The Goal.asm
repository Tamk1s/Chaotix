
Target	EQU	$4D34C
	smpsHeaderVoice	ReachGoal_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $3B
	smpsHeaderFM	ReachGoal_FM1, Target, $00, $10
	smpsHeaderFM	ReachGoal_FM2, Target, $00, $05
	smpsHeaderFM	ReachGoal_FM3, Target, $00, $05
	smpsHeaderFM	ReachGoal_FM4, Target, $00, $1C
	smpsHeaderFM	ReachGoal_FM5, Target, $00, $1C
	smpsHeaderFM	ReachGoal_FM6, Target, $0C, $12
	smpsHeaderPSG	ReachGoal_PSG1, Target, $F4, $00, $00, $00
	smpsHeaderPSG	ReachGoal_PSG2, Target, $F4, $00, $00, $00
	smpsHeaderPSG	ReachGoal_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	ReachGoal_PWM1, Target, $00, $FF
	smpsHeaderPWM	ReachGoal_PWM2, Target, $00, $CC
	smpsHeaderPWM	ReachGoal_PWM3, Target, $00, $AA
	smpsHeaderPWM	ReachGoal_PWM4, Target, $00, $00

ReachGoal_FM1:
	smpsFMvoice		$00
	smpsPan		panCenter
	dc.b	nF2, $03, nRst, nF2, $03, nRst, nRst, $18
	dc.b	nF2, $06, nG2, nRst, $18, nF3, $06, nG2
	dc.b	$0C, nRst, $06, nG2, nG1, $06, nRst, nA1
	dc.b	$0C, smpsNoAttack, $48
	smpsStop

ReachGoal_FM2:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		ReachGoal_Call1, Target

ReachGoal_Call1:
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5
	dc.b	$03, nRst
	smpsAlterVol		$07
	dc.b	nD5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nC5, $03, nRst
	smpsAlterVol		$07
	dc.b	nC5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nB4, $03, nRst
	smpsAlterVol		$07
	dc.b	nB4, $03, nRst
	smpsAlterVol		$F9
	dc.b	nC5, $03, nRst
	smpsAlterVol		$07
	dc.b	nC5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nD5, $03, nRst
	smpsAlterVol		$07
	dc.b	nD5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst, nG4
	dc.b	$06
	smpsAlterVol		$07
	dc.b	nG4, $06
	smpsAlterVol		$F9
	dc.b	nA4, $54
	smpsStop

ReachGoal_FM3:
	smpsFMvoice		$01
	smpsPan		panCenter
	smpsCall		ReachGoal_Call2, Target

ReachGoal_Call2:
	smpsAlterPitch	$FB
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5
	dc.b	$03, nRst
	smpsAlterVol		$07
	dc.b	nD5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nC5, $03, nRst
	smpsAlterVol		$07
	dc.b	nC5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nB4, $03, nRst
	smpsAlterVol		$07
	dc.b	nB4, $03, nRst
	smpsAlterVol		$F9
	dc.b	nC5, $03, nRst
	smpsAlterVol		$07
	dc.b	nC5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nD5, $03, nRst
	smpsAlterVol		$07
	dc.b	nD5, $03, nRst
	smpsAlterVol		$F9
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst
	smpsAlterPitch	$05
	dc.b	nD4, $06
	smpsAlterVol		$07
	dc.b	nD4, $06
	smpsAlterVol		$F9
	dc.b	nCs4, $54
	smpsStop

ReachGoal_FM4:
	smpsFMvoice		$01
	smpsPan		panLeft
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall		ReachGoal_Call1, Target
	smpsStop

ReachGoal_FM5:
	smpsFMvoice		$01
	smpsPan		panRight
	smpsModSet	$01, $01, $02, $05
	dc.b	nRst, $06
	smpsCall		ReachGoal_Call2, Target
	smpsStop

ReachGoal_FM6:
	smpsFMvoice		$02
	smpsPan		panCenter
	dc.b	nE5, $06, nF5, $03, nRst, nE5, $06, nD5
	dc.b	$03, nRst
	smpsAlterVol		$0A
	dc.b	nD5, $03, nRst
	smpsAlterVol		$F6
	dc.b	nC5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nC5, $03, nRst
	smpsAlterVol		$F6
	dc.b	nB4, $03, nRst
	smpsAlterVol		$0A
	dc.b	nB4, $03, nRst
	smpsAlterVol		$F6
	dc.b	nC5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nC5, $03, nRst
	smpsAlterVol		$F6
	dc.b	nD5, $03, nRst
	smpsAlterVol		$0A
	dc.b	nD5, $03, nRst
	smpsAlterVol		$F6
	dc.b	nC5, $03, nRst, nB4, nRst, nC5, nRst, nG4
	dc.b	$06
	smpsAlterVol		$0A
	dc.b	nG4, $06
	smpsAlterVol		$F6
	dc.b	nA4, $0C
	smpsStop

ReachGoal_PSG1:
	smpsStop

ReachGoal_PSG2:
	smpsStop

ReachGoal_PSG3:
	smpsStop

ReachGoal_PWM1:
	dc.b	$8B, $06, $8B, nRst, $18, $8B, $06, $8B
	dc.b	nRst, $18, $8B, $06, $0C, $06, $8B, $0C
	dc.b	$0C
	smpsStop

ReachGoal_PWM2:
	dc.b	$96, $18, $82, $06, $82, nRst, $0C, $18
	dc.b	$82, $06, $82
	smpsStop

ReachGoal_PWM3:
	dc.b	$89, $30, nRst, $0C, nRst, $06, $85, $03
	dc.b	$03, $85, $06, $86, $87, $87, $89, $0C
	dc.b	$0C
	smpsStop

ReachGoal_PWM4:
	smpsStop

ReachGoal_Patches:

	
	dc.b	$38
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$26, $26, $26, $28,	$24, $2D, $12, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3A
	dc.b	$01, $03, $02, $01,	$0F, $10, $11, $19
	dc.b	$0A, $05, $0A, $05,	$02, $02, $02, $02
	dc.b	$36, $36, $36, $58,	$19, $1E, $32, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	dc.b	$06, $05, $04, $10, $1F, $5F, $5F, $5F	; Unused
	dc.b	$05, $07, $0C, $0C, $17, $17, $12, $18	; Unused
	dc.b	$9F, $9C, $9C, $9C, $2D, $80, $80, $80	; Unused
