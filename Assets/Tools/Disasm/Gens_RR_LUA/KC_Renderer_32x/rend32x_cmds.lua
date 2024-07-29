-- KC 32x Renderer draw cmd debugger
-- By GenesisDoes/MrTamkis

FB_BUFF1_PTR= 0x06003814
FB_BUFF2_PTR= 0x06003818
FB_BUFF_CMDOFF = 0x30

-- Draw cmd constants
draw_end = 0x00
draw_dSprite = 0x01
draw_dTDotVel = 0x02
draw_dTDotAngle = 0x03
draw_dTDotAngle_GA = 0x04
draw_SetTDot_GA = 0x05
draw_setDslvTDotVel = 0x06
draw_dfBnds_2D = 0x07
draw_dfBnds_3D = 0x08
draw_dLine = 0x09
draw_dPolygon = 0x0A
draw_df3DPolySh = 0x0B
draw_d3DPolySh = 0x0C
draw_dSprite_TopDislv = 0x0D
draw_dSprite_BotDislv = 0x0E
draw_dBarStack = 0x0F
draw_dSega_Distortion = 0x10
draw_dHUD = 0x11
draw_dBSItem = 0x12
draw_LoadSprBank = 0x13
draw_UnkHUD = 0x14
draw_SetPlayer_PalIndOffs = 0x15
draw_dFBoss_Arena = 0x16
draw_dSpriteZoom = 0x17
draw_SetZoom = 0x18
draw_dGameover = 0x19
draw_dPowIcons = 0x1A

--ArtPtr32x bank names
ArtPtr32X_Mighty = 0x00
ArtPtr32X_Wechnia = 0x01
ArtPtr32X_Knuckles = 0x02
ArtPtr32X_Charmy = 0x03
ArtPtr32X_Vector = 0x04
ArtPtr32X_Bomb = 0x05
ArtPtr32X_Heavy = 0x06
ArtPtr32X_Espio = 0x07
ArtPtr32X_Mighty_ArmHandRing = 0x08
ArtPtr32X_Wechnia_ArmHandRing = 0x09
ArtPtr32X_Knuckles_ArmHandRing = 0x0A
ArtPtr32X_Charmy_ArmHandRing = 0x0B
ArtPtr32X_Vector_ArmHandRing = 0x0C
ArtPtr32X_Bomb_ArmHandRing = 0x0D
ArtPtr32X_Heavy_ArmHandRing = 0x0E
ArtPtr32X_Espio_ArmHandRing = 0x0F
ArtPtr32X_Bank10 = 0x10
ArtPtr32X_LvlGlbl = 0x11
ArtPtr32X_MonitorAndStatusIcons = 0x12
ArtPtr32X_HUD_Lvl = 0x13
ArtPtr32X_BBZ_Enemies1 = 0x14
ArtPtr32X_SSZ_Mosqui = 0x15
ArtPtr32X_MS_Intro1 = 0x16
ArtPtr32X_SSZ_Spikeball = 0x17
ArtPtr32X_BBZ_Boss = 0x18
ArtPtr32X_MS_Intro2 = 0x19
ArtPtr32X_WE_LvlIcons1 = 0x1A
ArtPtr32X_BBZ_Enemies2 = 0x1B
ArtPtr32X_EnParts_Explos = 0x1C
ArtPtr32X_Rubberband = 0x1D
ArtPtr32X_Bank1E = 0x1E
ArtPtr32X_MMZ_Enemies1 = 0x1F
ArtPtr32X_Explosions = 0x20
ArtPtr32X_MMZ_Enemies2 = 0x21
ArtPtr32X_MMZ_BG = 0x22
ArtPtr32X_MiscGlbl_Objs = 0x23
ArtPtr32X_MiscEnd = 0x24
ArtPtr32X_BBZ_Objs = 0x25
ArtPtr32X_BS_Objs = 0x26
ArtPtr32X_Knuckles_SpecialStage = 0x27
ArtPtr32X_TTZ_Objs = 0x28
ArtPtr32X_AAZ_Objs1 = 0x29
ArtPtr32X_SSZ_Enemies = 0x2A
ArtPtr32X_MMZ_Objs = 0x2B
ArtPtr32X_MMZ_Boss = 0x2C
ArtPtr32X_TTZ_Enemies = 0x2D
ArtPtr32X_IIZ_Objs1 = 0x2E
ArtPtr32X_IIZ_Objs2 = 0x2F
ArtPtr32X_SegaLogo = 0x30
ArtPtr32X_BBZ_BossCut = 0x31
ArtPtr32X_MMZ_Enemies3 = 0x32
ArtPtr32X_MMZ_BossCut = 0x33
ArtPtr32X_BBZ_BG1 = 0x34
ArtPtr32x_BBZ_BG2 = 0x35
ArtPtr32x_AAZ_Enemies1 = 0x36
ArtPtr32x_TTZ_Boss = 0x37
ArtPtr32x_AAZ_MiniBoss = 0x38
ArtPtr32x_AAZ_Enemies2 = 0x39
ArtPtr32X_Bank3A = 0x3A
ArtPtr32x_AAZ_BossCut = 0x3B
ArtPtr32x_AAZ_Objs2 = 0x3C
ArtPtr32x_AAZ_Objs3 = 0x3D
ArtPtr32x_Tutorial_HUD = 0x3E
ArtPtr32x_TTZ_BossCut = 0x3F
ArtPtr32X_LevelTitleCards = 0x40
ArtPtr32X_Heavy_SpecialStage = 0x41
ArtPtr32X_Mighty_SpecialStage = 0x42
ArtPtr32X_Vector_SpecialStage = 0x43
ArtPtr32X_Bomb_SpecialStage = 0x44
ArtPtr32x_SSZ_BossCut = 0x45
ArtPtr32X_Charmy_SpecialStage = 0x46
ArtPtr32X_Espio_SpecialStage = 0x47
ArtPtr32x_AAZ_Enemies3 = 0x48
ArtPtr32x_AAZ_Boss = 0x49
ArtPtr32X_LevelEndText = 0x4A
ArtPtr32x_WE_MSBoss = 0x4B
ArtPtr32X_Bank4C = 0x4C
ArtPtr32x_SS_HUD = 0x4D
ArtPtr32x_SS_CRing_Results = 0x4E
ArtPtr32x_SS_Objects = 0x4F
ArtPtr32x_Space1 = 0x50
ArtPtr32x_Space2 = 0x51
ArtPtr32x_Ring32x = 0x52
ArtPtr32x_BigRing = 0x53
ArtPtr32X_TitleScreenCharacters = 0x54
ArtPtr32x_TitleScreen = 0x55
ArtPtr32x_SSZ_Boss = 0x56
ArtPtr32x_Eggman_JPack = 0x57
ArtPtr32x_WE_CombiCatcher = 0x58
ArtPtr32x_WE_Signs = 0x59
ArtPtr32x_WE_Boss = 0x5A
ArtPtr32x_WE_Claw = 0x5B
ArtPtr32x_WE_LvlIcons2 = 0x5C
ArtPtr32x_WE_LvlIcons3 = 0x5D
ArtPtr32x_WE_LvlStatus = 0x5E
ArtPtr32x_CRings = 0x5F
ArtPtr32x_SSZ_Objects = 0x60
ArtPtr32X_Bank61 = 0x61
ArtPtr32x_SSZ_Elevator = 0x62
ArtPtr32x_SSZ_UFO = 0x63
ArtPtr32X_Bank64 = 0x64
ArtPtr32X_Bank65 = 0x65
ArtPtr32x_SSZ_Bell = 0x66
ArtPtr32x_SSZ_Plunger = 0x67
ArtPtr32X_Bank68 = 0x68
ArtPtr32X_Bank69 = 0x69
ArtPtr32x_SSBumper = 0x6A
ArtPtr32x_EggmanIntro = 0x6B
ArtPtr32x_IntroMosqui = 0x6C
ArtPtr32X_Bank6D = 0x6D
ArtPtr32x_TailsBiPlane = 0x6E
ArtPtr32x_SuperSonic = 0x6F
ArtPtr32X_EndingSonicTailsBiplane = 0x70
ArtPtr32x_MSKai = 0x71
ArtPtr32x_InvinStars = 0x72
ArtPtr32X_Bank73 = 0x73
ArtPtr32X_Bank74 = 0x74
ArtPtr32X_Bank75 = 0x75
ArtPtr32X_Bank76 = 0x76
ArtPtr32X_Bank77 = 0x77
ArtPtr32X_Bank78 = 0x78
ArtPtr32X_Bank79 = 0x79
ArtPtr32X_Bank7A = 0x7A
ArtPtr32X_Bank7B = 0x7B
ArtPtr32X_Bank7C = 0x7C
ArtPtr32X_Bank7D = 0x7D
ArtPtr32X_Bank7E = 0x7E
ArtPtr32X_Bank7F = 0x7F

newline = "\n"
tab = "  "
bTerm = 0xFF
wTerm = 0xFFFF
lTerm = 0xFFFFFFFF

-- Convert to hex string
function tohex_byte(v) return string.format("%02x",v) end
function tohex_word(v) return string.format("%04x",v) end
function tohex_long(v) return string.format("%08x",v) end

-- https://gist.github.com/FreeBirdLjj/6303864?permalink_comment_id=3400522#gistcomment-3400522
_G.switch = function(param, case_table)
    local case = case_table[param]
    if case then return case() end
    local def = case_table['default']
    return def and def() or nil
end

