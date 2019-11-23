
Target	EQU	$57010
	smpsHeaderVoice	SFX_6C_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_6C_FM6, $00, $05, Target

SFX_6C_FM6:
	smpsFMvoice		$00
	dc.b	nRst, $01
	smpsModSet	$03, $01, $09, $FF
	dc.b	nCs6, $25
	smpsModSet	$00, $00, $00, $00

SFX_6C_Loop1:
	dc.b	smpsNoAttack
	smpsAlterVol		$01
	dc.b	nCs6, $02
	smpsLoop		$00, $2A, SFX_6C_Loop1, Target
	smpsStop

SFX_6C_Patches:

	
	dc.b	$3C
	dc.b	$00, $44, $02, $02,	$1F, $1F, $1F, $15
	dc.b	$00, $1F, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$0D, $80, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
