	include "Palc_Hdr.asm"
	
	;Speed constants
	Speed_Fast:		equ	$0004				;Speed for MSN BG factory red light (4 frames)
	Speed_Slow:		equ	$0008				;Speed for everything except MSN BG factory red light (8 frames)
	
	;Blink1 FG palette offset constants
	Blink1A_Pal:	equ	$0014				;Palette offset for 	Blink1A
	Blink1B_Pal:	equ	$0016				;~						Blink1B
	Blink1C_Pal:	equ	$0018				;~						Blink1C
	
	;Blink2 BG pallet offset constants
	Blink2C_Pal:	equ	$005A				;Palette offset for		Blink2C
	Blink2A_Pal:	equ	$005C				;~						Blink2A
	Blink2B_Pal:	equ	$005E				;~						Blink2B
	
ActTOD_Hdr:
		ATH_TTZ0M:	dc.w	Palc_TblM-ATH_TTZ0M
		ATH_TTZ0D:	dc.w	Palc_TblD-ATH_TTZ0D
		ATH_TTZ0S:	dc.w	Palc_TblS-ATH_TTZ0S
		ATH_TTZ0N:	dc.w	Palc_TblN-ATH_TTZ0N		
		ATH_TTZ1M:	dc.w	Palc_TblM-ATH_TTZ1M
		ATH_TTZ1D:	dc.w	Palc_TblD-ATH_TTZ1D
		ATH_TTZ1S:	dc.w	Palc_TblS-ATH_TTZ1S
		ATH_TTZ1N:	dc.w	Palc_TblN-ATH_TTZ1N		
		ATH_TTZ2M:	dc.w	Palc_TblM-ATH_TTZ2M
		ATH_TTZ2D:	dc.w	Palc_TblD-ATH_TTZ2D
		ATH_TTZ2S:	dc.w	Palc_TblS-ATH_TTZ2S
		ATH_TTZ2N:	dc.w	Palc_TblN-ATH_TTZ2N		
		ATH_TTZ3M:	dc.w	Palc_TblM-ATH_TTZ3M
		ATH_TTZ3D:	dc.w	Palc_TblD-ATH_TTZ3D
		ATH_TTZ3S:	dc.w	Palc_TblS-ATH_TTZ3S
		ATH_TTZ3N:	dc.w	Palc_TblN-ATH_TTZ3N		
		ATH_TTZ4M:	dc.w	Palc_TblM-ATH_TTZ4M
		ATH_TTZ4D:	dc.w	Palc_TblD-ATH_TTZ4D
		ATH_TTZ4S:	dc.w	Palc_TblS-ATH_TTZ4S
		ATH_TTZ4N:	dc.w	Palc_TblN-ATH_TTZ4N		
		ATH_TTZ5M:	dc.w	Palc_TblM-ATH_TTZ5M
		ATH_TTZ5D:	dc.w	Palc_TblD-ATH_TTZ5D
		ATH_TTZ5S:	dc.w	Palc_TblS-ATH_TTZ5S
		ATH_TTZ5N:	dc.w	Palc_TblN-ATH_TTZ5N
		ATH_TTZ6M:	dc.w	Palc_TblM-ATH_TTZ6M
		ATH_TTZ6D:	dc.w	Palc_TblD-ATH_TTZ6D
		ATH_TTZ6S:	dc.w	Palc_TblS-ATH_TTZ6S
		ATH_TTZ6N:	dc.w	Palc_TblN-ATH_TTZ6N
	
	;All TOD tables have same FG palcycle (red, yellow, brown light blinking)
	;Each TOD table has its own BG palcycle variant for thw water reflection
	;Additionally, MSN TOD has a BG palcycle for the red factory lights
	Palc_TblM:
		Palc_Tbl_M1:	dc.w	Blink1A-Palc_TblM
		Palc_Tbl_M2:	dc.w	Blink1B-Palc_TblM
		Palc_Tbl_M3:	dc.w	Blink1C-Palc_TblM
		Palc_Tbl_M4:	dc.w	Blink2A_M-Palc_TblM
		Palc_Tbl_M5:	dc.w	Blink2B_M-Palc_TblM
		Palc_Tbl_M6:	dc.w	Blink2C_MSN-Palc_TblM	;Blink2C factory red light
						dc.w	TableEnd
						
	Palc_TblD:
		Palc_Tbl_D1:	dc.w	Blink1A-Palc_TblD
		Palc_Tbl_D2:	dc.w	Blink1B-Palc_TblD
		Palc_Tbl_D3:	dc.w	Blink1C-Palc_TblD
		Palc_Tbl_D4:	dc.w	Blink2A_D-Palc_TblD
		Palc_Tbl_D5:	dc.w	Blink2B_D-Palc_TblD
						dc.w	TableEnd
						
	Palc_TblS:
		Palc_Tbl_S1:	dc.w	Blink1A-Palc_TblS
		Palc_Tbl_S2:	dc.w	Blink1B-Palc_TblS
		Palc_Tbl_S3:	dc.w	Blink1C-Palc_TblS
		Palc_Tbl_S4:	dc.w	Blink2A_S-Palc_TblS
		Palc_Tbl_S5:	dc.w	Blink2B_S-Palc_TblS
		Palc_Tbl_S6:	dc.w	Blink2C_MSN-Palc_TblS	;Blink2C factory red light
						dc.w	TableEnd
						
	Palc_TblN:
		Palc_Tbl_N1:	dc.w	Blink1A-Palc_TblN
		Palc_Tbl_N2:	dc.w	Blink1B-Palc_TblN
		Palc_Tbl_N3:	dc.w	Blink1C-Palc_TblN
		Palc_Tbl_N4:	dc.w	Blink2A_N-Palc_TblN
		Palc_Tbl_N5:	dc.w	Blink2B_N-Palc_TblN
		Palc_Tbl_N6:	dc.w	Blink2C_MSN-Palc_TblN	;Blink2C factory red light
						dc.w	TableEnd						
		
	Blink1A:
		dc.w	Blink1A_Pal
		dc.w	$0024, Speed_Slow
		dc.w	$0046, Speed_Slow
		dc.w	$00EE, Speed_Slow
		dc.w	$00AC, Speed_Slow
		dc.w	$0068, Speed_Slow
		dc.w	$0046, Speed_Slow
		dc.w	Terminate
		
	Blink1B:
		dc.w	Blink1B_Pal
		dc.w	$0202, Speed_Slow
		dc.w	$0022, Speed_Slow
		dc.w	$006A, Speed_Slow
		dc.w	$0048, Speed_Slow
		dc.w	$0024, Speed_Slow
		dc.w	$0022, Speed_Slow
		dc.w	Terminate
		
	Blink1C:
		dc.w	Blink1C_Pal
		dc.w	$0002, Speed_Slow
		dc.w	$0004, Speed_Slow
		dc.w	$002E, Speed_Slow
		dc.w	$000A, Speed_Slow
		dc.w	$0006, Speed_Slow
		dc.w	$0004, Speed_Slow
		dc.w	Terminate
	
	Blink2A_M:
		dc.w	Blink2A_Pal
		dc.w	$0A66, Speed_Slow
		dc.w	$0C66, Speed_Slow
		dc.w	$0C86, Speed_Slow
		dc.w	$0C88, Speed_Slow
		dc.w	$0A88, Speed_Slow
		dc.w	$0A68, Speed_Slow
		dc.w	Terminate
		
	Blink2A_D:
		dc.w	Blink2A_Pal
		dc.w	$0840, Speed_Slow
		dc.w	$0820, Speed_Slow		
		dc.w	$0800, Speed_Slow
		dc.w	$0820, Speed_Slow
		dc.w	Terminate
		
	Blink2A_S:
		dc.w	Blink2A_Pal
		dc.w	$0628, Speed_Slow
		dc.w	$062A, Speed_Slow
		dc.w	$082A, Speed_Slow
		dc.w	$0828, Speed_Slow
		dc.w	Terminate
		
	Blink2A_N:
		dc.w	Blink2A_Pal
		dc.w	$0002, Speed_Slow
		dc.w	$0004, Speed_Slow
		dc.w	$0006, Speed_Slow
		dc.w	$0004, Speed_Slow
		dc.w	Terminate
		
	Blink2B_M:
		dc.w	Blink2B_Pal
		dc.w	$0C88, Speed_Slow
		dc.w	$0C86, Speed_Slow
		dc.w	$0C66, Speed_Slow
		dc.w	$0A66, Speed_Slow
		dc.w	$0A68, Speed_Slow
		dc.w	$0A88, Speed_Slow
		dc.w	Terminate
		
	Blink2B_D:
		dc.w	Blink2B_Pal
		dc.w	$0800, Speed_Slow
		dc.w	$0820, Speed_Slow
		dc.w	$0840, Speed_Slow
		dc.w	$0820, Speed_Slow
		dc.w	Terminate
		
	Blink2B_S:
		dc.w	Blink2B_Pal
		dc.w	$082A, Speed_Slow
		dc.w	$0828, Speed_Slow
		dc.w	$0628, Speed_Slow
		dc.w	$062A, Speed_Slow
		dc.w	Terminate
		
	Blink2B_N:
		dc.w	Blink2B_Pal
		dc.w	$0006, Speed_Slow
		dc.w	$0004, Speed_Slow
		dc.w	$0002, Speed_Slow
		dc.w	$0004, Speed_Slow
		dc.w	Terminate
		
	Blink2C_MSN:
		dc.w	Blink2C_Pal
		dc.w	$0006, Speed_Fast
		dc.w	$0008, Speed_Fast
		dc.w	$000A, Speed_Fast
		dc.w	$000C, Speed_Fast
		dc.w	$000E, Speed_Fast
		dc.w	PingPong