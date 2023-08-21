S2Cabar_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     S2Cabar_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       S2Cabar_DAC
	smpsHeaderFM        S2Cabar_FM1,	$00, $13
	smpsHeaderFM        S2Cabar_FM2,	$00, $13
	smpsHeaderFM        S2Cabar_FM3,	$00, $0F
	smpsHeaderFM        S2Cabar_FM4,	$00, $13
	smpsHeaderFM        S2Cabar_FM5,	$00, $13
	smpsHeaderPSG       S2Cabar_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       S2Cabar_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       S2Cabar_PSG3,	$00, $04, $00, $00

; DAC Data
S2Cabar_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $60, dKick, $18, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $12
	dc.b	pCrashCymb, $06, dKick, $18, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $12
	dc.b	$06, dKick, $18, dSnare, dKick, dSnare, dKick, $06, $06, $06, dSnare, $12
	dc.b	dKick, $06, pCrashCymb, dKick, $0C, $0C, dSnare, $12, $06, dKick, $0C, $0C
	dc.b	dSnare, dKick, $06, dSnare, dKick, dKick, dKick, dSnare, $0C, $06, dKick, pCrashCymb
	dc.b	dKick, $0C, $0C, dSnare, $12, pCrashCymb, $06, dKick, $0C, $0C, dSnare, $12
	dc.b	$06, dKick, $18, dSnare, dKick, dSnare, $12, $66, dKick, $18, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, $12, pCrashCymb, $06, dKick, $18, dSnare, dKick
	dc.b	dSnare, dKick

S2Cabar_Loop00:
	dc.b	dSnare, dKick, dSnare, $12, $06, dKick, $18
	smpsLoop            $00, $02, S2Cabar_Loop00
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $12, pCrashCymb, $06, dKick, $18
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $12, $66, dKick, $18, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, $12, pCrashCymb, $06, dKick, $18, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, $12, $06, dKick, $18, dSnare, dKick
	dc.b	dSnare, dKick, $06, $06, $06, dSnare, $12, dKick, $06, pCrashCymb, dKick, $0C
	dc.b	$0C, dSnare, $12, $06, dKick, $0C, $0C, dSnare, dKick, $06, dSnare, dKick
	dc.b	dKick, dKick, dSnare, $0C, $06, dKick, pCrashCymb, dKick, $0C, $0C, dSnare, $12
	dc.b	pCrashCymb, $06, dKick, $0C, $0C, dSnare, $12, $06, dKick, $18, dSnare, dKick
	dc.b	dSnare, $12, $66, dKick, $18, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	$12, pCrashCymb, $06, dKick, $18, dSnare, dKick, dSnare, dKick

S2Cabar_Loop01:
	dc.b	dSnare, dKick, dSnare, $12, $06, dKick, $18
	smpsLoop            $00, $02, S2Cabar_Loop01
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $12, pCrashCymb, $06, dKick, $18
	dc.b	dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, $12, $06
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
S2Cabar_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00

S2Cabar_Loop32:
	dc.b	nA2, $0C, nC3, nE2, nC3
	smpsLoop            $00, $04, S2Cabar_Loop32
	dc.b	nD3, nF3, nA2, nF3, nD3, nF3, nA2, nF3, nE3, nAb3, nB2, nAb3
	dc.b	nE3, nAb3, nB2, nAb3

S2Cabar_Loop33:
	dc.b	nA2, nC3, nE2, nC3
	smpsLoop            $00, $06, S2Cabar_Loop33
	dc.b	nD3, nF3, nA2, nF3, nD3, nF3, nA2, nF3

S2Cabar_Loop35:
	dc.b	nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop34:
	dc.b	nA2, nC3, nE2, nC3
	smpsLoop            $00, $04, S2Cabar_Loop34
	dc.b	nC3, nE3, nG2, nE3, nC3, nE3, nAb2, $06, nA2, nBb2, nB2, nF3
	dc.b	$0C, nAb3, nC3, nAb3, nF3, nAb3, nC3, nAb3
	smpsLoop            $01, $02, S2Cabar_Loop35

