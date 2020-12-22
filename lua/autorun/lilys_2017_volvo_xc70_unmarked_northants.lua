AddCSLuaFile()

local VehicleName = "2016 Northants Unmarked Volvo XC70 [Lily]"

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
EMV.Color = Color(165,165,165)

EMV.BodyGroups = {
	{ 0, 0 }, -- Volvo
}

EMV.Auto = {
}


EMV.Meta = {
	reverse = {
		AngleOffset = -90,
		W = 11,
		H = 11.25,
		Sprite = "sprites/emv/xc70reverse",
		Scale = 1.3,
		WMult = 1,
		VisRadius = 0
	},
	reverse2 = {
		AngleOffset = 90,
		W = 11,
		H = 11.25,
		Sprite = "sprites/emv/xc70reverse",
		Scale = 1.3,
		WMult = 1,
		VisRadius = 0
	},
}

EMV.Positions = {

	[1] = { Vector( 29.92, -111.26, 41.5 ), Angle( 0.42, -167, 0.34 ), "reverse" },
	[2] = { Vector( -29.92, -111.26, 41.5 ), Angle( 0.42, -14, 0.34 ), "reverse2" },
	
}

EMV.Sections = {
	["reverse"] = { 
		{ {1,B},},
		{ {2,B},},
        { {2,B},{1,DR},},
		{ {2,DR},{1,B},},
		
	},
}

EMV.Patterns = {
	["reverse"] = {
	    ["code1"] = { 1,0,1,0,1,0,2,0,2,0,2,0 },
		["red"] = { 3,3,3,3,4,4,4,4 },
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {["reverse"] = "code1",}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {["reverse"] = "code1",}, Disconnect = {} },
		{ Name = "999 Mode", Stage = "M3", Components = {["reverse"] = "code1",}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "Rear Reds", Stage = "R2", Components = {["reverse"] = "red",}, Disconnect = {} },
    },
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily",
	Model = "models/tdmcars/vol_xc70.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/tdmcars/volxc70.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2016_northants_unmarked_volvo_xc70_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
