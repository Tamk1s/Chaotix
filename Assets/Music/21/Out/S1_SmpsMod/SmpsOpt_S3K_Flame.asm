S2DEZ_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     S2DEZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $97

	smpsHeaderDAC       S2DEZ_DAC
	smpsHeaderFM        S2DEZ_FM1,	$00, $16
	smpsHeaderFM        S2DEZ_FM2,	$00, $08
	smpsHeaderFM        S2DEZ_FM3,	$00, $10
	smpsHeaderFM        S2DEZ_FM4,	$00, $10
	smpsHeaderFM        S2DEZ_FM5,	$00, $06
	smpsHeaderPSG       S2DEZ_PSG1,	$E8, $06, $00, $00
	smpsHeaderPSG       S2DEZ_PSG2,	$E8, $06, $00, $00
	smpsHeaderPSG       S2DEZ_PSG3,	$00, $02, $00, fTone_01

; FM1 Data
S2DEZ_FM1:
	smpsModSet          $08, $01, $05, $04
	smpsModOff
	smpsModSet          $10, $01, $FF, $FF
	smpsModOff
	smpsModSet          $10, $01, $FE, $FF
	smpsModOff
	smpsModSet          $00, $01, $10, $FF
	smpsModOff
	smpsStop

; PSG1 Data
S2DEZ_PSG1:
	smpsModSet          $06, $02, $FE, $FF
	smpsModOff
	smpsModSet          $06, $01, $01, $FF
	smpsModOff
	smpsModSet          $00, $01, $FA, $FF
	smpsModOff
	smpsModSet          $00, $01, $FD, $FF
	smpsModOff
	smpsModSet          $00, $01, $FC, $FF
	smpsModOff
	smpsModSet          $00, $01, $01, $FF
	smpsModOff
	smpsStop

; DAC Data
S2DEZ_DAC:
; FM2 Data
S2DEZ_FM2:
; FM3 Data
S2DEZ_FM3:
; FM4 Data
S2DEZ_FM4:
; FM5 Data
S2DEZ_FM5:
; PSG2 Data
S2DEZ_PSG2:
; PSG3 Data
S2DEZ_PSG3:
	smpsStop

; Song seems to not use any FM voices
S2DEZ_Voices:
