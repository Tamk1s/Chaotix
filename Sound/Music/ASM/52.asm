
Target	EQU	$569D3
	smpsHeaderVoice	SFX_52_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_52_FM6, $00, $02, Target
	smpsHeaderSFX	$80, $C0, SFX_52_PSG3, $00, $00, Target

SFX_52_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $06, $00
	dc.b	nAb2, $28
	smpsStop

SFX_52_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$05
	dc.b	nEb5, $08

SFX_52_Loop1:
	dc.b	smpsNoAttack, $04
	smpsSetVol	$02
	smpsLoop		$00, $0A, SFX_52_Loop1, Target
	smpsStop

SFX_52_Patches:

	
	dc.b	$54
	dc.b	$00, $32, $31, $14,	$1F, $9F, $1F, $1F
	dc.b	$0E, $08, $0B, $0E,	$0D, $0D, $00, $0F
	dc.b	$3F, $2F, $2F, $3F,	$00, $80, $06, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
