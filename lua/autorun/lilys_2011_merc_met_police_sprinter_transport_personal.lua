AddCSLuaFile()

local VehicleName = "2011 Met Police Sprinter Van [Lily]"

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
EMV.Skin = 7
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- Boot
	{ 2, 0 }, -- Step
	{ 3, 0 }, -- Towbar
	{ 4, 0 }, -- Trim
	{ 5, 1 }, -- Licence
	{ 6, 0 }, -- Screen_centre
	{ 7, 0 }, -- Screen_satnav
	{ 8, 0 }, -- Wheels
	{ 9, 0 }, -- Lightbar
	{ 10, 0 }, -- Grilllghts
	{ 11, 0 }, -- Sidewindow
	{ 12, 0 }, -- rearwindow
	{ 13, 0 }, -- clamped1
	{ 14, 0 }, -- clamped2
	{ 15, 0 }, -- clamped3
}

EMV.Auto = {}

EMV.Props = {
	{
    Model = "models/999pack/cage/cagelwb.mdl", 
     Pos = Vector( -23.5 , -86.5 , 73),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1,1,1),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	{
    Model = "models/999pack/sprinter/step.mdl", 
     Pos = Vector( 0 , -163 ,12),
     Ang = Angle( 0, 0.25 , 0 ),
     Scale = Vector(1.9,1.5,1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	{
    Model = "models/supermighty/emergency999_badge.mdl", 
     Pos = Vector( 15 , 133.8 , 34.5),
     Ang = Angle( 0, 82.5 , 0.5 ),
     Scale = Vector(1,1,1),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat Front Middle
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -0 , 48 , 25),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.2,1.2, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat R1 S1
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -24 , -0 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat R1 S2
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -4.5 , -0 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat R1 S3
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( 15 , -0 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat R2 S1
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -24 , -35 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat R2 S2
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -4.5 , -35 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
		// Seat R3 S1
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -24 , -65 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
	// Seat R3 S2
	{
    Model = "models/999pack/sprinter/chair.mdl", 
     Pos = Vector( -4.5 , -65 , 20),
     Ang = Angle( 0, -90 , 0 ),
     Scale = Vector(1.25,1.25, 1.5),
     Skin = 0,
	RenderGroup = RENDERGROUP_OPAQUE,
	RenderMode = RENDERMODE_NONE,
    },
}

// 


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Photon: 999Emergency",
	Author = "Lily, MattDavidJ, SuperMighty, 999Emergency",
	Model = "models/LoneWolfie/matt_sprinter_lwb.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/matt_sprinter.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "2011_met_police_sprinter_van_[lily]_17396989", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
