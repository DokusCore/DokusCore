--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Characters.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Characters', function(source, args)
  -- if (args == nil) then return SysErr('SysErr_WrongFormat', File, 7) end
  -- if (args[1] == nil) then return SysErr('SysError_CatTypeMissing', File, 8) end
  -- if (args[2] == nil) then return SysErr('SysError_CatTypeMissing', File, 9) end
  -- if (args[3] == nil) then return SysErr('SysErr_WrongFormat', File, 10) end
  local Exist, Result = false, {}

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (args[3][1] == nil) then return SysErr('SysErr_SteamArgsMissing', File, 15) end
      if (args[3][2] == nil) then return SysErr('SysErr_CharIDArgsMissing', File, 16) end
      local X = DBGet(DB.Characters.Get, {Steam = args[3][1], CharID = args[3][2]})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'all') then
      if (args[3][1] == nil) then return SysErr('SysErr_SteamArgsMissing', File, 15) end
      local X = DBGet(DB.Characters.GetOnlySteam, { Steam = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end

  if (Low(args[1]) == 'all') then
    local X = DBGet(DB.Characters.GetAll, {})
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
