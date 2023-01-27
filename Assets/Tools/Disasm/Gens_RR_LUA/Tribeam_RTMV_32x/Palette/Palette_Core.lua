--*************************************************************
--	Live Palette editor for Sonic games
--	Made by Tribeam
--*************************************************************

-- ***********************************************************************************************************
-- Palette Colorbox - Creates a color box for the palette list
-- ***********************************************************************************************************
function Palette_ColorBox(x, y, color, size)

		local Value
		local MidX = x + Half(size)
		local MidY = y + Half(size)
	
		gui.drawbox(x, y, x + size, y + size, color, Theme.Border)

		Value = Button(x, y, size, size, Color, true)
		
		return 	{ 
					Clicked = Value, 
					X = MidX, 
					Y = MidY, 
					Color = color 
				}
		
end




-- ***********************************************************************************************************
-- Palette GetColor - Get the color of a palette entry
-- ***********************************************************************************************************
-- !@ function Palette_GetColor(Address)
function Palette_GetColor(Address, is32x)

		-- Vars
		local Return_Value = {}												-- Value at which to return(mainly for organizational purposes)
		local Red															-- Red value
		local Green															-- Green value
		local Blue															-- Blue Value
		local mult															-- !@ Color component multiplier (format to RGB)
	
		-- !@ 
		if is32x == false then
			-- The Genesis palette is composed of 32 bytes per line
			-- each palette entry is 2 bytes in the format of 0B GR
			-- we need to take these bytes and split thier bits apart.
			Blue = memory.readbyte(Address)										-- Get the blue value of this entry
			Green = Dec_Round(memory.readbyte(Address + 0x01) / 16, 0)			-- Get the green value of this entry
			Red = math.abs(memory.readbyte(Address + 0x01) - (16 * Green))		-- Get the red value of this entry
			mult = 16
		else
			-- !@ 
			-- The 32x palette is composed of 32 bytes per line, 5bpp with MSB as alpha channel 
			-- each palette entry is 2 bytes in the bitfield format of aBBB BBGG GGGR RRRR
			-- we need to take these bytes and split thier bits apart.
			Red = memory.readword(Address)
			Red = AND(Red,0x001F)
			
			Green = memory.readword(Address)
			Green = AND(Green,0x03E0)
			Green = SHIFT(Green,0x05)
			
			Blue = memory.readword(Address)
			Blue = AND(Blue,0x7C00)
			Blue = SHIFT(Blue,0x0A)

			mult = 8
		end
	
		-- Put all the colors in a table and convert them to 32bit numbers
		-- last value is for selected purposes
		-- !@ Return_Value = { Red * 16, Green * 16, Blue * 16 }
		Return_Value = { Red * mult, Green * mult, Blue * mult }
			
		-- Return the color table
		return Return_Value
		
		
end



-- ***********************************************************************************************************
-- Palette SetColor - Set the color of a palette entry
-- ***********************************************************************************************************
-- !@ function Palette_SetColor(Entry, Red, Green, Blue)
function Palette_SetColor(Entry, Red, Green, Blue, is32x)

		-- Vars
		local Convert_Blue								-- used to convert 0-255 to 0-8
		local Convert_Green								-- used to convert 0-255 to 0-8
		local Convert_Red								-- used to convert 0-255 to 0-8
		local Convert_RGB
			
		-- !@
		if is32x==false then
			-- Check if values are out of range and fix it
			if Red >= 224 then Red = 224 end				-- Red too high
			if Green >= 224 then Green = 224 end			-- Green too high
			if Blue >= 224 then Blue = 224 end				-- Blue too high
			
			if Red <=0 then Red = 0 end						-- Red too low
			if Green <= 0 then Green = 0 end				-- Green too low
			if Blue <=0 then Blue = 0 end					-- Blue too low
			
			-- convert 0-255 to 0-16
			Convert_Blue = Blue / 16						-- Blue is now 8 parts instead of 255
			Convert_Green = Green / 16						-- Green is now 8 parts instead of 255
			Convert_Red = Green + Red / 16 					-- Red is now 8 parts instead of 255
	
			-- apply the color to this entry
			memory.writebyte(Entry, Convert_Blue)			-- Apply 8 part blue value
			memory.writebyte(Entry + 0x1, Convert_Green) 	-- Apply 8 part green value
			memory.writebyte(Entry + 0x1, Convert_Red) 		-- Apply 8 part red value
		else
			-- !@ 
			-- Check if values are out of range and fix it
			if Red >= 248 then Red = 248 end				-- Red too high
			if Green >= 248 then Green = 248 end			-- Green too high
			if Blue >= 248 then Blue = 248 end				-- Blue too high			
			if Red <=0 then Red = 0 end						-- Red too low
			if Green <= 0 then Green = 0 end				-- Green too low
			if Blue <=0 then Blue = 0 end					-- Blue too low
			
			-- convert 0-248 to 0-32
			Convert_Red = Red
			Convert_Red = SHIFT(Convert_Red,3)
			Convert_Red = AND(Convert_Red,0x1F)
			
			Convert_Green = Green
			Convert_Green = SHIFT(Convert_Green,3)
			Convert_Green = AND(Convert_Green,0x1F)
			Convert_Green = SHIFT(Convert_Green,-0x05)
			
			Convert_Blue = Blue
			Convert_Blue = SHIFT(Convert_Blue,3)
			Convert_Blue = AND(Convert_Blue,0x1F)
			Convert_Blue = SHIFT(Convert_Blue,-0x0A)
			
			-- apply the color to this entry
			Convert_RGB = OR(Convert_Red,Convert_Green,Convert_Blue)
			memory.writeword(Entry, Convert_RGB)
		end
		
