; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Thu Jan 17 2019, 06:40:06
; For SMPS 32X
; -------------------------------------------------------

Target	EQU	$40000

virtua_Header:
	smpsHeaderVoice	virtua_Voices,Target
	smpsHeaderChan	6,3
	;smpsHeaderTempo	$5, $5	
	smpsHeaderTempo	$5, $33
	smpsHeaderFM	virtua_FM1,	Target, $0, $10
	smpsHeaderFM	virtua_FM2,	Target, $0, $10
	smpsHeaderFM	virtua_FM3,	Target, $0, $10
	smpsHeaderFM	virtua_FM4,	Target, $0, $10
	smpsHeaderFM	virtua_FM5,	Target, $0, $10
	smpsHeaderFM	virtua_FM6,	Target, $0, $10
	smpsHeaderPSG	virtua_PSG1, Target, $dc, $2, $00, $00
	smpsHeaderPSG	virtua_PSG2, Target, $dc, $2, $00, $00
	smpsHeaderPSG	virtua_PSG3, Target, $dc, $2, $00, $00
	smpsHeaderPWM	virtua_PWM1, Target, $00, $AA
	smpsHeaderPWM	virtua_PWM2, Target, $00, $AA
	smpsHeaderPWM	virtua_PWM3, Target, $00, $AA
	smpsHeaderPWM	virtua_PWM4, Target, $00, $AA

virtua_FM1:
	smpsCall	virtua_FM1_p0, Target
virtua_FM1_Loop:
	smpsCall	virtua_FM1_p1, Target
	smpsCall	virtua_FM1_p2, Target
	smpsJump	virtua_FM1_Loop, Target

virtua_FM2:
	smpsCall	virtua_FM2_p0, Target
virtua_FM2_Loop:
	smpsCall	virtua_FM2_p1, Target
	smpsCall	virtua_FM2_p2, Target
	smpsJump	virtua_FM2_Loop, Target

virtua_FM3:
	smpsCall	virtua_FM3_p0, Target
virtua_FM3_Loop:
	smpsCall	virtua_FM3_p1, Target
	smpsCall	virtua_FM3_p2, Target
	smpsJump	virtua_FM3_Loop, Target

virtua_FM4:
	smpsCall	virtua_FM4_p0, Target
virtua_FM4_Loop:
	smpsCall	virtua_FM4_p1, Target
	smpsCall	virtua_FM4_p2, Target
	smpsJump	virtua_FM4_Loop, Target

virtua_FM5:
	smpsCall	virtua_FM5_p0, Target
virtua_FM5_Loop:
	smpsCall	virtua_FM5_p1, Target
	smpsCall	virtua_FM5_p2, Target
	smpsJump	virtua_FM5_Loop, Target

virtua_FM6:
	smpsCall	virtua_FM6_p0, Target
virtua_FM6_Loop:
	smpsCall	virtua_FM6_p1, Target
	smpsCall	virtua_FM6_p1, Target
	smpsJump	virtua_FM6_Loop, Target

virtua_PSG1:
	smpsCall	virtua_PSG1_p0, Target
virtua_PSG1_Loop:
	smpsCall	virtua_PSG1_p1, Target
	smpsCall	virtua_PSG1_p1, Target
	smpsJump	virtua_PSG1_Loop, Target

virtua_PSG2:
	smpsCall	virtua_PSG2_p0, Target
virtua_PSG2_Loop:
	smpsCall	virtua_PSG2_p1, Target
	smpsCall	virtua_PSG2_p1, Target
	smpsJump	virtua_PSG2_Loop, Target

virtua_PSG3:
	smpsCall	virtua_PSG3_p0, Target
virtua_PSG3_Loop:
	smpsCall	virtua_PSG3_p1, Target
	smpsCall	virtua_PSG3_p1, Target
	smpsJump	virtua_PSG3_Loop, Target

virtua_PWM1:
	smpsCall	virtua_PWM1_p0, Target
virtua_PWM1_Loop:
	smpsCall	virtua_PWM1_p1, Target
	smpsCall	virtua_PWM1_p2, Target
	smpsJump	virtua_PWM1_Loop, Target

virtua_PWM2:
	smpsCall	virtua_PWM2_p0, Target
virtua_PWM2_Loop:
	smpsCall	virtua_PWM2_p1, Target
	smpsCall	virtua_PWM2_p1, Target
	smpsJump	virtua_PWM2_Loop, Target

virtua_PWM3:
	smpsCall	virtua_PWM3_p0, Target
virtua_PWM3_Loop:
	smpsCall	virtua_PWM3_p1, Target
	smpsCall	virtua_PWM3_p2, Target
	smpsJump	virtua_PWM3_Loop, Target

virtua_PWM4:
	smpsCall	virtua_PWM4_p0, Target
virtua_PWM4_Loop:
	smpsCall	virtua_PWM4_p1, Target
	smpsCall	virtua_PWM4_p1, Target
	smpsJump	virtua_PWM4_Loop, Target


; Pattern data for FM1
virtua_FM1_p0:
	dc.b		$80,$a
	smpsFMvoice	$0
	dc.b		$ac,$1
	dc.b		$ae
	dc.b		$b0
	dc.b		$b1
	dc.b		$b3
	dc.b		$b5
	dc.b		$b6
	dc.b		$b8
	smpsReturn

virtua_FM1_p1:
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b1
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b1
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b1
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b3
	dc.b		$b4,$4
	dc.b		$2
	dc.b		$b4
	dc.b		$b6,$4
	dc.b		$2
	dc.b		$b6
	dc.b		$b3,$4
	dc.b		$2
	dc.b		$b3
	dc.b		$b8,$4
	dc.b		$2
	dc.b		$b8
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b1
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b1
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b1
	dc.b		$b1,$4
	dc.b		$2
	dc.b		$b3
	dc.b		$b4,$4
	dc.b		$2
	dc.b		$b4
	dc.b		$b6,$4
	dc.b		$2
	dc.b		$b6
	dc.b		$b3,$4
	dc.b		$2
	dc.b		$b3
	dc.b		$b8,$4
	dc.b		$2
	dc.b		$b8
	dc.b		$ad,$1
	dc.b		$af
	dc.b		$b1
	dc.b		$b2
	dc.b		$b4
	dc.b		$b6
	dc.b		$b7
	dc.b		$b9
	smpsReturn

virtua_FM1_p2:
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b2
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b2
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b2
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b4
	dc.b		$b5,$4
	dc.b		$2
	dc.b		$b5
	dc.b		$b7,$4
	dc.b		$2
	dc.b		$b7
	dc.b		$b4,$4
	dc.b		$2
	dc.b		$b4
	dc.b		$b9,$4
	dc.b		$2
	dc.b		$b9
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b2
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b2
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b2
	dc.b		$b2,$4
	dc.b		$2
	dc.b		$b4
	dc.b		$b5,$4
	dc.b		$2
	dc.b		$b5
	dc.b		$b7,$4
	dc.b		$2
	dc.b		$b7
	dc.b		$b4,$4
	dc.b		$2
	dc.b		$b4
	dc.b		$b9,$4
	dc.b		$2
	dc.b		$b9
	dc.b		$ac,$1
	dc.b		$ae
	dc.b		$b0
	dc.b		$b1
	dc.b		$b3
	dc.b		$b5
	dc.b		$b6
	dc.b		$b8
	smpsReturn

; Pattern data for FM2
virtua_FM2_p0:
	dc.b		$80,$12
	smpsReturn

