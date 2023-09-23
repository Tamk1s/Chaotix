
Target	EQU	$56C53
	smpsHeaderVoice	SFX_5D_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_5D_FM6, $00, $06, Target

SFX_5D_FM6:
	smpsFMvoice		$00
	dc.b	nF4, $04, nFs4, nG4
	smpsStop

SFX_5D_Patches:

	
	dc.b	$3C
	dc.b	$74, $32, $38, $74,	$5F, $5B, $5F, $55
	dc.b	$00, $0B, $00, $0B,	$00, $00, $00, $00
	dc.b	$0F, $59, $0F, $5F,	$1B, $80, $14, $8D
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