-- Update all our variables
function Update()
	-- Headers
	-- Raw numbers
	-- enums

	local CMD_OFF = memory.readlong(FB_BUFF1_PTR)
	CMD_OFF = CMD_OFF + FB_BUFF_CMDOFF
	local PC = 0x00
	local PC2 = 0x00
	local i=0x00
	local j=0x00
	local count=0x00
	local params={}	
	local paramsH={}	
	for i=0,14 do
		params[i]=0x00000000
		paramsH[i]=""
	end
	local drawName = ""
	local text = tab .. tab .. "drawName" .. tab .. "paramUsage" .. newline
	text = text .. "index" .. tab .. "drawCmd" .. tab .. "params" .. newline .. newline
	
	local drawCmd=0x00
	local quit=0x00
	local quit2=0x00
	while(quit==0x00)
	do
		drawCmd = memory.readbyte(CMD_OFF+PC)
		drawName = GetdrawCmd_Name(drawCmd)
		
		switch(drawCmd, {
			[draw_end] = function()
				text = text .. tab .. tab .. drawName .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. newline .. newline
				PC = PC + 0x01
				quit=0x01
			end,
			[draw_dSprite] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				paramsH[5] = tohex_word(params[5])
				paramsH[6] = tohex_word(params[6])
				text = text .. tab .. drawName .. tab .. "sprSetID" .. tab .. "sprFrmID" .. tab .. "drwFlg" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "xscale" .. tab .. "yscale" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. tab .. tab .. tab .. tab .. tab .. GetScaling(params[5]) .. tab .. GetScaling(params[6]) .. newline .. newline
				PC = PC + 0x0C
			end,
			[draw_dTDotVel] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				params[7] = memory.readword(CMD_OFF+PC+0x0C)
				params[8] = memory.readword(CMD_OFF+PC+0x0E)
				params[9] = memory.readword(CMD_OFF+PC+0x10)
				paramsH[0] = tohex_byte(params[0])	-- !@ Byte $00 is not showing?
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				paramsH[5] = tohex_word(params[5])
				paramsH[6] = tohex_word(params[6])
				paramsH[7] = tohex_word(params[7])
				paramsH[8] = tohex_word(params[8])
				paramsH[9] = tohex_word(params[9])				
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "PalInd" .. tab .. "TrailFlags" .. tab .. "DrawArea_Len" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "xvel" .. tab .. "yvel" .. tab .. "xaccel" .. tab .. "yaccel" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. tab .. paramsH[7] .. tab .. paramsH[8] .. tab .. paramsH[9] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetTrailFlags(params[2]) .. newline .. newline
				PC = PC + 0x12
			end,
			[draw_dTDotAngle] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				params[7] = memory.readword(CMD_OFF+PC+0x0C)
				params[8] = memory.readword(CMD_OFF+PC+0x0E)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				paramsH[5] = tohex_word(params[5])
				paramsH[6] = tohex_word(params[6])
				paramsH[7] = tohex_word(params[7])
				paramsH[8] = tohex_word(params[8])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "PalInd" .. tab .. "TrailFlags" .. tab .. "DrawArea_Len" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "angle" .. tab .. "vel" .. tab .. "accel" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. tab .. paramsH[7] .. tab .. paramsH[8] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetTrailFlags(params[2]) .. newline .. newline
				PC = PC + 0x10
			end,
			[draw_dTDotAngle_GA] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				params[7] = memory.readword(CMD_OFF+PC+0x0C)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				paramsH[5] = tohex_word(params[5])
				paramsH[6] = tohex_word(params[6])
				paramsH[7] = tohex_word(params[7])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "PalInd" .. tab .. "TrailFlags" .. tab .. "DrawArea_Len" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "angle" .. tab .. "vel" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. tab .. paramsH[7] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetTrailFlags(params[2]) .. newline .. newline
				PC = PC + 0x0E
			end,
			[draw_SetTDot_GA] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readlong(CMD_OFF+PC+0x02)
				params[2] = memory.readlong(CMD_OFF+PC+0x06)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_long(params[1])
				paramsH[2] = tohex_long(params[2])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "GAx" .. tab .. "GAy" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline .. newline
				PC = PC + 0x0A
			end,
			[draw_setDslvTDotVel] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				params[2] = memory.readword(CMD_OFF+PC+0x04)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				paramsH[2] = tohex_word(params[2])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "velX" .. tab .. "velY" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline .. newline
				PC = PC + 0x06
			end,
			[draw_dfBnds_2D] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				params[2] = memory.readword(CMD_OFF+PC+0x04)
				params[3] = memory.readword(CMD_OFF+PC+0x06)
				params[4] = memory.readword(CMD_OFF+PC+0x08)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				paramsH[2] = tohex_word(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "left" .. tab .. "right" .. tab .. "top" .. tab .. "btm" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline .. newline
				PC = PC + 0x0A
			end,
			[draw_dfBnds_3D] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				params[2] = memory.readword(CMD_OFF+PC+0x04)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				paramsH[2] = tohex_word(params[2])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "near" .. tab .. "far" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline .. newline
				PC = PC + 0x06
			end,
			[draw_dLine] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				params[2] = memory.readword(CMD_OFF+PC+0x04)
				params[3] = memory.readword(CMD_OFF+PC+0x06)
				params[4] = memory.readword(CMD_OFF+PC+0x08)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				paramsH[2] = tohex_word(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				text = text .. tab .. drawName .. tab .. "PalInd" .. tab .. "P1x" .. tab .. "P1y" .. tab .. "P2x" .. tab .. "P2y" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline .. newline
				PC = PC + 0x0A
			end,
			[draw_dPolygon] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])				
				text = text .. tab .. drawName .. tab .. "PalInd" .. tab .. "drawMode" .. tab .. "nVtx" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline
				text = text .. tab .. tab .. tab .. tab .. tab .. tab .. GetDrawMode(params[1]) .. newline .. newline
				
				PC = PC + 0x04
				count = params[2]
				count = count-0x01
				text = text .. tab .. drawName .. " Vertices:" .. newline
				text = text .. "vtxID" .. tab .. "xpos" .. tab .. "ypos" .. newline
				for j=0,count do
					params[0]=j
					params[1]=memory.readword(CMD_OFF+PC)
					params[2]=memory.readword(CMD_OFF+PC+0x02)
					paramsH[0]=tohex_byte(params[0])
					paramsH[1]=tohex_word(params[1])
					paramsH[2]=tohex_word(params[2])					
					text = text .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline
					PC = PC + 0x04
				end
				text = text .. newline
			end,
			[draw_df3DPolySh] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])				
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "shapeID" .. tab .. "nVtx" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline .. newline
				
				PC = PC + 0x04
				count = params[2]
				count = count-0x01
				text = text .. tab .. drawName .. " Vertices:" .. newline
				text = text .. "vtxID" .. tab .. "xpos" .. tab .. "ypos" .. newline
				for j=0,count do
					params[0]=j
					params[1]=memory.readword(CMD_OFF+PC)
					params[2]=memory.readword(CMD_OFF+PC+0x02)
					paramsH[0]=tohex_byte(params[0])
					paramsH[1]=tohex_word(params[1])
					paramsH[2]=tohex_word(params[2])					
					text = text .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline
					PC = PC + 0x04
				end
				text = text .. newline
			end,
			[draw_d3DPolySh] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readbyte(CMD_OFF+PC+0x04)
				params[4] = memory.readbyte(CMD_OFF+PC+0x05)
				params[5] = memory.readbyte(CMD_OFF+PC+0x06)
				params[6] = memory.readbyte(CMD_OFF+PC+0x07)
				params[7] = memory.readword(CMD_OFF+PC+0x08)
				params[8] = memory.readword(CMD_OFF+PC+0x0A)
				params[9] = memory.readword(CMD_OFF+PC+0x0C)
				params[0] = tohex_byte(params[0])
				params[1] = tohex_byte(params[1])
				params[2] = tohex_byte(params[2])
				params[3] = tohex_byte(params[3])
				params[4] = tohex_byte(params[4])
				params[5] = tohex_byte(params[5])
				params[6] = tohex_byte(params[6])
				params[7] = tohex_word(params[7])
				params[8] = tohex_word(params[8])
				params[9] = tohex_word(params[9])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "palInd"  .. tab .. "drawMode"  .. tab .. "shapeID" .. tab .. "pitchRot" .. tab .. "yawRot" .. tab .. "rollRot" .. tab .. "xPos" .. tab .. "yPos" .. tab .. "zPos" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. tab .. paramsH[7] .. tab .. paramsH[8] .. tab .. paramsH[9] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetDrawMode(params[2]) .. newline .. newline
				PC = PC + 0x0E
			end,
			[draw_dSprite_TopDislv] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				text = text .. tab .. drawName .. tab .. "sprSetID" .. tab .. "sprFrmID" .. tab .. "drwFlg" .. tab .. "xpos" .. tab .. "ypos" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. newline .. newline
				PC = PC + 0x08
			end,
			[draw_dSprite_BotDislv] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				text = text .. tab .. drawName .. tab .. "sprSetID" .. tab .. "sprFrmID" .. tab .. "drwFlg" .. tab .. "xpos" .. tab .. "ypos" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. newline .. newline
				PC = PC + 0x08
			end,
			[draw_dBarStack] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				paramsH[0] = tohex_byte(params[0])
				text = text .. tab .. drawName .. tab .. "nBar" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. newline .. newline
				
				PC = PC + 0x02
				count = params[0]
				count = count-0x01
				text = text .. tab .. drawName .. " Bars:" .. newline
				text = text .. "barID" .. tab .. "hgt" .. tab .. "evnPalInd" .. tab .. "oddPalInd" .. newline
				for j=0,count do
					params[0]=j
					params[1]=memory.readword(CMD_OFF+PC)
					params[2]=memory.readbyte(CMD_OFF+PC+0x02)
					params[3]=memory.readbyte(CMD_OFF+PC+0x03)
					paramsH[0]=tohex_byte(params[0])
					paramsH[1]=tohex_byte(params[1])
					paramsH[2]=tohex_word(params[2])
					paramsH[3]=tohex_word(params[3])					
					text = text .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. newline
					PC = PC + 0x04
				end
				text = text .. newline
			end,
			[draw_dSega_Distortion] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				params[7] = memory.readword(CMD_OFF+PC+0x0C)
				params[8] = memory.readword(CMD_OFF+PC+0x0E)
				params[9] = memory.readword(CMD_OFF+PC+0x10)
				params[10] = memory.readword(CMD_OFF+PC+0x12)
				params[11] = memory.readword(CMD_OFF+PC+0x14)
				params[12] = memory.readword(CMD_OFF+PC+0x16)
				params[0] = tohex_byte(params[0])
				params[1] = tohex_byte(params[1])
				params[2] = tohex_byte(params[2])
				params[3] = tohex_word(params[3])
				params[4] = tohex_word(params[4])
				params[5] = tohex_word(params[5])
				params[6] = tohex_word(params[6])
				params[7] = tohex_word(params[7])
				params[8] = tohex_word(params[8])
				params[9] = tohex_word(params[9])
				params[10] = tohex_word(params[10])
				params[11] = tohex_word(params[11])
				params[12] = tohex_word(params[12])
				text = text .. tab .. drawName .. tab .. "sprSetID" .. tab .. "sprFrmID" .. tab .. "drwFlg" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "xscale" .. tab .. "leftDist" .. tab .. "rghtDist" .. tab .. "xDistInt" .. tab ..  "yscale" .. tab .. "topDist" .. tab .. "btmDist" .. tab .. "yDistInt" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. tab .. paramsH[7] .. tab .. paramsH[8] .. tab .. paramsH[9] .. tab .. paramsH[10] .. tab .. paramsH[11] .. tab .. paramsH[12] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. newline .. newline
				PC = PC + 0x18
			end,
			[draw_dHUD] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				paramsH[0] = tohex_byte(params[0])
				if (params[0] == 0x00) then
					params[1] = memory.readword(CMD_OFF+PC+0x02)
					params[2] = memory.readword(CMD_OFF+PC+0x04)
					params[3] = memory.readword(CMD_OFF+PC+0x06)
					params[4] = memory.readword(CMD_OFF+PC+0x08)					
					paramsH[1] = tohex_word(params[1])
					paramsH[2] = tohex_word(params[2])
					paramsH[3] = tohex_word(params[3])
					paramsH[4] = tohex_word(params[4])
					text = text .. tab .. drawName .. tab .. "mode" .. tab .. "unk2.w" .. tab .. "unk3.w" .. tab .. "unk4.w" .. tab .. "unk5.w" .. newline
					text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline .. newline
					PC = PC + 0x0A
				else
					params[1] = memory.readlong(CMD_OFF+PC+0x02)
					params[2] = memory.readword(CMD_OFF+PC+0x06)
					paramsH[1] = tohex_long(params[1])
					paramsH[2] = tohex_word(params[2])
					text = text .. tab .. drawName .. tab .. "mode" .. tab .. "score" .. tab .. "rings" .. newline
					text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline .. newline
					PC = PC + 0x08
				end
			end,
			[draw_dBSItem] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				params[7] = memory.readbyte(CMD_OFF+PC+0x0C)
				params[8] = memory.readbyte(CMD_OFF+PC+0x0D)
				params[9] = memory.readbyte(CMD_OFF+PC+0x0E)
				params[10] = memory.readbyte(CMD_OFF+PC+0x0F)
				
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				paramsH[5] = tohex_word(params[5])
				paramsH[6] = tohex_word(params[6])
				paramsH[7] = tohex_byte(params[7])
				paramsH[8] = tohex_byte(params[8])
				paramsH[9] = tohex_byte(params[9])
				paramsH[10] = tohex_byte(params[10])
				text = text .. tab .. drawName .. tab .. "sprSetID" .. tab .. "sprFrmID" .. tab .. "drwFlg" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "zpos" .. tab .. "len" .. tab .. "palIndT" .. tab .. "palIndB" .. tab .. "palIndL" .. tab .. "palIndR" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. tab .. paramsH[7] .. tab .. paramsH[8] .. tab .. paramsH[9] .. tab .. paramsH[10] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. newline .. newline
				PC = PC + 0x10
			end,
			[draw_LoadSprBank] = function()
				-- Count how many APB pairs (search until bTerm byte)
				PC2=PC			
				quit2=0x00
				count=0x00
				while(quit==0x00)
				do
					params[0] = memory.readbyte(CMD_OFF+PC2+0x01)
					if (params[0]==bTerm) then
						quit=0x01
					else
						params[1] = memory.readbyte(CMD_OFF+PC2+0x02)
						PC2 = PC2 + 0x03
						count=count+0x01
					end
				end
				
				params[0]=count
				paramsH[0]=tohex_byte(params[0])
				text = text .. tab .. drawName .. tab .. "nSpr" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. newline .. newline
				text = text .. drawName .. " sprites:" .. newline
				
				text = text .. "apbInd" .. tab .. "sprSetID" .. tab .. "palInd" .. tab .. "enum(sprSetID)" .. newline
				for j=0,count do
					params[0]=j
					params[1]=memory.readbyte(CMD_OFF+PC+0x01)
					params[2]=memory.readbyte(CMD_OFF+PC+0x02)
					paramsH[0]=tohex_byte(params[0])
					paramsH[1]=tohex_byte(params[1])
					paramsH[2]=tohex_byte(params[2])										
					text = text .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. GetSpriteSet_Name(params[1]) .. newline
					PC = PC + 0x03
				end
				params[0]=bTerm
				paramsH[0]=tohex_byte(params[0])
				text = text .. paramsH[0] .. newline .. newline
			end,
			[draw_UnkHUD] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				params[2] = memory.readword(CMD_OFF+PC+0x04)
				params[3] = memory.readword(CMD_OFF+PC+0x06)
				params[4] = memory.readword(CMD_OFF+PC+0x08)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				paramsH[2] = tohex_word(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				text = text .. tab .. drawName .. tab .. "unk1.b" .. tab .. "unk2.w" .. tab .. "unk3.w" .. tab .. "unk4.w" .. tab .. "unk5.w" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. newline .. newline
				PC = PC + 0x10
			end,
			[draw_SetPlayer_PalIndOffs] = function()
				-- !@ Add function to interpret charID
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readbyte(CMD_OFF+PC+0x04)
				params[4] = memory.readbyte(CMD_OFF+PC+0x05)				
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_byte(params[3])
				paramsH[4] = tohex_byte(params[4])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "p1_chrID" .. tab .. "p1_palIndOff" .. tab .. "p2_chrID" .. tab .. "p2_palIndOff" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. newline .. newline
				PC = PC + 0x06
			end,
			[draw_dFBoss_Arena] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				params[2] = memory.readword(CMD_OFF+PC+0x04)
				params[3] = memory.readword(CMD_OFF+PC+0x06)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				paramsH[2] = tohex_word(params[2])
				paramsH[3] = tohex_word(params[3])
				text = text .. tab .. drawName .. tab .. "angle" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "zPos" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. newline .. newline
				PC = PC + 0x08
			end,
			[draw_dSpriteZoom] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				params[3] = memory.readword(CMD_OFF+PC+0x04)
				params[4] = memory.readword(CMD_OFF+PC+0x06)
				params[5] = memory.readword(CMD_OFF+PC+0x08)
				params[6] = memory.readword(CMD_OFF+PC+0x0A)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				paramsH[3] = tohex_word(params[3])
				paramsH[4] = tohex_word(params[4])
				paramsH[5] = tohex_word(params[5])
				paramsH[6] = tohex_word(params[6])
				text = text .. tab .. drawName .. tab .. "sprSetID" .. tab .. "sprFrmID" .. tab .. "drwFlg" .. tab .. "xpos" .. tab .. "ypos" .. tab .. "xscale" .. tab .. "yscale" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. tab .. paramsH[3] .. tab .. paramsH[4] .. tab .. paramsH[5] .. tab .. paramsH[6] .. newline
				text = text .. tab .. tab .. tab .. tab .. GetSpriteSet_Name(params[0]) .. tab .. GetSprite_Name(params[0],params[1]) .. tab .. GetdrawFlags(params[2]) .. tab .. tab .. tab .. tab .. tab .. GetScaling(params[5]) .. tab .. GetScaling(params[6]) .. newline .. newline
				PC = PC + 0x0C
			end,
			[draw_SetZoom] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readword(CMD_OFF+PC+0x02)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_word(params[1])
				text = text .. tab .. drawName .. tab .. "0x00" .. tab .. "zoom" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. newline .. newline
				PC = PC + 0x04
			end,
			[draw_dGameover] = function()
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				paramsH[0] = tohex_byte(params[0])
				text = text .. tab .. drawName .. tab .. "scale" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. newline .. newline
				PC = PC + 0x02
			end,
			[draw_dPowIcons] = function()
				--!@ Add function to interpret pow flags
				params[0] = memory.readbyte(CMD_OFF+PC+0x01)
				params[1] = memory.readbyte(CMD_OFF+PC+0x02)
				params[2] = memory.readbyte(CMD_OFF+PC+0x03)
				paramsH[0] = tohex_byte(params[0])
				paramsH[1] = tohex_byte(params[1])
				paramsH[2] = tohex_byte(params[2])
				text = text .. tab .. drawName .. tab .. "p1pow" .. tab .. "p2pow" .. tab .. "shpow" .. newline
				text = text .. tohex_byte(i) .. tab .. tohex_byte(drawCmd) .. tab .. paramsH[0] .. tab .. paramsH[1] .. tab .. paramsH[2] .. newline .. newline
				PC = PC + 0x04
			end,
			['default'] = function()
				PC = PC + 0x01
			end,
		})
		i = i + 0x01
	end
	gui.text(0,0,text)
end

function GetdrawCmd_Name(cmd)
	cmd = cmd + 0x01
	local t = 
	{
		"draw_end",
		"draw_dSprite",
		"draw_dTDotVel",
		"draw_dTDotAngle",
		"draw_dTDotAngle_GA",
		"draw_SetTDot_GA",
		"draw_setDslvTDotVel",
		"draw_dfBnds_2D",
		"draw_dfBnds_3D",
		"draw_dLine",
		"draw_dPolygon",
		"draw_df3DPolySh",
		"draw_d3DPolySh",
		"draw_dSprite_TopDislv",
		"draw_dSprite_BotDislv",
		"draw_dBarStack",
		"draw_dSega_Distortion",
		"draw_dHUD",
		"draw_dBSItem",
		"draw_LoadSprBank",
		"draw_UnkHUD",
		"draw_SetPlayer_PalIndOffs",
		"draw_dFBoss_Arena",
		"draw_dSpriteZoom",
		"draw_SetZoom",
		"draw_dGameover",
		"draw_dPowIcons",
	}
	local name = t[cmd]
	if name == nil then 
		name = "UNK"
	end
	return name
end

function GetSpriteSet_Name(set)	
	set = set + 0x01
	local t = 
	{
		"ArtPtr32X_Mighty",
		"ArtPtr32X_Wechnia",
		"ArtPtr32X_Knuckles",
		"ArtPtr32X_Charmy",
		"ArtPtr32X_Vector",
		"ArtPtr32X_Bomb",
		"ArtPtr32X_Heavy",
		"ArtPtr32X_Espio",
		"ArtPtr32X_Mighty_ArmHandRing ",
		"ArtPtr32X_Wechnia_ArmHandRing ",
		"ArtPtr32X_Knuckles_ArmHandRing ",
		"ArtPtr32X_Charmy_ArmHandRing ",
		"ArtPtr32X_Vector_ArmHandRing ",
		"ArtPtr32X_Bomb_ArmHandRing ",
		"ArtPtr32X_Heavy_ArmHandRing ",
		"ArtPtr32X_Espio_ArmHandRing ",
		"ArtPtr32X_Bank10",
		"ArtPtr32X_LvlGlbl",
		"ArtPtr32X_MonitorAndStatusIcons",
		"ArtPtr32X_HUD_Lvl",
		"ArtPtr32X_BBZ_Enemies1",
		"ArtPtr32X_SSZ_Mosqui",
		"ArtPtr32X_MS_Intro1",
		"ArtPtr32X_SSZ_Spikeball",
		"ArtPtr32X_BBZ_Boss",
		"ArtPtr32X_MS_Intro2",
		"ArtPtr32X_WE_LvlIcons1",
		"ArtPtr32X_BBZ_Enemies2",
		"ArtPtr32X_EnParts_Explos",
		"ArtPtr32X_Rubberband",
		"ArtPtr32X_Bank1E",
		"ArtPtr32X_MMZ_Enemies1",
		"ArtPtr32X_Explosions",
		"ArtPtr32X_MMZ_Enemies2",
		"ArtPtr32X_MMZ_BG",
		"ArtPtr32X_MiscGlbl_Objs",
		"ArtPtr32X_MiscEnd",
		"ArtPtr32X_BBZ_Objs",
		"ArtPtr32X_BS_Objs",
		"ArtPtr32X_Knuckles_SpecialStage",
		"ArtPtr32X_TTZ_Objs",
		"ArtPtr32X_AAZ_Objs1",
		"ArtPtr32X_SSZ_Enemies",
		"ArtPtr32X_MMZ_Objs",
		"ArtPtr32X_MMZ_Boss",
		"ArtPtr32X_TTZ_Enemies",
		"ArtPtr32X_IIZ_Objs1",
		"ArtPtr32X_IIZ_Objs2",
		"ArtPtr32X_SegaLogo",
		"ArtPtr32X_BBZ_BossCut",
		"ArtPtr32X_MMZ_Enemies3",
		"ArtPtr32X_MMZ_BossCut",
		"ArtPtr32X_BBZ_BG1",
		"ArtPtr32x_BBZ_BG2",
		"ArtPtr32x_AAZ_Enemies1",
		"ArtPtr32x_TTZ_Boss",
		"ArtPtr32x_AAZ_MiniBoss",
		"ArtPtr32x_AAZ_Enemies2",
		"ArtPtr32X_Bank3A",
		"ArtPtr32x_AAZ_BossCut",
		"ArtPtr32x_AAZ_Objs2",
		"ArtPtr32x_AAZ_Objs3",
		"ArtPtr32x_Tutorial_HUD",
		"ArtPtr32x_TTZ_BossCut",
		"ArtPtr32X_LevelTitleCards",
		"ArtPtr32X_Heavy_SpecialStage",
		"ArtPtr32X_Mighty_SpecialStage",
		"ArtPtr32X_Vector_SpecialStage",
		"ArtPtr32X_Bomb_SpecialStage",
		"ArtPtr32x_SSZ_BossCut",
		"ArtPtr32X_Charmy_SpecialStage",
		"ArtPtr32X_Espio_SpecialStage",
		"ArtPtr32x_AAZ_Enemies3",
		"ArtPtr32x_AAZ_Boss",
		"ArtPtr32X_LevelEndText",
		"ArtPtr32x_WE_MSBoss",
		"ArtPtr32X_Bank4C",
		"ArtPtr32x_SS_HUD",
		"ArtPtr32x_SS_CRing_Results",
		"ArtPtr32x_SS_Objects",
		"ArtPtr32x_Space1",
		"ArtPtr32x_Space2",
		"ArtPtr32x_Ring32x",
		"ArtPtr32x_BigRing",
		"ArtPtr32X_TitleScreenCharacters",
		"ArtPtr32x_TitleScreen",
		"ArtPtr32x_SSZ_Boss",
		"ArtPtr32x_Eggman_JPack",
		"ArtPtr32x_WE_CombiCatcher",
		"ArtPtr32x_WE_Signs",
		"ArtPtr32x_WE_Boss",
		"ArtPtr32x_WE_Claw",
		"ArtPtr32x_WE_LvlIcons2",
		"ArtPtr32x_WE_LvlIcons3",
		"ArtPtr32x_WE_LvlStatus",
		"ArtPtr32x_CRings",
		"ArtPtr32x_SSZ_Objects",
		"ArtPtr32X_Bank61",
		"ArtPtr32x_SSZ_Elevator",
		"ArtPtr32x_SSZ_UFO",
		"ArtPtr32X_Bank64",
		"ArtPtr32X_Bank65",
		"ArtPtr32x_SSZ_Bell",
		"ArtPtr32x_SSZ_Plunger",
		"ArtPtr32X_Bank68",
		"ArtPtr32X_Bank69",
		"ArtPtr32x_SSBumper",
		"ArtPtr32x_EggmanIntro",
		"ArtPtr32x_IntroMosqui",
		"ArtPtr32X_Bank6D",
		"ArtPtr32x_TailsBiPlane",
		"ArtPtr32x_SuperSonic",
		"ArtPtr32X_EndingSonicTailsBiplane",
		"ArtPtr32x_MSKai",
		"ArtPtr32x_InvinStars",
		"ArtPtr32X_Bank73",
		"ArtPtr32X_Bank74",
		"ArtPtr32X_Bank75",
		"ArtPtr32X_Bank76",
		"ArtPtr32X_Bank77",
		"ArtPtr32X_Bank78",
		"ArtPtr32X_Bank79",
		"ArtPtr32X_Bank7A",
		"ArtPtr32X_Bank7B",
		"ArtPtr32X_Bank7C",
		"ArtPtr32X_Bank7D",
		"ArtPtr32X_Bank7E",
		"ArtPtr32X_Bank7F"
	}
	local name = t[set]
	if name == nil then 
		name = "UNK"
	end
	return name
