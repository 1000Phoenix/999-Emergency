AddCSLuaFile()

local VehicleName = "2018 Scotland Police Ford Transit Custom [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

EMV.Siren = "999emergency_Scottish_siren"
EMV.Skin = 1
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
}

EMV.Auto = {
	{
		ID = "Whelen Liberty SX Blue",
		Scale = 1.05,
		Pos = Vector( 0, -43, 93.3 ),
		Ang = Angle( 0, -90, 0 )
	},
	// Whites
{
ID = "Whelen Ion Gamer",
Scale =  .55,
Pos = Vector(-11 , 110 , 42.7),
Ang = Angle( 0, 0, 0 ),
Color1 = "WHITE",
Color2 = "WHITE",
Phase = "A"
},
{
ID = "Whelen Ion Gamer",
Scale =  .55,
Pos = Vector(11 , 110 , 42.7),
Ang = Angle( 0, 0, 0 ),
Color1 = "WHITE",
Color2 = "WHITE",
Phase = "B"
},
	// Blues
	{
ID = "Whelen Ion Gamer",
Scale =  .55,
Pos = Vector(-7 , 110 , 42.7),
Ang = Angle( 0, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "B"
},
{
ID = "Whelen Ion Gamer",
Scale =  .55,
Pos = Vector(7 , 110 , 42.7),
Ang = Angle( 0, 0, 0 ),
Color1 = "BLUE",
Color2 = "BLUE",
Phase = "A"
}
}

EMV.Props = {
		// 999 Logo
	{
    Model = "models/supermighty/emergency999_badge.mdl", 
     Pos = Vector( -13, 110.8, 33.8 ),
     Ang = Angle( 0, 95, 0),
     Scale = Vector(1,0.5,0.75),
     Skin = 2,
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
	Model = "models/mdj/ford/2018_transitRHD.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/mdj/2018transit.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2018_scotland_police_ford_transit_custom_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
