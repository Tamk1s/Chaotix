
Target	EQU	$56A6D
	smpsHeaderVoice	SFX_55_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $C0, SFX_55_PSG3, $23, $00, Target
	smpsHeaderSFX	$80, $06, SFX_55_FM6, $00, $00, Target

SFX_55_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$01
	dc.b	nB3, $03
	smpsPSGvoice	$0E
	dc.b	nB3, $08
	smpsStop

SFX_55_FM6:
	smpsFMvoice		$00
	dc.b	nRst, $03, nC4, $08
	smpsStop

SFX_55_Patches:

	
	dc.b	$3A
	dc.b	$09, $02, $12, $01,	$5F, $5F, $1F, $1F
	dc.b	$19, $02, $19, $11,	$05, $02, $00, $0F
	dc.b	$0F, $0F, $CF, $EF,	$00, $00, $00, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
