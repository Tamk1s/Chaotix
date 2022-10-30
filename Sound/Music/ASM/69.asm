
Target	EQU	$56ECE
	dc.w	$B1E0
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $05, SFX_69_FM5, $00, $05, Target

SFX_69_FM5:
	smpsPan		panRight
	smpsFMvoice		$00
	dc.b	nE5, $05, nG5, $05, nC6, $1B
	smpsStop
	
