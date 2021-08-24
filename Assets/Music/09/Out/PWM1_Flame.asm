SB_City_PWM_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SB_City_PWM_Voices
	smpsHeaderChan      $05, $00
	smpsHeaderTempo     $02, $08

	smpsHeaderDAC       SB_City_PWM_DAC
	smpsHeaderFM        SB_City_PWM_FM1,	$00, $08
	smpsHeaderFM        SB_City_PWM_FM2,	$00, $08
	smpsHeaderFM        SB_City_PWM_FM3,	$00, $08
	smpsHeaderFM        SB_City_PWM_FM4,	$00, $14

; FM1 Data
SB_City_PWM_FM1:
	smpsSetvoice        $00

SB_City_PWM_Jump03:
	dc.b	nC2, $03, nRst, nBb2, nRst, nEb2, nRst, nBb2, nEb2, nAb2, nRst, nBb2
	dc.b	nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nC2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nRst, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nAb2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nEb2, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nAb2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nRst, nAb2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nC2, nAb2, nC2, nRst, nBb2, nRst, nAb2, nRst, nBb2, nEb2, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nC2, nRst, nBb2, nRst, nAb2, nRst, nBb2, nRst, nAb2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nC2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nEb2, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nC2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nRst, nAb2
	dc.b	nEb2, nBb2, nRst, nEb2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2, nAb2
	dc.b	nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nC2, nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nC2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2
	smpsAlterVol        $0E
	dc.b	nE2
	smpsAlterVol        $F2
	dc.b	nAb2, nBb2, nAb2, nAb2, nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2, nC2

SB_City_PWM_Loop03:
	dc.b	nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nAb2
	smpsLoop            $00, $02, SB_City_PWM_Loop03
	dc.b	nAb2, nBb2, nAb2, nAb2

SB_City_PWM_Loop04:
	dc.b	nAb2, nBb2, nAb2, nC2
	smpsLoop            $00, $03, SB_City_PWM_Loop04
	dc.b	nAb2, nC2, nAb2, nAb2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2, nC2
	dc.b	nAb2, nBb2, nAb2, nC2, nAb2, nC2, nAb2, nAb2, nAb2, nBb2, nAb2, nAb2
	dc.b	nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nC2, nAb2, nC2
	dc.b	nAb2, nC2, nAb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nC2, nAb2, nBb2, nAb2, nC2, nAb2, nC2, nAb2, nRst, $0C, nE1, $03
	dc.b	nRst, $0C, nE1, $03, nRst
	smpsAlterVol        $08
	dc.b	nE2
	smpsAlterVol        $FD
	dc.b	nEb2, nRst, $09
	smpsAlterVol        $FB
	dc.b	nC2, $03, nAb2, nBb2, nAb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nAb2, nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2
	dc.b	nC2, nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nAb2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nAb2, nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA

SB_City_PWM_Loop05:
	dc.b	nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2
	smpsLoop            $00, $03, SB_City_PWM_Loop05
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4

SB_City_PWM_Loop06:
	dc.b	nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nC2
	smpsLoop            $00, $02, SB_City_PWM_Loop06
	dc.b	nAb2, nC2, nAb2, nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2, nC2
	dc.b	nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nAb2, nAb2, nC2, nAb2, nC2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2
	dc.b	nAb2, nAb2, nBb2, nAb2, nC2, nAb2, nC2, nAb2, nAb2, nAb2, nBb2, nAb2
	dc.b	nC2, nAb2, nBb2
	smpsAlterVol        $05
	dc.b	nE1
	smpsAlterVol        $FB
	dc.b	nC2, nAb2, nBb2
	smpsAlterVol        $0E
	dc.b	nE2
	smpsAlterVol        $F7
	dc.b	nE1
	smpsAlterVol        $FB
	dc.b	nAb2
	smpsAlterVol        $05
	dc.b	nC2
	smpsAlterVol        $FB
	dc.b	nAb2, nAb2, nAb2, nBb2, nAb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4

SB_City_PWM_Loop07:
	dc.b	nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nAb2
	smpsLoop            $00, $02, SB_City_PWM_Loop07
	dc.b	nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2, nC2
	dc.b	nAb2, nBb2
	smpsAlterVol        $0E
	dc.b	nE2
	smpsAlterVol        $F2
	dc.b	nAb2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nC2, nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nAb2, nAb2, nBb2, nAb2, nAb2

