Test_Header:
	sHeaderInit
	sHeaderPatch	Test_Patches
	sHeaderCh	$01, $01
	sHeaderTempo	$02, $05
	sHeaderDAC	Test_DAC
	sHeaderPSG	Test_PSG1, $00, $06, $00, v00

Test_DAC:
	dc.b dKick, $0C, dSnare, dTimpani, $18, $84, $24, $85
	dc.b $0C, $86, $87, dHiTimpani, dMidTimpani, dLowTimpani, dFloorTimpani, $8C
	dc.b $8D, $8E, $8F, $18, $8E, $0C, $8F, $8C
	dc.b $24
	sLoop		$00, $0F, Test_DAC

Test_Jump1:
	dc.b dKick, $0C, dSnare, dTimpani, $18, $84, $24, $85
	dc.b $0C, $86, $87, dHiTimpani, dMidTimpani, dLowTimpani, dFloorTimpani, $8C
	dc.b $8D, $8E, $8F, $18, $8E, $0C, $8F, $8C
	dc.b $24
	sJump		Test_Jump1

Test_PSG1:
	sVolEnvPSG	v00
	dc.b nC1, $0C, nCs1, nD1, nEb1, nE1, nF1, nFs1
	dc.b nG1, nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2
	dc.b nEb2, nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2
	dc.b nB2
	sVolEnvPSG	v01
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v02
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2
	sVolEnvPSG	v08
	dc.b nEb2, nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2
	dc.b nB2
	sVolEnvPSG	v03
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v04
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v05
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v06
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v07
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2
	sVolEnvPSG	v08
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	dc.b nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v08
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	v09
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	$0A
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	$0B
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	$0C
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	$0D
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sVolEnvPSG	$0E
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	sJump		Test_PSG1

Test_Patches:
