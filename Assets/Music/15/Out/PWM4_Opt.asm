HDNR1S_PWM4:
	dc.b	nRst, $06, pCrashCymb, $12, nRst, $55, $55, $07
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$06
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$FA

HDNR1S_PWM4_Loop1:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0A, HDNR1S_PWM4_Loop1, Target
	dc.b	pClosedHH, $01, nRst, $1A, pSplashCymb, $09, $03

HDNR1S_PWM4_Jump1:
	dc.b	nRst, $0F

HDNR1S_PWM4_Loop3:
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$F7

HDNR1S_PWM4_Loop2:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0C, HDNR1S_PWM4_Loop2, Target
	dc.b	pClosedHH, $01, nRst, $1D
	smpsLoop		$01, $02, HDNR1S_PWM4_Loop3, Target
	dc.b	pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$F7

HDNR1S_PWM4_Loop4:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0A, HDNR1S_PWM4_Loop4, Target
	dc.b	pClosedHH, $01, nRst, $38
	smpsAlterVol		$F9
	dc.b	pAKick, $06, nRst, $09
	smpsAlterVol		$07

HDNR1S_PWM4_Loop5:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $1C, HDNR1S_PWM4_Loop5, Target
	dc.b	pClosedHH, $01, nRst, $1D, pClosedHH, $01, nRst, $02
	smpsAlterVol		$09
	dc.b	pFingSnap, $06, nRst, $09
	smpsAlterVol		$F7

HDNR1S_PWM4_Loop6:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $0C, HDNR1S_PWM4_Loop6, Target
	dc.b	pClosedHH, $01, nRst, $20
	smpsAlterVol		$F9
	dc.b	pAKick, $06, nRst, $09
	smpsAlterVol		$07

HDNR1S_PWM4_Loop7:
	dc.b	pClosedHH, $01, nRst, $0B
	smpsLoop		$00, $2A, HDNR1S_PWM4_Loop7, Target
	dc.b	pClosedHH, $01, nRst, $1A
	smpsAlterVol		$FC

HDNR1S_PWM4_Loop8:
	dc.b	pAKick, $03, nRst, $02, pAKick, $03, nRst, $01
	dc.b	pAKick, $03, nRst, $0C
	smpsLoop		$00, $02, HDNR1S_PWM4_Loop8, Target
	smpsAlterVol		$04
	dc.b	pCrashCymb
	smpsJump		HDNR1S_PWM4_Jump1, Target