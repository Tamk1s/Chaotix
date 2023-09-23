Target	EQU	$40000

FMPitch	EQU	$00
FMVol1	EQU	$10
FMVol2	EQU	$1A
PSGPitch1	EQU	$E8
PSGPitch2	EQU	$2F
PSGVol1		EQU	$02
PSGVol2		EQU	$00
PSGNull		EQU	$00
PSGVoi		EQU	$00
PWMPitch	EQU	$00
PWMVol		EQU	$AA
	smpsHeaderVoice	SCD_MMZA_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$02, $55	
	smpsHeaderFM	SCD_MMZA_FM1, Target, FMPitch, FMVol1
	smpsHeaderFM	SCD_MMZA_FM2, Target, FMPitch, FMVol1
	smpsHeaderFM	SCD_MMZA_FM3, Target, FMPitch, FMVol1
	smpsHeaderFM	SCD_MMZA_FM4, Target, FMPitch, FMVol1
	smpsHeaderFM	SCD_MMZA_FM5, Target, FMPitch, FMVol2
	smpsHeaderFM	SCD_MMZ_NOP, Target, FMPitch, FMVol2
	smpsHeaderPSG	SCD_MMZA_PSG1, Target, PSGPitch1, PSGVol1, PSGNull, PSGVoi
	smpsHeaderPSG	SCD_MMZA_PSG2, Target, PSGPitch1, PSGVol1, PSGNull, PSGVoi
	smpsHeaderPSG	SCD_MMZA_PSG3, Target, PSGPitch2, PSGVol2, PSGNull, PSGVoi
	smpsHeaderPWM	SCD_MMZA_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SCD_MMZ_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SCD_MMZ_NOP, Target, PWMPitch, PWMVol
	smpsHeaderPWM	SCD_MMZ_NOP, Target, PWMPitch, PWMVol

SCD_MMZA_FM1:
	dc.b nRst, $40, nRst, $40
	smpsFMvoice		$01

SCD_MMZA_Loop1:
	dc.b nD3, $04, nF3, nD3, nC3, nA2, nG2, nF2
	dc.b nD2
	smpsLoop		$00, $20, SCD_MMZA_Loop1, Target

SCD_MMZA_Loop2:
	smpsFMvoice		$03
	dc.b nD3, $02, nRst, nC3, nRst, nD3, nRst, $0A
	dc.b nC3, $02, nRst, nD3, nRst, $06
	smpsFMvoice		$01
	dc.b nD3, $04, nF3, nG3, nAb3, nG3, nF3, nD3
	dc.b nC3
	smpsFMvoice		$03
	dc.b nA2, $02, nRst, nG2, nRst, nA2, nRst, $0A
	dc.b nG2, $02, nRst, nA2, nRst, $06
	smpsFMvoice		$01
	dc.b nA2, $04, nC3, nA2, nG2, nA2, $06, $02
	dc.b nRst, nA2, nC3, $04
	smpsLoop		$00, $02, SCD_MMZA_Loop2, Target
	smpsJump		SCD_MMZA_FM1, Target

SCD_MMZA_FM2:
	dc.b nRst, $40
	smpsPan		panCenter
	smpsFMvoice		$03

SCD_MMZA_Loop3:
	dc.b nA4, $02, nRst, $04, nAb4, $02, nRst, $04
	dc.b nG4, $02, nRst, $06, nF4, $02, nRst, nD4
	dc.b nRst, $06
	smpsLoop		$00, $02, SCD_MMZA_Loop3, Target
	dc.b nD4, $19, nRst, $6B
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop4:
	dc.b nAb4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop4, Target
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop5:
	dc.b nAb4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop5, Target
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b nD4, $04
	smpsPan		panLeft
	smpsFMvoice		$00
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop6:
	dc.b nAb4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop6, Target
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop7:
	dc.b nAb4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop7, Target
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst
	smpsPan		panCenter
	smpsFMvoice		$04
	dc.b nD4, nA4, nA4, nF4, nF4, nG4, nA4, nC4
	dc.b $04, nAb4, $02, nG4, nG4, nF4, nC4, $04
	dc.b nCs4, $02, nD4, nF4, nG4, nD4, nA3, nC4
	dc.b nD4, nG3, nRst, nF3, nRst, nF3, nF4, nD4
	dc.b nC4, nA3, nAb3, nG3, nF3, nD3, nG3, nAb3
	dc.b nA3, nC4, nD4, nF4, nG4, nF4, nRst, nD4
	dc.b nF4, nG4, nRst, nC3, nD3, nC3, nD3, nF3
	dc.b $04, nA3, nBb3, nCs4, nF4, nAb4, $02, nA4
	dc.b nBb4, nA4, nG4, nE4, nF4, nG4, nC4, nC4
	dc.b nD4, nRst, nF4, nG4, nAb4, nF4, nC4, nD4
	dc.b nF4, nD4, $04, nA3, nC4, $02, nD4, nD3
	dc.b nF4, nF4, nF4, $04, nAb3, $02, nG3, nF3
	dc.b nG3, $04, $02

