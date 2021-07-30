--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:KickPlayer')
AddEventHandler('DokusCore:S:Core:KickPlayer', function(Reason)
  DropPlayer(source, Reason)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:GetUserIDs', function(source, args)
  local G = GetPlayerIdentifier
  local S, L, I = G(source, 0), G(source, 1), GetPlayerEndpoint(source)
  local X, M = G(source, 2), G(source, 3)
  return {S, L, I, X, M}
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetViaSteam', function(source, args)
  if (args == nil) then return end local Result
  MySQL.Async.fetchAll(args[1], {Steam = args[2]}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result end) Wait(100)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetViaIP', function(source, args)
  if (args == nil) then return end local Result
  MySQL.Async.fetchAll(args[1], {IP = args[2]}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result end) Wait(100)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetViaSteamAndCharID', function(source, args)
  if (args == nil) then return end local Result
  MySQL.Async.fetchAll(args[1], {Steam = args[2], CharID = args[3]}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result[1] end) Wait(100) return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:DoesUserExists', function(source, args)
  if (args == nil) then return end local Result
  MySQL.Async.fetchAll(args[1], {Steam = args[2]}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result end) Wait(100)
  if not Result or (Result == nil) then return false else return true end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:Update', function(source, args)
  local Result
  local Steam = GetPlayerIdentifier(source, 0)
  local Users = GetDBViaSteam(args[1].GetViaSteam, Steam)
  if (Users == nil) then return end
  if args[3] == 'cName' then SetIntoDB(args[2], {cName = args[4], Steam = Steam}) end
  if args[3] == 'Language' then SetIntoDB(args[2], {Language = args[4], Steam = Steam}) end
  if args[3] == 'Coords' then SetIntoDB(args[2], {Coords = args[4], Steam = Steam, CharID = args[5]}) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:UpdateDBViaSteam', function(source, args)
  local Table, Type, Value, Steam = args[1], args[2], args[3], args[4]
  if (Type == 'cName') then MySQL.Async.execute(Table, {cName = Value, Steam = Steam}, function() end) end
  if (Type == 'Language') then MySQL.Async.execute(Table, {Language = Value, Steam = Steam}, function() end) end
  if (Type == 'Music') then MySQL.Async.execute(Table, {Music = Value, Steam = Steam}, function() end) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:UpdateViaSteamAndCharID', function(source, args)
  local Table, Type, Value, Steam, CharID = args[1], args[2], args[3], args[4], args[5]
  if (Type == 'BankMoney') then MySQL.Async.execute(Table, {BankMoney = tonumber(Value), Steam = Steam, CharID = CharID}, function() end) end
  if (Type == 'BankGold') then MySQL.Async.execute(Table, {BankGold = tonumber(Value), Steam = Steam, CharID = CharID}, function() end) end
  if (Type == 'Money') then MySQL.Async.execute(Table, {Money = tonumber(Value), Steam = Steam, CharID = CharID}, function() end) end
  if (Type == 'Gold') then MySQL.Async.execute(Table, {Gold = tonumber(Value), Steam = Steam, CharID = CharID}, function() end) end
  if (Type == 'Coords') then
    local Coords = "{" .. Value[1] .. ", " .. Value[2] .. ", " .. Value[3] .. "}"
    MySQL.Async.execute(Table, {Coords = Coords, Steam = Steam, CharID = CharID}, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:DelViaSteamAndCharID', function(source, args)
  DelDBViaSteamAndCharID(args[1], {args[2], args[3]})
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:GetCoreUserData', function(source, args)
 local Data = TCC(-1, 'DokusCore:C:Core:GetCoreUserData')
 return Data
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:UpdateCoreUserData', function(source, args)
  TCC(-1, 'DokusCore:C:Core:UpdateCoreUserData', args)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:System:Time', function(source, args)
  local Hour, Minute = GetTime().h, GetTime().m
  return { Hour, Minute }
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetInventory', function(source, args)
  local Table, Result = DB.Inventory.Get, {}
  MySQL.Async.fetchAll(Table, {Steam = args[1], CharID = args[2]}, function(res)
    if (args == nil) then return end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(100) return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:InsertInventory', function(source, args)
  if (args[1] == nil or args[3] == nil or args[3] == nil) then return end
  -- Handle Weapons
  if (string.lower(args[3].Type) == 'weapon') then
    if (args[3].Meta == nil) then Meta = {} end
    local Table = DB.Inventory.InsertTable
    MySQL.Async.execute(Table, {
      Steam = args[1],
      CharID = args[2],
      Type = args[3].Type,
      Item = args[3].Item,
      Amount = args[3].Amount,
      Meta = json.encode(Meta)
    }, function() end)
  end

  -- Handle Items
  if (string.lower(args[3].Type) == 'item') then
    if (args[3].Meta == nil) then Meta = {} else Meta = args[3].Meta end
    local Table = DB.Inventory.InsertTable
    MySQL.Async.execute(Table, {
      Steam = args[1],
      CharID = args[2],
      Type = args[3].Type,
      Item = args[3].Item,
      Amount = args[3].Amount,
      Meta = json.encode(Meta)
    }, function() end)
  end

  -- Handle Bullets
  if (string.lower(args[3].Type) == 'bullet') then
    if (args[3].Meta == nil) then Meta = {} else Meta = args[3].Meta end
    local Table = DB.Inventory.InsertTable
    MySQL.Async.execute(Table, {
      Steam = args[1],
      CharID = args[2],
      Type = args[3].Type,
      Item = args[3].Item,
      Amount = args[3].Amount,
      Meta = json.encode(Meta)
    }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:UpdateInventory', function(source, args)
  if (args[1] == nil or args[3] == nil or args[3] == nil) then return end
  -- Handle Weapons
  if (string.lower(args[3].Type) == 'weapon') then
    local Table = DB.Inventory.GetItem
    if (args[3].Meta == nil) then Meta = {} else Meta = args[3].Meta end
    MySQL.Async.fetchAll(Table, {Steam = args[1], CharID = args[2], Type = args[3].Type, Item = args[3].Item}, function(res)
      if ((res == nil) or (res[1] == nil)) then return end
      local Amount = (res[1].Amount + args[3].Amount)
      local Table = DB.Inventory.UpdateItem
      MySQL.Async.execute(Table, {
        Steam = args[1],
        CharID = args[2],
        Type = args[3].Type,
        Item = args[3].Item,
        Amount = Amount,
        Meta = json.encode({})
      }, function() end)
    end)
  end

  -- Handle Items
  if (string.lower(args[3].Type) == 'item') then
    local Table = DB.Inventory.GetItem
    MySQL.Async.fetchAll(Table, {Steam = args[1], CharID = args[2], Type = args[3].Type, Item = args[3].Item}, function(res)
      if (args[3].Meta == nil) then Meta = {} else Meta = args[3].Meta end
      if ((res == nil) or (res[1] == nil)) then return end
      local Amount = (res[1].Amount + args[3].Amount)
      local Table = DB.Inventory.UpdateItem
      MySQL.Async.execute(Table, {
        Steam = args[1],
        CharID = args[2],
        Type = args[3].Type,
        Item = args[3].Item,
        Amount = Amount,
        Meta = json.encode({})
      }, function() end)
    end)
  end

  -- Handle Bullets
  if (string.lower(args[3].Type) == 'bullet') then
    local Table = DB.Inventory.GetItem
    MySQL.Async.fetchAll(Table, {Steam = args[1], CharID = args[2], Type = args[3].Type, Item = args[3].Item}, function(res)
      if (args[3].Meta == nil) then Meta = {} else Meta = args[3].Meta end
      if ((res == nil) or (res[1] == nil)) then return end
      local Amount = (res[1].Amount + args[3].Amount)
      local Table = DB.Inventory.UpdateItem
      MySQL.Async.execute(Table, {
        Steam = args[1],
        CharID = args[2],
        Type = args[3].Type,
        Item = args[3].Item,
        Amount = Amount,
        Meta = json.encode({})
      }, function() end)
    end)
  end
end)












--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
