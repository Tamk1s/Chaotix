TableEnd	EQU		$0000
PingPong	EQU 	$FFFE
Terminate	EQU 	$FFFF
	
;Speed constants
Speed_Fast		EQU	$0004
Speed_Slow		EQU	$0008
	
;Blink1 FG palette offset constants
Blink00a_Pal	EQU	$0031
Blink01a_Pal	EQU	$0032
Blink02a_Pal	EQU	$0033
Blink03a_Pal	EQU	$0034
Blink04a_Pal	EQU	$0035
Blink05a_Pal	EQU	$0036
Blink06a_Pal	EQU	$0037
Blink07a_Pal	EQU	$0038
Blink08a_Pal	EQU	$0039

Blink00b_Pal	EQU	$0021
Blink01b_Pal	EQU	$0022
Blink02b_Pal	EQU	$0023
Blink03b_Pal	EQU	$0024
Blink04b_Pal	EQU	$0025
Blink05b_Pal	EQU	$0026
Blink06b_Pal	EQU	$0027
Blink07b_Pal	EQU	$0028
Blink08b_Pal	EQU	$0029
	
;Palette values
Clr_00			EQU	$0E0E
Clr_01			EQU	$0C0C
Clr_02			EQU	$0A0A
Clr_03			EQU	$0808
Clr_04			EQU	$0606
Clr_05			EQU	$0404
Clr_06			EQU	$0202
Clr_07			EQU	$0200
Clr_08			EQU	$0000
	
ActTODa_Hdr:
ATH_TD0M:	dc.w	Palc_TblA-ATH_TD0M
ATH_TD0D:	dc.w	Palc_TblA-ATH_TD0D
ATH_TD0S:	dc.w	Palc_TblA-ATH_TD0S
ATH_TD0N:	dc.w	Palc_TblA-ATH_TD0N		
ATH_TD1M:	dc.w	Palc_TblA-ATH_TD1M
ATH_TD1D:	dc.w	Palc_TblA-ATH_TD1D
ATH_TD1S:	dc.w	Palc_TblA-ATH_TD1S
ATH_TD1N:	dc.w	Palc_TblA-ATH_TD1N		
ATH_TD2M:	dc.w	Palc_TblA-ATH_TD2M
ATH_TD2D:	dc.w	Palc_TblA-ATH_TD2D
ATH_TD2S:	dc.w	Palc_TblA-ATH_TD2S
ATH_TD2N:	dc.w	Palc_TblA-ATH_TD2N		
ATH_TD3M:	dc.w	Palc_TblA-ATH_TD3M
ATH_TD3D:	dc.w	Palc_TblA-ATH_TD3D
ATH_TD3S:	dc.w	Palc_TblA-ATH_TD3S
ATH_TD3N:	dc.w	Palc_TblA-ATH_TD3N		
ATH_TD4M:	dc.w	Palc_TblA-ATH_TD4M
ATH_TD4D:	dc.w	Palc_TblA-ATH_TD4D
ATH_TD4S:	dc.w	Palc_TblA-ATH_TD4S
ATH_TD4N:	dc.w	Palc_TblA-ATH_TD4N		
ATH_TD5M:	dc.w	Palc_TblA-ATH_TD5M
ATH_TD5D:	dc.w	Palc_TblA-ATH_TD5D
ATH_TD5S:	dc.w	Palc_TblA-ATH_TD5S
ATH_TD5N:	dc.w	Palc_TblA-ATH_TD5N
ATH_TD6M:	dc.w	Palc_TblA-ATH_TD6M
ATH_TD6D:	dc.w	Palc_TblA-ATH_TD6D
ATH_TD6S:	dc.w	Palc_TblA-ATH_TD6S
ATH_TD6N:	dc.w	Palc_TblA-ATH_TD6N
	
Palc_TblA:
Palc_TblA_0:	dc.w	Blink00a-Palc_TblA
Palc_TblA_1:	dc.w	Blink01a-Palc_TblA
Palc_TblA_2:	dc.w	Blink02a-Palc_TblA
Palc_TblA_3:	dc.w	Blink03a-Palc_TblA
Palc_TblA_4:	dc.w	Blink04a-Palc_TblA
Palc_TblA_5:	dc.w	Blink05a-Palc_TblA
Palc_TblA_6:	dc.w	Blink06a-Palc_TblA
Palc_TblA_7:	dc.w	Blink07a-Palc_TblA
Palc_TblA_8:	dc.w	Blink08a-Palc_TblA
				dc.w	TableEnd
		
Blink00a:
		dc.w	Blink00a_Pal
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Terminate
		
Blink01a:
		dc.w	Blink01a_Pal
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Terminate
		
