--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Settings.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Stores')
AddEventHandler('DokusCore:Core:DBSet:Stores', function(args)

  if (Low(args[1]) == 'storedata') then
    local Q = DBSet(DB.Stores.SetStoreData, { Stores = args[2][2], Item = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'stockdata') then
    local Q = DBSet(DB.Stores.SetStockData, { Stock = args[2][2], Item = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'itemdata') then
    local Q = DBSet(DB.Stores.SetItemData, { ItemData = args[2][2], Item = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'taxdata') then
    local Q = DBSet(DB.Stores.SetTaxData, { Taxation = args[2][2], Item = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'itemtype') then
    local Q = DBSet(DB.Stores.SetItemType, { Type = args[2][2], Item = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'itemname') then
    local Q = DBSet(DB.Stores.SetItemName, { Name = args[2][2], Item = args[2][1] }, function() end)
  end

  if (Low(args[1]) == 'itemdescription') then
    local Q = DBSet(DB.Stores.SetItemDesc, { Description = args[2][2], Item = args[2][1] }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------










--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
