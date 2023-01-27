--*************************************************************
--	Live Palette Editor for Sonic games
--	Made by Tribeam
--*************************************************************



	-- All memory addresses and global variables are defined here

	--*******************
	-- Global Variables
	--*******************
	Version = "1.2 D32x GenesisDoes"
	Mouse_Input = 0 												-- Mouse information
	Current_Game = nil												-- Tells the scripts which game we are running
	Checksum = nil													-- Current game checksum
	Menu = false													-- show/hide the main menu
	PalTool = true													-- show/hide the palette tool
	Lock = false													-- Lock/Unlock palette
	Water_Win = false												-- Show/hide Water editor
	Water_Editor_Palette = {}										-- Palette shown on the water editor window
	Once = 0														-- Run a block of code just once
	Water_Old = {}													-- Old water palette incase the user cancels
	Save_Win = false												-- Show/hide Save editor
	Save_Editor_Palette = {}										-- Palette shown on the save editor window
	Load_Win = false												-- Show/hide file list window
	Load_Editor_Palette = {}										-- Palette shown on the load editor window
	Gradient_Win = false											-- Show/hide file list window
	Gradient_Palette = {}											-- Palette shown on the load editor window
	Palette = 		{												-- table that holds the palette information as a whole
						Main = {},
						Water = {},
						SVDP = {},									-- !@ SuperVDP palette editor (32x only)
					}													
	
	SelectionBox =	{
								Index = 1,
								X = 0,
								Y = 0,
								Color = {255, 255, 255, 0},
								Palette = "Main",
					}
	
	--*******************
	-- Global Const
	--*******************	
	PALETTE_SAVE_DIR = "Lua/Palette/Saved/"							-- Saved palettes directory
	SCREEN_WIDTH = 320												-- Width of the game screen
	SCREEN_HEIGHT = 224												-- Height of the game screen
	SVDP_OFFMULT = 2												-- !@ Multiplier to reposition ypos for palette picker
	SVDP_OFFSET = 16												-- !@ Additional Offset
	SVDP_OFFSET2 = SVDP_OFFSET - 4									-- !@ Additional Offset (alt)
	SVDP_OFFSET3 = SVDP_OFFSET - 12									-- !@ Additional Offset (alt2)
	
	PALTOOL_BOXSIZE = 7												-- size of the palette lists
	PALTOOL_X = 205
	PALTOOL_Y = 1
	-- PREVIEWX = 201												-- !@ Preview color box X position
	PREVIEWX = 245													-- Preview color box X position
	PREVIEWY = SVDP_OFFMULT * 108 - 12								-- !@ Preview color box Y position
	PREVIEWW = 16													-- Preview color box Width
	PREVIEWH = 16													-- Preview color box height
	
	TEXT_REDX = 197													-- "Red" Text X position
	TEXT_REDY = SVDP_OFFMULT * 80 + SVDP_OFFSET						-- !@ "Red" Text Y position
	NUM_REDX = 201													-- Red value number X position
	NUM_REDY = SVDP_OFFMULT * 87 + SVDP_OFFSET2						-- !@ Red value number Y position
	PLUS_REDX = 201													-- Red add button X position
	PLUS_REDY = SVDP_OFFMULT * 95 + SVDP_OFFSET3					-- !@ Red add button Y position
	MINUS_REDX = 209												-- Red subtract button X position
	MINUS_REDY = SVDP_OFFMULT * 95 + SVDP_OFFSET3					-- !@ Red subtract button Y position
	
	TEXT_GREENX = 245												-- "Green" Text X position
	TEXT_GREENY = SVDP_OFFMULT * 80 + SVDP_OFFSET					--!@ "Green" Text Y position
	NUM_GREENX = 245												-- Green value number X position
	NUM_GREENY = SVDP_OFFMULT * 87 + SVDP_OFFSET2					-- !@ Green value number Y position
	PLUS_GREENX = 245												-- Green add button X position
	PLUS_GREENY = SVDP_OFFMULT * 95 + SVDP_OFFSET3					-- !@ Green add button Y position
	MINUS_GREENX = 253												-- Green subtract button X position
	MINUS_GREENY = SVDP_OFFMULT * 95 + SVDP_OFFSET3					-- !@ Green subtract button Y position
	
	TEXT_BLUEX = 293												-- "Blue" Text X position
	TEXT_BLUEY = SVDP_OFFMULT * 80 + SVDP_OFFSET					-- !@ "Blue" Text Y position
	NUM_BLUEX = 293													-- Blue value number X position
	NUM_BLUEY = SVDP_OFFMULT * 87 + SVDP_OFFSET2					-- !@ Blue value number Y position
	PLUS_BLUEX = 293												-- Blue add button X position
	PLUS_BLUEY = SVDP_OFFMULT * 95 + SVDP_OFFSET3					-- !@ Blue add button Y position
	MINUS_BLUEX = 301												-- Blue subtract button X position
	MINUS_BLUEY = SVDP_OFFMULT * 95 + SVDP_OFFSET3					-- !@ Blue subtract button Y position	
	
	--*******************
	-- Enumerators
	--*******************
	-- Supported checksums
	Checksum_List = {
						Sonic1_00 		= 0x264A,
						Sonic1_01 		= 0xAFC7,
						Sonic2 			= 0xD951,
						Sonic3			= 0xA8F2,
						SonicK			= 0xDFB3,
						SonicK2			= 0xE09C,
						SonicK3			= 0xDFB3,
						Chaotix			= 0xB61C					-- !@
					}
						
	-- Supported games
	Game_List = 	{
						Invalid			= -1,
						Sonic1			= 0,
						Sonic2			= 1,
						Sonic3			= 2,
						SonicK			= 3,
						SonicK2			= 4,
						SonicK3			= 5,
						Chaotix			= 6							-- !@
					}
						
	-- RAM Addresses
	Addresses = 	{
						Checksum		= 0x18E,					-- Game Checksum
						ChecksumSK		= 0x20018E,					-- Game Checksum(When Locked on to Sonic and Knuckles)
						Debug 			= nil,						-- Debug Mode
						LevelSelect		= nil,						-- Level Select
						Emeralds		= nil,						-- Chaos Emeralds
						SEmeralds		= nil,						-- Super Emeralds
						Palette	= 	{								-- Palette Select
										Main 	= nil,				-- Main Palette
										Water 	= nil,				-- Water Palette
										SVDP	= nil,				-- !@ Super VDP (32x) palette
									}
					}
	-- Theme Colors
	Theme = 		{
						Border			= { 0, 0, 0, 255 },			-- Borders
						Background		= { 51, 57, 64, 255 },		-- Boxes
						Button			= { 0, 0, 0, 255 },			-- Buttons
						ButtonBorder	= { 255, 255, 255, 255 },	-- Button border
						Highlight		= { 34, 34, 34, 255 },		-- Highlighted Buttons
						BorderHighlight	= { 35, 112, 182, 255 },	-- Highlighted Borders
						Selected		= { 255, 255, 255, 255 },	-- Palette Selection color
						Title			= { 0, 255, 255, 255 },		-- Window Title
						Transparent		= { 0, 0, 0, 0 }			-- invisable color
					}
						
	
	