Blink02a:
		dc.w	Blink02a_Pal
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Terminate
		
Blink03a:
		dc.w	Blink03a_Pal
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Terminate
		
Blink04a:
		dc.w	Blink04a_Pal
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Terminate
		
Blink05a:
		dc.w	Blink05a_Pal
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Terminate
		
Blink06a:
		dc.w	Blink06a_Pal
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Terminate
		
Blink07a:
		dc.w	Blink07a_Pal
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Terminate
		
Blink08a:
		dc.w	Blink08a_Pal
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Terminate

		
ActTODb_Hdr:
ATH_CS0M:	dc.w	Palc_TblB-ATH_CS0M
ATH_CS0D:	dc.w	Palc_TblB-ATH_CS0D
ATH_CS0S:	dc.w	Palc_TblB-ATH_CS0S
ATH_CS0N:	dc.w	Palc_TblB-ATH_CS0N		
ATH_CS1M:	dc.w	Palc_TblB-ATH_CS1M
ATH_CS1D:	dc.w	Palc_TblB-ATH_CS1D
ATH_CS1S:	dc.w	Palc_TblB-ATH_CS1S
ATH_CS1N:	dc.w	Palc_TblB-ATH_CS1N		
ATH_CS2M:	dc.w	Palc_TblB-ATH_CS2M
ATH_CS2D:	dc.w	Palc_TblB-ATH_CS2D
ATH_CS2S:	dc.w	Palc_TblB-ATH_CS2S
ATH_CS2N:	dc.w	Palc_TblB-ATH_CS2N		
ATH_CS3M:	dc.w	Palc_TblB-ATH_CS3M
ATH_CS3D:	dc.w	Palc_TblB-ATH_CS3D
ATH_CS3S:	dc.w	Palc_TblB-ATH_CS3S
ATH_CS3N:	dc.w	Palc_TblB-ATH_CS3N		
ATH_CS4M:	dc.w	Palc_TblB-ATH_CS4M
ATH_CS4D:	dc.w	Palc_TblB-ATH_CS4D
ATH_CS4S:	dc.w	Palc_TblB-ATH_CS4S
ATH_CS4N:	dc.w	Palc_TblB-ATH_CS4N		
ATH_CS5M:	dc.w	Palc_TblB-ATH_CS5M
ATH_CS5D:	dc.w	Palc_TblB-ATH_CS5D
ATH_CS5S:	dc.w	Palc_TblB-ATH_CS5S
ATH_CS5N:	dc.w	Palc_TblB-ATH_CS5N
ATH_CS6M:	dc.w	Palc_TblB-ATH_CS6M
ATH_CS6D:	dc.w	Palc_TblB-ATH_CS6D
ATH_CS6S:	dc.w	Palc_TblB-ATH_CS6S
ATH_CS6N:	dc.w	Palc_TblB-ATH_CS6N
	
Palc_TblB:
Palc_TblB_0:	dc.w	Blink00b-Palc_TblB
Palc_TblB_1:	dc.w	Blink01b-Palc_TblB
Palc_TblB_2:	dc.w	Blink02b-Palc_TblB
Palc_TblB_3:	dc.w	Blink03b-Palc_TblB
Palc_TblB_4:	dc.w	Blink04b-Palc_TblB
Palc_TblB_5:	dc.w	Blink05b-Palc_TblB
Palc_TblB_6:	dc.w	Blink06b-Palc_TblB
Palc_TblB_7:	dc.w	Blink07b-Palc_TblB
Palc_TblB_8:	dc.w	Blink08b-Palc_TblB
						dc.w	TableEnd
		
Blink00b:
		dc.w	Blink00b_Pal
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Terminate
		
Blink01b:
		dc.w	Blink01b_Pal
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Terminate
		
Blink02b:
		dc.w	Blink02b_Pal
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Terminate
		
Blink03b:
		dc.w	Blink03b_Pal
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Terminate
		
Blink04b:
		dc.w	Blink04b_Pal
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Terminate
		
Blink05b:
		dc.w	Blink05b_Pal
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Terminate
		
Blink06b:
		dc.w	Blink06b_Pal
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Terminate
		
Blink07b:
		dc.w	Blink07b_Pal
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Terminate
		
Blink08b:
		dc.w	Blink08b_Pal
		dc.w	Clr_08, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_00, Speed_Fast
		dc.w	Clr_01, Speed_Fast
		dc.w	Clr_02, Speed_Fast
		dc.w	Clr_03, Speed_Fast
		dc.w	Clr_04, Speed_Fast
		dc.w	Clr_05, Speed_Fast
		dc.w	Clr_06, Speed_Fast
		dc.w	Clr_07, Speed_Fast
		dc.w	Terminate