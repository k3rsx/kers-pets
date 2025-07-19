fx_version 'cerulean'
game 'gta5'

author 'kersroot'

description 'This script forked from ErdemGoren'

lua54 'yes'

shared_scripts {
    'config.lua',
    'locales/*.lua'
}

server_scripts {
	'server/server.lua'
}

client_scripts {
	'client/client.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/img/*.png'
}

data_file 'DLC_ITYP_REQUEST' 'stream/pets.ytyp'

files {
    'stream/pets.ytyp'
}