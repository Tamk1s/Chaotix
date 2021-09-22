; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Fri Sep 10 2021, 04:03:45
; -------------------------------------------------------

nzndreboot_Header:
	smpsHeaderVoice	nzndreboot_Voices
	smpsHeaderChan	6,3
	smpsHeaderTempo	$3, $9
	dc.l $000900F2	; This song has no DAC or PWM
	smpsHeaderFM	nzndreboot_FM1,	$0, $10
	smpsHeaderFM	nzndreboot_FM2,	$0, $10
	smpsHeaderFM	nzndreboot_FM3,	$0, $10
	smpsHeaderFM	nzndreboot_FM4,	$0, $10
	smpsHeaderFM	nzndreboot_FM5,	$0, $10
	smpsHeaderPSG	nzndreboot_PSG1,	$dc, $2, $0
	smpsHeaderPSG	nzndreboot_PSG2,	$dc, $2, $0
	smpsHeaderPSG	nzndreboot_PSG3,	$dc, $2, $0

nzndreboot_FM1:
	smpsCall	nzndreboot_FM1_p0
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p2
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p4
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p2
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p4
	smpsCall	nzndreboot_FM1_p9
	smpsCall	nzndreboot_FM1_p9
	smpsCall	nzndreboot_FM1_p9
	smpsCall	nzndreboot_FM1_p9
	smpsCall	nzndreboot_FM1_p9
	smpsCall	nzndreboot_FM1_p9
	smpsCall	nzndreboot_FM1_pf
	smpsCall	nzndreboot_FM1_p10
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p2
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p2
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p13
	smpsCall	nzndreboot_FM1_p1
	smpsCall	nzndreboot_FM1_p13
	smpsJump	nzndreboot_FM1

nzndreboot_FM2:
	smpsCall	nzndreboot_FM2_p0
	smpsCall	nzndreboot_FM2_p1
	smpsCall	nzndreboot_FM2_p2
	smpsCall	nzndreboot_FM2_p3
	smpsCall	nzndreboot_FM2_p4
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p3
	smpsCall	nzndreboot_FM2_pa
	smpsCall	nzndreboot_FM2_p3
	smpsCall	nzndreboot_FM2_pa
	smpsCall	nzndreboot_FM2_p3
	smpsCall	nzndreboot_FM2_pa
	smpsCall	nzndreboot_FM2_pf
	smpsCall	nzndreboot_FM2_p10
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p5
	smpsCall	nzndreboot_FM2_p14
	smpsCall	nzndreboot_FM2_p5
	smpsJump	nzndreboot_FM2

nzndreboot_FM3:
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p2
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p4
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p2
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p8
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p0
	smpsCall	nzndreboot_FM3_p10
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p2
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p2
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p13
	smpsCall	nzndreboot_FM3_p1
	smpsCall	nzndreboot_FM3_p13
	smpsJump	nzndreboot_FM3

nzndreboot_FM4:
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p2
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p4
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p2
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p8
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p0
	smpsCall	nzndreboot_FM4_p10
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p2
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p2
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p13
	smpsCall	nzndreboot_FM4_p1
	smpsCall	nzndreboot_FM4_p13
	smpsJump	nzndreboot_FM4

nzndreboot_FM5:
	smpsCall	nzndreboot_FM5_p0
	smpsCall	nzndreboot_FM5_p0
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p5
	smpsCall	nzndreboot_FM5_p6
	smpsCall	nzndreboot_FM5_p7
	smpsCall	nzndreboot_FM5_p8
	smpsCall	nzndreboot_FM5_p9
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_p2
	smpsCall	nzndreboot_FM5_pf
	smpsCall	nzndreboot_FM5_p10
	smpsCall	nzndreboot_FM5_p5
	smpsCall	nzndreboot_FM5_p6
	smpsCall	nzndreboot_FM5_p7
	smpsCall	nzndreboot_FM5_p8
	smpsCall	nzndreboot_FM5_p12
	smpsCall	nzndreboot_FM5_p13
	smpsCall	nzndreboot_FM5_p12
	smpsCall	nzndreboot_FM5_p15
	smpsJump	nzndreboot_FM5