SCD_MMZA_Loo$8:
	dc.b nAb3, nG3, nF3, nD3, nC3, nG3
	smpsLoop		$00, $02, SCD_MMZA_Loo$8, Target
	dc.b nAb3, nG3, nF3, nD3, nC3, nD3, $04, nF3
	dc.b $02, nG3, $04, nAb3, $02, nA3, nC4, nCs4
	dc.b nD4, nF4, nG4
	smpsFMvoice		$03
	dc.b nA4

SCD_MMZA_Loo$9:
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nA4, $02
	smpsLoop		$00, $03, SCD_MMZA_Loo$9, Target
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nD4, $04
	smpsPan		panLeft
	smpsFMvoice		$00

SCD_MMZA_Loop11:
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop10:
	dc.b nAb4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop10, Target
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, $06
	smpsLoop		$01, $03, SCD_MMZA_Loop11, Target
	dc.b nA4, $02, nRst, $04, nD5, $02, nRst, $04
	dc.b nA4, $02, nRst, $04, nB4, $02, nRst, $04
	dc.b nA4, $02, nRst, $06

SCD_MMZA_Loop12:
	dc.b nAb4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop12, Target
	dc.b nD4, $02, nRst, $04, nAb4, $02, nRst, nD3
	dc.b $04, nC3, nD3, nRst, $08, nC3, $04, nD3
	dc.b nRst
	smpsFMvoice		$02
	dc.b nA4, nC5, nD5, nEb5, nD5, nC5, nA4, nG4
	smpsFMvoice		$00
	dc.b nA2, nG2, nA2, nRst, $08, nG2, $04, nA2
	dc.b nRst
	smpsFMvoice		$02
	dc.b nE4, nG4, nE4, nD4, nE4, $06, $02, nRst
	dc.b nE4, nG4, $04
	smpsFMvoice		$00
	dc.b nD3, nC3, nD3, nRst, $08, nC3, $04, nD3
	dc.b nRst
	smpsFMvoice		$02
	dc.b nA4, nC5, nD5, nEb5, nD5, nC5, nA4, nG4
	smpsFMvoice		$00
	dc.b nA2, nG2, nA2, nRst, $08, nG2, $04, nA2
	dc.b nRst
	smpsFMvoice		$02
	dc.b nE4, nG4, nE4, nD4, nE4, $06, $02, nRst
	dc.b nE4, nG4, $04
	smpsJump		SCD_MMZA_FM2, Target

SCD_MMZA_FM3:
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $44
	smpsPan		panRight
	smpsFMvoice		$00

SCD_MMZA_Loop14:
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop13:
	dc.b nF4, $02, nRst, $04
	smpsLoop		$00, $04, SCD_MMZA_Loop13, Target
	dc.b nF4, $02, nRst, $06
	smpsLoop		$01, $03, SCD_MMZA_Loop14, Target
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop15:
	dc.b nF4, $02, nRst, $04
	smpsLoop		$00, $04, SCD_MMZA_Loop15, Target
	dc.b nF4, $02, nRst, nRst, $40, nRst, $40
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b nD4, $19, nRst, $67, nRst, $40, nRst, $44
	smpsPan		panRight
	smpsFMvoice		$00

