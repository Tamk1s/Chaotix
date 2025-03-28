Target	EQU	$40000

PWMPitch	EQU	$00
PWMVol		EQU	$FF

	smpsHeaderVoice     	MDNV2_Uranus_Voices, Target
	smpsHeaderChan      	$06, $03
	smpsHeaderTempo     	$01, $00
	
	smpsHeaderFM        MDNV2_Uranus_FM1, Target, $00, $00
	smpsHeaderFM        MDNV2_Uranus_FM2, Target, $00, $00
	smpsHeaderFM        MDNV2_Uranus_FM3, Target, $00, $00
	smpsHeaderFM        MDNV2_Uranus_FM4, Target, $00, $00
	smpsHeaderFM        MDNV2_Uranus_FM5, Target, $00, $00
	smpsHeaderFM        MDNV2_Uranus_FM6, Target, $00, $00
	smpsHeaderPSG       MDNV2_Uranus_PSG1, Target, PSGDelta, $00, $00, $00
	smpsHeaderPSG       MDNV2_Uranus_PSG2, Target, PSGDelta, $00, $00, $00
	smpsHeaderPSG       MDNV2_Uranus_PSG3, Target, PSGDelta, $00, $00, $00
	smpsHeaderPWM		MDNV2_Uranus_PWM1, Target, PWMPitch, PWMVol
	smpsHeaderPWM		MDNV2_Uranus_PWM2, Target, PWMPitch, PWMVol
	smpsHeaderPWM		MDNV2_Uranus_PWM3, Target, PWMPitch, PWMVol
	smpsHeaderPWM		MDNV2_Uranus_PWM4, Target, PWMPitch, PWMVol

; FM1 Data
MDNV2_Uranus_FM1:
	smpsFMvoice        $00
	smpsAlterVol        $09
	smpsPan             panRight, $00
	dc.b	nE2, $0C, nRst, $04, nE2, $05, nRst, $04, nB2, nRst, nE2, nRst
	dc.b	$05, nC3, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nE2, $0C
	dc.b	nRst, $05, nE2, $04, nRst, nB2, nRst, nE2, $05, nRst, $04, nC3
	dc.b	nRst, nB2, nRst, $05, nA2, $04, nRst, nE2, $0D, nRst, $04, nE2
	dc.b	nRst, nB2, $05, nRst, $04, nE2, nRst, nC3, nRst, $05, nB2, $04
	dc.b	nRst, nA2, nRst, nG2, $0D, nRst, $04, nA2, nRst, $05, nG2, $04
	dc.b	nRst, nFs2, $0D, nRst, $04, nG2, nRst, nFs2, $05, nRst, $04, nE2
	dc.b	$0C, nRst, $05, nE2, $04, nRst, nB2, nRst, nE2, $05, nRst, $04
	dc.b	nC3, nRst, nB2, nRst, $05, nA2, $04, nRst, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3, nRst, $05, nB2
	dc.b	$04, nRst, nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, $05, nB2
	dc.b	$04, nRst, nE2, nRst, nC3, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b	$05, nE2, $0C, nRst, $04, nFs2, $05, nRst, $04, nG2, nRst, nA2
	dc.b	$05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $04, nRst, nE2
	dc.b	$0D, nRst, $04, nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3
	dc.b	nRst, nB2, $05, nRst, $04, nA2, nRst, nE2, $0D, nRst, $04, nE2
	dc.b	nRst, $05, nB2, $04, nRst, nE2, nRst, nC3, $05, nRst, $04, nB2
	dc.b	nRst, nA2, nRst, $05, nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b	nB2, nRst, nE2, nRst, $05, nC3, $04, nRst, nB2, nRst, nA2, $05
	dc.b	nRst, $04, nE2, $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05, nA2
	dc.b	$04, nRst, nB2, nRst, nA2, $05, nRst, $04, nG2, nRst, nFs2, nRst
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop46:
	dc.b	nRst, nE2, nRst, $05

MDNV2_Uranus_Loop47:
	dc.b	nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop46, Target
	dc.b	nRst, nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop47, Target
	dc.b	nE2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop48:
	dc.b	nD2, nRst, nD2, $05

MDNV2_Uranus_Loop49:
	dc.b	nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop48, Target
	dc.b	nD2, nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop49, Target
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop4A:
	dc.b	nRst, nC2, nRst, $05

MDNV2_Uranus_Loop4B:
	dc.b	nC2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop4A, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop4B, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2

MDNV2_Uranus_Loop4C:
	dc.b	nRst, nB1, $05

MDNV2_Uranus_Loop4D:
	dc.b	nRst, $04, nB1
	smpsLoop            $00, $02, MDNV2_Uranus_Loop4C, Target
	dc.b	nRst, nB1, nRst, $05, nB1, $04
	smpsLoop            $01, $03, MDNV2_Uranus_Loop4D, Target

MDNV2_Uranus_Loop4E:
	dc.b	nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b	$04, nE2
	smpsLoop            $00, $03, MDNV2_Uranus_Loop4E, Target
	dc.b	nRst, nE2, $05

MDNV2_Uranus_Loop4F:
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b	nD2, $05
	smpsLoop            $00, $03, MDNV2_Uranus_Loop4F, Target
	dc.b	nRst, $04, nD2, nRst, nC2, $05, nRst, $04, nC2, nRst, nC2, nRst
	dc.b	$05, nC2, $04, nRst, nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b	nC2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst, $04
	dc.b	nD2

MDNV2_Uranus_Loop50:
	dc.b	nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop50, Target

MDNV2_Uranus_Loop51:
	dc.b	nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2, nRst, $05
	dc.b	nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop51, Target
	;!@ dc.b	nRst
	dc.b	nRst, $04

MDNV2_Uranus_Loop52:
	;!@ dc.b	nE2, nRst, nE2, $05, nRst, $04
	dc.b	nE2, $04, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop52, Target
	;!@ dc.b	nE2, nRst, nE2
	dc.b	nE2, $04, nRst, nE2

MDNV2_Uranus_Loop53:
	dc.b	nRst, $05, nC2, $04, nRst, nC2, nRst, nC2, $05, nRst, $04, nC2
	dc.b	nRst, nC2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop53, Target

MDNV2_Uranus_Loop54:
	dc.b	nRst, $05, nC2, $04, nRst, nC2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop54, Target
	dc.b	nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop55:
	dc.b	nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst
	dc.b	$04, nD2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop55, Target
	dc.b	nRst, nD2, $05, nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop56:
	dc.b	nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b	$04, nE2, nRst, nE2, nRst, $05, nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop56, Target
	dc.b	nRst, nE2, nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05
	dc.b	nB1, $04, nRst

MDNV2_Uranus_Loop57:
	dc.b	nB1, nRst, nB1, $05

MDNV2_Uranus_Loop58:
	dc.b	nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop57, Target
	dc.b	nB1, nRst, nB1, nRst, $05, nB1, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop58, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop59:
	dc.b	nRst, nC2, nRst, $05

MDNV2_Uranus_Loop5A:
	dc.b	nC2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop59, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop5A, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop5B:
	dc.b	nD2, nRst, nD2, $05

MDNV2_Uranus_Loop5C:
	dc.b	nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop5B, Target
	dc.b	nD2, nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop5C, Target
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop5D:
	dc.b	nRst, nB1, nRst, $05

