--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Metabolism.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Metabolism')
AddEventHandler('DokusCore:Core:DBIns:Metabolism', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'all') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Health') end
      -- if (args[3][4] == nil) then return ErrorMsg('Hunger') end
      -- if (args[3][5] == nil) then return ErrorMsg('Thirst') end
      local Steam, CharID = args[3][1], args[3][2]
      local Health, Hunger, Thirst = args[3][3], args[3][4], args[3][5]
      DBIns(DB.Metabolism.Insert, { Steam = Steam, CharID = CharID, Health = Health, Hunger = Hunger, Thirst = Thirst }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Metabolism')
AddEventHandler('DokusCore:Core:DBSet:Metabolism', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'all') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Health') end
      -- if (args[3][4] == nil) then return ErrorMsg('Hunger') end
      -- if (args[3][5] == nil) then return ErrorMsg('Thirst') end
      local Steam, CharID = args[3][1], args[3][2]
      local Health, Hunger, Thirst = args[3][3], args[3][4], args[3][5]
      DBIns(DB.Metabolism.AllVitals, { Health = Health, Hunger = Hunger, Thirst = Thirst, Steam = Steam, CharID = CharID }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Metabolism')
AddEventHandler('DokusCore:Core:DBDel:Metabolism', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      DBDel(DB.Metabolism.Delete, { Steam = args[3][1], CharID = args[3][2] }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
