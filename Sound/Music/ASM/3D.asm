
Target	EQU	$564BF
	smpsHeaderVoice	SFX_3D_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_3D_FM6, $90, $00, Target
	smpsHeaderSFX	$80, $05, SFX_3D_FM5, $90, $02, Target

SFX_3D_FM5:
	dc.b	nRst, $02
	smpsAlterNote	$FE

SFX_3D_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $14, $00
	dc.b	nFs1, $04, nAb1, $0D
	smpsStop

SFX_3D_Patches:

	
	dc.b	$F6
	dc.b	$26, $21, $10, $00,	$1B, $10, $50, $48
	dc.b	$12, $31, $04, $02,	$0B, $1E, $1B, $16
	dc.b	$0F, $9F, $FF, $9F,	$2F, $19, $15, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
