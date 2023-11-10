if Config.Framework == "QBCore" then
    local QBCore = exports["qb-core"]:GetCoreObject()

    RegisterCommand('doo', function(source, args)
        if #args < 1 then ServerNotification(source, "NOT GOOD", 2500, "error") return end
        local ped = GetPlayerPed(source)
        local pCoords = GetEntityCoords(ped)
        local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
        local colour = "white"
        local Players = QBCore.Functions.GetPlayers()
        for i=1, #Players do
            local Player = Players[i]
            local target = GetPlayerPed(Player)
            local tCoords = GetEntityCoords(target)
            if target == ped or #(pCoords - tCoords) < 20 then
                TriggerClientEvent('Jobtext:Command:ShowMe3D', Player, source, msg, colour)
            end
        end
    end, true)

    RegisterCommand('do', function(source, args)
        if #args < 1 then ServerNotification(source, "NOT GOOD", 2500, "error") return end
        local ped = GetPlayerPed(source)
        local pCoords = GetEntityCoords(ped)
        local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
        local colour = "red"
        local Players = QBCore.Functions.GetPlayers()
        for i=1, #Players do
            local Player = Players[i]
            local target = GetPlayerPed(Player)
            local tCoords = GetEntityCoords(target)
            if target == ped or #(pCoords - tCoords) < 20 then
                TriggerClientEvent('Jobtext:Command:ShowMe3D', Player, source, msg, colour)
            end
        end
    end, true)

elseif Config.Framework == "ESX" then
    local ESX = exports["es_extended"]:getSharedObject()   

    RegisterCommand('me', function(source, args)
        if #args < 1 then ServerNotification(source, "NOT GOOD", 2500, "error") return end
        local ped = GetPlayerPed(source)
        local pCoords = GetEntityCoords(ped)
        local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
        local colour = "white"
        local Players = ESX.GetPlayers()
        for i=1, #Players do
            local Player = Players[i]
            local target = GetPlayerPed(Player)
            local tCoords = GetEntityCoords(target)
            if target == ped or #(pCoords - tCoords) < 20 then
                TriggerClientEvent('Jobtext:Command:ShowMe3D', Player, source, msg, colour)
            end
        end
    end, true)

    RegisterCommand('do', function(source, args)
        if #args < 1 then ServerNotification(source, "NOT GOOD", 2500, "error") return end
        local ped = GetPlayerPed(source)
        local pCoords = GetEntityCoords(ped)
        local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
        local colour = "red"
        local Players = ESX.GetPlayers()
        for i=1, #Players do
            local Player = Players[i]
            local target = GetPlayerPed(Player)
            local tCoords = GetEntityCoords(target)
            if target == ped or #(pCoords - tCoords) < 20 then
                TriggerClientEvent('Jobtext:Command:ShowMe3D', Player, source, msg, colour)
            end
        end
    end, true)
end

