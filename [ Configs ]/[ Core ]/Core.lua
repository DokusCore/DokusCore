--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
_ServerName     = 'DokusCore Development Server'
_DiscordInvite  = 'https://Discord.io/DokusCore'
_Language       = { Lang = 'en', Multi = true } --( In Progress )
_StartWealth    = { Money = 100.0, Gold = 0.0 }
_Moderation     = { SuperAdmin = 'owner', Admin = 'admin', User = 'user' }
_DokusMenu      = { Position = 'right', Theme = { Dark = true, Red = false } }
_ActionKey      = 0xCEFD9220 -- Default E
_EnablePVP      = true  -- Enable PVP Damage
_ShowMap        = true  -- Fog Of War ( Fogs the map )
_ShowMiniMap    = true  -- Force show the minimap or not
_EnableIMaps    = true  -- Fixes hole in map, buildings and many more
_BankDoors      = true  -- Opens the bank doors so players can enter.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- The Security contains the Black and whitelist Module.
-- When the whitelist is used you set `pending` to `true` to accept the player
--------------------------------------------------------------------------------
_Security = {
  Blacklist = { Enabled = true }, --( In Progress )
  Whitelist = { Enabled = false, NotifyAdmins = false }, --( In Progress )
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Commands = { --( In Progress )
  -- NOTE: Due to the new characters menu, this will become obsolite for a moment.
  -- It will be reimplemented at a later stage!!!! Chat commands are still working
  -- until all commands are designed in a quick to use menu
  --------------------------------------------------------------------------------
  -- Information Commands
  Discord     = { Users = true,  Admins = true,  SuperAdmins = true },
  Coords      = { Users = true,  Admins = true,  SuperAdmins = true },
  Music       = { Users = true,  Admins = true,  SuperAdmins = true },

  -- User Settings Commands
  SetCharName = { Users = true,  Admins = true,  SuperAdmins = true },
  Language    = { Users = true,  Admins = true,  SuperAdmins = true },

  -- Other Commands
  Scenario    = { Users = true,  Admins = true,  SuperAdmins = true },

  -- Admin Commands
  Teleport    = { Users = false, Admins = true,  SuperAdmins = true },
  GodMode     = { Users = false, Admins = true,  SuperAdmins = true },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--  These are the keys you can ue in game. Not adviced to make changes below  --
--               It can create a disturbance in the force!                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Keys = {
  ["MOUSE1"] = 0x07CE1E61, ["MOUSE2"] = 0xF84FA74F, ["MOUSE3"] = 0xCEE12B50, ["MWUP"] = 0x3076E97C,
  ["A"] = 0x7065027D, ["B"] = 0x4CC0E2FE, ["C"] = 0x9959A6F0, ["D"] = 0xB4E465B4, ["E"] = 0xCEFD9220,
  ["F"] = 0xB2F377E8, ["G"] = 0x760A9C6F, ["H"] = 0x24978A28, ["I"] = 0xC1989F95, ["J"] = 0xF3830D8E,
  ["L"] = 0x80F28E95, ["M"] = 0xE31C6A41, ["N"] = 0x4BC9DABB, ["O"] = 0xF1301666, ["P"] = 0xD82E0BD2,
  ["Q"] = 0xDE794E3E, ["R"] = 0xE30CD707, ["S"] = 0xD27782E3, ["U"] = 0xD8F73058, ["V"] = 0x7F8D09B8,
  ["W"] = 0x8FD015D8, ["X"] = 0x8CC9CD42, ["Z"] = 0x26E9DC00, ["RIGHTBRACKET"] = 0xA5BDCD3C,
  ["LEFTBRACKET"] = 0x430593AA, ["CTRL"] = 0xDB096B85, ["TAB"] = 0xB238FE0B, ["SHIFT"] = 0x8FFC75D6,
  ["SPACEBAR"] = 0xD9D0E1C0, ["ENTER"] = 0xC7B5340A, ["BACKSPACE"] = 0x156F7119, ["LALT"] = 0x8AAA0AD4,
  ["DEL"] = 0x4AF4D473, ["PGUP"] = 0x446258B6, ["PGDN"] = 0x3C3DD371, ["F1"] = 0xA8E3F467,
  ["F4"] = 0x1F6D95E5, ["F6"] = 0x3C0A40F2, ["1"] = 0xE6F612E4, ["2"] = 0x1CE6D9EB, ["3"] = 0x4F49CC4C,
  ["4"] = 0x8F9F9E58, ["5"] = 0xAB62E997, ["6"] = 0xA1FDE2A6, ["7"] = 0xB03A913B, ["8"] = 0x42385422,
  ["DOWN"] = 0x05CA7C52, ["UP"] = 0x6319DB71, ["LEFT"] = 0xA65EBAB4, ["RIGHT"] = 0xDEB34313,
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
