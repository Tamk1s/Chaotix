--*************************************************************
--	Live Palette editor for Sonic games
--	Made by Tribeam
--*************************************************************


--*****************************************************************************
-- Window - Creates a window in the middle of the screen
--*****************************************************************************
function Window(width, height, title)

	gui.drawbox(Half(SCREEN_WIDTH) - Half(width), 
				Half(SCREEN_HEIGHT) - Half(height),
				Half(SCREEN_WIDTH) + Half(width), 
				Half(SCREEN_HEIGHT) + Half(height),
				Theme.Background,
				Theme.Border)

	gui.line(Half(SCREEN_WIDTH) - Half(width), 
			 Half(SCREEN_HEIGHT) - Half(height) + 10,
			 Half(SCREEN_WIDTH) + Half(width), 
			 Half(SCREEN_HEIGHT) - Half(height) + 10,
			 Theme.Border)	
					
	gui.text(Half(SCREEN_WIDTH) - (string.len(title) * 2), 
			 Half(SCREEN_HEIGHT) - Half(height) + 2,
			 title,
			 Theme.Title)
			 
end



--*****************************************************************************
-- Game_Window - Creates the game selection window
--*****************************************************************************
function Game_Window(w, h)
	

		local Window_X = Half(SCREEN_WIDTH)
		local Window_Y = Half(SCREEN_HEIGHT)
		
		local Button_X = Window_X - Half(w) + 5
		local Button_Y = Window_Y - Half(h) + 60
		local Button_W = 90
		local Button_H = 10
		
		local Note1_X = Window_X - Half(w) + 50
		local Note1_Y = Window_Y - Half(h) + 20
		
		local Note2_X = Window_X - Half(w) + 50
		local Note2_Y = Window_Y - Half(h) + 110
		
		local IsGame = 	{
							Sonic1			= false,
							Sonic2			= false,
							Sonic3			= false,
							SonicK			= false,
							SonicK2			= false,
							SonicK3			= false,
							Chaotix			= false,	-- !@
						}					
		
		-- Create the window for this form
		Window(w, h, "Game Selection")
		
		
		-- make the buttons
		IsGame.Sonic1 = Check_Button(Button_X, Button_Y, Button_W, Button_H, IsGame.Sonic1, "Sonic 1")
		IsGame.Sonic2 = Check_Button(Button_X, Button_Y + 10, Button_W, Button_H, IsGame.Sonic2, "Sonic 2")
		IsGame.Sonic3 = Check_Button(Button_X, Button_Y + 20, Button_W, Button_H, IsGame.Sonic3, "Sonic 3")
		IsGame.SonicK = Check_Button(Button_X, Button_Y + 30, Button_W, Button_H, IsGame.SonicK, "Sonic And Knuckles")
		IsGame.SonicK2 = Check_Button(Button_X, Button_Y + 40, Button_W, Button_H, IsGame.SonicK2, "Sonic 2 And Knuckles")
		IsGame.SonicK3 = Check_Button(Button_X, Button_Y + 50, Button_W, Button_H, IsGame.SonicK3, "Sonic 3 And Knuckles")
		IsGame.Chaotix = Check_Button(Button_X, Button_Y + 60, Button_W, Button_H, IsGame.Chaotix, "Knuckles Chaotix") --!@
		
		-- check what button was clicked, and apply that games checksum, then run the game selector
		if IsGame.Sonic1 == true then Checksum = Checksum_List.Sonic1_01 Game_Select() end
		if IsGame.Sonic2 == true then Checksum = Checksum_List.Sonic2 Game_Select() end
		if IsGame.Sonic3 == true then Checksum = Checksum_List.Sonic3 Game_Select() end
		if IsGame.SonicK == true then Checksum = Checksum_List.SonicK Game_Select() end
		if IsGame.SonicK2 == true then Checksum = Checksum_List.SonicK2 Game_Select() end
		if IsGame.SonicK3 == true then Checksum = Checksum_List.SonicK3 Game_Select() end
		if IsGame.Chaotix == true then Checksum = Checksum_List.Chaotix Game_Select() end --!@
		
	
		-- show note
		Centered_Text(Note1_X, Note1_Y, "Game was not recognized.")
		Centered_Text(Note1_X, Note1_Y + 14, "If this is a hacked game")
		Centered_Text(Note1_X, Note1_Y + 21, "Please select what game")
		Centered_Text(Note1_X, Note1_Y + 30, "it's based on")
