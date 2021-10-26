--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBSet = MySQL.Async.execute
local Low   = string.lower
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
    DBSet(DB.Settings.SetMusic, { Music = Value, Steam = Steam })
  end

  -- Set the settings language for the user.
  if (Low(args[1]) == 'language') then
    local Steam, Value = args[2][1], args[2][2]
    DBSet(DB.Settings.SetLanguage, { Language = Value, Steam = Steam })
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
  if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
  if (args[2][2] == nil) then return ErrorMsg('Err_DBSetCharID') end

  -- Update the Characters name
  if (Low(args[1]) == 'charname') then
    local Steam, CharID, Name = args[2][1], args[2][2], args[2][3]
    DBSet(DB.Characters.SetCharName, { cName = Name, Steam = Steam, CharID = CharID })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Set the data for the bank table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Bank', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[3][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
  if (args[3][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
  if (args[3][3] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end
  local Steam, CharID, Amount = args[3][1], args[3][2], args[3][3]
  local Money, BankMoney, Gold, BankGold = 0, 0, 0, 0

  local function Webhook()
    if (_Webhooks.Discord[1].Enabled) then
      TCC(-1, 'DokusCore:Core:Webhooks:Discord', { 'BankTrans', args[2], { Steam, CharID, args[1], Amount,  Money, BankMoney, Gold, BankGold } })
    end
  end

  if (Low(args[2]) == 'money') then
    if (Low(args[1]) == 'deposit') then
      local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } }).Result[1]
      Money, BankMoney = tonumber(Bank.Money - Amount), tonumber(Bank.BankMoney + Amount)
      if (Money >= 0) then
        DBSet(DB.Banks.SetBankMoney, { BankMoney = BankMoney, Steam = Steam, CharID = CharID })
        DBSet(DB.Banks.SetMoney, { Money = Money, Steam = Steam, CharID = CharID })
        Webhook() return true else return false
      end
    end

    if (Low(args[1]) == 'withdraw') then
      local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } }).Result[1]
      Money, BankMoney = tonumber(Bank.Money + Amount), tonumber(Bank.BankMoney - Amount)
      if (BankMoney >= 0) then
        DBSet(DB.Banks.SetBankMoney, { BankMoney = BankMoney, Steam = Steam, CharID = CharID })
        DBSet(DB.Banks.SetMoney, { Money = Money, Steam = Steam, CharID = CharID })
        Webhook() return true else return false
      end
    end
  end

  if (Low(args[2]) == 'gold') then
    if (Low(args[1]) == 'deposit') then
      local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } }).Result[1]
      Money, BankMoney = tonumber(Bank.Money - Amount), tonumber(Bank.BankMoney + Amount)
      if (Money >= 0) then
        DBSet(DB.Banks.SetBankMoney, { BankMoney = BankMoney, Steam = Steam, CharID = CharID })
        DBSet(DB.Banks.SetMoney, { Money = Money, Steam = Steam, CharID = CharID })
        Webhook() return true else return false
      end
    end

    if (Low(args[1]) == 'withdraw') then
      local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } }).Result[1]
      Money, BankMoney = tonumber(Bank.Money + Amount), tonumber(Bank.BankMoney - Amount)
      if (BankMoney >= 0) then
        DBSet(DB.Banks.SetBankMoney, { BankMoney = BankMoney, Steam = Steam, CharID = CharID })
        DBSet(DB.Banks.SetMoney, { Money = Money, Steam = Steam, CharID = CharID })
        Webhook() return true else return false
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
    DBSet(DB.Users.SetSName, { sName = sName, Steam = Steam })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------





























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