SB_City_PWM_Loop08:
	dc.b	nAb2, nBb2, nAb2, nC2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2
	smpsAlterVol        $06
	dc.b	nE1
	smpsAlterVol        $FA
	dc.b	nC2
	smpsLoop            $00, $02, SB_City_PWM_Loop08
	dc.b	nAb2, nBb2, nAb2, nC2, nAb2, nC2

SB_City_PWM_Loop09:
	dc.b	nAb2, nC2, nAb2, nBb2
	smpsLoop            $00, $03, SB_City_PWM_Loop09
	dc.b	nAb2, nAb2

SB_City_PWM_Loop0A:
	dc.b	nAb2, nBb2, nAb2, nC2
	smpsLoop            $00, $03, SB_City_PWM_Loop0A
	dc.b	nAb2, nBb2
	smpsAlterVol        $0C
	dc.b	nE2
	smpsAlterVol        $F4
	dc.b	nAb2, nAb2, nBb2, nAb2, nAb2, nAb2, nBb2, nAb2, nC2, nAb2, nBb2
	smpsAlterVol        $05
	dc.b	nE1
	smpsAlterVol        $FB
	dc.b	nAb2, nAb2, nBb2
	smpsAlterVol        $0E
	dc.b	nE2
	smpsAlterVol        $F2
	dc.b	nC2, nAb2, nE1, nC2, nAb2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nEb2
	dc.b	nAb2, nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nC2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nRst, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nAb2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nEb2, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nC2, nRst, nBb2, nRst, nAb2, nRst, nBb2, nRst, nC2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nC2, nAb2, nAb2, nRst, nBb2, nRst, nEb2, nRst, nBb2, nEb2, nAb2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nAb2, nRst, nBb2, nRst, nAb2, nRst, nBb2, nRst, nAb2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nAb2, nRst, nBb2, nRst, nAb2, nRst, nBb2, nEb2, nAb2
	dc.b	nRst, nBb2, nEb2
	smpsAlterVol        $08
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2, nAb2, nRst, nBb2, nRst, nAb2, nRst, nBb2
	smpsAlterVol        $07
	dc.b	nEb2
	smpsAlterVol        $F9
	dc.b	nAb2
	smpsAlterVol        $07
	dc.b	nEb2, nEb2, nRst
	smpsAlterVol        $01
	dc.b	nAb2
	smpsAlterVol        $F8
	dc.b	$03, nBb2, nAb2
	smpsJump            SB_City_PWM_Jump03

; FM2 Data
SB_City_PWM_FM2:
	smpsSetvoice        $00

SB_City_PWM_Jump02:
	dc.b	nAb2, $03, nRst, $09, nAb2, $03, nRst, $09, nC2, $03, nRst, $15
	dc.b	nAb2, $03

SB_City_PWM_Loop00:
	dc.b	nRst, $09, nAb2, $03, nRst, $09, nAb2, $03, nRst, $15, nC2, $03
	smpsLoop            $00, $02, SB_City_PWM_Loop00
	dc.b	nRst, $09, nAb2, $03, nRst, $09, nC2, $03, nRst, $0F, nBb2, $03
	dc.b	nRst, nAb2, nRst, $09, nEb2, $03, nRst, $09, nAb2, $03, nRst, $15
	dc.b	nAb2, $03, nRst, $09, nEb2, $03, nRst, $09, nC2, $03, nRst, $15
	dc.b	nAb2, $03, nRst, $09, nAb2, $03, nRst, $09, nAb2, $03, nRst, $15
	dc.b	nAb2, $03, nRst, $09, nAb2, $03, nRst, $09, nC2, $03, nRst, $09
	smpsAlterVol        $08
	dc.b	nAb2, $03, nRst
	smpsAlterVol        $F8
	dc.b	nC2, nRst, nAb2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nAb2, $03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2, nRst, $09, nAb2, $03, nRst, $09, nAb2, $03, nRst, $09, nC2
	dc.b	$03, nRst, $06, nAb2, $03, $03, nRst, $09, nC2, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06, nE1, $03
	smpsAlterVol        $FA
	dc.b	nC2, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nC2, nRst, $09, nC2, $03, nRst, $09, nAb2, $03, nRst, $09, nAb2
	dc.b	$03, nRst, $06
	smpsAlterVol        $0E
	dc.b	nE2, $03
	smpsAlterVol        $F2
	dc.b	nAb2, nRst, nBb2, nRst, nC2, nRst, $09, nC2, $03

