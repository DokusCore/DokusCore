--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Admin.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:Admin:DBGet:Characters', function(source, args)
  if (args == nil) then return SysErr('SysErr_WrongFormat', File, 33) end
  if (args[1] == nil) then return SysErr('SysErr_CatTypeMissing', File, 34) end
  if (args[2] == nil) then return SysErr('SysErr_CatTypeMissing', File, 35) end
  if (args[3] == nil) then return SysErr('SysErr_WrongFormat', File, 36) end
  local CatType1, CatType2, Exist, Result = args[1], args[2], false, {}

  if (Low(CatType1) == 'user') then
    if (Low(CatType2) == 'single') then
      if (args[3][1] == nil) then return SysErr('SysErr_SteamArgsMissing', File, 41) end
      if (args[3][2] == nil) then return SysErr('SysErr_CharIDArgsMissing', File, 42) end
      local X = DBGet(DB.Characters.Get, {Steam = args[3][1], CharID = args[3][2]})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(CatType2) == 'all') then
      if (args[3][1] == nil) then return SysErr('SysErr_SteamArgsMissing', File, 49) end
      local X = DBGet(DB.Characters.GetAll, { Steam = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
