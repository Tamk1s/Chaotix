
	sHeaderInit
	smpsHeaderVoice	VOR_Patches, Target
	smpsHeaderChan	$06, $02
	smpsHeaderTempo	$02, $0A
	sHeaderDAC	VOR_DAC
	smpsHeaderFM	VOR_FM1, Target, $00, $0E
	smpsHeaderFM	VOR_FM2, Target, $00, $0E
	smpsHeaderFM	VOR_FM3, Target, $00, $0E
	smpsHeaderFM	VOR_FM4, Target, $00, $0E
	smpsHeaderFM	VOR_FM5, Target, $00, $10
	smpsHeaderPSG	VOR_PSG1, Target, $00, $02, $00, $00
	smpsHeaderPSG	VOR_PSG2, Target, $00, $02, $00, $00

VOR_FM1:
	smpsPan		panCenter
	smpsFMvoice		$00

VOR_Loop1:
	dc.b	nD5, $03, nRst, $06, nC5, $03, nRst, $06
	dc.b	nB4, $03, nRst, $06, nA4, $03, nRst, $06
	dc.b	nB4, $03, nRst, nC5, nRst
	smpsLoop		$00, $02, VOR_Loop1, Target

VOR_Loop2:
	dc.b	nEb5, nRst, $06, nCs5, $03, nRst, $06, nC5
	dc.b	$03, nRst, $06, nBb4, $03, nRst, $06, nC5
	dc.b	$03, nRst, nCs5, nRst
	smpsLoop		$00, $02, VOR_Loop2, Target
	smpsLoop		$01, $04, VOR_Loop1, Target
	smpsJump		VOR_FM1, Target

VOR_FM2:
	smpsPan		panCenter
	smpsFMvoice		$01

VOR_Loop3:
	dc.b	nD4, $03, nRst, $06, nC4, $03, nRst, $06
	dc.b	nB3, $03, nRst, $06, nA3, $03, nRst, $06
	dc.b	nB3, $03, nRst, nC4, nRst
	smpsLoop		$00, $02, VOR_Loop3, Target

VOR_Loop4:
	dc.b	nEb4, nRst, $06, nCs4, $03, nRst, $06, nC4
	dc.b	$03, nRst, $06, nBb3, $03, nRst, $06, nC4
	dc.b	$03, nRst, nCs4, nRst
	smpsLoop		$00, $02, VOR_Loop4, Target
	smpsLoop		$01, $04, VOR_Loop3, Target
	smpsJump		VOR_FM2, Target

VOR_FM3:
	smpsPan		panCenter
	smpsFMvoice		$02

VOR_Loop5:
	dc.b	nD3, $03, nRst, nC3, nRst, nD3, nC3, nRst
	dc.b	nD3, nRst, nA3, nRst, nA3, nB3, nRst, nF3
	dc.b	nRst
	smpsLoop		$00, $02, VOR_Loop5, Target

VOR_Loop6:
	dc.b	nEb3, nRst, nEb4, nRst, nEb3, nCs3, nRst, nEb3
	dc.b	nRst, nBb3, nRst, nBb3, nEb3, nRst, nFs3, nRst
	smpsLoop		$00, $02, VOR_Loop6, Target
	smpsLoop		$01, $04, VOR_Loop5, Target
	smpsJump		VOR_FM3, Target

VOR_FM4:
	smpsFMvoice		$02
	smpsPan		panCenter

VOR_Loop7:
	dc.b	nD4, $03, nRst, nD4, nRst, nD4, nRst, $06
	dc.b	nD4, $03, nRst, nC3, nRst, nC3, nD3, nRst
	dc.b	nC4, nRst
	smpsLoop		$00, $02, VOR_Loop7, Target

VOR_Loo$8:
	dc.b	nEb4, nRst, nCs3, nRst, nEb4, nRst, $06, nEb4
	dc.b	$03, nRst, nCs3, nRst, nCs3, nC4, nRst, nCs4
	dc.b	nRst
	smpsLoop		$00, $02, VOR_Loo$8, Target

VOR_Loo$9:
	dc.b	nD4, nRst, nD4, nRst, nD4, nRst, $06, nD4
	dc.b	$03, nRst, nC3, nRst, nC3, nD3, nRst, nC4
	dc.b	nRst
	smpsLoop		$00, $02, VOR_Loo$9, Target
	dc.b	nEb4, nRst, nCs3, nRst, nEb4, nRst, $06, nEb4
	dc.b	$03, nRst, nCs3, nRst, nCs3, nC4, nRst, nCs4
	dc.b	nRst, nEb4, nRst, nCs3, nRst, nEb4, nRst, $06
	dc.b	nEb4, $03, nRst, $09, nCs3, $03, nC4, nRst
	dc.b	nCs4