MDNV2_Uranus_Loop5E:
	dc.b	nB1, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop5D, Target
	dc.b	nRst, nB1, nRst, nB1, $05, nRst, $04
	smpsLoop            $01, $03, MDNV2_Uranus_Loop5E, Target
	dc.b	nB1, $08, nRst, $11, nB1, $09, nRst, $10, nB1, $09, nRst, $08
	dc.b	nB1, $09, nRst, $19, nB1, $04, nRst, nB1, nRst, $05, nB1, $04
	dc.b	nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b	$04, nE2, nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2
	dc.b	$05, nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop5F:
	dc.b	nD2, nRst, nD2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop5F, Target
	dc.b	nD2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst, nC2, $05
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst
	dc.b	nD2, $05, nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop60:
	dc.b	nD2, nRst, nD2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop60, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst, nC2, $05
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nD2, nRst
	dc.b	nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop61:
	dc.b	nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop61, Target
	dc.b	nRst, nD2, nRst, nG2, $05, nRst, $04, nG2, nRst, nG2, nRst, $05
	dc.b	nG2, $04, nRst, nFs2, nRst, nFs2, $05, nRst, $04, nFs2, nRst, nFs2
	dc.b	nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2
	dc.b	nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05, nB1, $04
	dc.b	nRst, nA1, nRst, nA1, $05, nRst, $04, nA1, nRst, nA1, nRst, $05
	dc.b	nA1, $04, nRst, nA1, nRst, nA1, $05, nRst, $04, nA1

MDNV2_Uranus_Loop62:
	dc.b	nRst, nB1, nRst, $05, nB1, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop62, Target
	dc.b	nRst, nB1, nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05
	dc.b	nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nD2
	dc.b	nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05

MDNV2_Uranus_Loop63:
	dc.b	nRst, $04, nC2, nRst, nC2, $05, nRst, $04, nC2, nRst, nC2, nRst
	dc.b	$05, nC2, $04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop63, Target
	dc.b	nRst, nC2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst
	dc.b	$04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b	$05, nRst, $04, nE2, nRst, nE2, nRst, $05, nE2, $04, nRst

MDNV2_Uranus_Loop64:
	dc.b	nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop64, Target
	dc.b	nE2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b	nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop65:
	dc.b	nRst, nC2, nRst, $05, nC2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop65, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04, nD2, nRst, $0D
	smpsAlterVol        $29
	dc.b	smpsNoAttack, nRst, $10
	smpsAlterVol        $D5
	dc.b	nD2, $05, nRst, $04, nD2, nRst, nD2, nRst, $05, nE2, $0C, nRst
	dc.b	$04, nE2, $05, nRst, $04, nB2, nRst, nE2, $05, nRst, $04, nC3
	dc.b	nRst, nB2, nRst, $05, nA2, $04, nRst, nE2, $0D, nRst, $04, nE2
	dc.b	nRst, nB2, nRst, $05, nE2, $04, nRst, nC3, nRst, nB2, $05, nRst
	dc.b	$04, nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, $05, nB2, $04
	dc.b	nRst, nE2, nRst, nC3, $05, nRst, $04, nB2, nRst, nA2, nRst, $05
	dc.b	nG2, $0C, nRst, $04, nA2, $05, nRst, $04, nG2, nRst, nFs2, $0D
	dc.b	nRst, $04, nG2, nRst, nFs2, $05, nRst, $04, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3, nRst, nB2, $05
	dc.b	nRst, $04, nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, nB2, $05
	dc.b	nRst, $04, nE2, nRst, nC3, nRst, $05, nB2, $04, nRst, nA2, nRst
	dc.b	$05, nE2, $0C, nRst, $04, nE2, $05, nRst, $04, nB2, nRst, nE2
	dc.b	nRst, $05, nC3, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nE2
	dc.b	$0C, nRst, $05, nFs2, $04, nRst, nG2, nRst, nA2, $05, nRst, $04
	dc.b	nB2, nRst, nA2, nRst, $05, nG2, $04, nRst, nFs2, nRst, $05
	smpsAlterVol        $02

MDNV2_Uranus_Loop66:
	dc.b	nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2
	dc.b	nRst, $05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop66, Target
	dc.b	nE2, $04, nRst

MDNV2_Uranus_Loop67:
	dc.b	nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop67, Target
	dc.b	nE2

MDNV2_Uranus_Loop68:
	dc.b	nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst
	dc.b	$04, nD2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop68, Target

MDNV2_Uranus_Loop69:
	dc.b	nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop69, Target
	dc.b	nRst, nD2, nRst, nD2, $05

MDNV2_Uranus_Loop6A:
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst
	dc.b	nC2, $05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop6A, Target
	dc.b	nRst, $04, nC2, nRst, nC2, $05, nRst, $04, nC2, nRst, nC2, nRst
	dc.b	$05, nC2, $04, nRst, nC2

MDNV2_Uranus_Loop6B:
	dc.b	nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05, nB1, $04
	dc.b	nRst, nB1
	smpsLoop            $00, $02, MDNV2_Uranus_Loop6B, Target
	dc.b	nRst, $05, nB1, $04, nRst, nB1, nRst, nB1, $05, nRst, $04, nB1
	dc.b	nRst, nB1, nRst, $05, nB1, $04, nRst

MDNV2_Uranus_Loop6C:
	dc.b	nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2, nRst, $05, nE2
	dc.b	$04, nRst, nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop6C, Target
	dc.b	nE2, nRst, nE2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05
	dc.b	nRst, $04, nD2

MDNV2_Uranus_Loop6D:
	dc.b	nRst, nD2, nRst, $05

MDNV2_Uranus_Loop6E:
	dc.b	nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop6D, Target
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop6E, Target
	dc.b	nD2, nRst, nC2, nRst, $05, nC2, $04, nRst

MDNV2_Uranus_Loop6F:
	dc.b	nC2, nRst, nC2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop6F, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b	nD2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop70:
	dc.b	nRst, nE2, nRst, $05

MDNV2_Uranus_Loop71:
	dc.b	nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop70, Target
	dc.b	nRst, nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop71, Target
	dc.b	nE2, nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $7F
	dc.b	smpsNoAttack, $08, nC2, $7F, smpsNoAttack, $08, nG2, $43, nFs2, nB2, $44, nRst
	dc.b	$7F, nRst, $4B
	smpsStop

; FM2 Data
MDNV2_Uranus_FM2:
	smpsFMvoice        $01
	smpsAlterVol        $0B
	smpsPan             panLeft, $00
	dc.b	nE2, $0C, nRst, $04, nE2, $05, nRst, $04, nB2, nRst, nE2, nRst
	dc.b	$05, nC3, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nE2, $0C
	dc.b	nRst, $05, nE2, $04, nRst, nB2, nRst, nE2, $05, nRst, $04, nC3
	dc.b	nRst, nB2, nRst, $05, nA2, $04, nRst, nE2, $0D, nRst, $04, nE2
	dc.b	nRst, nB2, $05, nRst, $04, nE2, nRst, nC3, nRst, $05, nB2, $04
	dc.b	nRst, nA2, nRst, nG2, $0D, nRst, $04, nA2, nRst, $05, nG2, $04
	dc.b	nRst, nFs2, $0D, nRst, $04, nG2, nRst, nFs2, $05, nRst, $04, nE2
	dc.b	$0C, nRst, $05, nE2, $04, nRst, nB2, nRst, nE2, $05, nRst, $04
	dc.b	nC3, nRst, nB2, nRst, $05, nA2, $04, nRst, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3, nRst, $05, nB2
	dc.b	$04, nRst, nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, $05, nB2
	dc.b	$04, nRst, nE2, nRst, nC3, $05, nRst, $04, nB2, nRst, nA2, nRst
	dc.b	$05, nE2, $0C, nRst, $04, nFs2, $05, nRst, $04, nG2, nRst, nA2
	dc.b	$05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $04, nRst, nE2
	dc.b	$0D, nRst, $04, nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3
	dc.b	nRst, nB2, $05, nRst, $04, nA2, nRst, nE2, $0D, nRst, $04, nE2
	dc.b	nRst, $05, nB2, $04, nRst, nE2, nRst, nC3, $05, nRst, $04, nB2
	dc.b	nRst, nA2, nRst, $05, nE2, $0C, nRst, $04, nE2, $05, nRst, $04
	dc.b	nB2, nRst, nE2, nRst, $05, nC3, $04, nRst, nB2, nRst, nA2, $05
	dc.b	nRst, $04, nE2, $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05, nA2
	dc.b	$04, nRst, nB2, nRst, nA2, $05, nRst, $04, nG2, nRst, nFs2, nRst
	dc.b	$05
	smpsAlterVol        $02
	dc.b	nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop1A:
	dc.b	nRst, nE2, nRst, $05

