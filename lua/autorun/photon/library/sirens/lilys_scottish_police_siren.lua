EMVU.AddCustomSiren("999emergency_Scottish_siren", {
    Name = "Scottish Sirens", -- Name visible in the context menu and in the HUD
    Category = "999Emergency", -- Category in the context menu
    Set = {
        {
            Name = "WAIL", -- Name visible in the HUD
            Sound = "emv/sirens/lilys_scottish_police_siren/wail.wav", -- Path to sound file (relative to the sound folder)
            Icon = "wail" -- Icon visible in the HUD
        },
        {
            Name = "YELP", -- Name visible in the HUD
            Sound = "emv/sirens/lilys_scottish_police_siren/yelp.wav", -- Path to sound file (relative to the sound folder)
            Icon = "yelp" -- Icon visible in the HUD
        },
        {
            Name = "PIER",
             Sound = "emv/sirens/lilys_scottish_police_siren/pier.wav",
            Icon = "pier"
        },
    },
    Horn = "emv/sirens/lilys_scottish_police_siren/horn.wav", -- (Optional) Path to the horn sound file
    Manual = "emv/sirens/lilys_scottish_police_siren/wail.wav",
    Volume = 450 -- (Optional) Volume of the siren
})