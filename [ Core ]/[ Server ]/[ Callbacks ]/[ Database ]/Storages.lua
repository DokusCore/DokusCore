--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Storages.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Storages', function(source, args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  local Exist, Result = false, nil

  if (Low(args[1]) == 'dropbox') then
    -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

    -- if (Low(args[2]) == 'user') then
    --   if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    --   if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    --   if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
    --   DBGet(DB.Storages.GetUserDropBox, { Type = args[1] }, function(r) if (r[1] ~= nil) then Exist = true Result = r end end)
    --   Wait(200) return { Exist = Exist, Result = Result }
    -- end

    if (Low(args[2]) == 'all') then
      local X = DBGet(DB.Storages.GetAllDropBox, { Type = args[1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'boxid') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      local X = DBGet(DB.Storages.GetDropBoxViaID, { BoxID = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
