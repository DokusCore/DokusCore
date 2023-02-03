--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Inventory.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Inventory', function(source, args)
  local Exist, Result = false, nil
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'item') then
      local Steam, CharID, Item = args[3][1], args[3][2], args[3][3]
      local X = DBGet(DB.Inventory.GetUserItem, { Steam = Steam, CharID = CharID, Item = Low(Item) })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end

    if (Low(args[2]) == 'all') then
      local Steam, CharID = args[3][1], args[3][2]
      local X = DBGet(DB.Inventory.GetUser, { Steam = Steam, CharID = CharID })
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
