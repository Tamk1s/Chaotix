
Target	EQU	$56EAD
	smpsHeaderVoice	SFX_68_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $06, SFX_68_FM6, $00, $0D, Target
	smpsHeaderSFX	$80, $05, SFX_68_FM5, $00, $0D, Target
	smpsHeaderSFX	$80, $C0, SFX_68_PSG3, $23, $00, Target

SFX_68_FM5:
	dc.b	nRst, $05
	smpsAlterNote	$2A

SFX_68_FM6:
	smpsFMvoice		$00
	dc.b	nF1, $09, nA2, $25
	smpsStop

SFX_68_PSG3:
	smpsPSGform	$E7
	smpsPSGvoice	$02
	dc.b	nC4, $09, nC4, $25
	smpsStop

SFX_68_Patches:

	
	dc.b	$B3
	dc.b	$74, $47, $20, $50,	$5F, $79, $7A, $7A
	dc.b	$08, $07, $07, $0C,	$12, $17, $0D, $03
	dc.b	$9F, $5F, $7F, $9F,	$13, $00, $05, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
