--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
description 'Advanced ID Card for RedM(EmRP) - By DevDokus'
author 'DevDokus Github'
version '0.0.6'
dependencies { 'mysql-async' }
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
shared_script {
  'Config.lua',
  '[ Data ]/*.lua',
  '[ Core ]/[ System ]/Shared.lua',
  '[ Core ]/[ System ]/Callbacks.lua',
  '[ Core ]/[ System ]/Languinator.lua',
  '[ Core ]/[ System ]/[ Language ]/*.lua',
  '[ Core ]/[ Server ]/[ Data ]/*.lua'
}

client_scripts {
  '[ Core ]/[ System ]/Client.lua',
  '[ Core ]/[ Client ]/*.lua',
  '[ Core ]/[ Client ]/[ JS ]/*.js',
  '[ Core ]/[ Client ]/[ Cmds ]/*.lua',
  '[ Core ]/[ Client ]/[ Cmds ]/[ Admin ]/*.lua',
  '[ Core ]/[ Client ]/[ Events ]/*.lua',
  '[ Core ]/[ Client ]/[ Loops ]/*.lua',
  '[ Core ]/[ Client ]/[ Modules ]/*.lua',
  '[ Core ]/[ System ]/[ Dependencies ]/*.lua',
}

server_scripts {
  '[ Core ]/[ System ]/SafeGuard.lua',
  -- '[ Core ]/[ Server ]/*.lua',
  '[ Core ]/[ Server ]/[ Cmds ]/*.lua',
  '[ Core ]/[ Server ]/[ Data ]/*.lua',
  '[ Core ]/[ Server ]/[ Events ]/*.lua',
  '[ Core ]/[ System ]/Server.lua',
  '@mysql-async/lib/MySQL.lua'
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
ui_page 'UI/index.html'
files {
  -- Core
  'UI/index.html',
  'UI/style.css',
  'UI/img/*.png',
  'UI/*.js',
  -- pNotify
  "UI/pNotify/pNotify.js",
  "UI/pNotify/noty.js",
  "UI/pNotify/noty.css",
  "UI/pNotify/themes.css",
  "UI/pNotify/crock.ttf",
  "UI/pNotify/sound-example.wav",
  "UI/pNotify/*.png",
  -- Custom Sounds
  "UI/Sounds/js/sounds.js",
  "UI/Sounds/ogg/*.ogg",
}

export "SetQueueMax"
export "SendNotification"

chat_theme 'gtao' {
    styleSheet = 'UI/style.css',
    script = 'UI/shadow.js',
    msgTemplates = {
    default = '<b>{0}</b><span>{1}</span>'
  }
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
