
Target	EQU	$56C97
	smpsHeaderVoice	SFX_5F_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_5F_FM6, $EB, $06, Target

SFX_5F_FM6:
	smpsFMvoice		$00
	smpsAlterVol		$05
	dc.b	nF3, $05
	smpsAlterVol		$FB
	smpsModSet	$02, $01, $34, $FF
	dc.b	nBb3, $15
	smpsStop

SFX_5F_Patches:

	
	dc.b	$0C
	dc.b	$08, $08, $08, $08,	$1F, $1F, $1F, $1F
	dc.b	$00, $0A, $00, $0A,	$00, $00, $00, $0A
	dc.b	$FF, $FF, $FF, $FF,	$55, $81, $33, $81
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
