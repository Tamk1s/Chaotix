
Target	EQU	$56F3B
	smpsHeaderVoice	SFX_6A_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_6A_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $05, SFX_6A_FM6, $00, $00, Target

SFX_6A_FM6:
	smpsStop

SFX_6A_Patches:
