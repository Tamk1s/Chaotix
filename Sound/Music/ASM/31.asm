
Target	EQU	$5619E
	smpsHeaderVoice	SFX_31_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$04
	smpsHeaderSFX	$80, $04, SFX_31_FM4, $10, $02, Target
	smpsHeaderSFX	$80, $05, SFX_31_FM5, $00, $02, Target
	smpsHeaderSFX	$80, $06, SFX_31_FM6, $10, $02, Target
	smpsHeaderSFX	$80, $C0, SFX_31_PSG3, $0A, $01, Target

SFX_31_FM4:
	smpsPan		panRight
	dc.b	nRst, $02
	smpsJump		SFX_31_FM5, Target

SFX_31_FM6:
	smpsPan		panLeft
	dc.b	nRst, $01

SFX_31_FM5:
	smpsFMvoice		$00
	smpsModSet	$03, $02, $05, $03

SFX_31_Loop1:
	dc.b	nC0, $0A
	smpsAlterVol		$07
	smpsLoop		$00, $07, SFX_31_Loop1, Target
	smpsStop

SFX_31_PSG3:
	smpsModSet	$01, $01, $01, $02
	smpsPSGform	$E7

SFX_31_Loop2:
	dc.b	nB3, $0E, smpsNoAttack
	smpsSetVol	$0D
	smpsLoop		$00, $06, SFX_31_Loop2, Target
	smpsStop

SFX_31_Patches:

	
	dc.b	$01
	dc.b	$1F, $30, $10, $33,	$1F, $1F, $1F, $1F
	dc.b	$05, $18, $09, $02,	$0B, $1F, $10, $15
	dc.b	$1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
