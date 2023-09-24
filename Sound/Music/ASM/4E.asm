
Target	EQU	$568F5
	smpsHeaderVoice	SFX_4E_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_4E_FM6, $FB, $05, Target

SFX_4E_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $03, $00
	dc.b	nA2, $13
	smpsModSet	$01, $01, $0D, $01

SFX_4E_Jump1:
	dc.b	nA2, $08
	smpsJump		SFX_4E_Jump1, Target

SFX_4E_Patches:

	
	dc.b	$83
	dc.b	$1F, $17, $1F, $1F,	$1F, $13, $18, $16
	dc.b	$00, $00, $00, $01,	$02, $02, $02, $00
	dc.b	$2F, $2F, $FF, $3F,	$08, $18, $01, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
