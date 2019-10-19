resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description "TaerAttO vRP"

-- ui_page 'html/ui.html'

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
    -- 'html/ui.html',
    -- 'html/css/main.css',
    -- 'html/js/app.js',
}