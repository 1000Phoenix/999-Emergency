local Category = "Perryn's Ported Vehicles"

local V = {
				// Required information
				Name =	"2015 Mercedes NHS Ambulance",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Perryn",
				Information = "Drive Carefully",
				Model =	"models/perrynsvehicles/2015_mercedes_nhs_ambulance/2015_mercedes_nhs_ambulance.mdl",

				KeyValues = {				
								vehiclescript =	"scripts/vehicles/perryn/2015_mercedes_nhs_ambulance.txt"
					    }
}

list.Set( "Vehicles", "perryn_2015_mercedes_nhs_ambulance", V )