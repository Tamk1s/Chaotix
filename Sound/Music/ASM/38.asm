
Target	EQU	$5638D
	smpsHeaderVoice	SFX_38_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $A0, SFX_38_PSG2, $00, $00, Target

SFX_38_PSG2:
	smpsPSGvoice	$08
	smpsModSet	$04, $01, $08, $02
	dc.b	nF4, $60

SFX_38_Loop1:
	smpsSetVol	$01
	dc.b	nF4, $02
	smpsLoop		$00, $0D, SFX_38_Loop1, Target
	smpsStop

SFX_38_Patches:
