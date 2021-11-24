--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBDel = MySQL.Async.execute
local Low   = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Delete the user to the blacklist
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBDel:Blacklist', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_DBGetNoFetchType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local CatType, FetchType = args[1], args[2]

  if (Low(CatType) == 'user') then
    if (Low(FetchType) == 'ip') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoProvIP') end
      DBDel(DB.Blacklist.DelViaIP, { IP = args[3][1] })
    end

    if (Low(FetchType) == 'steamid') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      DBDel(DB.Blacklist.DelViaSteam, { Steam = args[3][1] })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Delete an inventory item
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBDel:Inventory', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'item') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
      local Steam, CharID, Item = args[3][1], args[3][2], args[3][3]
      DBDel(DB.Inventory.DelUserItem, { Steam = Steam, CharID = CharID, Item = Item })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Delete an inventory item
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBDel:Storages', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'dropbox') then
    if (Low(args[2]) == 'boxid') then
      DBDel(DB.Storages.DelBoxViaID, { BoxID = args[3][1] })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBDel:Characters', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      DBDel(DB.Characters.DelViaSteam, { Steam = args[3][1], CharID = args[3][2] })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBDel:Banks', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      DBDel(DB.Banks.DelViaSteam, { Steam = args[3][1], CharID = args[3][2] })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------



























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
