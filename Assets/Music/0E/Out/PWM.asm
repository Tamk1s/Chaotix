Target	EQU	$40000

Title_Header:
	smpsHeaderVoice	Title_Patches, Target
	smpsHeaderChan	6,3
	;sHeaderTempo	$02, $15
	smpsHeaderTempo	$02, $12	
	smpsHeaderFM	Title_FM1, Target, $00, $00
	smpsHeaderFM	Title_FM2, Target, $00, $00
	smpsHeaderFM	Title_FM3, Target, $00, $00
	smpsHeaderFM	Title_FM4, Target, $00, $00
	smpsHeaderFM	Title_FM5, Target, $00, $00
	smpsHeaderFM	Title_FM6, Target, $00, $00
	smpsHeaderPSG	Title_PSG1, Target, $00, $00, $00, $00
	smpsHeaderPSG	Title_PSG2, Target, $00, $00, $00, $00
	smpsHeaderPSG	Title_PSG3, Target, $00, $00, $00, $00
	smpsHeaderPWM	Title_PWM1, Target, $00, $FF
	smpsHeaderPWM	Title_PWM2, Target, $00, $FF
	smpsHeaderPWM	Title_PWM3, Target, $00, $FF
	smpsHeaderPWM	Title_PWM4, Target, $00, $FF

Title_FM1:
Title_FM2:
Title_FM3:
Title_FM4:
Title_FM5:
Title_FM6:
Title_PSG1:
Title_PSG2:
Title_PSG3:
	smpsStop
	
Title_PWM1:
	dc.b dHiTimpani, $03, $03, $84, $06
	smpsLoop		$00, $1C, Title_PWM1,Target

Title_PWM1_Loop1:
	dc.b $85, $03, dSnare, $86, dSnare, dSnare, dSnare
	smpsLoop		$00, $02, Title_PWM1_Loop1,Target
	dc.b $85, dSnare, $86, dSnare, dHiTimpani

Title_PWM1_Loop2:
	dc.b $06
	smpsLoop		$00, $0B, Title_PWM1_Loop2,Target

Title_PWM1_Loop4:
	dc.b $84

Title_PWM1_Loop3:
	dc.b dHiTimpani
	smpsLoop		$00, $0F, Title_PWM1_Loop3,Target
	smpsLoop		$01, $08, Title_PWM1_Loop4,Target
	dc.b $84

Title_PWM1_Loop5:
	dc.b dHiTimpani
	smpsLoop		$00, $0C, Title_PWM1_Loop5,Target

Title_PWM1_Loop6:
	dc.b $85, $03, dSnare, $86, dSnare, dSnare, dSnare
	smpsLoop		$00, $02, Title_PWM1_Loop6,Target
	dc.b $85, dSnare, $86, dSnare, dHiTimpani

Title_PWM1_Loop7:
	dc.b $06
	smpsLoop		$00, $0B, Title_PWM1_Loop7,Target

Title_PWM1_Loop9:
	dc.b $84

Title_PWM1_Loop8:
	dc.b dHiTimpani
	smpsLoop		$00, $0F, Title_PWM1_Loop8,Target
	smpsLoop		$01, $07, Title_PWM1_Loop9,Target
	dc.b $84, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani, $36

Title_PWM1_Loop10:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	smpsLoop		$00, $04, Title_PWM1_Loop10,Target

Title_PWM1_Loop11:
	dc.b $84, dHiTimpani
	smpsLoop		$00, $2F, Title_PWM1_Loop11,Target
	dc.b $84, dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84
	dc.b $06, dHiTimpani, $36, $03

Title_PWM1_Loop12:
	dc.b $03, $84, $06, dHiTimpani, $03
	smpsLoop		$00, $1B, Title_PWM1_Loop12,Target
	dc.b $03, $84, $06, $85, $03, dSnare, $86, $06
	dc.b dSnare, $85, $86, $03, dSnare, dSnare, dSnare, $85
	dc.b dSnare, $86, dSnare, dHiTimpani

Title_PWM1_Loop13:
	dc.b $06
	smpsLoop		$00, $0B, Title_PWM1_Loop13,Target

Title_PWM1_Loop15:
	dc.b $84

Title_PWM1_Loop14:
	dc.b dHiTimpani
	smpsLoop		$00, $0F, Title_PWM1_Loop14,Target
	smpsLoop		$01, $0B, Title_PWM1_Loop15,Target
	dc.b $84, dHiTimpani, dHiTimpani, dHiTimpani, dHiTimpani

Title_PWM1_Loop16:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	smpsLoop		$00, $04, Title_PWM1_Loop16,Target

Title_PWM1_Loop17:
	dc.b $84, dHiTimpani
	smpsLoop		$00, $06, Title_PWM1_Loop17,Target
	dc.b $84, $03, dSnare

Title_PWM1_Loop18:
	dc.b dHiTimpani, $06, $84
	smpsLoop		$00, $29, Title_PWM1_Loop18,Target
	dc.b dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84, $06
	dc.b dHiTimpani, $03, nRst, $33

Title_PWM1_Loop19:
	dc.b $84, $03, dHiTimpani, dHiTimpani, $06
	smpsLoop		$00, $04, Title_PWM1_Loop19,Target

Title_PWM1_Loop20:
	dc.b $84, dHiTimpani
	smpsLoop		$00, $2F, Title_PWM1_Loop20,Target
	dc.b $84, dHiTimpani, $12, $84, $06, dHiTimpani, $12, $84
	dc.b $06, dHiTimpani, $03, nRst, dTimpani, $7F, nRst, nRst
	dc.b $22
	smpsJump		Title_PWM1,Target
	
Title_PWM2:
	dc.b dKick

Title_PWM2_Loop1:
	dc.b $0C
	smpsLoop		$00, $0F, Title_PWM2_Loop1,Target
	dc.b dSnare, $03, $03, $06, dKick

Title_PWM2_Loop2:
	dc.b $0C
	smpsLoop		$00, $0C, Title_PWM2_Loop2,Target
	dc.b $86, $06, dSnare, $87, $86, dSnare, $87, $86
	dc.b dSnare, $12, $06

Title_PWM2_Loop3:
	dc.b dKick, $0C, $06, dSnare, $0C, dKick, dSnare, $06
	smpsLoop		$00, $12, Title_PWM2_Loop3,Target
	dc.b dKick, $0C, $06, dSnare, $0C, $86, $06, dSnare
	dc.b $87, $86, dSnare, $87, $86, dSnare, dMidTimpani, $0C

Title_PWM2_Loop4:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $0B, Title_PWM2_Loop4,Target
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dMidTimpani

Title_PWM2_Loop5:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $04, Title_PWM2_Loop5,Target
	dc.b dKick, dKick, dKick, $86, $06, $06, $87, $85
	dc.b $86, $87, $85, $86

Title_PWM2_Loop6:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $03, dSnare, dKick, $06
	dc.b dSnare, $0C
	smpsLoop		$00, $05, Title_PWM2_Loop6,Target
	dc.b dKick, dSnare, $06, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $03, dSnare, dKick, $06, dSnare
	dc.b dSnare, $12, $06, $12, $06, $12, $85, $03
	dc.b $86, $94, $06, $85, $03, $86, $94, $94
	dc.b $85, $06, $94, dKick

Title_PWM2_Loop7:
	dc.b $0C
	smpsLoop		$00, $0F, Title_PWM2_Loop7,Target
	dc.b dSnare, $03, $03, $03, $03, dKick

Title_PWM2_Loop8:
	dc.b $0C
	smpsLoop		$00, $0C, Title_PWM2_Loop8,Target
	dc.b $86, $06, dSnare, $87, $86, dSnare, $87, $86
	dc.b dSnare

Title_PWM2_Loop9:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C
	smpsLoop		$00, $08, Title_PWM2_Loop9,Target
	dc.b dMidTimpani

Title_PWM2_Loop10:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $0B, Title_PWM2_Loop10,Target
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dMidTimpani

Title_PWM2_Loop11:
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, dKick
	smpsLoop		$00, $03, Title_PWM2_Loop11,Target
	dc.b dSnare, $06, dKick, $0C, $06, dSnare, $0C, $85
	dc.b $06, $86, $87, $85, $86, $87, $85, $86
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $06, $06

