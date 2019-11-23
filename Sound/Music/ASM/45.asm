
Target	EQU	$566B5
	smpsHeaderVoice	SFX_45_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_45_FM6, $00, $08, Target

SFX_45_FM6:
	smpsFMvoice		$00
	dc.b	nA2, $07, nB2, $09
	smpsStop

SFX_45_Patches:

	
	dc.b	$5B
	dc.b	$51, $10, $10, $BD,	$35, $53, $42, $33
	dc.b	$13, $07, $00, $16,	$26, $05, $00, $00
	dc.b	$FF, $6F, $3F, $CF,	$2F, $00, $03, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
