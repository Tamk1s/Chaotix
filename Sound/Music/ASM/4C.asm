
Target	EQU	$56874
	smpsHeaderVoice	SFX_4C_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_4C_FM6, $00, $00, Target

SFX_4C_FM6:
	smpsModSet	$01, $01, $07, $11
	smpsFMvoice		$00
	dc.b	nA4, $19
	smpsStop

SFX_4C_Patches:

	
	dc.b	$3C
	dc.b	$59, $00, $00, $32,	$5F, $1F, $1F, $1F
	dc.b	$0A, $0D, $16, $0F,	$03, $12, $00, $0F
	dc.b	$EF, $9F, $FF, $FF,	$00, $80, $00, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
