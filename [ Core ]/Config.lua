--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Available Languages: en | es | ru | pt | fr | de | it | nl | pl | gr | dk | bg
--------------------------------------------------------------------------------
_Language       = { Lang = 'en', Multi = true }
_ServerName     = 'DokusCore Development Server'
_DiscordInvite  = 'Discord.io/DokusCore'
_Moderation     = { SuperAdmin = 'owner', Admin = 'admin', Users = 'user' }
_StartWealth    = { Money = 200, Gold = 0, BankMoney = 0, BankGold = 0 }
_StartJob       = { Name = 'unemployed', Grade = 0 }
_AntiAFK        = { Enabled = false, MaxTime = 30 }
_StartCoords    = { -169.5, 628.3, 114.0 }
_RespawnTime    = { Enabled = true, Time = 30 } -- seconds
_Modules        = { MultiCharacters = true }
_Loops          = { SaveCoordEvery = 30000 }
_Time           = { TimeSync = false, FixedTime = { true, 12, 00 } }
_DokusMenu      = { Position = 'right', Theme = { Dark = true, Red = false} }
_EnablePVP      = true
_ShowMap        = true
_EnableIMaps    = true
_BankDoors      = true
_ShowMiniMap    = true
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Modules          = {
  Banks           = true,
  MultiCharacters = true
 }
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_PayCheck       = {
  Enabled = true,
  Notification = false,
  Interval = 30, -- minutes
  Jobs    = {
    -- Where = Bank - Wallet | Type = Gold - Money
    { Name = 'unemployed', Where = 'Bank', Type = 'Gold', Amount = 2 },
    { Name = 'Sheriff', Where = 'Bank', Type = 'Money', Amount = 2 }
  },

  VIPs = {
    -- The Multiply multiplies the amount recieved by the players job above.
    { Enable = false, Steam = "steam:1100001042b8cd7", Static = { false, 10 }, Multiply = 1.5 }
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Commands = {
  -- Information Commands
  Help        = { Users = true, Admins = true, SuperAdmin = true },
  Discord     = { Users = true, Admins = true, SuperAdmin = true },
  InfoChar    = { Users = true, Admins = true, SuperAdmin = true },
  InfoAcc     = { Users = true, Admins = true, SuperAdmin = true },
  Coords      = { Users = true, Admins = true, SuperAdmin = true },
  Music       = { Users = true, Admins = true, SuperAdmin = true },

  -- User Settings Commands
  SetCharName = { Users = true, Admins = true, SuperAdmin = true },
  Language    = { Users = true, Admins = true, SuperAdmin = true },
  Hud         = { Users = true, Admins = true, SuperAdmin = true },

  -- Admin Commands
  AddMoney    = { Users = false, Admins = true, SuperAdmin = true },
  AddGold     = { Users = false, Admins = true, SuperAdmin = true },
  Teleport    = { Users = false, Admins = true, SuperAdmin = true },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
