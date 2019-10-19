local cfg = module("taeratto_sopletare", "cfg/sopletare")

local TrtSopletare = class("TrtSopletare", vRP.Extension)

cachedBins = {}
closestBin = cfg.obj_interaction
skillCheck = false
isWorking = false

entity = nil
isControl = false
closestObj = false
numberOfarrr = 0


function TrtSopletare:__construct()
    vRP.Extension.__construct(self)

    Citizen.CreateThread(function()
        Citizen.Wait(5000)
        while(true)do
            isControl = IsControlJustReleased(0, 38)
            Citizen.Wait(0)
        end
    end)

    Citizen.CreateThread(function()
        while true do
            
            local sleep = 1000
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            if not isWorking then
            for i = 1, #closestBin do
                local objtmp = closestBin[i]
                for j = 1, #objtmp.objname do
                    local objnametmp = objtmp.objname
                    local x = GetClosestObjectOfType(playerCoords, 1.0, GetHashKey(objnametmp[j]), false, false, false)
                    entity = nil
                    if DoesEntityExist(x) then
                        entity = x
                        bin    = GetEntityCoords(entity)
                        closestObj = true
                        sleep = 1000
                        numberOfarrr = i
                        break
                    else
                        closestObj = false
                        sleep = 1000
                        -- numberOfarrr = 0
                    end
                end
            end
            end
            Citizen.Wait(sleep)
        end
    end)

    Citizen.CreateThread(function()
        while(true)do
            if isControl and not isWorking and closestObj then
                isWorking = true
                if not cachedBins[entity] then
                    -- OpenBin(entity, self)
                    exports['mythic_progbar']:Progress({
                        name = "unique_action_name",
                        duration = closestBin[numberOfarrr].duration_time,
                        label = closestBin[numberOfarrr].label_progbar,
                        useWhileDead = false,
                        canCancel = true,
                        controlDisables = {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        },
                        animation = closestBin[numberOfarrr].task_or_anim,
                            prop = closestBin[numberOfarrr].prop_progbar,
                            propTwo = closestBin[numberOfarrr].prop_two_progbar,
                    }, function(status)
                        if not status then -- and skillCheck then
                            cachedBins[entity] = true
                            -- TriggerServerEvent(Config.triggerEventName, skillCheck)
                            self.remote._GetItem(true)
                            ClearPedTasksImmediately(PlayerPedId())
                            isWorking = false
                            skillCheck = false
                        else
                            ClearPedTasksImmediately(PlayerPedId())
                            exports['mythic_notify']:SendAlert('error', closestBin[numberOfarrr].cancel_working)
                            isWorking = false
                            skillCheck = false
                        end
                    end)
                else
                    exports['mythic_notify']:SendAlert('error', closestBin[numberOfarrr].notify_cache_bin)
                    Citizen.Wait(5000)
                    isWorking = false
                end
            end
            Citizen.Wait(7)
        end
    end)

    Citizen.CreateThread(function()
        while(true)do
            if closestObj then
                DrawText3D(bin.x, bin.y, bin.z + 1.0, closestBin[numberOfarrr].show_help)
            end
            Citizen.Wait(7)
        end
    end)

    

end

-- NUI that get triggered on success
RegisterNUICallback('WorkingSuccess', function()
    SetNuiFocus(false, false)
    skillCheck = true
end)

-- NUI that get triggered on fail
RegisterNUICallback('WorkingFailed', function()
    SetNuiFocus(false, false)
    skillCheck = false
end)

local fontID = nil
Citizen.CreateThread(function()
	while fontID == nil do
		Citizen.Wait(5000)
    	fontID = exports['taeratto_base']:getFontID()
  	end
end)

DrawText3D = function(x, y, z, text)
    SetTextScale(0.55, 0.55)
    SetTextFont(fontID)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 400
    DrawRect(0.0, 0.0+0.0225, 0.007+ factor, 0.04, 0, 0, 0, 68)
    ClearDrawOrigin()
end

-- OpenBin = function(entity, self)
--     --[[ SetNuiFocus(true,true)
--                 SendNUIMessage({
--                     action = "opengame",
--                 }) ]]

    
-- end

TrtSopletare.tunnel = {}

vRP:registerExtension(TrtSopletare)
