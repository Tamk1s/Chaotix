
Target	EQU	$562CA
	smpsHeaderVoice	SFX_34_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_34_FM6, $F8, $03, Target

SFX_34_FM6:
	smpsFMvoice		$00
	dc.b	nG3, $06, nRst, $06, nG3, $24
	smpsStop

SFX_34_Patches:

	
	dc.b	$41
	dc.b	$01, $07, $01, $01,	$8E, $8E, $8D, $53
	dc.b	$0E, $0E, $0E, $03,	$00, $00, $00, $00
	dc.b	$1F, $FF, $1F, $0F,	$0C, $29, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