S2Cabar_Loop37:
	dc.b	nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop36:
	dc.b	nA2, nC3, nE2, nC3
	smpsLoop            $00, $06, S2Cabar_Loop36
	dc.b	nD3, nF3, nA2, nF3, nD3, nF3, nA2, nF3
	smpsLoop            $01, $02, S2Cabar_Loop37

S2Cabar_Loop39:
	dc.b	nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3

S2Cabar_Loop38:
	dc.b	nA2, nC3, nE2, nC3
	smpsLoop            $00, $04, S2Cabar_Loop38
	dc.b	nC3, nE3, nG2, nE3, nC3, nE3, nAb2, $06, nA2, nBb2, nB2, nF3
	dc.b	$0C, nAb3, nC3, nAb3, nF3, nAb3, nC3, nAb3
	smpsLoop            $01, $02, S2Cabar_Loop39
	dc.b	nE3, nAb3, nB2, nAb3, nE3, nAb3, nB2, nAb3, nA2, nC3, nE2, nC3
	dc.b	nA2, nC3, nE2, nC3
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
S2Cabar_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01

S2Cabar_Loop30:
	dc.b	nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F, nC5, $0C, nRst, nC5
	dc.b	$03, nRst, nC5, nRst, $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop            $00, $03, S2Cabar_Loop30
	dc.b	nRst, $0C, nB4, $03, nRst, nB4, nRst, $0F, nB4, $0C, nRst, nB4
	dc.b	$03, nRst, nB4, nRst, $09, nB4, $03, nRst, nB4, nRst, nB4, nB4
	dc.b	nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F, nC5, $0C, nRst, nC5
	dc.b	$03, nRst, nC5, nRst, $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop            $01, $02, S2Cabar_Loop30

S2Cabar_Loop31:
	dc.b	nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F, nC5, $0C, nRst, nC5
	dc.b	$03, nRst, nC5, nRst, $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	dc.b	nRst, $0C, nE5, $03, nRst, nE5, nRst, $0F, nE5, $0C, nRst, nE5
	dc.b	$03, nRst, nE5, nRst, $09, nE5, $03, nRst, nE5, nRst, nE5, nE5
	dc.b	nRst, $0C, nF4, $03, nRst, nF4, nRst, $0F, nF4, $0C, nRst, nF4
	dc.b	$03, nRst, nF4, nRst, $09, nF4, $03, nRst, nF4, nRst, nF4, nF4
	dc.b	nRst, $0C, nB4, $03, nRst, nB4, nRst, $0F, nB4, $0C, nRst, nB4
	dc.b	$03, nRst, nB4, nRst, $09, nB4, $03, nRst, nB4, nRst, nB4, nB4
	dc.b	nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F, nC5, $0C, nRst, nC5
	dc.b	$03, nRst, nC5, nRst, $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop            $00, $02, S2Cabar_Loop31
	smpsLoop            $02, $02, S2Cabar_Loop30
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM3 Data
S2Cabar_FM3:
	smpsSetvoice        $02

S2Cabar_Loop26:
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C
	smpsPan             panLeft, $00
	dc.b	nRst, nA4, $03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst
	dc.b	nA4, nA4
	smpsLoop            $00, $03, S2Cabar_Loop26
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F, nAb4, $0C
	smpsPan             panLeft, $00
	dc.b	nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4, $03, nRst, nAb4, nRst
	dc.b	nAb4, nAb4

S2Cabar_Loop27:
	dc.b	nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C, nRst, nA4
	dc.b	$03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop            $00, $04, S2Cabar_Loop27
	dc.b	nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F, nAb4, $0C

S2Cabar_Loop2A:
	dc.b	nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4, $03, nRst, nAb4, nRst
	dc.b	nAb4, nAb4

