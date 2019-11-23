
Target	EQU	$56DD8
	smpsHeaderVoice	SFX_64_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_64_FM6, $EE, $08, Target
	smpsHeaderSFX	$80, $05, SFX_64_FM5, $EE, $08, Target

SFX_64_FM5:
	dc.b	nRst, $0C
	smpsAlterNote	$1A

SFX_64_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $0D, $00
	dc.b	nA2, $2F
	smpsModSet	$00, $00, $00, $00

SFX_64_Jump1:
	dc.b	smpsNoAttack, $01
	smpsJump		SFX_64_Jump1, Target

SFX_64_Patches:

	
	dc.b	$2F
	dc.b	$50, $51, $12, $31,	$5B, $15, $56, $54
	dc.b	$00, $01, $00, $00,	$00, $03, $00, $00
	dc.b	$0F, $3F, $0F, $0F,	$81, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
