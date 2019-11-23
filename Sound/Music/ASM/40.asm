
Target	EQU	$5656B
	smpsHeaderVoice	SFX_40_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_40_FM6, $E0, $00, Target
	smpsHeaderSFX	$80, $05, SFX_40_FM5, $E3, $02, Target

SFX_40_FM6:
	smpsFMvoice		$00
	dc.b	nCs4, $30
	smpsStop

SFX_40_FM5:
	dc.b	nRst, $02
	smpsFMvoice		$00
	dc.b	nC4, $2B
	smpsStop

SFX_40_Patches:

	
	dc.b	$3B
	dc.b	$03, $31, $00, $01,	$5F, $5F, $5F, $5F
	dc.b	$09, $15, $0A, $0B,	$00, $07, $0D, $00
	dc.b	$9F, $6F, $FF, $FF,	$0D, $10, $09, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
