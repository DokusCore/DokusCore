--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:GetInventory', function(source, args)
  local Table, Result = DB.Inventory.Get, {}
  MySQL.Async.fetchAll(Table, {Steam = args[1], CharID = args[2]}, function(res)
    if (args == nil) then return end
    for k, v in pairs(res) do table.insert(Result, v) end
  end) Wait(250)
  return Result 
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:AddInventoryItem', function(source, args)
  local Steam, CharID, Type = args[1], args[2], args[3]
  local Item, Amount, Meta = args[4][1], args[4][2], args[4][3]
  local Data = TCC(-1, 'DokusCore:C:Core:DB:GetInventory', {Steam, CharID})
  local Existing = false

  -- Check Item
  for k,v in pairs(Data) do if (v.Item == Item) then Existing = true end end

  -- If no item already exists, insert item
  if not Existing then
    MySQL.Async.execute(DB.Inventory.InsertTable, {
      Steam = Steam,
      CharID = CharID,
      Type = Type,
      Item = Item,
      Amount = Amount,
      Meta = Meta
    }, function() end)
  end

  -- If item already exist, increase the item amount
  if Existing then
    for k, v in pairs(Data) do
      if (v.Item == Item) then
        local nAmount = (v.Amount + Amount)
        MySQL.Async.execute(DB.Inventory.SetItem, {
          Amount = nAmount,
          Meta = Meta,
          Item = Item,
          Steam = Steam,
          CharID = CharID
        }, function() end)
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:DelInventoryItem', function(source, args)
  local Item, Amount, Steam, CharID = args[1], args[2], args[3], args[4]
  local Data = TCC(-1, 'DokusCore:C:Core:DB:GetInventory', {Steam, CharID})
  for k, v in pairs(Data) do
    if (v.Item == Item) then
      local nAmount = (v.Amount - Amount)
      if (nAmount <= 0) then
        -- Remove item from inventory completely
        MySQL.Async.execute(DB.Inventory.DelItem, {
          Item = Item,
          Steam = Steam,
          CharID = CharID
        }, function() end)
      else
        -- Only remove the amount of needed items.
        MySQL.Async.execute(DB.Inventory.SetItem, {
          Amount = nAmount,
          Meta = v.Meta,
          Item = Item,
          Steam = Steam,
          CharID = CharID
        }, function() end)
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
