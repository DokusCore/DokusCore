--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
description 'DokusCore - A RedM Framework - By DevDokus'
author 'DevDokus Github'
version '0.1.1'
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
  '[ Core ]/[ Client ]/[ Events ]/[ Callbacks ]/*.lua',
  '[ Core ]/[ Client ]/[ Loops ]/*.lua',
  '[ Core ]/[ Client ]/[ Modules ]/*.lua',
  '[ Core ]/[ System ]/[ Core ]/Client.lua',
  '[ Core ]/[ System ]/[ Dependencies ]/*.lua',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  '[ Core ]/[ System ]/SafeGuard.lua',
  '[ Core ]/[ Server ]/[ Cmds ]/*.lua',
  '[ Core ]/[ Server ]/[ Data ]/*.lua',
  '[ Core ]/[ Server ]/[ Events ]/*.lua',
  '[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/*.lua',
  '[ Core ]/[ System ]/Server.lua',
  '[ Core ]/[ System ]/[ Core ]/Server.lua',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
ui_page 'UI/index.html'
files {
  'UI/index.html',
  'UI/style.css',
  'UI/img/*.png',
  'UI/*.js',
  "UI/pNotify/pNotify.js",
  "UI/pNotify/noty.js",
  "UI/pNotify/noty.css",
  "UI/pNotify/themes.css",
  "UI/pNotify/crock.ttf",
  "UI/pNotify/sound-example.wav",
  "UI/pNotify/*.png",
  "UI/Sounds/js/sounds.js",
  "UI/Sounds/ogg/*.ogg",
  "UI/Hud/assets/WesternBangBang.otf",
  "UI/Hud/assets/*.png",
  "UI/Hud/hud.html",
  "UI/Hud/hud.css",
  "UI/Hud/hud.js",
}

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
