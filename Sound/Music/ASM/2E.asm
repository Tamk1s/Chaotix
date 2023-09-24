
Target	EQU	$560DB
	smpsHeaderVoice	SFX_2E_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $05, SFX_2E_FM5, $00, $00, Target
	smpsHeaderSFX	$80, $06, SFX_2E_FM6, $00, $07, Target

SFX_2E_FM5:
	smpsModSet	$03, $01, $72, $0B
	smpsFMvoice		$00
	dc.b	nA4, $16
	smpsStop

SFX_2E_FM6:
	smpsFMvoice		$01
	dc.b	nB3, $13
	smpsStop

SFX_2E_Patches:

	
	dc.b	$3C
	dc.b	$0F, $01, $03, $01,	$1F, $1F, $1F, $1F
	dc.b	$19, $12, $19, $0E,	$05, $12, $00, $0F
	dc.b	$0F, $7F, $FF, $FF,	$00, $80, $00, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$0F, $00, $00, $00,	$1F, $1A, $18, $1C
	dc.b	$17, $11, $1A, $0E,	$00, $0F, $14, $10
	dc.b	$1F, $9F, $9F, $2F,	$07, $80, $26, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
