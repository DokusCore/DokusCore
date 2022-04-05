--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Inventory.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Inventory')
AddEventHandler('DokusCore:Core:DBSet:Inventory', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'user') then
    -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

    if (Low(args[2]) == 'removeitem') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
      -- if (args[3][4] == nil) then return ErrorMsg('Err_NoItemAmount') end
      local Steam, CharID, Item, Amount, InvAmount = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5]
      local _Amount = ( InvAmount - Amount )

      print("New Inv Amount", InvAmount, Amount, _Amount, Steam, CharID, Item)

      if (_Amount > 0) then
        DBSet(DB.Inventory.SetUserItem, { Amount = _Amount, Steam = Steam, CharID = CharID, Item = Item }, function() end)
      elseif (_Amount <= 0) then
        TriggerEvent('DokusCore:Core:DBDel:Inventory', { 'User', 'Item', { Steam, CharID, Item } })
      end

      -- local DItem, DAmount = Data.Result[1].Item, Data.Result[1].Amount
      -- local nAmount = tonumber(DAmount - Amount)
      -- if (nAmount <= 0) then TCC(-1, 'DokusCore:Core:DBDel:Inventory', { 'User', 'Item', { Steam, CharID, Item } }) return end
      -- if (nAmount > 0) then DBSet(DB.Inventory.SetUserItem, { Amount = nAmount, Steam = Steam, CharID = CharID, Item = Item }, function() end) return end
    end

    if (Low(args[2]) == 'additem') then
      -- if (args[3][1] == nil) then return ErrorMsg('Steam') end
      -- if (args[3][2] == nil) then return ErrorMsg('CharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Item') end
      -- if (args[3][4] == nil) then return ErrorMsg('Amount') end
      -- if (args[3][4] == nil) then return ErrorMsg('InvAmount') end
      local Steam, CharID = args[3][1], args[3][2]
      local Item, Amount, InvAmount = args[3][3], args[3][4], args[3][5]
      local _Amount = ( Amount + InvAmount )
      DBSet(DB.Inventory.SetUserItem, { Amount = _Amount, Steam = Steam, CharID = CharID, Item = Item }, function() end)
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

    if (Low(args[2]) == 'insertitem') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3] == nil) then return ErrorMsg('Err_NoCatType') end
      -- if (args[3][4] == nil) then return ErrorMsg('Err_DBInsNoItemName') end
      -- if (args[3][5] == nil) then return ErrorMsg('Err_DBInsNoItemAmount') end
      local Steam, CharID, Type, Item, Amount = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5]
      DBIns(DB.Inventory.InsertItem, { Steam=Steam, CharID=CharID, Type=Type, Item=Item, Amount=Amount, Meta=nil }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