end

function GetSprite_Name(set, frame)	
	local name = "todo"
	return name
end

function GetdrawFlags(flags)
	local skip = "-"
	local mn = "n"
	local mp = "p"
	local mt = "t"
	local mu = "u"
	local modesT = {mn,mp,mt,mu}
	local yf = "y"
	local xf = "x"

	local text = ""
	local mode = SHIFT((AND(flags,0x0C)),0x02)
	mode = mode + 0x01	
	text = modesT[mode]
	
	mode = SHIFT((AND(flags,0x02)),0x01)
	if (mode == 0x01) then
		text = text .. yf
	else
		text = text .. skip
	end
	
	mode = (AND(flags,0x01))
	if (mode == 0x01) then
		text = text .. xf
	else
		text = text .. skip
	end
	
	return text
end

function GetTrailFlags(flags)
	local skip = "-"
	local aRel = "a"
	local eEnd = "e"
	local tModes = {1,2}
	
	local text = ""	
	local mode = SHIFT(AND(flags,0x20),5)
	if (mode == 0x01) then
		text = text .. aRel
	else
		text = text .. skip
	end
	
	local mode = SHIFT(AND(flags,0x10),4)
	if (mode == 0x01) then
		text = text .. eEnd
	else
		text = text .. skip
	end
	
	local mode = AND(flags,0x01)
	if (mode == 0x01) then
		text = text .. tModes[2]
	else
		text = text .. tModes[1]
	end
	
	return text
end

function GetDrawMode(flags)
	local dmC = "crnrs "
	local dmW = "wirfrm"
	local dmS = "solid "
	local dmU = "unknwn"
	
	local text = dmU
	switch(drawCmd, {
		[0x00] = function()
			text = dmC
		end,
		[0x01] = function()
			text = dmW
		end,

		[0x02] = function()
			text = dmS
		end,
	})
	return text
end

function GetScaling(value)
	local text = tohex_word(value)
	return text
end
Update()

-- Update variables before emulating frame
gens.registerbefore(function()
	Update()
end)

-- redraw everything
gui.register(function()

end)