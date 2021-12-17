--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBSet = MySQL.Async.execute
local Low = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local function WebTrans(Valuta, Steam, CharID, Type, Amount, Cur, Bank, OldCur, OldBank)
  if (_Webhooks.Discord[1].Enabled) then
    TCC(-1, 'DokusCore:Core:Webhooks:Discord', { 'BankTrans', Valuta, { Steam, CharID, Type, Amount, Cur, OldCur, Bank, OldBank } })
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Insert the user into the users table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Settings', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end

  -- Set the settings music value for the user
  if (Low(args[1]) == 'music') then
    local Steam, Value, Error = args[2][1], args[2][2], false
    if (args[2][2] == nil) then return ErrorMsg('Err_DBSetNoMusicValue') end
    local Q = DBSet(DB.Settings.SetMusic, { Music = Value, Steam = Steam }, function() end)
  end

  -- Set the settings language for the user.
  if (Low(args[1]) == 'language') then
    local Steam, Value = args[2][1], args[2][2]
    DBSet(DB.Settings.SetLanguage, { Language = Value, Steam = Steam }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Set the data for the characters table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Characters', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end


  -- Update the Characters name
  if (Low(args[1]) == 'charname') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    local Steam, CharID, Name = args[2][1], args[2][2], args[2][3]
    DBSet(DB.Characters.SetCharName, { cName = Name, Steam = Steam, CharID = CharID }, function() end)
  end

  if (Low(args[1]) == 'coords') then
    if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    if (args[2][3] == nil) then return ErrorMsg('Err_NoCoords') end
    DBSet(DB.Characters.SetCoords, { Coords = args[2][3], Steam = args[2][1], CharID = args[2][2] }, function() end)
  end

  if (Low(args[1]) == 'skin') then
    if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    if (args[2][3] == nil) then return ErrorMsg('Err_NoSkinValue') end
    DBSet(DB.Characters.SetSkin, { Skin = args[2][3], Steam = args[2][1], CharID = args[2][2] }, function() end)
  end

  if (Low(args[1]) == 'payment') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    if (args[2][3] == nil) then return ErrorMsg('Err_PaymentAmount') end
    local Char = TCC(-1, 'DokusCore:Core:DBGet:Characters', { 'User', 'Single', { args[2][1], args[2][2] } })
    if (Char.Exist) then
      local Money = tonumber(Char.Result[1].Money - args[2][3])
      print("user has money $"..Money)
      if (Money >= 0) then
        DBSet(DB.Characters.SetMoney, { Money = Money, Steam = args[2][1], CharID = args[2][2] }, function() end)
        print("User has payed", args[2][3]) Wait(1000)
        return true else return false
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Set the data for the bank table
--------------------------------------------------------------------------------
-- NOTE: API NEEDS A REWRITE TO WORK WITH THE NEW BANK VERSION
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Bank', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return print("Unable to perform this action. Missing category type!") end
  if (args[2] == nil) then return print("Unable to perform this action. Missing category type!") end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  local function ReSync(Meta, City)
    local Data = {}
    if (Meta ~= nil) then
      local Decoded = json.decode(Meta)
      for k, v in pairs(Decoded) do
        local Sync, City, Money, Gold = false, v.Bank, v.Money, v.Gold
        table.insert(Data, { Bank = City, Synced = Sync, Money = Money, Gold = Gold })
      end
      local Synced = json.encode(Data)
      return Synced
    else
      for k, v in pairs(_Banking.Zones) do
        if (Low(v.ID) ~= Low(City)) then
          local Sync, City, Money, Gold = false, v.ID, 0, 0
          table.insert(Data, { Bank = City, Synced = Sync, Money = Money, Gold = Gold })
        end
      end
      local Synced = json.encode(Data)
      return Synced
    end
  end

  if (Low(args[1]) == 'deposit') then
    if (args[3][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[3][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    if (args[3][3] == nil) then return ErrorMsg('Err_NoCityName') end
    if (args[3][4] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end
    if (args[3][5] == nil) then return ErrorMsg('Err_NoFeeAmount') end
    local Steam, CharID, City, Amount, Fee = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5]
    local Char = TCC(-1, 'DokusCore:Core:DBGet:Characters', { 'User', 'Single', { args[3][1], args[3][2] } }).Result[1]
    local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'User', 'Single', 'Bank', { args[3][1], args[3][2], args[3][3] } }).Result[1]

    if (Low(args[2]) == 'money') then
      local Money, BankMoney, OldMoney, OldBankMoney = tonumber((Char.Money - Amount) - Fee), tonumber(Bank.Money + Amount), Char.Money, Bank.Money
      if (Money >= 0) then
        local Resynced = ReSync(Bank.Synced, City)
        DBSet(DB.Banks.SetMoneySynced, { Money = BankMoney, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = City }, function() end)
        DBSet(DB.Characters.SetMoney, { Money = Money, Steam = args[3][1], CharID = args[3][2] }, function() end)
        WebTrans('Money', Steam, CharID, 'Deposit', Amount, Money, BankMoney, OldMoney, OldBankMoney) return true else return false
      end
    end

    if (Low(args[2]) == 'gold') then
      local Gold, BankGold, OldGold, OldBankGold = tonumber((Char.Gold - Amount) - Fee), tonumber(Bank.Gold + Amount), Char.Gold, Bank.Gold
      if (Gold >= 0) then
        local Resynced = ReSync(Bank.Synced, City)
        DBSet(DB.Banks.SetGoldSynced, { Gold = BankGold, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = City }, function() end)
        DBSet(DB.Characters.SetGold, { Gold = Gold, Steam = args[3][1], CharID = args[3][2] }, function() end)
        WebTrans('Gold', Steam, CharID, 'Deposit', Amount, Gold, BankGold, OldGold, OldBankGold) return true else return false
      end
    end
  end

  if (Low(args[1]) == 'withdraw') then
    if (args[3][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[3][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    if (args[3][3] == nil) then return ErrorMsg('Err_NoCityName') end
    if (args[3][4] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end
    if (args[3][5] == nil) then return ErrorMsg('Err_NoFeeAmount') end
    local Steam, CharID, City, Amount, Fee = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5]
    local Char = TCC(-1, 'DokusCore:Core:DBGet:Characters', { 'User', 'Single', { args[3][1], args[3][2] } }).Result[1]
    local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'User', 'Single', 'Bank', { args[3][1], args[3][2], args[3][3] } }).Result[1]


    if (Low(args[2]) == 'money') then
      local Money, BankMoney, OldMoney, OldBankMoney = tonumber((Char.Money + Amount) - Fee), tonumber(Bank.Money - Amount), Char.Money, Bank.Money
      if (BankMoney >= 0) then
        local Resynced = ReSync(Bank.Synced, City)
        DBSet(DB.Banks.SetMoneySynced, { Money = BankMoney, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = City }, function() end)
        DBSet(DB.Characters.SetMoney, { Money = Money, Steam = args[3][1], CharID = args[3][2] }, function() end)
        WebTrans('Money', Steam, CharID, 'Deposit', Amount, Money, BankMoney, OldMoney, OldBankMoney) return true else return false
      end
    end

    if (Low(args[2]) == 'gold') then
      local Gold, BankGold, OldGold, OldBankGold = tonumber((Char.Gold + Amount) - Fee), tonumber((Bank.Gold - Amount)), Char.Gold, Bank.Gold
      if (BankGold >= 0) then
        local Resynced = ReSync(Bank.Synced, City)
        DBSet(DB.Banks.SetGoldSynced, { Gold = BankGold, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = City }, function() end)
        DBSet(DB.Characters.SetGold, { Gold = Gold, Steam = args[3][1], CharID = args[3][2] }, function() end)
        WebTrans('Gold', Steam, CharID, 'Deposit', Amount, Gold, BankGold, OldGold, OldBankGold) return true else return false
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Update data on the users table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Users', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  -- Update the Characters name
  if (Low(args[1]) == 'sname') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBInsNoSteamName') end
    local Steam, sName = args[2][1], args[2][2], args[2][3]
    DBSet(DB.Users.SetSName, { sName = sName, Steam = Steam }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Update data on the storage table
--------------------------------------------------------------------------------
local Insert = table.insert
local Remove = table.remove
RSC('DokusCore:Core:DBSet:Storages', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'dropbox') then
    if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
    if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

    if (Low(args[2]) == 'insertitem') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      if (args[3][3] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      if (args[3][4] == nil) then return ErrorMsg('Err_NoItemName') end
      if (args[3][5] == nil) then return ErrorMsg('Err_NoItemAmount') end
      local Index, Result, ItemExists = {}, {}, false
      local Steam, CharID = args[3][1], args[3][2]
      local BoxID, Item, Amount = args[3][3], args[3][4], args[3][5]
      local Drop = TCC(-1, 'DokusCore:Core:DBGet:Storages', { 'DropBox', 'BoxID', { BoxID } })
      local DropItems = Drop.Result[1].Meta
      local Decoded = json.decode(DropItems)

      for k, v in pairs(Decoded) do Insert(Index, { Item = v.Item, Amount = v.Amount }) end
      for k, v in pairs(Index) do
        if (v.Item == Item) then
          ItemExists = true
          Insert(Result, { Item = v.Item, Amount = (v.Amount + Amount) })
          Remove(Index, k)
        end
      end

      for k, v in pairs(Index) do Insert(Result, { Item = v.Item, Amount = v.Amount }) end
      if (ItemExists == false) then Insert(Result, { Item = Item, Amount = Amount }) end

      local Encoded = json.encode(Result)
      DBSet(DB.Storages.SetDropBoxItems, { Meta = Encoded, BoxID = BoxID }, function() end)
    end

    if (Low(args[2]) == 'replaceid') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoDropBoxID') end
      local OldBoxID, BoxID = args[3][1], args[3][2]
      DBSet(DB.Storages.SetReplaceBoxes, { NewBoxID = BoxID, OldBoxID = OldBoxID}, function() end)
    end
  end

  if (Low(args[2]) == 'meta') then
    if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
    if (args[3][2] == nil) then return print("No Item Array") end
    DBSet(DB.Storages.SetItemMeta, { Meta = args[3][2], BoxID = args[3][1] }, function() end)
  end

  if (Low(args[2]) == 'removeitem') then
    if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    if (args[3][1] == nil) then return ErrorMsg('Err_NoDropBoxID') end
    if (args[3][2] == nil) then return ErrorMsg('Err_NoItemName') end
    if (args[3][3] == nil) then return ErrorMsg('Err_NoItemAmount') end
    local BoxID, Item, Amount = args[3][1], args[3][2], args[3][3]
    local Data = TCC(-1, 'DokusCore:Core:DBGet:Storages', { 'DropBox', 'BoxID', { BoxID } })
    local RemoveBox = false
    local Decoded = json.decode(Data.Result[1].Meta)

    for k, v in pairs(Data.Result) do
      local Decoded = json.decode(v.Meta)
      for k, v in pairs(Decoded) do
        if (v.Item == Item) then
          if (#Decoded <= 1) then
            TCC(-1, 'DokusCore:Core:DBDel:Storages', { 'DropBox', 'BoxID', { BoxID } })
            return { RemoveBox = true, BoxID = BoxID}
          else
            for k, v in pairs(Decoded) do if (v.Item == Item) then Remove(Decoded, k) end end
            local Encoded = json.encode(Decoded)
            local Data = TCC(-1, 'DokusCore:Core:DBSet:Storages', { 'DropBox', 'Meta', { BoxID, Encoded } })
            return { RemoveBox = false, BoxID = BoxID }
          end
        end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Update data on the inventory table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Inventory', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'user') then
    if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

    if (Low(args[2]) == 'additem') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
      if (args[3][4] == nil) then return ErrorMsg('Err_NoItemAmount') end
      local Steam, CharID, Item, Amount = args[3][1], args[3][2], args[3][3], args[3][4]
      local Data = TCC(-1, 'DokusCore:Core:DBGet:Inventory', { 'User', 'Item', { Steam, CharID, Item } })
      if (Data.Exist) then
        local Amount = ( Data.Result[1].Amount + Amount )
        DBSet(DB.Inventory.SetUserItem, { Amount = Amount, Steam = Steam, CharID = CharID, Item = Item}, function() end)
      else
        TCC(-1, 'DokusCore:Core:DBIns:Inventory', { 'User', 'InsertItem', { Steam, CharID, 'TO BE BUILD', Item, Amount } })
      end
    end

    if (Low(args[2]) == 'removeitem') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
      if (args[3][4] == nil) then return ErrorMsg('Err_NoItemAmount') end
      local Steam, CharID, Item, Amount = args[3][1], args[3][2], args[3][3], args[3][4]
      local Data = TCC(-1, 'DokusCore:Core:DBGet:Inventory', { 'User', 'Item', { Steam, CharID, Item } })
      if (Data.Exist) then
        local DItem, DAmount = Data.Result[1].Item, Data.Result[1].Amount
        local nAmount = tonumber(DAmount - Amount)
        if (nAmount <= 0) then TCC(-1, 'DokusCore:Core:DBDel:Inventory', { 'User', 'Item', { Steam, CharID, Item } }) return end
        if (nAmount > 0) then DBSet(DB.Inventory.SetUserItem, { Amount = nAmount, Steam = Steam, CharID = CharID, Item = Item }, function() end) return end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Stocks', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'store') then

  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:Admin:DBSet:Characters', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[4] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[4][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
  if (args[4][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
  if (args[4][3] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end

  local WorB, mType, Math = args[1], args[2], args[3]
  local Steam, CharID, Amount = args[4][1], args[4][2], args[4][3]
  local Char = TCC(-1, 'DokusCore:Core:DBGet:Characters', { 'User', 'Single', { Steam, CharID } }).Result[1]
  -- local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'User', 'Single', mType, { Steam, CharID } })

  if (Low(WorB) == 'wallet') then
    if (Low(mType) == 'money') then
      if ((Low(Math) == 'add') or (Low(Math) == '+')) then
        local Amount = tonumber(Char.Money + Amount)
        DBSet(DB.Characters.SetMoney, { Money = Amount, Steam = Steam, CharID = CharID }, function() end)
      elseif ((Low(Math) == 'remove') or (Low(Math) == '-')) then
        local Amount = tonumber(Char.Money - Amount)
        if (Amount <= 0) then Amount = 0 end
        DBSet(DB.Characters.SetMoney, { Money = Amount, Steam = Steam, CharID = CharID }, function() end)
      end
    elseif (Low(mType) == 'gold') then
      if ((Low(Math) == 'add') or (Low(Math) == '+')) then
        local Amount = tonumber(Char.Gold + Amount)
        DBSet(DB.Characters.SetGold, { Gold = Amount, Steam = Steam, CharID = CharID }, function() end)
      elseif ((Low(Math) == 'remove') or (Low(Math) == '-')) then
        local Amount = tonumber(Char.Gold - Amount)
        if (Amount <= 0) then Amount = 0 end
        DBSet(DB.Characters.SetGold, { Gold = Amount, Steam = Steam, CharID = CharID }, function() end)
      end
    end

  elseif (Low(WorB) == 'bank') then
    print(Error.."The add gold or money for banks accounts is still in developement!^0")
  end
end)

























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
