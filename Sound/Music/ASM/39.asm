
Target	EQU	$563AA
	smpsHeaderVoice	SFX_39_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $A0, SFX_39_PSG2, $00, $00, Target
	smpsHeaderSFX	$80, $C0, SFX_39_PSG3, $00, $02, Target

SFX_39_PSG3:
	dc.b	nRst, $01
	smpsE2		$03

SFX_39_PSG2:
	smpsPSGvoice	$03
	dc.b	nCs5, $03, nRst
	smpsSetVol	$04
	dc.b	nCs5, nRst
	smpsSetVol	$FC
	smpsStop

SFX_39_Patches:
