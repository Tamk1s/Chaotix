
Target	EQU	$56B40
	smpsHeaderVoice	SFX_59_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $C0, SFX_59_PSG3, $23, $00, Target
	smpsHeaderSFX	$80, $A0, SFX_59_PSG2, $07, $00, Target

SFX_59_PSG3:
	smpsPSGvoice	$09
	smpsModSet	$01, $01, $01, $00
	smpsPSGform	$E7

SFX_59_Loop1:
	dc.b	nC4, $08
	smpsSetVol	$02
	dc.b	smpsNoAttack
	smpsLoop		$00, $04, SFX_59_Loop1, Target
	dc.b	$0C
	smpsStop

SFX_59_PSG2:
	smpsPSGvoice	$04
	smpsModSet	$01, $01, $02, $00

SFX_59_Loop2:
	dc.b	nFs2, $08
	smpsSetVol	$02
	dc.b	smpsNoAttack
	smpsLoop		$00, $04, SFX_59_Loop2, Target
	dc.b	$0C
	smpsStop

SFX_59_Patches:
