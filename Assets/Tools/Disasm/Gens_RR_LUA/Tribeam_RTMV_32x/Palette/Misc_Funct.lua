--*************************************************************
--	Live Palette editor for Sonic games
--	Made by Tribeam
--*************************************************************

-- ************************************************
-- all common functions go here
-- ************************************************


	
--*****************************************************************************
-- Decimal Round - Rounds a decimal to the givin decimal point
--*****************************************************************************
function Dec_Round(what, precision)
	   return math.floor(what*math.pow(10,precision)) / math.pow(10,precision)
end

function Half(value)

	return value / 2

end

--*****************************************************************************
-- Centered Text - Text at which x is centered in the middle of the text
--*****************************************************************************
function Centered_Text(x, y, text)

gui.text((x - (string.len(text) * 2)), y - 3, text)

end






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
-- Click button - a button that returns true when clicked
--*****************************************************************************
function Click_Button(x, y, w, h, title)
	local MidX = x + Half(w)
	local MidY = y + Half(h)
	local Value = false

			-- Draw highlighted box
			gui.drawbox(x, y, x + w, y + h, Theme.Button, Theme.ButtonBorder)
			Centered_Text(MidX, MidY, title)
			
			-- Create button functionality
			if Button(x, y, w, h, false) then
				-- Change value to false
				Value = true
			end

		return Value
end

--*****************************************************************************
-- Check button - Take value and return opposite value(bool)
--*****************************************************************************
function Check_Button(x, y, w, h, value, title, titleclicked)

		local MidX = x + Half(w)
		local MidY = y + Half(h)
	
		-- if value is true
		if value == true then
		
			-- Draw highlighted box
			gui.drawbox(x, y, x + w, y + h, Theme.Highlight, Theme.BorderHighlight)
			Centered_Text(MidX, MidY, titleclicked)
			
			-- Create button functionality
			if Button(x, y, w, h, false) then
				-- Change value to false
				value =  false
			end
		else
			-- Draw Normal box
			gui.drawbox(x, y, x + w, y + h, Theme.Button, Theme.ButtonBorder)
			Centered_Text(MidX, MidY, title)
			
			if Button(x, y, w, h, false) then
				value = true
			end
		end
		
		
		return value
end

--*****************************************************************************
-- Menu Check button - Same as Check Button but closes the main menu whe clicked
--*****************************************************************************
function Menu_Check_Button(x, y, w, h, value, title, titleclicked)

		local Click = value

		value = Check_Button(x, y, w, h, value, title, titleclicked)
		
		if not value == Click then
		
			Menu = false
		
		end
		
		
		return value
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


