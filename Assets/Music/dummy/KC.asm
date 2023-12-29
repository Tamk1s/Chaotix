Target	EQU	$40000

ZERO		EQU	$00
FMPitch		EQU	ZERO
FMVol		EQU	ZERO
PSGPitch	EQU	PSGDelta
PSGVol		EQU	ZERO
PSGNull		EQU	ZERO
PSGVoi		EQU	ZERO
PWMPitch	EQU	ZERO
PWMVol		EQU	ZERO

Dummy_Header:
	smpsHeaderVoice	Dummy_Patches,Target
	smpsHeaderChan	6,3
	smpsHeaderTempo	$06, $04
	smpsHeaderFM	Dummy_NOP, Target, FMPitch, FMVol
	smpsHeaderFM	Dummy_NOP, Target, FMPitch, FMVol
	smpsHeaderFM	Dummy_NOP, Target, FMPitch, FMVol
	smpsHeaderFM	Dummy_NOP, Target, FMPitch, FMVol
	smpsHeaderFM	Dummy_NOP, Target, FMPitch, FMVol
	smpsHeaderFM	Dummy_NOP, Target, FMPitch, FMVol
	smpsHeaderPSG	Dummy_NOP, Target, PSGPitch, PSGVol, PSGNull, PSGVoi
	smpsHeaderPSG	Dummy_NOP, Target, PSGPitch, PSGVol, PSGNull, PSGVoi
	smpsHeaderPSG	Dummy_NOP, Target, PSGPitch, PSGVol, PSGNull, PSGVoi
	smpsHeaderPWM	Dummy_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	Dummy_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	Dummy_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	Dummy_NOP, Target, PWMPitch, PWMVol

Dummy_NOP:
	smpsStop

Dummy_Patches:
	dc.b	$3A, $51, $08, $51, $02, $1E, $1E, $1E, $10, $1F, $1F, $1F, $0F, $00, $00, $00, $02, $0F, $0F, $0F, $1F, $18, $24, $22, $81
	even