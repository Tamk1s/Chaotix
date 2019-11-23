
Target	EQU	$56B78
	smpsHeaderVoice	SFX_5A_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_5A_FM6, $00, $16, Target

SFX_5A_FM6:
	smpsModSet	$01, $01, $2B, $00
	smpsFMvoice		$00

SFX_5A_Loop1:
	dc.b	nA2, $06, nCs3, $06
	smpsAlterVol		$FA
	smpsAlterPitch	$01
	smpsLoop		$00, $03, SFX_5A_Loop1, Target
	smpsStop

SFX_5A_Patches:

	
	dc.b	$3D
	dc.b	$13, $0A, $10, $31,	$4C, $0A, $50, $11
	dc.b	$08, $05, $01, $02,	$01, $00, $00, $00
	dc.b	$2C, $2C, $2C, $1C,	$1E, $80, $86, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
