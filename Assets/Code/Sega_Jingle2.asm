	;2nd part of new Sega Jingle
	;Patch jsr ReadControllers in SegaScreen_Vint with jsr to new routine at $077584/$8F7584:
	;This routine reads joypads, also issues PWM requests (to trigger Sega chant appropriately)
	
	;Patch jsr at $003446 ($883446) to goto new code at $8F7584
	;ORG at RAW $077584 (ROM $8F7584)		
SegaPWM:
	jsr 	ReadController
	addq.w  #1,($FFFFE004).w	;This enables PWM access
	jsr 	IssuePwmRequests
	rts