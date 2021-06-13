AddCSLuaFile()

local VehicleName = "[999Emergency] 2012 BMW 5 Series [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

EMV.Siren = 49
EMV.Skin = 9
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- exterior_trim
	{ 2, 2 }, -- interior_trim
	{ 3, 0 }, -- blank
	{ 4, 0 }, -- towbar
	{ 5, 0 }, -- badge_delete
	{ 6, 0 }, -- privacy_glass
	{ 7, 1 }, -- numberplate
	{ 8, 2 }, -- lightbar
	{ 9, 2 }, -- grill_lights
	{ 10, 1 }, -- dash_lights
	{ 11, 0 }, -- interior_equiptment
	{ 12, 1 }, -- mirror_lights
	{ 13, 0 }, -- window_decal
	{ 14, 0 }, -- ANPR_System
	{ 15, 1 }, -- rear_window_lights
	{ 16, 0 }, -- rear_bumper_lights
	{ 17, 0 }, -- wheels
	{ 18, 0 }, -- clamped1
	{ 19, 0 }, -- clamped2
}

EMV.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 2.85,
		WMult = 1.25,
	},
    	lightbar_front = {
		AngleOffset = -90,
		W = 6.35,
		H = 3.7,
		Sprite = "sprites/emv/legacy_direct",
		Scale = 1,
		WMult = 2.25,
	},
        lightbar_rear = {
		AngleOffset = -90,
		W = 6.35,
		H = 3.7,
		Sprite = "sprites/emv/legacy_direct",
		Scale = 1,
		WMult = 2.25,
	},
        lightbar_red = {
		AngleOffset = -90,
		W = 6.35,
		H = 3.7,
		Sprite = "sprites/emv/legacy_direct",
		Scale = 1,
		WMult = 2.25,
	},
}

EMV.Positions = {
--Fog Lights
    [1] = { Vector( 35.55, 105.75, 16.5 ), Angle( 0, -0.25, 0 ), "headlight" },
    [2] = { Vector( -35.55, 105.75, 16.5 ), Angle( 0, -0.25, 0 ), "headlight" },
--Lightbar Front
    --Right Side
	[3] = { Vector( 3.3, -12.5, 72.6 ), Angle( 0, 0, 0 ), "lightbar_front" },
    [4] = { Vector( 9.8, -12.5, 72.6 ), Angle( 0, 0, 0 ), "lightbar_front" },
    [5] = { Vector( 15.6, -14.6, 72.6 ), Angle( 0, -46.5, 0 ), "lightbar_front" },
    [6] = { Vector( 21.6, -14.6, 72.6 ), Angle( 0, -46.5, 0 ), "lightbar_front" },
    --Left Side
    [7] = { Vector( -3.3, -12.5, 72.6 ), Angle( 0, 0, 0 ), "lightbar_front" },
    [8] = { Vector( -9.8, -12.5, 72.6 ), Angle( 0, 0, 0 ), "lightbar_front" },
    [9] = { Vector( -15.6, -14.6, 72.6 ), Angle( 0, 46.5, 0 ), "lightbar_front" },
    [10] = { Vector( -21.6, -14.6, 72.6 ), Angle( 0, 46.5, 0 ), "lightbar_front" },
--Lightbar Rear
    --Right Side
    [11] = { Vector( 3.3, -23.5, 72.6 ), Angle( 0, 180, 0 ), "lightbar_rear" },
    [12] = { Vector( 15.65, -21.75, 72.6 ), Angle( 0, -132.5, 0 ), "lightbar_rear" },
    [13] = { Vector( 21.65, -21.75, 72.6 ), Angle( 0, -132.5, 0 ), "lightbar_rear" },
    --Left Side
    [14] = { Vector( -3.3, -23.5, 72.6 ), Angle( 0, 180, 0 ), "lightbar_rear" },
    [15] = { Vector( -15.65, -21.75, 72.6 ), Angle( 0, 132.5, 0 ), "lightbar_rear" },
    [16] = { Vector( -21.65, -21.75, 72.6 ), Angle( 0, 132.5, 0 ), "lightbar_rear" },
--Lightbar Reds
    [17] = { Vector( 9.3, -23.5, 72.6 ), Angle( 0, 180, 0 ), "lightbar_red" },
    [18] = { Vector( -9.3, -23.5, 72.6 ), Angle( 0, 180, 0 ), "lightbar_rear" },
}