Title_PWM2_Loop12:
	dc.b dSnare, $0C, dKick, dSnare, $06, dKick, $0C, $06
	dc.b dSnare, $0C, dKick, dSnare, dKick, $03, dSnare, dKick
	dc.b $06
	smpsLoop		$00, $05, Title_PWM2_Loop12,Target
	dc.b dSnare, dSnare, $12, $06, $12, $06, $03, nRst
	dc.b dKick, $0C, $0C, $0C, $0C, $85, $06, $86
	dc.b $87, $85, $86, $87, $85, $86

Title_PWM2_Loop13:
	dc.b dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare
	dc.b $0C, dKick, dSnare, dKick, $03, dSnare, dKick, $06
	dc.b dSnare, $0C
	smpsLoop		$00, $05, Title_PWM2_Loop13,Target
	dc.b dKick, dSnare, $06, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $03, dSnare, dKick, $06, dSnare
	dc.b dSnare, $12, $06, $12, $06, $03, nRst, $7F
	dc.b $7F, $25
	smpsJump		Title_PWM2,Target
	
Title_PWM3:
	dc.b dMidTimpani, $7F, nRst, $41, $7F, $11, dSnare, $06
	dc.b $87, $94, dSnare, $87, $94, dSnare, $87, $7F
	dc.b nRst, nRst, nRst, $09, dMidTimpani, $7F, nRst, nRst
	dc.b nRst, $03, dMidTimpani, $7F, nRst, $11, dSnare, $06
	dc.b $87, $94, dSnare, $87, $94, dSnare, $87, dKick
	dc.b $7F, nRst, nRst, nRst, $03, dMidTimpani, $7F, nRst
	dc.b $41, dKick, $7F, nRst, $71, $86, $06, $87
	dc.b $94, $86, $87, $94, $86, $87, dMidTimpani, $7F
	dc.b nRst, $41, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F
	dc.b nRst, nRst, $22, $7F, $35, dKick, $0C, dMidTimpani
	dc.b $7F, nRst, $11, dSnare, $06, $87, $94, dSnare
	dc.b $87, $94, dSnare, $87, dMidTimpani, $7F, nRst, nRst
	dc.b nRst, $03, dKick, $7F, nRst, nRst, nRst, $03
	dc.b dMidTimpani, $7F, nRst, $41, dKick, $7F, nRst, $41
	dc.b $86, $06, $87, $94, $86, $87, $94, $86
	dc.b $87, dMidTimpani, $7F, nRst, $41, dMidTimpani, $7F, nRst
	dc.b $41, dMidTimpani, $7F, nRst, $6E, $33, $86, $06
	dc.b $87, $94, $86, $87, $94, $86, $87, dMidTimpani
	dc.b $7F, nRst, $41, dMidTimpani, $7F, nRst, $41, dMidTimpani
	dc.b $7F, nRst, $6E, $7F, $7F, $25
	smpsJump		Title_PWM3,Target
	
Title_PWM4:
	dc.b nRst, $7F, $41, $7F, $17, dKick, $06, $0C
	dc.b $06, $0C

Title_PWM4_Loop1:
	dc.b $54, nRst
	smpsLoop		$00, $05, Title_PWM4_Loop1,Target
	dc.b nRst, dKick, $06, $12, $77, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, $01, dSnare, $0C, dKick
	dc.b dKick, dSnare, $6C, nRst, nRst, nRst, nRst, nRst
	dc.b dMidTimpani, $24, nRst, $7F, $41, $7F, $17, dKick
	dc.b $06, $0C, $06, $0C

Title_PWM4_Loop2:
	dc.b $59, nRst
	smpsLoop		$00, $06, Title_PWM4_Loop2,Target
	dc.b nRst, nRst, $01, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, $4F

Title_PWM4_Loop3:
	dc.b nRst
	smpsLoop		$00, $07, Title_PWM4_Loop3,Target
	dc.b nRst, $01, $33, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, $4F

Title_PWM4_Loop4:
	dc.b nRst
	smpsLoop		$00, $07, Title_PWM4_Loop4,Target
	dc.b nRst, $01, $7F, $7F, $25
	smpsJump		Title_PWM4,Target

Title_Patches:
	dc.b	$28, $39, $35, $30, $31, $1F, $1F, $1F, $1F, $0C, $0A, $07, $0A, $07, $07, $07, $09, $26, $16, $16, $F6, $17, $32, $14, $00
	even