function Game_Select()


	
	--*****************************************************************************
	-- Sonic and Knuckles or Sonic 3 and Knuckles
	--  
	-- Note: Sonic 3 and Knuckles has 2 checksums(s3 and sk)	
	-- 		 So we have to check for S3K during the SK check.
	--*****************************************************************************
	if Checksum == Checksum_List.SonicK then
	
		-- Check if Sonic 3 is locked on
		if memory.isvalid(Addresses.ChecksumSK) then
		
			-- Get the checksum of Sonic 3
			Checksum = memory.readword(Addresses.ChecksumSK)	
			
			-- Check if Sonic 3 checksum is valid
			if Checksum	== Checksum_List.Sonic3 then
				
				print("Game: Sonic and Knuckles")
				Current_Game = Game_List.SonicK3
				
			end		
		else
				print("Game: Sonic and Knuckles")
				Current_Game = Game_List.SonicK
		end
		
		-- These 2 games use the same addresses
		Addresses.Debug 		= 0xFFFFDA
		Addresses.LevelSelect	= 0xFFFFE1
				
		Addresses.Emeralds		= 0xFFFFB0
		Addresses.SEmeralds		= 0xFFFFB1
				
		Addresses.Palette.Main 	= 0xFFFC00
		Addresses.Palette.Water = 0xFFF080
		Addresses.Palette.SVDP = 0x0 -- !@
	end	
	
	--*****************************************************************************
	-- Sonic 2 and Knuckles
	--
	-- Note: Unlike Sonic 3 and Knuckles, This rom has its own checksum.
	--		 Therefore it doesn't need any special checks
	--*****************************************************************************
	if Checksum == Checksum_List.SonicK2 then				
		print("Game: Sonic 2 and Knuckles")
		Current_Game = Game_List.SonicK2
		
		Addresses.Debug 		= 0xFFFFFA
		Addresses.LevelSelect	= 0xFFFFD0
		
		Addresses.Emeralds		= 0xFFFFB1
		Addresses.SEmeralds		= 0x0
		
		Addresses.Palette.Main 	= 0xFFFB00
		Addresses.Palette.Water = 0xFFF080
		Addresses.Palette.SVDP = 0x0 -- !@
	end	
	
	--*****************************************************************************
	-- Sonic 1
	--*****************************************************************************	
	if Checksum == Checksum_List.Sonic1_00 
	or Checksum == Checksum_List.Sonic1_01 then				
		if Checksum == Checksum_List.Sonic1_00 then print("Game: Sonic 1 Rev 00") end
		if Checksum == Checksum_List.Sonic1_01 then print("Game: Sonic 1 Rev 01") end
		
		Current_Game = Game_List.Sonic1
		
		Addresses.Debug 		= 0xFFFFFA
		Addresses.LevelSelect	= 0x0
		
		Addresses.Emeralds		= 0xFFFE57
		Addresses.SEmeralds		= 0x0
		
		Addresses.Palette.Main 	= 0xFFFB00
		Addresses.Palette.Water = 0xFFFA80
		Addresses.Palette.SVDP = 0x0 -- !@
		
	end	
	
	--*****************************************************************************
	-- Sonic 2	
	--*****************************************************************************
	if Checksum == Checksum_List.Sonic2 then				
		print("Game: Sonic 2")
		Current_Game = Game_List.Sonic2
		
		Addresses.Debug 		= 0xFFFFFA
		Addresses.LevelSelect	= 0xFFFFD0
		
		Addresses.Emeralds		= 0xFFFFB1
		Addresses.SEmeralds		= 0x0
		
		Addresses.Palette.Main 	= 0xFFFB00
		Addresses.Palette.Water = 0xFFF080
		Addresses.Palette.SVDP = 0x0 -- !@
	end	
	
	--*****************************************************************************
	-- Sonic 3 
	--*****************************************************************************
	if Checksum == Checksum_List.Sonic3 then		
			print("Game: Sonic 3")
			Current_Game = Game_List.Sonic3
			
			Addresses.Debug 		= 0xFFFFDA
			Addresses.LevelSelect	= 0xFFFFE1
		
			Addresses.Emeralds		= 0xFFFFB0
			Addresses.SEmeralds		= 0x0
		
			Addresses.Palette.Main 	= 0xFFFC00
			Addresses.Palette.Water = 0xFFF080
			Addresses.Palette.SVDP = 0x0 -- !@
	end	
	
	--*****************************************************************************
	-- !@ Knuckles Chaotix
	--*****************************************************************************
	if Checksum == Checksum_List.Chaotix then		
			print("Game: Knuckles Chaotix")
			Current_Game = Game_List.Chaotix
			
			Addresses.Debug 		= 0xFFFFEC									  
			Addresses.LevelSelect	= 0xFFFFEE
		
			Addresses.Emeralds		= 0xFFE01A									  
			Addresses.SEmeralds		= 0x0
		
			Addresses.Palette.Main 	= 0xFFD460
			-- Addresses.Palette.Water = 0xFFD560
			Addresses.Palette.Water = 0xFFD460
			-- Addresses.Palette.SVDP  = 0xFFD860	-- !@
			Addresses.Palette.SVDP  = 0xFFD560	-- !@
	end	
	
		
	--*****************************************************************************
	-- Invalid Checksum
	--*****************************************************************************
	
	-- if no game has been assigned
	if Current_Game == nil then
		Current_Game = Game_List.Invalid
		print("Warning: Game not supported")
		print("")
	
	end
		
end


-- Do everything only when a game is running
if gens.emulating() then

	Checksum = memory.readword(Addresses.Checksum)
	
	print("Tribeam's Realtime Palette Editor Version " .. Version)
	Game_Select()
else
	print("Error: Please load a ROM first.")
end