EMV.Sections = {

	["headlight"] = {
        [1] = {
        { 1, W },
		},
		[2] = {
		{ 2, W },
		},
	},
    	["lightbar_front"] = {
        [1] = {
        { 3, B }, { 4, B }, { 5, B }, { 6, B },
		},
        [2] = {
        { 7, B }, { 8, B }, { 9, B }, { 10, B },
		},
	},
    	["lightbar_rear"] = {
        [1] = {
        { 11, B }, { 12, B }, { 13, B },
		},
        [2] = {
        { 14, B }, { 15, B }, { 16, B },
		},
	},
        ["lightbar_red"] = {
        [1] = {
        { 18, DR },
		},
        [2] = {
        { 17, DR },
		},
	},
}

EMV.Patterns = {
   ["headlight"] = {  
	["on"] = {
    0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
  	 	},
    ["off"] = {
        0
  	 	},
	},
    ["lightbar_front"] = {
		["All"] = {
	   0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["Front"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2
	   },  
		["Rear"] = {
		   0
	   }, 
   },
       ["lightbar_rear"] = {
		["All"] = {
	   0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["Front"] = {
		   0
	   },  
		["Rear"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2
	   }, 
   },
        ["lightbar_red"] = {
		["All"] = {
	   0,0,1,1,0,1,0,0,2,2,0,2,0,0,1,1,0,1,0,0,2,2,0,2,
	   },
		["Front"] = {
		   0
	   },  
		["Rear"] = {
		   0,0,1,1,0,1,0,0,2,2,0,2
	   }, 
   },
}

EMV.Auto = {
        {
		ID = "Lilys British BMW 530D Whelen Ion1",
        Scale = 0.825,
        Phase = "A",
		Pos = Vector( -13.8, 114.3, 30.8 ),
		Ang = Angle( -90.3, 60.1, -55.2 )
    },
    {
		ID = "Lilys British BMW 530D Whelen Ion1",
        Scale = 0.825,
        Phase = "B",
		Pos = Vector( 10.8, 114.3, 30.8 ),
		Ang = Angle( -90.3, 60.1, -55.2 )
	},
        {
		ID = "Lilys British BMW 530D Whelen Ion2",
        Scale = 0.825,
        Phase = "B",
		Pos = Vector( -10.8, 114.3, 30.8 ),
		Ang = Angle( -90.3, 60.1, -55.2 )
    },
    {
		ID = "Lilys British BMW 530D Whelen Ion2",
        Scale = 0.825,
        Phase = "A",
		Pos = Vector( 13.8, 114.3, 30.8 ),
		Ang = Angle( -90.3, 60.1, -55.2 )
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "REAR LIGHTING", Stage = "M1", Components = {["headlight"] = "off",["lightbar_front"] = "Rear",["lightbar_rear"] = "Rear",["lightbar_red"] = "Front",}, Disconnect = {} },
		{ Name = "FRONT LIGHTING", Stage = "M2", Components = {["headlight"] = "on",["lightbar_front"] = "Front",["lightbar_rear"] = "Front",["lightbar_red"] = "Front",}, Disconnect = {} },
		{ Name = "ALL LIGHTING", Stage = "M3", Components = {["headlight"] = "on",["lightbar_front"] = "All",["lightbar_rear"] = "All",["lightbar_red"] = "Front",}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "REDS REAR", Stage = "R0", Components = {["lightbar_red"] = "Rear",["headlight"] = "off",["lightbar_front"] = "Rear",["lightbar_rear"] = "Rear",}, Disconnect = {} },
		{ Name = "Reds FULL", Stage = "R1", Components = {["lightbar_red"] = "All",["headlight"] = "on",["lightbar_front"] = "All",["lightbar_rear"] = "All",}, Disconnect = {} },
	}
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "999Emergency - Photon",
	Author = "Lily",
	Model = "models/lonewolfie/bmw_530d_touring_pol.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/lwCars/999_530d_police.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "[999emergency]_2015_bmw_5_series_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
