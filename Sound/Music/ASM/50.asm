
Target	EQU	$56988
	smpsHeaderVoice	SFX_50_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_50_FM6, $00, $00, Target

SFX_50_FM6:
	smpsFMvoice		$00
	dc.b	nA4, $04
	smpsAlterVol		$04
	dc.b	nA4, $06
	smpsAlterVol		$FC
	smpsStop

SFX_50_Patches:

	
	dc.b	$5A
	dc.b	$17, $35, $03, $52,	$8F, $CE, $5F, $CF
	dc.b	$08, $01, $11, $11,	$00, $00, $23, $0F
	dc.b	$0F, $9F, $7F, $9F,	$0B, $09, $19, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