end


local Amount = 6
local Tint = { 1, 3, 8, 255 }

--*****************************************************************************
-- Water Editor Window - Creates the water editor window
--*****************************************************************************
function Water_Window()

	local Line
	local Row
	
	Water_Editor_Palette = Palette.Main

	
	Window(150, 100, "Water Creator")
	for Pal_Index = 0, 63 do
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		
		Water_Editor_Palette[Pal_Index+1][1] = Dec_Round(((Palette.Main[Pal_Index+1][1] / 32) * Amount + Tint[1] * (8-Amount)) / 8, 0)
		Water_Editor_Palette[Pal_Index+1][2] = Dec_Round(((Palette.Main[Pal_Index+1][2] / 32) * Amount + Tint[2] * (8-Amount)) / 8, 0)
		Water_Editor_Palette[Pal_Index+1][3] = Dec_Round(((Palette.Main[Pal_Index+1][3] / 32) * Amount + Tint[3] * (8-Amount)) / 8, 0)
		
		
		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) - 32) + (Line * PALTOOL_BOXSIZE), 
						{ Water_Editor_Palette[Pal_Index+1][1] * 32, Water_Editor_Palette[Pal_Index+1][2] * 32, Water_Editor_Palette[Pal_Index+1][3] * 32, 255 },
						PALTOOL_BOXSIZE)
	end

	gui.text(Half(SCREEN_WIDTH) - 70, Half(SCREEN_HEIGHT), "Alpha: " .. Amount * 32)
	gui.text(Half(SCREEN_WIDTH) - 70, Half(SCREEN_HEIGHT) + 12, "Color: ")
	gui.text(Half(SCREEN_WIDTH) - 42, Half(SCREEN_HEIGHT) + 20, "Red: " .. (Tint[1]) * 32)
	gui.text(Half(SCREEN_WIDTH) - 42, Half(SCREEN_HEIGHT) + 30, "Green: " .. (Tint[2]) * 32)
	gui.text(Half(SCREEN_WIDTH) - 42, Half(SCREEN_HEIGHT) + 40, "Blue: " .. (Tint[3]) * 32)
	
	gui.drawbox(Half(SCREEN_WIDTH) - 73, 
				Half(SCREEN_HEIGHT) + 48, 
				Half(SCREEN_WIDTH) - 73 + 28,
				Half(SCREEN_HEIGHT) + 48 - 28,
				{ Tint[1] * 32, Tint[2] * 32, Tint[3] * 32, 255 },
				{ 255, 255, 255, 255 } )
	
	Amount = Add_Button(Half(SCREEN_WIDTH) + 54, Half(SCREEN_HEIGHT), {0,0,0,255}, {255,255,255,255}, Amount, 1, 0, 8)
	Amount = Sub_Button(Half(SCREEN_WIDTH) + 62, Half(SCREEN_HEIGHT), {0,0,0,255}, {255,255,255,255}, Amount, 1, 0, 8)
	
	Tint[1] = Add_Button(Half(SCREEN_WIDTH) + 62, Half(SCREEN_HEIGHT) + 20, {0,0,0,255}, {255,255,255,255}, Tint[1], 1, 0, 8)
	Tint[1] = Sub_Button(Half(SCREEN_WIDTH) + 54, Half(SCREEN_HEIGHT) + 20, {0,0,0,255}, {255,255,255,255}, Tint[1], 1, 0, 8)
	
	Tint[2] = Add_Button(Half(SCREEN_WIDTH) + 62, Half(SCREEN_HEIGHT) + 30, {0,0,0,255}, {255,255,255,255}, Tint[2], 1, 0, 8)
	Tint[2] = Sub_Button(Half(SCREEN_WIDTH) + 54, Half(SCREEN_HEIGHT) + 30, {0,0,0,255}, {255,255,255,255}, Tint[2], 1, 0, 8)
	
	Tint[3] = Add_Button(Half(SCREEN_WIDTH) + 62, Half(SCREEN_HEIGHT) + 40, {0,0,0,255}, {255,255,255,255}, Tint[3], 1, 0, 8)
	Tint[3] = Sub_Button(Half(SCREEN_WIDTH) + 54, Half(SCREEN_HEIGHT) + 40, {0,0,0,255}, {255,255,255,255}, Tint[3], 1, 0, 8)
	
	
		for Pal_Index = 0, 63 do
			-- !@ 
			Palette_SetColor(Addresses.Palette.Water + (Pal_Index * 2), 
							Water_Editor_Palette[Pal_Index+1][1] * 32, 
							Water_Editor_Palette[Pal_Index+1][2] * 32,
							Water_Editor_Palette[Pal_Index+1][3] * 32,
							false)
		
		end
	
	if Click_Button(Half(SCREEN_WIDTH) + 15, Half(SCREEN_HEIGHT) + 51, 30, 10, "Apply") then

		Water_Win = false
		PalTool = true
		Once = 0
	end
	
	if Click_Button(Half(SCREEN_WIDTH) + 45, Half(SCREEN_HEIGHT) + 51, 30, 10, "Cancel") then
	
		for Pal_Index = 0, 63 do
			-- !@
			Palette_SetColor(Addresses.Palette.Water + (Pal_Index * 2), 
							Water_Old[Pal_Index+1][1], 
							Water_Old[Pal_Index+1][2],
							Water_Old[Pal_Index+1][3],
							false)
		
		end
	
		Water_Win = false
		PalTool = true
		Once = 0
	end