S2Cabar_Loop28:
	dc.b	nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C, nRst, nA4
	dc.b	$03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop            $00, $02, S2Cabar_Loop28

S2Cabar_Loop29:
	dc.b	nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F, nC5, $0C, nRst, nC5
	dc.b	$03, nRst, nC5, nRst, $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop            $00, $02, S2Cabar_Loop29
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F, nAb4, $0C
	smpsPan             panLeft, $00
	smpsLoop            $01, $02, S2Cabar_Loop2A
	dc.b	nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4, $03, nRst, nAb4, nRst
	dc.b	nAb4, nAb4, nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C

S2Cabar_Loop2B:
	dc.b	nRst, nA4, $03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst
	dc.b	nA4, nA4
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C
	smpsPan             panLeft, $00
	smpsLoop            $00, $03, S2Cabar_Loop2B
	dc.b	nRst, nA4, $03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst
	dc.b	nA4, nA4
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F, nAb4, $0C
	smpsPan             panLeft, $00
	dc.b	nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4, $03, nRst, nAb4, nRst
	dc.b	nAb4, nAb4

S2Cabar_Loop2C:
	dc.b	nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C, nRst, nA4
	dc.b	$03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop            $00, $04, S2Cabar_Loop2C
	dc.b	nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F, nAb4, $0C

S2Cabar_Loop2F:
	dc.b	nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4, $03, nRst, nAb4, nRst
	dc.b	nAb4, nAb4

S2Cabar_Loop2D:
	dc.b	nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C, nRst, nA4
	dc.b	$03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst, nA4, nA4
	smpsLoop            $00, $02, S2Cabar_Loop2D

S2Cabar_Loop2E:
	dc.b	nRst, $0C, nC5, $03, nRst, nC5, nRst, $0F, nC5, $0C, nRst, nC5
	dc.b	$03, nRst, nC5, nRst, $09, nC5, $03, nRst, nC5, nRst, nC5, nC5
	smpsLoop            $00, $02, S2Cabar_Loop2E
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nAb4, $03, nRst, nAb4, nRst, $0F, nAb4, $0C
	smpsPan             panLeft, $00
	smpsLoop            $01, $02, S2Cabar_Loop2F
	dc.b	nRst, nAb4, $03, nRst, nAb4, nRst, $09, nAb4, $03, nRst, nAb4, nRst
	dc.b	nAb4, nAb4, nRst, $0C, nA4, $03, nRst, nA4, nRst, $0F, nA4, $0C
	dc.b	nRst, nA4, $03, nRst, nA4, nRst, $09, nA4, $03, nRst, nA4, nRst
	dc.b	nA4, nA4
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	smpsStop

; FM4 Data
S2Cabar_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03

S2Cabar_Loop1E:
	dc.b	nA1, $0C, nC2, nE1, nC2
	smpsLoop            $00, $04, S2Cabar_Loop1E
	dc.b	nD2, nF2, nA1, nF2, nD2, nF2, nA1, nF2, nE2, nAb2, nB1, nAb2
	dc.b	nE2, nAb2, nB1, nAb2

S2Cabar_Loop1F:
	dc.b	nA1, nC2, nE1, nC2
	smpsLoop            $00, $06, S2Cabar_Loop1F
	dc.b	nD2, nF2, nA1, nF2, nD2, nF2, nA1, nF2

S2Cabar_Loop21:
	dc.b	nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop20:
	dc.b	nA1, nC2, nE1, nC2
	smpsLoop            $00, $04, S2Cabar_Loop20
	dc.b	nC2, nE2, nG1, nE2, nC2, nE2, nG1, nE2, nF2, nAb2, nC2, nAb2
	dc.b	nF2, nAb2, nC2, nAb2
	smpsLoop            $01, $02, S2Cabar_Loop21

