--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Settings.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Settings')
AddEventHandler('DokusCore:Core:DBSet:Settings', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end

  -- Set the settings music value for the user
  if (Low(args[1]) == 'music') then
    local Steam, Value, Error = args[2][1], args[2][2], false
    -- if (args[2][2] == nil) then return ErrorMsg('Err_DBSetNoMusicValue') end
    local Q = DBSet(DB.Settings.SetMusic, { Music = Value, Steam = Steam }, function() end)
  end

  -- Set the settings music volume
  if (Low(args[1]) == 'volume') then
    local Steam, Value, Error = args[2][1], args[2][2], false
    -- if (args[2][2] == nil) then return ErrorMsg('Err_DBSetNoMusicValue') end
    local Q = DBSet(DB.Settings.SetVolume, { Volume = Value, Steam = Steam }, function() end)
  end

  -- Set the settings language for the user.
  if (Low(args[1]) == 'language') then
    local Steam, Value = args[2][1], args[2][2]
    DBSet(DB.Settings.SetLanguage, { Language = Value, Steam = Steam }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Settings')
AddEventHandler('DokusCore:Core:DBIns:Settings', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBInsSettingsMusic') end
    if (args[2][3] == nil) then return ErrorMsg('Err_DBInsSettingsLanguage') end
    DBIns(DB.Settings.insert, { Steam = args[2][1], Music = args[2][2], Language = args[2][3] }, function() end)
  end
end)
























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