virtua_FM2_p1:
	smpsFMvoice	$1
	dc.b		$cb,$5
	dc.b		$80,$1
	dc.b		$ca,$3
	dc.b		$80,$1
	dc.b		$c6,$3
	dc.b		$80,$1
	dc.b		$ca,$4
	dc.b		$cb,$1
	dc.b		$ca
	dc.b		$c8,$6
	dc.b		$c1,$1
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$c4,$6
	dc.b		$c6,$2
	dc.b		$c3,$3
	dc.b		$80,$1
	dc.b		$bf,$3
	dc.b		$80,$1
	dc.b		$c3,$4
	dc.b		$c4,$1
	dc.b		$c3
	dc.b		$c1,$4
	dc.b		$be,$1
	dc.b		$bf
	dc.b		$c1
	dc.b		$c3
	dc.b		$c5
	dc.b		$c6
	dc.b		$c8
	dc.b		$ca
	dc.b		$cb,$5
	dc.b		$80,$1
	dc.b		$ca,$3
	dc.b		$80,$1
	dc.b		$c6,$3
	dc.b		$80,$1
	dc.b		$ca,$4
	dc.b		$cb,$1
	dc.b		$ca
	dc.b		$c8,$6
	dc.b		$c1,$1
	dc.b		$80
	dc.b		$c3
	dc.b		$80
	dc.b		$c4,$6
	dc.b		$c6,$2
	dc.b		$c3,$3
	dc.b		$80,$1
	dc.b		$bf,$3
	dc.b		$80,$1
	dc.b		$c3,$4
	dc.b		$c4,$1
	dc.b		$c3
	dc.b		$c1,$4
	dc.b		$be,$1
	dc.b		$bf
	dc.b		$c1
	dc.b		$c3
	dc.b		$c5
	dc.b		$c6
	dc.b		$c8
	dc.b		$ca
	dc.b		$80,$8
	smpsReturn

virtua_FM2_p2:
	dc.b		$cc,$5
	dc.b		$80,$1
	dc.b		$cb,$3
	dc.b		$80,$1
	dc.b		$c7,$3
	dc.b		$80,$1
	dc.b		$cb,$4
	dc.b		$cc,$1
	dc.b		$cb
	dc.b		$c9,$6
	dc.b		$c2,$1
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$c5,$6
	dc.b		$c7,$2
	dc.b		$c4,$3
	dc.b		$80,$1
	dc.b		$c0,$3
	dc.b		$80,$1
	dc.b		$c4,$4
	dc.b		$c5,$1
	dc.b		$c4
	dc.b		$c2,$4
	dc.b		$bf,$1
	dc.b		$c0
	dc.b		$c2
	dc.b		$c4
	dc.b		$c6
	dc.b		$c7
	dc.b		$c9
	dc.b		$cb
	dc.b		$cc,$5
	dc.b		$80,$1
	dc.b		$cb,$3
	dc.b		$80,$1
	dc.b		$c7,$3
	dc.b		$80,$1
	dc.b		$cb,$4
	dc.b		$cc,$1
	dc.b		$cb
	dc.b		$c9,$6
	dc.b		$c2,$1
	dc.b		$80
	dc.b		$c4
	dc.b		$80
	dc.b		$c5,$6
	dc.b		$c7,$2
	dc.b		$c4,$3
	dc.b		$80,$1
	dc.b		$c0,$3
	dc.b		$80,$1
	dc.b		$c4,$4
	dc.b		$c5,$1
	dc.b		$c4
	dc.b		$c2,$4
	dc.b		$bf,$1
	dc.b		$c0
	dc.b		$c2
	dc.b		$c4
	dc.b		$c6
	dc.b		$c7
	dc.b		$c9
	dc.b		$cb
	dc.b		$80,$8
	smpsReturn

; Pattern data for FM3
virtua_FM3_p0:
	dc.b		$80,$12
	smpsReturn

virtua_FM3_p1:
	smpsFMvoice	$2
	dc.b		$c6,$5
	dc.b		$80,$1
	dc.b		$c6,$3
	dc.b		$80,$1
	dc.b		$c1,$3
	dc.b		$80,$1
	dc.b		$c6,$4
	dc.b		$c3,$1
	dc.b		$80
	dc.b		$c5,$5
	dc.b		$80
	dc.b		$bf,$6
	dc.b		$80,$2
	dc.b		$be,$3
	dc.b		$80,$1
	dc.b		$ba,$3
	dc.b		$80,$1
	dc.b		$bf,$5
	dc.b		$80,$1
	dc.b		$bf,$5
	dc.b		$80,$1
	smpsFMvoice	$1
	dc.b		$ba
	dc.b		$bc
	dc.b		$be
	dc.b		$bf
	dc.b		$c1
	dc.b		$c3
	smpsFMvoice	$2
	dc.b		$c6,$5
	dc.b		$80,$1
	dc.b		$c6,$3
	dc.b		$80,$1
	dc.b		$c1,$3
	dc.b		$80,$1
	dc.b		$c6,$4
	dc.b		$c3,$1
	dc.b		$80
	dc.b		$c5,$5
	dc.b		$80
	dc.b		$bf,$6
	dc.b		$80,$2
	dc.b		$be,$3
	dc.b		$80,$1
	dc.b		$ba,$3
	dc.b		$80,$1
	dc.b		$bf,$5
	dc.b		$80,$1
	dc.b		$bf,$5
	dc.b		$80,$1
	smpsFMvoice	$1
	dc.b		$ba
	dc.b		$bc
	dc.b		$be
	dc.b		$bf
	dc.b		$c1
	dc.b		$c3
	smpsFMvoice	$2
	dc.b		$80,$8
	smpsReturn

virtua_FM3_p2:
	dc.b		$c7,$5
	dc.b		$80,$1
	dc.b		$c7,$3
	dc.b		$80,$1
	dc.b		$c2,$3
	dc.b		$80,$1
	dc.b		$c7,$4
	dc.b		$c4,$1
	dc.b		$80
	dc.b		$c6,$5
	dc.b		$80
	dc.b		$c0,$6
	dc.b		$80,$2
	dc.b		$bf,$3
	dc.b		$80,$1
	dc.b		$bb,$3
	dc.b		$80,$1
	dc.b		$c0,$5
	dc.b		$80,$1
	dc.b		$c0,$5
	dc.b		$80,$1
	smpsFMvoice	$1
	dc.b		$bb
	dc.b		$bd
	dc.b		$bf
	dc.b		$c0
	dc.b		$c2
	dc.b		$c4
	smpsFMvoice	$2
	dc.b		$c7,$5
	dc.b		$80,$1
	dc.b		$c7,$3
	dc.b		$80,$1
	dc.b		$c2,$3
	dc.b		$80,$1
	dc.b		$c7,$4
	dc.b		$c4,$1
	dc.b		$80
	dc.b		$c6,$5
	dc.b		$80
	dc.b		$c0,$6
	dc.b		$80,$2
	dc.b		$bf,$3
	dc.b		$80,$1
	dc.b		$bb,$3
	dc.b		$80,$1
	dc.b		$c0,$5
	dc.b		$80,$1
	dc.b		$c0,$5
	dc.b		$80,$1
	smpsFMvoice	$1
	dc.b		$bb
	dc.b		$bd
	dc.b		$bf
	dc.b		$c0
	dc.b		$c2
	dc.b		$c4
	smpsFMvoice	$2
	dc.b		$80,$8
	smpsReturn

; Pattern data for FM4
virtua_FM4_p0:
	dc.b		$80,$a
	smpsFMvoice	$1
	dc.b		$be,$1
	smpsFMvoice	$2
	dc.b		$bf
	smpsFMvoice	$1
	dc.b		$c1
	smpsFMvoice	$2
	dc.b		$c3
	smpsFMvoice	$1
	dc.b		$c5
	smpsFMvoice	$2
	dc.b		$c6
	smpsFMvoice	$1
	dc.b		$c8
	smpsFMvoice	$2
	dc.b		$ca
	smpsReturn

virtua_FM4_p1:
	smpsFMvoice	$1
	dc.b		$c1,$5
	dc.b		$80,$1
	dc.b		$c1,$3
	dc.b		$80,$1
	dc.b		$bc,$3
	dc.b		$80,$1
	dc.b		$bf,$4
	dc.b		$c1,$1
	dc.b		$80
	dc.b		$c1,$5
	dc.b		$80
	dc.b		$bc,$6
	dc.b		$80,$2
	smpsFMvoice	$2
	dc.b		$ba,$3
	dc.b		$80,$1
	dc.b		$b5,$3
	dc.b		$80,$1
	dc.b		$ba,$5
	dc.b		$80,$1
	dc.b		$ba,$5
	dc.b		$80,$7
	smpsFMvoice	$1
	dc.b		$c1,$5
	dc.b		$80,$1
	dc.b		$c1,$3
	dc.b		$80,$1
	dc.b		$bc,$3
	dc.b		$80,$1
	dc.b		$bf,$4
	dc.b		$c1,$1
	dc.b		$80
	dc.b		$c1,$5
	dc.b		$80
	dc.b		$bc,$6
	dc.b		$80,$2
	smpsFMvoice	$2
	dc.b		$ba,$3
	dc.b		$80,$1
	dc.b		$b5,$3
	dc.b		$80,$1
	dc.b		$ba,$5
	dc.b		$80,$1
	dc.b		$ba,$6
	dc.b		$80
	smpsFMvoice	$1
	dc.b		$bf,$1
	smpsFMvoice	$2
	dc.b		$c0
	smpsFMvoice	$1
	dc.b		$c2
	smpsFMvoice	$2
	dc.b		$c4
	smpsFMvoice	$1
	dc.b		$c6
	smpsFMvoice	$2
	dc.b		$c7
	smpsFMvoice	$1
	dc.b		$c9
	smpsFMvoice	$2
	dc.b		$cb
	smpsReturn

virtua_FM4_p2:
	smpsFMvoice	$1
	dc.b		$c2,$5
	dc.b		$80,$1
	dc.b		$c2,$3
	dc.b		$80,$1
	dc.b		$bd,$3
	dc.b		$80,$1
	dc.b		$c0,$4
	dc.b		$c2,$1
	dc.b		$80
	dc.b		$c2,$5
	dc.b		$80
	dc.b		$bd,$6
	dc.b		$80,$2
	smpsFMvoice	$2
	dc.b		$bb,$3
	dc.b		$80,$1
	dc.b		$b6,$3
	dc.b		$80,$1
	dc.b		$bb,$5
	dc.b		$80,$1
	dc.b		$bb,$5
	dc.b		$80,$7
	smpsFMvoice	$1
	dc.b		$c2,$5
	dc.b		$80,$1
	dc.b		$c2,$3
	dc.b		$80,$1
	dc.b		$bd,$3
	dc.b		$80,$1
	dc.b		$c0,$4
	dc.b		$c2,$1
	dc.b		$80
	dc.b		$c2,$5
	dc.b		$80
	dc.b		$bd,$6
	dc.b		$80,$2
	smpsFMvoice	$2
	dc.b		$bb,$3
	dc.b		$80,$1
	dc.b		$b6,$3
	dc.b		$80,$1
	dc.b		$bb,$5
	dc.b		$80,$1
	dc.b		$bb,$6
	dc.b		$80
	smpsFMvoice	$1
	dc.b		$be,$1
	smpsFMvoice	$2
	dc.b		$bf
	smpsFMvoice	$1
	dc.b		$c1
	smpsFMvoice	$2
	dc.b		$c3
	smpsFMvoice	$1
	dc.b		$c5
	smpsFMvoice	$2
	dc.b		$c6
	smpsFMvoice	$1
	dc.b		$c8
	smpsFMvoice	$2
	dc.b		$ca
	smpsReturn

; Pattern data for FM5
virtua_FM5_p0:
	dc.b		$80,$12
	smpsReturn

