local isActivated = false

-- Register the key press event
RegisterKeyMapping('toggleseatbelt', 'Toggle Seatbelt', 'keyboard', 'B')

--Register the command, but makes it so you can't toggle it using the command
RegisterCommand('toggleseatbelt', function()
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        isActivated = not isActivated
        local message = isActivated and "Je hebt uw gordel aangedaan" or "Je hebt uw gordel uitgedaan"
        if isActivated then
            QBCore.Functions.Notify(message, "success")
        else
            QBCore.Functions.Notify(message, "error")
        end
    else
        print("not in vehicle")
    end
end, false)