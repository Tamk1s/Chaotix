S3K_Jump62_Header:
	sHeaderInit						; Z80 offset is $E79E
	sHeaderPatch	S3K_Jump62_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $80, S3K_Jump62_PSG1, $00, $00

S3K_Jump62_PSG1:
	sVolEnvPSG	v0D
	dc.b nF2, $05
	ssModZ80	$02, $01, $F8, $65
	dc.b nBb2, $15
	sStop

S3K_Jump62_Patches:
