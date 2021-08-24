SB_City_PWM1:
	dc.b	pEKick, $03, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pClosedHH, nRst, pOpenHH
	dc.b	pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pEKick, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pClosedHH
	dc.b	pClap, pOpenHH, nRst, pClap, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F2
	dc.b	pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick

SB_City_PWM1_Loop03:
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH
	smpsLoop            $00, $02, SB_City_PWM1_Loop03, Target
	dc.b	pClosedHH, pOpenHH, pClosedHH, pClosedHH

SB_City_PWM1_Loop04:
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick
	smpsLoop            $00, $03, SB_City_PWM1_Loop04, Target
	dc.b	pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pEKick, pClosedHH, pEKick
	dc.b	pClosedHH, pEKick, pClosedHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, nRst, $0C, pEHiHat, $03
	dc.b	nRst, $0C, pEHiHat, $03, nRst
	smpsAlterVol        $08
	dc.b	pESnare
	smpsAlterVol        $FD
	dc.b	pClap, nRst, $09
	smpsAlterVol        $FB
	dc.b	pEKick, $03, pClosedHH, pOpenHH, pClosedHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA

SB_City_PWM1_Loop05:
	dc.b	pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	smpsLoop            $00, $03, SB_City_PWM1_Loop05, Target
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4

SB_City_PWM1_Loop06:
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pEKick
	smpsLoop            $00, $02, SB_City_PWM1_Loop06, Target
	dc.b	pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $05
	dc.b	pEHiHat
	smpsAlterVol        $FB
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F7
	dc.b	pEHiHat
	smpsAlterVol        $FB
	dc.b	pClosedHH
	smpsAlterVol        $05
	dc.b	pEKick
	smpsAlterVol        $FB
	dc.b	pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4

SB_City_PWM1_Loop07:
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH
	smpsLoop            $00, $02, SB_City_PWM1_Loop07, Target
	dc.b	pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F2
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH

SB_City_PWM1_Loop08:
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $06
	dc.b	pEHiHat
	smpsAlterVol        $FA
	dc.b	pEKick
	smpsLoop            $00, $02, SB_City_PWM1_Loop08, Target
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pEKick

SB_City_PWM1_Loop09:
	dc.b	pClosedHH, pEKick, pClosedHH, pOpenHH
	smpsLoop            $00, $03, SB_City_PWM1_Loop09, Target
	dc.b	pClosedHH, pClosedHH

SB_City_PWM1_Loop0A:
	dc.b	pClosedHH, pOpenHH, pClosedHH, pEKick
	smpsLoop            $00, $03, SB_City_PWM1_Loop0A, Target
	dc.b	pClosedHH, pOpenHH
	smpsAlterVol        $0C
	dc.b	pESnare
	smpsAlterVol        $F4
	dc.b	pClosedHH, pClosedHH, pOpenHH, pClosedHH, pClosedHH, pClosedHH, pOpenHH, pClosedHH, pEKick, pClosedHH, pOpenHH
	smpsAlterVol        $05
	dc.b	pEHiHat
	smpsAlterVol        $FB
	dc.b	pClosedHH, pClosedHH, pOpenHH
	smpsAlterVol        $0E
	dc.b	pESnare
	smpsAlterVol        $F2
	dc.b	pEKick, pClosedHH, pEHiHat, pEKick, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap
	dc.b	pClosedHH, nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, nRst, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pEKick
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pEKick, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClap, nRst, pOpenHH, pClap, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, pClap, pClosedHH
	dc.b	nRst, pOpenHH, pClap
	smpsAlterVol        $08
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH, pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH
	smpsAlterVol        $07
	dc.b	pClap
	smpsAlterVol        $F9
	dc.b	pClosedHH
	smpsAlterVol        $07
	dc.b	pClap, pClap, nRst
	smpsAlterVol        $01
	dc.b	pClosedHH
	smpsAlterVol        $F8
	dc.b	$03, pOpenHH, pClosedHH
	smpsJump            SB_City_PWM1, Target

SB_City_PWM2:
	dc.b	pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $15
	dc.b	pClosedHH, $03

SB_City_PWM2_Loop00:
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15, pEKick, $03
	smpsLoop            $00, $02, SB_City_PWM2_Loop00, Target
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $0F, pOpenHH, $03
	dc.b	nRst, pClosedHH, nRst, $09, pClap, $03, nRst, $09, pClosedHH, $03, nRst, $15
	dc.b	pClosedHH, $03, nRst, $09, pClap, $03, nRst, $09, pEKick, $03, nRst, $15
	dc.b	pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15
	dc.b	pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $08
	dc.b	pClosedHH, $03, nRst
	smpsAlterVol        $F8
	dc.b	pEKick, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick
	dc.b	$03, nRst, $06, pClosedHH, $03, $03, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06, pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pEKick, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pEKick, nRst, $09, pEKick, $03, nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH
	dc.b	$03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pEKick, nRst, $09, pEKick, $03

