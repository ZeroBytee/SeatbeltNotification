local QBCore = exports['qb-core']:GetCoreObject()
local isActivated = false

-- Register the key press event
RegisterKeyMapping('toggleseatbelt', 'Toggle Seatbelt', 'keyboard', 'B')

--Register the command, but makes it so you can't toggle it using the command
RegisterCommand('toggleseatbelt', function()
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        isActivated = not isActivated

        if isActivated then
            QBCore.Functions.Notify("Je hebt uw gordel aangedaan", "success")
        else
            QBCore.Functions.Notify("Je hebt uw gordel uitgedaan", "error")
        end
    else
        print("not in vehicle")
    end
end, false)