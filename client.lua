local Proxy = module("vrp", "lib/Proxy")

local vRP = Proxy.getInterface("vRP")

async(function()
	vRP.loadScript("taeratto_sopletare", "client_vrp")
end)