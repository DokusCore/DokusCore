--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Settings.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Settings', function(source, args)
  -- if (args == nil) then return SysErr('SysErr_WrongFormat', File, 8) end
  -- if (args[1] == nil) then return SysErr('SysErr_CatTypeMissing', File, 9) end
  -- if (args[2] == nil) then return SysErr('SysErr_WrongFormat', File, 10) end

  local Exist, Result = false, {}
  if (Low(args[1]) == 'user') then
    if (args[2][1] == nil) then return SysErr('SysErr_SteamArgsMissing', File, 13) end
    local X = DBGet(DB.Settings.GetOnlySteam, { Steam = args[2][1] })
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
