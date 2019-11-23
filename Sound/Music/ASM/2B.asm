
Target	EQU	$56028
	smpsHeaderVoice	SFX_2B_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $A0, SFX_2B_PSG2, $00, $00, Target
	smpsHeaderSFX	$80, $C0, SFX_2B_PSG3, $00, $00, Target

SFX_2B_PSG2:
	smpsPSGvoice	$01
	dc.b	nBb3, $01, nRst, nBb3, nRst, $03

SFX_2B_Loop1:
	dc.b	nBb3, $01, nRst
	smpsLoop		$00, $0B, SFX_2B_Loop1, Target
	smpsStop

SFX_2B_PSG3:
	smpsPSGvoice	$01
	dc.b	nRst, $01, nAb3, nRst, nAb3, nRst, $03

SFX_2B_Loop2:
	dc.b	nAb3, $01, nRst
	smpsLoop		$00, $0B, SFX_2B_Loop2, Target
	smpsStop

SFX_2B_Patches:
