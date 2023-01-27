







--*****************************************************************************
-- Basic Button - This is like the backbone for all the rest of the buttons
--				  This function is never directly used
--*****************************************************************************
function Button(x, y, w, h, hold)

		local Return_Value = false

		-- get mouse info
		Mouse_Input = input.get() 
		
		
		if 	Mouse_Input.xmouse >= x + 1 and 
			Mouse_Input.xmouse <= x + w and 
			Mouse_Input.ymouse >= y + 1 and 
			Mouse_Input.ymouse <= y + h then
			
			if Mouse_Input.leftclick then
				if not hold then
					if not leftclickdown then
         				Return_Value = true
         				leftclickdown = true
         			end
         		else
         			Return_Value = true
         		end

         	else
         		if not hold then
         			leftclickdown = false
         		end
         	end	
			
		end
		
		return Return_Value

end




--*****************************************************************************
-- Add Button - Does what it's name suggest
--*****************************************************************************
function Add_Button(x, y, color, bordercolor, value, add, _min, _max)

	gui.drawbox(x, y, x + 8, y + 8, Theme.Button, Theme.ButtonBorder)

	Centered_Text(x + 5, y + 4, "+")
	
	if Button(x, y, 8, 8, false) then
	
		value = value + add
	
	end
	
	if value > _max then value = _max end

	return value
	


end

--*****************************************************************************
-- Subtract Button - Does what it's name suggest
--*****************************************************************************
function Sub_Button(x, y, color, bordercolor, value, subt, _min, _max)

	gui.drawbox(x, y, x + 8, y + 8, Theme.Button, Theme.ButtonBorder)

	Centered_Text(x + 5, y + 4, "-")
	
	if Button(x, y, 8, 8, false) then
	
		value = value - subt
	
	end

	if value < _min then value = _min end
	
	return value
	
end






local Save_State
local Unknown1
local Char_Spec
local Level
local Unknown2
local Special_Ring
local Choas1
local Choas2





gens.registerbefore( function ()


	memory.writeword(0xFFF648, 1100)
	gui.text(50, 50, memory.readword(0xFFF648))
	
end)