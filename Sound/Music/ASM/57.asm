
Target	EQU	$56AD5
	smpsHeaderVoice	SFX_57_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_57_FM6, $00, $07, Target
	smpsHeaderSFX	$80, $05, SFX_57_FM5, $00, $07, Target

SFX_57_FM5:
	smpsAlterNote	$F9
	dc.b	nRst, $04

SFX_57_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $09, $00
	dc.b	nB4, $52
	smpsModSet	$00, $00, $00, $00
	dc.b	smpsNoAttack, $60
	smpsStop

SFX_57_Patches:

	
	dc.b	$3A
	dc.b	$01, $11, $02, $02,	$67, $89, $87, $17
	dc.b	$00, $04, $0E, $03,	$00, $04, $00, $00
	dc.b	$14, $08, $18, $09,	$19, $22, $27, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