MDNV2_Uranus_Loop1B:
	dc.b	nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop1A, Target
	dc.b	nRst, nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop1B, Target
	dc.b	nE2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop1C:
	dc.b	nD2, nRst, nD2, $05

MDNV2_Uranus_Loop1D:
	dc.b	nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop1C, Target
	dc.b	nD2, nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop1D, Target
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop1E:
	dc.b	nRst, nC2, nRst, $05

MDNV2_Uranus_Loop1F:
	dc.b	nC2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop1E, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop1F, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2

MDNV2_Uranus_Loop20:
	dc.b	nRst, nB1, $05

MDNV2_Uranus_Loop21:
	dc.b	nRst, $04, nB1
	smpsLoop            $00, $02, MDNV2_Uranus_Loop20, Target
	dc.b	nRst, nB1, nRst, $05, nB1, $04
	smpsLoop            $01, $03, MDNV2_Uranus_Loop21, Target

MDNV2_Uranus_Loop22:
	dc.b	nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b	$04, nE2
	smpsLoop            $00, $03, MDNV2_Uranus_Loop22, Target
	dc.b	nRst, nE2, $05

MDNV2_Uranus_Loop23:
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b	nD2, $05
	smpsLoop            $00, $03, MDNV2_Uranus_Loop23, Target
	dc.b	nRst, $04, nD2, nRst, nC2, $05, nRst, $04, nC2, nRst, nC2, nRst
	dc.b	$05, nC2, $04, nRst, nC2, nRst, nC2, $05, nRst, $04, nC2, nRst
	dc.b	nC2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst, $04
	dc.b	nD2

MDNV2_Uranus_Loop24:
	dc.b	nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop24, Target

MDNV2_Uranus_Loop25:
	dc.b	nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2, nRst, $05
	dc.b	nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop25, Target
	dc.b	nRst

MDNV2_Uranus_Loop26:
	dc.b	nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop26, Target
	dc.b	nE2, nRst, nE2

MDNV2_Uranus_Loop27:
	dc.b	nRst, $05, nC2, $04, nRst, nC2, nRst, nC2, $05, nRst, $04, nC2
	dc.b	nRst, nC2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop27, Target

MDNV2_Uranus_Loop28:
	dc.b	nRst, $05, nC2, $04, nRst, nC2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop28, Target
	dc.b	nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop29:
	dc.b	nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst
	dc.b	$04, nD2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop29, Target
	dc.b	nRst, nD2, $05, nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop2A:
	dc.b	nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst
	dc.b	$04, nE2, nRst, nE2, nRst, $05, nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop2A, Target
	dc.b	nRst, nE2, nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05
	dc.b	nB1, $04, nRst

MDNV2_Uranus_Loop2B:
	dc.b	nB1, nRst, nB1, $05

MDNV2_Uranus_Loop2C:
	dc.b	nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop2B, Target
	dc.b	nB1, nRst, nB1, nRst, $05, nB1, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop2C, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop2D:
	dc.b	nRst, nC2, nRst, $05

MDNV2_Uranus_Loop2E:
	dc.b	nC2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop2D, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop2E, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop2F:
	dc.b	nD2, nRst, nD2, $05

MDNV2_Uranus_Loop30:
	dc.b	nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop2F, Target
	dc.b	nD2, nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop30, Target
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop31:
	dc.b	nRst, nB1, nRst, $05

MDNV2_Uranus_Loop32:
	dc.b	nB1, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop31, Target
	dc.b	nRst, nB1, nRst, nB1, $05, nRst, $04
	smpsLoop            $01, $03, MDNV2_Uranus_Loop32, Target
	dc.b	nB1, $08
	smpsAlterVol        $28
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $D6
	dc.b	$09
	smpsAlterVol        $2A
	dc.b	smpsNoAttack, $10
	smpsAlterVol        $D6
	dc.b	$09
	smpsAlterVol        $2A
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $D6
	dc.b	$09
	smpsAlterVol        $2A
	dc.b	smpsNoAttack, $19
	smpsAlterVol        $D6
	dc.b	$04, nRst, nB1, nRst, $05, nB1, $04, nRst, nE2, nRst, $05, nE2
	dc.b	$04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2, nRst
	dc.b	$05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nD2, nRst
	dc.b	nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop33:
	dc.b	nD2, nRst, nD2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop33, Target
	dc.b	nD2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst, nC2, $05
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst
	dc.b	nD2, $05, nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst

MDNV2_Uranus_Loop34:
	dc.b	nD2, nRst, nD2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop34, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst, nC2, $05
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nD2, nRst
	dc.b	nD2, $05, nRst, $04, nD2

MDNV2_Uranus_Loop35:
	dc.b	nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop35, Target
	dc.b	nRst, nD2, nRst, nG2, $05, nRst, $04, nG2, nRst, nG2, nRst, $05
	dc.b	nG2, $04, nRst, nFs2, nRst, nFs2, $05, nRst, $04, nFs2, nRst, nFs2
	dc.b	nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2
	dc.b	nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05, nB1, $04
	dc.b	nRst, nA1, nRst, nA1, $05, nRst, $04, nA1, nRst, nA1, nRst, $05
	dc.b	nA1, $04, nRst, nA1, nRst, nA1, $05, nRst, $04, nA1

MDNV2_Uranus_Loop36:
	dc.b	nRst, nB1, nRst, $05, nB1, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop36, Target
	dc.b	nRst, nB1, nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05
	dc.b	nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nD2
	dc.b	nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05

MDNV2_Uranus_Loop37:
	dc.b	nRst, $04, nC2, nRst, nC2, $05, nRst, $04, nC2, nRst, nC2, nRst
	dc.b	$05, nC2, $04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop37, Target
	dc.b	nRst, nC2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst
	dc.b	$04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2
	dc.b	$05, nRst, $04, nE2, nRst, nE2, nRst, $05, nE2, $04, nRst

MDNV2_Uranus_Loop38:
	dc.b	nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop38, Target
	dc.b	nE2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b	nC2, $05, nRst, $04, nC2

MDNV2_Uranus_Loop39:
	dc.b	nRst, nC2, nRst, $05, nC2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop39, Target
	dc.b	nRst, nC2, nRst, nC2, $05, nRst, $04, nD2, nRst, $1D, nD2, $05
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nE2, $0C, nRst, $04, nE2
	dc.b	$05, nRst, $04, nB2, nRst, nE2, $05, nRst, $04, nC3, nRst, nB2
	dc.b	nRst, $05, nA2, $04, nRst, nE2, $0D, nRst, $04, nE2, nRst, nB2
	dc.b	nRst, $05, nE2, $04, nRst, nC3, nRst, nB2, $05, nRst, $04, nA2
	dc.b	nRst, nE2, $0D, nRst, $04, nE2, nRst, $05, nB2, $04, nRst, nE2
	dc.b	nRst, nC3, $05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $0C
	dc.b	nRst, $04, nA2, $05, nRst, $04, nG2, nRst, nFs2, $0D, nRst, $04
	dc.b	nG2, nRst, nFs2, $05, nRst, $04, nE2, $0D, nRst, $04, nE2, nRst
	dc.b	nB2, nRst, $05, nE2, $04, nRst, nC3, nRst, nB2, $05, nRst, $04
	dc.b	nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, nB2, $05, nRst, $04
	dc.b	nE2, nRst, nC3, nRst, $05, nB2, $04, nRst, nA2, nRst, $05, nE2
	dc.b	$0C, nRst, $04, nE2, $05, nRst, $04, nB2, nRst, nE2, nRst, $05
	dc.b	nC3, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nE2, $0C, nRst
	dc.b	$05, nFs2, $04, nRst, nG2, nRst, nA2, $05, nRst, $04, nB2, nRst
	dc.b	nA2, nRst, $05, nG2, $04, nRst, nFs2, nRst, $05
	smpsAlterVol        $02

