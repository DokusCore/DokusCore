--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Zones.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Zones', function(source, args)
  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'type') then
      local X = DBGet(DB.Zones.GetViaType, { Type = args[3][1] })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end

  if (Low(args[1]) == 'all') then
    if (Low(args[2]) == 'all') then
      local X = DBGet(DB.Zones.GetAll, {})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
