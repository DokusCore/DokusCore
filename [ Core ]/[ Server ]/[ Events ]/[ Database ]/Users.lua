--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Users.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Users')
AddEventHandler('DokusCore:Core:DBIns:Users', function(args)
--   if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
-- if (args[1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
-- if (args[2] == nil) then return ErrorMsg('Err_DBInsNoSteamName') end
-- if (args[3] == nil) then return ErrorMsg('Err_DBInsNoIP') end
-- if (args[4] == nil) then return ErrorMsg('Err_DBInsNoLicense') end
-- if (args[5] == nil) then return ErrorMsg('Err_DBInsNoXBoxID') end
-- if (args[6] == nil) then return ErrorMsg('Err_DBInsNoMLiveID') end
DBIns(DB.Users.Insert, {
  Steam = args[1], sName = args[2], IP = args[3],
  License = args[4], XBoxLive = args[5], MLive = args[6]
}, function() end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------












--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
