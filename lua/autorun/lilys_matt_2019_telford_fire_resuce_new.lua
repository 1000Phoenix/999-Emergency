AddCSLuaFile()

local VehicleName = "2019 Telford Fire and Rescue NEW [Lily][MattDavidJ]"

local EMV = {}

EMV.Siren = "sm_woodway_whelen_cencom"
EMV.Skin = 1
EMV.Color = Color(255,255,255)
EMV.RadarDisabled = true

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- BumperF
	{ 2, 0 }, -- plate
	{ 3, 1 }, -- Badge
	{ 4, 0 }, -- clamped2
	{ 5, 0 }, -- clamped3
	{ 6, 0 }, -- clamped4
	{ 7, 0 }, -- clamped5
	{ 8, 0 }, -- clamped6
	{ 9, 0 }, -- clamped7
	{ 10, 0 }, -- clamped8
	{ 11, 0 }, -- clamped9
	{ 12, 0 }, -- clamped10
	{ 13, 0 }, -- clamped11
}

EMV.Auto = {
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 9, 133.6, 29 ),
		Ang = Angle( 0, 175, 0 ),
        Color1 = "WHITE",
        Color2 = "WHITE",
        Color3 = "WHITE",
        Color4 = "WHITE",
        Phase = "TTA"
	},
    {
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -36, 131.35, 29 ),
		Ang = Angle( 0, 185, 0 ),
        Color1 = "WHITE",
        Color2 = "WHITE",
        Color3 = "WHITE",
        Color4 = "WHITE",
        Phase = "TTB"
	},
    {
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -28, 132.85, 45.5 ),
		Ang = Angle( 0, 183.5, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "B",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
        {
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 0, 134.25, 45.5 ),
		Ang = Angle( 0, 178, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "A",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
    	{
		ID = "British Fire Engine Lightbar",
		Scale = 1,
		Pos = Vector( 0, 106.8, 120.5 ),
		Ang = Angle( 0, 90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE"
    },
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 46.8, 123, 44 ),
		Ang = Angle( 90, 115, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "B",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
		{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -45, 127, 44 ),
		Ang = Angle( 90, -115, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "A",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -47.5, -31, 97.95 ),
		Ang = Angle( 0, -90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "A",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
		{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -47.5, -168, 97.95 ),
		Ang = Angle( 0, -90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "B",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
		{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 47.5, -5, 97.95 ),
		Ang = Angle( 0, 90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "A",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},	
		{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 47.5, -142, 97.95 ),
		Ang = Angle( 0, 90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "B",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
			{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 52.45, -188.4, 92 ),
		Ang = Angle( 0, 0, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "A",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -26.45, -188.4, 92 ),
		Ang = Angle( 0, 0, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Color4 = "BLUE",
        Phase = "B",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/darkblue"
	    },
	},
	{
		ID = "Lilys Rear Red M9",
		Scale = 1,
		Pos = Vector( -26.45, -188.4, 88 ),
		Ang = Angle( 0, 0, 0 ),
        Color1 = "RED",
        Color2 = "RED",
        Color3 = "RED",
        Color4 = "RED",
        Phase = "TTB",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/redlight"
	    },
	},
	{
		ID = "Lilys Rear Red M9",
		Scale = 1,
		Pos = Vector( 52.45, -188.4, 88 ),
		Ang = Angle( 0, 0, 0 ),
        Color1 = "RED",
        Color2 = "RED",
        Color3 = "RED",
        Color4 = "RED",
        Phase = "TTA",
        SubMaterials = {
    ["3"] = "phoenix_storms/pack2/redlight"
	    },
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "Rear Reds", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "999 Mode", Stage = "M2", Components = {}, Disconnect = {} },
	},
	Traffic = {}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "999Emergency - Photon",
	Author = "Lily",
	Model = "models/mdj/scania/scania fire truck new.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/mdj/sfiretrucknew.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2019_telford_fire_resuce_[lily][MattDavidJ]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

