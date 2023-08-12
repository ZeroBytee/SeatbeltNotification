local isActivated = false

-- Register the key press event
RegisterKeyMapping('toggleAction', 'Toggle Action', 'keyboard', 'B')
RegisterCommand('toggleAction', function()
    if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(GetVehiclePedIsIn(ped, false), -1) == ped then
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