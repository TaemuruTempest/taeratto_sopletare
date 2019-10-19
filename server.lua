local Proxy = module("vrp", "lib/Proxy")

local vRP = Proxy.getInterface("vRP")

async(function()
    vRP.loadScript("taeratto_sopletare", "server_vrp") -- load server_vrp.lua
end)