EMVU.AddCustomSiren("999emergency_Scottish_siren", {
    Name = "999Emergency Scottish Siren", -- Name visible in the context menu and in the HUD
    Category = "999Emergency", -- Category in the context menu
    Set = {
        {
            Name = "WAIL", -- Name visible in the HUD
            Sound = "vcmod/els/scottish/wail.wav", -- Path to sound file (relative to the sound folder)
            Icon = "wail" -- Icon visible in the HUD
        },
        {
            Name = "YELP",
            Sound = "vcmod/els/scottish/yelp.wav",
            Icon = "yelp"
        },
        {
            Name = "PIER",
             Sound = "vcmod/els/scottish/pier.wav",
            Icon = "pier"
        },
        {
            Name = "HILO",
             Sound = "vcmod/els/scottish/hilo.wav",
            Icon = "hilo"
        },
    },
    Horn = "vcmod/els/scottish/airhorn.wav", -- (Optional) Path to the horn sound file
    Manual = "vcmod/els/scottish/wail.wav",
    Volume = 80 -- (Optional) Volume of the siren
})