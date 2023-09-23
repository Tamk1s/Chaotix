Target	EQU	$56EF6
	smpsHeaderVoice	SFX_69_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, cFM5, SFX_69_FM5, $00, $0F, Target
	smpsHeaderSFX	$80, cFM6, SFX_69_FM6, $00, $05, Target
	
SFX_69_FM5:
	smpsCall	SFX_69_Setup, Target
	dc.b		nRst, $08
	smpsCall	SFX_69_Notes, Target
	smpsStop

SFX_69_FM6:
	smpsCall	SFX_69_Setup, Target
	smpsCall	SFX_69_Notes, Target
	smpsStop
	

SFX_69_Setup:
	smpsPan		panRight
	smpsFMvoice		$00
	smpsReturn

SFX_69_Notes:
	dc.b	nE5, $05, nG5, $05, nC6, $1B
	smpsReturn
	
SFX_69_Patches:
	dc.b	$04
	dc.b	$37, $72, $77, $49,	$1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D,	$00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F,	$23, $80, $23, $80
