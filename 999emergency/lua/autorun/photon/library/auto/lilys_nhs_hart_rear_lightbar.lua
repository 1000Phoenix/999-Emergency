AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Lilys New Whelen Justice HART Back UK"

local COMPONENT = {}

COMPONENT.Model = "models/lonewolfie/emergency/premier_hazard_defender.mdl"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {
	{ 1, 2 }, -- Mount
	{ 2, 1 }, -- Airels
}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	justice_forward_steady = {
		AngleOffset = -90,
		W = 3.46,
		H = 3.3,
		Sprite = "sprites/emv/justice_1x3",
		Scale = 1,
		WMult = 2.25,
	},
	justice_forward = {
		AngleOffset = -90,
		W = 3.46,
		H = 3.3,
		Sprite = "sprites/emv/justice_1x3",
		Scale = 1,
		WMult = 2.25,
	},
	justice_front_corner = {
		AngleOffset = -90,
		W = 3.1,
		H = 3.3,
		Sprite = "sprites/emv/justice_1x3",
		Scale = 1,
		WMult = 2.25,
	},
	justice_rear_red = {
		AngleOffset = -90,
		W = 3.46,
		H = 3.3,
		Sprite = "sprites/emv/justice_1x3",
		Scale = 1,
		WMult = 2.25,
	},
}
COMPONENT.Positions = {
	-- Right Side
	[1] = { Vector( 1.65, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_forward_steady" },
	[2] = { Vector( 12.95, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	[3] = { Vector( 16.25, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	-- Left Side
	[4] = { Vector( -1.65, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_forward_steady" },
	[5] = { Vector( -12.95, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	[6] = { Vector( -16.25, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	-- Right F Side Corner
	[7] = { Vector( 22.25, 2.27, 3.85 ), Angle( 0, -40, 0 ), "justice_front_corner" },
	[8] = { Vector( 20.25, 4.4, 3.85 ), Angle( 0, -50, 0 ), "justice_front_corner" },
	-- Left F Side Corner
	[9] = { Vector( -22.25, 2.27, 3.85 ), Angle( 0, 40, 0 ), "justice_front_corner" },
	[10] = { Vector( -20.25, 4.4, 3.85 ), Angle( 0, 50, 0 ), "justice_front_corner" },
	-- Right B Side Corner
	[11] = { Vector( 22.25, -1.87, 3.85 ), Angle( 0, -135, 0 ), "justice_front_corner" },
	[12] = { Vector( 20.25, -4, 3.85 ), Angle( 0, -135, 0 ), "justice_front_corner" },
	-- Left B Side Corner
	[13] = { Vector( -22.25, -1.87, 3.85 ), Angle( 0, 135, 0 ), "justice_front_corner" },
	[14] = { Vector( -20.25, -4, 3.85 ), Angle( 0, 135, 0 ), "justice_front_corner" },
	-- Right R Side 
	[15] = { Vector( 5.65, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_rear_red" },
	[16] = { Vector( 9, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_rear_red" },
	-- Left R Side 
	[17] = { Vector( -5.65, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_rear_red" },
	[18] = { Vector( -9, -5.1, 3.85 ), Angle( 0, 180, 0 ), "justice_rear_red" },

}

COMPONENT.Sections = {
	["justice_forward_steady"] = {
	    [1] = {
			{ 1, B }, { 4, B },
		},
	},	
	["justice_forward"] = {
	    [2] = {
		{ 2, B }, { 3, B }, 
		},
		[1] = {
		 { 5, B }, { 6, B },
			},
	},	
	["justice_front_corner"] = {
	    [2] = {
		{ 7, B }, { 8, B }, { 11, B }, { 12, B },
		},
		[1] = {
		{ 9, B }, { 10, B }, { 13, B }, { 14, B },
			},
	},	
	["justice_rear_red"] = {
	    [1] = {
			{ 15, R },{ 16, R },
		},
		[2] = {
			{ 17, R },{ 18, R },
		},
	},		
}
COMPONENT.Patterns = {
	["justice_forward_steady"] = {
		["code3"] = { 1 },
		["code2"] = { 1 },
		["code1"] = { 1 },
	},	
	["justice_forward"] = {
         ["code3"] = {
		0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
        },
		 ["code2"] = {
			0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1
		},  
		 ["code1"] = {
			0,0,1,1,0,1,0,0,2
		}, 
	},
	["justice_front_corner"] = {
		["code3"] = {
			0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["code2"] = {
			0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1
	   },  
		["code1"] = {
			0,0,1,1,0,1,0,0,2
	   }, 
   },
   ["justice_rear_red"] = {
	["code3"] = {
		0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
   },
	["code2"] = {
		0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1
   },  
	["code1"] = {
		0,0,1,1,0,1,0,0,2
   }, 
},
}

COMPONENT.Modes = {
    Primary = {
            M1 = {
			["justice_forward"] = "code1",
			["justice_front_corner"] = "code1",
			["justice_forward_steady"] = "code1",
			["justice_rear_red"] = "off",

            },
            M2 = {
			["justice_forward"] = "code3",
			["justice_front_corner"] = "code3",
			["justice_forward_steady"] = "code3",
			["justice_rear_red"] = "off",

            },
            M3 = {
			["justice_forward"] = "code3",
			["justice_front_corner"] = "code3",
			["justice_forward_steady"] = "code3",
			["justice_rear_red"] = "off",
			},
        },
    Auxiliary = {
			R1 = {
			},
			R2 = {
				["justice_rear_red"] = "code3",
				["justice_forward"] = "code3",
				["justice_front_corner"] = "code3",
				["justice_forward_steady"] = "off",
			
			},
            C = {
                
            },
            L = {
                
            },
            R = {
                
            },
            D = {
                
            }
        },
    --Illumination = {

    --},
}

EMVU:AddAutoComponent( COMPONENT, name )