end

--*****************************************************************************
-- Save Window - Shows up the save window
--*****************************************************************************

local First	= 1
local Second = 1
local Diff
local Which_Pal = false

function Save_Window()


	Window(130, 150, "Save Builder")


	if Which_Pal == false then Save_Editor_Palette = Palette.Main end
	if Which_Pal == true then Save_Editor_Palette = Palette.Water end

	for Pal_Index = 0, 63 do
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		

		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) - 55) + (Line * PALTOOL_BOXSIZE), 
						{ Save_Editor_Palette[Pal_Index+1][1], Save_Editor_Palette[Pal_Index+1][2], Save_Editor_Palette[Pal_Index+1][3], 255 },
						PALTOOL_BOXSIZE)
	end
	
	if Second < First then Second = First end
	
	Diff = Second - First
	
	for Pal_Index = 0, Diff do
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		

		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) + 38) + (Line * PALTOOL_BOXSIZE), 
						{ Save_Editor_Palette[Pal_Index+First][1], Save_Editor_Palette[Pal_Index+First][2], Save_Editor_Palette[Pal_Index+First][3], 255 },
						PALTOOL_BOXSIZE)
	end	
	
	for Pal_Index = First - 1, Second - 1 do
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		

		gui.drawbox(	(Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) - 55) + (Line * PALTOOL_BOXSIZE), 
						(Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
						(Half(SCREEN_HEIGHT) - 55) + (Line * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
						{ 0,0,0,0 },
						{ 255,255,255,255 })
	end		
	
	Which_Pal = Check_Button(Half(SCREEN_WIDTH) + 57, 
							 Half(SCREEN_HEIGHT) - 63, 
							 7, 7, Which_Pal, "", "")
	
	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) + 30, "Save Preview")
	
	if Which_Pal == false then gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 63, "Main Palette") end
	if Which_Pal == true then gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 63, "Water Palette") end
	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 14, "From:" .. First)
	
	First = Add_Button(Half(SCREEN_WIDTH) - 15, Half(SCREEN_HEIGHT) - 15, {0,0,0,255}, {255,255,255,255}, First, 1, 1, 64)
	First = Sub_Button(Half(SCREEN_WIDTH) - 25, Half(SCREEN_HEIGHT) - 15, {0,0,0,255}, {255,255,255,255}, First, 1, 1, 64)
	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 4, "To:" .. Second)
	
	Second = Add_Button(Half(SCREEN_WIDTH) - 15, Half(SCREEN_HEIGHT) - 5, {0,0,0,255}, {255,255,255,255}, Second, 1, 1, 64)
	Second = Sub_Button(Half(SCREEN_WIDTH) - 25, Half(SCREEN_HEIGHT) - 5, {0,0,0,255}, {255,255,255,255}, Second, 1, 1, 64)
	
	if Click_Button(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) + 10, 30, 10, "Save") then

		Save_Win = false
		PalTool = true
	
		if Which_Pal == false then Palette_Dump("Main", First, Second) end
		if Which_Pal == true then Palette_Dump("Water", First, Second) end
		
		
	end
	
	if Click_Button(Half(SCREEN_WIDTH) - 15, Half(SCREEN_HEIGHT) + 10, 30, 10, "Cancel") then

		Save_Win = false
		PalTool = true

	end
	
	gui.line(Half(SCREEN_WIDTH) - Half(130), 
			 Half(SCREEN_HEIGHT) + 26,
			 Half(SCREEN_WIDTH) + Half(130), 
			 Half(SCREEN_HEIGHT) + 26,
			 { 0,0,0,255})
	
