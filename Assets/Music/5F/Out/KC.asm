
Target	EQU	$56C97
	smpsHeaderVoice     SFX_5F_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX $80, $80, SFX_5F_PSG1, $00, $00, Target

; PSG1 Data
SFX_5F_PSG1:
	smpsPSGvoice        $0D
	dc.b	nF2, $05
	smpsModSet          $02, $01, $F8, $65
	dc.b	nBb2, $15
	smpsStop

; Song seems to not use any FM voices
SFX_5F_Patches:
