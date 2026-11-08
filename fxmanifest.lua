fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-stamina'
author 'Pigeon Studios'
description 'Infinite stamina, or sprinting and swimming stamina that drains and recovers at the rates you choose.'
version '0.1.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-stamina'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-stamina'

client_scripts {
    'configuration/config.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
