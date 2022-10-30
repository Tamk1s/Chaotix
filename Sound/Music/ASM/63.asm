
Target	EQU	$56D89
	smpsHeaderVoice	SFX_63_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_63_FM6, $12, $08, Target

SFX_63_FM6:
	smpsFMvoice		$00
	dc.b	nC3, $05, nCs3, nD3, $05, $05, $05, $05
	dc.b	$05, $05, $05, $05
	smpsStop

SFX_63_Patches:

	
	dc.b	$A4
	dc.b	$5F, $55, $37, $10,	$17, $57, $37, $57
	dc.b	$0F, $11, $0F, $15,	$03, $06, $03, $03
	dc.b	$5F, $5F, $5F, $9F,	$06, $80, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
