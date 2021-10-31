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
  if (args[1] == nil) then return print("Unable to perform this action. Is this an normal or admin command ?") end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'admin') then
    if (args[2][1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
    if (args[2][2] == nil) then return ErrorMsg('Err_WrongDBSetType') end
    if (args[2][3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    if (args[2][3][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[2][3][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    if (args[2][3][3] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end
    local Valuta, tType = args[2][1], args[2][2]
    local Steam, CharID, Amount = args[2][3][1], args[2][3][2], args[2][3][3]
    local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } }).Result[1]

    if (Low(Valuta) == 'money') then
      if ((Low(tType) == '+') or (Low(tType) == 'add')) then
        local Amount = tonumber(Bank.Money + Amount)
        DBSet(DB.Banks.SetMoney, { Money = Amount, Steam = Steam, CharID = CharID })
      elseif ((Low(tType) == '-') or (Low(tType) == 'sub')) then
        local Amount = tonumber(Bank.Money - Amount)
        DBSet(DB.Banks.SetMoney, { Money = Amount, Steam = Steam, CharID = CharID })
      end
    elseif (Low(Valuta) == 'bankmoney') then
      if ((Low(tType) == '+') or (Low(tType) == 'add')) then
        local Amount = tonumber(Bank.BankMoney + Amount)
        DBSet(DB.Banks.SetBankMoney, { BankMoney = Amount, Steam = Steam, CharID = CharID })
      elseif ((Low(tType) == '-') or (Low(tType) == 'sub')) then
        local Amount = tonumber(Bank.BankMoney - Amount)
        DBSet(DB.Banks.SetBankMoney, { BankMoney = Amount, Steam = Steam, CharID = CharID })
      end
    elseif (Low(Valuta) == 'gold') then
      if ((Low(tType) == '+') or (Low(tType) == 'add')) then
        local Amount = tonumber(Bank.Gold + Amount)
        DBSet(DB.Banks.SetGold, { Gold = Amount, Steam = Steam, CharID = CharID })
      elseif ((Low(tType) == '-') or (Low(tType) == 'sub')) then
        local Amount = tonumber(Bank.Gold - Amount)
        DBSet(DB.Banks.SetGold, { Gold = Amount, Steam = Steam, CharID = CharID })
      end
    elseif (Low(Valuta) == 'bankgold') then
      if ((Low(tType) == '+') or (Low(tType) == 'add')) then
        local Amount = tonumber(Bank.BankGold + Amount)
        DBSet(DB.Banks.SetBankGold, { BankGold = Amount, Steam = Steam, CharID = CharID })
      elseif ((Low(tType) == '-') or (Low(tType) == 'sub')) then
        local Amount = tonumber(Bank.BankGold - Amount)
        DBSet(DB.Banks.SetBankGold, { BankGold = Amount, Steam = Steam, CharID = CharID })
      end
    end
  end

  if (Low(args[1]) == 'normal') then
    if (args[2][1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
    if (args[2][2] == nil) then return ErrorMsg('Err_WrongDBSetType') end
    if (args[2][3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    if (args[2][3][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[2][3][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    if (args[2][3][3] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end
    local Steam, CharID, Amount = args[2][3][1], args[2][3][2], args[2][3][3]
    local Type, Valuta = args[2][1], args[2][2]
    local Money, BankMoney, Gold, BankGold = 0, 0, 0, 0
    local Bank = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } }).Result[1]

    local function Webhook()
      if (_Webhooks.Discord[1].Enabled) then
        TCC(-1, 'DokusCore:Core:Webhooks:Discord', { 'BankTrans', Valuta, { Steam, CharID, Type, Amount, Money, BankMoney, Gold, BankGold } })
      end
    end

    if (Low(Valuta) == 'money') then
      if (Low(Type) == 'deposit') then
        Money, BankMoney = tonumber(Bank.Money - Amount), tonumber(Bank.BankMoney + Amount)
        if (Money >= 0) then
          DBSet(DB.Banks.SetBankMoney, { BankMoney = BankMoney, Steam = Steam, CharID = CharID })
          DBSet(DB.Banks.SetMoney, { Money = Money, Steam = Steam, CharID = CharID })
          Webhook() return true else return false
        end
      elseif (Low(Type) == 'withdraw') then
        Money, BankMoney = tonumber(Bank.Money + Amount), tonumber(Bank.BankMoney - Amount)
        if (BankMoney >= 0) then
          DBSet(DB.Banks.SetBankMoney, { BankMoney = BankMoney, Steam = Steam, CharID = CharID })
          DBSet(DB.Banks.SetMoney, { Money = Money, Steam = Steam, CharID = CharID })
          Webhook() return true else return false
        end
      end
    end

    if (Low(Valuta) == 'gold') then
      if (Low(Type) == 'deposit') then
        Gold, BankGold = tonumber(Bank.Gold - Amount), tonumber(Bank.BankGold + Amount)
        if (Gold >= 0) then
          DBSet(DB.Banks.SetBankGold, { BankGold = BankGold, Steam = Steam, CharID = CharID })
          DBSet(DB.Banks.SetGold, { Gold = Gold, Steam = Steam, CharID = CharID })
          Webhook() return true else return false
        end
      elseif (Low(Type) == 'withdraw') then
        Gold, BankGold = tonumber(Bank.Gold + Amount), tonumber(Bank.BankGold - Amount)
        if (BankGold >= 0) then
          DBSet(DB.Banks.SetBankGold, { BankGold = BankGold, Steam = Steam, CharID = CharID })
          DBSet(DB.Banks.SetGold, { Gold = Gold, Steam = Steam, CharID = CharID })
          Webhook() return true else return false
        end
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