SCD_MMZA_Loop17:
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop16:
	dc.b nF4, $02, nRst, $04
	smpsLoop		$00, $04, SCD_MMZA_Loop16, Target
	dc.b nF4, $02, nRst, $06
	smpsLoop		$01, $03, SCD_MMZA_Loop17, Target
	dc.b nF4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nF4, $02, nRst, $06

SCD_MMZA_Loop18:
	dc.b nF4, $02, nRst, $04
	smpsLoop		$00, $04, SCD_MMZA_Loop18, Target
	dc.b nF4, $02, nRst, nD2, $04, nC2, nD2, nRst
	dc.b $08, nC2, $04, nD2, nRst
	smpsFMvoice		$02
	dc.b nD4, nF4, nG4, nAb4, nG4, nF4, nD4, nC4
	smpsFMvoice		$00
	dc.b nA1, nG1, nA1, nRst, $08, nG1, $04, nA1
	dc.b nRst
	smpsFMvoice		$02
	dc.b nA3, nC4, nA3, nG3, nA3, $06, $02, nRst
	dc.b nA3, nC4, $04
	smpsFMvoice		$00
	dc.b nD2, nC2, nD2, nRst, $08, nC2, $04, nD2
	dc.b nRst
	smpsFMvoice		$02
	dc.b nD4, nF4, nG4, nAb4, nG4, nF4, nD4, nC4
	smpsFMvoice		$00
	dc.b nA1, nG1, nA1, nRst, $08, nG1, $04, nA1
	dc.b nRst
	smpsFMvoice		$02
	dc.b nA3, nC4, nA3, nG3, nA3, $06, $02, nRst
	dc.b nA3, nC4, $04
	smpsJump		SCD_MMZA_FM3, Target

SCD_MMZA_FM4:
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $44
	smpsFMvoice		$00

SCD_MMZA_Loop20:
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop19:
	dc.b nD4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop19, Target
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, $06
	smpsLoop		$01, $03, SCD_MMZA_Loop20, Target
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop21:
	dc.b nD4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop21, Target
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, nRst
	dc.b $40, nRst, $40, nRst, $40, nRst, $40, nRst
	dc.b $40, nRst, $44

SCD_MMZA_Loop23:
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop22:
	dc.b nD4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop22, Target
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, $06
	smpsLoop		$01, $03, SCD_MMZA_Loop23, Target
	dc.b nD4, $02, nRst, $04, nG4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $02, nRst, $04
	dc.b nD4, $02, nRst, $06

SCD_MMZA_Loop24:
	dc.b nD4, $02, nRst, $04
	smpsLoop		$00, $03, SCD_MMZA_Loop24, Target
	dc.b nAb4, $02, nRst, $04, nD4, $02, nRst, $22
	smpsFMvoice		$02
	dc.b nA3, $04, nC4, nD4, nEb4, nD4, nC4, nA3
	dc.b nG3, nRst, $20, nE3, $04, nG3, nE3, nD3
	dc.b nE3, $06, $02, nRst, nE3, nG3, $04, nRst
	dc.b $20, nA3, $04, nC4, nD4, nEb4, nD4, nC4
	dc.b nA3, nG3, nRst, $20, nE3, $04, nG3, nE3
	dc.b nD3, nE3, $06, $02, nRst, nE3, nG3, $04
	smpsJump		SCD_MMZA_FM4, Target

SCD_MMZA_FM5:
	dc.b nRst, $46
	smpsFMvoice		$03

