
Target	EQU	$56821
	smpsHeaderVoice	SFX_4A_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $A0, SFX_4A_PSG2, $00, $00, Target

SFX_4A_PSG2:
	dc.b	nA5, $02
	smpsStop

SFX_4A_Patches:
