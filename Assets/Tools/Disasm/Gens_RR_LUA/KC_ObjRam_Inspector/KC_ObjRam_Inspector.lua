
-- Version 0.2 MORE GOODIES , SLIGHTLY LESS CRUDDY CODE
-- USED TABLES MORE TO GIVE SORTA OF A MORE OOP FEEL
-- Shows all soz ghost and capsule related objects following detials
-- the start adress of the dynamic object in ram
-- the code pointers address
-- the coordinate system whether screen or playfield
-- the x and y coordinates of object

-- NOTED I NEED TO USE gui.register (func) FOR ALL 
---GUI DRAWING . IF I DONT ITLL EXECUTE 1 FRAME LATE
-- AND RUN SLOWER 

-- !@
--CameraXPos = memory.readwordunsigned(0xFFEE14)
--CameraYPos = memory.readwordunsigned(0xFFEE18)
CameraXPos = memory.readwordunsigned(0xFFC1E8)
CameraYPos = memory.readwordunsigned(0xFFC1EA)
print("CameraXPos" .. CameraXPos .. "CameraYPos" .. CameraYPos)

DEBUG = TRUE
NumberObjects  = 0 
--Constants

PreviousDynamicObjTable = { } 
-- !@
-- the size of an Object
-- Object_Size = 0x4A 
Object_Size = 0x40

-- Object RAM Start Address 
-- !@
-- Dynamic_Obj_Off = 0xFFB0DE
Dynamic_Obj_Off = 0xFFE02C

