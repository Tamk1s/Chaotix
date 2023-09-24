
Target	EQU	$56B13
	smpsHeaderVoice	SFX_58_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_58_FM6, $F4, $00, Target

SFX_58_FM6:
	smpsFMvoice		$00
	dc.b	nB3, $07, smpsNoAttack, nAb3

SFX_58_Loop1:
	dc.b	$01
	smpsAlterVol		$01
	smpsLoop		$00, $2F, SFX_58_Loop1, Target
	smpsStop

SFX_58_Patches:

	
	dc.b	$30
	dc.b	$30, $30, $30, $30,	$9E, $D8, $DC, $DC
	dc.b	$0E, $0A, $04, $05,	$08, $08, $08, $08
	dc.b	$BF, $BF, $BF, $BF,	$14, $3C, $14, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
