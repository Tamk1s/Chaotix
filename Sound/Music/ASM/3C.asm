
Target	EQU	$56495
	smpsHeaderVoice	SFX_3C_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_3C_FM6, $00, $04, Target
	smpsHeaderSFX	$80, $C0, SFX_3C_PSG3, $00, $00, Target

SFX_3C_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $C5, $1A
	dc.b	nE6, $0F
	smpsStop

SFX_3C_PSG3:
	smpsPSGvoice	$0D
	dc.b	nRst, $06
	smpsModSet	$01, $02, $05, $FF
	smpsPSGform	$E7
	dc.b	nE6, $4F
	smpsStop

SFX_3C_Patches:

	
	dc.b	$3D
	dc.b	$09, $03, $00, $00,	$1F, $1F, $1F, $1F
	dc.b	$10, $0C, $0C, $0C,	$0B, $1F, $10, $05
	dc.b	$1F, $2F, $4F, $2F,	$09, $84, $92, $8E
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
