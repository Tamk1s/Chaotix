Target	EQU	$5609C
	smpsHeaderVoice	SFX_2D_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, cFM3, SFX_2D_FM3, $00, $0F, Target
	smpsHeaderSFX	$80, cFM4, SFX_2D_FM4, $00, $05, Target

SFX_2D_FM4:
	smpsCall	SFX_2D_Setup, Target
	smpsCall	SFX_2D_Notes, Target
	smpsStop
	
SFX_2D_FM3:
	smpsCall	SFX_2D_Setup, Target
	dc.b		nRst, $08
	smpsCall	SFX_2D_Notes, Target
	smpsStop

SFX_2D_Setup:
	smpsPan		panLeft
	smpsFMvoice		$00	
	smpsReturn

SFX_2D_Notes:
	dc.b	nE5, $05, nG5, $05, nC6, $1B
	smpsReturn

SFX_2D_Patches:
	dc.b	$04
	dc.b	$37, $72, $77, $49,	$1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D,	$00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F,	$23, $80, $23, $80
