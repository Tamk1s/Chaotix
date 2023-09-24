Target	EQU	$56C77
Play	EQU	$80
FM_Pitch	EQU	$0C
FM_Vol	EQU	$08
	smpsHeaderVoice	SFX_5E_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$02
	smpsHeaderSFX	Play, cFM6, SFX_5E_FM6, FM_Pitch, FM_Vol, Target
	smpsHeaderSFX	Play, cFM5, SFX_5E_FM5, FM_Pitch, FM_Vol, Target

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

;!@ Duplicate patches to make bank shifting work (stupid backwards ptr)
SFX_5E_Patches:
	dc.b	$0D
	dc.b	$75, $33, $57, $10,	$5F, $5F, $5F, $5F
	dc.b	$0C, $0F, $0E, $0B,	$08, $0B, $10, $0C
	dc.b	$7F, $4C, $4C, $3C,	$20, $83, $80, $82