virtua_FM5_p1:
	smpsFMvoice	$2
	dc.b		$d7,$6
	smpsFMvoice	$1
	dc.b		$d6,$4
	smpsFMvoice	$2
	dc.b		$d2
	dc.b		$d6
	dc.b		$d7,$1
	dc.b		$d6
	dc.b		$d4,$6
	dc.b		$cd,$2
	smpsFMvoice	$1
	dc.b		$cf
	smpsFMvoice	$2
	dc.b		$d0,$6
	dc.b		$d2,$2
	smpsFMvoice	$1
	dc.b		$cf,$4
	smpsFMvoice	$2
	dc.b		$cb
	smpsFMvoice	$1
	dc.b		$cf
	smpsFMvoice	$2
	dc.b		$d0,$1
	dc.b		$cf
	dc.b		$cd,$4
	smpsFMvoice	$1
	dc.b		$ca,$1
	smpsFMvoice	$2
	dc.b		$cb
	dc.b		$cd
	dc.b		$cf
	smpsFMvoice	$1
	dc.b		$d1
	smpsFMvoice	$2
	dc.b		$d2
	dc.b		$d4
	smpsFMvoice	$1
	dc.b		$d6
	smpsFMvoice	$2
	dc.b		$d7,$6
	smpsFMvoice	$1
	dc.b		$d6,$4
	dc.b		$d2
	dc.b		$d6
	dc.b		$d7,$1
	dc.b		$d6
	dc.b		$d4,$6
	dc.b		$cd,$2
	dc.b		$cf
	dc.b		$d0,$6
	dc.b		$d2,$2
	dc.b		$cf,$4
	dc.b		$cb
	dc.b		$cf
	dc.b		$d0,$1
	dc.b		$cf
	dc.b		$cd,$4
	dc.b		$ca,$1
	dc.b		$cb
	dc.b		$cd
	dc.b		$cf
	dc.b		$d1
	dc.b		$d2
	dc.b		$d4
	dc.b		$d6
	dc.b		$cb
	smpsFMvoice	$2
	dc.b		$cc
	smpsFMvoice	$1
	dc.b		$ce
	smpsFMvoice	$2
	dc.b		$d0
	smpsFMvoice	$1
	dc.b		$d2
	smpsFMvoice	$2
	dc.b		$d3
	smpsFMvoice	$1
	dc.b		$d5
	smpsFMvoice	$2
	dc.b		$d7
	smpsReturn

virtua_FM5_p2:
	smpsFMvoice	$1
	dc.b		$d8,$6
	smpsFMvoice	$2
	dc.b		$d7,$4
	dc.b		$d3
	smpsFMvoice	$1
	dc.b		$d7
	smpsFMvoice	$2
	dc.b		$d8,$1
	dc.b		$d7
	dc.b		$d5,$6
	smpsFMvoice	$1
	dc.b		$ce,$2
	dc.b		$d0
	dc.b		$d1,$6
	dc.b		$d3,$2
	dc.b		$d0,$4
	dc.b		$cc
	dc.b		$d0
	dc.b		$d1,$1
	dc.b		$d0
	dc.b		$ce,$4
	smpsFMvoice	$2
	dc.b		$cb,$1
	dc.b		$cc
	dc.b		$ce
	dc.b		$d0
	dc.b		$d2
	dc.b		$d3
	dc.b		$d5
	dc.b		$d7
	dc.b		$d8,$6
	dc.b		$d7,$4
	dc.b		$d3
	smpsFMvoice	$1
	dc.b		$d7
	dc.b		$d8,$1
	dc.b		$d7
	dc.b		$d5,$6
	dc.b		$ce,$2
	dc.b		$d0
	dc.b		$d1,$6
	dc.b		$d3,$2
	dc.b		$d0,$4
	dc.b		$cc
	dc.b		$d0
	dc.b		$d1,$1
	dc.b		$d0
	dc.b		$ce,$4
	smpsFMvoice	$2
	dc.b		$cb,$1
	dc.b		$cc
	dc.b		$ce
	dc.b		$d0
	dc.b		$d2
	dc.b		$d3
	dc.b		$d5
	dc.b		$d7
	smpsFMvoice	$1
	dc.b		$ca
	smpsFMvoice	$2
	dc.b		$cb
	smpsFMvoice	$1
	dc.b		$cd
	smpsFMvoice	$2
	dc.b		$cf
	smpsFMvoice	$1
	dc.b		$d1
	smpsFMvoice	$2
	dc.b		$d2
	smpsFMvoice	$1
	dc.b		$d4
	smpsFMvoice	$2
	dc.b		$d6
	smpsReturn

