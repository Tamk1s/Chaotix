
Target	EQU	$5665A
	smpsHeaderVoice	SFX_43_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_43_FM6, $00, $0D, Target

SFX_43_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $E4, $00
	dc.b	nF5, $01
	smpsAlterVol		$05
	dc.b	nEb5, $04
	smpsStop

SFX_43_Patches:

	
	dc.b	$07
	dc.b	$41, $45, $72, $7E,	$4F, $5E, $15, $15
	dc.b	$10, $0D, $00, $00,	$10, $10, $00, $00
	dc.b	$9F, $5F, $0F, $0F,	$80, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
