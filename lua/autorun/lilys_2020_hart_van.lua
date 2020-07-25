AddCSLuaFile()

local VehicleName = "2010 NHS T6 HART Van [LILY]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

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
	{ 8, 0 }, -- vw_multivan_8
	{ 9, 0 }, -- vw_multivan_9
	{ 10, 0 }, -- vw_multivan_10
	{ 11, 2 }, -- Rear Windows
	{ 12, 1 }, -- Plastic Side Trim
	{ 13, 0 }, -- Emergency Lights
	{ 14, 0 }, -- Emergency LEDs
	{ 15, 0 }, -- Plastic Front Bumper
	{ 16, 0 }, -- Plastic Rear Bumper
	{ 17, 0 }, -- Badges
	{ 18, 0 }, -- Plastic Mirrors
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

EMV.Props = {}

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
	Category = "Photon: Emergency999",
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