; Pattern data for FM6
virtua_FM6_p0:
	dc.b		$80,$12
	smpsReturn

virtua_FM6_p1:
	dc.b		$80,$7F,smpsNoAttack,$9
	smpsReturn

; Pattern data for PSG1
virtua_PSG1_p0:
	dc.b		$80,$12
	smpsReturn

virtua_PSG1_p1:
	dc.b		$80,$7F,smpsNoAttack,$9
	smpsReturn

; Pattern data for PSG2
virtua_PSG2_p0:
	dc.b		$80,$12
	smpsReturn

virtua_PSG2_p1:
	dc.b		$80,$7F,smpsNoAttack,$9
	smpsReturn

; Pattern data for PSG3
virtua_PSG3_p0:
	dc.b		$80,$12
	smpsReturn

virtua_PSG3_p1:
	dc.b		$80,$7F,smpsNoAttack,$9
	smpsReturn

; Pattern data for PWM1
virtua_PWM1_p0:
	dc.b		$80,$2
	dc.b		$8b
	dc.b		$8b,$1
	dc.b		$8b
	dc.b		$8b,$2
	dc.b		$1
	dc.b		$8b
	dc.b		$8c
	dc.b		$8c
	dc.b		$8c
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	smpsReturn

virtua_PWM1_p1:
	dc.b		$8b,$8
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b,$6
	dc.b		$8c,$1
	dc.b		$8c
	dc.b		$8c,$2
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$8b,$8
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c,$1
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$8b
	dc.b		$8b
	dc.b		$8c
	dc.b		$8c
	dc.b		$8c
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	smpsReturn

virtua_PWM1_p2:
	dc.b		$8b,$8
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b,$6
	dc.b		$8c,$1
	dc.b		$8c
	dc.b		$8c,$2
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$8b,$8
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c
	dc.b		$8b
	dc.b		$8c,$1
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$8b
	dc.b		$8b
	dc.b		$8c
	dc.b		$8c
	dc.b		$8c
	dc.b		$8c
	dc.b		$81
	dc.b		$81
	dc.b		$81
	dc.b		$81
	smpsReturn

; Pattern data for PWM2
virtua_PWM2_p0:
	dc.b		$80,$2
	dc.b		$89
	dc.b		$89,$e
	smpsReturn

virtua_PWM2_p1:
	dc.b		$80,$4
	dc.b		$88,$8
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88,$2
	dc.b		$6
	dc.b		$8
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88
	dc.b		$88,$c
	smpsReturn

; Pattern data for PWM3
virtua_PWM3_p0:
	dc.b		$80,$12
	smpsReturn

virtua_PWM3_p1:
	dc.b		$89,$40
	dc.b		$38
	dc.b		$10
	smpsReturn

virtua_PWM3_p2:
	dc.b		$89,$78
	dc.b		$10
	smpsReturn

; Pattern data for PWM4
virtua_PWM4_p0:
	dc.b		$80,$12
	smpsReturn

virtua_PWM4_p1:
	dc.b		$80,$7F,nRst,$9
	smpsReturn

virtua_Voices:
	dc.b	$33,$32,$10,$d3,$d1,$15,$1f,$1f,$19,$1f,$15,$14,$14,$1a,$12,$15
	dc.b	$f,$e,$f,$f,$d,$2c,$1a,$10,$10	; Voice 0 (0.tfi)
	dc.b	$3c,$12,$12,$21,$e1,$1f,$1f,$1f,$1e,$b,$a,$a,$2,$9,$1,$1
	dc.b	$1,$2f,$3f,$5f,$3f,$15,$8,$13,$f	; Voice 1 (1.tfi)
	dc.b	$35,$11,$1,$d1,$12,$9f,$9f,$9f,$9f,$b,$8,$a,$6,$5,$4,$4
	dc.b	$7,$8,$8,$8,$8,$1b,$12,$12,$12	; Voice 2 (2.tfi)
	even
