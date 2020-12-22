AddCSLuaFile()

local name = "Lilys 2015 Ambulance M7 R/R"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/m7/m7-1.mdl"
COMPONENT.Skin = 2
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
	[3] = "RED"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 3.15,
		H = 3.15,
		WMult = 0.9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = 1,
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

	[1] = { Vector( -0.01, 0, 0.11 ), Angle( 90, 270, 0 ), "auto_ion_left" },
	[2] = { Vector( -1.59, 0.3, 0.11 ), Angle( 0, 0, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
[1] = { 
            { 1, "_1"}, { 2, "_1"},
        },
        [2] = { 
            { 1, "_2"}, { 2, "_2"},
        },
	},
}

COMPONENT.Patterns = {
	["auto_ion"] = {
	["code1"] = { 1, 1, 1, 0, 0, 0},
	["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
    ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 
                0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0,
                1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 
                0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0},
	["code1A"] = { 1, 1, 1, 0, 0, 0},
    ["code2A"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
    ["code3A"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0,
	1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0,
	1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0},
	["code1B"] = { 0, 0, 0, 1, 1, 1 },
    ["code2B"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },
    ["code3B"] = {  0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0,
	 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0,
	0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0},
	["off"] = {0},
	},
}

COMPONENT.Modes = {
Primary = {
		M1 = { ["auto_ion"] = "off", },
		M2 = { ["auto_ion"] = "off", },
		M3 = { ["auto_ion"] = "off", },
},
Auxiliary =  {
        R1 = {
			["auto_ion"] = "code1",
			 },
		R2 = {
			["auto_ion"] = "code3",
		},
    },
Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
