function Draw3DText(coords, str, colour)
    local onScreen, screenX, screenY = World3dToScreen2d(coords.x, coords.y, coords.z)
    local camCoords = GetGameplayCamCoord()
    local scale = 200 / (GetGameplayCamFov() * #(camCoords - coords))

    if onScreen then
        SetTextScale(1.0, 0.5 * scale)
        SetTextFont(4)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextProportional(1)
        SetTextOutline()
        SetTextCentre(1)

        if colour == "red" then
            SetTextColour(255, 0, 0, 255)
        elseif colour == "white" then
            SetTextColour(255, 255, 255, 255)
        end

        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(str)
        EndTextCommandDisplayText(screenX, screenY)
    end
end

RegisterNetEvent('Jobtext:Command:ShowMe3D', function(senderId, msg, colour)
    local sender = GetPlayerFromServerId(senderId)
    CreateThread(function()
        local displayTime = 5000 + GetGameTimer()

        while displayTime > GetGameTimer() do
            local targetPed = GetPlayerPed(sender)
            local targetCoords = GetEntityCoords(targetPed)
            Draw3DText(targetCoords, msg, colour)
            Wait(0)
        end
    end)
end)
