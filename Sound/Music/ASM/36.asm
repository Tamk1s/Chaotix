
Target	EQU	$56328
	smpsHeaderVoice	SFX_36_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_36_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $05, SFX_36_FM5, $00, $03, Target

SFX_36_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $0A, $00
	dc.b	nBb5, $50
	smpsStop

SFX_36_FM5:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $06, $00
	smpsPan		panLeft
	dc.b	nE6, $50
	smpsStop

SFX_36_Patches:

	
	dc.b	$94
	dc.b	$22, $06, $02, $05,	$10, $10, $00, $10
	dc.b	$10, $00, $10, $00,	$00, $0A, $0B, $00
	dc.b	$09, $19, $19, $19,	$0F, $83, $06, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
