AddCSLuaFile()

local VehicleName = "2015 Mercedes NHS Ambulance [Lily]"

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
	{ 1, 0 }, -- Rear Doors
	{ 2, 1 }, -- Lightbars
	{ 3, 1 }, -- Grill Leds
	{ 4, 1 }, -- Side Leds
	{ 5, 0 }, -- clamped1
	{ 6, 0 }, -- clamped2
	{ 7, 0 }, -- clamped3
	{ 8, 0 }, -- clamped4
	{ 9, 0 }, -- clamped5
	{ 10, 0 }, -- clamped6
	{ 11, 0 }, -- clamped7
}

EMV.Auto = {
	// Dumb Ally Lights
	// Cab
{
ID = "SGM Whelen AllyLight Left",
Scale =  1.25,
Pos = Vector(-43.8 , 19.5 , 105),
Ang = Angle( 0, -95, 0 ),
},
	// Passenger 
{
ID = "SGM Whelen AllyLight Right",
Scale =  1.25,
Pos = Vector(42 , 19.5 , 105),
Ang = Angle( 0, 94, 0 ),
},

    // Illumination 
    // L 
{
ID = "Woodway Perimeter Scene Light Left",
Scale =  .55,
Pos = Vector(-53.8 , -75 , 116),
Ang = Angle( 0, 180, 0 ),
},
    // R
{
ID = "Woodway Perimeter Scene Light Right",
Scale =  .55,
Pos = Vector(52 , -75 , 116),
Ang = Angle( 0, 0, 0 ),
},
    // B
{
ID = "Woodway Perimeter Scene Light Rear",
Scale =  .55,
Pos = Vector(-1, -160.5 , 116),
Ang = Angle( 0, -90, 0 ),
},
	// Bumper 
	// L
	{
ID = "Whelen Ion Gamer",
Scale =  .55,
Pos = Vector(-42.64 , 100.25 , 28),
Ang = Angle( 0, 77, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "A"
},
	// R
	{
ID = "Whelen Ion Gamer",
Scale =  .55,
Pos = Vector(40.96 , 100.25 , 28),
Ang = Angle( 0, -77, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "B"
},

	// Front
	// B Left
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( 32.25, 17.25, 114.5 ),
Ang = Angle( 0, 180, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
},
// B Right
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( -58.55, 17.25, 114.5 ),
Ang = Angle( 0, 180, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
},

//  L W Mid
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( -1.75, 17.25, 114.5 ),
Ang = Angle( 0, 180, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Color3 = "C_WHITE",
Phase = "A"
},
//  R W Mid
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( -21.75, 17.25, 114.5 ),
Ang = Angle( 0, 180, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Color3 = "C_WHITE",
Phase = "B"
},
// Headlights :)
	{
ID = "Lilys 2015 Mercedes Ambulance Headlights",
Scale =  1,
Pos = Vector( 0, 0, 0 ),
Ang = Angle( 0, 90, 0 )
},
// Left Side
//  F
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector(  -56 , -6.75 , 114),
Ang = Angle( 0, -90, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
},
//   B
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector(  -56 , -164.75 , 114),
Ang = Angle( 0, -90, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
},
// Right Side
// B
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector(  54 , -138.35 , 114),
Ang = Angle( 0, 90, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
},
// F
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector(  54 , 19.2, 105.9),
Ang = Angle( 0, 90, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
},
// Rear 
// B L
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( -33.35 , -162.6 , 114.4),
Ang = Angle( 0, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
},
// B R
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( 56.8 , -162.6 , 114.4),
Ang = Angle( 0, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
},
// B M L
	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( -1.85 , -162.6 , 114.4),
Ang = Angle( 0, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
},
// B M R

	{
ID = "Lilys 2015 NHS M7",
Scale =  1,
Pos = Vector( 25.45 , -162.6 , 114.4),
Ang = Angle( 0, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
},
// L RR
	{
ID = "Lilys 2015 NHS M7 Rear",
Scale =  1,
Pos = Vector( 39.8 , -163 , 114.4),
Ang = Angle( 0, 0, 0 ),
Color1 = "RED",
Color2 = "RED",
Color3 = "RED",
},

}

EMV.Props = {
	// Front
	// Left
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 29 , 17 , 115),
     Ang = Angle( 0, 180 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// Right
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -62 , 17 , 115),
     Ang = Angle( 0, 180 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// Left Mid
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -5 , 17 , 115),
     Ang = Angle( 0, 180 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// Right Mid
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -25 , 17 , 115),
     Ang = Angle( 0, 180 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// Left Side
	//  F
	{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -55.5 , -10 , 114.5),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	//  B
	{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -55.5 , -168 , 114.5),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// Right Side
	// B
	{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 53.8 , -135 , 114.5),
     Ang = Angle( 0, 90 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// F
	{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 53.8 , 22.5 , 106.5),
     Ang = Angle( 0, 90 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// Rear
	// B L
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -30 , -162.5 , 115),
     Ang = Angle( 0, 0 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// B R
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 60 , -162.5 , 115),
     Ang = Angle( 0, 0 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// B M L
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 1.5 , -162.5 , 115),
     Ang = Angle( 0, 0 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },

	// B M R
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 28.75 , -162.5 , 115),
     Ang = Angle( 0, 0 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 0,
    },
	// R L 
{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( -13 , -162.5 , 115),
     Ang = Angle( 0, 0 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 3,
	 SubMaterials = {
    ["1"] = "phoenix_storms/pack2/redlight"
  },
},
	// R R
	{
    Model = "models/noble/whelen_m9/whelen_m9.mdl", 
     Pos = Vector( 43.25 , -162.5 , 115),
     Ang = Angle( 0, 0 , 0 ),
     Scale = Vector(1.25,1,0.6),
     Skin = 3,
	 SubMaterials = {
    ["1"] = "phoenix_storms/pack2/redlight"
  },
},

}



EMV.Meta = {}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
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
		Name = "Rear",
		Icon = "takedown",
		Stage = "B",
		Components = {},
		BG_Components = {},
		Preset_Components = {},
		Lights = {
			{ Vector( -1, -160.5 , 116 ), Angle( 70, -90, 0  ), "Rear" },
		},
		Disconnect = {}
		},
		{
			Name = "Right",
			Icon = "alley-right",
			Stage = "R",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 52 , -75 , 116 ), Angle( 50, 0, 0  ), "Right" },
				{ Vector( 42 , 19.5 , 105 ), Angle( 0, 0, 0  ), "Right" },
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
				{ Vector(-53.8 , -75 , 116 ), Angle( 50, -180, 0  ), "Left" },
				{ Vector(-43.8 , 19.5 , 105 ), Angle( 0, -180, 0  ), "Left" },
			},
			Disconnect = {}
			},
        {
			Name = "Full",
			Icon = "takedown",
			Stage = "F",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector(-53.8 , -75 , 116 ), Angle( 50, -180, 0  ), "Left" },
                { Vector( 53.8 , -75 , 116 ), Angle( 50, 0, 0  ), "Right" },
                { Vector( -1, -160.5 , 116 ), Angle( 70, -90, 0  ), "Rear" },
				{ Vector(-43.8 , 19.5 , 105 ), Angle( 0, -180, 0  ), "Left" },
				{ Vector( 42 , 19.5 , 105 ), Angle( 0, 0, 0  ), "Right" },
			},
			Disconnect = {}
			},
	}
}

EMV.Lamps = {
    ["Rear"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 2,
        FOV = 75,
        Distance = 1500,
	},
	["Left"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 2,
        FOV = 75,
        Distance = 1500,
	},
	["Right"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 2,
        FOV = 75,
        Distance = 1500,
	},
    	["Full"] = {
        Color = Color(215,225,255,255),
        Texture = "effects/flashlight001",
        Near = 2,
        FOV = 75,
        Distance = 1500,
	},
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily",
	Model = "models/perrynsvehicles/2015_mercedes_nhs_ambulance/2015_mercedes_nhs_ambulance.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/perryn/2015_mercedes_nhs_ambulance.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