end

local Pal_Start = 2


--*****************************************************************************
-- Load Window - Shows up the Load window
--*****************************************************************************

function Load_Window()

	local Counter = 1

	if Once == 0 then
	    Load_Editor_Palette = Palette_Load()
		Once = 1
	end


	
	Window(130, 150, "Load Palette")

	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) + 30, "Preview")
	
	gui.text(Half(SCREEN_WIDTH) - 56, Half(SCREEN_HEIGHT) - 63, "File:")
	
	gui.line(Half(SCREEN_WIDTH) - Half(130), 
			 Half(SCREEN_HEIGHT) - 20,
			 Half(SCREEN_WIDTH) + Half(130), 
			 Half(SCREEN_HEIGHT) - 20,
			 { 0,0,0,255})
	
	gui.line(Half(SCREEN_WIDTH) - Half(130), 
			 Half(SCREEN_HEIGHT) + 26,
			 Half(SCREEN_WIDTH) + Half(130), 
			 Half(SCREEN_HEIGHT) + 26,
			 { 0,0,0,255})
			 
	for Pal_Index = 1, table.getn(Load_Editor_Palette) - 1 do
	
		Line = Dec_Round((Pal_Index - 1) / 16, 0)
				
		if Line == 0 then Row = Pal_Index - 1 end
		if Line == 1 then Row = Pal_Index - 16 - 1 end
		if Line == 2 then Row = Pal_Index - 32 - 1 end
		if Line == 3 then Row = Pal_Index - 48 - 1 end
		

		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) - 55) + (Line * PALTOOL_BOXSIZE), 
						{ Load_Editor_Palette[Pal_Index+1][1], Load_Editor_Palette[Pal_Index+1][2], Load_Editor_Palette[Pal_Index+1][3], 255 },
						PALTOOL_BOXSIZE)
	end

	for Pal_Index = 0, 63 do
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		
		if Which_Pal == false then
		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) + 40) + (Line * PALTOOL_BOXSIZE), 
						{ Palette.Main[Pal_Index+1][1], Palette.Main[Pal_Index+1][2], Palette.Main[Pal_Index+1][3], 255 },
						PALTOOL_BOXSIZE)
		end
		
		if Which_Pal == true then
		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) + 40) + (Line * PALTOOL_BOXSIZE), 
						{ Palette.Water[Pal_Index+1][1], Palette.Water[Pal_Index+1][2], Palette.Water[Pal_Index+1][3], 255 },
						PALTOOL_BOXSIZE)
		end
	end
	
	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 14, "Start:" .. Pal_Start)
	
	Pal_Start = Add_Button(Half(SCREEN_WIDTH) - 5, Half(SCREEN_HEIGHT) - 15, {0,0,0,255}, {255,255,255,255}, Pal_Start, 1, 1, 64)
	Pal_Start = Sub_Button(Half(SCREEN_WIDTH) - 15, Half(SCREEN_HEIGHT) - 15, {0,0,0,255}, {255,255,255,255}, Pal_Start, 1, 1, 64)
	
	
	for Pal_Index = Pal_Start - 1, (Pal_Start - 1) + table.getn(Load_Editor_Palette) - 2 do
	
		Counter = Counter + 1
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		
		if Line < 4 then 

			gui.drawbox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) + 40) + (Line * PALTOOL_BOXSIZE), 
						(Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
						(Half(SCREEN_HEIGHT) + 40) + (Line * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
						{ Load_Editor_Palette[Counter][1], Load_Editor_Palette[Counter][2], Load_Editor_Palette[Counter][3], 255 },
						{ 255,255,255,255 })
						
		end
	end

	if Click_Button(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) + 10, 30, 10, "Apply") then

		Load_Win = false
		PalTool = true
		Once = 0
		
		Counter = 1
		for Pal_Index = Pal_Start - 1, (Pal_Start - 1) + table.getn(Load_Editor_Palette) - 2 do
	
			Counter = Counter + 1
		
			Line = Dec_Round(Pal_Index / 16, 0)
			
			if Line < 4 then 
				if Which_Pal == false then
					-- !@
					Palette_SetColor(Addresses.Palette.Main + (Pal_Index * 2), 
								 	Load_Editor_Palette[Counter][1],
								 	Load_Editor_Palette[Counter][2], 
								 	Load_Editor_Palette[Counter][3],
									false)
				end
				
				if Which_Pal == true then
					-- !@
					Palette_SetColor(Addresses.Palette.Water + (Pal_Index * 2), 
								 	Load_Editor_Palette[Counter][1],
								 	Load_Editor_Palette[Counter][2], 
								 	Load_Editor_Palette[Counter][3],
									false)
				end
				
			end
		
		end
	
	end
	
		
	if Click_Button(Half(SCREEN_WIDTH) - 15, Half(SCREEN_HEIGHT) + 10, 30, 10, "Cancel") then

		Load_Win = false
		PalTool = true
		Once = 0
		
	end
	
	Which_Pal = Check_Button(Half(SCREEN_WIDTH) + 57, 
							 Half(SCREEN_HEIGHT) + 30, 
							 7, 7, Which_Pal, "", "")
	
