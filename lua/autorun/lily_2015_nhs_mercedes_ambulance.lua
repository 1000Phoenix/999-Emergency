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
	// Right Side lights
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( 50.9, 4.25, 110.5 ),
Ang = Angle( 90, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
	},
		{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( 50.9, -153.25, 115.5 ),
Ang = Angle( 90, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
	},
	// Left Side Lights
		{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( -52.8, 4.25, 115.5 ),
Ang = Angle( -270, -180, -0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
	},
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( -52.8, -153.25, 115.5 ),
Ang = Angle( -270, -180, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
	},
	// Front Lights <3
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( -45, 14.25, 115.5 ),
Ang = Angle( 90,90, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
	},
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( 45, 14.25, 115.5 ),
Ang = Angle( 90,90, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
	},
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( -10, 14.25, 115.5 ),
Ang = Angle( 90,90, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Color3 = "C_WHITE",
Phase = "B"
	},
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( 10, 14.25, 115.5 ),
Ang = Angle( 90,90, 0 ),
Color1 = "C_WHITE",
Color2 = "C_WHITE",
Color3 = "C_WHITE",
Phase = "A"
	},
	// Rear Blues
		{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( -45, -159.5, 115.5 ),
Ang = Angle( 90, 270, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
	},
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( 45, -159.5, 115.5 ),
Ang = Angle( 90, 270, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
	},
			{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( -15, -159.5, 115.5 ),
Ang = Angle( 90, 270, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "B"
	},
	{
ID = "Lilys 2015 Ambulance M7 B/B",
Scale =  2.5,
Pos = Vector( 15, -159.5, 115.5 ),
Ang = Angle( 90, 270, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Color3 = "BLUE",
Phase = "A"
	},
	// Rear Reds
	// Headlights <3
	{
ID = "Lilys 2015 Mercedes Ambulance Headlights",
Scale =  1,
Pos = Vector( 0, 0, 0 ),
Ang = Angle( 0, 90, 0 )
	},
}

EMV.Props = {
	// Rear Reds
	{
    Model = "models/999pack/m7/m7-1.mdl", 
     Pos = Vector( 27, -159.5, 115.5 ),
     Ang = Angle( 90, 270, 0),
     Scale = Vector(2.5, 2.5, 2.5),
     Skin = 2,
    },
	{
    Model = "models/999pack/m7/m7-1.mdl", 
     Pos = Vector( -29.75, -159.5, 115.5 ),
     Ang = Angle( 90, 270, 0),
     Scale = Vector(2.5, 2.5, 2.5),
     Skin = 2,
    },
	// 999 Logo
	{
    Model = "models/supermighty/emergency999_badge.mdl", 
     Pos = Vector( -15.75, 119.4, 32.3 ),
     Ang = Angle( 0, 100, 4.2),
     Scale = Vector(1,0.5,0.75),
     Skin = 2,
    },

}

EMV.Meta = {
	rear_reds = {
		AngleOffset = -90,
		W = 8,
		H = 8,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = 1,
		WMult = 0.9,
	},
}

EMV.Positions = {
	[1] = { Vector( 27, -159.8, 115.5 ), Angle( 0, 180, 0 ), "rear_reds" },
	[2] = { Vector( -29.75, -159.8, 115.5 ), Angle( 0, 180, 0 ), "rear_reds" },
}

EMV.Sections = {

	["rear_reds"] = {
        [1] = {
        { 1, R },
		},
		[2] = {
		{ 2, R },
		},
	},
}

EMV.Patterns = {
   ["rear_reds"] = {  
	["R1"] = {
		1, 1, 1, 0, 2, 2
  	 	},	
	["R2"] = {
	1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0,
	1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0,
	1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0
  	 	},
	["off"] = {
	0
  	 	}
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {["rear_reds"] = "off",}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {["rear_reds"] = "off",}, Disconnect = {} },
		{ Name = "999 Mode", Stage = "M3", Components = {["rear_reds"] = "off",}, Disconnect = {} }
	},
	Traffic = {
        { 
            Name = "RED1", 
            Stage = "R1", 
            Components = {["rear_reds"] = "R1",},
            Disconnect = {} 
		},
		{ 
            Name = "RED2", 
            Stage = "R2", 
            Components = {["rear_reds"] = "R2",},
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
