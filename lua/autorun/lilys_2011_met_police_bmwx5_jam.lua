AddCSLuaFile()

local VehicleName = "2011 Met Police BMW X5 [Lily]"

local EMV = {}
local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

EMV.Siren = 5
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- fbumper
	{ 2, 1 }, -- rbumper
	{ 3, 0 }, -- blank
	{ 4, 0 }, -- hood
	{ 5, 0 }, -- doortrim
	{ 6, 0 }, -- skirt
	{ 7, 0 }, -- wing
	{ 8, 2 }, -- numberplate
	{ 9, 0 }, -- wheels
	{ 10, 0 }, -- roofrack
	{ 11, 0 }, -- towbar
	{ 12, 1 }, -- privacy_glass
	{ 13, 1 }, -- lights_dash
	{ 14, 2 }, -- lights_grill_lower
	{ 15, 1 }, -- lights_grill_higher
	{ 16, 1 }, -- lights_rearwindow
	{ 17, 4 }, -- lightbar
	{ 18, 0 }, -- interior_equiptment
	{ 19, 0 }, -- window_decal
	{ 20, 0 }, -- clamped1
	{ 21, 0 }, -- clamped2
	{ 22, 0 }, -- clamped3
}

EMV.Auto = {
{
		ID = "Lilys Premier Hazard Sovereign",
		Scale = 1.15,
		Pos = Vector( 0, -15, 84.2 ),
		Ang = Angle( 0, 0, 0 )
},
{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 12, 116.5, 31.5 ),
		Ang = Angle( 0, -90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Phase = "A"
},
{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -12, 116.5, 31.5 ),
		Ang = Angle( 0, -90, 0 ),
        Color1 = "BLUE",
        Color2 = "BLUE",
        Color3 = "BLUE",
        Phase = "B"
},
{
ID = "Whelen M9",
Scale =  1,
Pos = Vector( 13.25 , 111.25 , 26.5),
Ang = Angle( 90, 180, 0 ),
Color1 = "WHITE",
Color2 = "WHITE",
Phase = "TTA"
},
{
ID = "Whelen M9",
Scale =  1,
Pos = Vector( -13.25 , 111.25 , 26.5),
Ang = Angle( 90, 180, 0 ),
Color1 = "WHITE",
Color2 = "WHITE",
Phase = "TTB"
},
}

EMV.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 1.25,
		WMult = 1.25,
	},
}

EMV.Positions = {
	[1] = { Vector( 37.5, 110.3, 29.5 ), Angle( 0, -16.25, 0 ), "headlight" },
	[2] = { Vector( -37.5, 110.3, 29.5 ), Angle( 0, 16.25, 0 ), "headlight" },
}

EMV.Sections = {

	["headlight"] = {
        [1] = {
        { 1, CW },
		},
		[2] = {
		{ 2, CW },
		},
	},
}

EMV.Patterns = {
   ["headlight"] = {  
	["on"] = {
		1,1,2,2,1,0,1,1,2,2,1,1,2,2,1,1,2,2,1,1,0,2,2,1,1,2,2,1,1,2,2,0
  	 	},
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
        { 
            Name = "RED1", 
            Stage = "R1", 
            Components = {
            ID = "Lilys 2015 NHS M7",
            Stage = "M1",
            },
            Disconnect = {} 
		},
		{ 
            Name = "RED2", 
            Stage = "R2", 
            Components = {},
            Disconnect = {} 
        },
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily",
	Model = "models/lonewolfie/bmw_x5_48i_pol.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/lwCars/bmw_x5_48i.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
