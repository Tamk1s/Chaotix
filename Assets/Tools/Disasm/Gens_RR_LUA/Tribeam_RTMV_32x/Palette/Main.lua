--*************************************************************
--	Live Palette editor for Sonic games
--	Made by Tribeam
--*************************************************************

dofile("Lua/Palette/Misc_Funct.lua")
dofile("Lua/Palette/Addresses.lua")
dofile("Lua/Palette/Palette_Core.lua")
dofile("Lua/Palette/Palette_Edit.lua")
dofile("Lua/Palette/Windows.lua")
	
-- Run everything each frame
gens.registerbefore( function ()

	
	if Current_Game == Game_List.Invalid then
		-- Game_Window(100, 125)
		Game_Window(100, 135)	-- !@ 
	else
	
		if Water_Win == true then
			
			PalTool = false
			if Once == 0 then
				Water_Old = Palette.Water
				Once = 1	
			end

			Water_Window()
			
		end
		
		if Save_Win == true then
			
			PalTool = false
			Save_Window()
			
		end
		
		if Load_Win == true then
			
			PalTool = false
			Load_Window()
			
		end
		
		if Gradient_Win == true then
			
			PalTool = false
			Gradient_Window()
			
		end
		
		Palette_Tool()

		Main_Menu(285, 210, 30, 10)
	end
	
	
	if Lock == true then
	
	-- !@ for Pal_Index = 0, 63 do
	for Pal_Index = 0, 255 do
		
		-- !@
		if Pal_Index<=63 then
			Palette_SetColor(Addresses.Palette.Main + (Pal_Index * 2), 
							Palette.Main[Pal_Index+1][1], 
							Palette.Main[Pal_Index+1][2],
							Palette.Main[Pal_Index+1][3],
							false)
							
			Palette_SetColor(Addresses.Palette.Water + (Pal_Index * 2), 
							Palette.Water[Pal_Index+1][1], 
							Palette.Water[Pal_Index+1][2],
							Palette.Water[Pal_Index+1][3],
							false)
		end
							
			-- !@
			Palette_SetColor(Addresses.Palette.SVDP + (Pal_Index * 2), 
							Palette.SVDP[Pal_Index+1][1], 
							Palette.SVDP[Pal_Index+1][2],
							Palette.SVDP[Pal_Index+1][3],
							true)
		end
	
	end
	
end)


gui.register( function ()

	if Lock == true then
	
	-- !@ for Pal_Index = 0, 63 do
	for Pal_Index = 0, 255 do
		-- !@
		if Pal_Index <=63 then
			Palette_SetColor(Addresses.Palette.Main + (Pal_Index * 2), 
							Palette.Main[Pal_Index+1][1], 
							Palette.Main[Pal_Index+1][2],
							Palette.Main[Pal_Index+1][3],
							false)
							
			Palette_SetColor(Addresses.Palette.Water + (Pal_Index * 2), 
							Palette.Water[Pal_Index+1][1], 
							Palette.Water[Pal_Index+1][2],
							Palette.Water[Pal_Index+1][3],
							false)
		end

			--!@ 
			Palette_SetColor(Addresses.Palette.SVDP + (Pal_Index * 2), 
							Palette.SVDP[Pal_Index+1][1], 
							Palette.SVDP[Pal_Index+1][2],
							Palette.SVDP[Pal_Index+1][3],
							true)
		end
	
	end


end)

-- Run everything each frame
gens.registerafter( function ()


	if Lock == true then
	
	--!@ for Pal_Index = 0, 63 do
	for Pal_Index = 0, 255 do
		--!@
		if Pal_Index<=63 then
			Palette_SetColor(Addresses.Palette.Main + (Pal_Index * 2), 
							Palette.Main[Pal_Index+1][1], 
							Palette.Main[Pal_Index+1][2],
							Palette.Main[Pal_Index+1][3],
							false)
							
			Palette_SetColor(Addresses.Palette.Water + (Pal_Index * 2), 
							Palette.Water[Pal_Index+1][1], 
							Palette.Water[Pal_Index+1][2],
							Palette.Water[Pal_Index+1][3],
							false)
		end
		
			--!@ 
			Palette_SetColor(Addresses.Palette.SVDP + (Pal_Index * 2), 
							Palette.SVDP[Pal_Index+1][1], 
							Palette.SVDP[Pal_Index+1][2],
							Palette.SVDP[Pal_Index+1][3],
							true)
		end
	
	end

end)