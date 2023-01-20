--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Properties.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Properties', function(source, args)
  local Exist, Result = false, {}
  if (Low(args[1]) == 'houseid') then
    local X = DBGet(DB.Properties.GetByHouseID, { HouseID = args[2][1] })
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  elseif (Low(args[1]) == 'keyid') then
    local X = DBGet(DB.Properties.GetByKeyID, { KeyID = args[2][1] })
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  elseif (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'all') then
      local X = DBGet(DB.Properties.GetAllUser, { SteamID = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
