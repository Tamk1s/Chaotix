--************************************************************************
-- Save Slots
--************************************************************************
	
	-- Save Slots start at 0xFFFFE6AC
	-- Each slot takes up 10 bytes
	-- 0xFFFFE6AC + (10 * slotnumber)
	
	
	-- (1st byte) Save State 
		-- 0 = Incomplete
		-- 1 = Game Complete
		-- 2 = Game Complete(All Choas Emeralds)
		-- 3 = Game Complete(All Super Emeralds)
		-- 128 = New Game
		
	-- (2nd byte) Unknown
		-- Always 0; Seems to be unused
	
	
	-- (3rd Byte) Character and Special Stage
		-- First Nybble represents Character
		-- Second Nybble represents what Special Stage the player will be transported to next
		
		-- First Nybble
		-- 0 = Sonic and Tails
		-- 1 = Sonic
		-- 2 = Tails
		-- 3 = Knuckles
		
		-- Second Nybble
		-- 0-6 = specail stage number; 7 = yellow emerald special stage
		
	-- (4th Byte) Level number
		-- 0-13 = levels
		
	-- (5th Byte) Unknown
		-- Changed to 1 on an unknown occurance
		
	-- (6th Byte) Special Stage Ring Information
		-- Tells the game what special Stage Rings the user has been in on the current map
		-- not exactly sure how this works
		-- AIZ's first special Stage Ring changes this to a 2
	
			
	-- (7th and 8th Byte) Choas Emerald Information
	-- Each emeralds state number is added to each other in 1 byte
	-- EX: 1 + 8 + 48 = 57 
	-- 		So putting 57 as the Seventh byte will give you these results
	--		Blue Choas Emerald
	--		Purple Choas Emerald that is transformed into a super emerald but grayed
	--		Orange Super Emerald
	
	-- (7th Byte)
		-- blue emerald values 
			-- 1 = got chaos emerald
			-- 2 = disabled super emerald
			-- 3 = got super emerald
			
		-- purple emerald values 
			-- 4 = got chaos emerald
			-- 8 = disabled super emerald
			-- 12 = got super emerald
				
		-- orange emerald values 
			-- 16 = got chaos emerald
			-- 32 = disabled super emerald
			-- 48 = got super emerald		
			
		-- green emerald values 
			-- 64 = got chaos emerald
			-- 128 = disabled super emerald
			-- 192 = got super emerald	
		
	-- (8th Byte)
		-- cyan emerald values
			-- 4 = got chaos emerald
			-- 8 = disabled super emerald
			-- 12 = got super emerald	
			
		-- red emerald values
			-- 16 = got chaos emerald
			-- 32 = disabled super emerald
			-- 48 = got super emerald
				
		-- gray emerald values
			-- 64 = got chaos emerald
			-- 128 = disabled super emerald
			-- 192 = got super emerald	
			
	-- (9th Byte) Lives
		-- 0-99
		
	-- (10th Byte) Continues
		-- 0-99
			