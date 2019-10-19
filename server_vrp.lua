local TrtSopletare = class("TrtSopletare", vRP.Extension)

function TrtSopletare:__construct()
    vRP.Extension.__construct(self)
end

TrtSopletare.tunnel = {}

function TrtSopletare.tunnel:GetItem(skillcheck)
    local user = vRP.users_by_source[source]
    local wallet = 0

    if skillcheck then
        wallet = 500
    else
        wallet = 100
    end

    user:tryPayment(wallet)
    vRP.EXT.Base.remote._notify(user.source,"You get wallet ~g~$"..wallet)
    -- SendAlert(user.source, 'success', "คุณได้รับ "..wallet)
    
end

-- function SendAlert (source, type, text)
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = type, text = text, length = 4500 })
-- end

vRP:registerExtension(TrtSopletare)