MDNV2_Uranus_Loop3A:
	dc.b	nE2, $04, nRst, nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2
	dc.b	nRst, $05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop3A, Target
	dc.b	nE2, $04, nRst

MDNV2_Uranus_Loop3B:
	dc.b	nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop3B, Target
	dc.b	nE2

MDNV2_Uranus_Loop3C:
	dc.b	nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05, nRst
	dc.b	$04, nD2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop3C, Target

MDNV2_Uranus_Loop3D:
	dc.b	nRst, nD2, nRst, $05, nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop3D, Target
	dc.b	nRst, nD2, nRst, nD2, $05

MDNV2_Uranus_Loop3E:
	dc.b	nRst, $04, nC2, nRst, nC2, nRst, $05, nC2, $04, nRst, nC2, nRst
	dc.b	nC2, $05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop3E, Target
	dc.b	nRst, $04, nC2, nRst, nC2, $05, nRst, $04, nC2, nRst, nC2, nRst
	dc.b	$05, nC2, $04, nRst, nC2

MDNV2_Uranus_Loop3F:
	dc.b	nRst, nB1, $05, nRst, $04, nB1, nRst, nB1, nRst, $05, nB1, $04
	dc.b	nRst, nB1
	smpsLoop            $00, $02, MDNV2_Uranus_Loop3F, Target
	dc.b	nRst, $05, nB1, $04, nRst, nB1, nRst, nB1, $05, nRst, $04, nB1
	dc.b	nRst, nB1, nRst, $05, nB1, $04, nRst

MDNV2_Uranus_Loop40:
	dc.b	nE2, nRst, nE2, $05, nRst, $04, nE2, nRst, nE2, nRst, $05, nE2
	dc.b	$04, nRst, nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop40, Target
	dc.b	nE2, nRst, nE2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05
	dc.b	nRst, $04, nD2

MDNV2_Uranus_Loop41:
	dc.b	nRst, nD2, nRst, $05

MDNV2_Uranus_Loop42:
	dc.b	nD2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop41, Target
	dc.b	nRst, nD2, nRst, nD2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop42, Target
	dc.b	nD2, nRst, nC2, nRst, $05, nC2, $04, nRst

MDNV2_Uranus_Loop43:
	dc.b	nC2, nRst, nC2, $05, nRst, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop43, Target
	dc.b	nC2, nRst, nC2, nRst, $05, nD2, $04, nRst, nD2, nRst, nD2, $05
	dc.b	nRst, $04, nD2, nRst, nD2, nRst, $05, nD2, $04, nRst, nD2, nRst
	dc.b	nD2, $05, nRst, $04, nE2

MDNV2_Uranus_Loop44:
	dc.b	nRst, nE2, nRst, $05

MDNV2_Uranus_Loop45:
	dc.b	nE2, $04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop44, Target
	dc.b	nRst, nE2, nRst, nE2, $05, nRst, $04
	smpsLoop            $01, $02, MDNV2_Uranus_Loop45, Target
	dc.b	nE2, nRst, nE2, nRst, $05, nE2, $04, nRst, nE2, nRst, nE2, $7F
	dc.b	smpsNoAttack, $08, nC2, $7F, smpsNoAttack, $08, nG2, $43, nFs2, nB2, $44, nRst
	dc.b	$7F, nRst, $4B
	smpsStop

; FM3 Data
MDNV2_Uranus_FM3:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsFMvoice        $00
	smpsAlterVol        $12
	smpsPan             panLeft, $00
	dc.b	nE2, $0C, nRst, $04, nE2, $05, nRst, $04, nB2, nRst, nE2, nRst
	dc.b	$05, nC3, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nE2, $0D
	dc.b	nRst, $04, nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3, nRst
	dc.b	nB2, $05, nRst, $04, nA2, nRst
	smpsFMvoice        $01
	smpsAlterVol        $02
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, nB2, $05, nRst, $04, nE2, nRst
	dc.b	nC3, nRst, $05, nB2, $04, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b	$04, nA2, $05, nRst, $04, nG2, nRst, nFs2, $0D, nRst, $04, nG2
	dc.b	nRst, nFs2, $05, nRst, $04
	smpsFMvoice        $00
	smpsAlterVol        $FE
	dc.b	nE2, $0C, nRst, $05, nE2, $04, nRst, nB2, nRst, nE2, $05, nRst
	dc.b	$04, nC3, nRst, nB2, $05, nRst, $04, nA2, nRst, nE2, $0D, nRst
	dc.b	$04, nE2, nRst, nB2, $05, nRst, $04, nE2, nRst, nC3, nRst, $05
	dc.b	nB2, $04, nRst, nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, $05
	dc.b	nB2, $04, nRst, nE2, nRst, $05, nC3, $04, nRst, nB2, nRst, nA2
	dc.b	$05, nRst, $04, nE2, $0C, nRst, $05, nFs2, $04, nRst, nG2, nRst
	dc.b	nA2, $05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $04, nRst
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, nB2, $05, nRst, $04, nE2, nRst
	dc.b	nC3, nRst, $05, nB2, $04, nRst, nA2, nRst, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, $05, nB2, $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b	nB2, nRst, nA2, nRst, $05, nE2, $0C, nRst, $05, nE2, $04, nRst
	dc.b	nB2, nRst, nE2, $05, nRst, $04, nC3, nRst, nB2, nRst, $05, nA2
	dc.b	$04, nRst, nE2, $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05, nA2
	dc.b	$04, nRst, nB2, nRst, nA2, $05, nRst, $04, nG2, nRst, nFs2, $05
	dc.b	nRst, $02
	smpsFMvoice        $03
	smpsAlterVol        $F7
	smpsPan             panCenter, $00
	dc.b	nE3, $10, nFs3, $09, nG3, $11, nA3, $08, nB3, $0A, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA3, $11, nB3, $10, nFs4, $11
	smpsAlterNote       $0C
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$08, nG4, nFs4, $11, nE4, $09
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb4, $02, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nCs4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nD4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$02
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nD4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nC4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nB3
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01
	smpsAlterVol        $F9
	smpsAlterNote       $00
	dc.b	$11
	smpsAlterNote       $14
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0D, nB3, $08, $11, nA3, $08, nB3, $0C, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA3, $11, nB3, nC4, $10, nB3, $11, nC4, $09, nB3, $11, nBb3
	dc.b	$08, nB3, $12, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE3, $11, nFs3, $08, nG3, $11, nA3, $09, nB3, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA3, $11, nB3, nFs4
	smpsAlterNote       $0C
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$09, nG4, $08, nFs4, $11, nE4, $08
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb4, $02, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nCs4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nD4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nD4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nC4
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nB3
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01
	smpsAlterVol        $F9
	smpsAlterNote       $00
	dc.b	$11, nFs4, $22, nB3, nD4, $21, nB3, $15, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA3, $02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nFs3, $03
	smpsAlterNote       $00
	dc.b	nE4, $1A, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC4, $02, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD4, $11, nE4, nB4

