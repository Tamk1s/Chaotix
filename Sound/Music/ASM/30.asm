
Target	EQU	$56185
	smpsHeaderVoice	SFX_30_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_30_FM6, $00, $01, Target

SFX_30_Patches:

	
	dc.b	$3C
	dc.b	$05, $01, $0A, $01,	$56, $5C, $5C, $5C
	dc.b	$0E, $11, $11, $11,	$09, $0A, $06, $0A
	dc.b	$4F, $3F, $3F, $3F,	$17, $80, $20, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

SFX_30_FM6:
	smpsFMvoice		$00
	dc.b	nC5, $06, nA4, $16
	smpsStop