S2Cabar_Loop23:
	dc.b	nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop22:
	dc.b	nA1, nC2, nE1, nC2
	smpsLoop            $00, $06, S2Cabar_Loop22
	dc.b	nD2, nF2, nA1, nF2, nD2, nF2, nA1, nF2
	smpsLoop            $01, $02, S2Cabar_Loop23

S2Cabar_Loop25:
	dc.b	nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2

S2Cabar_Loop24:
	dc.b	nA1, nC2, nE1, nC2
	smpsLoop            $00, $04, S2Cabar_Loop24
	dc.b	nC2, nE2, nG1, nE2, nC2, nE2, nG1, nE2, nF2, nAb2, nC2, nAb2
	dc.b	nF2, nAb2, nC2, nAb2
	smpsLoop            $01, $02, S2Cabar_Loop25
	dc.b	nE2, nAb2, nB1, nAb2, nE2, nAb2, nB1, nAb2, nA1, nC2, nE1, nC2
	dc.b	nA1, nC2, nE1, nC2
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsStop

; FM5 Data
S2Cabar_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	dc.b	nC5, $03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $05
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03, $03, $03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $07
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03, $03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03
	smpsAlterVol        $FE

S2Cabar_Loop02:
	dc.b	$03
	smpsAlterVol        $FF
	smpsLoop            $00, $04, S2Cabar_Loop02
	dc.b	$03, nRst, $0C
	smpsAlterVol        $02

S2Cabar_Loop03:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $04, S2Cabar_Loop03
	dc.b	nC5, $06, $06, nRst, $0C, nC5, $06, nRst, $12, nC5, $06, $06
	dc.b	nRst, nC5, $03, nRst, nC5, $06, $03, $03, nRst, $0C

S2Cabar_Loop04:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $04, S2Cabar_Loop04
	dc.b	nC5, $06, $06, nRst, $0C, nC5, $06, nRst, $12, nC5, $06, $06
	dc.b	nRst, nC5, nC5, $03, $03, $03, $03, nRst, $0C

S2Cabar_Loop05:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $03, S2Cabar_Loop05
	dc.b	nC5, $06, $06, $03, nRst, nC5, nRst, nC5, $06, nRst, nC5, $03
	dc.b	$03, $03, nRst, nC5, $06, nRst, $12, nC5, $06, nRst, nC5, $03
	dc.b	$03, nRst, $06, nC5, nRst, nC5, $03, nRst, nC5, nRst, nC5, nRst
	dc.b	nC5, $06, nRst, $0C, nC5, $06, nRst, nC5, $03, $03, nRst, $06
	dc.b	nC5, nC5, nRst, nC5, $03, nRst, nC5, $06, $03, $03, $03, nRst
	dc.b	nC5, nRst, nC5, nRst, nC5, $06, nRst, $0C, nC5, $06, $03, nRst
	dc.b	$0F

S2Cabar_Loop06:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $05, S2Cabar_Loop06
	dc.b	nC5, $06, $06, $03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $05
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03, $03, $03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $07
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03, $03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03
	smpsAlterVol        $FE

S2Cabar_Loop07:
	dc.b	$03
	smpsAlterVol        $FF
	smpsLoop            $00, $04, S2Cabar_Loop07
	dc.b	$03, nRst, $0C
	smpsAlterVol        $02

S2Cabar_Loop08:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $03, S2Cabar_Loop08

S2Cabar_Loop0A:
	dc.b	nC5, $06

S2Cabar_Loop09:
	dc.b	nRst, nC5, $03
	smpsLoop            $00, $04, S2Cabar_Loop09
	dc.b	nC5, nC5, nRst, $09
	smpsLoop            $01, $02, S2Cabar_Loop0A
	dc.b	nC5, $06, $06, nRst, $0C

S2Cabar_Loop0B:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $04, S2Cabar_Loop0B
	dc.b	nC5, $06, $06, nRst, $0C, nC5, $06, nRst, $12, nC5, $06, $06
	dc.b	nRst, nC5, nC5, $03, $03