MDNV2_Uranus_Loop15:
	smpsAlterNote       $20
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$16, nB4, $19, nE4, $11
	smpsLoop            $00, $02, MDNV2_Uranus_Loop15, Target
	smpsAlterNote       $20
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$16, nB4, $1A, nE4, $10, nD4, $1A, nE4, $19, nG4, $11, nFs4
	dc.b	$19, nG4, nFs4, $04, nG4, $05, nFs4, $08, nD4, $19, nB3, $1A
	dc.b	nD4, $10, nE4, $1B, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs4, smpsNoAttack, nC4, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD4, $10, nE4, $11, nB4
	smpsAlterNote       $20
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$16, nB4, $1A, nE4, $10
	smpsAlterNote       $20
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$17, nB4, $19, nE4, $11
	smpsAlterNote       $20
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$16, nB4, $19, nE4, $11, nD4, $19, nE4, nG4, $11, nFs4, $1B
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, $11, nG4, nA4
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$2C, nG5, $11, nFs5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $24
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$03
	smpsAlterNote       $00
	dc.b	nB4, $08, nD5, $09, nE5, $08, nB5, $0A, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $11, nB5, $09, nC6, $10, nB5, $0E, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $10, nB5, $09, nC6, $11, nB5, $0D, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $11, nB5, $08, nC6, $11, nB5, $0E, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $11, nG5, nFs5, $08, nE5, $0E, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $10, nE5, $09, nB5, $11, nA5, $0D, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nA5
	smpsAlterNote       $00
	dc.b	nB5, $11, nD5, nC5, $10, nB4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nBb4, $02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD4, $03
	smpsAlterNote       $00
	dc.b	nG5, $19, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nC5, $05
	smpsAlterNote       $00
	dc.b	nA5, $08, nA5, nRst, $09, nB5, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $11, nC6, smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $DD
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $DF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $23
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $11, nFs5, $1A, nG5, $19, nA5, $11, nG5, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nAb5
	smpsAlterNote       $00
	dc.b	nA5, $09, $10, nB5, $1B, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $22
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $DF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $11, nE5, nD5, nE5, nB5, nA5, $10, nB5, $11, nE5, nD5
	dc.b	$08, nE5, $7F, nD5, $10, nE5, $11, nD5, nE5, nB5, nA5, $19
	dc.b	nRst, $08, nD6, $09, $08, $09, nE6, $26

MDNV2_Uranus_Loop16:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, MDNV2_Uranus_Loop16, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

MDNV2_Uranus_Loop17:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, MDNV2_Uranus_Loop17, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nE6
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

MDNV2_Uranus_Loop18:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, MDNV2_Uranus_Loop18, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

MDNV2_Uranus_Loop19:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop19, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsFMvoice        $01
	smpsAlterVol        $F4
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, $05, nB2, $04, nRst, nE2, nRst
	dc.b	nC3, $05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b	$05, nA2, $04, nRst, nG2, nRst, nFs2, $0D, nRst, $04, nG2, nRst
	dc.b	$05, nFs2, $04, nRst
	smpsFMvoice        $00
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, nB2, nRst, $05, nE2, $04, nRst
	dc.b	nC3, nRst, nB2, $05, nRst, $04, nA2, nRst, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, $05, nB2, $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b	nB2, nRst, nA2, nRst, $05, nE2, $0C, nRst, $04, nE2, $05, nRst
	dc.b	$04, nB2, nRst, nE2, nRst, $05, nC3, $04, nRst, nB2, nRst, $05
	dc.b	nA2, $04, nRst, nE2, $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05
	dc.b	nA2, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nG2, nRst, nFs2
	dc.b	nRst, $03
	smpsFMvoice        $03
	smpsAlterVol        $F7
	smpsPan             panCenter, $00
	dc.b	nD5, $10, nB4, $09, nG5, $11, nFs5, $10, nD5, $0A, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nD5
	smpsAlterNote       $00
	dc.b	nB4, $10, nA4, $11, nB4, nD5, nB4, $08, nG5, $11, nFs5, nD5
	dc.b	$0A, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nD5
	smpsAlterNote       $00
	dc.b	nB4, $11, nA4, nB4, nE5, $12, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $12, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $12, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $12, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $1A, nB4, $19
	smpsAlterNote       $14
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$1C, nB4, $10, nBb4, $11, nB4, nD5, nB4, $08, nG5, $11, nFs5
	dc.b	nD5, $09, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, $02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nD5
	smpsAlterNote       $00
	dc.b	nB4, $11, nA4, nB4, nD5, $10, nB4, $09, nG5, $11, nFs5, nD5
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nD5, $02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nD5
	smpsAlterNote       $00
	dc.b	nB4, $11, nA4, $10, nB4, $11, nG5, $0B, nA5, $0C, nG5, $0B
	dc.b	nFs5, $0A, nG5, $0D, nFs5, $0B, nE5, $0A, nFs5, $0D, nE5, $0A
	dc.b	nD5, $0B, nB4, $0A, nD5, $0D
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$61, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, nG4, $11, nFs4, $09, nE4, $11, nFs4, $08, nG4, $22, nFs4
	dc.b	$10, nE4, $11, nFs4, nG4, nFs4, $08, nE4, $11, nFs4, $09, nG4
	dc.b	$21, nD4, $11, nG4, nD5, nD5, $32, nC5, $09, nB4, $08, nA4
	dc.b	$22, nC5, $19, nB4, $32, nC5, $11, nB4, $09, nRst, $7F, nRst
	dc.b	$4B
	smpsStop

; FM4 Data
MDNV2_Uranus_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsFMvoice        $01
	smpsAlterVol        $14
	smpsPan             panRight, $00
	dc.b	nE2, $0C, nRst, $04, nE2, $05, nRst, $04, nB2, nRst, nE2, nRst
	dc.b	$05, nC3, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nE2, $0D
	dc.b	nRst, $04, nE2, nRst, nB2, nRst, $05, nE2, $04, nRst, nC3, nRst
	dc.b	nB2, $05, nRst, $04, nA2, nRst
	smpsFMvoice        $00
	smpsAlterVol        $FE
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, nB2, $05, nRst, $04, nE2, nRst
	dc.b	nC3, nRst, $05, nB2, $04, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b	$04, nA2, $05, nRst, $04, nG2, nRst, nFs2, $0D, nRst, $04, nG2
	dc.b	nRst, nFs2, $05, nRst, $04
	smpsFMvoice        $01
	smpsAlterVol        $02
	dc.b	nE2, $0C, nRst, $05, nE2, $04, nRst, nB2, nRst, nE2, $05, nRst
	dc.b	$04, nC3, nRst, nB2, $05, nRst, $04, nA2, nRst, nE2, $0D, nRst
	dc.b	$04, nE2, nRst, nB2, $05, nRst, $04, nE2, nRst, nC3, nRst, $05
	dc.b	nB2, $04, nRst, nA2, nRst, nE2, $0D, nRst, $04, nE2, nRst, $05
	dc.b	nB2, $04, nRst, nE2, nRst, $05, nC3, $04, nRst, nB2, nRst, nA2
	dc.b	$05, nRst, $04, nE2, $0C, nRst, $05, nFs2, $04, nRst, nG2, nRst
	dc.b	nA2, $05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $04, nRst
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, nB2, $05, nRst, $04, nE2, nRst
	dc.b	nC3, nRst, $05, nB2, $04, nRst, nA2, nRst, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, $05, nB2, $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b	nB2, nRst, nA2, nRst, $05, nE2, $0C, nRst, $05, nE2, $04, nRst
	dc.b	nB2, nRst, nE2, $05, nRst, $04, nC3, nRst, nB2, nRst, $05, nA2
	dc.b	$04, nRst, nE2, $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05, nA2
	dc.b	$04, nRst, nB2, nRst, nA2, $05, nRst, $04, nG2, nRst, nFs2, $05
	smpsAlterVol        $21

