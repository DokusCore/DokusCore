--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--SafeGuard
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--  This is a mandatory plugin for DokusCore to run and function correctly!   --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_SafeGuard = {


  -- Currently Anti Cheat is not adviced to be used, it is still getting worked on!
  AntiCheat = {
    Enabled = false,                                 -- Enable or Disable the all anticheat modules

    -- Do not use this feature yet. This does not check if you are an admin or not!
    -- So even admins will get punished for traveling to fast. This will kick in
    -- once an admin tries to teleport. Will be finished in a later version
    CheckPosition = {
      Enabled     = false,                           -- Enable or Disable this module
      Interval    = 1,                               -- Check Distance time in Seconds
      Threshold   = 75,                              -- Max travel distance in meters
      Warnings    = { Enabled = false, Amount = 2 }, -- Amount of warnings before action is taken
      Action      = { Type = 'Seconds', Time = 300, Ban = false, Kick = false },
    },
  },

}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Possible ActionTime Type:
--------------------------------------------------------------------------------
  -- None:    Used only in KICK, no extra actions will be taken other then the kick
  -- Seconds: Ban/Kick player for x amount of seconds
  -- Minutes: Ban/Kick player for x amount of minutes
  -- Hours:   Ban/Kick player for x amount of hours
  -- Review:  Ban until a admin has review and make his descission.
  -- Perma:   Ban player permanently from the server

  -- NOTE:
    -- When Perma is used the TIME will not be used.
    -- When Kick is enabled, the TIME will not be used.
    -- PERMA does not work with the KICK ability only BAN.
    -- KICK and BAN can not be selected at the same time.
    -- The option REVIEW can be used when using KICK! ( Furture Update )
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