S2Cabar_Loop0D:
	dc.b	$03, $03, nRst, $0C

S2Cabar_Loop0C:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $03, S2Cabar_Loop0C
	dc.b	nC5, $06
	smpsLoop            $01, $02, S2Cabar_Loop0D

S2Cabar_Loop0E:
	dc.b	nRst, nC5, $03
	smpsLoop            $00, $04, S2Cabar_Loop0E
	dc.b	nC5, nC5, nRst, $09, nC5, $06
	smpsLoop            $01, $02, S2Cabar_Loop0E
	dc.b	$06, nRst, $0C

S2Cabar_Loop0F:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $07, S2Cabar_Loop0F
	dc.b	nC5, $06, $06, $03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $05
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03, $03, $03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $07
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03, $03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03
	smpsAlterVol        $FE

S2Cabar_Loop10:
	dc.b	$03
	smpsAlterVol        $FF
	smpsLoop            $00, $04, S2Cabar_Loop10
	dc.b	$03, nRst, $0C
	smpsAlterVol        $02

S2Cabar_Loop11:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $04, S2Cabar_Loop11
	dc.b	nC5, $06, $06, nRst, $0C, nC5, $06, nRst, $12, nC5, $06, $06
	dc.b	nRst, nC5, $03, nRst, nC5, $06, $03, $03, nRst, $0C

S2Cabar_Loop12:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $04, S2Cabar_Loop12
	dc.b	nC5, $06, $06, nRst, $0C, nC5, $06, nRst, $12, nC5, $06, $06
	dc.b	nRst, nC5, nC5, $03, $03, $03, $03, nRst, $0C

S2Cabar_Loop13:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $03, S2Cabar_Loop13
	dc.b	nC5, $06, $06, $03, nRst, nC5, nRst, nC5, $06, nRst, nC5, $03
	dc.b	$03, $03, nRst, nC5, $06, nRst, $12, nC5, $06, nRst, nC5, $03
	dc.b	$03, nRst, $06, nC5, nRst, nC5, $03, nRst, nC5, nRst, nC5, nRst
	dc.b	nC5, $06, nRst, $0C, nC5, $06, nRst, nC5, $03, $03, nRst, $06
	dc.b	nC5, nC5, nRst, nC5, $03, nRst, nC5, $06, $03, $03, $03, nRst
	dc.b	nC5, nRst, nC5, nRst, nC5, $06, nRst, $0C, nC5, $06, $03, nRst
	dc.b	$0F

S2Cabar_Loop14:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $05, S2Cabar_Loop14
	dc.b	nC5, $06, $06, $03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $05
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03, $03, $03
	smpsAlterVol        $02
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $03
	dc.b	$03
	smpsAlterVol        $F8
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FA
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03, $03
	smpsAlterVol        $04
	dc.b	$03
	smpsAlterVol        $07
	dc.b	$03
	smpsAlterVol        $01
	dc.b	$03, $03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FC
	dc.b	$03
	smpsAlterVol        $FD
	dc.b	$03
	smpsAlterVol        $FE

S2Cabar_Loop15:
	dc.b	$03
	smpsAlterVol        $FF
	smpsLoop            $00, $04, S2Cabar_Loop15
	dc.b	$03, nRst, $0C
	smpsAlterVol        $02

S2Cabar_Loop16:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $03, S2Cabar_Loop16

S2Cabar_Loop18:
	dc.b	nC5, $06

S2Cabar_Loop17:
	dc.b	nRst, nC5, $03
	smpsLoop            $00, $04, S2Cabar_Loop17
	dc.b	nC5, nC5, nRst, $09
	smpsLoop            $01, $02, S2Cabar_Loop18
	dc.b	nC5, $06, $06, nRst, $0C

S2Cabar_Loop19:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $04, S2Cabar_Loop19
	dc.b	nC5, $06, $06, nRst, $0C, nC5, $06, nRst, $12, nC5, $06, $06
	dc.b	nRst, nC5, nC5, $03, $03

