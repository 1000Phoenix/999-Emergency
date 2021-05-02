AddCSLuaFile()

local VehicleName = "2010 NHS T6 HART Van [LILY]"

local EMV = {} 
EMV.SubMaterials = {
["22"] = "models/metrohd/vw_multivan/999dash"
}

local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"
EMV.RadarDisabled = true

EMV.Siren = 1
EMV.Skin = 5
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- MetroHD
	{ 1, 0 }, -- vw_multivan_1
	{ 2, 0 }, -- vw_multivan_2
	{ 3, 0 }, -- vw_multivan_3
	{ 4, 0 }, -- vw_multivan_4
	{ 5, 0 }, -- vw_multivan_5
	{ 6, 0 }, -- vw_multivan_6
	{ 7, 0 }, -- vw_multivan_7
	{ 8, 2 }, -- Rear Windows
	{ 9, 1 }, -- Plastic Side Trim
	{ 10, 0 }, -- Emergency Lights
	{ 11, 0 }, -- LEDs
	{ 12, 0 }, -- Plastic Front Bumper
	{ 13, 0 }, -- Plastic Rear Bumper
	{ 14, 0 }, -- Badges
	{ 15, 0 }, -- Plastic Mirrors
	{ 16, 0 }, -- Plastic Handles
	{ 17, 1 }, -- Second row seats
	{ 18, 2 }, -- Trunk
	{ 19, 1 }, -- Steel Rims Front
	{ 20, 1 }, -- Steel Rims Rear
	{ 21, 0 }, -- Tow hitch
}

EMV.Patterns = {
    ["headlights"] = {  
         ["code3"] = {
          1,0,1,0,1,0,2,0,2,0,2,0,1,0,1,0,1,0,2,0,2,0,2,0
        },
	},
}

EMV.Auto = {
	{
		ID = "Lilys New Whelen Justice HART Front UK",
		Scale = 1.25,
		Pos = Vector( 0, 15, 93 ),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Lilys New Whelen Justice HART Back UK",
		Scale = 1.25,
		Pos = Vector( 0, -90, 94 ),
		Ang = Angle( 0, -0, 0 )
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( 0, 60, 65 ),
		Ang = Angle( 0, 90, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 9.5, 107.5, 45.1 ),
		Ang = Angle( 1, 175, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -9.5, 107.5, 45.1 ),
		Ang = Angle( -1, 180, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "B"
	},
}

EMV.Props = {
// 999 Logo
	{
    Model = "models/supermighty/emergency999_badge.mdl", 
     Pos = Vector( -18.25, 110.55, 39.65 ),
     Ang = Angle( -5, 101.3, 2.25),
     Scale = Vector(1,0.5,0.75),
     Skin = 2,
    },
// 999 Boot
	{
    Model = "models/999pack/multivan/boot.mdl", 
     Pos = Vector(0,	0	,0 ),
     Ang = Angle(0,	-90,	0),
     Scale = Vector(1,	1,	1),
     Skin = 2,
    },
}

EMV.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 4,
		H = 5.0,
		Sprite = "sprites/emv/lily_t6_hart_headlight",
		Scale = 2.25,
		WMult = 1.25,
	},
}

EMV.Positions = {
	[1] = { Vector( 39.1, 94, 45 ), Angle( 0, 0, 0 ), "headlight" },
	[2] = { Vector( -39.1, 94, 45 ), Angle( 0, 0, 0 ), "headlight" },
}

EMV.Sections = {

	["headlight"] = {
        [1] = {
        { 1, CW },
		},
		[2] = {
		{ 2, CW },
		},
	},
}

EMV.Patterns = {
   ["headlight"] = {  
	["on"] = {
		1,1,2,2,1,0,1,1,2,2,1,1,2,2,1,1,2,2,1,1,0,2,2,1,1,2,2,1,1,2,2,0
  	 	},
	},
}



EMV.Sequences = {
	Sequences = {
		{ Name = "999 Mode", Stage = "M2", Components = {["headlight"] = "on",}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "Rear Reds", Stage = "R2", Components = {}, Disconnect = {} },
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "999Emergency - Photon",
	Author = "Lily",
	Model = "models/metrohd/vw_multivan.mdl",
    KeyValues = { vehiclescript = "scripts/vehicles/metrohd/vw_multivan.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
