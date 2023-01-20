--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/DoorLocks.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:DoorLocks', function(source, args)
  local Exist, Result = false, {}

  if (Low(args[1]) == 'single') then
    if (Low(args[2]) == 'hash') then
      local X = DBGet(DB.DoorLocks.GetViaHash, { Hash = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end

  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'hash') then end
    if (Low(args[2]) == 'houseid') then
      local X = DBGet(DB.DoorLocks.GetAllViaHouseID, { HouseID = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