nzndreboot_PSG1:
	smpsCall	nzndreboot_PSG1_p0
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p2
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p4
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p2
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p8
	smpsCall	nzndreboot_PSG1_p9
	smpsCall	nzndreboot_PSG1_p9
	smpsCall	nzndreboot_PSG1_p9
	smpsCall	nzndreboot_PSG1_pc
	smpsCall	nzndreboot_PSG1_pd
	smpsCall	nzndreboot_PSG1_pd
	smpsCall	nzndreboot_PSG1_pf
	smpsCall	nzndreboot_PSG1_pd
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p2
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p2
	smpsCall	nzndreboot_PSG1_p1
	smpsCall	nzndreboot_PSG1_p13
	smpsCall	nzndreboot_PSG1_p9
	smpsCall	nzndreboot_PSG1_p15
	smpsJump	nzndreboot_PSG1

nzndreboot_PSG2:
	smpsCall	nzndreboot_PSG2_p0
	smpsCall	nzndreboot_PSG2_p1
	smpsCall	nzndreboot_PSG2_p2
	smpsCall	nzndreboot_PSG2_p3
	smpsCall	nzndreboot_PSG2_p4
	smpsCall	nzndreboot_PSG2_p3
	smpsCall	nzndreboot_PSG2_p2
	smpsCall	nzndreboot_PSG2_p3
	smpsCall	nzndreboot_PSG2_p8
	smpsCall	nzndreboot_PSG2_p9
	smpsCall	nzndreboot_PSG2_p9
	smpsCall	nzndreboot_PSG2_p9
	smpsCall	nzndreboot_PSG2_pc
	smpsCall	nzndreboot_PSG2_pd
	smpsCall	nzndreboot_PSG2_pd
	smpsCall	nzndreboot_PSG2_pf
	smpsCall	nzndreboot_PSG2_pd
	smpsCall	nzndreboot_PSG2_p3
	smpsCall	nzndreboot_PSG2_p2
	smpsCall	nzndreboot_PSG2_p3
	smpsCall	nzndreboot_PSG2_p2
	smpsCall	nzndreboot_PSG2_p3
	smpsCall	nzndreboot_PSG2_p13
	smpsCall	nzndreboot_PSG2_p9
	smpsCall	nzndreboot_PSG2_p15
	smpsJump	nzndreboot_PSG2

nzndreboot_PSG3:
	smpsCall	nzndreboot_PSG3_p0
	smpsCall	nzndreboot_PSG3_p0
	smpsCall	nzndreboot_PSG3_p0
	smpsCall	nzndreboot_PSG3_p0
	smpsCall	nzndreboot_PSG3_p0
	smpsCall	nzndreboot_PSG3_p5
	smpsCall	nzndreboot_PSG3_p6
	smpsCall	nzndreboot_PSG3_p6
	smpsCall	nzndreboot_PSG3_p8
	smpsCall	nzndreboot_PSG3_p9
	smpsCall	nzndreboot_PSG3_p9
	smpsCall	nzndreboot_PSG3_p9
	smpsCall	nzndreboot_PSG3_p9
	smpsCall	nzndreboot_PSG3_p9
	smpsCall	nzndreboot_PSG3_p9
	smpsCall	nzndreboot_PSG3_pf
	smpsCall	nzndreboot_PSG3_p10
	smpsCall	nzndreboot_PSG3_p5
	smpsCall	nzndreboot_PSG3_p6
	smpsCall	nzndreboot_PSG3_p6
	smpsCall	nzndreboot_PSG3_p6
	smpsCall	nzndreboot_PSG3_p6
	smpsCall	nzndreboot_PSG3_p13
	smpsCall	nzndreboot_PSG3_p0
	smpsCall	nzndreboot_PSG3_p0
	smpsJump	nzndreboot_PSG3


; Pattern data for FM1
nzndreboot_FM1_p0:
	dc.b		$80,$4
	smpsFMvoice	$1
	dc.b		$be
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be
	smpsReturn

nzndreboot_FM1_p1:
	dc.b		$80,$4
	smpsFMvoice	$1
	dc.b		$be
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$4
	dc.b		$be
	dc.b		$bc,$2
	dc.b		$be,$6
	dc.b		$c1,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$6
	dc.b		$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$6
	dc.b		$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$6
	dc.b		$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1
	smpsReturn

nzndreboot_FM1_p2:
	dc.b		$80,$4
	dc.b		$ba
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$bc,$4
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$bc,$6
	dc.b		$4
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$bc,$6
	dc.b		$4
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$bc,$6
	dc.b		$4
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$bc
	smpsReturn

