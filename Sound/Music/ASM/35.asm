
Target	EQU	$562F6
	smpsHeaderVoice	SFX_35_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_35_FM6, $00, $00, Target

SFX_35_FM6:
	smpsFMvoice		$00
	smpsPan		panLeft
	dc.b	nEb5, $0E
	smpsAlterVol		$0F
	dc.b	$0E
	smpsAlterVol		$F1
	smpsPan		panRight
	dc.b	nE5, $0E
	smpsAlterVol		$0F
	dc.b	$0E
	smpsAlterVol		$F1
	smpsStop

SFX_35_Patches:

	
	dc.b	$0C
	dc.b	$07, $02, $09, $03,	$8F, $CE, $5F, $CF
	dc.b	$07, $0E, $11, $10,	$00, $10, $23, $0F
	dc.b	$FF, $5F, $7F, $1F,	$1A, $80, $2B, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
