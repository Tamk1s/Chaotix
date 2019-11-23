
Target	EQU	$56F11
	smpsHeaderVoice	SFX_6B_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$04
	smpsHeaderSFX	$80, $06, SFX_6B_FM6, $00, $10, Target
	smpsHeaderSFX	$80, $05, SFX_6B_FM5, $00, $10, Target
	smpsHeaderSFX	$80, $04, SFX_6B_FM4, $00, $10, Target
	smpsHeaderSFX	$80, $C0, SFX_6B_PSG3, $E8, $04, Target

SFX_6B_FM6:
	smpsFMvoice		$00
	smpsModSet	$06, $01, $02, $05
	dc.b	nG4, $06, smpsNoAttack
	smpsAlterVol		$14

SFX_6B_Loop1:
	dc.b	$04, smpsNoAttack
	smpsAlterVol		$FE
	smpsLoop		$00, $10, SFX_6B_Loop1, Target
	smpsAlterVol		$09
	dc.b	$10, smpsNoAttack, $0C, smpsNoAttack
	smpsPan		panLeft
	dc.b	$0C, smpsNoAttack
	smpsPan		panCenter
	dc.b	$0C, smpsNoAttack
	smpsPan		panRight
	dc.b	$0C, smpsNoAttack
	smpsPan		panCenter
	dc.b	$0C, smpsNoAttack
	smpsPan		panLeft
	dc.b	$0C, smpsNoAttack
	smpsPan		panCenter
	dc.b	$0C, smpsNoAttack
	smpsPan		panRight
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panCenter
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panCenter
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panRight
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panCenter
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panLeft
	dc.b	$0C, smpsNoAttack
	smpsAlterVol		$08
	smpsPan		panCenter
	dc.b	$0C
	smpsStop

SFX_6B_FM5:
	smpsFMvoice		$00
	smpsModSet	$06, $01, $02, $04
	smpsPan		panLeft
	dc.b	nRst, $06, nC4, $06, smpsNoAttack
	smpsAlterVol		$14
	smpsJump		SFX_6B_Loop1, Target

SFX_6B_FM4:
	smpsFMvoice		$00
	smpsModSet	$06, $02, $03, $02
	smpsPan		panRight
	dc.b	nRst, $0C, nE4, $06, smpsNoAttack
	smpsAlterVol		$14
	smpsJump		SFX_6B_Loop1, Target

SFX_6B_PSG3:
	smpsPSGvoice	$05
	smpsModSet	$05, $02, $01, $10
	dc.b	nRst, $12, nD3, $04, smpsNoAttack, $2C
	smpsPSGform	$E7
	smpsAlterPitch	$18
	smpsAlterPitch	$23
	smpsPSGvoice	$07
	smpsModSet	$00, $00, $00, $00
	dc.b	nC4, $20, smpsNoAttack, $10

SFX_6B_Loop2:
	dc.b	smpsNoAttack
	smpsSetVol	$FF
	dc.b	$10
	smpsLoop		$00, $03, SFX_6B_Loop2, Target
	dc.b	smpsNoAttack, $20
	smpsStop

SFX_6B_Patches:

	
	dc.b	$5C
	dc.b	$51, $44, $52, $12,	$FF, $C5, $AA, $F7
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$13, $80, $0E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$77, $65, $05, $15,	$1F, $DF, $DF, $DF
	dc.b	$00, $00, $03, $02,	$00, $04, $02, $01
	dc.b	$BF, $4C, $6C, $5C,	$22, $8E, $8E, $8E
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
