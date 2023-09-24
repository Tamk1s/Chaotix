
Target	EQU	$565A5
	smpsHeaderVoice	SFX_41_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$04
	smpsHeaderSFX	$80, $06, SFX_41_FM6, $10, $01, Target
	smpsHeaderSFX	$80, $05, SFX_41_FM5, $00, $01, Target
	smpsHeaderSFX	$80, $04, SFX_41_FM4, $10, $01, Target
	smpsHeaderSFX	$80, $C0, SFX_41_PSG3, $00, $00, Target

SFX_41_FM6:
	smpsPan		panRight
	dc.b	nRst, $02
	smpsJump		SFX_41_FM5, Target

SFX_41_FM4:
	smpsPan		panLeft
	dc.b	nRst, $01

SFX_41_FM5:
	smpsFMvoice		$00
	smpsModSet	$03, $01, $20, $04

SFX_41_Loop1:
	dc.b	nC0, $18
	smpsAlterVol		$0A
	smpsLoop		$00, $06, SFX_41_Loop1, Target
	smpsStop

SFX_41_PSG3:
	smpsModSet	$01, $01, $0F, $05
	smpsPSGform	$E7

SFX_41_Loop2:
	dc.b	nB3, $18, smpsNoAttack
	smpsSetVol	$03
	smpsLoop		$00, $05, SFX_41_Loop2, Target
	smpsStop

SFX_41_Patches:

	
	dc.b	$F9
	dc.b	$21, $30, $10, $32,	$1F, $1F, $1F, $1F
	dc.b	$05, $18, $09, $02,	$0B, $1F, $10, $05
	dc.b	$1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