SB_City_PWM_Loop01:
	dc.b	nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2
	smpsLoop            $00, $02, SB_City_PWM_Loop01
	dc.b	nRst, nBb2, nRst, nC2, nRst, $09
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $09
	smpsAlterVol        $F2
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	nE2, $03
	smpsAlterVol        $F2
	dc.b	nC2, nRst, nBb2, nRst, nAb2, nRst, nBb2, nRst, nC2, nRst, $06, nAb2
	dc.b	$03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2, nRst, nBb2, nRst, $0F
	smpsAlterVol        $05
	dc.b	nEb2, $03, nRst, $0C
	smpsAlterVol        $03
	dc.b	nE2, $03, nRst
	smpsAlterVol        $F8
	dc.b	nE1
	smpsAlterVol        $08
	dc.b	nE2, nRst, $09
	smpsAlterVol        $F8
	dc.b	nAb2, $03, nRst, $09, nC2, $03, nRst, $06, nAb2, $03, nC2, nRst
	dc.b	$06, nAb2, $03, $03, nRst, $09, nC2, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $06, nAb2, $03, nC2, nRst, $09, nAb2, $03, nRst
	dc.b	$09, nC2, $03, nRst, $06, nAb2, $03, nC2, nRst, $06, nAb2, $03
	dc.b	$03, nRst, $09, nC2, $03, nRst, $09, nAb2, $03, nRst, $09, nC2
	dc.b	$03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2, nRst, nC2, nRst, nC2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nAb2, $03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2, nRst, nBb2, nRst, nAb2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $06, nAb2, $03, nC2, nRst, nBb2, nRst, nAb2, nRst
	dc.b	nC2, nRst
	smpsAlterVol        $06
	dc.b	nE1, nRst, $06
	smpsAlterVol        $06
	dc.b	nE2, $03
	smpsAlterVol        $F4
	dc.b	nC2, nRst, $06
	smpsAlterVol        $0C
	dc.b	nE2, $03
	smpsAlterVol        $F4
	dc.b	nAb2, nRst, nBb2, nRst, nC2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nAb2, $03, $03, nRst, $06
	smpsAlterVol        $05
	dc.b	nE1, $03
	smpsAlterVol        $FB
	dc.b	nC2, nRst, nBb2, nRst, nC2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06, nE1, $03
	smpsAlterVol        $FA
	dc.b	nC2, nRst, $06, nAb2, $03, nC2, nRst, $09, nC2, $03, nRst, $09
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $09
	smpsAlterVol        $F2
	dc.b	nAb2, $03, nRst, $06, nAb2, $03, nC2, nRst, $09, nAb2, $03, nRst
	dc.b	$09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06, nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2, nRst, $06
	smpsAlterVol        $0C
	dc.b	nE2, $03
	smpsAlterVol        $F4
	dc.b	nC2, nRst, $09, nC2, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	nE2, $03
	smpsAlterVol        $F2
	dc.b	nAb2, nRst, nC2, nRst, nAb2, nRst, $09
	smpsAlterVol        $0C
	dc.b	nE2, $03, nRst, $06, nE2, $03
	smpsAlterVol        $F4
	dc.b	nAb2, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03
	smpsAlterVol        $FA
	dc.b	nAb2, nRst, nBb2, nRst, nAb2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	nE2, $03
	smpsAlterVol        $F2
	dc.b	nC2, nRst, nC2, nRst, nAb2, nRst, nC2, nRst
	smpsAlterVol        $0C
	dc.b	nE2, nRst, $06, nE2, $03
	smpsAlterVol        $F4
	dc.b	nAb2, nRst, $06, nAb2, $03, nC2, nRst, nC2, nRst, nC2, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nC2, nRst, $06, nAb2, $03, $03, nRst, nBb2, nE2, nC2
	dc.b	nRst, $09, nAb2, $03, nRst, $09, nC2, $03, nRst, $15, nAb2, $03
	dc.b	nRst, $09, nAb2, $03, nRst, $09, nAb2, $03, nRst, $15, nC2, $03
	dc.b	nRst, $09, nAb2, $03, nRst, $09, nAb2, $03, nRst, $15, nAb2, $03
	dc.b	nRst, $09, nEb2, $03, nRst, $09, nAb2, $03, nRst, $0F, nBb2, $03
	dc.b	nRst, $0F, nAb2, $03