--!@ 
-- The Start and End Address in (decimal since I can't figure out how to do a if >= with hex)
-- of the starting address of code releated to soz2 ghosts and capsule
-- used to find relevant dynamic objects
-- RELEVANT_START_ADDRESS = 585672
-- RELEVANT_END_ADDRESS = 587358

-- CONSTANTS FOR PLAYFIELD AND SCREEN COORDINATE VALUES
PLAYFIELDCOORD=1
SCREEN_COORD = 0 

-- The total number of dynamic objects maximally available 90 objects use hex 0x5a
Dynamic_Obj_Total_Objects = 90

-- END CONSTANTS

columns = 5 -- number entries for each object array
row = 0

-- Global variable of all the Dynamic Objects
DynamicObjTable = { } 
-- Global temporary table

gui.register( function()

-- if there are entries to the table ( we found objects )
-- draw its HUD info and draw a box around it 
if DynamicObjTable ~= nill then

DrawHUDInfo()
DrawBoxAroundObjects()
end
end)


gens.registerbefore( function()

loadDynamicObjTable()






PreviousDynamicObjTable = DynamicObjTable

-- delete objects table do i need to do this ????????????
--DynamicObjTable = nil

end)




-- LoadDynamicObjTable
-- Goes through all the dynamic objects searching for ones thats pointer address to code
-- is related to the soz2 ghosts and capsule
function loadDynamicObjTable()


-- Indexing all the objects found 
-- NOTE THIS ONE STARTS AT 0 UNLIKE I BEACAUSE WE ADD ONE TO IT AS SOON AS WE FIND A OBJET MATCHING CRITERIA
-- AND SO WE ADD ONE TO GET 1 BEFORE WE REFERENCE IT 

		Index = 0 -- set zero will change soon


		for i = 1, Dynamic_Obj_Total_Objects , 1 do
		    
			-- Temporart holds the dynamic object ram info
			local tempTable = { }
			
			--The address of the poitner to the code ( the first 4 bytes in status table )
			--i starts at 1 so we do (i-0x1)
			  
			local tempCode_Pointer_Address = memory.readlongunsigned(Dynamic_Obj_Off + (Object_Size * (i-0x1) )  )
						
			-- If Pointer to code of the object is ghost related, we add it and other stuff to the table like
			-- the starting address of this dynamic object in dynamic object ram (the value of the code pointer address 		
			
	
			-- resides at this memory location)
			-- the X and Y Coordinates

				--!@
				--if (tempCode_Pointer_Address >= RELEVANT_START_ADDRESS) and (tempCode_Pointer_Address <= RELEVANT_END_ADDRESS) then
		        
			
				-- Add in the beginining so we dont have an additional one if we added at the end of the loop
				 Index = Index + 1
				 
				 
				  -- copy tempTable of the ghost related object to DynamicObjTable
				  DynamicObjTable[Index] = tempTable	
					
				 tempTable.Code_Pointer_Address = tempCode_Pointer_Address

				--The address of the object in object ram . this is the addres starting at the object code pointer
				 tempTable.StartAddress = (Dynamic_Obj_Off + (Object_Size * (i-1)))
				
					 
				 -- bit two of RenderFlags  is the objcects coordinate system
				 -- This bit tells us if the object coordinate system is absolute screen  or playfield coordinates
				 -- absolute is for things like hud and menu options
				 -- playfield is where it is in level
				 -- if set using playfield
				 local renderBit =  memory.readbyteunsigned(Dynamic_Obj_Off + (Object_Size * (i-1) ) + 4 )
						if ( AND(renderBit,4) == 4)  then
					
						-- we are using playfield cooord

						tempTable.CoordSystem = 1 
						end

				
						if  ( AND(renderBit,4) ~= 4)  then
					
						-- we are using abcolute screen coordinates
				 
						tempTable.CoordSystem = 0
						
						end
						
				local tempx = memory.readwordunsigned(Dynamic_Obj_Off + (Object_Size * (i-1) ) + 0x10 ) 
				local tempy = memory.readwordunsigned(Dynamic_Obj_Off + (Object_Size * (i-1) ) + 0x14 )
				
				tempTable.x = tempx
				tempTable.y = tempy
				
				--!@
						-- end

				DynamicObjTable[i] = { } 
				DynamicObjTable[i] = tempTable

				end

	 NumberObjects = Index
		
	 --PrintObjectInfo("DynamicObjTable",DynamicObjTable)
	--PrintObjectInfo("DynamicObjTable",DynamicObjTable)
	
	
	--print("DynamicObjTable.NumberObjects", DynamicObjTable.NumberObjects)

end

-- Draw the Hud Info about all the objects
function DrawHUDInfo(MyDynamicObjTable)

local startY = 40
-- go through all the objects we found relating to soz2 ghosts and capsule

for i = 1 , NumberObjects , 1  do

---TEMP COMMENTING THIS OUT FOR TESTING
--HUD = string.format("Obj Start %0x Code Ptr Addr %0x PlayField Coord %0x X: %0x Y: %0x",MyDynamicObjTable[i].StartAddress,MyDynamicObjTable[i].Code_Pointer_Address,MyDynamicObjTable[i].CoordSystem  ,MyDynamicObjTable[i].x,MyDynamicObjTable[i].y)
--gui.text(10, startY + ( i * 10) , HUD,"cyan","black")	

HUD = string.format("Obj Start %0x Code Ptr Addr %0x Coord System %0x X: %0x Y: %0x", DynamicObjTable[i].StartAddress,DynamicObjTable[i].Code_Pointer_Address,DynamicObjTable[i].CoordSystem,DynamicObjTable[i].x,DynamicObjTable[i].y )

-- set proper color of hud text based on coordinate system
if DynamicObjTable[i].CoordSystem == 1  then
gui.text(10, startY, HUD,"green","black")	
else
gui.text(10, startY, HUD,"red","black")
end

startY = startY + 10
end
end

-- Draws box around objects
-- Handles HOW to draw based on coordinates system
function  DrawBoxAroundObjects()



-- go through all the objects we found relating to soz2 ghosts and capsule
	for i = 1 , NumberObjects , 1  do
	
	local Height = 0
	local Width = 0 

	HeightAddr = DynamicObjTable[i].StartAddress + 6
	WidthAddr = DynamicObjTable[i].StartAddress + 7

	-- if the objects width or height is smaller than 2 pixels set defualt width height
	if memory.readbyteunsigned(HeightAddr) < 2  then
		Height = 40
	else

	Height = memory.readbyteunsigned(HeightAddr)

	end

	if memory.readbyteunsigned(WidthAddr ) < 2 then
		Width = 40
	else

	Width = memory.readbyteunsigned(WidthAddr )

	end
		
		-- if using absolute screen coordinate system, normally draw
		if DynamicObjTable[i].CoordSystem == 0 then
		
		gui.opacity(0.75)
		gui.box (DynamicObjTable[i].x,DynamicObjTable[i].y,DynamicObjTable[i].x+40,DynamicObjTable[i].y+40, "blue")
	    	gui.opacity(1)
		stringhud = string.format(" %0x %0x %0x %0x %0x", DynamicObjTable[i].StartAddress,DynamicObjTable[i].Code_Pointer_Address,DynamicObjTable[i].CoordSystem,DynamicObjTable[i].x,DynamicObjTable[i].y )
		gui.text(DynamicObjTable[i].x + 5, DynamicObjTable[i].y,stringhud  , "red","black")
		
		end



		-- IF OBJECT IS USING PLAYFIELD COORDINATE CALCULATE THE POSITION 
		if DynamicObjTable[i].CoordSystem == 1 then


		-- NOTE I HAVE NO CLUE EXACTLY IF I AM DOING THIS RIGHT MIGHT NEED TO CHANGE HOW I CALCULATE THIS
		-- AND THESE CAMERAXPOS CAMERAY POS VARIABLES MAY
		--BE WRONG :)
		-- these variables are rounded down to the nearest block boundary ($10th pixel)

		local CameraXPos = memory.readwordunsigned(0xFFEE78)
		local CameraYPos = memory.readwordunsigned(0xFFEE7C)

		-- not sure if negative positions wll mess stuff up and if am over compliating this
		-- adding stuff not necesarry
		-- minus zero is for the levels y origin 
		-- if in range of screen
		if ( (DynamicObjTable[i].x >= CameraXPos)  and  (DynamicObjTable[i].x <= (CameraXPos + 320)) and (DynamicObjTable[i].y >= CameraYPos) and (DynamicObjTable[i].y <= (CameraYPos + 224))) then

		local FinalX = (DynamicObjTable[i].x - CameraXPos ) 

		local FinalY = (DynamicObjTable[i].y - CameraYPos) 
		
		-- make a semi transparent box ovr object
		gui.opacity (0.75)
		gui.box (FinalX ,FinalY,FinalX+Width ,FinalY+Height, "blue")
		gui.opacity (1)
		
		-- draw green hud since it is level coord
		stringhud = string.format(" %0x %0x %0x %0x %0x", DynamicObjTable[i].StartAddress,DynamicObjTable[i].Code_Pointer_Address,DynamicObjTable[i].CoordSystem,DynamicObjTable[i].x,DynamicObjTable[i].y )
		gui.text(FinalX + 5, FinalY,stringhud  , "green","black")
		end
	



	end


	end
end

function debugInfo()

	for i = 1 , NumberObjects , 1  do

		HUD = string.format("Obj Start %0x Code Ptr Addr %0x Coord System %0x X: %0x Y: %0x", DynamicObjTable[i].StartAddress,DynamicObjTable[i].Code_Pointer_Address,DynamicObjTable[i].CoordSystemDynamicObjTable[i].x,DynamicObjTable[i].y )
		gui.text(msgx, msgy, HUD,"cyan","black")

	end 

end

-- prints all the object info we are intereted and the table name containing it
function PrintObjectInfo(tablename,PassedObject)

	for i = 1 , NumberObjects, 1 do

		if PassedObject[i]  == nill then
		print("PrintObjectInfo PrintObjectInfo in nill")

		elseif PassedObject[i] ~= nil then

		print(tablename, " Pointer Addrres " ,PassedObject[i].Code_Pointer_Address,
		"StartAddress " ,PassedObject[i].StartAddress , 
		"Coord System " ,PassedObject[i].CoordSystem  ,
		"x",PassedObject[i].x, 
		"y ", PassedObject[i].y ) 
					
		end
	end

end
