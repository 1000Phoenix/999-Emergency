AddCSLuaFile()

local VehicleName = "2016 North West Air Ambulance X5 [Lily]"

local EMV = {}
EMV.RadarDisabled = true

EMV.Siren = 49
EMV.Skin = 2
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
{
		ID = "Lilys North West Air Ambulance Defender",
		Scale = 1.1,
		Pos = Vector( 0, -25, 89 ),
		Ang = Angle( 0, 0, 0 )
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
list.Set( "Vehicles", "2016_north_west_air_ambulance_x5_[lily", V )


if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
