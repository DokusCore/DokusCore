--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
description 'DokusCore - A RedM Framework - By DevDokus'
author 'DevDokus Github'
version '0.4.1'
dependencies { 'mysql-async', 'pNotify' }
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
shared_scripts {
  '[ Configs ]/[ Core ]/*.lua',
  '[ Configs ]/[ Modules ]/*.lua',
  '[ Core ]/[ System ]/*.lua',
  '[ Core ]/[ System ]/[ Language ]/*.lua',
  '[ Core ]/[ System ]/[ Core ]/Config.lua'
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
client_scripts {
  '[ Core ]/[ Client ]/*.lua',
  '[ Core ]/[ Client ]/[ JS ]/*.js',
  '[ Core ]/[ System ]/[ Menu ]/DokusMenu.lua',
  '[ Core ]/[ Client ]/[ Commands ]/*.lua',
  '[ Core ]/[ Client ]/[ Commands ]/[ Admin ]/*.lua',
  '[ Core ]/[ Client ]/[ Utilities ]/*.lua',
  '[ Core ]/[ Client ]/[ Callbacks ]/*.lua',
  '[ Core ]/[ System ]/[ Core ]/Client.lua',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
server_scripts {
  '@mysql-async/lib/MySQL.lua',
  '[ Core ]/[ Server ]/*.lua',
  '[ Core ]/[ Server ]/[ Callbacks ]/*.lua',
  '[ Core ]/[ System ]/[ Core ]/Server.lua',
  '[ Core ]/[ System ]/[ Core ]/[ Licenses ]/*.lua',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
ui_page 'UI/index.html'
files {
  'UI/index.html',

  'UI/ChatStyle/*.js',
  'UI/ChatStyle/*.css',

  "UI/Sounds/js/sounds.js",
  "UI/Sounds/ogg/*.ogg",

  "UI/Hud/assets/WesternBangBang.otf",
  "UI/Hud/assets/*.png",
  "UI/Hud/hud.html",
  "UI/Hud/hud.css",
  "UI/Hud/hud.js",
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
chat_theme 'gtao' {
    styleSheet = 'UI/ChatStyle/style.css',
    script = 'UI/ChatStyle/shadow.js',
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
