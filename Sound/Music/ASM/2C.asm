
Target	EQU	$5605B
	smpsHeaderVoice	SFX_2C_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $05, SFX_2C_FM5, $00, $05, Target
	smpsHeaderSFX	$80, $06, SFX_2C_FM6, $00, $08, Target

SFX_2C_FM5:
	smpsFMvoice		$00
	dc.b	nA5, $02, $05, $05, $05, $05, $05, $05
	dc.b	$3A
	smpsStop

SFX_2C_FM6:
	smpsFMvoice		$00
	dc.b	nRst, $02, nG5, $02, $05, $15, $02, $05
	dc.b	$32
	smpsStop

SFX_2C_Patches:

	
	dc.b	$04
	dc.b	$37, $72, $77, $49,	$1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D,	$00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F,	$23, $80, $23, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
