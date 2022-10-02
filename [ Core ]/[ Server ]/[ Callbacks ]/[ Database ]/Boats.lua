--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Boats.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Boats', function(source, args)
  local Exist, Result = false, {}

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'all') then
      local X = DBGet(DB.Boats.GetAllUser, { Steam = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'bid') then
        if (Low(args[4]) == 'hanger') then
          local X = DBGet(DB.Boats.GetSingleByIDAndHanger, { Steam = args[5][1], CharID = args[5][2], BID = args[5][1], Hanger = args[5][2] })
          if (X[1] ~= nil) then Exist = true Result = X end
          return { Exist = Exist, Result = Result }
        end
      end
    end
  end

  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'bid') then
      local X = DBGet(DB.Boats.GetAllViaBID, { BID = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'all') then
      local X = DBGet(DB.Boats.GetAll, {})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
