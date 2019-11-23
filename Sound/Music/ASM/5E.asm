
Target	EQU	$56C6E
	dc.w	$2BEC
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_5E_FM6, $0C, $08, Target
	smpsHeaderSFX	$80, $05, SFX_5E_FM5, $0C, $08, Target

SFX_5E_FM5:
	smpsModSet	$01, $01, $04, $04
	dc.b	nRst, $06
	smpsPan		panLeft

SFX_5E_FM6:
	smpsFMvoice		$00
	dc.b	nC6, $05, nF5, nG5, nB5

SFX_5E_Loop1:
	smpsAlterVol		$0A
	dc.b	nB5
	smpsLoop		$00, $04, SFX_5E_Loop1, Target
	smpsStop
	
