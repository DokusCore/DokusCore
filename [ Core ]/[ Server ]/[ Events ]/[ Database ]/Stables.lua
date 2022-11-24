--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Stables.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Stables')
AddEventHandler('DokusCore:Core:DBIns:Stables', function(args)
  if (Low(args[1]) == 'horse') then
      DBIns(DB.Stables.Insert, {
      SteamID = args[2][1], CharID = args[2][2], Type = args[2][3],
      Stabled = args[2][4], Name = args[2][5], InUse = args[2][6],
      IsStored = args[2][7], Model = args[2][8], Coords = args[2][9],
      Components = args[2][10], Health = args[2][11], Stamina = args[2][12],
      Hunger = args[2][13], Thirst = args[2][14], Dirt = args[2][15], Price = args[2][16]
    })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Stables')
AddEventHandler('DokusCore:Core:DBSet:Stables', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3][1]) == 'horse') then
        if (Low(args[3][2]) == 'coords') then end
        if (Low(args[3][2]) == 'stored') then end
        if (Low(args[3][2]) == 'inuse') then end
        if (Low(args[3][2]) == 'stabled') then end
        if (Low(args[3][2]) == 'components') then end
        if (Low(args[3][2]) == 'health') then end
        if (Low(args[3][2]) == 'stamina') then end
        if (Low(args[3][2]) == 'hunger') then end
        if (Low(args[3][2]) == 'thirst') then end
        if (Low(args[3][2]) == 'dirt') then end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Stables')
AddEventHandler('DokusCore:Core:DBDel:Stables', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3][1]) == 'horse') then
        if (Low(args[3][2]) == 'name') then
          local Index = { SteamID = args[3][3][1], CharID = args[3][3][2], Name = args[3][3][3] }
          DBDel(DB.Stables.DeleteByUserAndName, Index)
        end
      end
    end

    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'char') then
        local Index = { SteamID = args[3][1], CharID = args[3][2] }
        DBDel(DB.Stables.DelUserAllViaCharID, Index)
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