nzndreboot_FM1_p4:
	dc.b		$80,$4
	dc.b		$ba
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b9,$2
	dc.b		$ba,$6
	dc.b		$bc,$4
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$bc,$6
	dc.b		$4
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$bc
	dc.b		$80,$10
	dc.b		$80
	smpsReturn

nzndreboot_FM1_p9:
	smpsFMvoice	$7
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	smpsReturn

nzndreboot_FM1_pf:
	dc.b		$b5,$2
	dc.b		$b5
	dc.b		$b5,$4
	dc.b		$b5
	dc.b		$b5,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b5
	dc.b		$b3
	dc.b		$b5,$2
	dc.b		$b5
	dc.b		$b5,$4
	dc.b		$b5
	dc.b		$b5,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b5
	dc.b		$b3
	dc.b		$b5,$2
	dc.b		$b5
	dc.b		$b5,$4
	dc.b		$b5
	dc.b		$b5,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b5
	dc.b		$b3
	dc.b		$b5,$2
	dc.b		$b5
	dc.b		$b5,$4
	dc.b		$b5
	dc.b		$b5,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b5
	dc.b		$b3
	smpsReturn

nzndreboot_FM1_p10:
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	dc.b		$b7,$2
	dc.b		$b7
	dc.b		$b7,$4
	dc.b		$b7
	dc.b		$b7,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$b7
	dc.b		$b5
	dc.b		$80,$10
	dc.b		$80
	smpsReturn

nzndreboot_FM1_p13:
	dc.b		$80,$4
	dc.b		$b8
	dc.b		$b8
	dc.b		$b7,$2
	dc.b		$b8,$6
	dc.b		$4
	dc.b		$b8
	dc.b		$b7,$2
	dc.b		$b8,$6
	dc.b		$4
	dc.b		$b8
	dc.b		$b7,$2
	dc.b		$b8,$6
	dc.b		$4
	dc.b		$b8
	dc.b		$b7,$2
	dc.b		$b8,$6
	dc.b		$ba,$4
	dc.b		$ba
	dc.b		$b8,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b8,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b8,$2
	dc.b		$ba,$6
	dc.b		$4
	dc.b		$ba
	dc.b		$b8,$2
	dc.b		$ba
	smpsReturn

; Pattern data for FM2
nzndreboot_FM2_p0:
	smpsFMvoice	$2
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	dc.b		$be
	smpsReturn

nzndreboot_FM2_p1:
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	smpsReturn

nzndreboot_FM2_p2:
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	smpsReturn

nzndreboot_FM2_p3:
	smpsFMvoice	$2
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	smpsReturn

nzndreboot_FM2_p4:
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	smpsReturn

nzndreboot_FM2_p5:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM2_pa:
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	smpsReturn

nzndreboot_FM2_pf:
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$bc,$4
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$bf
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$bc,$4
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$bf
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$bc,$4
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$bf
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$bc
	dc.b		$bc,$4
	dc.b		$bc
	dc.b		$bc,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$bf
	dc.b		$bc
	smpsReturn

nzndreboot_FM2_p10:
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be
	dc.b		$be,$2
	dc.b		$be
	dc.b		$be,$4
	dc.b		$be
	dc.b		$be,$2
	dc.b		$4
	dc.b		$2
	dc.b		$4
	dc.b		$c1
	dc.b		$be,$14
	dc.b		$80,$10
	smpsReturn

nzndreboot_FM2_p14:
	dc.b		$80,$10
	dc.b		$20
	dc.b		$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

; Pattern data for FM3
nzndreboot_FM3_p0:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM3_p1:
	smpsFMvoice	$3
	dc.b		$b5,$10
	dc.b		$b5
	dc.b		$b5
	dc.b		$b7
	dc.b		$b5
	dc.b		$b5
	dc.b		$b5
	dc.b		$b7
	smpsReturn

nzndreboot_FM3_p2:
	dc.b		$ba,$10
	dc.b		$ba
	dc.b		$ba
	dc.b		$b2
	dc.b		$ba
	dc.b		$ba
	dc.b		$ba
	dc.b		$b2
	smpsReturn

nzndreboot_FM3_p4:
	dc.b		$ba,$10
	dc.b		$ba
	dc.b		$ba
	dc.b		$b2
	dc.b		$ba
	dc.b		$ba
	dc.b		$ba
	dc.b		$ba
	smpsReturn

