--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Storages.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Storages')
AddEventHandler('DokusCore:Core:DBIns:Storages', function(args)
  -- if (args == nil)       then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil)    then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil)    then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'dropbox') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    -- if (args[2][3] == nil) then return ErrorMsg('Err_DBInsNoXBoxID') end
    -- if (args[2][4] == nil) then return ErrorMsg('Err_DBInsNoItemName') end
    -- if (args[2][5] == nil) then return ErrorMsg('Err_DBInsNoItemAmount') end
    -- if (args[2][6] == nil) then return ErrorMsg('Err_DBInsNoBoxCoords') end
    local Steam, CharID, BoxID = args[2][1], args[2][2], args[2][3]
    local Item, Amount, Coords = args[2][4], args[2][5], args[2][6]

    local Meta = { Item = Item, Amount = Amount }
    local mEncode = json.encode({ Meta })
    local cEncode = json.encode(Coords)

    DBIns(DB.Storages.InsertDropBox, {
      Steam = Steam, CharID = CharID, Type = args[1],
      BoxID = BoxID, Coords = cEncode, Meta = mEncode
    }, function() end)

    -- TCC(-1, 'DokusCore:Core:DBSet:Inventory', { 'DropBox', 'RemoveItem', { Steam, CharID, Item, Amount }})
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Storages')
AddEventHandler('DokusCore:Core:DBSet:Storages', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'dropbox') then
    if (Low(args[2]) == 'insertitem') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      -- if (args[3][3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      -- if (args[3][3][2] == nil) then return ErrorMsg('Err_BoxMeta') end
      -- if (args[3][3][3] == nil) then return ErrorMsg('Err_NoItemName') end
      -- if (args[3][3][4] == nil) then return ErrorMsg('Err_NoItemAmount') end
      -- if (args[3][3][5] == nil) then return ErrorMsg('Err_NoItemAmount') end
      local Index, Result, ItemExists = {}, {}, false
      local Steam, CharID  = args[3][1], args[3][2]
      local BoxID, BoxMeta = args[3][3][1], args[3][3][2]
      local Item, Amount   = args[3][3][3], args[3][3][4]
      local Dec = Decoded(BoxMeta)

      for k, v in pairs(Dec) do Insert(Index, { Item = v.Item, Amount = v.Amount }) end
      for k, v in pairs(Index) do
        if (v.Item == Item) then
          ItemExists = true
          Insert(Result, { Item = v.Item, Amount = (v.Amount + Amount) })
          Remove(Index, k)
        end
      end

      for k, v in pairs(Index) do Insert(Result, { Item = v.Item, Amount = v.Amount }) end
      if (ItemExists == false) then Insert(Result, { Item = Item, Amount = Amount }) end
      local Enc = Encoded(Result)
      DBSet(DB.Storages.SetDropBoxItems, { Meta = Enc, BoxID = BoxID }, function() end)
    end

    if (Low(args[2]) == 'replaceid') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      local OldBoxID, BoxID = args[3][1], args[3][2]
      DBSet(DB.Storages.SetReplaceBoxes, { NewBoxID = BoxID, OldBoxID = OldBoxID}, function() end)
    end

    if (Low(args[2]) == 'removeitem') then
      -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoItemName') end
      -- if (args[3][3] == nil) then return ErrorMsg('Err_NoItemAmount') end
      local Index, Result, ItemExists = {}, {}, false
      local BoxID, BoxMeta, Item, Amount = args[3][1], args[3][2], args[3][3], args[3][4]
      local Dec = Decoded(BoxMeta)

      for k,v in pairs(Dec) do
        if (v.Item == Item) then
          if (#Dec == 1) then
            -- Box only has 1 item type - pick up all and remove box
            if (v.Amount >= 1) then
              TriggerEvent('DokusCore:Core:DBDel:Storages', { 'DropBox', 'Single', { BoxID } })
              TriggerClientEvent('DokusCore:Inventory:BoxHandling', source, { 'RemoveBox', { BoxID } })
            end
          end


          if (#Dec > 1) then
            -- More then 1 item type are in the box - get item and leave the box
            if (v.Amount >= 1) then
              for k, v in pairs(Dec) do Insert(Index, { Item = v.Item, Amount = v.Amount }) end
              for k, v in pairs(Index) do if (v.Item == Item) then ItemExists = true Remove(Index, k) end end
              for k, v in pairs(Index) do Insert(Result, { Item = v.Item, Amount = v.Amount }) end
              local Enc = Encoded(Result)
              TriggerEvent('DokusCore:Core:DBSet:Storages', { 'DropBox', 'Update', { BoxID, Enc } })
            end
          end
        end
      end
    end

    if (Low(args[2]) == 'update') then
      -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      -- if (args[3][2] == nil) then return ErrorMsg('BoxMeta') end
      local BoxID, BoxMeta = args[3][1], args[3][2]
      DBSet(DB.Storages.SetDropBoxItems, { Meta = BoxMeta, BoxID = BoxID }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Storages')
AddEventHandler('DokusCore:Core:DBDel:Storages', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'dropbox') then
    if (Low(args[2]) == 'single') then
      -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      DBDel(DB.Storages.DelBoxViaID, { BoxID = args[3][1] }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
