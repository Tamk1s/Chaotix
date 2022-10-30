
Target	EQU	$56DFB
	smpsHeaderVoice	SFX_65_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_65_FM6, $00, $0D, Target

SFX_65_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $C6, $00
	dc.b	nBb4, $0E
	smpsStop

SFX_65_Patches:

	
	dc.b	$4F
	dc.b	$25, $00, $10, $00,	$17, $22, $56, $15
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$80, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