MDNV2_Uranus_Loop0F:
	dc.b	smpsNoAttack, $7F
	smpsLoop            $00, $10, MDNV2_Uranus_Loop0F, Target
	dc.b	smpsNoAttack, $5A
	smpsFMvoice        $03
	smpsAlterVol        $D4
	dc.b	nFs4, $08, nA4, $09, nB4, $08, nG5, $0A, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $11, nG5, $09, nA5, $10, nG5, $0E, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nFs5, $10, nG5, $09, nA5, $11, nG5, $19, nFs5, $11, nG5, $08
	dc.b	nA5, $11, nG5, $0E, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nFs5, $11, nE5, nD5, $08, nC5, $0E, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $DD
	dc.b	nC5, $02, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $10, nC5, $09, nG5, $11, nFs5, $0D, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nFs5
	smpsAlterNote       $00
	dc.b	nG5, $11, nA4, nG4, $10, $17, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nFs4, $02, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nC4, $02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb3, $03
	smpsAlterNote       $00
	dc.b	nE5, $19, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nC5, $03, smpsNoAttack
	smpsAlterNote       $24
	dc.b	nB4
	smpsAlterNote       $00
	dc.b	nFs5, $08, nFs5, nRst, $09, nG5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $11, nG5, $12, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $11, nD5, $1A, nE5, $19, nFs5, $11, nE5, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nF5
	smpsAlterNote       $00
	dc.b	nFs5, $09, $10, nG5, $1B, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $11, nC5, nB4, nC5, nE5, nD5, $10, nE5, $11, nB4, nA4
	dc.b	$08, nB4, $7F, nB3, $10, nC5, $11, nB4, nC5, nE5, nD5, $19
	dc.b	nRst, $08, nA5, $09, $08, $09, nB5, $26

MDNV2_Uranus_Loop10:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, MDNV2_Uranus_Loop10, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

MDNV2_Uranus_Loop11:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, MDNV2_Uranus_Loop11, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nB5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

MDNV2_Uranus_Loop12:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, MDNV2_Uranus_Loop12, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

MDNV2_Uranus_Loop13:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop13, Target
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsFMvoice        $00
	smpsAlterVol        $F2
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, $05, nB2, $04, nRst, nE2, nRst
	dc.b	nC3, $05, nRst, $04, nB2, nRst, nA2, nRst, $05, nG2, $0C, nRst
	dc.b	$05, nA2, $04, nRst, nG2, nRst, nFs2, $0D, nRst, $04, nG2, nRst
	dc.b	$05, nFs2, $04, nRst
	smpsFMvoice        $01
	smpsAlterVol        $02
	dc.b	nE2, $0D, nRst, $04, nE2, nRst, nB2, nRst, $05, nE2, $04, nRst
	dc.b	nC3, nRst, nB2, $05, nRst, $04, nA2, nRst, nE2, $0D, nRst, $04
	dc.b	nE2, nRst, $05, nB2, $04, nRst, nE2, nRst, nC3, $05, nRst, $04
	dc.b	nB2, nRst, nA2, nRst, $05, nE2, $0C, nRst, $04, nE2, $05, nRst
	dc.b	$04, nB2, nRst, nE2, nRst, $05, nC3, $04, nRst, nB2, nRst, $05
	dc.b	nA2, $04, nRst, nE2, $0D, nRst, $04, nFs2, nRst, nG2, nRst, $05
	dc.b	nA2, $04, nRst, nB2, nRst, nA2, $05, nRst, $04, nG2, nRst, nFs2
	smpsAlterVol        $21

MDNV2_Uranus_Loop14:
	dc.b	smpsNoAttack, $7F
	smpsLoop            $00, $0D, MDNV2_Uranus_Loop14, Target
	dc.b	smpsNoAttack, $66
	smpsStop

; FM5 Data
MDNV2_Uranus_FM5:
	smpsFMvoice        $02
	smpsAlterVol        $0F
	smpsPan             panCenter, $00
	dc.b	nE2, $10, $09, nB2, $08, nE2, $09, nC3, $08, nB2, nA2, $09
	dc.b	nE2, $11, $08, nB2, nE2, $09, nC3, $08, nB2, $09, nA2, $08
	dc.b	nE2, $11, $08, nB2, $09, nE2, $08, nC3, $09, nB2, $08, nA2
	dc.b	nG2, $11, nA2, $09, nG2, $08, nFs2, $11, nG2, $08, nFs2, $09
	dc.b	nE2, $11, $08, nB2, nE2, $09, nC3, $08, nB2, $09, nA2, $08
	dc.b	nE2, $11, $08, nB2, $09, nE2, $08, nC3, $09, nB2, $08, nA2
	dc.b	nE2, $11, $09, nB2, $08, nE2, nC3, $09, nB2, $08, nA2, $09
	dc.b	nE2, $10, nFs2, $09, nG2, $08, nA2, $09, nB2, $08, nA2, $09
	dc.b	nG2, $08, nE2, $11, $08, nB2, $09, nE2, $08, nC3, nB2, $09
	dc.b	nA2, $08, nE2, $11, $09, nB2, $08, nE2, nC3, $09, nB2, $08
	dc.b	nA2, $09, nE2, $10, $09, nB2, $08, nE2, $09, nC3, $08, nB2
	dc.b	nA2, $09, nE2, $11, nFs2, $08, nG2, $09, nA2, $08, nB2, nA2
	dc.b	$09, nG2, $08, nD2, $09, nE2, $10, $11, nE2, nE2, nE2, nE2
	dc.b	nE2, $10, $11, nD2, nD2, nD2, nD2, nD2, $10, $11, nD2, nD2
	dc.b	nC2, nC2, nC2, $10, $11, nC2, nC2, nC2, nC2, $10, nB1, $11
	dc.b	nB1, nB1, nB1, nB1, nB1, $10, $11, nB1, nE2, nE2, nE2, nE2
	dc.b	$10, $11, nE2, nE2, nE2, nD2, nD2, $10, $11, nD2, nD2, nD2
	dc.b	nD2, $10, $11, nC2, nC2, nC2, nC2, nD2, $10, $11, nD2, nD2
	dc.b	nE2, nE2, nE2, $10, $11, nE2, nE2, nE2, nE2, nC2, $10, $11
	dc.b	nC2, nC2, nC2, nC2, nC2

MDNV2_Uranus_Loop0C:
	dc.b	$10, $11, nD2, nD2, nD2
	smpsLoop            $00, $02, MDNV2_Uranus_Loop0C, Target
	dc.b	nE2, nE2, $10, $11, nE2, nE2, nE2, nE2, nE2, $10, nB1, $11
	dc.b	nB1, nB1, nB1, nB1, nB1, $10, $11, nB1, nC2, nC2, nC2, nC2
	dc.b	$10, $11, nC2, nC2, nC2, nD2, $10, $11, nD2, nD2, nD2, nD2
	dc.b	nD2, $10, $11, nB1, nB1, nB1, nB1, nB1, $10, $11, nB1, nB1
	dc.b	nB1, $08, nRst, $11, nB1, $09, nRst, $10, nB1, $09, nRst, $08
	dc.b	nB1, $11, nB1, nB1, nB1, nE2, $08, nE2, nE2, $09, $08, $09
	dc.b	$08, nE2, nE2, $09, nD2, $08, $09, $08, nD2, nD2, $09, $08
	dc.b	$09, $08, nC2, $11, nC2, nC2, nC2, $10, nD2, $11, nD2, nD2
	dc.b	nD2, nC2, nC2, $10, $11, nC2, nD2, nD2, nD2, nD2, $10, nG2
	dc.b	$11, nG2, nFs2, nFs2, nE2, $10, $11, nB1, nB1, nA1, nA1, nA1
	dc.b	$10, $11, nB1, nB1, nB1, nB1, nE2, $10, $11, nD2, nD2, nC2
	dc.b	nC2, nC2, $10, $11, nC2, nC2, nC2, nC2, nD2, $10, $11, nD2
	dc.b	nD2, nE2, $08, $09, $08, nE2, nE2, $09

