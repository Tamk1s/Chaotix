;Handle ring increment (single ring)
BSRing_Fix_Ring:
	addq.w  #pos1_RingGet,(v_rings).w
	bra.s	BSRing_Fix
	
;Handle cube ring increment (10 rings)
BSRing_Fix_Cube_Ring:
	addi.w  #pos10_Rings,(v_rings).w
	jsr		(BS_DestroyCube).l			;Destroy cube
	bra.s	BSRing_Fix
	
;Handle ring loss (10 rings, spikes)
BSRing_Fix_Cube_Spike:
	subi.w  #neg10_ringLoss_BS,(v_rings).w
	jsr		(BS_DestroyCube).l			;Destroy cube

;Reset ring countdown timer (set to $18)
BSRing_Fix:
	move.w  #$18,(v_BS_RingCntdwn_hi).w
	rts
	
;Bugfix routine to kick player out of BS if level timer >$9C00 (almost 10 seconds left)
BSTime_Fix:
	addq.w  #1,(v_time).w   ; Level time in frames (word)
	move.w  (v_time).w,d0	;Move time into d0
	cmpi.w	#$9C00, d0		;Are $9C00 seconds left?
	bcs.s	skip			;If less than, branch
	st      (f_BS_Exit_hi).w ;Set BS exit flag to quit
	
skip:
	lea     ($FFFFE208).w,a6 ;Load addr into a6
	rts
	
Obj_BigRing_BSFix:
	cmpi.w  #$9C80,(v_time).w
	bcc.s   delete
	cmpi.w  #pos20_RingBonus,(v_rings).w ; Bonus Stage ring
	blt.s   delete
	jmp		($008927E0).l
delete:
	jmp     (DeleteObject).l