
Target	EQU	$563DB
	smpsHeaderVoice	SFX_3A_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $06, SFX_3A_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $05, SFX_3A_FM5, $00, $00, Target
	smpsHeaderSFX	$80, $04, SFX_3A_FM4, $00, $02, Target

SFX_3A_FM6:
	smpsFMvoice		$00
	smpsJump		SFX_3A_Jump1, Target

SFX_3A_FM5:
	smpsFMvoice		$00
	smpsAlterNote	$07
	dc.b	nRst, $01

SFX_3A_Jump1:
	dc.b	nA4, $20
	smpsStop

SFX_3A_FM4:
	smpsFMvoice		$01
	dc.b	nCs2, $03
	smpsStop

SFX_3A_Patches:

	
	dc.b	$3C
	dc.b	$05, $01, $0A, $01,	$56, $5C, $5C, $5C
	dc.b	$0E, $11, $11, $11,	$09, $0A, $06, $0A
	dc.b	$4F, $3F, $3F, $3F,	$1F, $80, $2B, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$05
	dc.b	$00, $00, $00, $00,	$1F, $1F, $1F, $1F
	dc.b	$12, $0C, $0C, $0C,	$12, $08, $08, $08
	dc.b	$1F, $5F, $5F, $5F,	$07, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
