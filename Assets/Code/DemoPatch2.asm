	;New v_gameProg1-3 increment patch, to force TTZ>act 3 TTZ to finish game
	;Patch code at $010F86 (ROM $890F86) to jump to new code here
	
	;Patch increment of v_gameProg1-3 progerss to check for act 3 for TTZ, and finish game (set to $06 for TTZ prog byte)
	;ORG at RAW $77600 (ROM $8F7600)	
	addq.w  #1,d1					
	
	;!@ New code to compare new saved act ID (d1) against 3. If >=3, set to complete zone ($06)
	cmpi.b	#3, d1
	bls.s	Skip
	move.b	#$06,d1

Skip:
	lea     (v_gameProg1).w,a0
	move.b  d1,(a0,d0.w)
	move.w  (v_time).w,d1   ; Level time in frames (word)
	move.w  d1,d0
	andi.l  #$FFF,d0
	rol.w   #4,d1
	andi.w  #$F,d1
	mulu.w  #$F00,d1
	add.l   d1,d0
	add.l   d0,($FFFFE016).w
	rts