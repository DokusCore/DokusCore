--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:SetCoreUserData')
AddEventHandler('DokusCore:Core:SetCoreUserData', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'charid') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoCharID') end
    _User.CharID = args[2][1]
  end

  if (Low(args[1]) == 'useringame') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoCharID') end
    print("LOG LOG", args[2][1])
    _Core.UserInGame = args[2][1]
  end

  if (Low(args[1]) == 'steam') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    _User.Steam = args[2][1]
  end

  if (Low(args[1]) == 'coords') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoCoords') end
    _User.Coords = args[2][1]
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:SyncCharID')
AddEventHandler('DokusCore:Core:SyncCharID', function(ID)
  _User.CharID = ID
  print('^5[ DokusCore ]^2[ System ]: ^0'.."^3DokusCore has been syned with the other plugins^0")
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
