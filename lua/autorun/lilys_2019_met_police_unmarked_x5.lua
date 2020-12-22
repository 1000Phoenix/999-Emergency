AddCSLuaFile()

local VehicleName = "2019 Met Police Unmarked BMW X5 [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"
EMV.Siren = 49
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
	{ 5, 0 }, -- clamped5
	{ 6, 0 }, -- clamped6
	{ 7, 0 }, -- clamped7
	{ 8, 0 }, -- clamped8
}

EMV.Auto = {
	// Bottom Bumper Lights
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(7 , 112.25 , 27.25),
Ang = Angle( 0, -2, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Phase = "B"
},
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(-7 , 112.25 , 27.25),
Ang = Angle( 0, 2, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Phase = "A"
},
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(-7 , 112.25 , 25.83),
Ang = Angle( 0, 2, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "B"
},
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(7 , 112.25 , 25.83),
Ang = Angle( 0, -2, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "A"
},
	// Grille Lights Whites
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(18 , 112.25 , 45.4),
Ang = Angle( 92.5, -7, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Phase = "A"
},
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(-18 , 112.25 , 45.4),
Ang = Angle( 85.5, 7, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Phase = "B"
},
	// Grille Lights Blues
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(12.5 , 112.25 , 45.4),
Ang = Angle( 92.5, -7, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "B"
},
{
ID = "Whelen Ion Gamer",
Scale =  1,
Pos = Vector(-12.5 , 112.25 , 45.4),
Ang = Angle( 85.5, 7, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "A"
},
	// Windsheild Viper Lights
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 7.2 , 15.75 ,80.25),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "B",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -7.2 , 15.75 ,80.25),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	// Rear windsheild lights
		{
		ID = "Whelen Ion",
		Scale = 0.65,
		Pos = Vector( 22 , -101.5 ,80.70),
		Ang = Angle( 7.5, 7.5, 180 ),
		Color1 = "RED",
		Color2 = "RED",
		Phase = "B",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion",
		Scale = 0.65,
		Pos = Vector( -22 , -101.5 ,80.75),
		Ang = Angle( -7.5, -7.5, 180 ),
		Color1 = "RED",
		Color2 = "RED",
		Phase = "B",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion",
		Scale = 0.65,
		Pos = Vector( -17.55 , -102.1 ,81.15),
		Ang = Angle( -4.5, -7.5, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion",
		Scale = 0.65,
		Pos = Vector( 17.55 , -102.1 ,81.15),
		Ang = Angle( 4.5, -7.5, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "999 Mode", Stage = "M1", Components = {}, Disconnect = {} }
	},
	Traffic = {}
}
local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily",
	Model = "models/smcars/2015_x5_f15.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/superscars/x5_f15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2019_met_police_unmarked_bmw_x5_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
