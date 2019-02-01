Maniax_PWM3:
	dc.b nRst, $06, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $21, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $09, pA1, $03, nRst, $09, pA1, $03
	dc.b nRst, $33

Maniax_JumpP3:
	dc.b pA6, $03, nRst, $7F, $3E, pA6, $03, nRst
	dc.b $7F, $3E, pA6, $03, nRst, $03, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $03, pA6, $03
	dc.b nRst, $03, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $33, pA6, $03
	dc.b nRst, $03, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $03, pA6, $03, nRst, $03, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $03, pB0, $03, nRst, $09, pB0, $03
	dc.b nRst, $09, pB0, $03, nRst, $03, pB0, $03
	dc.b nRst, $27
	smpsAlterVol		$FD
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C5
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C5
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C5
	dc.b p9D, $02
	smpsAlterVol		$3B
	dc.b p9D, $01
	smpsAlterVol		$C8
	dc.b pA6, $03, nRst, $7F, $3E, pA6, $03, nRst
	dc.b $7F, $3E, pA6, $03, nRst, $7F, $3E, pA6
	dc.b $03, nRst, $7F, $3E, pA6, $03, nRst, $7F
	dc.b $3E, pA6, $0C, nRst, $7F, $35, pA6, $03
	dc.b nRst, $7F, $3E
	smpsJump		Maniax_JumpP3,Target