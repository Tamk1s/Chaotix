
Target	EQU	$564F8
	smpsHeaderVoice	SFX_3E_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_3E_FM6, $00, $0A, Target
	smpsHeaderSFX	$80, $05, SFX_3E_FM5, $00, $0A, Target

SFX_3E_FM5:
	dc.b	nRst, $01
	smpsAlterNote	$FE

SFX_3E_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $EB, $00
	dc.b	nCs7, $02, nB6, $0A
	smpsStop

SFX_3E_Patches:

	
	dc.b	$04
	dc.b	$01, $01, $01, $01,	$1F, $1F, $1F, $1F
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$28, $80, $28, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
