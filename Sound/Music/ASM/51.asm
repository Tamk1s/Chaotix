
Target	EQU	$569B6
	smpsHeaderVoice	SFX_51_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_51_FM6, $00, $06, Target

SFX_51_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $CB, $16
	dc.b	nB0, $09, $06
	smpsStop

SFX_51_Patches:

	
	dc.b	$09
	dc.b	$01, $20, $10, $10,	$1F, $1F, $1F, $BF
	dc.b	$0F, $0B, $09, $04,	$0B, $14, $10, $05
	dc.b	$6F, $5F, $4F, $4F,	$14, $23, $10, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