end



-- ***********************************************************************************************************
-- Palette Save - Saves a palette to memory
-- ***********************************************************************************************************
--!@ function Palette_Save(Address)
function Palette_Save(Address, is32x)		
		-- Vars
		local Pal_Entry				-- Used to go through all palette colors
		local Pal = {}				-- table that stores RGB values as another table EX: { { 0, 0, 0 }, { 255, 0, 0 },...}
		
		-- !@ Update for loop max based on Genesis/32x color
		local fmax = 128
		if is32x == true then
			fmax = 512		
		end

		-- !@ for Pal_Entry = 0, 128, 2 do 	
		for Pal_Entry = 0, fmax, 2 do 	
			-- insert the color values in the table
			-- !@ table.insert(Pal, Palette_GetColor(Address + Pal_Entry))
			table.insert(Pal, Palette_GetColor(Address + Pal_Entry, is32x))
		end

		-- return the whole table
		return Pal		
end

-- ***********************************************************************************************************
-- Palette Load - Loads a palette from hard drive
-- ***********************************************************************************************************
function Palette_Load()

		-- Vars
		local Pal_Entry				-- Used to go through all palette colors
		local Data					-- Data to be loaded from file
		local DataConvert = {}		-- Converts bytes to numbers
		local Pal_File				-- Palette File to be read
		
		local Red															-- Red value
		local Green															-- Green value
		local Blue															-- Blue Value
			-- Open the palette file
			Pal_File = io.open(PALETTE_SAVE_DIR .. "pal.bin", "rb")
			
			-- Save all the data within the file
			Data = Pal_File:read("*all")
			
			-- Close the file
			Pal_File:close()
			
			table.insert(DataConvert, string.len(Data))
			
			-- Go through the saved data byte by byte
			for Pal_Entry = 1, string.len(Data), 2 do 
				
				Blue = string.byte(Data, Pal_Entry)									-- Get the blue value of this entry
				Green = Dec_Round(string.byte(Data, Pal_Entry + 1) / 16, 0) 		-- Get the green value of this entry
				Red = math.abs(string.byte(Data, Pal_Entry + 1) - (16 * Green))		-- Get the red value of this entry
			
	    		table.insert(DataConvert, { Red * 16, Green * 16, Blue * 16})
			end

		return DataConvert
		
		
end


-- ***********************************************************************************************************
-- Palette Dump - Saves a palette to hard drive
-- ***********************************************************************************************************
function Palette_Dump(which, from, to)
		
		--Vars
		local Pal_Entry				-- Used to go through all palette colors
		local Data					-- Data to be written to the file
		local Pal_File				-- Palette File to be written
		local Counter = 0
		
		
		-- check if we are saving the main palette
		if which == "Main" then 
			
			-- Start off by saving the first byte to the data stream
			Data = ""
			
		
			-- Go through all the palette bytes
			for Pal_Entry = (from * 2) - 2, (to * 2) - 1, 2 do
			
				-- Save each byte to the data stream
				Data = Data .. string.char(memory.readbyte(Addresses.Palette.Main + Pal_Entry))
				Data = Data .. string.char(memory.readbyte(Addresses.Palette.Main + (Pal_Entry + 1)))
				
				
			end
			
			-- Create or open the palette file
			Pal_File = io.open(PALETTE_SAVE_DIR .. "pal.bin", "wb")
			
			-- Write the data to the file
			Pal_File:write(Data)
			
			-- Actually write the data to the file
			Pal_File:flush()
			
			-- close the file
			Pal_File:close()
			
			-- tell the user where the palette was saved
			gens.message("palette saved to " .. PALETTE_SAVE_DIR .. "pal.bin.")
			
		end
		
		-- check if we are saving the main palette
		if which == "Water" then 
			
			-- Start off by saving the first byte to the data stream
			Data = ""
			
		
			-- Go through all the palette bytes
			for Pal_Entry = (from * 2) - 2, (to * 2) - 1, 2 do
			
				-- Save each byte to the data stream
				Data = Data .. string.char(memory.readbyte(Addresses.Palette.Water + Pal_Entry))
				Data = Data .. string.char(memory.readbyte(Addresses.Palette.Water + (Pal_Entry + 1)))
				
				
			end
			
			-- Create or open the palette file
			Pal_File = io.open(PALETTE_SAVE_DIR .. "pal.bin", "wb")
			
			-- Write the data to the file
			Pal_File:write(Data)
			
			-- Actually write the data to the file
			Pal_File:flush()
			
			-- close the file
			Pal_File:close()
			
			-- tell the user where the palette was saved
			gens.message("palette saved to " .. PALETTE_SAVE_DIR .. "pal.bin.")
			
		end
end
