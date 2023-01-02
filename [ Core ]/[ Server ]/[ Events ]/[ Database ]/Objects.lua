--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Objects.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Objects')
AddEventHandler('DokusCore:Core:DBIns:Objects', function(args)
  local SteamID, InUse, Item = args[1], args[2], args[3]
  local ItemID, HashID, Coords = args[4], args[5], args[6]
  local Unix, Meta = args[7], args[8]
  DBIns(DB.Objects.Insert, {
    SteamID = SteamID, InUse = InUse, Item = Item,
    ItemID = ItemID, HashID = HashID, Coords = Coords,
    Unix = Unix, Meta = Meta
  })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Objects')
AddEventHandler('DokusCore:Core:DBSet:Objects', function(args)
  if (Low(args[1]) == 'unix') then
    DBSet(DB.Objects.SetUnixViaID, { Unix = args[2][2], ItemID = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'newid') then
    DBSet(DB.Objects.SetNewItemID, { ItemID = args[2][1], HashID = args[2][2] }, function() end)
  end

  if (Low(args[1]) == 'reset') then
    DBSet(DB.Objects.SetAllToNil, {}, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Objects')
AddEventHandler('DokusCore:Core:DBDel:Objects', function(args)
  if (Low(args[1]) == 'itemid') then
    DBSet(DB.Objects.DelViaItemID, { ItemID = args[2][1] }, function() end)
  end
end)










--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