end



local Grad_First = 0
local Grad_Second = 0
local Grad_Sel1_Row = 0
local Grad_Sel1_Line = 0
local Grad_Sel2_Row = 0
local Grad_Sel2_Line = 0
local Grad_Color1 = { 0, 0, 7, 255 }
local Grad_Color2 = { 7, 0, 0, 255 }
local Grad_Length
local grad_Width
local Grad_ColorChange = {}
local Grad_Palette = {}


--*****************************************************************************
-- Gradient Window - Creates the Gradient Creator Window
--*****************************************************************************
function Gradient_Window()

	local Counter = 0

	Window(130, 170, "Gradient Builder")

	if Which_Pal == false then Gradient_Palette = Palette.Main end
	if Which_Pal == true then Gradient_Palette = Palette.Water end
	
	Lock = true
	
	for Pal_Index = 0, 63 do
	
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		

		Palette_ColorBox((Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) - 70) + (Line * PALTOOL_BOXSIZE), 
						{ Gradient_Palette[Pal_Index+1][1], Gradient_Palette[Pal_Index+1][2], Gradient_Palette[Pal_Index+1][3], 255 },
						PALTOOL_BOXSIZE)
	end
	
	
	if Grad_Second < Grad_First then Grad_Second = Grad_First end
	
	Grad_Sel1_Line = Dec_Round(Grad_First / 16, 0)
		
	if Grad_Sel1_Line == 0 then Grad_Sel1_Row = Grad_First end
	if Grad_Sel1_Line == 1 then Grad_Sel1_Row = Grad_First - 16 end
	if Grad_Sel1_Line == 2 then Grad_Sel1_Row = Grad_First - 32 end
	if Grad_Sel1_Line == 3 then Grad_Sel1_Row = Grad_First - 48 end
		
	gui.drawbox(	(Half(SCREEN_WIDTH) - 56) + (Grad_Sel1_Row * PALTOOL_BOXSIZE), 
					(Half(SCREEN_HEIGHT) - 70) + (Grad_Sel1_Line * PALTOOL_BOXSIZE), 
					(Half(SCREEN_WIDTH) - 56) + (Grad_Sel1_Row * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
					(Half(SCREEN_HEIGHT) - 70) + (Grad_Sel1_Line * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
					{ 0,0,0,0 },
					{ 255,255,255,255 })
	
	Grad_Sel2_Line = Dec_Round(Grad_Second / 16, 0)
		
	if Grad_Sel2_Line == 0 then Grad_Sel2_Row = Grad_Second end
	if Grad_Sel2_Line == 1 then Grad_Sel2_Row = Grad_Second - 16 end
	if Grad_Sel2_Line == 2 then Grad_Sel2_Row = Grad_Second - 32 end
	if Grad_Sel2_Line == 3 then Grad_Sel2_Row = Grad_Second - 48 end
		
	gui.drawbox(	(Half(SCREEN_WIDTH) - 56) + (Grad_Sel2_Row * PALTOOL_BOXSIZE), 
					(Half(SCREEN_HEIGHT) - 70) + (Grad_Sel2_Line * PALTOOL_BOXSIZE), 
					(Half(SCREEN_WIDTH) - 56) + (Grad_Sel2_Row * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
					(Half(SCREEN_HEIGHT) - 70) + (Grad_Sel2_Line * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
					{ 0,0,0,0 },
					{ 255,255,255,255 })						

	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 34, "From:" .. Grad_First)
	
	Grad_First = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) - 35, {0,0,0,255}, {255,255,255,255}, Grad_First, 1, 0, 63)
	Grad_First = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) - 35, {0,0,0,255}, {255,255,255,255}, Grad_First, 1, 0, 63)
	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 24, "To:" .. Grad_Second)
	
	Grad_Second = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) - 25, {0,0,0,255}, {255,255,255,255}, Grad_Second, 1, 0, 63)
	Grad_Second = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) - 25, {0,0,0,255}, {255,255,255,255}, Grad_Second, 1, 0, 63)
				
	
	
		
			
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) - 5, "Color1: ")
	gui.text(Half(SCREEN_WIDTH) - 22, Half(SCREEN_HEIGHT) + 5, "Red: " .. (Grad_Color1[1]) * 32)
	gui.text(Half(SCREEN_WIDTH) - 22, Half(SCREEN_HEIGHT) + 15, "Green: " .. (Grad_Color1[2]) * 32)
	gui.text(Half(SCREEN_WIDTH) - 22, Half(SCREEN_HEIGHT) + 25, "Blue: " .. (Grad_Color1[3]) * 32)
	
	
	Grad_Color1[1] = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) + 4, {0,0,0,255}, {255,255,255,255}, Grad_Color1[1], 1, 0, 7)
	Grad_Color1[1] = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) + 4, {0,0,0,255}, {255,255,255,255}, Grad_Color1[1], 1, 0, 7)
	
	Grad_Color1[2] = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) + 14, {0,0,0,255}, {255,255,255,255}, Grad_Color1[2], 1, 0, 7)
	Grad_Color1[2] = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) + 14, {0,0,0,255}, {255,255,255,255}, Grad_Color1[2], 1, 0, 7)
	
	Grad_Color1[3] = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) + 24, {0,0,0,255}, {255,255,255,255}, Grad_Color1[3], 1, 0, 7)
	Grad_Color1[3] = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) + 24, {0,0,0,255}, {255,255,255,255}, Grad_Color1[3], 1, 0, 7)
	
	
	
	gui.drawbox(Half(SCREEN_WIDTH) - 55, 
				Half(SCREEN_HEIGHT) +5, 
				Half(SCREEN_WIDTH) - 55 + 28,
				Half(SCREEN_HEIGHT) +5 + 28,
				{ Grad_Color1[1] * 32, Grad_Color1[2] * 32, Grad_Color1[3] * 32, 255 },
				{ 255, 255, 255, 255 } )
				
	
	gui.text(Half(SCREEN_WIDTH) - 55, Half(SCREEN_HEIGHT) + 40, "Color2: ")
	gui.text(Half(SCREEN_WIDTH) - 22, Half(SCREEN_HEIGHT) + 50, "Red: " .. (Grad_Color2[1]) * 32)
	gui.text(Half(SCREEN_WIDTH) - 22, Half(SCREEN_HEIGHT) + 60, "Green: " .. (Grad_Color2[2]) * 32)
	gui.text(Half(SCREEN_WIDTH) - 22, Half(SCREEN_HEIGHT) + 70, "Blue: " .. (Grad_Color2[3]) * 32)
	
	Grad_Color2[1] = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) + 49, {0,0,0,255}, {255,255,255,255}, Grad_Color2[1], 1, 0, 7)
	Grad_Color2[1] = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) + 49, {0,0,0,255}, {255,255,255,255}, Grad_Color2[1], 1, 0, 7)
	
	Grad_Color2[2] = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) + 59, {0,0,0,255}, {255,255,255,255}, Grad_Color2[2], 1, 0, 7)
	Grad_Color2[2] = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) + 59, {0,0,0,255}, {255,255,255,255}, Grad_Color2[2], 1, 0, 7)
	
	Grad_Color2[3] = Add_Button(Half(SCREEN_WIDTH) + 48, Half(SCREEN_HEIGHT) + 69, {0,0,0,255}, {255,255,255,255}, Grad_Color2[3], 1, 0, 7)
	Grad_Color2[3] = Sub_Button(Half(SCREEN_WIDTH) + 38, Half(SCREEN_HEIGHT) + 69, {0,0,0,255}, {255,255,255,255}, Grad_Color2[3], 1, 0, 7)
	
	
	gui.drawbox(Half(SCREEN_WIDTH) - 55, 
				Half(SCREEN_HEIGHT) + 50, 
				Half(SCREEN_WIDTH) - 55 + 28,
				Half(SCREEN_HEIGHT) + 50 + 28,
				{ Grad_Color2[1] * 32, Grad_Color2[2] * 32, Grad_Color2[3] * 32, 255 },
				{ 255, 255, 255, 255 } )
	
						
	local Counter = 1
	local Diff = Grad_Second - Grad_First
	
	for i = 0, table.getn(Grad_Palette) do
	
		table.remove(Grad_Palette, 1)
	
	end
	
	
	for Pal_Index = Grad_First, Grad_Second do
		
		Diff = Grad_Second - Grad_First
		Grad_ColorChange[1] = Dec_Round((Grad_Color1[1] * Counter + Grad_Color2[1] * (Diff-Counter)) / Diff, 0)
		Grad_ColorChange[2] = Dec_Round((Grad_Color1[2] * Counter + Grad_Color2[2] * (Diff-Counter)) / Diff, 0)
		Grad_ColorChange[3] = Dec_Round((Grad_Color1[3] * Counter + Grad_Color2[3] * (Diff-Counter)) / Diff, 0)
		
		
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		
		
		
		gui.drawbox(	(Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE), 
						(Half(SCREEN_HEIGHT) - 70) + (Line * PALTOOL_BOXSIZE), 
						(Half(SCREEN_WIDTH) - 56) + (Row * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
						(Half(SCREEN_HEIGHT) - 70) + (Line * PALTOOL_BOXSIZE) + PALTOOL_BOXSIZE, 
						{ Grad_ColorChange[1] * 32, Grad_ColorChange[2] * 32, Grad_ColorChange[3] * 32,255 },
						{ 255,255,255,255 })	
						
					
		Counter = Counter + 1
	end
	
	
	Counter = 0
	
	if Click_Button(Half(SCREEN_WIDTH) , Half(SCREEN_HEIGHT) - 13, 30, 10, "Apply") then
	
	
		PalTool = true
		Gradient_Win = false
	
		for Pal_Index = Grad_First, Grad_Second do
		
		
		Diff = Grad_Second - Grad_First
		Grad_ColorChange[1] = Dec_Round((Grad_Color1[1] * Counter + Grad_Color2[1] * (Diff-Counter)) / Diff, 0)
		Grad_ColorChange[2] = Dec_Round((Grad_Color1[2] * Counter + Grad_Color2[2] * (Diff-Counter)) / Diff, 0)
		Grad_ColorChange[3] = Dec_Round((Grad_Color1[3] * Counter + Grad_Color2[3] * (Diff-Counter)) / Diff, 0)
		
		
		Line = Dec_Round(Pal_Index / 16, 0)
				
		if Line == 0 then Row = Pal_Index end
		if Line == 1 then Row = Pal_Index - 16 end
		if Line == 2 then Row = Pal_Index - 32 end
		if Line == 3 then Row = Pal_Index - 48 end
		
		--!@ 
		Palette_SetColor(Addresses.Palette.Main + (Pal_Index * 2), 
							 Grad_ColorChange[1] * 32,
						     Grad_ColorChange[2] * 32, 
						     Grad_ColorChange[3] * 32,
							 false)
						     
			Counter = Counter + 1
		end
	
	end
	
	if Click_Button(Half(SCREEN_WIDTH) + 33, Half(SCREEN_HEIGHT) - 13, 30, 10, "Close") then
	
		PalTool = true
		Gradient_Win = false
	
	end
	
end


--*****************************************************************************
-- Main Menu - Creates the main menu
--*****************************************************************************
function Main_Menu(x, y, w, h)

	local Window_X = Half(SCREEN_WIDTH)
	local Window_Y = Half(SCREEN_HEIGHT)
	
	local Button_W = 90
	local Button_H = 10
	
	local Button_X = Window_X - Half(Button_W)
	local Button_Y = Window_Y - Half(h) - 30
	
	

	Menu = Check_Button(x, y, w, h, Menu, "Menu", "Menu")
	if Menu == true then
	
		Window(100, 100, "Main Menu")
		
		Water_Win = false
		Save_Win = false
		Load_Win = false
		
		PalTool = Menu_Check_Button(Button_X, Button_Y, Button_W, Button_H, PalTool, "Show Editor", "Hide Editor")
		Lock = Menu_Check_Button(Button_X, Button_Y + 12, Button_W, Button_H, Lock, "Lock Palette", "Unlock Palette")
		Water_Win = Menu_Check_Button(Button_X, Button_Y + 24, Button_W, Button_H, Water_Win, "Water Builder", "Water Builder")
		Gradient_Win = Menu_Check_Button(Button_X, Button_Y + 36, Button_W, Button_H, Load_Win, "Gradient Builder", "Gradient Builder")
		Save_Win = Menu_Check_Button(Button_X, Button_Y + 48, Button_W, Button_H, Save_Win, "Save Palette", "Save Palette")
		Load_Win = Menu_Check_Button(Button_X, Button_Y + 60, Button_W, Button_H, Load_Win, "Load Palette", "Load Palette")
		
		if Click_Button(Button_X, Button_Y + 72, Button_W, Button_H,  "Close") then
		
			Menu = false
		
		end
	end


end