Target	EQU	$56EDF
Play	EQU	$80
FM_Pitch	EQU	$00
FM_Vol	EQU	$05
	smpsHeaderVoice	SFX_69_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	Play, cFM5, SFX_69_FM5, FM_Pitch, FM_Vol, Target

SFX_69_FM5:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nE5, $05, nG5, $05, nC6, $1B
	smpsStop
	
SFX_69_Patches:
	dc.b	$04
	dc.b	$37, $72, $77, $49, $1F, $1F, $1F, $1F
	dc.b	$07, $0A, $07, $0D, $00, $0B, $00, $0B
	dc.b	$1F, $0F, $1F, $0F, $23, $80, $23, $80
