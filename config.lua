Config = {}

Config.Enabled = true            -- master switch (starting state)
Config.Interval = 20000          -- ms between resets (keep under 30000)
Config.OnFoot = true             -- block the on-foot idle cam
Config.InVehicle = true          -- block the vehicle idle cam
Config.AllowToggleCommand = true -- registers /idlecam to toggle in game