S2Cabar_Loop1B:
	dc.b	$03, $03, nRst, $0C

S2Cabar_Loop1A:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $03, S2Cabar_Loop1A
	dc.b	nC5, $06
	smpsLoop            $01, $02, S2Cabar_Loop1B

S2Cabar_Loop1C:
	dc.b	nRst, nC5, $03
	smpsLoop            $00, $04, S2Cabar_Loop1C
	dc.b	nC5, nC5, nRst, $09, nC5, $06
	smpsLoop            $01, $02, S2Cabar_Loop1C
	dc.b	$06, nRst, $0C

S2Cabar_Loop1D:
	dc.b	nC5, $06, nRst, $12
	smpsLoop            $00, $07, S2Cabar_Loop1D
	dc.b	nC5, $06, $06
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	smpsStop

; PSG1 Data
S2Cabar_PSG1:
	dc.b	nRst, $54, nE1, $0C, nB1, nA1, nRst, nE1, nB1, nA1, $09, nRst
	dc.b	$03, nA1, $06, nAb1, nG1, nFs1, nF1, $48, nRst, $0C, nF1, $06
	dc.b	nRst, nE1, $0C, nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C, nB1
	dc.b	$5D, nRst, $57, nE1, $0C, nB1, nA1, nRst, nE1, nB1, nA1, $09
	dc.b	nRst, $03, nA1, $06, nAb1, nG1, nFs1, nF1, $48, nRst, $0C, nF1
	dc.b	$06, nRst, nE1, $0C, nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C
	dc.b	nA1, $5D, nRst, $57, nA1, $0C, nG1, nB0, $18, nC1, $0C, nG1
	dc.b	$18, nFs1, nF1, $48, nRst, $0C, nF1, nE1, nEb1, $18, nE1, $0C
	dc.b	nC2, $24, nAb1, $0C, nB1, $5D, nRst, $57, nA1, $0C, nG1, nB0
	dc.b	$18, nC1, $0C, nG1, $18, nFs1, nF1, $48, nRst, $0C, nF1, nE1
	dc.b	nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C, nA1, $5D, nRst, $57
	dc.b	nE1, $0C, nB1, nA1, nRst, nE1, nB1, nA1, $09, nRst, $03, nA1
	dc.b	$06, nAb1, nG1, nFs1, nF1, $48, nRst, $0C, nF1, $06, nRst, nE1
	dc.b	$0C, nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C, nB1, $5D, nRst
	dc.b	$57, nE1, $0C, nB1, nA1, nRst, nE1, nB1, nA1, $09, nRst, $03
	dc.b	nA1, $06, nAb1, nG1, nFs1, nF1, $48, nRst, $0C, nF1, $06, nRst
	dc.b	nE1, $0C, nEb1, $18, nE1, $0C, nC2, $24, nAb1, $0C, nA1, $5D
	dc.b	nRst, $57, nA1, $0C, nG1, nB0, $18, nC1, $0C, nG1, $18, nFs1
	dc.b	nF1, $48, nRst, $0C, nF1, nE1, nEb1, $18, nE1, $0C, nC2, $24
	dc.b	nAb1, $0C, nB1, $5D, nRst, $57, nA1, $0C, nG1, nB0, $18, nC1
	dc.b	$0C, nG1, $18, nFs1, nF1, $48, nRst, $0C, nF1, nE1, nEb1, $18
	dc.b	nE1, $0C, nC2, $24, nAb1, $0C, nA1, $5D, nRst, $03
	smpsPSGvoice        $00
	smpsStop

