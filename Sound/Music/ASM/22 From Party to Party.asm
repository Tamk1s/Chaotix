Target	EQU	$4EA58
	smpsHeaderVoice	VOC_Patches, Target
	smpsHeaderChan		$06, $03
	smpsHeaderTempoC	$05, $0C
	smpsHeaderFM	VOC_FM1, Target, $00, $0E
	smpsHeaderFM	VOC_FM2, Target, $00, $0E
	smpsHeaderFM	VOC_FM3, Target, $00, $19
	smpsHeaderFM	VOC_FM4, Target, $00, $13
	smpsHeaderFM	VOC_NOP, Target, $00, $0E
	smpsHeaderFM	VOC_NOP, Target, $00, $0E
	smpsHeaderPSG	VOC_NOP, Target, $00, $02, $00, $00
	smpsHeaderPSG	VOC_NOP, Target, $00, $02, $00, $00
	smpsHeaderPSG	VOC_NOP, Target, $00, $02, $00, $00
	smpsHeaderPWM	VOC_PWM1, Target, $00, $9F
	smpsHeaderPWM	VOC_PWM2, Target, $00, $9F
	smpsHeaderPWM	VOC_PWM3, Target, $00, $9F
	smpsHeaderPWM	 VOC_NOP, Target, $00, $9F

VOC_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00
	dc.b	nD3, $18, nG3, $0C, nA3, nD3, $18, nG3
	dc.b	$0C, nA3
	smpsJump		VOC_FM1, Target

VOC_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01
	dc.b	nD3, $18, nG3, $0C, nA3, nD3, $18, nG3
	dc.b	$0C, nA3
	smpsJump		VOC_FM2, Target

VOC_FM3:
	smpsPan		panCenter
	smpsFMvoice		$02
	dc.b	nD2, $18, $0C, nE2, nD2, $18, $0C, nE2
	smpsJump		VOC_FM3, Target

VOC_FM4:
	smpsPan		panCenter
	smpsFMvoice		$03
	dc.b	nD2, $18, $0C, nE2, nD2, $18, $0C, nE2
	smpsJump		VOC_FM4, Target
	
VOC_PWM1:
	smpsPan		panCenter
	dc.b	pEKick

VOC_PWM1_Loop1:
	dc.b	$03, $03, pESnare, pEKick, pClosedHH, $02, pEKick, $04
	dc.b	pESnare, $03, pEKick, $02, $01
	smpsLoop		$00, $04, VOC_PWM1_Loop1, Target
	smpsJump		VOC_PWM1, Target
	
VOC_PWM2:
	dc.b	pClosedHH

VOC_PWM2_Loop1:
	dc.b	$03, $03, $03, $06, pAKick, $03, pClosedHH, pClosedHH
	smpsLoop		$00, $04, VOC_PWM2_Loop1, Target
	smpsJump		VOC_PWM2, Target
	
VOC_PWM3:
	dc.b	nRst, $0B

VOC_PWM3_Loop1:
	dc.b	pAKick, $04, pClosedHH, $14
	smpsLoop		$00, $03, VOC_PWM3_Loop1, Target
	dc.b	pAKick, $04, pClosedHH, $09
	smpsJump		VOC_PWM3, Target

VOC_NOP:
	smpsStop

VOC_Patches:	
	dc.b	$0D
	dc.b	$35, $33, $73, $73,	$0B, $0B, $0A, $0A
	dc.b	$06, $06, $06, $06,	$00, $00, $00, $00
;!@ dc.b	$93, $93, $9F, $9F,	$20, $18, $18, $10
	dc.b	$93, $93, $9F, $9F,	$20, $18, $18, $18
	
	dc.b	$3A
	dc.b	$31, $32, $78, $62,	$0B, $0B, $0A, $0A
	dc.b	$01, $02, $01, $02,	$00, $00, $00, $00
;!@	dc.b	$9F, $9F, $9F, $9F,	$20, $20, $30, $08
	dc.b	$9F, $9F, $9F, $9F,	$20, $20, $30, $0C
	
	dc.b	$02
	dc.b	$00, $00, $00, $00,	$0C, $0C, $16, $16
	dc.b	$17, $17, $00, $00,	$09, $09, $09, $09
;!@ dc.b	$02, $02, $02, $02,	$21, $10, $12, $09
	dc.b	$02, $02, $02, $02,	$21, $10, $12, $0D
	
	dc.b	$02
	dc.b	$31, $34, $71, $71,	$16, $17, $17, $17
	dc.b	$05, $05, $05, $05,	$07, $07, $07, $07
;!@	dc.b	$13, $13, $13, $13,	$1C, $1C, $1C, $0A
	dc.b	$13, $13, $13, $13,	$1C, $1C, $1C, $0F
