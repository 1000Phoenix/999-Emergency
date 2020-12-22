AddCSLuaFile()

local VehicleName = "2012 Metropolitan Police Prisoner Transport Sprinter [Lily]"

local EMV = {}

EMV.Siren = 5
EMV.Skin = 8
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- Boot
	{ 2, 1 }, -- Step
	{ 3, 0 }, -- Towbar
	{ 4, 0 }, -- Trim
	{ 5, 0 }, -- Licence
	{ 6, 0 }, -- Screen_centre
	{ 7, 0 }, -- Screen_satnav
	{ 8, 0 }, -- Wheels
	{ 9, 0 }, -- Lightbar
	{ 10, 0 }, -- Grilllghts
	{ 11, 1 }, -- Sidewindow
	{ 12, 0 }, -- rearwindow
	{ 13, 0 }, -- clamped1
	{ 14, 0 }, -- clamped2
	{ 15, 0 }, -- clamped3
}

EMV.Props = {
	{
    Model = "models/999pack/cage/cagelwb.mdl", 
     Pos = Vector( -23.5 , -86.5 , 73),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1,1,1),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
    {
    Model = "models/supermighty/emergency999_badge.mdl", 
     Pos = Vector( 15 , 133.8 , 34.5),
     Ang = Angle( 0, 82.5 , 0.5 ),
     Scale = Vector(1,1,1),
     Skin = 0,
    },
}

EMV.Auto = {
	{
		ID = "Lilys Premier Hazard Sovereign",
		Scale = 1,
		Pos = Vector( 0, 0, 100 ),
		Ang = Angle( 0, 90, 0 )
	}
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
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily",
	Model = "models/LoneWolfie/matt_sprinter_lwb.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/matt_sprinter.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2012_metropolitan_police_prisoner_transport_sprinter_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
