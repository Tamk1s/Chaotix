
Target	EQU	$56AA8
	smpsHeaderVoice	SFX_56_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_56_FM6, $00, $10, Target

SFX_56_FM6:
	smpsFMvoice		$00
	dc.b	nE4, $02
	smpsStop

SFX_56_Patches:

	
	dc.b	$07
	dc.b	$0A, $0A, $0A, $0A,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$88, $88, $88, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
