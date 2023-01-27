
Target	EQU	$568A1
	smpsHeaderVoice	SFX_4D_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_4D_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $C0, SFX_4D_PSG3, $00, $00, Target

SFX_4D_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $FA, $00
	dc.b	nFs2, $1F
	smpsStop

SFX_4D_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$05
	dc.b	nEb5, $08

SFX_4D_Loop1:
	dc.b	smpsNoAttack, $04
	smpsSetVol	$01
	smpsLoop		$00, $0A, SFX_4D_Loop1, Target
	smpsStop

SFX_4D_Patches:

	
	dc.b	$38
	dc.b	$01, $32, $33, $10,	$1F, $1F, $1F, $1F
	dc.b	$10, $00, $0B, $0D,	$0D, $00, $00, $0F
	dc.b	$8F, $0F, $2F, $5F,	$00, $04, $06, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
