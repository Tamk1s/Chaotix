Target	EQU	$40000

Test_Header:
	smpsHeaderVoice	Test_Patches,Target
	smpsHeaderChan	6,3
	;sHeaderTempo	$02, $05
	smpsHeaderTempo	$02, $23
	smpsHeaderFM	Test_FM1, Target, $00, $00
	smpsHeaderFM	Test_FM2, Target, $00, $00
	smpsHeaderFM	Test_FM3, Target, $00, $00
	smpsHeaderFM	Test_FM4, Target, $00, $00
	smpsHeaderFM	Test_FM5, Target, $00, $00
	smpsHeaderFM	Test_FM6, Target, $00, $00
	smpsHeaderPSG	Test_PSG1, Target, $00, $00, $00, $00
	smpsHeaderPSG	Test_PSG2, Target, $00, $00, $00, $00
	smpsHeaderPSG	Test_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	Test_PWM1, Target, $00, $1A	
	smpsHeaderPWM	Test_PWM2, Target, $00, $1A	
	smpsHeaderPWM	Test_PWM3, Target, $00, $1A	
	smpsHeaderPWM	Test_PWM4, Target, $00, $1A	

Test_FM1:
Test_FM2:
Test_FM3:
Test_FM4:
Test_FM5:
Test_FM6:
	smpsStop
	;smpsJump	Test_FM1,Target
	
Test_PSG1:
	smpsPSGvoice	$00
	dc.b nC1, $0C, nCs1, nD1, nEb1, nE1, nF1, nFs1
	dc.b nG1, nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2
	dc.b nEb2, nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2
	dc.b nB2
	smpsPSGvoice	$01
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$02
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$03
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$04
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$05
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$06
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$07
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$08
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$09
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$0A
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$0B
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$0C
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$0D
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsPSGvoice	$0E
	dc.b nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1, nG1
	dc.b nAb1, nA1, nBb1, nB1, nC2, nCs2, nD2, nEb2
	dc.b nE2, nF2, nFs2, nG2, nAb2, nA2, nBb2, nB2
	smpsJump		Test_PSG1,Target
	
Test_PSG2:
Test_PSG3:
	smpsStop

Test_PWM1:
	dc.b $80, $0C, $81, $82, $18, $83, $24, $84
	dc.b $0C, $85, $86, $87, $88, $89, $8A, $8B
	dc.b $8C, $8D, $8E, $18, $8F, $0C, $90, $91
	dc.b $24, $92, $0C, $93, $94, $18, $95, $24
	dc.b $96, $0C, $97, $24, $98, $0C, $99, $18
	dc.b $9A, $9B, $9C, $9D
	smpsStop
	;smpsJump	Test_PWM1,Target
	
Test_PWM2:
Test_PWM3:
Test_PWM4:
	smpsStop

Test_Patches:
	even
