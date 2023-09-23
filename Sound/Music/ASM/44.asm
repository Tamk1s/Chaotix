
Target	EQU	$56696
	smpsHeaderVoice	SFX_44_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_44_FM6, $00, $01, Target

SFX_44_FM6:
	smpsFMvoice		$00
	dc.b	nG2, $04, nAb2, $09
	smpsStop

SFX_44_Patches:

	
	dc.b	$3B
	dc.b	$30, $50, $30, $70,	$13, $7E, $35, $50
	dc.b	$10, $0A, $1B, $10,	$09, $16, $1E, $16
	dc.b	$3F, $FF, $FF, $FF,	$0F, $16, $05, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
