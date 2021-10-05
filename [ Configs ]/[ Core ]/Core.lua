--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
_ServerName     = 'DokusCore Development Server'
_DiscordInvite  = 'Https://Discord.io/DokusCore'
_Language       = { Lang = 'en', Multi = true }
_StartWealth    = { Money = 5, Gold = 0, BankMoney = 150, BankGold = 0 }
_StartJob       = { Name = 'unemployed', Grade = 0 }
_Moderation     = { SuperAdmin = 'owner', Admin = 'admin', User = 'user' }
_Time           = { TimeSync = true, FixedTime = { false, 08, 00 } }
_ActionKey      = 0x8AAA0AD4
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_EnablePVP       = true
_ShowMap         = true
_ShowMiniMap     = true
_EnableIMaps     = true
_BankDoors       = true
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- The Security contains the Black and whitelist Module.
--------------------------------------------------------------------------------
_Security = {
  Blacklist = { Enabled = true },
  Whitelist = { Enabled = true, NotifyAdmins = true },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- These are official DokusCore plugins that you can install. Please enable or
-- disable these when or when not used. This to make sure the core handles the
-- data like character data as suppose to. If set incorrectly the core can bug.
--------------------------------------------------------------------------------
_Modules          = {
  Banking         = false,
  MultiCharacters = false
 }
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Loops = {
  SaveCoords        = { Enabled = true, Seconds = 10  },
  SliderDisabler    = { Enabled = true, Seconds = 0.1 },
  CheckBlacklist    = { Seconds = 300 },
  WhitelistNotify   = { Seconds = 300 },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Commands = {
  -- Information Commands
  Help        = { Users = true,  Admins = true,  SuperAdmins = true },
  Discord     = { Users = true,  Admins = true,  SuperAdmins = true },
  InfoChar    = { Users = true,  Admins = true,  SuperAdmins = true },
  InfoAcc     = { Users = true,  Admins = true,  SuperAdmins = true },
  Coords      = { Users = true,  Admins = true,  SuperAdmins = true },
  Music       = { Users = true,  Admins = true,  SuperAdmins = true },

  -- User Settings Commands
  SetCharName = { Users = true,  Admins = true,  SuperAdmins = true },
  Language    = { Users = true,  Admins = true,  SuperAdmins = true },
  Hud         = { Users = true,  Admins = true,  SuperAdmins = true },

  -- Admin Commands
  AddMoney    = { Users = false, Admins = true,  SuperAdmins = true },
  AddGold     = { Users = false, Admins = true,  SuperAdmins = true },
  Teleport    = { Users = false, Admins = true,  SuperAdmins = true },
  Blacklist   = { Users = false, Admins = true,  SuperAdmins = true },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
