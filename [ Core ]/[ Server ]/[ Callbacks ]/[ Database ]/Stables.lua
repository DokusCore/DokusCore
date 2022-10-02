--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Stables.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Stables', function(source, args)
  local Exist, Result = false, {}
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3][1]) == 'horse') then

        -- Fetch user horse via horse name
        if (Low(args[3][2]) == 'name') then
          local X = DBGet(DB.Stables.GetSingleUserViaName, { SteamID = args[3][3][1], CharID = args[3][3][2], Name = args[3][3][3] })
          if (X[1] ~= nil) then Exist = true Result = X end
          return { Exist = Exist, Result = Result }
        end

        -- Fets all of the users horses
        if (Low(args[3][2]) == 'all') then
          local X = DBGet(DB.Stables.GetAllCharacter, { SteamID = args[3][3][1], CharID = args[3][3][2] })
          if (X[1] ~= nil) then Exist = true Result = X end
          return { Exist = Exist, Result = Result }
        end

        -- Fetch all of the users horses with the same type
        if (Low(args[3][2]) == 'type') then
          local X = DBGet(DB.Stables.GetSingleUserViaType, { SteamID = args[3][3][1], CharID = args[3][3][2], Type = args[3][1] })
          if (X[1] ~= nil) then Exist = true Result = X end
          return { Exist = Exist, Result = Result }
        end

        -- Fetch all of the users horses at a certain stable
        if (Low(args[3][2]) == 'stable') then
          local X = DBGet(DB.Stables.GetSingleUserViaStable, { SteamID = args[3][3][1], CharID = args[3][3][2], Stabled = args[3][3][3] })
          if (X[1] ~= nil) then Exist = true Result = X end
          return { Exist = Exist, Result = Result }
        end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
