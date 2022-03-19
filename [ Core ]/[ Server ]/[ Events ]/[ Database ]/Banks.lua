--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Database ]/Banks.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Banks')
AddEventHandler('DokusCore:Core:DBSet:Banks', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return print('Err_MissingType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_BoolMissing') end
  -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

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

  local function WebTrans(Valuta, Steam, CharID, Type, Amount, Cur, Bank, OldCur, OldBank)
    if (_Webhooks.Discord[1].Enabled) then
      TriggerEvent('DokusCore:Core:Webhooks:Discord', { 'BankTrans', Valuta, { Steam, CharID, Type, Amount, Cur, OldCur, Bank, OldBank } })
    end
  end

  if (Low(args[1]) == 'auto') then -- Auto calculate the values or not
    if (args[2] == false) then -- Define if taxation is needed
      -- if (args[3][1] == nil) then return print('Err_MissingType') end
      -- if (args[3][2] == nil) then return print('Err_MissingType') end
      -- if (args[3][3][1] == nil) then return print('Steam') end
      -- if (args[3][3][2] == nil) then return print('CharID') end
      -- if (args[3][3][3] == nil) then return print('Location') end
      -- if (args[3][3][4] == nil) then return print('Amount') end
      -- if (args[3][3][5] == nil) then return print('CharData') end
      -- if (args[3][3][6] == nil) then return print('BankData') end
      local Steam, CharID, Loc = args[3][3][1], args[3][3][2], args[3][3][3]
      local Amount, Char, Bank, aBank = args[3][3][4], args[3][3][5], args[3][3][6], args[3][3][7]

      if (Low(args[3][1]) == 'deposit') then
        if (Low(args[3][2]) == 'money') then
          local Money, BankMoney = (Char.Money - Amount), (Bank.Money + Amount)
          local Resynced = ReSync(Bank.Synced, Loc)
          DBSet(DB.Banks.SetMoneySynced, { Money = BankMoney, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = Loc }, function() end)
          DBSet(DB.Characters.SetMoney, { Money = Money, Steam = Steam, CharID = CharID }, function() end)
          WebTrans('Money', Steam, CharID, 'Deposit', Amount, Money, BankMoney, Char.Money, Bank.Money)
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetCharMoney', { Money } })

          -- Sync Bank Money DataSync
          local Others, Change = {}, {}
          for k,v in pairs(aBank) do
            if (v.Bank == Loc) then table.insert(Change, { Loc = v.Bank, Money = BankMoney }) end
            if (v.Bank ~= Loc) then table.insert(Others, { Loc = v.Bank, Money = v.Money }) end
          end
          for k,v in pairs(Change) do table.insert(Others, { Loc = v.Loc, Money = v.Money }) end
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetBankMoney', { json.encode(Others) } })


        elseif (Low(args[3][2]) == 'gold') then
          local Gold, BankGold = (Char.Gold - Amount), (Bank.Gold + Amount)
          local Resynced = ReSync(Bank.Synced, Loc)
          DBSet(DB.Banks.SetGoldSynced, { Gold = BankGold, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = Loc }, function() end)
          DBSet(DB.Characters.SetGold, { Gold = Gold, Steam = Steam, CharID = CharID }, function() end)
          WebTrans('Gold', Steam, CharID, 'Deposit', Amount, Gold, BankGold, Char.Gold, Bank.Gold)
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetCharGold', { Gold } })

          -- Sync Bank Money DataSync
          local Others, Change = {}, {}
          for k,v in pairs(aBank) do
            if (v.Bank == Loc) then table.insert(Change, { Loc = v.Bank, Gold = BankGold }) end
            if (v.Bank ~= Loc) then table.insert(Others, { Loc = v.Bank, Gold = v.Gold }) end
          end
          for k,v in pairs(Change) do table.insert(Others, { Loc = v.Loc, Gold = v.Gold }) end
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetBankGold', { json.encode(Others) } })
        end
      end

      if (Low(args[3][1]) == 'withdraw') then
        if (Low(args[3][2]) == 'money') then
          local Money, BankMoney = (Char.Money + Amount), (Bank.Money - Amount)
          local Resynced = ReSync(Bank.Synced, Loc)
          DBSet(DB.Banks.SetMoneySynced, { Money = BankMoney, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = Loc }, function() end)
          DBSet(DB.Characters.SetMoney, { Money = Money, Steam = Steam, CharID = CharID }, function() end)
          WebTrans('Money', Steam, CharID, 'Withdraw', Amount, Money, BankMoney, Char.Money, Bank.Money)
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetCharMoney', { Money } })

          -- Sync Bank Money DataSync
          local Others, Change = {}, {}
          for k,v in pairs(aBank) do
            if (v.Bank == Loc) then table.insert(Change, { Loc = v.Bank, Money = BankMoney }) end
            if (v.Bank ~= Loc) then table.insert(Others, { Loc = v.Bank, Money = v.Money }) end
          end
          for k,v in pairs(Change) do table.insert(Others, { Loc = v.Loc, Money = v.Money }) end
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetBankMoney', { json.encode(Others) } })

        elseif (Low(args[3][2]) == 'gold') then
          local Gold, BankGold = (Char.Gold + Amount), (Bank.Gold - Amount)
          local Resynced = ReSync(Bank.Synced, Loc)
          DBSet(DB.Banks.SetGoldSynced, { Gold = BankGold, Synced = Resynced, Steam = Steam, CharID = CharID, Bank = Loc }, function() end)
          DBSet(DB.Characters.SetGold, { Gold = Gold, Steam = Steam, CharID = CharID }, function() end)
          WebTrans('Gold', Steam, CharID, 'Withdraw', Amount, Gold, BankGold, Char.Gold, Bank.Gold)
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetCharGold', { Gold } })

          -- Sync Bank Money DataSync
          local Others, Change = {}, {}
          for k,v in pairs(aBank) do
            if (v.Bank == Loc) then table.insert(Change, { Loc = v.Bank, Gold = BankGold }) end
            if (v.Bank ~= Loc) then table.insert(Others, { Loc = v.Bank, Gold = v.Gold }) end
          end
          for k,v in pairs(Change) do table.insert(Others, { Loc = v.Loc, Gold = v.Gold }) end
          TriggerClientEvent('DokusCore:Sync:Set:UserData', source, { 'SetBankGold', { json.encode(Others) } })
        end
      end
    else
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Banks')
AddEventHandler('DokusCore:Core:DBIns:Banks', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_DBInsBanksNoCharID') end
    -- if (args[2][3] == nil) then return ErrorMsg('Err_NoCatType') end
    -- if (args[2][4] == nil) then return ErrorMsg('Err_NoCatType') end
    -- if (args[2][5] == nil) then return ErrorMsg('Err_DBInsBanksNoMoney') end
    -- if (args[2][6] == nil) then return ErrorMsg('Err_DBInsBanksNoGold') end
    -- if (args[2][7] == nil) then return ErrorMsg('Err_BankSyncParameter') end

    DBIns(DB.Banks.Insert, {
      Steam = args[2][1], CharID = args[2][2], Type = args[2][3],
      Bank = args[2][4], Money = args[2][5], Gold = args[2][6],
      Synced = args[2][7]
    }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Banks')
AddEventHandler('DokusCore:Core:DBDel:Banks', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      -- if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      -- if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      DBDel(DB.Banks.DelViaSteam, { Steam = args[3][1], CharID = args[3][2] }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
