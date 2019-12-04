local TrtSopletare = class("TrtSopletare", vRP.Extension)

function TrtSopletare:__construct()
    vRP.Extension.__construct(self)
end

TrtSopletare.tunnel = {}

function TrtSopletare.tunnel:GetItem(item)
    local user = vRP.users_by_source[source]
    
    user:tryGiveItem(item, 1, false, false)
    -- vRP.EXT.Base.remote._notify(user.source, "You get wallet ~g~$"..wallet)
    SendAlert(user.source, 'success', "You get "..item)
    
end

function SendAlert (source, type, text)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = type, text = text, length = 4500 })
end

vRP:registerExtension(TrtSopletare)