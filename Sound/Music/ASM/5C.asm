
Target	EQU	$56C05
	smpsHeaderVoice	SFX_5C_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_5C_FM6, $0C, $07, Target
	smpsHeaderSFX	$80, $05, SFX_5C_FM5, $0C, $07, Target

SFX_5C_FM5:
	smpsModSet	$01, $01, $04, $04
	dc.b	nRst, $06
	smpsPan		panLeft

SFX_5C_FM6:
	smpsFMvoice		$00
	dc.b	nC6, $07, nF5, nG5, nB5, nD6, nG5, nA5
	dc.b	nC6, nF6, nE6, nC6, nG5, nF5, nE5, nB4
	dc.b	nC5

SFX_5C_Loop1:
	smpsAlterVol		$05
	dc.b	nC5
	smpsLoop		$00, $08, SFX_5C_Loop1, Target
	smpsStop

SFX_5C_Patches:

	
	dc.b	$0D
	dc.b	$75, $33, $57, $10,	$5F, $5F, $5F, $5F
	dc.b	$0C, $0F, $0E, $0B,	$08, $0B, $10, $0C
	dc.b	$7F, $4C, $4C, $3C,	$20, $83, $80, $82
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
