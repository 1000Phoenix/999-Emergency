AddCSLuaFile()

local VehicleName = "2011 South Wales Unmarked BMW X5 Police [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

EMV.Siren = 5
EMV.Skin = 9
EMV.Color = Color(140,140,140)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- fbumper
	{ 2, 1 }, -- rbumper
	{ 3, 0 }, -- blank
	{ 4, 0 }, -- hood
	{ 5, 1 }, -- doortrim
	{ 6, 0 }, -- skirt
	{ 7, 0 }, -- wing
	{ 8, 2 }, -- numberplate
	{ 9, 1 }, -- wheels
	{ 10, 0 }, -- roofrack
	{ 11, 0 }, -- towbar
	{ 12, 1 }, -- privacy_glass
	{ 13, 1 }, -- lights_dash
	{ 14, 2 }, -- lights_grill_lower
	{ 15, 1 }, -- lights_grill_higher
	{ 16, 1 }, -- lights_rearwindow
	{ 17, 4 }, -- lightbar
	{ 18, 0 }, -- interior_equiptment
	{ 19, 0 }, -- window_decal
	{ 20, 0 }, -- clamped1
	{ 21, 0 }, -- clamped2
	{ 22, 0 }, -- clamped3
}

EMV.Auto = {
		// Front Fenders
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 45 , 106 , 28),
		Ang = Angle( 90, 123, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -45 , 106 , 28),
		Ang = Angle( 90, 55, -90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	// Grille
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -12 , 108.25 , 40),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "S_WHITE",
		Color2 = "S_WHITE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -5 , 108.25 , 40),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
			{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( 16.25 , 108.25 , 40),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "S_WHITE",
		Color2 = "S_WHITE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( 6 , 108.25 , 40),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "B"
	},
	// Dash lights
		{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0 , 47.25 ,60.95),
		Ang = Angle( 0, 90, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "D",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	// Rear Passenger Lights
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -40 , -74 ,61.25),
		Ang = Angle( 0, -83.5, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "B",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( 40 , -74 ,61.25),
		Ang = Angle( 0, 83.5, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	// Boot Lighting
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -19 , -92.8 ,75.69),
		Ang = Angle( -3.5, -7.5, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( 19 , -92.8 ,75.79),
		Ang = Angle( 3.5, 7.5, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	// Rear Bumper Lighting
		{
		ID = "Whelen Vertex",
		Scale = .75,
		Pos = Vector( 36, -114.3 , 27.5),
		Ang = Angle( 0, 25, 90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
		{
		ID = "Whelen Vertex",
		Scale = .75,
		Pos = Vector( -36, -114.3 , 27.5),
		Ang = Angle( 0, -25, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
}

EMV.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 1.25,
		WMult = 1.25,
	},
}

EMV.Positions = {
	[1] = { Vector( 37.5, 110.3, 29.5 ), Angle( 0, -16.25, 0 ), "headlight" },
	[2] = { Vector( -37.5, 110.3, 29.5 ), Angle( 0, 16.25, 0 ), "headlight" },
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
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "999 Mode", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily",
	Model = "models/lonewolfie/bmw_x5_48i_pol.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/lwCars/999_bmwx5.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
