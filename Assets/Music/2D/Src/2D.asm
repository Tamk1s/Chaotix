
Target	EQU	$5609C
	smpsHeaderVoice	SFX_2D_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_2D_FM6, $00, $05, Target

SFX_2D_FM6:
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b	nE5, $05, nG5, $05, nC6, $1B
	smpsStop

SFX_2D_Patches:

	
	dc.b	$04
	dc.b	$37, $72, $77, $49,	$1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D,	$00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F,	$23, $80, $23, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
