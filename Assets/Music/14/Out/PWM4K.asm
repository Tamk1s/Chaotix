Maniax_PWM4:
	dc.b nRst, $7F, $47, pB0, $03, nRst, $21, pB0
	dc.b $03, nRst, $09, pB0, $03, nRst, $21, pB0
	dc.b $03, nRst, $09, pB0, $03, nRst, $21, pB0
	dc.b $03, nRst, $03, $30

Maniax_JumpP4:
	smpsAlterVol		$FD
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, nRst, $03
	dc.b p98, $03, p9B, $03, p98, $03, p99, $03
	dc.b p98, $03, p9B, $03, p98, $03, p99, $03
	dc.b p98, $03, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b nRst, $03, p98, $03, p9B, $03, p98, $03
	dc.b p99, $03, p98, $03, p9B, $03, nRst, $09
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $36, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06
	smpsAlterVol		$44
	dc.b p9B, $01, sHold, $01
	smpsAlterVol		$FF
	dc.b sHold, $01
	smpsAlterVol		$F1
	dc.b p9B, $01, sHold, $01
	smpsAlterVol		$FF
	dc.b sHold, $01
	smpsAlterVol		$F7
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$F9
	dc.b p9B, $01, sHold, $01
	smpsAlterVol		$FF
	dc.b sHold, $01
	smpsAlterVol		$FB
	dc.b p9B, $01
	smpsAlterVol		$FF
	dc.b sHold, $01, sHold, $01
	smpsAlterVol		$FB
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$FC
	dc.b p9B, $01, sHold, $01
	smpsAlterVol		$FF
	dc.b sHold, $01
	smpsAlterVol		$FD
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$FF
	smpsAlterVol		$FD
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$FD
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$FD
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$FE
	smpsAlterVol		$FF
	dc.b p9B, $01, sHold, $01, sHold, $01
	smpsAlterVol		$FE
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p9B, $02
	smpsAlterVol		$77
	dc.b p9B, $01
	smpsAlterVol		$89
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $03, nRst, $03, p9B, $06
	dc.b p99, $03, p9B, $06, nRst, $09, p9B, $06
	dc.b nRst, $06, p99, $06, p99, $03, nRst, $03
	dc.b p9B, $06, p99, $03, p9B, $06, nRst, $09
	dc.b p9B, $06, nRst, $06, p99, $06, p99, $03
	dc.b nRst, $03, p9B, $06, p99, $03, p9B, $06
	dc.b nRst, $09, p9B, $06, nRst, $06, p99, $06
	dc.b p99, $03, nRst, $03, p9B, $06, p99, $03
	dc.b p9B, $06, nRst, $09, p9B, $06, nRst, $06
	dc.b p99, $06, p99, $06, p99, $03, p99, $03
	dc.b p9D, $03, nRst, $09, p99, $06, p9D, $06
	dc.b p99, $03, p9D, $03, p99, $06, p99, $06
	dc.b p99, $03, p99, $03, p9D, $03, nRst, $09
	dc.b p99, $06, p9D, $06, p99, $03, p9D, $03
	dc.b p99, $06, p99, $06, p99, $03, p98, $03
	dc.b p99, $03, nRst, $09, p99, $06, p99, $03
	dc.b p98, $03, p99, $03, p9D, $03, p99, $06
	dc.b p99, $06, p99, $03, p98, $03, p99, $03
	dc.b nRst, $03, p9D, $03, p98, $03, p99, $03
	dc.b p98, $03, p9D, $03, p98, $03, p99, $03
	dc.b p98, $03, p99, $03, p98, $03, p99, $03
	dc.b nRst, $24, p9D, $03, p98, $03, p99, $03
	dc.b p98, $03, nRst, $27, p99, $03, p98, $03
	dc.b p99, $03, nRst, $45, p9D, $03, p9D, $03
	dc.b p99, $03, p99, $03, p9D, $03, p9D, $03
	dc.b p99, $06, p99, $06, p99, $03, p99, $03
	dc.b p9D, $03, nRst, $09, p99, $06, p9D, $06
	dc.b p99, $03, p9D, $03, p99, $06, p99, $06
	dc.b p99, $03, p99, $03, p9D, $03, nRst, $09
	dc.b p99, $06, p9D, $06, p99, $03, p9D, $03
	dc.b p99, $06, p99, $06, p99, $03, p98, $03
	dc.b p99, $03, nRst, $09, p99, $06, p99, $03
	dc.b p98, $03, p99, $03, p9D, $03, nRst, $30
	smpsAlterVol		$03
	smpsJump		Maniax_JumpP4,Target