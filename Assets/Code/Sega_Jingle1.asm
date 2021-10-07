	;1st part of new Sega Jingle
	;Jump to new code to LoadLevelStuff, and play Sega jingle
	
	;Patch jsr at $003446 ($883446) to goto new code at $8F7574
	;ORG at RAW $077574 (ROM $8F7574)	
Sega_Jingle:
	jsr		LoadLevelStuff
	moveq   #bgm_AllCRings,d0
	jsr		PlaySound
	
	;!@ Demo Code. Sets all other zone's act progress to $06 (cleared)
	move.l  #$06060601,(v_gameProg1).l
	move.w  #$0600,(v_gameProg3).w	
	rts	