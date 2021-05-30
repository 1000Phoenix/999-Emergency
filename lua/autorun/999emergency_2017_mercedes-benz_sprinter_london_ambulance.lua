AddCSLuaFile()

local VehicleName = "[999 Emergency] 2017 Mercedes-Benz Sprinter London Ambulance [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"
EMV.RadarDisabled = true

EMV.Siren = 49
EMV.Skin = 1
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
	{ 5, 0 }, -- clamped5
	{ 6, 0 }, -- clamped6
}
	
EMV.Auto = {

	// Alley Lights
		// Passenger
	{
	ID = "SGM Whelen AllyLight Left",
	Pos = Vector(-47 , 47.5 , 111),
	Ang = Angle( 90, 263.5, 0 ),
	Scale	= 1.25,
	},
		// Cab
	{
	ID = "SGM Whelen AllyLight Right",
	Pos = Vector(46.7 , 47.5 , 111),
	Ang = Angle( 90, 99.5, 0 ),
	Scale	= 1,
	},

	// Front Fender Lights
	{
		ID = "[999 Emergency] LAS Whelen Tir3 Fender Left", // Right Blue
	Pos	= Vector(-40.96 , 129 , 32),
	Ang	= Angle( 90, -80, 20 ),
	Scale	= .55,
	},
	{
		ID = "[999 Emergency] LAS Whelen Tir3 Fender Right", // Left Blue
	Pos	= Vector(40.96 , 129 , 32),
	Ang	= Angle( 90, 80, -20 ),
	Scale	= .55,	
	},

	// Grille Lights
		// White Left
	{
	ID = "[999 Emergency] LAS Grille Lights",
	Pos	= Vector(19 , 144 , 44.7),
	Ang	= Angle( 0, -10, 0  ),
	Scale	= 0.8,
	Color1 = "WHITE",
	Color2 = "WHITE",
	Phase = "A"
	},
		// Blue Left
	{
	ID = "[999 Emergency] LAS Grille Lights",
	Pos	= Vector(8 , 145.9 , 44.7),
	Ang	= Angle( 0, -10, 0  ),
	Scale	= 0.8,
	Color1 = "BLUE",
	Color2 = "BLUE",
	Phase = "B"
	},
		// White Right
	{
	ID = "[999 Emergency] LAS Grille Lights",
	Pos	= Vector(-19 , 144 , 44.7),
	Ang	= Angle( 0, 10, 0  ),
	Scale	= 0.8,	
	Color1 = "WHITE",
	Color2 = "WHITE",
	Phase = "B"
	},
		// Blue Right
	{
	ID = "[999 Emergency] LAS Grille Lights",
	Pos	= Vector(-8 , 145.9 , 44.7),
	Ang	= Angle( 0, 10, 0  ),
	Scale	= 0.8,		
	Color1 = "BLUE",
	Color2 = "BLUE",
	Phase = "A"
	},

		// Front
	{
	ID = "[999 Emergency] LAS Blue M7",
	Pos		= Vector(42, 43.6, 120),
	Ang		= Angle( 90, 90, 0 ),
	Scale	= 1,
	Phase = "A"
	},
	{
	ID = "[999 Emergency] LAS Blue M7",
	Scale = 1,
	Pos		= Vector(-42, 43.6, 120),
	Ang		= Angle( 90, 90, 0 ),
	Phase = "B"
	},
	{
	ID = "[999 Emergency] LAS White M7",
	Scale = 1,
	Pos		= Vector(25, 43.6, 120),
	Ang		= Angle( 90, 90, 0 ),
	Phase = "B"
	},
	{
	ID = "[999 Emergency] LAS White M7",
	Scale = 1,
	Pos		= Vector(-25, 43.6, 120),
	Ang		= Angle( 90, 90, 0 ),
	Phase = "A"
	},

	// Left Side
	{
	ID = "[999 Emergency] LAS Blue M7",
	Scale = 1,
	Pos = Vector( -50, 38.5, 115 ),
	Ang = Angle( 90, 180, 0 ),
	Phase = "A"
	},
	{
	ID = "[999 Emergency] LAS Blue M7",
	Scale = 1,
	Pos = Vector( -50, -128.5, 119 ),
	Ang = Angle( 90, 180, 0 ),
	Phase = "B"
	},
	// Right Side
	{
	ID = "[999 Emergency] LAS Blue M7",
	Scale = 1,
	Pos = Vector( 50, -128.5, 119 ),
	Ang = Angle( 90, 0, 0 ),
	Phase = "A"
	},
	{
	ID = "[999 Emergency] LAS Blue M7",
	Scale = 1,
	Pos = Vector( 50, 38.5, 119 ),
	Ang = Angle( 90, 0, 0 ),
	Phase = "B"
	},

	// Rear 
		{
	ID = "[999 Emergency] LAS Blue M7", // Left Blue
	Scale = 1,
	Pos = Vector( -45, -140, 118 ),
	Ang = Angle( 90, 270, 0 ),
	Phase = "A"
	},
	{
	ID = "[999 Emergency] LAS Blue M7", // Right Blue
	Scale = 1,
	Pos = Vector( 45, -140, 118 ),
	Ang = Angle( 90, 270, 0 ),
	Phase = "B"
	},
	// Rear Reds
	{
	ID = "[999 Emergency] LAS Red M7 Left",
	Scale = 1,
	Pos = Vector( 23, -140, 118 ),
	Ang = Angle( 90, 270, 0 ),
	Phase = "A"
	},
	{
	ID = "[999 Emergency] LAS Red M7 Right",
	Scale = 1,
	Pos = Vector( -24, -140, 118 ),
	Ang = Angle( 90, 270, 0 ),
	Phase = "B"
	},

	// Rear Tir3
	{
	ID = "[999 Emergency] LAS Whelen Tir3 Vertical", // Right Blue
	Pos = Vector( 30, -140.6, 118 ),
	Ang = Angle( 0, 0, 0 ),
	Scale	= 0.9,
	Phase = "A"
	},
	{
	ID = "[999 Emergency] LAS Whelen Tir3 Vertical", // Left Blue
	Scale = 0.9,
	Pos		= Vector( -30, -140.6, 118 ),
	Ang		= Angle( 0, 0, 0 ),
	Phase = "B"
	},
}

