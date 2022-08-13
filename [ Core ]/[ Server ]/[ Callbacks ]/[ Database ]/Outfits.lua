--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Outfits.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Outfits', function(source, args)
  local Exist, Result = false, {}

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      local X = DBGet(DB.Outfits.GetSingleUser, { Steam = args[3][1], CharID = args[3][2] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'all') then
      local X = DBGet(DB.Outfits.GetAllUser, { Steam = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end

  if (Low(args[1]) == 'all') then
    local X = DBGet(DB.Outfits.GetAll, {})
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
