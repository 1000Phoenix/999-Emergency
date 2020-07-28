AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Lilys Premier Hazard Sovereign [Jam]"

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
	[9] = { Vector( -22.25, 2.27, 30.85 ), Angle( 0, 40, 0 ), "justice_front_corner" },
	[10] = { Vector( -20.25, 4.4, 30.85 ), Angle( 0, 50, 0 ), "justice_front_corner" },
	-- Right B Side Corner
	[11] = { Vector( 22.25, -1.87, 30.85 ), Angle( 0, -135, 0 ), "justice_front_corner" },
	[12] = { Vector( 20.25, -4, 30.85 ), Angle( 0, -135, 0 ), "justice_front_corner" },
	-- Left B Side Corner
	[13] = { Vector( -22.25, -1.87, 30.85 ), Angle( 0, 135, 0 ), "justice_front_corner" },
	[14] = { Vector( -20.25, -4, 30.85 ), Angle( 0, 135, 0 ), "justice_front_corner" },

}

COMPONENT.Sections = {
	["justice_forward"] = {
	    [2] = {
		{ 1, B }, { 2, B }, { 3, B }, { 15, B },
		},
		[1] = {
		{ 4, B }, { 5, B }, { 6, B }, { 16, B },
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
}
COMPONENT.Patterns = {
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
  }
}

COMPONENT.Modes = {
    Primary = {
            M1 = {
			["justice_forward"] = "code1",
			["justice_front_corner"] = "code1",

            },
            M2 = {
			["justice_forward"] = "code3",
			["justice_front_corner"] = "code3",
            },
            M3 = {
			["justice_forward"] = "code3",
			["justice_front_corner"] = "code3",
			},
        },
    Auxiliary = {
			R1 = {
				["justice_front_corner"] = "code1",
				["justice_forward"] = "off",
			},
			R2 = {
				["justice_front_corner"] = "code3",
				["justice_forward"] = "off",
			
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