SB_City_PWM2_Loop01:
	dc.b	nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH
	smpsLoop            $00, $02, SB_City_PWM2_Loop01, Target
	dc.b	nRst, pOpenHH, nRst, pEKick, nRst, $09
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst, pOpenHH, nRst, pEKick, nRst, $06, pClosedHH
	dc.b	$03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pOpenHH, nRst, $0F
	smpsAlterVol        $05
	dc.b	pClap, $03, nRst, $0C
	smpsAlterVol        $03
	dc.b	pESnare, $03, nRst
	smpsAlterVol        $F8
	dc.b	pEHiHat
	smpsAlterVol        $08
	dc.b	pESnare, nRst, $09
	smpsAlterVol        $F8
	dc.b	pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $06, pClosedHH, $03, pEKick, nRst
	dc.b	$06, pClosedHH, $03, $03, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, $09, pClosedHH, $03, nRst
	dc.b	$09, pEKick, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, $06, pClosedHH, $03
	dc.b	$03, nRst, $09, pEKick, $03, nRst, $09, pClosedHH, $03, nRst, $09, pEKick
	dc.b	$03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pEKick, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, pOpenHH, nRst, pClosedHH, nRst
	dc.b	pEKick, nRst
	smpsAlterVol        $06
	dc.b	pEHiHat, nRst, $06
	smpsAlterVol        $06
	dc.b	pESnare, $03
	smpsAlterVol        $F4
	dc.b	pEKick, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03
	smpsAlterVol        $F4
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, $03, nRst, $06
	smpsAlterVol        $05
	dc.b	pEHiHat, $03
	smpsAlterVol        $FB
	dc.b	pEKick, nRst, pOpenHH, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06, pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pEKick, nRst, $06, pClosedHH, $03, pEKick, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, pEKick, nRst, $09, pClosedHH, $03, nRst
	dc.b	$09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06, pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03
	smpsAlterVol        $F4
	dc.b	pEKick, nRst, $09, pEKick, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pClosedHH, nRst, pEKick, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $06, pESnare, $03
	smpsAlterVol        $F4
	dc.b	pClosedHH, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03
	smpsAlterVol        $FA
	dc.b	pClosedHH, nRst, pOpenHH, nRst, pClosedHH, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0E
	dc.b	pESnare, $03
	smpsAlterVol        $F2
	dc.b	pEKick, nRst, pEKick, nRst, pClosedHH, nRst, pEKick, nRst
	smpsAlterVol        $0C
	dc.b	pESnare, nRst, $06, pESnare, $03
	smpsAlterVol        $F4
	dc.b	pClosedHH, nRst, $06, pClosedHH, $03, pEKick, nRst, pEKick, nRst, pEKick, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, pEKick, nRst, $06, pClosedHH, $03, $03, nRst, pOpenHH, pESnare, pEKick
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pEKick, $03, nRst, $15, pClosedHH, $03
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15, pEKick, $03
	dc.b	nRst, $09, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $15, pClosedHH, $03
	dc.b	nRst, $09, pClap, $03, nRst, $09, pClosedHH, $03, nRst, $0F, pOpenHH, $03
	dc.b	nRst, $0F, pClosedHH, $03

SB_City_PWM2_Loop02:
	dc.b	nRst, $2D, pClap, $03
	smpsLoop            $00, $03, SB_City_PWM2_Loop02, Target
	dc.b	nRst, $0F, pOpenHH, $03, nRst, pClap, nRst, $09
	smpsJump            SB_City_PWM2, Target

SB_City_PWM3:
	dc.b	nRst, $7F, $7F, $7F, $0F, pEKick, $03, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $18, pEKick, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $12, pEHiHat, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $06, pESnare, $03, nRst, $09, pESnare, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	pEKick, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $09, pESnare, $03, nRst, $18
	smpsAlterVol        $FC
	dc.b	pESnare, $03, nRst, $0C
	smpsAlterVol        $FD
	dc.b	pClap, $03, nRst, pClap
	smpsAlterVol        $FB
	dc.b	pEHiHat, nRst, $15
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $09, pESnare, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	pEKick, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $FE
	dc.b	pESnare, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pEHiHat, $03, nRst, $12
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $18, pEKick, $03, nRst, $12
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09, pEHiHat, $03, nRst, $18
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $06
	smpsAlterVol        $F7
	dc.b	pESnare, $03, nRst, $09
	smpsAlterVol        $FB
	dc.b	pClosedHH, $03
	smpsAlterVol        $05
	dc.b	pESnare, nRst, $15
	smpsAlterVol        $FB
	dc.b	pEKick, $03, nRst, $06, pClosedHH, $03, nRst, $09
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pEKick, $03, nRst, $06, pClosedHH, $03, nRst, $09, pClosedHH, $03, nRst, $18
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $12
	smpsAlterVol        $F2
	dc.b	pClosedHH, $03, nRst, $18
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $09
	smpsAlterVol        $0C
	dc.b	pESnare, $03, nRst, $18
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $12
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $18
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $09, pEHiHat, $03, nRst, $18
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $06
	smpsAlterVol        $F7
	dc.b	pESnare, $03, nRst, $09, pEHiHat, $03, $03, nRst
	smpsAlterVol        $FB
	dc.b	pEKick, pEHiHat, nRst, $7F, $7F, $7F, $03
	smpsJump            SB_City_PWM3, Target

SB_City_PWM4:
	dc.b	nRst, $7F, $7F, $7F, $0F, pESnare, $03, nRst, $2D
	smpsAlterVol        $FA
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $02
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	pEHiHat, $03, nRst, $2D, pEHiHat, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $5D
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $08
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F2
	dc.b	pEKick, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $FE
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $15, pClosedHH, $03, nRst, $15, pClosedHH, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $06
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F4
	dc.b	pClosedHH, $03, nRst, $2D, pClosedHH, $03, nRst, $2D
	smpsAlterVol        $0E
	dc.b	pESnare, $03, nRst, $2D
	smpsAlterVol        $F8
	dc.b	pEHiHat, $03, nRst, $2D
	smpsAlterVol        $FA
	dc.b	pClosedHH, $03, nRst, $15
	smpsAlterVol        $05
	dc.b	pESnare, $03, nRst
	smpsAlterVol        $FB
	dc.b	pESnare, pClosedHH, nRst, $7F, $7F, $7F, $03
	smpsAlterVol        $0C
	smpsJump            SB_City_PWM4, Target