AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Lilys Premier Hazard Sovereign"

local COMPONENT = {}

COMPONENT.Model = "models/lonewolfie/emergency/premier_hazard_sovereign.mdl"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {
	{ 1, 1 }, -- Mount
	{ 2, 1 }, -- Airels
}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	justice_forward = {
		AngleOffset = -90,
		W = 3.2,
		H = 4,
		Sprite = "sprites/emv/legacy_direct",
		Scale = 1,
		WMult = 2.25,
	},
	justice_front_corner = {
		AngleOffset = -90,
		W = 6,
		H = 4,
		Sprite = "sprites/emv/legacy_direct",
		Scale = 1,
		WMult = 2.25,
	},
	rear_reds = {
		AngleOffset = -90,
		W = 6.3,
		H = 4,
		Sprite = "sprites/emv/legacy_direct",
		Scale = 1,
		WMult = 2.25,
	},
}
COMPONENT.Positions = {
	-- Right Side
	[1] = { Vector( 1.88, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	[2] = { Vector( 8.3, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	[3] = { Vector( 4.82, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	[15] = { Vector( 11.24, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	-- Left Side
	[4] = { Vector( -1.88, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	[5] = { Vector( -8.3, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	[6] = { Vector( -4.82, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	[16] = { Vector( -11.24, 5.5, 3.85 ), Angle( 0, 0, 0 ), "justice_forward" },
	-- Right F Side Corner
	[7] = { Vector( 21.4, 3.6, 3.85 ), Angle( 0, -46.5, 0 ), "justice_front_corner" },
	[8] = { Vector( 15.7, 3.68, 3.85 ), Angle( 0, -46.5, 0 ), "justice_front_corner" },
	-- Left F Side Corner
	[9] = { Vector( -21.4, 3.6, 3.85 ), Angle( 0, 46.5, 0 ), "justice_front_corner" },
	[10] = { Vector( -15.7, 3.68, 3.85 ), Angle( 0, 46.5, 0 ), "justice_front_corner" },
	-- Right B Side Corner
	[11] = { Vector( 21.5, -3.6, 3.85 ), Angle( 0, -133.5, 0 ), "justice_front_corner" },
	[12] = { Vector( 15.7, -3.68, 3.85 ), Angle( 0, -135, 0 ), "justice_front_corner" },
	-- Left B Side Corner
	[13] = { Vector( -21.5, -3.6, 3.85 ), Angle( 0, 135.5, 0 ), "justice_front_corner" },
	[14] = { Vector( -15.7, -3.68, 3.85 ), Angle( 0, 135, 0 ), "justice_front_corner" },
	-- Rear Back
	[17] = { Vector( 1.88, -5.3, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	[18] = { Vector( -4.82, -5.3, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	[19] = { Vector( -1.88, -5.3, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	[20] = { Vector( 4.82, -5.3, 3.85 ), Angle( 0, 180, 0 ), "justice_forward" },
	-- Rear Reds
	[21] = { Vector( -9.8, -5.3, 3.85 ), Angle( 0, 180, 0 ), "rear_reds" },
	[22] = { Vector( 9.8, -5.3, 3.85 ), Angle( 0, 180, 0 ), "rear_reds" },


}

COMPONENT.Sections = {
	["justice_forward"] = {
	    [2] = {
			{ 1, B }, { 2, B }, { 3, B }, { 15, B }, { 17, B }, { 20, B },
		},
		[1] = {
			{ 4, B }, { 5, B }, { 6, B }, { 16, B }, { 18, B }, { 19, B },
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
		["rear_reds"] = {
	    [2] = {
			{ 21, DR },
		},
		[1] = {
			{ 22, DR },
			},
	},		
}
COMPONENT.Patterns = {
	["justice_forward"] = {
		["code3"] = {
	   		0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["code2"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2,
	   },  
		["code1"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2
	   }, 
   },
   ["justice_front_corner"] = {
		["code3"] = {
	   		0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["code2"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2
	   },  
		["code1"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2
	   }, 
  },
  ["rear_reds"] = {
		["code3"] = {
	   0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["code1"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2,
	   },
  }
}

COMPONENT.Modes = {
    Primary = {
            M1 = {
			["justice_forward"] = "code1",
			["justice_front_corner"] = "code1",
			["rear_reds"] = "off",

            },
            M2 = {
			["justice_forward"] = "code3",
			["justice_front_corner"] = "code3",
			["rear_reds"] = "off",
            },
            M3 = {
			["justice_forward"] = "code3",
			["justice_front_corner"] = "code3",
			["rear_reds"] = "off",
			},
        },
    Auxiliary = {
			R1 = {
				["justice_front_corner"] = "code1",
				["justice_forward"] = "off",
				["rear_reds"] = "code1",
			},
			R2 = {
				["justice_front_corner"] = "code3",
				["justice_forward"] = "code3",
				["rear_reds"] = "code3",
			
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