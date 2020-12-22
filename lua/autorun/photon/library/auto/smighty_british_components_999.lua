AddCSLuaFile()

local name = "SM Premier Hazard Defender"

local COMPONENT = {}

COMPONENT.Model = "models/Lonewolfie/emergency/premier_hazard_defender.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = { { 1, 2 } }
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
}

COMPONENT.Meta = {
	defender_main = {
		AngleOffset = 0,
		W = 6.9,
		H = 6.9,
		WMult = 1.5,
		Sprite = "sprites/emv/defender_main",
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	defender_takedown = {
		AngleOffset = 0,
		W = 3.9,
		H = 4,
		WMult = 1,
		Sprite = "sprites/emv/defender_takedown",
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 1.7, 5.56, 3.86 ), Angle( 0, 0, 0 ), "defender_takedown" },
    [2] = { Vector( -1.7, 5.56, 3.86 ), Angle( 0, 0, 0 ), "defender_takedown" },
    [3] = { Vector( 14.7, 5.56, 3.86 ), Angle( 0, 0, 0 ), "defender_main" },
    [4] = { Vector( -14.7, 5.56, 3.86 ), Angle( 0, 0, 0 ), "defender_main" },
    [5] = { Vector( 21.5, 3.46, 3.86 ), Angle( 0, -45, 0 ), "defender_main" },
    [6] = { Vector( -21.5, 3.46, 3.86 ), Angle( 0, 45, 0 ), "defender_main" },
    [7] = { Vector( 21.5, -3.07, 3.86 ), Angle( 0, -136.1, 0 ), "defender_main" },
    [8] = { Vector( -21.5, -3.07, 3.86 ), Angle( 0, 136.1, 0 ), "defender_main" },
    [9] = { Vector( 14.7, -5.56, 3.86 ), Angle( 0, 180, 0 ), "defender_main" },
    [10] = { Vector( -14.7, -5.56, 3.86 ), Angle( 0, 180, 0 ), "defender_main" },
    [11] = { Vector( 1.7, -5.56, 3.86 ), Angle( 0, 180, 0 ), "defender_takedown" },
	[12] = { Vector( -1.7, -5.56, 3.86 ), Angle( 0, 180, 0 ), "defender_takedown" },
	[13] = { Vector( 8.89, -5.85, 3.86 ), Angle( 0, 180, 0 ), "defender_takedown" },
	[14] = { Vector( -8.89, -5.85, 3.86 ), Angle( 0, 180, 0 ), "defender_takedown" },
	[15] = { Vector( 5.59, -5.85, 3.86 ), Angle( 0, 180, 0 ), "defender_takedown" },
	[16] = { Vector( -5.59, -5.85, 3.86 ), Angle( 0, 180, 0 ), "defender_takedown" },

}

COMPONENT.Sections = {
	["auto_defender"] = {
        [1] = { { 1, "_1" }, { 3, "_1" }, { 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 15, "_1" },},
		[2] = { { 2, "_1" }, { 4, "_1" }, { 6, "_1" }, { 8, "_1" }, { 10, "_1" }, { 12, "_1" },{ 16, "_1" }, },
		[3] = { { 1, "_1" }, { 3, "_1" }, { 5, "_1" }, { 7, "_1" }, { 9, "_1" }, { 11, "_1" },{ 14, "_2" }, { 15, "_1" },},
		[4] = { { 2, "_1" }, { 4, "_1" }, { 6, "_1" }, { 8, "_1" }, { 10, "_1" }, { 12, "_1" },{ 13, "_2" },{ 16, "_1" }, },
		
		[5] = { { 1, "_1" }, { 3, "_1" }, { 5, "_1" } },
		[6] = { { 2, "_1" }, { 4, "_1" }, { 6, "_1" } },
		[7] = { { 7, "_1" }, { 9, "_1" }, { 11, "_1" }, { 15, "_1" },},
		[8] = { { 8, "_1" }, { 10, "_1" }, { 12, "_1" },{ 16, "_1" }, },
		[9] = { { 7, "_1" }, { 9, "_1" }, { 11, "_1" },{ 14, "_2" }, { 15, "_1" },},
		[10] = { { 8, "_1" }, { 10, "_1" }, { 12, "_1" },{ 13, "_2" },{ 16, "_1" }, },
	},
}

COMPONENT.Patterns = {
	["auto_defender"] = {
		["code1"] = { 1, 0, 1, 1, 1, 0, 2, 0, 2, 2, 2, 0, },
		["front"] = { 5, 0, 5, 5, 5, 0, 6, 0, 6, 6, 6, 0, },
		["rear"] = { 7, 0, 7, 7, 7, 0, 8, 0, 8, 8, 8, 0, },
		["reds"] = { 3, 0, 3, 3, 3, 0, 4, 0, 4, 4, 4, 0, },
		["reds_rear"] = { 9, 0, 9,9,9, 0, 10, 0, 10, 10, 10, 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_defender"] = "rear", },
		M2 = { ["auto_defender"] = "front", },
		M3 = { ["auto_defender"] = "code1", },
		ALERT = { ["auto_defender"] = "code1", },
	},
	Auxiliary = {
		R1 = { ["auto_defender"] = "reds"  },
		R0 = { ["auto_defender"] = "reds_rear", }
	},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

-- end

-- new

local name = "SM British Whelen Ion"

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

-- new

local name = "SM British Whelen Ion2"

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
		DirOffset = 0
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
		M1 = { ["auto_ion"] = "OFF" },
		M2 = { ["auto_ion"] = "code1", },
		M3 = { ["auto_ion"] = "code1", },
		ALERT = { ["auto_ion"] = "code1", },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

---NOP