--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Weapons.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Weapons')
AddEventHandler('DokusCore:Core:DBIns:Weapons', function(args)
  local Exist, Result = false, nil
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      local SteamID, CharID, Name, Type = args[3][1], args[3][2], args[3][3], args[3][4]
      local Hash, Hex, Ammo, Equiped = args[3][5], args[3][6], args[3][7], args[3][8]
      local Index = {
        SteamID = SteamID, CharID = CharID, Name = Name,
        Type = Type, Hash = Low(Hash), Hex = Hex, Ammo_Regular = Ammo,
        Equiped = Equiped
      }

      local X = DBGet(DB.Weapons.Insert, Index)
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Weapons')
AddEventHandler('DokusCore:Core:DBSet:Weapons', function(args)
  local Exist, Result = false, nil
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'ammo') then
        local SteamID, CharID, Hash, Ammo = args[4][1], args[4][2], args[4][3], args[4][4]
        local Index = { Ammo_Regular = Ammo, SteamID = SteamID, CharID = CharID, Hash = Low(Hash) }
        local X = DBGet(DB.Weapons.SetAmmoSURegular, Index)
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end

      if (Low(args[3]) == 'equipt') then
        local SteamID, CharID, Hash, Equiped = args[4][1], args[4][2], args[4][3], args[4][4]
        local Index = { Equiped = Equiped, SteamID = SteamID, CharID = CharID, Hash = Low(Hash) }
        local X = DBGet(DB.Weapons.SetEquiptViaHash, Index)
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end
    end

    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'ammo') then
        local SteamID, CharID, Type, Ammo = args[4][1], args[4][2], args[4][3], args[4][4]
        local Index = { Ammo_Regular = Ammo, SteamID = SteamID, CharID = CharID, Type = Low(Type) }
        local X = DBGet(DB.Weapons.SetAmmoSUOnType, Index)
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Weapons')
AddEventHandler('DokusCore:Core:DBDel:Weapons', function(args)
  local Exist, Result = false, nil
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'char') then
        local SteamID, CharID = args[3][1], args[3][2]
        local Index = { SteamID = SteamID, CharID = CharID }
        DBDel(DB.Weapons.DelUserAllViaCharID, Index, function() end)
      end
    end
  end
end)

















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
