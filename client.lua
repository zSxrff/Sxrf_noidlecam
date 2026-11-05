local enabled = Config.Enabled

CreateThread(function()
    while true do
        Wait(Config.Interval)
        if enabled then
            if Config.OnFoot then
                InvalidateIdleCam()
            end
            if Config.InVehicle then
                InvalidateVehicleIdleCam()
            end
        end
    end
end)

if Config.AllowToggleCommand then
    RegisterCommand('idlecam', function()
        enabled = not enabled
        print(('Idle cam blocking: %s'):format(enabled and 'ON' or 'OFF'))
    end, false)
end
