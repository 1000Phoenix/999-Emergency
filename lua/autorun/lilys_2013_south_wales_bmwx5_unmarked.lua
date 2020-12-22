AddCSLuaFile()

local VehicleName = "2013 South Wales Unmarked BMW X5 Police [Lily]"

local EMV = {}


EMV.Siren = 5
EMV.Skin = 0
EMV.Color = Color(140,140,140)

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
		// Front Fenders
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 46 , 99.8 , 28),
		Ang = Angle( 90, 123, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -46 , 99.8 , 28),
		Ang = Angle( 90, 55, -90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	// Grille
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -12 , 103.25 , 44),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "S_WHITE",
		Color2 = "S_WHITE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -5 , 103.25 , 44),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
			{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( 16.25 , 103.25 , 44),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "S_WHITE",
		Color2 = "S_WHITE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( 6 , 103.25 , 44),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "B"
	},
	// Dash lights
		{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0 , 39 ,67.5),
		Ang = Angle( 0, 90, 180 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "D",

	},
	// Rear Passenger Lights
		{
		ID = "Whelen Ion Gamer",
		Scale = 1,
		Pos = Vector( -38.5 , -79 ,67),
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
		Pos = Vector( 38.5 , -79 ,67),
		Ang = Angle( 0, 85, 180 ),
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
		Pos = Vector( -19 , -102.8 ,80.69),
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
		Pos = Vector( 19 , -102.8 ,80.79),
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
		Pos = Vector( 36, -118.7 , 31.5),
		Ang = Angle( 0, 29, 90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
		{
		ID = "Whelen Vertex",
		Scale = .75,
		Pos = Vector( -36, -118.7 , 31.5),
		Ang = Angle( 0, -29, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "999 Mode", Stage = "M3", Components = {}, Disconnect = {} }
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
list.Set( "Vehicles", "2013_south_wales_unmarked_bmw_x5_[lily]", V )


if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
