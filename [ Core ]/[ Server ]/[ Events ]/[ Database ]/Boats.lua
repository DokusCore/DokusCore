--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Boats.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Boats')
AddEventHandler('DokusCore:Core:DBIns:Boats', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      DBIns(DB.Boats.Insert, {
      Steam = args[3][1], CharID = args[3][2], BID = args[3][3],
      Name = args[3][4], Hanger = args[3][5], Storage = args[3][6],
      Coords = args[3][7]
    })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Boats')
AddEventHandler('DokusCore:Core:DBSet:Boats', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'coords')  then DBSet(DB.Boats.SetCoordsSingleUser,  { Coords = args[4][4], Steam = args[4][1], CharID = args[4][2], BID = args[4][3]  }, function() end) end
      if (Low(args[3]) == 'hanger')  then DBSet(DB.Boats.SetHangerSingleUser,  { Hanger = args[4][4], Steam = args[4][1], CharID = args[4][2], BID = args[4][3]  }, function() end) end
      if (Low(args[3]) == 'storage') then DBSet(DB.Boats.SetStorageSingleUser, { Storage = args[4][4], Steam = args[4][1], CharID = args[4][2], BID = args[4][3] }, function() end) end
      if (Low(args[3]) == 'name')    then DBSet(DB.Boats.SetNameSingleUser,    { Name = args[4][4], Steam = args[4][1], CharID = args[4][2], BID = args[4][3]    }, function() end) end
    end

    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'coords')  then DBSet(DB.Boats.SetAllCoordsUser,  { Coords = args[4][2], Steam = args[4][1]  }, function() end) end
      if (Low(args[3]) == 'hanger')  then DBSet(DB.Boats.SetAllHangerUser,  { Hanger = args[4][2], Steam = args[4][1]  }, function() end) end
      if (Low(args[3]) == 'storage') then DBSet(DB.Boats.SetAllStorageUser, { Storage = args[4][2], Steam = args[4][1] }, function() end) end
      if (Low(args[3]) == 'name')    then DBSet(DB.Boats.SetAllNameUser,    { Name = args[4][2], Steam = args[4][1]    }, function() end) end
    end
  end

  if (Low(args[1]) == 'boatid') then
    if (Low(args[2]) == 'coords')  then DBSet(DB.Boats.SetCoordsViaBoatID,  { Coords = args[3][2], BID = args[3][1]  }, function() end) end
    if (Low(args[2]) == 'hanger')  then DBSet(DB.Boats.SetHangerViaBoatID,  { Hanger = args[3][2], BID = args[3][1]  }, function() end) end
    if (Low(args[2]) == 'storage') then DBSet(DB.Boats.SetStorageViaBoatID, { Storage = args[3][2], BID = args[3][1] }, function() end) end
    if (Low(args[2]) == 'name')    then DBSet(DB.Boats.SetNameViaBoatID,    { Name = args[3][2], BID = args[3][1]    }, function() end) end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Boats')
AddEventHandler('DokusCore:Core:DBDel:Boats', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'boatid')   then DBSet(DB.Boats.DelUserSingleViaBoatID,   { BID = args[4][1] }, function() end) end
      if (Low(args[3]) == 'name')     then DBSet(DB.Boats.DelUserSingleViaName,     { Name = args[4][1] }, function() end) end
    end

    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'steamid') then DBSet(DB.Boats.DelUserAllViaSteamID,  { Steam = args[4][1] }, function() end) end
      if (Low(args[3]) == 'hanger')  then DBSet(DB.Boats.DelUserAllInHanger, { Steam = args[4][1], Hanger = args[4][2] }, function() end) end
    end
  end

  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'hanger') then DBSet(DB.Boats.DelAllViaHanger,  { Hanger = args[3][1] }, function() end) end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
