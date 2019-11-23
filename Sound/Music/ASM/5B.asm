
Target	EQU	$56BB0
	smpsHeaderVoice	SFX_5B_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_5B_FM6, $CC, $0C, Target
	smpsHeaderSFX	$80, $C0, SFX_5B_PSG3, $00, $02, Target

SFX_5B_FM6:
	smpsFMvoice		$00
	smpsModSet	$02, $01, $99, $E1
	dc.b	nCs0, $18
	smpsAlterVol		$0E
	smpsStop

SFX_5B_PSG3:
	smpsPSGform	$E7
	smpsModSet	$01, $01, $04, $01
	dc.b	nC0, $0F
	smpsSetVol	$05
	smpsLoop		$00, $03, SFX_5B_PSG3, Target
	smpsStop

SFX_5B_Patches:

	
	dc.b	$F2
	dc.b	$2A, $30, $00, $25,	$0E, $11, $15, $1F
	dc.b	$05, $00, $11, $02,	$0B, $07, $10, $05
	dc.b	$1F, $0F, $4F, $2F,	$33, $10, $06, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
