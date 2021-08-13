--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetAllStorages', function(source, args)
  local Result = {}
  local Table = DB.Storage.GetAll
  MySQL.Async.fetchAll(Table, {}, function(res)
    if (res[1] == nil) then return false end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetStorageViaBoxID', function(source, args)
  local BoxID, Result = args[1], {}
  local Table = DB.Storage.GetViaBoxID
  MySQL.Async.fetchAll(Table, {BoxID=BoxID}, function(res)
    if (res[1] == nil) then return false end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetStorageViaSteamAndCharID', function(source, args)
  local Steam, CharID, Result = args[1], args[2], {}
  local Table = DB.Storage.GetViaSteamAndCharID
  MySQL.Async.fetchAll(Table, {Steam=Steam, CharID=CharID}, function(res)
    if (res[1] == nil) then return false end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetStorageViaBoxIDAndItem', function(source, args)
  local BoxID, Item, Result = args[1], args[2], {}
  local Table = DB.Storage.GetViaBoxIDAndItem
  MySQL.Async.fetchAll(Table, {BoxID=BoxID, Item=Item}, function(res)
    if (res[1] == nil) then return end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetStorageViaSteamAndItem', function(source, args)
  local Steam, Item, Result = args[1], args[2], {}
  local Table = DB.Storage.GetViaSteamAndItem
  MySQL.Async.fetchAll(Table, {Steam=Steam, Item=Item}, function(res)
    if (res[1] == nil) then return end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetStorageViaSteamCharAndItem', function(source, args)
  local Steam, CharID, Item, Result = args[1], args[2], args[3], {}
  local Table = DB.Storage.GetViaSteamCharAndItem
  MySQL.Async.fetchAll(Table, {Steam=Steam, CharID=CharID, Item=Item}, function(res)
    if (res[1] == nil) then return end
    for k,v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:AddToStorage', function(source, args)
  local Table = DB.Storage.InsertTable
  local Steam, CharID, Type = args[1], args[2], args[3]
  if (Type == nil) then return false end
   if (string.lower(Type) == 'drop') then
     local IsNew = args[4][1]
     local BoxID, Item = args[4][2], args[4][3]
     local Amount, Coords = args[4][4], args[4][5]
     local Coords = "{" .. Coords[1] .. ", " .. Coords[2] .. ", " .. Coords[3] .. "}"
     local Data = TCC(-1, 'DokusCore:C:Core:DB:GetStorageViaBoxIDAndItem', {BoxID, Item})

     -- If item does not exists, create a new one.
     if not IsNew then
       local Table = DB.Storage.InsertTable
       MySQL.Async.execute(Table, {
         Steam = Steam, CharID = CharID, Type = Type, BoxID = BoxID,
         Item = Item, Amount = Amount, Meta = nil, Coords = Coords
       }, function() end) return
     end

     -- If item exists update the item
     if IsNew then
       for k,v in pairs(Data) do
         local Table = DB.Storage.SetItemViaBoxIDAndItem
         local nAmount = (tonumber(Amount) + Data[1].Amount)
         MySQL.Async.execute(Table, {
           Amount = nAmount, Meta = nil, BoxID = BoxID, Item = Item
         }, function() end) return
       end
     end

     return
   end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:DelStorageItemViaBoxID', function(source, args)
  local Table = DB.Storage.DelItemViaBoxID
  local BoxID, Item = args[1], args[2]
  local ItemExists = false
  local Data = TCC(-1, 'DokusCore:C:Core:DB:GetStorageViaBoxIDAndItem', {BoxID, Item})
  for k,v in pairs(Data) do if (v.Item == Item) then ItemExists = true end end
  if ItemExists then
    MySQL.Async.execute(Table, {BoxID=BoxID, Item=Item}, function() end)
    return
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:UpdateBoxIDs', function(source, args)
  local Table = DB.Storage.SetBoxID
  local oBoxID, nBoxID = args[1], args[2]
  MySQL.Async.execute(Table, {oBoxID=oBoxID, nBoxID=nBoxID}, function() end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
