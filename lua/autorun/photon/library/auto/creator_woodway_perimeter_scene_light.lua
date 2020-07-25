AddCSLuaFile()

local W = "WHITE"

local COMPONENT = {}

COMPONENT.Model = "models/creator_2013/woodway_perimeter_scene_light.mdl"
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
		W = 9,
		H = 6.5,
		Sprite = "sprites/emv/whelen_freedom_main",
		Scale = 1,
		WMult = 1
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.75, 0, -0.5 ), Angle( 0, 90, 42.5 ), "woodway_perimeter_screne_light" },

}

COMPONENT.Sections = {}
COMPONENT.Patterns = {}

COMPONENT.Modes = {
	Primary = {},
	Auxiliary = {},
	Illumination = {
		F = { { 1, W } }
	}
}

function registerComponent( name, mode )
	local COMP = table.Copy( COMPONENT )
	COMP.Modes.Illumination[ mode ] = { { 1, W } }
	EMVU:AddAutoComponent( COMP, "Woodway Perimeter Scene Light " .. name )
end

registerComponent( "Left", "L" )
registerComponent( "Right", "R" )
registerComponent( "Rear", "B" )