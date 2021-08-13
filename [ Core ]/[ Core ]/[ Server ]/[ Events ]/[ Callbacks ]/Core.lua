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
  if (args == nil) then
    local S, L, I = G(source, 0), G(source, 1), GetPlayerEndpoint(source)
    local X, M = G(source, 2), G(source, 3)
    return {S, L, I, X, M}
  else
    local S, L, I = G(args[1], 0), G(args[1], 1), GetPlayerEndpoint(args[1])
    local X, M = G(args[1], 2), G(args[1], 3)
    return {S, L, I, X, M}
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetAll', function(source, args)
  if (args == nil) then return end local Result
  MySQL.Async.fetchAll(args[1], {}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result end) Wait(100)
  return Result
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
  Result = result end) Wait(100) return Result
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
  if (Type == 'Skin') then MySQL.Async.execute(Table, {Skin = Value, Steam = Steam, CharID = CharID}, function() end) end
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
RSC('DokusCore:S:Core:DB:GetItems', function(source, args)
  local Items = {}
  MySQL.Async.fetchAll(DB.Items.GetAll, {}, function(res)
    for k, v in pairs(res) do table.insert(Items, k, v) end
  end) Wait(250)
  return Items
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:GetUserServerID', function(source, args)
  local Data = TCC(source, 'DokusCore:C:Core:GetUserServerID')
  return Data
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:RemoveAllCharData', function(source, args)
  local Steam, CharID = args[1], args[2]
  MySQL.Async.execute(DB.Banks.DelViaSteamAndCharID, {Steam=Steam, CharID=CharID}, function() end)
  MySQL.Async.execute(DB.Characters.DelViaSteamAndCharID, {Steam=Steam, CharID=CharID}, function() end)
  MySQL.Async.execute(DB.Inventory.DelViaSteamAndCharID, {Steam=Steam, CharID=CharID}, function() end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------





































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