MDNV2_Uranus_Loop0D:
	dc.b	$08, $09, $08, nD2, $09, $08
	smpsLoop            $00, $02, MDNV2_Uranus_Loop0D, Target
	dc.b	nD2, nC2, $11, nC2, nC2, nC2, nD2, nD2, $10, $11, $09, nE2
	dc.b	$10, $09, nB2, $08, nE2, $09, nC3, $08, nB2, $09, nA2, $08
	dc.b	nE2, $11, $08, nB2, $09, nE2, $08, nC3, nB2, $09, nA2, $08
	dc.b	nE2, $11, $09, nB2, $08, nE2, nC3, $09, nB2, $08, nA2, $09
	dc.b	nG2, $10, nA2, $09, nG2, $08, nFs2, $11, nG2, $08, nFs2, $09
	dc.b	nE2, $11, $08, nB2, $09, nE2, $08, nC3, nB2, $09, nA2, $08
	dc.b	nE2, $11, $08, nB2, $09, nE2, $08, nC3, $09, nB2, $08, nA2
	dc.b	$09, nE2, $10, $09, nB2, $08, nE2, $09, nC3, $08, nB2, nA2
	dc.b	$09, nE2, $11, nFs2, $08, nG2, nA2, $09, nB2, $08, nA2, $09
	dc.b	nG2, $08, nD2, $09, nE2, $10, $11, nE2, nE2, nE2, nE2, $10
	dc.b	$11, nE2, nD2, nD2, nD2, nD2, $10, $11, nD2, nD2, nD2, nC2
	dc.b	nC2, $10, $11, nC2, nC2, nC2, nC2, nC2, $10, nB1, $11, nB1
	dc.b	nB1, nB1, nB1, nB1, $10, $11, nB1, nE2, nE2, nE2, $10, $11
	dc.b	nE2, nE2, nE2, nE2, nD2, $10, $11, nD2, nD2, nD2, nD2, nD2
	dc.b	$10, $11, nC2, nC2, nC2, nC2, nD2, $10, $11, nD2, nD2, nE2
	dc.b	nE2, nE2, $10, $11, nE2, nE2, nE2, nE2

MDNV2_Uranus_Loop0E:
	dc.b	$7F, smpsNoAttack
	smpsLoop            $00, $05, MDNV2_Uranus_Loop0E, Target
	dc.b	$37
	smpsStop

; PSG1 Data
MDNV2_Uranus_PSG1:
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $7F
	dc.b	nRst, $36
	smpsAlterNote       $02
	dc.b	nE0, $01
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	nE0
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	nE0
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nFs0, $01
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nG0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nG0
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $01
	dc.b	nG0
	smpsAlterVol     $FB
	dc.b	nA0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterNote       $0B
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $09
	dc.b	nB0
	smpsAlterVol     $F6
	smpsAlterNote       $01
	dc.b	nA0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $FB
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterVol     $FB
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nG1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nFs1, $02
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nFs1
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nFs1
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nE1, $01
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nD1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nD1
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nD1
	smpsAlterVol     $01
	dc.b	$05

MDNV2_Uranus_Loop87:
	smpsAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop87, Target
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$23
	smpsAlterVol     $F6
	smpsAlterNote       $01
	dc.b	nB0, $01
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $FB
	smpsAlterNote       $FF
	dc.b	nF1, $01
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1, $04
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nB0, $01
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nA0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$01
	smpsAlterVol     $F6
	dc.b	nA0
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nA0
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $FB
	dc.b	nC1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nC1
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nC1
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nB0, $02
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nC1, $01
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $FB
	dc.b	nBb0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $0B
	dc.b	nB0
	smpsAlterNote       $07
	dc.b	nB0
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol     $01
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $09
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $09
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterNote       $0B
	dc.b	nB0
	smpsAlterNote       $07
	dc.b	nB0
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $09
	dc.b	nB0
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $09
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nBb0, $02
	smpsAlterNote       $0C
	dc.b	nA0, $01
	smpsAlterNote       $F5
	dc.b	nG0
	smpsAlterNote       $FF
	dc.b	nFs0
	smpsAlterNote       $03
	dc.b	nF0
	smpsAlterNote       $FD
	dc.b	nE0
	smpsAlterNote       $F0
	dc.b	nEb0
	smpsAlterNote       $11
	dc.b	nEb0
	smpsAlterNote       $0D
	dc.b	nD0
	smpsAlterNote       $0B
	dc.b	nCs0
	smpsAlterNote       $10
	dc.b	nCs0
	smpsAlterNote       $0E
	dc.b	nCs0
	smpsAlterVol     $F6
	smpsAlterNote       $02
	dc.b	nE0
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	nE0
	smpsAlterVol     $01
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nFs0, $01
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nG0, $01
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nG0
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nA0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nA0
	smpsAlterVol     $FE
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterNote       $0B
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $09
	dc.b	nB0
	smpsAlterVol     $F6
	smpsAlterNote       $01
	dc.b	nA0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nB0, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	nB0
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $FB
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterVol     $FB
	dc.b	nG1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nFs1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	nFs1
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FB
	dc.b	nE1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$03
	smpsAlterVol     $FE
	dc.b	nD1, $01
	smpsAlterVol     $01
	dc.b	$04
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$02

MDNV2_Uranus_Loop88:
	smpsAlterVol     $01
	dc.b	nD1
	smpsAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop88, Target
	smpsAlterVol     $01
	dc.b	$05
	smpsAlterVol     $01
	dc.b	$02
	smpsAlterVol     $01
	dc.b	$22
	smpsAlterVol     $F6
	smpsAlterNote       $01
	dc.b	nB0, $02
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03, nRst

MDNV2_Uranus_Loop89:
	dc.b	$7F
	smpsLoop            $00, $26, MDNV2_Uranus_Loop89, Target
	dc.b	nRst, $15
	smpsStop

; PSG3 Data
MDNV2_Uranus_PSG3:
	smpsPSGform         $E7
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05

MDNV2_Uranus_Loop72:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop72, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02

MDNV2_Uranus_Loop73:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop73, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $F8
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $F8
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop74:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop74, Target

MDNV2_Uranus_Loop75:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsLoop            $00, $03, MDNV2_Uranus_Loop75, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop76:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop76, Target

MDNV2_Uranus_Loop77:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsLoop            $00, $03, MDNV2_Uranus_Loop77, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02

MDNV2_Uranus_Loop78:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop78, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop79:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop79, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03, nRst, $13
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop7A:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop7A, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $7F, nRst, $7F, nRst, $5D
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $FA
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop7B:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop7B, Target

MDNV2_Uranus_Loop7C:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsLoop            $00, $03, MDNV2_Uranus_Loop7C, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $F5
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05

MDNV2_Uranus_Loop7D:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $02, MDNV2_Uranus_Loop7D, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $7F, nRst, $55
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop7E:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop7E, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $FA
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02

MDNV2_Uranus_Loop7F:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop7F, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $F5
	smpsAlterNote       $FC
	dc.b	$06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02

MDNV2_Uranus_Loop80:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsLoop            $00, $02, MDNV2_Uranus_Loop80, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $0B
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop81:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop81, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst, $7F, nRst, $7F, nRst, $5D
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $FA
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop82:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop82, Target

