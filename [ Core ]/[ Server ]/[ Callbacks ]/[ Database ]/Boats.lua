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
      local X = DBGet(DB.Boats.GetSingle, { Steam = args[3][1], CharID = args[3][2] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
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