nzndreboot_FM3_p8:
	dc.b		$ba,$10
	dc.b		$ba
	dc.b		$ba
	dc.b		$b2
	dc.b		$ba
	dc.b		$ba
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM3_p10:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsFMvoice	$6
	dc.b		$c6
	dc.b		$c6,$8
	dc.b		$c8
	smpsReturn

nzndreboot_FM3_p13:
	dc.b		$b8,$10
	dc.b		$b8
	dc.b		$b8
	dc.b		$b0
	dc.b		$b8
	dc.b		$b8
	dc.b		$b8
	dc.b		$b0
	smpsReturn

; Pattern data for FM4
nzndreboot_FM4_p0:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM4_p1:
	smpsFMvoice	$3
	dc.b		$b2,$10
	dc.b		$b2
	dc.b		$b2
	dc.b		$b4
	dc.b		$b2
	dc.b		$b2
	dc.b		$b2
	dc.b		$b4
	smpsReturn

nzndreboot_FM4_p2:
	dc.b		$b5,$10
	dc.b		$b5
	dc.b		$b5
	dc.b		$b9
	dc.b		$b5
	dc.b		$b5
	dc.b		$b5
	dc.b		$b9
	smpsReturn

nzndreboot_FM4_p4:
	dc.b		$b5,$10
	dc.b		$b5
	dc.b		$b5
	dc.b		$b9
	dc.b		$b5
	dc.b		$b5
	dc.b		$b5
	dc.b		$b5
	smpsReturn

nzndreboot_FM4_p8:
	dc.b		$b5,$10
	dc.b		$b5
	dc.b		$b5
	dc.b		$b9
	dc.b		$b5
	dc.b		$b5
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM4_p10:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsFMvoice	$6
	dc.b		$c3
	dc.b		$c3,$8
	dc.b		$c5
	smpsReturn

nzndreboot_FM4_p13:
	dc.b		$b3,$10
	dc.b		$b3
	dc.b		$b3
	dc.b		$b7
	dc.b		$b3
	dc.b		$b3
	dc.b		$b3
	dc.b		$b7
	smpsReturn

; Pattern data for FM5
nzndreboot_FM5_p0:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM5_p2:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM5_p5:
	smpsFMvoice	$5
	dc.b		$c1,$4
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$10
	dc.b		$80,$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c1
	dc.b		$c0,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c8
	dc.b		$ca,$4
	smpsReturn

nzndreboot_FM5_p6:
	dc.b		$c6,$4
	dc.b		$c5,$2
	dc.b		$c6,$4
	dc.b		$2
	dc.b		$c5,$4
	dc.b		$c1,$10
	dc.b		$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c1
	dc.b		$c0,$4
	dc.b		$c6
	dc.b		$c5,$2
	dc.b		$c6,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c5,$2
	dc.b		$c6,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c8
	dc.b		$ca,$4
	smpsReturn

nzndreboot_FM5_p7:
	dc.b		$c1,$4
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$2
	dc.b		$e
	dc.b		$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c1
	dc.b		$c0,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c8
	dc.b		$ca,$4
	smpsReturn

nzndreboot_FM5_p8:
	dc.b		$c6,$4
	dc.b		$c5,$2
	dc.b		$c6,$4
	dc.b		$2
	dc.b		$c5,$4
	dc.b		$c1,$10
	dc.b		$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c1
	dc.b		$c0,$4
	dc.b		$c6
	dc.b		$c5,$2
	dc.b		$c6,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c5,$2
	dc.b		$c6,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c8
	dc.b		$ca,$4
	smpsReturn

nzndreboot_FM5_p9:
	dc.b		$c1,$4
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$10
	smpsReturn

nzndreboot_FM5_pf:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80,$8
	smpsFMvoice	$9
	dc.b		$ba,$2
	dc.b		$ba
	dc.b		$ba
	dc.b		$ba
	smpsReturn

nzndreboot_FM5_p10:
	dc.b		$c6,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_FM5_p12:
	dc.b		$c1,$4
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$10
	dc.b		$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c1
	dc.b		$c0,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1
	dc.b		$c0,$2
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c8,$4
	dc.b		$c1,$c
	dc.b		$c5,$4
	dc.b		$c3,$6
	dc.b		$c8
	dc.b		$ca,$4
	smpsReturn