MDNV2_Uranus_Loop83:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsLoop            $00, $03, MDNV2_Uranus_Loop83, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol     $F5
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06

MDNV2_Uranus_Loop84:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsLoop            $00, $03, MDNV2_Uranus_Loop84, Target

MDNV2_Uranus_Loop85:
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsLoop            $00, $03, MDNV2_Uranus_Loop85, Target
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04, nRst, $0A
	smpsAlterVol     $F2
	smpsAlterNote       $FC
	dc.b	nAb5, $05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$05
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$04
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$06
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	$03
	smpsAlterVol     $01
	smpsAlterNote       $FC
	dc.b	nAb5, nRst

MDNV2_Uranus_Loop86:
	dc.b	$7F
	smpsLoop            $00, $1F, MDNV2_Uranus_Loop86, Target
	dc.b	nRst, $2D
	smpsStop

; DAC Data
MDNV2_URANUS_PWM1:
	dc.b	pAKick, $43, pAKick, pAKick, pAKick, $22, pAKick, pASnare, $19

MDNV2_Uranus_Loop00:
	dc.b	pAKick, $11, pASnare, pAKick, $10, pASnare, $11, pAKick, pASnare
	smpsLoop            $00, $04, MDNV2_Uranus_Loop00, Target
	dc.b	pAKick, pASnare, $10, pAKick, $11, pASnare, $09, pAKick, $08, $09, $08, pAKick
	dc.b	pAKick, $09, $08, $09

MDNV2_Uranus_Loop01:
	dc.b	pASnare, $10, pAKick, $11, pASnare, pAKick, pASnare, pAKick
	smpsLoop            $00, $03, MDNV2_Uranus_Loop01, Target
	dc.b	pASnare, $10, pAKick, $11, pASnare, pAKick, pASnare, pAKick, $10, $11, pASnare, $09
	dc.b	pAKick, $11, pASnare, $08, pAKick, $11, pASnare, pASnare, $10, pAKick, $09, $08
	dc.b	$09, $08

MDNV2_Uranus_Loop02:
	dc.b	pASnare, $11, pAKick, pASnare, pAKick, $10, pASnare, $11, pAKick
	smpsLoop            $00, $02, MDNV2_Uranus_Loop02, Target

MDNV2_Uranus_Loop03:
	dc.b	pASnare, pAKick, pASnare, $10, pAKick, $11, pASnare, pAKick
	smpsLoop            $00, $02, MDNV2_Uranus_Loop03, Target
	dc.b	pAKick, pASnare, $08, pAKick, $11, pASnare, $08, pAKick, $11, pASnare, pASnare, pAKick
	dc.b	$08, $09, $08, $09, pASnare, $10, pAKick, $11, pASnare, pAKick, pASnare, pAKick
	dc.b	pASnare, $10

MDNV2_Uranus_Loop04:
	dc.b	pAKick, $11, pASnare, pAKick, pASnare, pAKick, $10, pASnare, $11
	smpsLoop            $00, $02, MDNV2_Uranus_Loop04, Target
	dc.b	pAKick, pASnare, pAKick, pASnare, pAKick, $10, $11, pASnare, $09, pAKick, $10, pASnare
	dc.b	$09, pAKick, $11, pASnare, pASnare, $10, pAKick, $09, $08, $09, $08, pASnare
	dc.b	$11, pAKick, pASnare, pAKick, $10

MDNV2_Uranus_Loop05:
	dc.b	pASnare, $11, pAKick, pASnare, pAKick, pASnare, $10, pAKick, $11
	smpsLoop            $00, $03, MDNV2_Uranus_Loop05, Target
	dc.b	pASnare, pAKick, pAKick, pASnare, $08, pAKick, $11, pASnare, $08, pAKick, $11, pASnare
	dc.b	pASnare, pAKick, $08, $09, $08, $09, pASnare, $10

MDNV2_Uranus_Loop06:
	dc.b	pAKick, $11, pASnare, pAKick, pASnare, pAKick, $10, pASnare, $11
	smpsLoop            $00, $04, MDNV2_Uranus_Loop06, Target

MDNV2_Uranus_Loop07:
	dc.b	pAKick, pASnare, pAKick, pASnare, $10, pAKick, $11, pASnare
	smpsLoop            $00, $05, MDNV2_Uranus_Loop07, Target
	dc.b	pAKick, pASnare, pAKick, $10, pASnare, $11, pAKick, pASnare, pAKick, pASnare, pAKick, $10
	dc.b	$11, pASnare, $09, pAKick, $11, pASnare, $08, pAKick, $11, pASnare, pASnare, $10
	dc.b	pAKick, $09, $08, $11

MDNV2_Uranus_Loop08:
	dc.b	pASnare, pAKick, pASnare, pAKick, $10, pASnare, $11, pAKick
	smpsLoop            $00, $02, MDNV2_Uranus_Loop08, Target

MDNV2_Uranus_Loop09:
	dc.b	pASnare, pAKick, pASnare, $10, pAKick, $11, pASnare, pAKick
	smpsLoop            $00, $02, MDNV2_Uranus_Loop09, Target
	dc.b	pASnare, pAKick, pASnare, $10, pAKick, $11, pASnare, $09, pAKick, $08, pAKick, pAKick
	dc.b	$09, $08, $09, $08, $09, pASnare, $10

MDNV2_Uranus_Loop0A:
	dc.b	pAKick, $11, pASnare, pAKick, pASnare, pAKick, $10, pASnare, $11
	smpsLoop            $00, $03, MDNV2_Uranus_Loop0A, Target
	dc.b	pAKick, pASnare, pAKick, pASnare, pAKick, $10, $11, pASnare, $09, pAKick, $10, pASnare
	dc.b	$09, pAKick, $11, pASnare, pASnare, $10, pAKick, $09, $08, $09, $08

MDNV2_Uranus_Loop0B:
	dc.b	pASnare, $11, pAKick, pASnare, $10, pAKick, $11, pASnare, pAKick
	smpsLoop            $00, $04, MDNV2_Uranus_Loop0B, Target
	dc.b	pASnare, pASnare, $08, pAKick, $11, pASnare, $08, pAKick, $11, pASnare, $09, pAKick
	dc.b	$08, pAKick, pAKick, $09, $08, $09, $08, $76, $08, $09, $08, pASnare
	dc.b	$6D, pAKick, $09, $08, $09, pASnare, $7F, nRst, $7F, nRst, $7F, nRst
	dc.b	$17

MDNV2_Uranus_PSG2:
MDNV2_Uranus_FM6:
MDNV2_Uranus_PWM2:
MDNV2_Uranus_PWM3:
MDNV2_Uranus_PWM4:
	smpsStop

MDNV2_Uranus_Voices:
	dc.b		$28
	dc.b		$33, $53, $70, $30, 	$DF, $DC, $1F, $1F, 	$13, $05, $06, $00
	dc.b		$00, $01, $00, $1F, 	$11, $21, $10, $F8, 	$0E, $1B, $12, $00

	dc.b		$38
	dc.b		$54, $51, $51, $54, 	$DF, $DF, $1F, $1F, 	$07, $0E, $07, $04
	dc.b		$08, $00, $03, $08, 	$87, $31, $71, $81, 	$1B, $11, $10, $00

	dc.b		$3B
	dc.b		$34, $35, $10, $01, 	$54, $14, $1B, $1F, 	$15, $0F, $07, $05
	dc.b		$03, $02, $00, $00, 	$3F, $FF, $FF, $FF, 	$1A, $28, $14, $00

	dc.b		$38
	dc.b		$33, $71, $01, $71, 	$56, $16, $1F, $1F, 	$13, $12, $04, $07
	dc.b		$00, $00, $00, $00, 	$2C, $37, $16, $17, 	$15, $16, $12, $00