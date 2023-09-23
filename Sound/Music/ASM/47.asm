
Target	EQU	$5675F
	smpsHeaderVoice	SFX_47_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $06, SFX_47_FM6, $00, $00, Target

SFX_47_FM6:
	smpsModSet	$01, $01, $15, $00
	smpsFMvoice		$00
	dc.b	nEb2, $1A
	smpsAlterVol		$03
	dc.b	nE2, $16
	smpsAlterVol		$03
	dc.b	nF2, $13
	smpsAlterVol		$03
	dc.b	nFs2, $0E
	smpsAlterVol		$03
	dc.b	nG2, $0A

SFX_47_Loop1:
	smpsAlterVol		$02
	dc.b	nAb2, $08
	smpsAlterPitch	$01
	smpsLoop		$00, $18, SFX_47_Loop1, Target
	smpsStop

SFX_47_Patches:

	
	dc.b	$3B
	dc.b	$07, $03, $01, $01,	$0F, $5D, $5D, $5E
	dc.b	$00, $0E, $03, $09,	$00, $05, $04, $17
	dc.b	$0F, $0F, $5F, $AF,	$13, $1A, $19, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