nzndreboot_FM5_p13:
	dc.b		$c4,$4
	dc.b		$c3,$2
	dc.b		$c4,$4
	dc.b		$2
	dc.b		$c3,$4
	dc.b		$bf,$10
	dc.b		$c
	dc.b		$c3,$4
	dc.b		$c1,$6
	dc.b		$bf
	dc.b		$be,$4
	dc.b		$c4
	dc.b		$c3,$2
	dc.b		$c4,$4
	dc.b		$2
	dc.b		$c6,$4
	dc.b		$bf
	dc.b		$c3,$2
	dc.b		$c4,$4
	dc.b		$2
	dc.b		$c6,$4
	dc.b		$bf,$c
	dc.b		$c3,$4
	dc.b		$c1,$6
	dc.b		$c6
	dc.b		$c8,$4
	smpsReturn

nzndreboot_FM5_p15:
	dc.b		$c4,$4
	dc.b		$c3,$2
	dc.b		$c4,$4
	dc.b		$2
	dc.b		$c3,$4
	dc.b		$bf,$10
	dc.b		$c
	dc.b		$c3,$4
	dc.b		$c1,$6
	dc.b		$bf
	dc.b		$be,$4
	dc.b		$c4
	dc.b		$c3,$2
	dc.b		$c4,$4
	dc.b		$2
	dc.b		$c6,$4
	dc.b		$bf
	dc.b		$c3,$2
	dc.b		$c4,$4
	dc.b		$2
	dc.b		$c6,$4
	dc.b		$bf,$c
	dc.b		$cb,$4
	dc.b		$ca,$6
	dc.b		$c8
	dc.b		$c6,$4
	smpsReturn

; Pattern data for PSG1
nzndreboot_PSG1_p0:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsPSGvoice	$0
	dc.b		$be,$4
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	smpsReturn

nzndreboot_PSG1_p1:
	dc.b		$be,$4
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	smpsReturn

nzndreboot_PSG1_p2:
	dc.b		$be,$4
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	smpsReturn

nzndreboot_PSG1_p4:
	dc.b		$be,$4
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$80,$10
	dc.b		$80
	smpsReturn

nzndreboot_PSG1_p8:
	dc.b		$be,$4
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5,$14
	dc.b		$80,$10
	smpsReturn

nzndreboot_PSG1_p9:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_PSG1_pc:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsPSGvoice	$0
	dc.b		$be,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	smpsReturn

nzndreboot_PSG1_pd:
	dc.b		$be,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	smpsReturn

nzndreboot_PSG1_pf:
	dc.b		$bc,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$bc
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$bc
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$bc
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	smpsReturn

nzndreboot_PSG1_p13:
	dc.b		$bc,$4
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	smpsReturn

nzndreboot_PSG1_p15:
	smpsPSGvoice	$0
	dc.b		$bc,$4
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	smpsReturn

; Pattern data for PSG2
nzndreboot_PSG2_p0:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80,$4
	smpsPSGvoice	$0
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	smpsReturn

nzndreboot_PSG2_p1:
	dc.b		$c8,$4
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	smpsReturn

nzndreboot_PSG2_p2:
	dc.b		$c5,$4
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	smpsReturn

nzndreboot_PSG2_p3:
	dc.b		$c5,$4
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$be
	dc.b		$c3
	dc.b		$c1
	dc.b		$c8
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	dc.b		$c5
	dc.b		$bc
	dc.b		$c1
	dc.b		$c0
	smpsReturn

nzndreboot_PSG2_p4:
	dc.b		$c5,$4
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$80,$10
	dc.b		$80
	smpsReturn

nzndreboot_PSG2_p8:
	dc.b		$c5,$4
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$be
	dc.b		$c1
	dc.b		$c0
	dc.b		$c8
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1
	dc.b		$c5
	dc.b		$ca
	dc.b		$c8
	dc.b		$c1,$14
	dc.b		$80,$10
	smpsReturn

nzndreboot_PSG2_p9:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_PSG2_pc:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80,$14
	smpsPSGvoice	$0
	dc.b		$be,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	smpsReturn

nzndreboot_PSG2_pd:
	dc.b		$80,$4
	dc.b		$be,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$c5
	dc.b		$80
	dc.b		$be
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80,$4
	dc.b		$c1,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	dc.b		$b4,$1
	dc.b		$80
	dc.b		$c0,$2
	dc.b		$80
	smpsReturn

