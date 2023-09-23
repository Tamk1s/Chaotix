
Target	EQU	$57089
	smpsHeaderVoice	SFX_6D_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_6D_FM6, $00, $02, Target

SFX_6D_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $50, $02
	dc.b	nEb6, $65
	smpsStop

SFX_6D_Patches:

	
	dc.b	$20
	dc.b	$36, $35, $30, $31,	$41, $49, $3B, $4B
	dc.b	$09, $06, $09, $08,	$01, $03, $02, $A9
	dc.b	$0F, $0F, $0F, $0F,	$29, $27, $23, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
