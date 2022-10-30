
Target	EQU	$56D28
	smpsHeaderVoice	SFX_61_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_61_FM6, $D9, $00, Target

SFX_61_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $09, $00
	dc.b	nEb3, $30
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $11
	smpsStop

SFX_61_Patches:

	
	dc.b	$04
	dc.b	$2F, $07, $06, $00,	$17, $17, $07, $17
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$30, $80, $20, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