nzndreboot_PSG2_pf:
	dc.b		$80,$4
	dc.b		$bc,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$bc
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$bc
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$bc
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80,$4
	dc.b		$bf,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	dc.b		$b2,$1
	dc.b		$80
	dc.b		$be,$2
	dc.b		$80
	smpsReturn

nzndreboot_PSG2_p13:
	dc.b		$c3,$4
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	smpsReturn

nzndreboot_PSG2_p15:
	dc.b		$80,$4
	smpsPSGvoice	$0
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$bc
	dc.b		$bf
	dc.b		$be
	dc.b		$c6
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	dc.b		$c3
	dc.b		$c8
	dc.b		$c6
	dc.b		$bf
	smpsReturn

; Pattern data for PSG3
nzndreboot_PSG3_p0:
	dc.b		$80,$10
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	dc.b		$80
	smpsReturn

nzndreboot_PSG3_p5:
	smpsPSGvoice	$0
	dc.b		$b2,$14
	dc.b		$b0,$4
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	smpsReturn

nzndreboot_PSG3_p6:
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	smpsReturn

nzndreboot_PSG3_p8:
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad,$14
	dc.b		$80,$10
	smpsReturn

nzndreboot_PSG3_p9:
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	smpsReturn

nzndreboot_PSG3_pf:
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	smpsReturn

nzndreboot_PSG3_p10:
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad
	dc.b		$b2,$10
	dc.b		$4
	dc.b		$b0
	dc.b		$b2
	dc.b		$ad,$14
	dc.b		$80,$10
	smpsReturn

nzndreboot_PSG3_p13:
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	dc.b		$b0,$10
	dc.b		$4
	dc.b		$ae
	dc.b		$b0
	dc.b		$ab
	smpsReturn

nzndreboot_Voices:
	dc.b	$3a,$0,$0,$0,$0,$1f,$0,$0,$1b,$1f,$0,$0,$1f,$0,$0,$0
	dc.b	$10,$6,$0,$0,$6,$17,$7f,$7f,$c	; Voice 0 (01.tfi)
	dc.b	$3d,$0,$30,$d0,$0,$1f,$1f,$1f,$11,$b,$9,$0,$1f,$0,$0,$c
	dc.b	$a,$ff,$f9,$f,$7,$20,$e,$16,$f	; Voice 1 (02.tfi)
	dc.b	$2e,$36,$3,$0,$1,$df,$dc,$dd,$df,$6,$9,$2,$5,$6,$7,$8
	dc.b	$9,$23,$33,$13,$4,$19,$20,$20,$10	; Voice 2 (03.tfi)
	dc.b	$34,$34,$34,$d4,$d4,$5f,$1f,$5f,$1f,$0,$8,$0,$8,$8,$7,$8
	dc.b	$6,$b,$1d,$a,$1d,$28,$18,$25,$18	; Voice 3 (06.tfi)
	dc.b	$2,$0,$0,$0,$2,$0,$0,$0,$1f,$0,$0,$0,$17,$0,$0,$0
	dc.b	$1,$0,$0,$0,$6,$7f,$7f,$7f,$a	; Voice 4 (08.tfi)
	dc.b	$35,$32,$35,$f4,$e3,$1f,$1f,$1f,$1f,$4,$4,$3,$3,$8,$8,$8
	dc.b	$8,$f,$f,$1f,$f,$16,$1c,$23,$1c	; Voice 5 (0A.tfi)
	dc.b	$24,$d4,$d4,$34,$34,$1f,$1f,$1f,$1f,$0,$a,$0,$a,$a,$8,$a
	dc.b	$8,$3,$12,$3,$13,$19,$1c,$1a,$1c	; Voice 6 (0C.tfi)
	dc.b	$2,$0,$0,$0,$0,$1f,$1f,$1f,$1f,$17,$1f,$1f,$17,$b,$1f,$1f
	dc.b	$b,$6,$f,$f,$6,$17,$7f,$7f,$f	; Voice 7 (0E.tfi)
	dc.b	$2c,$e3,$33,$1,$11,$19,$1f,$19,$1f,$4,$4,$0,$3,$7,$4,$9
	dc.b	$7,$12,$22,$3,$22,$15,$18,$17,$20	; Voice 8 (10.tfi)
	dc.b	$1c,$33,$2,$4,$34,$5f,$df,$5f,$df,$7,$7,$7,$a,$7,$6,$6
	dc.b	$7,$94,$31,$51,$a1,$24,$e,$2,$12	; Voice 9 (12.tfi)
	even