EMV.Props = {
// Grille Mounts
	{
   				Model 	= "models/999pack/ion/mount.mdl",
				Pos		= Vector(-8 , 145.85 , 42.7),
				Ang		= Angle( 0, 10, 0  ),
				Scale	= 0.9,
    },
	{
				Model 	= "models/999pack/ion/mount.mdl",
				Pos		= Vector(8 , 145.85 , 42.7),
				Ang		= Angle( 0, -10, 0  ),
				Scale	= 0.9,
    },
	{
				Model 	= "models/999pack/ion/mount.mdl",
				Pos		= Vector(19 , 144.1 , 42.7),
				Ang		= Angle( 0, -9, 0  ),
				Scale	= 0.9,
    },
	{
					Model 	= "models/999pack/ion/mount.mdl",
					Pos		= Vector(-19 , 144.1 , 42.7),
					Ang		= Angle( 0, 9, 0  ),
					Scale	= 0.9,
    },
// 999 Computer
	{
	Model 	= "models/999pack/genysis/genysis.mdl",
	Pos		= Vector(4.8, 83, 57),
	Ang		= Angle( 180, 90, -180 ),
	Scale	= 2
    },

// Rear hella
	{
	Model 	= "models/999pack/hella/hellalight.mdl",
	Pos = Vector( 36.3, -140.5, 118 ),
	Ang = Angle( 0, 0, 0 ),
    Skin = 2,
	Scale	= 0.7
    },
	{
	Model 	= "models/999pack/hella/hellalight.mdl",
	Pos		= Vector( -36.3, -140.5, 118 ),
	Ang		= Angle( 0, 0, 0 ),
    Skin = 2,
	Scale	= 0.7
    },

	// 999 Logo
		{
	Model 	= "models/supermighty/emergency999_badge.mdl",
	Pos		= Vector(-13 , 145.65 , 41.6),
	Ang		= Angle( 180, -80, -179.6  ),
	Scale	= 0.8,	
    },
}

EMV.Sequences = {
	Sequences = {
		{ Name = "999 Mode", Stage = "M2", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ 
            Name = "On Scene", 
            Stage = "OnScene", 
            Components = {},
            Disconnect = {} 
		},
        { 
            Name = "RED1", 
            Stage = "R1", 
            Components = {},
            Disconnect = {} 
		},
		{ 
            Name = "RED2", 
            Stage = "R2", 
            Components = {},
            Disconnect = {} 
        },
	},
    Illumination = {
		{
			Name = "Right",
			Icon = "alley-right",
			Stage = "R",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 48 , 47.5 , 112.0 ), Angle( 50, 0, 0  ), "Right" },
				{ Vector( 48 , 47.5 , 110.0 ), Angle( 50, 0, 0  ), "Right" },
			},
			Disconnect = {}
		},
			{
			Name = "Rear",
			Icon = "takedown",
			Stage = "S",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 1 , -142 , 119.8 ), Angle( 30, -90, 0  ), "Rear" },
			},
			Disconnect = {}
		},
		{
			Name = "Left",
			Icon = "alley-left",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( -48 , 47.5 , 112.0 ), Angle( 50, 180, 0  ), "Right" },
				{ Vector(- 48 , 47.5 , 110.0 ), Angle( 50, 180, 0  ), "Right" },
			},
			Disconnect = {}
		},	
	},
}

EMV.Lamps = {
	["Left"] = {
    Color = Color(215,225,255,255),
	Texture = "effects/flashlight001",
    Near = 3,
    FOV	= 75,
    Distance = 1500,
	},
	["Rear"] = {
    Color = Color(215,225,255,255),
    Texture = "effects/flashlight001",
	Near = 3,
    FOV = 100,
    Distance = 1800,
	},
	["Right"] = {
    Color = Color(215,225,255,255),
    Texture = "effects/flashlight001",
    Near = 3,
    FOV = 75,
    Distance = 1500,
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "999Emergency - Photon",
	Author = "999Emergency, Lily",
	Model = "models/smcars/2014_sprinter_ambulance.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/superscars/2014_sprinter_ambulance.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "[999_emergency]_2017_mercedes-benz_sprinter_london_ambulance_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end