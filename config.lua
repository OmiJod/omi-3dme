Config = {}
Config.Framework = "QBCore" ---- QBCore / ESX

function Notification(msg, time, _type)
    TriggerEvent('QBCore:Notify', msg, "success") --- **You Can Change the Type if You want**
    -- exports["esx_notify"]:Notify("info", 3000, msg)
    -- exports["Venice-Notification"]:Notify(msg, time, _type) -- This Script is made With Venice - Notifiaction So If you have It You Can Uncomment This
    --- You Can Add Your Notification System Below 
end

function ServerNotification(source, msg, time, _type)
    TriggerClientEvent('QBCore:Notify', source, msg, "error")
    -- TriggerClientEvent('esx:showNotification', source, msg)
    -- TriggerClientEvent('codem-notification', source, msg, time, _type) -- https://codem.tebex.io/package/4947234
    -- TriggerClientEvent('okokNotify:Alert', source, 'Menu', msg, time, _tye) -- https://okok.tebex.io/package/4724993
    --- You Can Add Your Notification System Below 
end