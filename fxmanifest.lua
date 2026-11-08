fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-cruise-control'
author 'Pigeon Studios'
description 'Cruise control on a key that holds your speed, caps it downhill, and lets go when you brake.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-cruise-control'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-cruise-control'

client_scripts {
    'configuration/config.lua',
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
