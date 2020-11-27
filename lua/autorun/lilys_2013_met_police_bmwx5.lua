AddCSLuaFile()

local VehicleName = "2013 Met Police BMW X5 [Lily]"

local EMV = {}
EMV.SubMaterials = {
["8"] = "models/supermighty/x5_f15/windows_police",
["13"] = "models/supermighty/x5_f15/yellow_police",
}

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
	{ 7, 0 }, -- clamped7
	{ 8, 0 }, -- clamped8
}

EMV.Auto = {
{
		ID = "Lilys Premier Hazard Sovereign",
		Scale = 1.1,
		Pos = Vector( 0, -25, 89 ),
		Ang = Angle( 0, 0, 0 )
},
{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 12, 113.5, 35.5 ),
		Ang = Angle( 0, -90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Phase = "A"
},
{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -12, 113.5, 35.5 ),
		Ang = Angle( 0, -90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Phase = "B"
},
{
ID = "Whelen M9",
Scale =  1,
Pos = Vector( 10.25 , 106.25 , 31.5),
Ang = Angle( 90, 180, 0 ),
Color1 = "WHITE",
Color2 = "WHITE",
Phase = "TTA"
},
{
ID = "Whelen M9",
Scale =  1,
Pos = Vector( -7.25 , 106.25 , 31.5),
Ang = Angle( 90, 180, 0 ),
Color1 = "WHITE",
Color2 = "WHITE",
Phase = "TTB"
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
list.Set( "Vehicles", "2013_met_police_bmw_x5_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
