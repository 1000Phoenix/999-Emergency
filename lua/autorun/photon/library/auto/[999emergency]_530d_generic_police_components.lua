AddCSLuaFile()


local name = "Lilys British BMW 530D Whelen Ion1"

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
		Sprite = "sprites_apac/emv/ion_main",
		Scale = .25,
		EmitArray = {
			Vector( 2.5, 0.1, 0 ),
			Vector( -2.4, 0.1, 0 ),
			Vector( 1.55, 0.1, 0 ),
			Vector( -1.4, 0.1, 0 ),
			Vector( 0.55, 0.1, 0 ),
			Vector( -0.45, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -0.1, 0.315, 0.1 ), Angle( 0, 0, 0 ), "auto_ion_left" },
	--[2] = { Vector( -1.46, 0.5, 0 ), Angle( 0, 0, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1", .88 },  },
		[2] = { { 1, "_2", .88 },  }
	},
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code1"] = { 1, 1, 1, 0, 2, 2, 2 },
		["code1A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 0, 0, },
        ["code1B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 2, 0, 2, 2, 2, },
		["code1C"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, },
		["code1D"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, },
		["OFF"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_ion"] = "OFF", },
		M2 = { ["auto_ion"] = "code1", },
		M3 = { ["auto_ion"] = "code1", },
		ALERT = { ["auto_ion"] = "code1", },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

---NOP

-- New

local name = "Lilys British BMW 530D Whelen Ion2"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_ion.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 9,
		H = 9,
		WMult = 0.75,
		Sprite = "sprites_apac/emv/ion_main",
		Scale = .25,
		EmitArray = {
			Vector( 2.5, 0.1, 0 ),
			Vector( -2.4, 0.1, 0 ),
			Vector( 1.55, 0.1, 0 ),
			Vector( -1.4, 0.1, 0 ),
			Vector( 0.55, 0.1, 0 ),
			Vector( -0.45, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -0.1, 0.315, 0.1 ), Angle( 0, 0, 0 ), "auto_ion_left" },
	--[2] = { Vector( -1.46, 0.5, 0 ), Angle( 0, 0, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1", .88 },  },
		[2] = { { 1, "_2", .88 },  }
	},
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code1"] = { 1, 1, 1, 0, 2, 2, 2 },
		["code1A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 2, 0, 2, 2, 2, 0, 0, 0, 0, 0, },
        ["code1B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 2, 0, 2, 2, 2, },
		["code1C"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, },
		["code1D"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, },
		["OFF"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_ion"] = "OFF", },
		M2 = { ["auto_ion"] = "code1", },
		M3 = { ["auto_ion"] = "code1", },
		ALERT = { ["auto_ion"] = "code1", },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

---NOP
