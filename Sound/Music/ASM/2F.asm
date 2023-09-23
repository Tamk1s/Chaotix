
Target	EQU	$56132
	smpsHeaderVoice	SFX_2F_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_2F_FM6, $00, $02, Target

SFX_2F_FM6:
	smpsFMvoice		$00
	dc.b	nRst, $01
	smpsModSet	$03, $01, $5D, $0F
	dc.b	nB3, $0A, smpsNoAttack
	KC_smpsModChange		$00
	smpsFMvoice		$01

SFX_2F_Loop1:
	dc.b	nC5, $02
	smpsAlterVol		$01
	dc.b	smpsNoAttack
	smpsLoop		$00, $15, SFX_2F_Loop1, Target
	dc.b	nC5, $02
	smpsStop

SFX_2F_Patches:

	
	dc.b	$20
	dc.b	$36, $35, $30, $31,	$DF, $DF, $9F, $9F
	dc.b	$07, $06, $09, $06,	$07, $06, $06, $08
	dc.b	$2F, $1F, $1F, $FF,	$16, $30, $13, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$20
	dc.b	$31, $33, $30, $31,	$9F, $9F, $9F, $9F
	dc.b	$07, $06, $09, $06,	$07, $06, $06, $08
	dc.b	$2F, $1F, $1F, $FF,	$19, $23, $11, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
