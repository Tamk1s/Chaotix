
Target	EQU	$5679C
	smpsHeaderVoice	SFX_48_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$03
	smpsHeaderSFX	$80, $06, SFX_48_FM6, $00, $06, Target
	smpsHeaderSFX	$80, $05, SFX_48_FM5, $00, $0E, Target
	smpsHeaderSFX	$80, $04, SFX_48_FM4, $00, $0E, Target

SFX_48_FM6:
	smpsFMvoice		$00
	dc.b	nE2, $08, $06, nRst, $01
	smpsAlterVol		$0F
	dc.b	$06
	smpsStop

SFX_48_FM4:
	smpsAlterPitch	$FD

SFX_48_FM5:
	smpsFMvoice		$01
	dc.b	nA5, $08, nB5, $06, nRst, $01
	smpsAlterVol		$0F
	dc.b	$06
	smpsStop

SFX_48_Patches:

	
	dc.b	$3C
	dc.b	$01, $03, $00, $00,	$1F, $1F, $15, $1F
	dc.b	$11, $0D, $10, $05,	$07, $04, $09, $02
	dc.b	$55, $1A, $55, $1A,	$0E, $80, $08, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$02, $02, $01, $02,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$14, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
