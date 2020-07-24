AddCSLuaFile()

local VehicleName = "2010 MET UNMARKED VITO [TCC][LILY]"

local EMV = {}

EMV.Siren = 69
EMV.Skin = 0
EMV.Color = Color(5,14,22)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Bullbar
	{ 2, 0 }, -- clamped1
	{ 3, 0 }, -- clamped2
	{ 4, 0 }, -- clamped3
	{ 5, 0 }, -- clamped4
}

EMV.Auto = {}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Metropolitan Police Vehicles",
	Author = "♿ Lily",
	Model = "models/perrynsvehicles/mercedes_vito_2010/mercedes_vito_2010.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/perryn/mercedes_vito_2010.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
