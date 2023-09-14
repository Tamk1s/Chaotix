Level_SpawnGoal_x	EQU	$009F8456
			jsr		(Level_SpawnGoal_x).l
			move.w	#id_TTZ,(v_zone_hi).w
			jmp     (DeleteObject).l
			rts