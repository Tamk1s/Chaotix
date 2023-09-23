
Target	EQU	$5636D
	smpsHeaderVoice	SFX_37_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_37_FM6, $00, $03, Target

SFX_37_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $09, $00
	dc.b	nC3, $15, smpsNoAttack

SFX_37_Jump1:
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $01
	smpsJump		SFX_37_Jump1, Target

SFX_37_Patches:

	
	dc.b	$EB
	dc.b	$18, $76, $D0, $10,	$1C, $0B, $0F, $0F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $03
	dc.b	$D5, $05, $03, $1F,	$0F, $2A, $20, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
