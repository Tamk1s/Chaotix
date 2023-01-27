HDNR1S_PWM4:
	smpsPan		panCenter
;HDNR1S_PWM4_Loop1:
	;sModOff
	;smpsLoop		$00, $0D, HDNR1S_PWM4_Loop1, Target
	dc.b nRst, $06

HDNR1S_PWM4_Loop2:
	dc.b pOrchHitHi, $09, nRst, $03, pOrchHitMed, $09, nRst, $03
	dc.b pOrchHitLo, $09, nRst, $03, pOrchHitLower, $09, nRst, $03
	smpsLoop		$00, $03, HDNR1S_PWM4_Loop2, Target
	dc.b pOrchHitLo, $06, pOrchHitMed, pOrchHitLower, pOrchHitMed, $07, nRst, $1A
	smpsAlterVol		$02
	dc.b pClosedHH, $01, nRst, $02
	smpsAlterVol		$06
	dc.b pASnare, $06, nRst, $09
	smpsAlterVol		$FA

HDNR1S_PWM4_Loop3:
	dc.b pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0A, HDNR1S_PWM4_Loop3, Target
	dc.b pClosedHH, $01, nRst, $1A, pSplashCymb, $09, $03

HDNR1S_PWM4_Jump1:
	dc.b nRst, $0F

HDNR1S_PWM4_Loop5:
	dc.b pClosedHH, $01, nRst, $02
	smpsAlterVol		$08
	dc.b pASnare, $06, nRst, $09
	smpsAlterVol		$F8

HDNR1S_PWM4_Loop4:
	dc.b pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0C, HDNR1S_PWM4_Loop4, Target
	dc.b pClosedHH, $01, nRst, $1D
	smpsLoop		$01, $02, HDNR1S_PWM4_Loop5, Target
	dc.b pClosedHH, $01, nRst, $02
	smpsAlterVol		$08
	dc.b pASnare, $06, nRst, $09
	smpsAlterVol		$F8

HDNR1S_PWM4_Loop6:
	dc.b pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0A, HDNR1S_PWM4_Loop6, Target
	dc.b pClosedHH, $01, nRst, $38
	smpsAlterVol		$F9
	dc.b pAKick, $06, nRst, $09
	smpsAlterVol		$07

HDNR1S_PWM4_Loop7:
	dc.b pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $1C, HDNR1S_PWM4_Loop7, Target
	dc.b pClosedHH, $01, nRst, $1D, pClosedHH, $01, nRst, $02
	smpsAlterVol		$08
	dc.b pASnare, $06, nRst, $09
	smpsAlterVol		$F8

HDNR1S_PWM4_Loop8:
	dc.b pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0C, HDNR1S_PWM4_Loop8, Target
	dc.b pClosedHH, $01, nRst, $20
	smpsAlterVol		$F9
	dc.b pAKick, $06, nRst, $09
	smpsAlterVol		$07

HDNR1S_PWM4_Loop9:
	dc.b pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $2A, HDNR1S_PWM4_Loop9, Target
	dc.b pClosedHH, $01, nRst, $1A, pOrchHitLo, $05, $04, $09
	dc.b nRst, $06, pOrchHitMed, $05, $04, $09, nRst, $06
	dc.b pOrchHitHi, $05, $04, $03
	smpsAlterNote	$00
	smpsJump		HDNR1S_PWM4_Jump1, Target