
Target	EQU	$56250
	smpsHeaderVoice	SFX_33_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_33_FM6, $0C, $00, Target
	smpsHeaderSFX	$80, $05, SFX_33_FM5, $00, $13, Target

SFX_33_FM6:
	smpsFMvoice		$01
	dc.b	nRst, $01, nA2, $08
	smpsFMvoice		$00
	dc.b	smpsNoAttack, nAb3, $26
	smpsStop

SFX_33_FM5:
	smpsFMvoice		$02
	smpsModSet	$06, $01, $03, $FF
	dc.b	nRst, $0A

SFX_33_Loop1:
	dc.b	nFs5, $06
	smpsLoop		$00, $05, SFX_33_Loop1, Target
	dc.b	nFs5, $17
	smpsStop

SFX_33_Patches:

	
	dc.b	$30
	dc.b	$30, $5C, $34, $30,	$9E, $A8, $AC, $DC
	dc.b	$0E, $0A, $04, $05,	$08, $08, $08, $08
	dc.b	$BF, $BF, $BF, $BF,	$24, $1C, $04, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$30
	dc.b	$30, $5C, $34, $30,	$9E, $A8, $AC, $DC
	dc.b	$0E, $0A, $04, $05,	$08, $08, $08, $08
	dc.b	$BF, $BF, $BF, $BF,	$24, $2C, $04, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$04
	dc.b	$37, $72, $77, $49,	$1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D,	$00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F,	$13, $81, $13, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
