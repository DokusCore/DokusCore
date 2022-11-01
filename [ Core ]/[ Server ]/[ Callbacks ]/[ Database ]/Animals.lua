--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Animals.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Animals', function(source, args)
  local Exist, Result = false, {}

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'all') then
        local X = DBGet(DB.Animals.GetUSAll, { SteamID = args[4][1], CharID = args[4][2] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end

      if (Low(args[3]) == 'type') then
        local X = DBGet(DB.Animals.GetUSType, { SteamID = args[4][1], CharID = args[4][2], Type = args[4][3] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end

      if (Low(args[3]) == 'model') then
        local X = DBGet(DB.Animals.GetUSModel, { SteamID = args[4][1], CharID = args[4][2], Model = args[4][3] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end
    end

    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'type') then
        local X = DBGet(DB.Animals.GetUAType, { SteamID = args[4][1], Type = args[4][2] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end

      if (Low(args[3]) == 'model') then
        local X = DBGet(DB.Animals.GetUAModel, { SteamID = args[4][1], Model = args[4][2] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end
    end
  end

  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'type') then
      local X = DBGet(DB.Animals.GetAUType, { Type = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
    if (Low(args[2]) == 'model') then
      local X = DBGet(DB.Animals.GetAUModel, { Model = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- USAGE:
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'User', 'Single', 'All',   { SteamID, CharID }                    })
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'User', 'Single', 'Type',  { SteamID, CharID, 'Dog' }             })
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'User', 'Single', 'Model', { SteamID, CharID, 'A_C_DogHusky_01' } })
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'User', 'All', 'Type',     { SteamID, CharID, 'Dog' }             })
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'User', 'All', 'Model',    { SteamID, CharID, 'A_C_DogHusky_01' } })
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'All', 'Type',             { SteamID, CharID, 'Dog' }             })
-- local DBGET = TSC('DokusCore:Core:DBGet:Animals', { 'User', 'Model',           { 'A_C_DogHusky_01' }                  })
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
