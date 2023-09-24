
Target	EQU	$5683F
	smpsHeaderVoice	SFX_4B_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_4B_FM6, $00, $05, Target
	smpsHeaderSFX	$80, $05, SFX_4B_FM5, $00, $07, Target

SFX_4B_FM6:
	smpsFMvoice		$00
	dc.b	nC3, $28, $28
	smpsStop

SFX_4B_FM5:
	smpsModSet	$00, $00, $00, $00
	smpsFMvoice		$00
	smpsAlterNote	$F4
	dc.b	nRst, $0F
	smpsPan		panLeft
	dc.b	nC3, $28
	smpsPan		panRight
	smpsAlterVol		$05
	dc.b	$28
	smpsAlterVol		$FB
	smpsStop

SFX_4B_Patches:

	
	dc.b	$24
	dc.b	$05, $01, $55, $51,	$B9, $9C, $97, $98
	dc.b	$06, $06, $10, $13,	$0F, $0E, $04, $08
	dc.b	$AF, $8F, $2F, $1F,	$1E, $80, $16, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
