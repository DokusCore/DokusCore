--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Weapons.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Weapons', function(source, args)
  local Exist, Result = false, {}
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'hex') then
        local Index = { SteamID = args[4][1], CharID = args[4][2], Hex = args[4][3] }
        local X = DBGet(DB.Weapons.GetSingleUserHex, Index)
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end

      if (Low(args[3]) == 'hash') then
        local Index = { SteamID = args[4][1], CharID = args[4][2], Hash = args[4][3] }
        local X = DBGet(DB.Weapons.GetSingleUserHash, Index)
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end
    end

    if (Low(args[2]) == 'all') then
      local Index = { SteamID = args[3][1], CharID = args[3][2] }
      local X = DBGet(DB.Weapons.GetSingleUser, Index)
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
