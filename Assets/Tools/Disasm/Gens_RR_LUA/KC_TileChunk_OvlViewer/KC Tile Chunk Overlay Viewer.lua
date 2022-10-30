-- KC Tile Chunk Overlay Viewer
-- By GenesisDoes/MrTamkis

-- Modified from S3K Tile Chunk Overlay Viewer
-- By Cokie
-- Draw A Grid Starting At The Camera's X and Y Pos Coarse.
-- Draw text of the playfield x and y coordinates of the chunk the mouse is in 
-- draw opaque rectangle of that chunk the mouse is inside of 
-- This is usefull to see where the chunk tile aligns when working in
-- a level such as Soned2

-- actual drawin space on gens is 1 less for each becuase starts at 0
WINDOW_SCREEN_WIDTH = 320
WINDOW_SCREEN_HEIGHT = 224

readword = memory.readword

CHUNK = 0x80
CHUNKMASK = 0xFF80

-- !@
-- OFF_CAMERA_X_POS = 0xFFEE78 
OFF_CAMERA_X_POS = 0xFFC1DE
-- OFF_CAMERA_Y_POS = 0xFFEE7C
OFF_CAMERA_Y_POS = 0xFFC1EE

F_DEBUG = true

-- Convert to hex string
function tohex(v) return string.format("%0x",v) end

-- Update all our variables
function Update()
	Camera_X = readword(OFF_CAMERA_X_POS)
	Camera_Y = readword(OFF_CAMERA_Y_POS)

	Camera_X_COARSE = AND(Camera_X,CHUNKMASK)
	Camera_Y_COARSE = AND(Camera_Y,CHUNKMASK)

	Camera_X_COARSE_SCREEN = Camera_X_COARSE - Camera_X
	Camera_Y_COARSE_SCREEN = Camera_Y_COARSE - Camera_Y
	
	-- We begin drawwing the horiz/vertical lines one chunk outside the screen's x and y
	-- Set the Number lines to draw to be enough to always show the tiles in the screen area
	NUM_VERT_LINES_DRAW = 4
	NUM_HORIZ_LINES_DRAW = 3

	-- Get the mouse x and y and then the mouse x and y coarse and the mouse x and y coarse screen
	-- this will be used to display the x and y of the chunk which the mouse is inside of
	-- and to also draw a rectangle in that chunk ( width and height is chunk )
	INPUT = input.get()

	X_MOUSE_COARSE = AND(Camera_X + INPUT.xmouse,CHUNKMASK)
	Y_MOUSE_COARSE = AND(Camera_Y + INPUT.ymouse,CHUNKMASK)
	X_MOUSE_CHK = X_MOUSE_COARSE / CHUNK
	Y_MOUSE_CHK = Y_MOUSE_COARSE / CHUNK

	X_MOUSE_COARSE_SCREEN =  X_MOUSE_COARSE- Camera_X 
	Y_MOUSE_COARSE_SCREEN = Y_MOUSE_COARSE- Camera_Y 
end

Update()

-- Update variables before emulating frame
gens.registerbefore(function()
	Update()
end)

-- Draw the horizantal lines making up the grid
function draw_horiz_lines()
	for i = Camera_X_COARSE_SCREEN,Camera_X_COARSE_SCREEN+(CHUNK * NUM_HORIZ_LINES_DRAW),CHUNK do
		gui.line(i,0,i,223,"red")
	end
end

-- Draw the vertical lines making up the grid
function draw_vert_lines()
	for i = Camera_Y_COARSE_SCREEN,Camera_Y_COARSE_SCREEN+(CHUNK * NUM_VERT_LINES_DRAW),CHUNK do
		gui.line(0,i,320,i,"red")
	end
end

-- redraw everything
gui.register(function()
	local newline = "\n"

	-- draw h/v lines making up grid
	draw_horiz_lines()
	draw_vert_lines()

	-- if enabled debug draw that stuff
	if F_DEBUG then debug() end

	local chunkCoord = "Chunk X: " ..tohex(X_MOUSE_COARSE) .. " Y: " .. tohex(Y_MOUSE_COARSE) .. newline
	.. "Chunk Xpos: " ..tohex(X_MOUSE_CHK) .. " Ypos: " .. tohex(Y_MOUSE_CHK)

	-- draw an opaque rectangle makeing up the chunk the mouse is inside of
	-- draw text of the x and y positon of the chunk the mouse is inside
	gui.rect(X_MOUSE_COARSE_SCREEN,Y_MOUSE_COARSE_SCREEN,X_MOUSE_COARSE_SCREEN+CHUNK,Y_MOUSE_COARSE_SCREEN+CHUNK,0x00007f7F,0x00007f7F)
	gui.text(X_MOUSE_COARSE_SCREEN,Y_MOUSE_COARSE_SCREEN,chunkCoord,"yellow","black")
	
end)

-- Draw Debug Window 
-- Text Of Variables and opaque box behind it
function debug()

	local x = 190
	local y = 20
	local newline = "\n\n"

	local str = "Camera_X " .. tohex(Camera_X) .. newline 	
	.. "Camera_Y " .. tohex(Camera_Y) .. newline 
	.. "Camera_X_COARSE " .. tohex(Camera_X_COARSE) .. newline 
	.. "Camera_Y_COARSE " .. tohex(Camera_Y_COARSE) .. newline 
        .. "Camera_X_COARSE_SCREEN " .. Camera_X_COARSE_SCREEN .. newline 
	.. "Camera_Y_COARSE_SCREEN " .. Camera_Y_COARSE_SCREEN .. newline 
	.. "NUM_HORIZ_LINES_DRAW  " .. NUM_HORIZ_LINES_DRAW .. newline 
	.. "NUM_VERT_LINES_DRAW  " .. NUM_VERT_LINES_DRAW 
	
	gui.rect(x-10,y-10,x+120,y+130,0x00007f7F,"clear")
	gui.text(x,y,str,"yellow","black")	
end