AddCSLuaFile()

local W = "WHITE"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/briishalley.mdl"
COMPONENT.Skin = 0
COMPONENT.NotLegacy = true
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[ 1 ] = "WHITE",
}

COMPONENT.Meta = {
	woodway_perimeter_screne_light = {
		AngleOffset = 90,
		W = 2,
		H = 2,
		Sprite = "sprites/emv/emv_whelen_tri",
		Scale = 0.75,
		WMult = 1
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.9, -0.98, 0 ), Angle( 180, 0, 0 ), "woodway_perimeter_screne_light" },
	[2] = { Vector( -0.9, -0.98, 0 ), Angle( 180, 0, 0 ), "woodway_perimeter_screne_light" },

}

COMPONENT.Sections = {}
COMPONENT.Patterns = {}

COMPONENT.Modes = {
	Primary = {},
	Auxiliary = {},
	Illumination = {
		F = { { 1, W }, { 2, W } }
	}
}

function registerComponent( name, mode )
	local COMP = table.Copy( COMPONENT )
	COMP.Modes.Illumination[ mode ] = { { 1, W }, { 2, W } }
	EMVU:AddAutoComponent( COMP, "SGM Whelen AllyLight " .. name )
end

registerComponent( "Left", "L" )
registerComponent( "Right", "R" )
registerComponent( "Rear", "B" )