; PSG2 Data
S2Cabar_PSG2:
	dc.b	nRst, $54, nE2, $0C, nB2, nA2, nRst, nE2, nB2, nA2, $09, nRst
	dc.b	$03, nA2, $06, nAb2, nG2, nFs2, nF2, $48, nRst, $0C, nF2, $06
	dc.b	nRst, nE2, $0C, nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C, nB2
	dc.b	$5D, nRst, $57, nE2, $0C, nB2, nA2, nRst, nE2, nB2, nA2, $09
	dc.b	nRst, $03, nA2, $06, nAb2, nG2, nFs2, nF2, $48, nRst, $0C, nF2
	dc.b	$06, nRst, nE2, $0C, nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C
	dc.b	nA2, $5D, nRst, $57, nA2, $0C, nG2, nB1, $18, nC2, $0C, nG2
	dc.b	$18, nFs2, nF2, $48, nRst, $0C, nF2, nE2, nEb2, $18, nE2, $0C
	dc.b	nC3, $24, nAb2, $0C, nB2, $5D, nRst, $57, nA2, $0C, nG2, nB1
	dc.b	$18, nC2, $0C, nG2, $18, nFs2, nF2, $48, nRst, $0C, nF2, nE2
	dc.b	nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C, nA2, $5D, nRst, $57
	dc.b	nE2, $0C, nB2, nA2, nRst, nE2, nB2, nA2, $09, nRst, $03, nA2
	dc.b	$06, nAb2, nG2, nFs2, nF2, $48, nRst, $0C, nF2, $06, nRst, nE2
	dc.b	$0C, nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C, nB2, $5D, nRst
	dc.b	$57, nE2, $0C, nB2, nA2, nRst, nE2, nB2, nA2, $09, nRst, $03
	dc.b	nA2, $06, nAb2, nG2, nFs2, nF2, $48, nRst, $0C, nF2, $06, nRst
	dc.b	nE2, $0C, nEb2, $18, nE2, $0C, nC3, $24, nAb2, $0C, nA2, $5D
	dc.b	nRst, $57, nA2, $0C, nG2, nB1, $18, nC2, $0C, nG2, $18, nFs2
	dc.b	nF2, $48, nRst, $0C, nF2, nE2, nEb2, $18, nE2, $0C, nC3, $24
	dc.b	nAb2, $0C, nB2, $5D, nRst, $57, nA2, $0C, nG2, nB1, $18, nC2
	dc.b	$0C, nG2, $18, nFs2, nF2, $48, nRst, $0C, nF2, nE2, nEb2, $18
	dc.b	nE2, $0C, nC3, $24, nAb2, $0C, nA2, $5D, nRst, $03
	smpsPSGvoice        $00
	smpsStop

; PSG3 Data
S2Cabar_PSG3:
	dc.b	nRst

S2Cabar_Loop3A:
	dc.b	$59
	smpsLoop            $00, $0C, S2Cabar_Loop3A
	dc.b	nG1, $03, nRst, nG1, nRst, $0F, nG1, $0C, nRst, nG1, $03, nRst
	dc.b	nG1, nRst, $09, nG1, $03, nRst, nG1, nRst, nG1, nG1, nRst, $0C
	dc.b	nAb1, $03, nRst, nAb1, nRst, $0F, nAb1, $0C, nRst, nAb1, $03, nRst
	dc.b	nAb1, nRst, $09, nAb1, $03, nRst, nAb1, nRst, nAb1, nAb1, nRst, $7F
	dc.b	nRst, $7F, nRst, $2E, nG1, $03, nRst, nG1, nRst, $0F, nG1, $0C
	dc.b	nRst, nG1, $03, nRst, nG1, nRst, $09, nG1, $03, nRst, nG1, nRst
	dc.b	nG1, nG1, nRst, $0C, nAb1, $03, nRst, nAb1, nRst, $0F, nAb1, $0C
	dc.b	nRst, nAb1, $03, nRst, nAb1, nRst, $09, nAb1, $03, nRst, nAb1, nRst
	dc.b	nAb1, nAb1, nRst

