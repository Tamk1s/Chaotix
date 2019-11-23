
Target	EQU	$56CCA
	smpsHeaderVoice	SFX_60_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $04, SFX_60_FM4, $F5, $06, Target
	smpsHeaderSFX	$80, $05, SFX_60_FM5, $00, $00, Target
	smpsHeaderSFX	$80, $06, SFX_60_FM6, $00, $00, Target

SFX_60_FM6:
	smpsFMvoice		$00
	dc.b	nA0, $08, nRst, $02, nA0, $08
	smpsStop

SFX_60_FM5:
	smpsFMvoice		$01
	dc.b	nRst, $12, nA5, $55
	smpsStop

SFX_60_FM4:
	smpsFMvoice		$02
	dc.b	nRst, $02, nF5, $05, $04, $05, $04
	smpsStop

SFX_60_Patches:

	
	dc.b	$3B
	dc.b	$03, $02, $03, $06,	$18, $1A, $1A, $96
	dc.b	$17, $0E, $0A, $10,	$00, $00, $00, $00
	dc.b	$FF, $FF, $FF, $FF,	$00, $28, $39, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$04
	dc.b	$37, $72, $77, $49,	$1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D,	$00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F,	$23, $80, $23, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$0F, $00, $00, $00,	$1F, $1A, $18, $1C
	dc.b	$17, $11, $1A, $0E,	$00, $0F, $14, $10
	dc.b	$1F, $9F, $9F, $2F,	$07, $80, $26, $8C
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
