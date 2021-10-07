Target	EQU	$4B1FD
	smpsHeaderVoice	SScreen_Patches, Target
	smpsHeaderChan	$06, $03
	smpsHeaderTempo	$01, $25
	smpsHeaderFM	SScreen_FM1, Target, $00, $09
	smpsHeaderFM	SScreen_FM1, Target, $0C, $10
	smpsHeaderFM	SScreen_FM1, Target, $0C, $10
	smpsHeaderFM	SScreen_FM1, Target, $00, $10
	smpsHeaderFM	SScreen_FM1, Target, $00, $10
	smpsHeaderFM	SScreen_FM1, Target, $00, $10
	smpsHeaderPSG	SScreen_FM1, Target, $F4, $00, $00, $0C
	smpsHeaderPSG	SScreen_FM1, Target, $F4, $03, $00, $0C
	smpsHeaderPSG	SScreen_FM1, Target, $23, $01, $00, $02
	smpsHeaderPWM	SScreen_FM1, Target, $00, $99
	smpsHeaderPWM	SScreen_FM1, Target, $00, $AA
	smpsHeaderPWM	SScreen_FM1, Target, $00, $99
	smpsHeaderPWM	SScreen_FM1, Target, $00, $99

SScreen_FM1:
	smpsStop


SScreen_Patches:

	
	dc.b	$3A
	dc.b	$01, $05, $32, $71,	$CF, $95, $1F, $1F
	dc.b	$0E, $0F, $05, $0C,	$17, $06, $06, $07
	dc.b	$8F, $4F, $4F, $4F,	$21, $13, $24, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$1C
	dc.b	$32, $02, $04, $34,	$5F, $FF, $5F, $FF
	dc.b	$05, $05, $05, $07,	$15, $10, $21, $13
	dc.b	$9F, $3F, $5F, $AF,	$30, $80, $02, $84
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$2D
	dc.b	$06, $05, $04, $10,	$1F, $5F, $5F, $5F
	dc.b	$05, $07, $0C, $0C,	$17, $17, $12, $18
	dc.b	$9F, $9C, $9C, $9C,	$2D, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3D
	dc.b	$01, $01, $01, $01,	$94, $19, $19, $19
	dc.b	$0F, $0D, $0D, $0D,	$07, $04, $04, $04
	dc.b	$25, $1A, $1A, $1A,	$15, $80, $80, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

	
	dc.b	$3C
	dc.b	$07, $01, $08, $04,	$5F, $9F, $9F, $5F
	dc.b	$16, $1F, $16, $1F,	$09, $0F, $16, $11
	dc.b	$6F, $0F, $AF, $0F,	$16, $80, $11, $80
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
