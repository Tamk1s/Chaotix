--*************************************************************
--	Live Palette editor for Sonic games
--	Made by Tribeam
--*************************************************************
	
function Palette_Tool()

		local Line = 0
		local Row = 0
		local ColorBox = {}
		local ColorBoxW = {}
		local ColorBoxS = {}	-- !@ SuperVDP Box
		
		-- !@ Color button add/sub delta, min/max
		-- Defaults: Genesis palette
		local clr_delta = 32
		local clr_min = 0
		local clr_max = 224

		-- !@
		-- Palette.Main = Palette_Save(Addresses.Palette.Main)
		-- Palette.Water = Palette_Save(Addresses.Palette.Water)		
		Palette.Main = Palette_Save(Addresses.Palette.Main, false)
		Palette.Water = Palette_Save(Addresses.Palette.Water, false)
		Palette.SVDP = Palette_Save(Addresses.Palette.SVDP, true)
	
		if PalTool == true then
			-- for Pal_Index = 0, 63 do
			for Pal_Index = 0, 255 do
			
				Line = Dec_Round(Pal_Index / 16, 0)
				
				if Line == 0 then Row = Pal_Index end
				if Line == 1 then Row = Pal_Index - 16 end
				if Line == 2 then Row = Pal_Index - 32 end
				if Line == 3 then Row = Pal_Index - 48 end
				
				-- !@  SVDP columns in new rows
				if Line == 4 then Row = Pal_Index - 64 end
				if Line == 5 then Row = Pal_Index - 80 end
				if Line == 6 then Row = Pal_Index - 96 end
				if Line == 7 then Row = Pal_Index - 112 end
				
				if Line == 8 then Row = Pal_Index - 128 end
				if Line == 9 then Row = Pal_Index - 144 end
				if Line == 10 then Row = Pal_Index - 160 end
				if Line == 11 then Row = Pal_Index - 176 end
				
				if Line == 12 then Row = Pal_Index - 192 end
				if Line == 13 then Row = Pal_Index - 208 end
				if Line == 14 then Row = Pal_Index - 224 end
				if Line == 15 then Row = Pal_Index - 240 end
				
				-- !@ 
				if Pal_Index <= 63 then
					ColorBox = Palette_ColorBox(PALTOOL_X + (Row * PALTOOL_BOXSIZE), 
												PALTOOL_Y + (Line * PALTOOL_BOXSIZE), 
												Palette.Main[Pal_Index+1], 
												PALTOOL_BOXSIZE)
											
					ColorBoxW = Palette_ColorBox(PALTOOL_X + (Row * PALTOOL_BOXSIZE), 
												(PALTOOL_Y + 32) + (Line * PALTOOL_BOXSIZE), 
												Palette.Water[Pal_Index+1], 
												PALTOOL_BOXSIZE)
				end
				
				--!@ 
				ColorBoxS = Palette_ColorBox(PALTOOL_X + (Row * PALTOOL_BOXSIZE), 
												(PALTOOL_Y + 64) + (Line * PALTOOL_BOXSIZE), 
												Palette.SVDP[Pal_Index+1], 
												PALTOOL_BOXSIZE)
				
				if ColorBox.Clicked then				
					SelectionBox.Index = Pal_Index
					SelectionBox.X = ColorBox.X
					SelectionBox.Y = ColorBox.Y
					SelectionBox.Palette = "Main"					
				end
				
				if ColorBoxW.Clicked then				
					SelectionBox.Index = Pal_Index
					SelectionBox.X = ColorBoxW.X
					SelectionBox.Y = ColorBoxW.Y
					SelectionBox.Palette = "Water"
					SelectionBox.Color = Palette.Water[SelectionBox.Index+1]
				end
				
				-- !@
				if ColorBoxS.Clicked then				
					SelectionBox.Index = Pal_Index
					SelectionBox.X = ColorBoxS.X
					SelectionBox.Y = ColorBoxS.Y
					SelectionBox.Palette = "SVDP"
					SelectionBox.Color = Palette.SVDP[SelectionBox.Index+1]
				end

			end
			
			if SelectionBox.Palette == "Main" then			
				SelectionBox.Color = Palette.Main[SelectionBox.Index+1]			
			end
			
			if SelectionBox.Palette == "Water" then			
				SelectionBox.Color = Palette.Water[SelectionBox.Index+1]			
			end
			
			-- !@
			if SelectionBox.Palette == "SVDP" then			
				SelectionBox.Color = Palette.SVDP[SelectionBox.Index+1]			
			end									
			
			gui.drawbox(SelectionBox.X - Half(PALTOOL_BOXSIZE) - 1, 
						SelectionBox.Y - Half(PALTOOL_BOXSIZE) - 1, 
						SelectionBox.X + Half(PALTOOL_BOXSIZE) + 1, 
						SelectionBox.Y + Half(PALTOOL_BOXSIZE) + 1, 
						SelectionBox.Color, 
						Theme.Selected)
		
			-- draw preview box
			gui.drawbox(PREVIEWX , PREVIEWY, PREVIEWX + PREVIEWW, PREVIEWY + PREVIEWH, SelectionBox.Color, {255,255,255,255})
				
			-- draw "Red" text and value
			gui.text(TEXT_REDX, TEXT_REDY, " Red", "#FFFFFF")
			gui.text(NUM_REDX, NUM_REDY, SelectionBox.Color[1], "#FFFFFF")
				
			-- draw "Green" text and value
			gui.text(TEXT_GREENX, TEXT_GREENY, "Green", "#FFFFFF")
			gui.text(NUM_GREENX, NUM_GREENY, SelectionBox.Color[2], "#FFFFFF")	
				
			-- draw "Blue" text and value
			gui.text(TEXT_BLUEX, TEXT_BLUEY, "Blue", "#FFFFFF")
			gui.text(NUM_BLUEX, NUM_BLUEY, SelectionBox.Color[3], "#FFFFFF")	
		
			-- !@ Adjust Add/Sub_button callbacks based on if Genesis/32x palette
			if SelectionBox.Palette == "SVDP" then			
				clr_delta = 8
				clr_min = 0
				clr_max = 248				
			else
				clr_delta = 32
				clr_min = 0
				clr_max = 224
			end
		
			--!@ 
			-- Red buttons
			-- SelectionBox.Color[1] = Add_Button(PLUS_REDX, PLUS_REDY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[1], 32, 0, 224)
			-- SelectionBox.Color[1] = Sub_Button(MINUS_REDX, MINUS_REDY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[1], 32, 0, 224)		
			-- Green buttons
			-- SelectionBox.Color[2] = Add_Button(PLUS_GREENX, PLUS_GREENY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[2], 32, 0, 224)
			-- SelectionBox.Color[2] = Sub_Button(MINUS_GREENX, MINUS_GREENY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[2], 32, 0, 224)				
			-- Blue buttons
			-- SelectionBox.Color[3] = Add_Button(PLUS_BLUEX, PLUS_BLUEY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[3], 32, 0, 224)
			-- SelectionBox.Color[3] = Sub_Button(MINUS_BLUEX, MINUS_BLUEY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[3], 32, 0, 224)
			
			-- Red buttons
			SelectionBox.Color[1] = Add_Button(PLUS_REDX, PLUS_REDY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[1], clr_delta, clr_min, clr_max)
			SelectionBox.Color[1] = Sub_Button(MINUS_REDX, MINUS_REDY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[1], clr_delta, clr_min, clr_max)		
			-- Green buttons
			SelectionBox.Color[2] = Add_Button(PLUS_GREENX, PLUS_GREENY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[2], clr_delta, clr_min, clr_max)
			SelectionBox.Color[2] = Sub_Button(MINUS_GREENX, MINUS_GREENY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[2], clr_delta, clr_min, clr_max)
			-- Blue buttons
			SelectionBox.Color[3] = Add_Button(PLUS_BLUEX, PLUS_BLUEY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[3], clr_delta, clr_min, clr_max)
			SelectionBox.Color[3] = Sub_Button(MINUS_BLUEX, MINUS_BLUEY, {0,0,0,255}, {255,255,255,255}, SelectionBox.Color[3], clr_delta, clr_min, clr_max)
		
			if SelectionBox.Palette == "Main" then
				-- !@
				Palette_SetColor(	Addresses.Palette.Main + (SelectionBox.Index * 2), 
									SelectionBox.Color[1],
									SelectionBox.Color[2],
									SelectionBox.Color[3],
									false)
									
				if Lock == true then				
					Palette.Main[SelectionBox.Index+1][1] = SelectionBox.Color[1]
					Palette.Main[SelectionBox.Index+1][2] = SelectionBox.Color[2]
					Palette.Main[SelectionBox.Index+1][3] = SelectionBox.Color[3]
				end
			end
			
			if SelectionBox.Palette == "Water" then
				-- !@
				Palette_SetColor(	Addresses.Palette.Water + (SelectionBox.Index * 2), 
									SelectionBox.Color[1],
									SelectionBox.Color[2],
									SelectionBox.Color[3],
									false)
			end
	
			-- !@ 
			if SelectionBox.Palette == "SVDP" then
				Palette_SetColor(	Addresses.Palette.SVDP + (SelectionBox.Index * 2), 
									SelectionBox.Color[1],
									SelectionBox.Color[2],
									SelectionBox.Color[3],
									true)
									
				if Lock == true then				
					Palette.SVDP[SelectionBox.Index+1][1] = SelectionBox.Color[1]
					Palette.SVDP[SelectionBox.Index+1][2] = SelectionBox.Color[2]
					Palette.SVDP[SelectionBox.Index+1][3] = SelectionBox.Color[3]
				end
			end
		end
end