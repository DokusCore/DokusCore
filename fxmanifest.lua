--------------------------------------------------------------------------------
----------------------------------- DokusCore ----------------------------------
--------------------------------------------------------------------------------
description 'DokusCore - A RedM Framework - By DevDokus'
author 'DevDokus Github - https://DokusCore.Com'
version '0.7.22'
-- version '-----' -- For development
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
shared_scripts {
  '[ Configs ]/[ Core ]/*.*',
  '[ Configs ]/[ Modules ]/*.*',
  '[ Core ]/[ System ]/[ Shared ]/*.*',
  '[ Core ]/[ System ]/[ Shared ]/[ Language ]/*.*',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
client_scripts {
  '[ Core ]/[ Client ]/*.*',
  '[ Core ]/[ System ]/[ Client ]/*.*',
  '[ Core ]/[ Client ]/[ Utilities ]/*.*',
  '[ Core ]/[ Client ]/[ Commands ]/*.*',
  '[ Core ]/[ Client ]/[ Events ]/*.*',
  '[ Core ]/[ Client ]/[ DokusZones ]/*.*',
  '[ Core ]/[ Client ]/[ Commands ]/[ Admin ]/*.*',
  '[ Core ]/[ Client ]/[ Callbacks ]/*.*',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
server_scripts {
  '@oxmysql/lib/MySQL.lua',
  '[ Core ]/[ Server ]/*.*',
  '[ Core ]/[ Server ]/[ Utilities ]/*.*',
  '[ Core ]/[ Server ]/[ Events ]/*.*',
  '[ Core ]/[ System ]/[ Server ]/*.*',
  '[ Core ]/[ Server ]/[ Callbacks ]/*.*',
  '[ Core ]/[ Server ]/[ DokusZones ]/*.*',
  '[ Core ]/[ Server ]/[ Events ]/[ Database ]/*.*',
  '[ Core ]/[ Server ]/[ Events ]/[ Normal ]/*.*',
  '[ Core ]/[ Server ]/[ Callbacks ]/[ Database ]/*.*'
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
ui_page 'UI/index.html'
files {
  'UI/index.html',
  'UI/ChatStyle/*.*',
  'UI/Sounds/js/*.*',
  'UI/Sounds/ogg/Music/*.*',
  'UI/Sounds/ogg/Sounds/*.*',
  'UI/Sounds/ogg/Dialogs/*.*',
  'UI/Sounds/ogg/Metabolism/*.*',
  'UI/IMG/*.*',
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















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
