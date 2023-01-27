
Target	EQU	$56525
	smpsHeaderVoice	SFX_3F_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_3F_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $C0, SFX_3F_PSG3, $00, $02, Target

SFX_3F_FM6:
	smpsModSet	$03, $01, $72, $0B
	smpsFMvoice		$00
	dc.b	nA4, $16
	smpsStop

SFX_3F_PSG3:
	smpsPSGvoice	$01
	smpsPSGform	$E7
	dc.b	nB3, $1B
	smpsStop

SFX_3F_Patches:

	
	dc.b	$3C
	dc.b	$0F, $01, $03, $01,	$1F, $1F, $1F, $1F
	dc.b	$19, $12, $19, $0E,	$05, $12, $00, $0F
	dc.b	$0F, $7F, $FF, $FF,	$00, $80, $00, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