S2Cabar_Loop3B:
	dc.b	$7E
	smpsLoop            $00, $0A, S2Cabar_Loop3B
	dc.b	nG1, $03, nRst, nG1, nRst, $0F, nG1, $0C, nRst, nG1, $03, nRst
	dc.b	nG1, nRst, $09, nG1, $03, nRst, nG1, nRst, nG1, nG1, nRst, $0C
	dc.b	nAb1, $03, nRst, nAb1, nRst, $0F, nAb1, $0C, nRst, nAb1, $03, nRst
	dc.b	nAb1, nRst, $09, nAb1, $03, nRst, nAb1, nRst, nAb1, nAb1, nRst, $7F
	dc.b	nRst, $7F, nRst, $2E, nG1, $03, nRst, nG1, nRst, $0F, nG1, $0C
	dc.b	nRst, nG1, $03, nRst, nG1, nRst, $09, nG1, $03, nRst, nG1, nRst
	dc.b	nG1, nG1, nRst, $0C, nAb1, $03, nRst, nAb1, nRst, $0F, nAb1, $0C
	dc.b	nRst, nAb1, $03, nRst, nAb1, nRst, $09, nAb1, $03, nRst, nAb1, nRst
	dc.b	nAb1, nAb1, nRst, $7F, nRst, $41
	smpsPSGvoice        $00
	smpsStop

S2Cabar_Voices:
;	Voice $00
;	$20
;	$7A, $31, $00, $00, 	$9F, $D8, $DC, $DF, 	$10, $0A, $04, $04
;	$0F, $08, $08, $08, 	$5F, $5F, $BF, $BF, 	$14, $2B, $17, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $07
	smpsVcCoarseFreq    $00, $00, $01, $0A
	smpsVcRateScale     $03, $03, $03, $02
	smpsVcAttackRate    $1F, $1C, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $0A, $10
	smpsVcDecayRate2    $08, $08, $08, $0F
	smpsVcDecayLevel    $0B, $0B, $05, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $2B, $14

;	Voice $01
;	$19
;	$07, $01, $02, $01, 	$5F, $5F, $5F, $5F, 	$0B, $07, $07, $0D
;	$06, $05, $05, $05, 	$20, $50, $50, $15, 	$2D, $28, $23, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $07, $0B
	smpsVcDecayRate2    $05, $05, $05, $06
	smpsVcDecayLevel    $01, $05, $05, $02
	smpsVcReleaseRate   $05, $00, $00, $00
	smpsVcTotalLevel    $00, $23, $28, $2D

;	Voice $02
;	$39
;	$08, $06, $04, $11, 	$1F, $1F, $1F, $1F, 	$14, $09, $09, $02
;	$00, $00, $00, $00, 	$8B, $5A, $3A, $3A, 	$10, $28, $29, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $04, $06, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $09, $14
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $03, $03, $05, $08
	smpsVcReleaseRate   $0A, $0A, $0A, $0B
	smpsVcTotalLevel    $00, $29, $28, $10

;	Voice $03
;	$3C
;	$01, $72, $01, $32, 	$17, $1F, $1F, $1F, 	$08, $08, $08, $09
;	$04, $03, $04, $04, 	$0F, $1B, $1B, $2B, 	$12, $02, $09, $02
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $00
	smpsVcCoarseFreq    $02, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $08, $08, $08
	smpsVcDecayRate2    $04, $04, $03, $04
	smpsVcDecayLevel    $02, $01, $01, $00
	smpsVcReleaseRate   $0B, $0B, $0B, $0F
	smpsVcTotalLevel    $02, $09, $02, $12

;	Voice $04
;	$3B
;	$00, $00, $00, $00, 	$10, $1F, $00, $1F, 	$00, $00, $18, $0F
;	$00, $00, $00, $00, 	$00, $F6, $50, $F5, 	$00, $00, $21, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $00, $1F, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $18, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $05, $0F, $00
	smpsVcReleaseRate   $05, $00, $06, $00
	smpsVcTotalLevel    $00, $21, $00, $00

