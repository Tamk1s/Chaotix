
Target	EQU	$57088
	smpsHeaderVoice	SFX_6E_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_6E_FM6, $00, $05, Target

SFX_6E_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $10, $00
	dc.b	nE4, $12

SFX_6E_Jump1:
	dc.b	nBb4, $06
	smpsJump		SFX_6E_Jump1, Target

SFX_6E_Patches:

	
	dc.b	$74
	dc.b	$33, $32, $34, $31,	$79, $4B, $8A, $48
	dc.b	$00, $04, $00, $0C,	$01, $03, $02, $09
	dc.b	$0F, $0F, $0F, $7F,	$0A, $87, $03, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
