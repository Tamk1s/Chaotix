
Target	EQU	$40000
	smpsHeaderVoice	S3K_Jump62_Patches, Target
	smpsHeaderTick	$01
	smpsHeaderChan	$01
	smpsHeaderSFX	$80, $A0, S3K_Jump62_PSG1, $00, $00, Target

S3K_Jump62_PSG1:
	;!@ 
	;smpsPSGvoice	$0D
	smpsPSGvoice	$00
	dc.b nF2, $05
	smpsModSet	$02, $01, $F8, $65
	dc.b nBb2, $15
	smpsStop

S3K_Jump62_Patches:
