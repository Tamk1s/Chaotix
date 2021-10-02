	;1st part of new Sega Jingle
	;Jump to new code to LoadLevelStuff, and play Sega jingle
	
	;Patch jsr at $003446 ($883446) to goto new code at $8F7574
	;ORG at RAW $077574 (ROM $8F7574)	
Sega_Jingle:
	jsr		LoadLevelStuff
	moveq   #bgm_AllCRings,d0
	jsr		PlaySound
	rts