SCD_MMZA_Loop25:
	dc.b nA4, $02, nRst, $04, nAb4, $02, nRst, $04
	dc.b nG4, $02, nRst, $06, nF4, $02, nRst, nD4
	dc.b nRst, $06
	smpsLoop		$00, $02, SCD_MMZA_Loop25, Target
	dc.b nD4, $19, nRst, $61, nRst, $40, nRst, $40
	dc.b nRst, $06, nD4, $19, nRst, $65
	smpsFMvoice		$04
	dc.b nD4, $02, nA4, nA4, nF4, nF4, nG4, nA4
	dc.b nC4, $04, nAb4, $02, nG4, nG4, nF4, nC4
	dc.b $04, nCs4, $02, nD4, nF4, nG4, nD4, nA3
	dc.b nC4, nD4, nG3, nRst, nF3, nRst, nF3, nF4
	dc.b nD4, nC4, nA3, nAb3, nG3, nF3, nD3, nG3
	dc.b nAb3, nA3, nC4, nD4, nF4, nG4, nF4, nRst
	dc.b nD4, nF4, nG4, nRst, nC3, nD3, nC3, nD3
	dc.b nF3, $04, nA3, nBb3, nCs4, nF4, nAb4, $02
	dc.b nA4, nBb4, nA4, nG4, nE4, nF4, nG4, nC4
	dc.b nC4, nD4, nRst, nF4, nG4, nAb4, nF4, nC4
	dc.b nD4, nF4, nD4, $04, nA3, nC4, $02, nD4
	dc.b nD3, nF4, nF4, nF4, $04, nAb3, $02, nG3
	dc.b nF3, nG3, $04, $02

SCD_MMZA_Loop26:
	dc.b nAb3, nG3, nF3, nD3, nC3, nG3
	smpsLoop		$00, $02, SCD_MMZA_Loop26, Target
	dc.b nAb3, nG3, nF3, nD3, nC3, nD3, $04, nF3
	dc.b $02, nG3, $04, nAb3, $02, nA3, nC4, nCs4
	dc.b nD4, nF4, nG4, nRst
	smpsFMvoice		$03
	dc.b nA4

SCD_MMZA_Loop27:
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nA4, $02
	smpsLoop		$00, $03, SCD_MMZA_Loop27, Target
	dc.b nRst, $04, nAb4, $02, nRst, $04, nG4, $02
	dc.b nRst, $06, nF4, $02, nRst, nD4, nRst, $06
	dc.b nD4, $19, nRst, $61, nRst, $40, nRst, $40
	dc.b nRst, $06, nD3, $02, nRst, nC3, nRst, nD3
	dc.b nRst, $0A, nC3, $02, nRst, nD3, nRst, $26
	dc.b nA2, $02, nRst, nG2, nRst, nA2, nRst, $0A
	dc.b nG2, $02, nRst, nA2, nRst, $26, nD3, $02
	dc.b nRst, nC3, nRst, nD3, nRst, $0A, nC3, $02
	dc.b nRst, nD3, nRst, $26, nA2, $02, nRst, nG2
	dc.b nRst, nA2, nRst, $0A, nG2, $02, nRst, nA2
	dc.b nRst, $20
	smpsJump		SCD_MMZA_FM5, Target

SCD_MMZA_PSG1:
	smpsPSGvoice	$2B

SCD_MMZA_Loop28:
	dc.b nD4, $02, nE4, nF4, nC5, nE5, nF5, nA5
	dc.b nG5, nE4, nF4, nC5, nE4, nF4, nG4, nA4
	dc.b nF5, nAb4, nD4, nF4, nAb4, nD5, nAb4, nF4
	dc.b nD5, nF5, nAb5, nD5, nF5, nAb5, nD6, nF6
	dc.b nAb6
	smpsLoop		$00, $12, SCD_MMZA_Loop28, Target
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsJump		SCD_MMZA_PSG1, Target

SCD_MMZA_PSG2:
	smpsPSGvoice	$2B

SCD_MMZA_Loop29:
	dc.b nD5, $02, nE5, nF5, nC6, nE6, nF6, nA6
	dc.b nG6, nE5, nF5, nC6, nE5, nF5, nG5, nA5
	dc.b nF4, nAb3, nD3, nF3, nAb3, nD4, nAb3, nF3
	dc.b nD4, nF4, nAb4, nD6, nF6, nAb6, nD5, nF5
	dc.b nAb5
	smpsLoop		$00, $12, SCD_MMZA_Loop29, Target
	dc.b nRst, $40, nRst, $40, nRst, $40, nRst, $40
	smpsJump		SCD_MMZA_PSG2, Target

SCD_MMZA_PSG3:
	smpsPSGform	$E7

SCD_MMZA_Jump1:
	dc.b nRst, $40
	smpsPSGvoice	$29
	dc.b nAb6

