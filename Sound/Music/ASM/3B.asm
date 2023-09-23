
Target	EQU	$5643C
	smpsHeaderVoice	SFX_3B_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $06, SFX_3B_FM6, $00, $03, Target
	smpsHeaderSFX	$80, $05, SFX_3B_FM5, $DF, $00, Target
	smpsHeaderSFX	$80, $C0, SFX_3B_PSG3, $20, $00, Target

SFX_3B_FM5:
	dc.b	nRst, $03

SFX_3B_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $20, $02
	dc.b	nEb0, $06, nC0, $05

SFX_3B_Loop1:
	smpsAlterVol		$03
	dc.b	nEb0, $04
	smpsLoop		$00, $10, SFX_3B_Loop1, Target
	smpsStop

SFX_3B_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$05
	smpsModSet	$01, $01, $10, $03

SFX_3B_Loop2:
	dc.b	nE4, $02
	smpsSetVol	$03
	smpsLoop		$00, $05, SFX_3B_Loop2, Target
	smpsStop

SFX_3B_Patches:

	
	dc.b	$3A
	dc.b	$51, $01, $00, $20,	$FF, $FF, $FF, $FC
	dc.b	$00, $00, $00, $0A,	$10, $00, $00, $10
	dc.b	$FF, $0F, $FF, $FF,	$0D, $0A, $1D, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
