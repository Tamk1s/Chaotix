Level_SpawnGoal_Resume	EQU	$0089105E
Level_SpawnGoal_x2		EQU	$009F845E
PossiblyInitiateCall	EQU	$0088FF5A
DeleteObject2			EQU	$008B188A

	move.b	obSubType_lo(a6),d0
	bne.s	@end
@reset:	
	clr.w	($FFFFC21C).w			;!@ NEW
	move.w	#0,(v_actConc_hi).w
	move.w	#id_TTZ,(v_zone_hi).w	;!@ NEW
	jsr		(Level_SpawnGoal_x2).l
	bra.s	@locret
@end:
	clr.w	($FFFFC21C).w
	move.w	#id_TTZ,(v_zone_hi).w
	;bset    #0,($FFFFC21D).w
	;jsr	(Level_SpawnGoal_Resume).l
@locret:
	jmp     (DeleteObject2).l
	rts	

CallPartner:	
	movea.w (v_player1_T2Ptr).w,a0
	movea.w (v_player2_T2Ptr).w,a1
	jsr     PossiblyInitiateCall
	rts