AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "British Fire Engine Lightbar"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/british_firetruck_lightbar.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 7.5,
		H = 6.8,
		Sprite = "sprites_apac/emv/whelen_lin6",
		WMult = .9,
		Scale = .5,
		EmitArray = {
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 )
		}
	},
	liberty_f_ang = {
		AngleOffset = -90,
		W = 15,
		H = 14,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		WMult = .9,
		Scale = .5,
		EmitArray = {
			Vector( 3.2, 0, 0 ),
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 ),
			Vector( -3.2, 0, 0 )
		}
    },
    liberty_r_ang = {
		AngleOffset = 90,
		W = 15,
		H = 14,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		WMult = .9,
		Scale = .5,
		EmitArray = {
			Vector( 3.2, 0, 0 ),
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 ),
			Vector( -3.2, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -16.81, 7.47, 0.99 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( -16.81, 7.47, -0.74 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[3] = { Vector( 16.81, 7.47, 0.99 ), Angle( 0, 0, 0 ), "liberty_f_main" },
    [4] = { Vector( 16.81, 7.47, -0.74 ), Angle( 0, 0, 0 ), "liberty_f_main" },
    
    [5] = { Vector( -23.02, 7.47, 0.99 ), Angle( 0, 0, 0 ), "liberty_f_main" },
    [6] = { Vector( -23.02, 7.47, -0.74 ), Angle( 0, 0, 0 ), "liberty_f_main" },

    [7] = { Vector( 23.02, 7.47, 0.99 ), Angle( 0, 0, 0 ), "liberty_f_main" },
    [8] = { Vector( 23.02, 7.47, -0.74 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[9] = { Vector( -36.71, 4.66, 1.01 ), Angle( 0, 32.64, 0 ), "liberty_f_ang", 1 },
    [10] = { Vector( -36.71, 4.66, -0.74 ), Angle( 0, 32.64, 0 ), "liberty_f_ang", 2 },
    
    [11] = { Vector( 36.71, 4.66, 1.01 ), Angle( 0, -32.64, 0 ), "liberty_f_ang", 1 },
	[12] = { Vector( 36.71, 4.66, -0.74 ), Angle( 0, -32.64, 0 ), "liberty_f_ang", 2 },

	[13] = { Vector( -36.71, -4.95, 1.01 ), Angle( 0, -32.64, 0 ), "liberty_r_ang", 1 },
    [14] = { Vector( -36.71, -4.95, -0.74 ), Angle( 0, -32.64, 0 ), "liberty_r_ang", 2 },

    [15] = { Vector( 36.71, -4.95, 1.01 ), Angle( 0, 32.64, 0 ), "liberty_r_ang", 1 },
    [16] = { Vector( 36.71, -4.95, -0.74 ), Angle( 0, 32.64, 0 ), "liberty_r_ang", 2 },


}

COMPONENT.Sections = {
	["auto_whelen_liberty_sx"] = {
		{
			{ 1, "_1" }, { 2, "_1" }, { 5, "_1" }, { 6, "_1" }, { 9, "_1" }, { 10, "_1" },{ 13, "_1" }, { 14, "_1" },
        },
        [2] = {
            { 3, "_1" }, { 4, "_1" }, { 7, "_1" }, { 8, "_1" },{ 11, "_1" }, { 12, "_1" },{ 15, "_1" }, { 16, "_1" },
        }
    },
}

COMPONENT.Patterns = {
	["auto_whelen_liberty_sx"] = {
        ["all"] = { 1 },
        ["code1"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
	},
}

COMPONENT.TrafficDisconnect = { 
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_liberty_sx"] = "code1",
			},
			M2 = {
				["auto_whelen_liberty_sx"] = "code1",                		
			},
			M3 = {		
				["auto_whelen_liberty_sx"] = "code1",                	
			}
		},
	Auxiliary = {
			C = {
			},
			L = {
			},
			R = {
			},
		},
	Illumination = {
		L = {
		},
		R = {
		},
		F = {
		},
		T = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
