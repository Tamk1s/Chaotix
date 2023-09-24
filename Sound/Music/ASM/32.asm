
Target	EQU	$56212
	smpsHeaderVoice	SFX_32_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_32_FM6, $00, $04, Target
	smpsHeaderSFX	$80, $05, SFX_32_FM5, $00, $04, Target

SFX_32_FM6:
	dc.b	nE0, $05

SFX_32_FM5:
	smpsFMvoice		$00
	dc.b	nAb0, $09, nBb0, $07, nAb0, $09, nBb0, $07
	smpsJump		SFX_32_FM6, Target

SFX_32_Patches:

	
	dc.b	$FA
	dc.b	$21, $30, $10, $32,	$1F, $0F, $1F, $1F
	dc.b	$05, $18, $09, $02,	$06, $0F, $06, $02
	dc.b	$1F, $07, $4F, $2F,	$0F, $0E, $0E, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
