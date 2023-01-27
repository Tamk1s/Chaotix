
Target	EQU	$5691A
	smpsHeaderVoice	SFX_4F_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	$80, $06, SFX_4F_FM6, $00, $00, Target
	smpsHeaderSFX	$80, $05, SFX_4F_FM5, $00, $04, Target

SFX_4F_FM6:
	smpsFMvoice		$00
	smpsModSet	$01, $01, $27, $02
	dc.b	nF1, $0C, nE1, $0D
	smpsJump		SFX_4F_FM6, Target

SFX_4F_FM5:
	smpsFMvoice		$01
	smpsModSet	$01, $01, $05, $02
	dc.b	nC4, $0C, $0D
	smpsJump		SFX_4F_FM5, Target

SFX_4F_Patches:

	
	dc.b	$FD
	dc.b	$20, $30, $12, $30,	$13, $1A, $1F, $0F
	dc.b	$05, $18, $09, $02,	$0B, $1F, $0D, $05
	dc.b	$4F, $3F, $4F, $0F,	$0D, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$60
	dc.b	$24, $55, $17, $33,	$5F, $5F, $5F, $0F
	dc.b	$05, $04, $04, $0C,	$00, $0F, $04, $09
	dc.b	$3F, $3F, $4F, $3F,	$04, $0E, $00, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