SCD_MMZA_Loop30:
	dc.b $08
	smpsLoop		$00, $07, SCD_MMZA_Loop30, Target
	dc.b $02, $02, $02, $02, $02, nRst, nAb6, nAb6

SCD_MMZA_Loop33:
	dc.b nAb6, nRst, nAb6, nAb6, nAb6, nAb6, nRst, nAb6
	dc.b nAb6, nRst

SCD_MMZA_Loop31:
	dc.b nAb6, nAb6

SCD_MMZA_Loop32:
	dc.b nAb6, nRst, nAb6, nAb6
	smpsLoop		$00, $02, SCD_MMZA_Loop31, Target
	smpsLoop		$01, $02, SCD_MMZA_Loop32, Target
	smpsLoop		$02, $10, SCD_MMZA_Loop33, Target

SCD_MMZA_Loop34:
	dc.b nAb6, nRst, nAb6
	smpsLoop		$00, $03, SCD_MMZA_Loop34, Target
	dc.b nRst, nAb6, nAb6, nAb6, nRst, nAb6, nAb6
	smpsLoop		$01, $07, SCD_MMZA_Loop34, Target

SCD_MMZA_Loop35:
	dc.b nAb6, nRst, nAb6
	smpsLoop		$00, $03, SCD_MMZA_Loop35, Target
	dc.b nRst, nAb6, nAb6
	smpsJump		SCD_MMZA_Jump1, Target

SCD_MMZA_PWM1:
	dc.b nRst, $40, pAKick, $08, $08, $08, $08, $08
	dc.b $08, pASnare, $01, $01, $01, $01, $02, $02
	dc.b pAKick, pASnare, pASnare, nRst

SCD_MMZA_Loop37:
	dc.b pCrashCymb, $08, pASnare, $06, $02, pAKick, $06, $02
	dc.b pASnare, $08, pAKick, pASnare, $04, pAKick, $02, pASnare
	dc.b $04, $02, pAKick, $04, pASnare, pASnare, pAKick, $08
	dc.b pASnare, $06, $02, pAKick, $06, $02, pASnare, $08
	dc.b pAKick, pASnare, $04, pAKick, $02, pASnare, $04, $02
	dc.b pAKick, $04, pASnare, pASnare, pCrashCymb, $08, pASnare, $06
	dc.b $02, pAKick, $06, $02, pASnare, $08, pAKick, pASnare
	dc.b $04, pAKick, $02, pASnare, $04, $02, pAKick, $04
	dc.b pASnare, pASnare, pAKick, $08, pASnare, $06, $02, pAKick
	dc.b $06, $02, pASnare, $08

SCD_MMZA_Loop36:
	dc.b $02
	smpsLoop		$00, $10, SCD_MMZA_Loop36, Target
	smpsLoop		$01, $04, SCD_MMZA_Loop37, Target

SCD_MMZA_Loop38:
	dc.b pCrashCymb, $04, pAKick, pASnare, pAKick, $02, pASnare, nRst
	dc.b pASnare, pAKick, nRst, pASnare, nRst, pAKick, nRst, pAKick
	dc.b nRst, pAKick, nRst, pASnare, nRst, pAKick, pASnare, nRst
	dc.b pASnare, pAKick, nRst, pASnare, nRst, pASnare, pASnare, pAKick
	dc.b $04, $04, pASnare, pAKick, $02, pASnare, $04, $02
	dc.b pAKick, $04, pASnare, pAKick, pAKick, pAKick, pASnare, pAKick
	dc.b $02, pASnare, $04, $02, pAKick, $06, pASnare, $01
	dc.b $01, $02, $02
	smpsLoop		$00, $02, SCD_MMZA_Loop38, Target
	smpsJump		SCD_MMZA_PWM1, Target
	
SCD_MMZ_NOP:
	smpsStop

