	;New Combi-breaker Monitor code.
	;Resets bits for 2P/chained in rubberband bitfield
	
	;Patch Large hourglass code to goto new code
	;ORG at RAW 0x775CE (ROM $8F75CE)	
	move.b  #0,$28(a6)			;Reset routine counter (respawns monitor)
	move.b  (v_rubberband).w,d0	;Move combi ring state into d0
	bclr	#0,d0				;Clear bits for $05 (0th bit)
	bclr	#2,d0				;Clear bits for $05 (2nd bit)
	move.b	d0,(v_rubberband).w	;Restore d0 back into combi ring state
	
	;!@ move.b  #sfx_BreakItem,d0 ; Item break/enemy kill (S1)	
	move.b  #sfx_Balloon,d0
	jsr     PlaySound
	rts