local isActivated = false

-- Register the key press event
RegisterKeyMapping('toggleAction', 'Toggle Action', 'keyboard', 'B')
RegisterCommand('toggleAction', function()
    isActivated = not isActivated
    local message = isActivated and "~g~Je hebt uw gordel aangedaan" or "~r~Je hebt uw gordel uitgedaan"
    TriggerEvent("esx:showNotification", message)
end, false)