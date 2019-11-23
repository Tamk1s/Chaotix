
Target	EQU	$56603
	smpsHeaderVoice	SFX_42_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $06, SFX_42_FM6, $00, $06, Target
	smpsHeaderSFX	$80, $05, SFX_42_FM5, $00, $07, Target
	smpsHeaderSFX	$80, $04, SFX_42_FM4, $00, $08, Target

SFX_42_FM5:
	smpsModSet	$01, $01, $04, $06
	dc.b	nRst, $05
	smpsPan		panRight

SFX_42_FM6:
	smpsFMvoice		$00
	dc.b	nE6, $05, nA6, nD7, nA6, nD7, nG7

SFX_42_Loop1:
	smpsAlterVol		$08
	dc.b	nG7, $0C
	smpsLoop		$00, $04, SFX_42_Loop1, Target
	smpsStop

SFX_42_FM4:
	smpsModSet	$01, $01, $05, $02
	dc.b	nRst, $0C
	smpsPan		panCenter
	smpsJump		SFX_42_FM6, Target

SFX_42_Patches:

	
	dc.b	$2D
	dc.b	$02, $05, $00, $11,	$1F, $5F, $5F, $5F
	dc.b	$05, $05, $0C, $0E,	$17, $12, $12, $18
	dc.b	$9F, $FC, $FC, $FC,	$24, $84, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
