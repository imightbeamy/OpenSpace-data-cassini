

return {
    ------------------------
    --     Osiris Rex     --
    ------------------------
    {
        Name = "OsirisRex",
        Parent = "SolarSystemBarycenter",
        Renderable = {
            Type = "RenderableModel",
            Body = "OSIRIS-REX",
            Geometry = {
                Type = "MultiModelGeometry",
                GeometryFile = "models/Cassini_66.obj",
                Magnification = 0,
            },
            Textures = {
                Type = "simple",
                Color =  "textures/cassiniTex.png",
            },
            Shading = {
                PerformShading = true,
                Fadeable = false,
                Ghosting = false,
            },
        },
        Transform = {
            Translation = {
                Type = "SpiceTranslation",
                Body = "OSIRIS-REX",
                Observer = "SUN",
            },
            Rotation = {
                Type = "SpiceRotation",
                SourceFrame = "ORX_SPACECRAFT",
                DestinationFrame = "GALACTIC",
            },
        },
    },

    -- Trail relative to Earth
    {
        Name = "OsirisRexTrailEarth",
        Parent = "Earth",
        Renderable = {
            Type = "RenderableTrailNew",
            -- Spice
            Body = "OSIRIS-REX",
            Frame = "IAU_EARTH",
            Observer = "EARTH",
            -- Optional rendering properties
            LineColor = { 0.9, 0.9, 0.0 },
            PointColor = { 0.9, 0.9, 0.0 },
            LineFade = 0.0, -- [0,1]
            RenderPart = 1,
            LineWidth = 2,
            ShowTimeStamps = false,
            RenderFullTrail = false,
            -- Time interval
            TimeRange = {
                Start = "2016 SEP 8 23:05:00.50",
                End = "2016 SEP 9 00:05:00",
            },
            SampleDeltaTime = 60, -- Seconds between each point
            SubSamples = 59,
        },
    },

    -- Trail relative to solar system barycenter
    {
        Name = "OsirisRexTrailSolarSystem",
        Parent = "SolarSystemBarycenter",
        Renderable = {
            Type = "RenderableTrailNew",
            -- Spice
            Body = "OSIRIS-REX",
            Frame = "GALACTIC",
            Observer = "SUN",
            -- Optional rendering properties
            LineColor = { 0.2, 0.9, 0.2 },
            PointColor = { 0.2, 0.9, 0.2 },
            LineFade = 0.0, -- [0,1]
            RenderPart = 0.13,
            LineWidth = 2,
            ShowTimeStamps = false,
            RenderFullTrail = false,
            -- Time interval
            TimeRange = {
                Start = "2016 SEP 8 23:05:00.50",
                End = "2023 SEP 24 12:00:00",
            },
            SampleDeltaTime = 3600, -- Seconds between each point
            SubSamples = 0,
        },
    },

    -- Trail relative to Bennu
    {
        Name = "OsirisRexTrailBennu",
        Parent = "BennuBarycenter",
        Renderable = {
            Type = "RenderableTrailNew",
            -- Spice
            Body = "OSIRIS-REX",
            Frame = "GALACTIC",
            Observer = BENNU_BODY,
            -- Optional rendering properties
            LineColor = { 0.9, 0.2, 0.9 },
            PointColor = { 0.9, 0.2, 0.9 },
            LineFade = 0.5, -- [0,1]
            RenderPart = 0.06,
            LineWidth = 2,
            ShowTimeStamps = false,
            RenderFullTrail = false,
            -- Time interval
            TimeRange = {
                Start = "2016 SEP 8 23:05:00.50",
                End = "2023 SEP 24 12:00:00",
            },
            SampleDeltaTime = 3600, -- Seconds between each point
            SubSamples = 3,
        },
    },


}
