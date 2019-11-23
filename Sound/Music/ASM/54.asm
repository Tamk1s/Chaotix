
Target	EQU	$56A40
	smpsHeaderVoice	SFX_54_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_54_FM6, $0C, $00, Target

SFX_54_FM6:
	smpsFMvoice		$00
	dc.b	nRst, $01, nBb2, $05, smpsNoAttack, nB2, $26
	smpsStop

SFX_54_Patches:

	
	dc.b	$30
	dc.b	$30, $30, $30, $30,	$9E, $A8, $AC, $DC
	dc.b	$0E, $0A, $04, $05,	$08, $08, $08, $08
	dc.b	$BF, $BF, $BF, $BF,	$04, $2C, $14, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
