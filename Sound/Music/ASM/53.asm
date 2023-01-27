
Target	EQU	$56A16
	smpsHeaderVoice	SFX_53_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $C0, SFX_53_PSG3, $00, $00, Target
	smpsHeaderSFX	$80, $A0, SFX_53_PSG2, $00, $02, Target

SFX_53_PSG2:
	dc.b	nRst, $0F

SFX_53_PSG3:
	smpsPSGvoice	$09
	smpsModSet	$01, $02, $03, $1A
	dc.b	nC4, $28, nB3, $12
	smpsStop

SFX_53_Patches:
