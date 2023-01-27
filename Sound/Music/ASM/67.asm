
Target	EQU	$56E6F
	smpsHeaderVoice	SFX_67_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_67_FM6, $F0, $0D, Target

SFX_67_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $0D, $00
	dc.b	nEb3, $3F
	smpsStop

SFX_67_Patches:

	
	dc.b	$04
	dc.b	$2F, $07, $07, $00,	$17, $17, $07, $17
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$25, $80, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
