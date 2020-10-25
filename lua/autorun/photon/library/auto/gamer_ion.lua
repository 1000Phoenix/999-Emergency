AddCSLuaFile()

local name = "Whelen Ion Gamer"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_ion.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 9,
		H = 9,
		WMult = 0.75,
		Sprite = "sprites_apac/emv/ion_left",
		Scale = .25,
		EmitArray = {
			Vector( 1, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),
			Vector( -1, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 9,
		H = 9,
		WMult = 0.75,
		Sprite = "sprites_apac/emv/ion_right",
		Scale = .25, 
		EmitArray = {
			Vector( 1, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),		
			Vector( -1, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 1.46, 0.3, 0.11 ), Angle( 0, 0, 0 ), "auto_ion_left" },
	[2] = { Vector( -1.59, 0.3, 0.11 ), Angle( 0, 0, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } }
	},
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code1"] = { 1, 1, 1, 0, },
		["code1A"] = { 1, 1, 1, 0, 0, 0, 0, 0, },
		["code1B"] = { 0, 0, 0, 0, 1, 1, 1, 0 },
		["code2"] = { 1, 0, 1, 1, 1, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["code3"] = { 1, 0 },
		["code3A"] = { 1, 0, 1, 0, 0, 0 },
		["code3B"] = { 0, 0, 0, 1, 0, 1 },
		["alert"] = { 1, 0 },
		["alertA"] = { 0, 1 },
		["alertB"] = { 1, 0 },
		["all"] = { 1 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_ion"] = "code1", },
		M2 = { ["auto_ion"] = "code2", },
		M3 = { ["auto_ion"] = "code3", },
		ALERT = { ["auto_ion"] = "alert", },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
