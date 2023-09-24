
Target	EQU	$566E4
	smpsHeaderVoice	SFX_46_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $06, SFX_46_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $05, SFX_46_FM5, $00, $00, Target
	smpsHeaderSFX	$80, $04, SFX_46_FM4, $00, $05, Target

SFX_46_FM6:
	smpsFMvoice		$00
	smpsPan		panLeft

SFX_46_Loop1:
	dc.b	nA7, $04, nFs7, nEb7, nC7
	smpsAlterPitch	$F4
	smpsAlterVol		$06
	smpsLoop		$00, $06, SFX_46_Loop1, Target
	smpsStop

SFX_46_FM5:
	smpsFMvoice		$00
	smpsPan		panRight
	dc.b	nRst, $02
	smpsJump		SFX_46_Loop1, Target

SFX_46_FM4:
	smpsFMvoice		$01
	smpsModSet	$01, $01, $0D, $02
	dc.b	nC2, $08
	smpsAlterVol		$03
	smpsLoop		$00, $0C, SFX_46_FM4, Target
	smpsStop

SFX_46_Patches:

	
	dc.b	$3B
	dc.b	$05, $04, $01, $02,	$AF, $5D, $5D, $5E
	dc.b	$0D, $0E, $13, $08,	$05, $05, $14, $19
	dc.b	$9F, $FF, $FF, $EF,	$18, $20, $18, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$18
	dc.b	$37, $30, $30, $31,	$9E, $DC, $1C, $9C
	dc.b	$0D, $06, $04, $01,	$08, $0A, $03, $05
	dc.b	$BF, $BF, $3F, $2F,	$2C, $20, $0A, $88
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