SCD_MMZA_Patches:

	; Patch $00
	dc.b	$3A
	dc.b	$71, $0C, $33, $01,	$1C, $16, $1D, $1F
	dc.b	$04, $06, $04, $08,	$00, $01, $03, $00
	dc.b	$16, $17, $16, $A6,	$25, $2F, $25, $FF
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$07, $03, $00, $00
	;smpsVcCoarseFreq	$01, $03, $0C, $01
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$1C, $1D, $16, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$04, $04, $06, $08
	;smpsVcDecayRate2	$01, $01, $01, $0A
	;smpsVcDecayLevel	$00, $03, $01, $00
	;smpsVcReleaseRate	$06, $06, $07, $06
	;smpsVcTotalLevel	$25, $25, $2F, $7F

	; Patch $01
	dc.b	$08
	dc.b	$0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	dc.b	$12, $0E, $0A, $0A,	$00, $04, $04, $03
	dc.b	$2F, $2F, $2F, $2F,	$24, $2D, $13, $80
	;smpsVcAlgorithm	$00
	;smpsVcFeedback	$01
	;smpsVcDetune	$00, $03, $07, $00
	;smpsVcCoarseFreq	$0A, $00, $00, $00
	;smpsVcRateScale	$00, $01, $00, $01
	;smpsVcAttackRate	$1F, $1F, $1F, $1F
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$12, $0A, $0E, $0A
	;smpsVcDecayRate2	$02, $02, $02, $02
	;smpsVcDecayLevel	$00, $04, $04, $03
	;smpsVcReleaseRate	$0F, $0F, $0F, $0F
	;smpsVcTotalLevel	$24, $13, $2D, $00

	; Patch $02
	dc.b	$38
	dc.b	$0A, $08, $01, $02,	$14, $14, $10, $0E
	dc.b	$05, $08, $02, $08,	$00, $00, $00, $00
	dc.b	$99, $09, $09, $19,	$28, $23, $24, $FF
	;smpsVcAlgorithm	$00
	;smpsVcFeedback	$07
	;smpsVcDetune	$00, $00, $00, $00
	;smpsVcCoarseFreq	$0A, $01, $08, $02
	;smpsVcRateScale	$00, $00, $00, $00
	;smpsVcAttackRate	$14, $10, $14, $0E
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$05, $02, $08, $08
	;smpsVcDecayRate2	$09, $00, $00, $01
	;smpsVcDecayLevel	$00, $00, $00, $00
	;smpsVcReleaseRate	$09, $09, $09, $09
	;smpsVcTotalLevel	$28, $24, $23, $7F

	; Patch $03
	dc.b	$3A
	dc.b	$64, $60, $60, $30,	$9D, $9D, $50, $4C
	dc.b	$04, $06, $04, $05,	$1F, $05, $01, $01
	dc.b	$A8, $25, $25, $55,	$7F, $06, $14, $80
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$06, $06, $06, $03
	;smpsVcCoarseFreq	$04, $00, $00, $00
	;smpsVcRateScale	$02, $01, $02, $01
	;smpsVcAttackRate	$1D, $10, $1D, $0C
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$04, $04, $06, $05
	;smpsVcDecayRate2	$0A, $02, $02, $05
	;smpsVcDecayLevel	$1F, $01, $05, $01
	;smpsVcReleaseRate	$08, $05, $05, $05
	;smpsVcTotalLevel	$7F, $14, $06, $00

	; Patch $04
	dc.b	$3A
	dc.b	$7F, $06, $22, $01,	$9F, $9F, $8E, $5A
	dc.b	$0F, $00, $00, $00,	$09, $00, $00, $00
	dc.b	$71, $83, $14, $05,	$14, $23, $1E, $FF
	;smpsVcAlgorithm	$02
	;smpsVcFeedback	$07
	;smpsVcDetune	$07, $02, $00, $00
	;smpsVcCoarseFreq	$0F, $02, $06, $01
	;smpsVcRateScale	$02, $02, $02, $01
	;smpsVcAttackRate	$1F, $0E, $1F, $1A
	;smpsVcAmpMod	$00, $00, $00, $00
	;smpsVcDecayRate1	$0F, $00, $00, $00
	;smpsVcDecayRate2	$07, $01, $08, $00
	;smpsVcDecayLevel	$09, $00, $00, $00
	;smpsVcReleaseRate	$01, $04, $03, $05
	;smpsVcTotalLevel	$14, $1E, $23, $7F
