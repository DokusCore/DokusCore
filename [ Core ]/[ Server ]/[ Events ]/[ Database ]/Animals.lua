--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Animals.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Animals')
AddEventHandler('DokusCore:Core:DBSet:Animals', function(args)
  local SteamID, CharID, Type = args[1], args[2], args[3]
  local Model, Skin, XP = args[4], args[5], args[6]
  local Meta = (args[7] or '[]')

  DBSet(DB.Animals.Insert,  {
    SteamID = SteamID, CharID = CharID, Type = Type,
    Model = Model, Skin = Skin, XP = XP, Meta = Meta
  }, function() end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Animals')
AddEventHandler('DokusCore:Core:DBSet:Animals', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[2]) == 'type') then DBSet(DB.Animals.SetUSTypeModel, { Type = args[3][4], SteamID = args[3][1], CharID = args[3][2], Model = args[3][3] }, function() end) end
      if (Low(args[2]) == 'model') then DBSet(DB.Animals.SetUSModelModel, { Model = args[3][4], SteamID = args[3][1], CharID = args[3][2], Model = args[3][3] }, function() end) end
      if (Low(args[2]) == 'skin') then DBSet(DB.Animals.SetUSSkinModel, { Skin = args[3][4], SteamID = args[3][1], CharID = args[3][2], Model = args[3][3] }, function() end) end
      if (Low(args[2]) == 'xp') then DBSet(DB.Animals.SetUSXPModel, { XP = args[3][4], SteamID = args[3][1], CharID = args[3][2], Model = args[3][3] }, function() end) end
      if (Low(args[2]) == 'meta') then DBSet(DB.Animals.SetUSMetaModel, { Meta = args[3][4], SteamID = args[3][1], CharID = args[3][2], Model = args[3][3] }, function() end) end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Animals')
AddEventHandler('DokusCore:Core:DBDel:Animals', function(args)
  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'all') then DBDel(DB.Animals.DeleteAll, {}, function() end) end
    if (Low(args[2]) == 'type') then DBDel(DB.Animals.DeleteAllType, { Type = args[3][1] }, function() end) end
    if (Low(args[2]) == 'model') then DBDel(DB.Animals.DeleteAllModel, { Model = args[3][1] }, function() end) end
  end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'type') then DBDel(DB.Animals.DelUAType, { SteamID = args[3][1], Type = args[3][2] }, function() end) end
      if (Low(args[3]) == 'model') then DBDel(DB.Animals.DelUAModel, { SteamID = args[3][1], Model = args[3][2] }, function() end) end
    end

    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'type') then DBDel(DB.Animals.DelUSType, { SteamID = args[3][1], CharID = args[3][2], Type = args[3][3] }, function() end) end
      if (Low(args[3]) == 'model') then DBDel(DB.Animals.DelUSModel, { SteamID = args[3][1], CharID = args[3][2], Model = args[3][3] }, function() end) end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- USAGE:
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'User', 'Single', 'All',   { SteamID, CharID }                    })
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'User', 'Single', 'Type',  { SteamID, CharID, 'Dog' }             })
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'User', 'Single', 'Model', { SteamID, CharID, 'A_C_DogHusky_01' } })
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'User', 'All', 'Type',     { SteamID, CharID, 'Dog' }             })
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'User', 'All', 'Model',    { SteamID, CharID, 'A_C_DogHusky_01' } })
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'All', 'Type',             { SteamID, CharID, 'Dog' }             })
-- TriggerServerEvent('DokusCore:Core:DBDel:Animals', { 'User', 'Model',           { 'A_C_DogHusky_01' }                  })
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
