AddCSLuaFile()

local name = "[999 Emergency] LAS Blue M7"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/m7/m7.mdl"
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
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25,
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25, 
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),		
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_left" },
	[2] = { Vector( -0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } }
	},
	["OnScene"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } }
	},
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 }
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["auto_ion"] = "code2",},
		M3 = {},
		ALERT = { ["auto_ion"] = "alert", },
	},
    Auxiliary = {
			OnScene = {
			},
			R1 = {
			},
			R2 = {
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

-- White

AddCSLuaFile()

local name = "[999 Emergency] LAS White M7"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/m7/m7.mdl"
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
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25,
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25, 
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),		
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_left" },
	[2] = { Vector( -0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_right" },

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
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["auto_ion"] = "code2",},
		M3 = {},
		ALERT = { ["auto_ion"] = "alert", },
	},
    Auxiliary = {
			OnScene = {
			["auto_ion"] = "off", 
			},
			R1 = {
			 ["auto_ion"] = "off", 
			},
			R2 = {
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

// Rear Reds Left

AddCSLuaFile()

local name = "[999 Emergency] LAS Red M7 Left"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/m7/m7.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25,
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25, 
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),		
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_left" },
	[2] = { Vector( -0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_right" },

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
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["auto_ion"] = "off",},
		M3 = {},
		ALERT = { ["auto_ion"] = "off", },
	},
    Auxiliary = {
			OnScene = {
			["auto_ion"] = "off", 
			},
			R1 = {
			 ["auto_ion"] = "code2A", 
			},
			R2 = {
			 ["auto_ion"] = "code2A", 
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

// Rear Reds Right

AddCSLuaFile()

local name = "[999 Emergency] LAS Red M7 Right"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/m7/m7.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25,
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 8.5,
		H = 6,
		WMult = 0.95,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .25, 
		EmitArray = {
			Vector( 3, 0.1, 0 ),
			Vector( 0, 0.1, 0 ),		
			Vector( -3, 0.1, 0 ),
		},
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_left" },
	[2] = { Vector( -0.68, 0, 0.62 ), Angle( 90, 90, 180 ), "auto_ion_right" },

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
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["auto_ion"] = "off",},
		M3 = {},
		ALERT = { ["auto_ion"] = "off", },
	},
    Auxiliary = {
			OnScene = {
			["auto_ion"] = "off", 
			},
			R1 = {
			 ["auto_ion"] = "code2B", 
			},
			R2 = {
			 ["auto_ion"] = "code2B", 
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

// Tier 3 Rear

AddCSLuaFile()

local A = "AMBER"
local R = "D_RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "[999 Emergency] LAS Whelen Tir3 Vertical"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/whelen/whelentir.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = -90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1,
		Scale = 1.9,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( 0, -0.9, 0 ), Angle( 90, 0, 180 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = { { 1, "_1" }, },
    },     
}

COMPONENT.Patterns = {
	["lightbar"] = {
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["lightbar"] = "code2",},
		M3 = {},
		ALERT = { ["lightbar"] = "code2", },
	},
    Auxiliary = {
			OnScene = {
			["lightbar"] = "off", 
			},
			R1 = {
			["lightbar"] = "off", 
			},
			R2 = {
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
	Illumination = {
		T = {
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

// Tier 3 Fender Right

AddCSLuaFile()

local A = "AMBER"
local R = "D_RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "[999 Emergency] LAS Whelen Tir3 Fender Right"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/whelen/whelentir.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = -90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1,
		Scale = 1.9,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( 0, -0.9, 0 ), Angle( 90, -160, 20 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = { { 1, "_1" }, },
    },     
}

COMPONENT.Patterns = {
	["lightbar"] = {
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["lightbar"] = "code2",},
		M3 = {},
		ALERT = { ["lightbar"] = "code2", },
	},
    Auxiliary = {
			OnScene = {
			["lightbar"] = "off", 
			},
			R1 = {
			["lightbar"] = "off", 
			},
			R2 = {
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
	Illumination = {
		T = {
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

// Tier 3 Fender Left

AddCSLuaFile()

local A = "AMBER"
local R = "D_RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "[999 Emergency] LAS Whelen Tir3 Fender Left"

local COMPONENT = {}

COMPONENT.Model = "models/999pack/whelen/whelentir.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = -90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1,
		Scale = 1.9,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( 0, -0.9, 0 ), Angle( 90, -200, -20 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = { { 1, "_1" }, },
    },     
}

COMPONENT.Patterns = {
	["lightbar"] = {
		["code2"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["alert"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
		["alertA"] = {  1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["off"] = { 0 },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["lightbar"] = "code2",},
		M3 = {},
		ALERT = { ["lightbar"] = "code2", },
	},
    Auxiliary = {
			OnScene = {
			["lightbar"] = "off", 
			},
			R1 = {
			["lightbar"] = "off", 
			},
			R2 = {
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
	Illumination = {
		T = {
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

// Grille Lights
AddCSLuaFile()

local name = "[999 Emergency] LAS Grille Lights"

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
		["off"] = { 0 }
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["auto_ion"] = "code2",},
		M3 = {},
		ALERT = { ["auto_ion"] = "code2", },
	},
    Auxiliary = {
			OnScene = {
			["auto_ion"] = "off", 
			},
			R1 = {
			["auto_ion"] = "off", 
			},
			R2 = {
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
	Illumination = {
		T = {
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
