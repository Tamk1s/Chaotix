
Target	EQU	$56802
	smpsHeaderVoice	SFX_49_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $05, SFX_49_FM5, $FC, $00, Target

SFX_49_FM5:
	smpsFMvoice		$00
	dc.b	nD4, $05, nRst, $01, nD4, $05, nRst, $01
	dc.b	nD4, $09
	smpsStop

SFX_49_Patches:

	
	dc.b	$83
	dc.b	$12, $10, $13, $1E,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$02, $02, $02, $02
	dc.b	$2F, $2F, $FF, $3F,	$05, $10, $34, $87
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
