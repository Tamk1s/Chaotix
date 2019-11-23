
Target	EQU	$56000
	smpsHeaderVoice	SFX_2A_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_2A_FM6, $00, $00, Target

SFX_2A_FM6:
	smpsFMvoice		$00
	dc.b	nA0, $22
	smpsStop

SFX_2A_Patches:

	
	dc.b	$FA
	dc.b	$21, $30, $10, $32,	$1F, $1F, $1F, $1F
	dc.b	$05, $18, $05, $10,	$0B, $1F, $10, $10
	dc.b	$1F, $2F, $4F, $2F,	$0D, $07, $04, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
