--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Inventory.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Inventory')
AddEventHandler('DokusCore:Core:DBSet:Inventory', function(args)

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'removeitem') then
      local Steam, CharID, Item, Amount, InvAmount = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5]
      local _Amount = ( InvAmount - Amount )
      local Meta = (args[3][6] or '[]')

      if (_Amount > 0) then
        DBSet(DB.Inventory.SetUserItem, { Amount = _Amount, Meta = Meta, Steam = Steam, CharID = CharID, Item = Item }, function() end)
      elseif (_Amount <= 0) then
        TriggerEvent('DokusCore:Core:DBDel:Inventory', { 'User', 'Item', { Steam, CharID, Item } })
      end
    end

    if (Low(args[2]) == 'additem') then
      local Steam, CharID = args[3][1], args[3][2]
      local Item, Amount, InvAmount, Meta = args[3][3], args[3][4], args[3][5], args[3][6]
      if (Meta == nil) then Meta = '[]' end
      local _Amount = ( Amount + InvAmount )
      DBSet(DB.Inventory.SetUserItem, { Amount = _Amount, Meta = Meta, Steam = Steam, CharID = CharID, Item = Item }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Inventory')
AddEventHandler('DokusCore:Core:DBDel:Inventory', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'item') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
      local Steam, CharID, Item = args[3][1], args[3][2], args[3][3]
      DBDel(DB.Inventory.DelUserItem, { Steam = Steam, CharID = CharID, Item = Item }, function() end)
    end

    if (Low(args[2]) == 'all') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      local Steam, CharID = args[3][1], args[3][2]
      DBDel(DB.Inventory.DelAllItems, { Steam = Steam, CharID = CharID }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Inventory')
AddEventHandler('DokusCore:Core:DBIns:Inventory', function(args)
  -- if (args == nil)       then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil)    then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil)    then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'user') then
    -- if (args[3] == nil)    then return ErrorMsg('Err_WrongCallbackFormat') end

    if ((Low(args[2]) == 'insertitem') or (Low(args[2]) == 'insitem')) then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Err_NoCatType') end
      -- if (args[3][4] == nil) then return ErrorMsg('Err_DBInsNoItemName') end
      -- if (args[3][5] == nil) then return ErrorMsg('Err_DBInsNoItemAmount') end
      local Steam, CharID, Type, Item, Amount, Meta = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5], args[3][6]
      if (Meta == nil) then Meta = '[]' end
      DBIns(DB.Inventory.InsertItem, { Steam=Steam, CharID=CharID, Type=Type, Item=Item, Amount=Amount, Meta=Meta }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
