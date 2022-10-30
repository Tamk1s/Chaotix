
Target	EQU	$56E28
	smpsHeaderVoice	SFX_66_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_66_FM6, $F0, $0F, Target

SFX_66_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $0C, $00
	dc.b	nEb3, $3F
	smpsModSet	$00, $00, $00, $00

SFX_66_Jump1:
	dc.b	smpsNoAttack, $01
	smpsJump		SFX_66_Jump1, Target

SFX_66_Patches:

	
	dc.b	$54
	dc.b	$30, $06, $5A, $0B,	$17, $17, $07, $17
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$31, $80, $08, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