SB_City_PWM_Loop02:
	dc.b	nRst, $2D, nEb2, $03
	smpsLoop            $00, $03, SB_City_PWM_Loop02
	dc.b	nRst, $0F, nBb2, $03, nRst, nEb2, nRst, $09
	smpsJump            SB_City_PWM_Jump02

; FM3 Data
SB_City_PWM_FM3:
	smpsSetvoice        $01

SB_City_PWM_Jump01:
	dc.b	nRst, $7F, $7F, $7F, $0F, nC2, $03, nRst, $06
	smpsAlterVol        $0C
	dc.b	nE2, $03, nRst, $09
	smpsAlterVol        $F4
	dc.b	nAb2, $03, nRst, $18, nC2, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	nAb2, $03, nRst, $06, nAb2, $03, nRst, $09, nAb2, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $12, nE1, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $09, nE2, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	nC2, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $0C
	dc.b	nE2, $03, nRst, $09, nE2, $03, nRst, $18
	smpsAlterVol        $FC
	dc.b	nE2, $03, nRst, $0C
	smpsAlterVol        $FD
	dc.b	nEb2, $03, nRst, nEb2
	smpsAlterVol        $FB
	dc.b	nE1, nRst, $15
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE2, $03, nRst, $09, nE2, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	nC2, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $18
	smpsAlterVol        $FE
	dc.b	nE2, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nE1, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	nE2, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	nE1, $03, nRst, $12
	smpsAlterVol        $08
	dc.b	nE2, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $18, nC2, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09, nE1, $03, nRst, $18
	smpsAlterVol        $08
	dc.b	nE2, $03, nRst, $06
	smpsAlterVol        $F7
	dc.b	nE2, $03, nRst, $09
	smpsAlterVol        $FB
	dc.b	nAb2, $03
	smpsAlterVol        $05
	dc.b	nE2, nRst, $15
	smpsAlterVol        $FB
	dc.b	nC2, $03, nRst, $06, nAb2, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	nC2, $03, nRst, $06, nAb2, $03, nRst, $09, nAb2, $03, nRst, $18
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $12
	smpsAlterVol        $F2
	dc.b	nAb2, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $09
	smpsAlterVol        $0C
	dc.b	nE2, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	nAb2, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $09, nE1, $03, nRst, $18
	smpsAlterVol        $08
	dc.b	nE2, $03, nRst, $06
	smpsAlterVol        $F7
	dc.b	nE2, $03, nRst, $09, nE1, $03, $03, nRst
	smpsAlterVol        $FB
	dc.b	nC2, nE1, nRst, $7F, $7F, $7F, $03
	smpsJump            SB_City_PWM_Jump01

; FM4 Data
SB_City_PWM_FM4:
	smpsSetvoice        $01

SB_City_PWM_Jump00:
	dc.b	nRst, $7F, $7F, $7F, $0F, nE2, $03, nRst, $2D
	smpsAlterVol        $FA
	dc.b	nE1, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $02
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	nE1, $03, nRst, $2D, nE1, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	nE2, $03, nRst, $5D
	smpsAlterVol        $F4
	dc.b	nAb2, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	nE1, $03, nRst, $2D
	smpsAlterVol        $08
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $F2
	dc.b	nC2, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $FE
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $F4
	dc.b	nAb2, $03, nRst, $15, nAb2, $03, nRst, $15, nAb2, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	nE1, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $F4
	dc.b	nAb2, $03, nRst, $2D, nAb2, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	nE2, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	nE1, $03, nRst, $2D
	smpsAlterVol        $FA
	dc.b	nAb2, $03, nRst, $15
	smpsAlterVol        $05
	dc.b	nE2, $03, nRst
	smpsAlterVol        $FB
	dc.b	nE2, nAb2, nRst, $7F, $7F, $7F, $03
	smpsAlterVol        $0C
	smpsJump            SB_City_PWM_Jump00

; DAC Data
SB_City_PWM_DAC:
	smpsStop

SB_City_PWM_Voices:
;	Voice $00
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

;	Voice $01
;	$04
;	$71, $41, $31, $31, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$23, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

