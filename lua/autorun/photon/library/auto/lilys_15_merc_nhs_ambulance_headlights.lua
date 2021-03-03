-- models/sprops/cylinders/size_2/cylinder_3x3.mdl
 -- Created by Lily-Rose#0961
  -- Editing/Changing/Reuploading/Claiming this work as yours, IS NOT ALLOWED! 
   -- Contact Lily on Steam or Discord if you want to request Permission!
    -- This includes you too Storm <3
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

local name = "Lilys 2015 Mercedes Ambulance Headlights"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "WHITE",
	[4] = "C_WHITE"
}

COMPONENT.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 18,
		H = 15.8,
		Sprite = "sprites/emv/circular_src",
		WMult = 1.2,
		Scale = .75,
		EmitArray = {
			Vector( 1.25, 0, 0 ),
			Vector( -1.25, 0, 0 )
		}
	},
	grille = {
		AngleOffset = -90,
		W = 3.5,
		H = 2.8,
		Sprite = "sprites/emv/justice_1x3",
		WMult = 1.2,
		Scale = .75,
		EmitArray = {
			Vector( 1.25, 0, 0 ),
			Vector( -1.25, 0, 0 )
		}
	},
		lightbar_outer = {
		AngleOffset = -90,
		W = 7.5,
		H = 4.2,
		Sprite = "sprites/emv/emv_whelen_m9",
		WMult = 1.2,
		Scale = .75,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 2.95, 0, 0 ),
			Vector( -2.95, 0, 0 ),
		}
	},
}


COMPONENT.Positions = {

	-- Headlight Flashers
	[1] = { Vector( 111, 35, 38.5 ), Angle( 0, -55, 0 ), "headlight", 10 },
	[2] = { Vector( 111.5, -33, 38.5 ), Angle( 0, -125, 0 ), "headlight", 10 },
	-- Grille Lights
	[3] = { Vector( 117.5, 15.12, 40.45 ), Angle( 0, -90, 0 ), "grille", 10 },
	[4] = { Vector( 118.75, 13.5, 36.05 ), Angle( 0, -87.5, 0 ), "grille", 10 },
	[5] = { Vector( 117.5, -13.5, 40.45 ), Angle( 0, -95, 0 ), "grille", 10 },
	[6] = { Vector( 118.75, -12, 36.05 ), Angle( 0, -92, 0 ), "grille", 10 },

}


COMPONENT.Sections = {
	["headlights"] = {
		[1] = { { 1, "_4" } 
				},
		[2] = { { 2, "_4" } 
			},
		},
		["grille"] = {
			[1] = { { 3, "_1" }, { 6, "_3" },
					},
			[2] = { { 5, "_1" }, { 4, "_3" },
				},
			},
		}
-- To DO LIST
-- Make the patterns for this lightbar []
-- Make sure they work []
-- Add Illumation (Side, Front, Back & ALL) []
-- Faster phases for higher codes []

COMPONENT.Patterns = {
	["headlights"] = {
		["Stage1"] = {1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2,},
		["Stage2"] = {0,1,0,0,0,2,0,0,0,1,0,1,0,0,0,2,0,0,0,1},
		["Stage3"] = {1,0,1,0,1,0,2,0,2,0,2,0,1,0,1,0,1,0,2,0,2,0,2,0},
	},
	["grille"] = {
		["Stage1"] = {1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2,},
		["Stage2"] = {0,1,0,0,0,2,0,0,0,1,0,1,0,0,0,2,0,0,0,1},
		["Stage3"] = {1,0,1,0,1,0,2,0,2,0,2,0,1,0,1,0,1,0,2,0,2,0,2,0},
	},
}	


COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["headlights"] = "Stage1",
				["grille"] = "Stage1",
				["red1"] = "off",
				["red2"] = "off",
			},
			M2 = {
				["headlights"] = "Stage2",
				["grille"] = "Stage2",
				["red1"] = "off",
				["red2"] = "off",
			},
			M3 = {
				["headlights"] = "Stage3",
				["grille"] = "Stage3",
				["red1"] = "off",
				["red2"] = "off",
			}
		},
		Auxiliary = {
        R1 = {
				["headlights"] = "Stage1",
				["grille"] = "Stage1",
			},
			R2 = {
				["headlights"] = "Stage3",
				["grille"] = "Stage3",
			},
			C = {},
			L = {},
			R = {},
			D = {}
		},
	Illumination = {
		R = {

		},
		L = {

		},
		F = {

		},
		S = {

		},
		T = {

		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )