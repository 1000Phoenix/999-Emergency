AddCSLuaFile()

local VehicleName = "2018 Skoda Superb Police [SM]"

local EMV = {}

EMV.Siren = 49
EMV.Skin = 1
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
}
EMV.Props = {
    {
        Model = "models/supermighty/emergency999_badge.mdl", 
         Pos = Vector( -12, 115.32, 28.45),
         Ang = Angle( 0, -81 , 0 ),
         Scale = 1,
         Skin = 0,
    },
}
EMV.Auto = { -- models/supermighty/emergency999_badge.mdl
	{
		ID = "SM Premier Hazard Defender",
		Scale = 1.075,
		Pos = Vector( 0, -12, 70.9 ),
		Ang = Angle( 0, 0, 0 )
    },
    {
		ID = "SM British Whelen Ion",
        Scale = 0.825,
        Phase = "A",
		Pos = Vector( -13.8, 114.3, 32.7 ),
		Ang = Angle( -118.3, 60.1, -54.2 )
    },
    {
		ID = "SM British Whelen Ion2",
        Scale = 0.825,
        Phase = "B",
		Pos = Vector( 13, 114.3, 32.7 ),
		Ang = Angle( 118.3, -60.1, -54.2 )
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "REAR LIGHTING", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "FRONT LIGHTING", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "ALL LIGHTING", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "REDS REAR", Stage = "R0", Components = {}, Disconnect = {} },
		{ Name = "Reds FULL", Stage = "R1", Components = {}, Disconnect = {} },
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Super Mighty",
	Model = "models/smcars/2018_skoda_superb.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/superscars/superb.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2018_skoda_superb_police_[sm]_83800641", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
