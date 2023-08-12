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
BSTime_Store:
	move.w	(v_time).w, d0
	move.w	d0, (v_demo_btnAddr).w
	btst    #rbb_DemoCtrl,(v_rubberband).w ; Set if players are being controlled by autodemo data
	sne     (f_BS_Exit_lo).w
	bne.s   Skip2
	rts

Skip2:
	jmp		($008BCD10).l

BSTime_Restore:
	move.w	(v_demo_btnAddr).w, d0
	move.w	d0, (v_time).w
	clr.l	(v_demo_btnAddr).l
	moveq   #sfx_ExitSS,d0  ; Function Exits BS stage
	jsr     (PlaySound).l 
	rts