VOR_Loop10:
	dc.b	nRst, nD4, nRst, nD4, nRst, nD4, nRst, $06
	dc.b	nD4, $03, nRst, nC3, nRst, nC3, nD3, nRst
	dc.b	nC4
	smpsLoop		$00, $02, VOR_Loop10, Target

VOR_Loop11:
	dc.b	nRst, nEb4, nRst, nCs3, nRst, nEb4, nRst, $06
	dc.b	nEb4, $03, nRst, nCs3, nRst, nCs3, nC4, nRst
	dc.b	nCs4
	smpsLoop		$00, $02, VOR_Loop11, Target
	smpsLoop		$01, $02, VOR_Loop10, Target
	dc.b	nRst
	smpsJump		VOR_FM4, Target

VOR_FM5:
	smpsFMvoice		$03
	smpsPan		panCenter

VOR_Loop12:
	dc.b	nD3, $02, nRst, $01
	smpsLoop		$00, $20, VOR_Loop12, Target

VOR_Loop13:
	dc.b	nEb3, $02, nRst, $01
	smpsLoop		$00, $20, VOR_Loop13, Target
	smpsLoop		$01, $03, VOR_Loop12, Target

VOR_Loop14:
	dc.b	nD3, $02, nRst, $01
	smpsLoop		$00, $20, VOR_Loop14, Target

VOR_Loop15:
	dc.b	nEb3, $02, nRst, $01
	smpsLoop		$00, $1F, VOR_Loop15, Target
	dc.b	nEb3, nRst, $02
	smpsJump		VOR_FM5, Target

VOR_PSG1:
	smpsPSGvoice	$02

VOR_Loop16:
	dc.b	nA0, $03, nRst, $06, nG0, $03, nRst, $06
	dc.b	nG0, $03, nRst, $06, nE0, $03, nRst, $06
	dc.b	nG0, $03, nRst, nG0, nRst
	smpsLoop		$00, $02, VOR_Loop16, Target

VOR_Loop17:
	dc.b	nBb0, nRst, $06, nAb0, $03, nRst, $06, nAb0
	dc.b	$03, nRst, $06, nF0, $03, nRst, $06, nAb0
	dc.b	$03, nRst, nAb0, nRst
	smpsLoop		$00, $02, VOR_Loop17, Target
	smpsLoop		$01, $04, VOR_Loop16, Target
	smpsJump		VOR_PSG1, Target

VOR_PSG2:
	smpsPSGvoice	$03

VOR_Loop18:
	dc.b	nA0, $03, nRst, $06, nG0, $03, nRst, $06
	dc.b	nG0, $03, nRst, $06, nE0, $03, nRst, $06
	dc.b	nG0, $03, nRst, nG0, nRst
	smpsLoop		$00, $02, VOR_Loop18, Target

VOR_Loop19:
	dc.b	nBb0, nRst, $06, nAb0, $03, nRst, $06, nAb0
	dc.b	$03, nRst, $06, nF0, $03, nRst, $06, nAb0
	dc.b	$03, nRst, nAb0, nRst
	smpsLoop		$00, $02, VOR_Loop19, Target
	smpsLoop		$01, $04, VOR_Loop18, Target
	smpsJump		VOR_PSG2, Target

VOR_DAC:
	smpsStop

VOR_Patches:

	
	dc.b	$10
	dc.b	$35, $76, $70, $30,	$DF, $DF, $5F, $5F
	dc.b	$06, $08, $09, $09,	$06, $03, $03, $01
	dc.b	$26, $16, $06, $26,	$21, $34, $19, $00
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$04
	dc.b	$71, $41, $31, $31,	$12, $12, $12, $12
	dc.b	$00, $00, $00, $00,	$00, $00, $00, $00
	dc.b	$0F, $0F, $0F, $0F,	$23, $00, $23, $00
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2C
	dc.b	$70, $40, $21, $60,	$9F, $1F, $1F, $5F
	dc.b	$0C, $09, $0C, $15,	$04, $04, $06, $06
	dc.b	$56, $46, $46, $4F,	$0C, $00, $10, $00
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$38
	dc.b	$0A, $08, $01, $02,	$14, $14, $10, $0E
	dc.b	$05, $08, $02, $08,	$00, $00, $00, $00
	dc.b	$99, $09, $09, $19,	$28, $23, $24, $06
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
