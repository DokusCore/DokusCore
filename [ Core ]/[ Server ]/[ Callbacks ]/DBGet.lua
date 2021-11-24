--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBGet = MySQL.Async.fetchAll
local Low   = string.lower
--------------------------------------------------------------------------------
-- Get a specific users out of the users table.
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Users', function(source, args)
  local Exist, Result = false, {}
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[2][1] == nil) then return ErrorMsg('Err_DBGetNoSteam') end
  local CatType = args[1]
  if (Low(CatType) == 'user') then
    DBGet(DB.Users.GetViaSteam, { Steam = args[2][1] }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(100) return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get a specific user out of the settings table.
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Settings', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local CatType, Exist, Result = args[1], false, {}

  if (Low(CatType) == 'user') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBGetNoSteam') end
    DBGet(DB.Settings.GetViaSteam, {Steam = args[2][1]}, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(100) return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get a specific user out of the settings table.
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Banks', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local CatType, Exist, Result = args[1], false, {}

  if (Low(CatType) == 'user') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBGetNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBGetNoCharID') end
    DBGet(DB.Banks.Get, {Steam = args[2][1], CharID = args[2][2]}, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(200) return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get all character rows of the user out of the database
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Characters', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local CatType1, CatType2, Exist, Result = args[1], args[2], false, {}

  if (Low(CatType1) == 'user') then
    if (Low(CatType2) == 'single') then
      if (args[3][1] == nil) then return ErrorMsg('Err_DBGetNoSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_DBGetNoCharID') end
      DBGet(DB.Characters.Get, {Steam = args[3][1], CharID = args[3][2]}, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
      Wait(200) return { Exist = Exist, Result = Result }
    end

    if (Low(CatType2) == 'all') then
      if (args[3][1] == nil) then return ErrorMsg('Err_DBGetNoSteam') end
      DBGet(DB.Characters.GetAll, { Steam = args[3][1] }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
      Wait(200) return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get player banned / blacklist information
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Blacklist', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_DBGetNoFetchType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local CatType, FetchType, Result = args[1], args[2], {}

  if (Low(CatType) == 'user') then
    if (Low(FetchType) == 'serverid') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoUserServerID') end
      local Steam = TCC(-1, 'DokusCore:Core:GetUserIDs', { 'source', { args[3][1] } })[1]
      local Data = TCC(-1, 'DokusCore:Core:DBGet:Users', { 'User', { Steam } })
      local X, AB = Data.Result[1], false
      if not (AB) then DBGet(DB.Blacklist.GetViaSteam, { Steam = Steam }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      if not (AB) then DBGet(DB.Blacklist.GetViaIP, { IP = X.IP }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      if not (AB) then DBGet(DB.Blacklist.GetViaLicense, { License = X.License }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      if not (AB) then DBGet(DB.Blacklist.GetViaXBoxLive, { XBoxLive = X.XBoxLive }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      if not (AB) then DBGet(DB.Blacklist.GetViaMLive, { MLive = X.MLive }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      Wait(500) return { Exist = AB, Result = Result }
    end

    if (Low(FetchType) == 'ip') then
      local AB, Result = false, {}
      if not (AB) then DBGet(DB.Blacklist.GetViaIP, { IP = args[3][1] }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      Wait(500) return { Exist = AB, Result = Result }
    end

    if (Low(FetchType) == 'steamid') then
      local AB, Result = false, {}
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if not (AB) then DBGet(DB.Blacklist.GetViaSteam, { Steam = args[3][1] }, function(r) if (r[1] ~= nil) then AB = true Result = r end end) end
      Wait(500) return { Exist = AB, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get the whitelist information
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Whitelist', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  local CatType, Exist, Result = args[1], false, {}

  if (Low(CatType) == 'all') then
    DBGet(DB.Whitelist.GetAll, {}, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(200) return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get the items from the database
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Stores', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'all') then
    DBGet(DB.Stores.GetAll, {}, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(200) return { Exist = Exist, Result = Result }
  end

  if ((Low(args[1]) == 'consumable') or (Low(args[1]) == 'consumables')) then
    DBGet(DB.Stores.GetViaType, { Type = 'Consumable' }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(200) return { Exist = Exist, Result = Result }
  end

  if ((Low(args[1]) == 'item') or (Low(args[1]) == 'item')) then
    DBGet(DB.Stores.GetViaType, { Type = 'Item' }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    Wait(200) return { Exist = Exist, Result = Result }
  end

end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get the users inventory data
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Inventory', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  local Exist, Result = false, nil
  local Steam, CharID = args[3][1], args[3][2]

  if (Low(args[1]) == 'user') then
    if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

    if (Low(args[2]) == 'item') then
      if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
       DBGet(DB.Inventory.GetUserViaItem, { Steam = Steam, CharID = CharID, Item = Low(args[3][3]) }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
       Wait(200) return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'all') then
      DBGet(DB.Inventory.GetUser, { Steam = Steam, CharID = CharID }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
      Wait(200) return { Exist = Exist, Result = Result }
    end
  end

end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Get the users storage data
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Storages', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  local Exist, Result = false, nil

  if (Low(args[1]) == 'dropbox') then
    if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

    -- if (Low(args[2]) == 'user') then
    --   if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    --   if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    --   if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
    --   DBGet(DB.Storages.GetUserDropBox, { Type = args[1] }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    --   Wait(200) return { Exist = Exist, Result = Result }
    -- end

    if (Low(args[2]) == 'all') then
      DBGet(DB.Storages.GetAllDropBox, { Type = args[1] }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
      Wait(200) return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'boxid') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      DBGet(DB.Storages.GetDropBoxViaID, { BoxID = args[3][1] }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
      Wait(200) return { Exist = Exist, Result = Result }
    end
  end
end)



























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
