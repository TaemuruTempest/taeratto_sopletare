resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'TaerAttO Sopletare'
description "TaerAttO vRP2"
author 'TaerAttO'
version '0.1.0'
url 'https://discord.io/secretTH'

dependency "vrp"

server_script {
    "@vrp/lib/utils.lua",
	"server.lua"
}

client_scripts {
    "@vrp/lib/utils.lua",
    "client.lua"
}

files {
    "client_vrp.lua",
    "cfg/sopletare.lua"
}